@interface LiveFSRawDevice
- (LiveFSRawDevice)init;
- (id)getVolumeLabelFromReply:(_UVFSScanVolsReply *)reply;
- (id)getVolumeUUID:(void *)d fsOPs:(_UVFSFSOps *)ps;
- (id)getVolumeUUIDFromReply:(_UVFSScanVolsReply *)reply;
- (id)getVolumesFromDeviceForFileSystem:(id)system;
- (id)initDeviceWithName:(id)name andError:(id *)error;
- (void)cancelNotifications;
- (void)close;
- (void)terminate;
- (void)terminateVolumesWithErrors;
- (void)unloadVolume:(id)volume;
- (void)unloadVolumes:(unsigned int)volumes;
@end

@implementation LiveFSRawDevice

- (LiveFSRawDevice)init
{
  v7.receiver = self;
  v7.super_class = LiveFSRawDevice;
  v2 = [(LiveFSRawDevice *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_deviceFD = -1;
    v4 = objc_alloc_init(NSMutableArray);
    volumes = v3->_volumes;
    v3->_volumes = v4;
  }

  return v3;
}

- (id)initDeviceWithName:(id)name andError:(id *)error
{
  nameCopy = name;
  v8 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v29 = nameCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "rawDeviceInit:start:%@", buf, 0xCu);
  }

  v9 = [(LiveFSRawDevice *)self init];
  v10 = v9;
  if (!v9)
  {
    v18 = 12;
    goto LABEL_48;
  }

  v9->_isErasable = 0;
  if (![nameCopy hasPrefix:@"disk"])
  {
    if (([nameCopy hasPrefix:@"/var/mobile/Library/Caches/com.apple.filesystems.userfsd"] & 1) != 0 || objc_msgSend(nameCopy, "hasPrefix:", @"/private/var/mobile/Library/Caches/com.apple.filesystems.userfsd"))
    {
      v19 = open([nameCopy UTF8String], 2);
      v10->_deviceFD = v19;
      if ((v19 & 0x80000000) == 0)
      {
        *&v10->_deviceIsFile = 1;
        objc_storeStrong(&v10->_deviceName, name);
        if (!error)
        {
          goto LABEL_52;
        }

        v20 = 0;
        goto LABEL_51;
      }

      v18 = *__error();
      if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10001F33C();
      }

      goto LABEL_47;
    }

    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10001F2BC();
    }

    v10 = 0;
    v18 = 22;
    goto LABEL_48;
  }

  snprintf(buf, 0x20uLL, "/dev/r%s", [nameCopy UTF8String]);
  v11 = sub_1000038C8(buf, 2u);
  v10->_deviceFD = v11;
  p_deviceFD = &v10->_deviceFD;
  if (v11 < 0)
  {
    v21 = *__error();
    v22 = userfs_log_default;
    if (v21 != 13)
    {
      if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10001F3AC();
      }

      v10 = 0;
      if (v21)
      {
        v18 = v21;
      }

      else
      {
        v18 = 5;
      }

      goto LABEL_45;
    }

    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_INFO))
    {
      *v26 = 138412290;
      v27 = nameCopy;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "rawDeviceInit:tryingRDONLYopen:%@", v26, 0xCu);
    }

    v23 = sub_1000038C8(buf, 0);
    *p_deviceFD = v23;
    if (v23 < 0)
    {
      v18 = 13;
LABEL_45:
      if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10001F41C();
      }

      goto LABEL_47;
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  objc_storeStrong(&v10->_deviceName, name);
  v10->_deviceIsReadOnly = v13;
  if (v10->_deviceFD < 0)
  {
    v18 = 0;
    goto LABEL_45;
  }

  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10001F48C(&v10->_deviceFD);
  }

  if (!qword_10003FE00)
  {
    qword_10003FE00 = IONotificationPortCreate(kIOMasterPortDefault);
    IONotificationPortSetDispatchQueue(qword_10003FE00, &_dispatch_main_q);
  }

  v14 = IOBSDNameMatching(kIOMasterPortDefault, 0, [nameCopy UTF8String]);
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v14);
  if (!MatchingService)
  {
    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10001F580();
    }

    close(*p_deviceFD);
    goto LABEL_42;
  }

  v16 = MatchingService;
  v17 = qword_10003FE00;
  v10 = v10;
  LODWORD(v17) = IOServiceAddInterestNotification(v17, v16, "IOGeneralInterest", sub_100003AF8, v10, &v10->_notification);
  IOObjectRelease(v16);
  if (v17)
  {
    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10001F510();
    }

    close(*p_deviceFD);
    v10->_notification = 0;
LABEL_42:
    v18 = 19;
LABEL_47:

    v10 = 0;
    goto LABEL_48;
  }

  v18 = 0;
LABEL_48:
  if (error)
  {
    *error = 0;
    if (v18)
    {
      v20 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v18 userInfo:0];
LABEL_51:
      *error = v20;
    }
  }

LABEL_52:
  v24 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v29 = nameCopy;
    v30 = 2112;
    v31 = v10;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "rawDeviceInit:finish:%@:%@", buf, 0x16u);
  }

  return v10;
}

- (id)getVolumeLabelFromReply:(_UVFSScanVolsReply *)reply
{
  v3 = [NSString stringWithUTF8String:reply->var3];
  v4 = v3;
  if (!v3 || ![(__CFString *)v3 length])
  {

    v4 = @"Untitled";
  }

  return v4;
}

- (id)getVolumeUUIDFromReply:(_UVFSScanVolsReply *)reply
{
  if (*reply->var2 == 0)
  {
    uUIDString = 0;
  }

  else
  {
    v3 = [[NSUUID alloc] initWithUUIDBytes:reply->var2];
    uUIDString = [v3 UUIDString];
  }

  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10001FA7C();
  }

  return uUIDString;
}

- (id)getVolumeUUID:(void *)d fsOPs:(_UVFSFSOps *)ps
{
  v15 = 0;
  v16 = 0;
  v7 = (ps->var8)(d, "_O_f_uuid", &v16, 0, &v15);
  if (v7 == 45)
  {
    goto LABEL_4;
  }

  if (v7 != 7)
  {
    if (v7 != 2)
    {
      if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10001FC94();
      }

      goto LABEL_12;
    }

LABEL_4:
    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10001FC00(self);
    }

LABEL_12:
    uUIDString = 0;
    goto LABEL_16;
  }

  v8 = [NSMutableData alloc];
  v9 = [v8 initWithLength:v15];
  var8 = ps->var8;
  mutableBytes = [v9 mutableBytes];
  if (var8(d, "_O_f_uuid", mutableBytes, v15, &v15))
  {
    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10001FAFC();
    }

    uUIDString = 0;
  }

  else
  {
    v13 = [[NSUUID alloc] initWithUUIDBytes:{objc_msgSend(v9, "bytes")}];
    uUIDString = [v13 UUIDString];

    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_10001FB80();
    }
  }

LABEL_16:

  return uUIDString;
}

- (id)getVolumesFromDeviceForFileSystem:(id)system
{
  systemCopy = system;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10001FD18(self);
  }

  v5 = +[UVFSPluginManager getSupportedFilesystems];
  v70 = 0;
  v71 = 0;
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  if ([v5 containsObject:systemCopy])
  {
    v69 = 0;
    v6 = [UVFSPluginManager getUVFSPluginForFS:systemCopy withError:&v69];
    v7 = v69;
    fsPlugin = self->_fsPlugin;
    self->_fsPlugin = v6;

    if (v7)
    {
      if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10001FE28(self);
      }

      v9 = 0;
      goto LABEL_14;
    }

    fSOps = [(UVFSPlugin *)self->_fsPlugin FSOps];
    v15 = (fSOps->var3)(self->_deviceFD);
    v16 = userfs_log_default;
    if (v15)
    {
      if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_10001FEA0(self);
      }

      [(UVFSPlugin *)self->_fsPlugin checkAndUnloadPlugin];
      v9 = 0;
      v7 = self->_fsPlugin;
      self->_fsPlugin = 0;
      goto LABEL_14;
    }

    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEFAULT))
    {
      deviceName = self->_deviceName;
      *buf = 138412546;
      v73 = deviceName;
      v74 = 2114;
      v75 = systemCopy;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "device:%@:selected:plugin:%{public}@", buf, 0x16u);
    }

    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
LABEL_24:
    v7 = v22;
    v57 = v20;
    v10 = v19;
    v12 = v21;
    while (1)
    {
      v23 = (fSOps->var32)(self->_deviceFD, &v70, &v78);
      if (v23)
      {
        v41 = v23;
        if (v23 == -1001)
        {
          v41 = 0;
        }

        if (([systemCopy isEqualToString:@"msdos"] & 1) != 0 || (objc_msgSend(systemCopy, "isEqualToString:", @"exfat") & 1) != 0 || objc_msgSend(systemCopy, "isEqualToString:", @"apfs"))
        {
          self->_isErasable = ([(NSMutableArray *)self->_volumes count]== 1) & (v18 ^ 1);
        }

        else
        {
          self->_isErasable = 0;
        }

        if ([(NSMutableArray *)self->_volumes count])
        {
          v42 = [NSNumber numberWithUnsignedLong:[(NSMutableArray *)self->_volumes count]];
          v60 = systemCopy;
          v43 = v42;
          v61 = v43;
          AnalyticsSendEventLazy();
          v44 = userfs_log_default;
          if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEFAULT))
          {
            v58 = self->_deviceName;
            v59 = v43;
            volumes = self->_volumes;
            v46 = v44;
            v47 = volumes;
            v43 = v59;
            v48 = [(NSMutableArray *)v47 count];
            *buf = 138412802;
            v73 = v58;
            v74 = 2048;
            v75 = v48;
            v76 = 1024;
            LODWORD(v77) = v41;
            _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "device:%@:loaded:%lu:%d", buf, 0x1Cu);
          }

          v49 = 1;
          v11 = v57;
        }

        else
        {
          v50 = userfs_log_default;
          if (v41)
          {
            v11 = v57;
            if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
            {
              sub_10001FF9C(&self->_deviceName);
            }

            v49 = 2;
          }

          else
          {
            v11 = v57;
            if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEFAULT))
            {
              v51 = self->_deviceName;
              *buf = 138412290;
              v73 = v51;
              _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "device:%@:zero:volumes:loaded", buf, 0xCu);
            }

            v49 = 3;
          }
        }

        localizedDescription = [(UVFSPlugin *)v7 localizedDescription];
        [(LiveFSRawDevice *)self sendAnalytics:systemCopy loadStatus:v49 loadErrorReason:localizedDescription];

        goto LABEL_11;
      }

      v18 |= BYTE13(v95);
      if (!DWORD2(v78))
      {
        break;
      }

      if (DWORD2(v78) == 1)
      {
        [(LiveFSRawDevice *)self getVolumeCredentialFromKeychain];
        v55 = +[LIFSPreVolume errorForAuthError];

        v25 = userfs_log_default;
        if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
        {
          v26 = self->_deviceName;
          *buf = 138412546;
          v73 = v26;
          v74 = 2112;
          v75 = v55;
          _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "device:%@:locked:errorForDomain:%@", buf, 0x16u);
        }

LABEL_34:
        v19 = [LIFSPreVolume newWithDevice:self forID:v78 opsTable:fSOps];

        if (v19)
        {
          v27 = v55;
          if (v55)
          {
            goto LABEL_52;
          }

          v28 = [v19 mountVolumeWithCreds:0 resultRootNode:&v71];
          switch(v28)
          {
            case 0xFFFFFFFF:
              if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
              {
                sub_10001FF18(&v65, v66);
              }

              break;
            case 0u:
              v27 = 0;
LABEL_52:
              v56 = v27;
              v54 = [(LiveFSRawDevice *)self getVolumeLabelFromReply:&v78];
              v32 = [(LiveFSRawDevice *)self getVolumeUUIDFromReply:&v78];
              if (v32 || ([(LiveFSRawDevice *)self getVolumeUUID:v71 fsOPs:fSOps], (v32 = objc_claimAutoreleasedReturnValue()) != 0))
              {
                v33 = v32;
              }

              else
              {
                v37 = +[NSUUID UUID];
                uUIDString = [v37 UUIDString];

                v39 = userfs_log_default;
                if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEFAULT))
                {
                  v40 = self->_deviceName;
                  *buf = 136315650;
                  v73 = "[LiveFSRawDevice getVolumesFromDeviceForFileSystem:]";
                  v74 = 2114;
                  v75 = v40;
                  v76 = 2112;
                  v77 = uUIDString;
                  _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%s:device:%{public}@:no:UUID:generated:new:one:%@", buf, 0x20u);
                }

                v33 = uUIDString;
              }

              v62 = v7;
              v34 = [userFSVolume newWithDevice:self fsType:systemCopy volumeName:v33 rootNode:v71 errorState:v56 returnError:&v62, v33];
              v22 = v62;

              if (!v34 || v22)
              {
                v36 = userfs_log_default;
                if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v73 = v22;
                  _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "getVolumeFromDevice:userFSVolume:create:failed:%@", buf, 0xCu);
                }

                v35 = v54;
                if (v71)
                {
                  (fSOps->var7)(v71, 1);
                }
              }

              else
              {
                v35 = v54;
                if (v56)
                {
                  [v34 setPreVolInfo:v19];
                }

                if (BYTE12(v95) == 1)
                {
                  [v34 setReadOnly:1];
                }

                [v34 setVolumeLabel:v54];
                [(NSMutableArray *)self->_volumes addObject:v34];
              }

              v70 = v78 + 1;
              v71 = 0;
              v78 = 0u;
              v79 = 0u;
              v80 = 0u;
              v81 = 0u;
              v82 = 0u;
              v83 = 0u;
              v84 = 0u;
              v85 = 0u;
              v86 = 0u;
              v87 = 0u;
              v88 = 0u;
              v89 = 0u;
              v90 = 0u;
              v91 = 0u;
              v92 = 0u;
              v93 = 0u;
              v94 = 0u;
              v95 = 0u;

              v21 = v56;
              v20 = v34;
              goto LABEL_24;
            case 0x50u:
              if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
              {
                sub_10001FF44(&v67, v68);
              }

              v27 = +[LIFSPreVolume errorForAuthError];
              goto LABEL_52;
            default:
              if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
              {
                sub_10001FF70(&v63, v64);
              }

              break;
          }

          v30 = 0;
          v70 = v78 + 1;
        }

        else
        {
          v29 = userfs_log_default;
          if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
          {
            v31 = self->_deviceName;
            *buf = 138412290;
            v73 = v31;
            _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "device:%@:preVol:create:failed:skipping", buf, 0xCu);
          }

          v19 = 0;
          v70 = v78 + 1;
          v30 = v55;
        }

        v94 = 0u;
        v95 = 0u;
        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        v80 = 0u;
        v81 = 0u;
        v10 = v19;
        v12 = v30;
        v78 = 0u;
        v79 = 0u;
      }

      else
      {
        v24 = userfs_log_default;
        if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v73 = &v79 + 12;
          v74 = 1024;
          LODWORD(v75) = DWORD2(v78);
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "getVolumeFromDevice:skiping:%s[%d]", buf, 0x12u);
        }

        v70 = v78 + 1;
        v78 = 0u;
        v79 = 0u;
        v80 = 0u;
        v81 = 0u;
        v82 = 0u;
        v83 = 0u;
        v84 = 0u;
        v85 = 0u;
        v86 = 0u;
        v87 = 0u;
        v88 = 0u;
        v89 = 0u;
        v90 = 0u;
        v91 = 0u;
        v92 = 0u;
        v93 = 0u;
        v94 = 0u;
        v95 = 0u;
      }
    }

    v55 = v12;
    goto LABEL_34;
  }

  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10001FDA0(self);
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v7 = 0;
LABEL_11:
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10002001C(self);
  }

  v9 = [NSArray arrayWithArray:self->_volumes];

LABEL_14:

  return v9;
}

- (void)cancelNotifications
{
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_1000200A0();
  }

  notification = self->_notification;
  if (notification)
  {
    if (IOObjectRelease(notification))
    {
      if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1000200E0();
      }
    }

    else if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100020154();
    }

    self->_notification = 0;
  }

  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100020194();
  }
}

- (void)close
{
  deviceFD = self->_deviceFD;
  if (deviceFD != -1)
  {
    if (close(deviceFD))
    {
      v4 = userfs_log_default;
      if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1000201D4(self, v4);
      }
    }

    self->_deviceFD = -1;
    v5 = userfs_log_default;
    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEFAULT))
    {
      deviceName = self->_deviceName;
      v7 = 138412290;
      v8 = deviceName;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%@]:close:finish", &v7, 0xCu);
    }
  }
}

- (void)unloadVolume:(id)volume
{
  volumeCopy = volume;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableArray *)selfCopy->_volumes removeObject:volumeCopy];
  objc_sync_exit(selfCopy);

  if (![(NSMutableArray *)selfCopy->_volumes count])
  {
    [(UVFSPlugin *)selfCopy->_fsPlugin checkAndUnloadPlugin];
    [(LiveFSRawDevice *)selfCopy cancelNotifications];
    [(LiveFSRawDevice *)selfCopy close];
  }
}

- (void)unloadVolumes:(unsigned int)volumes
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [NSArray arrayWithArray:selfCopy->_volumes];
  [(NSMutableArray *)selfCopy->_volumes removeAllObjects];
  objc_sync_exit(selfCopy);

  v12 = 0u;
  v13 = 0u;
  if ([(LiveFSRawDevice *)selfCopy deviceIsClosed])
  {
    volumesCopy = volumes | 8;
  }

  else
  {
    volumesCopy = volumes;
  }

  v14 = 0uLL;
  v15 = 0uLL;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        [v11 invalidateAllConnections];
        [v11 unmount:volumesCopy];
      }

      v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)terminate
{
  volumes = [(LiveFSRawDevice *)self volumes];
  v3 = [NSArray arrayWithArray:volumes];

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8) unregisterWithLiveFSService:{2, v9}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)terminateVolumesWithErrors
{
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10002027C();
  }

  v3 = +[NSMutableArray array];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  volumes = [(LiveFSRawDevice *)selfCopy volumes];

  if (volumes)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    volumes2 = [(LiveFSRawDevice *)selfCopy volumes];
    v7 = [NSArray arrayWithArray:volumes2];

    v8 = [v7 countByEnumeratingWithState:&v28 objects:v37 count:16];
    if (v8)
    {
      v9 = *v29;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v29 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v28 + 1) + 8 * i);
          errorState = [v11 errorState];

          if (errorState)
          {
            [v3 addObject:v11];
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v28 objects:v37 count:16];
      }

      while (v8);
    }
  }

  objc_sync_exit(selfCopy);

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = v3;
  v14 = [v13 countByEnumeratingWithState:&v24 objects:v36 count:16];
  if (v14)
  {
    v16 = *v25;
    *&v15 = 136315394;
    v23 = v15;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v24 + 1) + 8 * j);
        v19 = userfs_log_default;
        if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
        {
          v21 = v19;
          volumeName = [v18 volumeName];
          *buf = v23;
          v33 = "[LiveFSRawDevice terminateVolumesWithErrors]";
          v34 = 2112;
          v35 = volumeName;
          _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "%s: unregister with mounter service for volume %@ using LIVEFSMOUNTCLIENT_UNMOUNT_FORGET", buf, 0x16u);
        }

        v20 = [v18 unregisterWithMounterService:{2, v23, v24}];
        [v18 unregisterWithLiveFSService:2];
      }

      v14 = [v13 countByEnumeratingWithState:&v24 objects:v36 count:16];
    }

    while (v14);
  }

  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_1000202FC();
  }
}

@end