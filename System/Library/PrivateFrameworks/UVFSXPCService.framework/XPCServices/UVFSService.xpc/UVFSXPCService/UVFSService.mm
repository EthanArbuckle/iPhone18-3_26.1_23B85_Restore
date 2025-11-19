@interface UVFSService
- (BOOL)fsTypeIsErasable:(id)a3;
- (void)createVolumesForTheDevice:(id)a3 fsType:(id)a4 how:(unint64_t)a5 withReply:(id)a6;
- (void)ejectVolumesForDevice:(id)a3 how:(unint64_t)a4 withReply:(id)a5;
- (void)startUp:(id)a3;
- (void)unlockVolume:(id)a3 password:(id)a4 saveToKeychain:(BOOL)a5 completionHandler:(id)a6;
@end

@implementation UVFSService

- (void)startUp:(id)a3
{
  v3 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100020474();
  }

  v4 = uvfsservice_log_default;
  if (uvfsservice_log_default)
  {
    v5 = 0;
  }

  else
  {
    v6 = os_log_create("com.apple.filesystems.userfsd", "UVFSService");
    v7 = uvfsservice_log_default;
    uvfsservice_log_default = v6;

    v8 = uvfsservice_log_default;
    if (uvfsservice_log_default)
    {
      v5 = 0;
    }

    else
    {
      v5 = [NSError errorWithDomain:NSPOSIXErrorDomain code:12 userInfo:0];
      v8 = uvfsservice_log_default;
    }

    objc_storeStrong(&userfs_log_default, v8);
    v4 = uvfsservice_log_default;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1000204B8();
  }

  if (!(v5 | gIOKitNotificationQueue))
  {
    v9 = dispatch_queue_create("com.apple.userfsd.global.iokit.notifications", 0);
    v10 = gIOKitNotificationQueue;
    gIOKitNotificationQueue = v9;

    v5 = 0;
    if (!gIOKitNotificationQueue)
    {
      if (os_log_type_enabled(uvfsservice_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1000204F4();
      }

      v5 = [NSError errorWithDomain:NSPOSIXErrorDomain code:12 userInfo:0];
    }
  }

  if (os_log_type_enabled(uvfsservice_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100020530();
    if (v5)
    {
      goto LABEL_18;
    }
  }

  else if (v5)
  {
LABEL_18:
    v11 = 0xFFFFFFFFLL;
    goto LABEL_21;
  }

  v11 = getpid();
LABEL_21:
  v12 = uvfsservice_log_default;
  if (os_log_type_enabled(uvfsservice_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10002056C(v5, v11, v12);
  }

  v3[2](v3, v11, v5);
  if (v5)
  {
    if (os_log_type_enabled(uvfsservice_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000205F4();
    }

    exit(0);
  }
}

- (BOOL)fsTypeIsErasable:(id)a3
{
  v3 = [a3 volumeRawDevice];
  v4 = [v3 isErasable];

  return v4;
}

- (void)ejectVolumesForDevice:(id)a3 how:(unint64_t)a4 withReply:(id)a5
{
  v7 = a3;
  v8 = a5;
  v12 = 0;
  v13[0] = &v12;
  v13[1] = 0x3032000000;
  v13[2] = sub_100005F30;
  v13[3] = sub_100005F40;
  v14 = 0;
  if (os_log_type_enabled(uvfsservice_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100020630();
  }

  if (externalVolumeLiveFSService)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100005F48;
    v11[3] = &unk_100038768;
    v11[4] = &v12;
    [externalVolumeLiveFSService ejectDisk:v7 usingFlags:a4 reply:v11];
  }

  else
  {
    v9 = [NSError errorWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
    v10 = *(v13[0] + 40);
    *(v13[0] + 40) = v9;
  }

  if (os_log_type_enabled(uvfsservice_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_1000206B0(v13);
  }

  v8[2](v8, *(v13[0] + 40));
  _Block_object_dispose(&v12, 8);
}

- (void)unlockVolume:(id)a3 password:(id)a4 saveToKeychain:(BOOL)a5 completionHandler:(id)a6
{
  v8 = a3;
  v9 = a4;
  v10 = a6;
  if (externalVolumeLiveFSService)
  {
    v31 = 0;
    v11 = [externalVolumeLiveFSService volumeProxyForVolume:v8];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 errorState];
      if (!v13)
      {
        goto LABEL_32;
      }

      v14 = v13;
      v15 = [v12 errorState];
      v16 = +[LIFSPreVolume errorForAuthError];
      v17 = [v15 isEqual:v16];

      if (v17)
      {
        v18 = [v12 preVolInfo];
        if (v18)
        {
          v19 = v18;
          v20 = malloc_type_calloc(1uLL, 0x10uLL, 0x1010040A1D9428BuLL);
          v21 = strdup([v9 UTF8String]);
          *v20 = v21;
          v20[2] = strlen(v21);
          v22 = [v19 volumeRawDevice];
          v23 = [v22 deviceIsReadOnly];

          if ((v23 & 1) != 0 || (v24 = [v19 checkVolumeWithCreds:v20], !v24))
          {
            v24 = [v19 mountVolumeWithCreds:v20 resultRootNode:&v31];
          }

          free(v20);
          v25 = [LIFSPreVolume errorForCheckOrMountReturnValue:v24];
          v26 = 0;
          if (v24 != 1 && v24 != 80)
          {
            [v12 setPreVolInfo:0];
            v27 = [v12 updateRootNode:v31 errorState:v25];
            v28 = [LiveFSMountClient newClientForProvider:@"com.apple.filesystems.UserFS.FileProvider"];
            if (!v28)
            {
              if (os_log_type_enabled(uvfsservice_log_default, OS_LOG_TYPE_ERROR))
              {
                sub_1000207B4();
              }

              v26 = getNSErrorFromLiveFSErrno();
              v10[2](v10, v26);
              goto LABEL_12;
            }

            v26 = v28;
            v29 = [v28 updateErrorStateForVolume:v8 provider:@"com.apple.filesystems.UserFS.FileProvider" domainError:v25];
            if (v29)
            {
              v30 = v29;
              if (os_log_type_enabled(uvfsservice_log_default, OS_LOG_TYPE_FAULT))
              {
                sub_100020740();
              }

              v10[2](v10, v30);

              goto LABEL_13;
            }
          }

          v10[2](v10, v25);
LABEL_12:

LABEL_13:
LABEL_18:

          goto LABEL_19;
        }

        if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_1000207F0();
        }
      }

      else
      {
LABEL_32:
        if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10002082C();
        }
      }
    }

    v19 = getNSErrorFromLiveFSErrno();
    v10[2](v10, v19);
    goto LABEL_18;
  }

  v12 = getNSErrorFromLiveFSErrno();
  v10[2](v10, v12);
LABEL_19:
}

- (void)createVolumesForTheDevice:(id)a3 fsType:(id)a4 how:(unint64_t)a5 withReply:(id)a6
{
  v9 = a3;
  v96 = a4;
  v95 = a6;
  v10 = uvfsservice_log_default;
  if (os_log_type_enabled(uvfsservice_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v125 = 136315650;
    *&v125[4] = "[UVFSService createVolumesForTheDevice:fsType:how:withReply:]";
    *&v125[12] = 2114;
    *&v125[14] = v9;
    *&v125[22] = 2048;
    v126 = a5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s:device:%{public}@:how:0x%llx:start", v125, 0x20u);
    if ((a5 & 2) == 0)
    {
LABEL_3:
      if (a5)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((a5 & 2) == 0)
  {
    goto LABEL_3;
  }

  dispatchAsyncConcurentLiveItemIO = 1;
  if ((a5 & 1) == 0)
  {
LABEL_4:
    enableSpotlight = 0;
  }

LABEL_5:
  v97 = objc_alloc_init(externalVolumeUVFSServiceLiveFSServiceDelegate);
  v11 = [LiveFSVolumeManager newServiceProxyObjectWithDelegate:v97];
  v12 = externalVolumeLiveFSService;
  externalVolumeLiveFSService = v11;

  v13 = +[externalVolumeServiceLiveFSClient newClient];
  v14 = masterService;
  masterService = v13;

  if (!masterService)
  {
    if (os_log_type_enabled(uvfsservice_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100020A84();
    }

    notifyMainServiceAndExit(v9, 0);
  }

  if (os_log_type_enabled(uvfsservice_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100020868();
  }

  v116 = 0;
  obj = [[LiveFSRawDevice alloc] initDeviceWithName:v9 andError:&v116];
  v15 = v116;
  if (!obj)
  {
    if (os_log_type_enabled(uvfsservice_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100020A00();
    }

    notifyMainServiceAndExit(v9, 0);
  }

  if (os_log_type_enabled(uvfsservice_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_1000208D8();
  }

  v16 = [obj getVolumesFromDeviceForFileSystem:v96];
  if (![v16 count])
  {
    v93 = uvfsservice_log_default;
    if (os_log_type_enabled(uvfsservice_log_default, OS_LOG_TYPE_INFO))
    {
      *v125 = 0;
      _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_INFO, "main:UVFSService:noVolumesFound", v125, 2u);
    }

    notifyMainServiceAndExit(v9, 0);
  }

  objc_storeStrong(&deviceBeenServiced, obj);
  v17 = uvfsservice_log_default;
  if (os_log_type_enabled(uvfsservice_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100020948(v9, v17, v16);
  }

  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  v101 = v16;
  v103 = [v101 countByEnumeratingWithState:&v112 objects:v129 count:16];
  if (v103)
  {
    v100 = 0;
    v102 = *v113;
    *&v18 = 138412546;
    v94 = v18;
    while (1)
    {
      for (i = 0; i != v103; i = i + 1)
      {
        if (*v113 != v102)
        {
          objc_enumerationMutation(v101);
        }

        v20 = *(*(&v112 + 1) + 8 * i);
        *v125 = 0;
        *&v125[8] = v125;
        *&v125[16] = 0x3032000000;
        v126 = sub_100005F30;
        v127 = sub_100005F40;
        v128 = 0;
        v106 = 0;
        v107 = &v106;
        v108 = 0x3032000000;
        v109 = sub_100005F30;
        v110 = sub_100005F40;
        v111 = 0;
        v21 = [v20 volumeName];
        v22 = v21 == 0;

        if (v22)
        {
          [v20 unmount:0];
          v59 = uvfsservice_log_default;
          if (os_log_type_enabled(uvfsservice_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v118 = v9;
            _os_log_error_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "device:%{public}@:volumeNameCheck:nullName", buf, 0xCu);
          }

          goto LABEL_90;
        }

        v23 = uvfsservice_log_default;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          v71 = [v20 volumeName];
          *buf = 138543618;
          v118 = v9;
          v119 = 2112;
          v120 = v71;
          _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "device:%{public}@:volume:%@:", buf, 0x16u);
        }

        for (j = 0; ; ++j)
        {

          v25 = externalVolumeLiveFSService;
          v26 = [v20 volumeName];
          v27 = +[LiveFSClient interfaceForListeners];
          v28 = objc_opt_class();
          v29 = [v20 metaDataRequests];
          v30 = [v25 addVolume:v26 usingInterface:v27 connectionClass:v28 queue:v29 proxy:v20 description:v9];

          if (v30)
          {
            [v20 unmount:0];
            v63 = uvfsservice_log_default;
            if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
            {
              v88 = [v20 volumeName];
              *buf = 138543874;
              v118 = v9;
              v119 = 2112;
              v120 = v88;
              v121 = 2112;
              v122 = v30;
              _os_log_error_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "device:%{public}@:volume:%@:local:registration:failed:%@:skipping", buf, 0x20u);
            }

            v15 = v30;
            goto LABEL_90;
          }

          v31 = uvfsservice_log_default;
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            v54 = [v20 volumeName];
            *buf = 138543618;
            v118 = v9;
            v119 = 2112;
            v120 = v54;
            _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "device:%{public}@:registeredVolume:%@", buf, 0x16u);
          }

          v32 = externalVolumeLiveFSService;
          v33 = [v20 volumeName];
          v105[0] = _NSConcreteStackBlock;
          v105[1] = 3221225472;
          v105[2] = sub_100007568;
          v105[3] = &unk_100038790;
          v105[4] = v125;
          v105[5] = &v106;
          [v32 listenerForVolume:v33 reply:v105];

          if (*(*&v125[8] + 40) || !v107[5])
          {
            v60 = externalVolumeLiveFSService;
            v61 = [v20 volumeName];
            [v60 removeVolume:v61];

            [v20 unmount:0];
            v62 = uvfsservice_log_default;
            if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
            {
              v86 = [v20 volumeName];
              v87 = *(*&v125[8] + 40);
              *buf = 138543874;
              v118 = v9;
              v119 = 2112;
              v120 = v86;
              v121 = 2112;
              v122 = v87;
              _os_log_error_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "device:%{public}@:volume:%@:listener:error:%@:skipping", buf, 0x20u);
            }

            goto LABEL_89;
          }

          v34 = uvfsservice_log_default;
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            v55 = [v20 volumeName];
            v56 = v107[5];
            *buf = 138543874;
            v118 = v9;
            v119 = 2112;
            v120 = v55;
            v121 = 2112;
            v122 = v56;
            _os_log_debug_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEBUG, "device:%{public}@:volume:%@:listener:%@", buf, 0x20u);
          }

          v35 = masterService;
          v36 = [v20 volumeName];
          v15 = [v35 registerNewVolume:v36 listener:v107[5] device:v9];

          v37 = uvfsservice_log_default;
          v38 = v37;
          if (!v15)
          {
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
            {
              v89 = [v20 volumeName];
              *buf = 138543618;
              v118 = v9;
              v119 = 2112;
              v120 = v89;
              _os_log_debug_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEBUG, "device:%{public}@:volume:%@:userfsd:registered", buf, 0x16u);
            }

            if (!v100)
            {
              v100 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v101 count]);
            }

            if (enableSpotlight)
            {
              v15 = [v20 registerSpotlightNotifer];
              if (v15)
              {
                v64 = masterService;
                v65 = [v20 volumeName];
                v66 = [v64 forgetVolume:v65 withFlags:2];

                [v20 unmount:0];
                v67 = uvfsservice_log_default;
                if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
                {
                  v91 = [v20 volumeName];
                  *buf = 138543874;
                  v118 = v9;
                  v119 = 2112;
                  v120 = v91;
                  v121 = 2112;
                  v122 = v15;
                  _os_log_error_impl(&_mh_execute_header, v67, OS_LOG_TYPE_ERROR, "device:%{public}@:volume:%@:creating:CSNotifier:failed:%@:skipping", buf, 0x20u);
                }

                goto LABEL_90;
              }

              v73 = uvfsservice_log_default;
              if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
              {
                v92 = [v20 volumeName];
                *buf = 138543618;
                v118 = v9;
                v119 = 2112;
                v120 = v92;
                _os_log_debug_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEBUG, "device:%{public}@:volume:%@:created:CSNotifier", buf, 0x16u);
              }
            }

            v74 = [NSMutableDictionary dictionaryWithCapacity:4];
            v75 = [v20 volumeName];
            [v74 setObject:v75 forKeyedSubscript:@"UUID"];

            v76 = [v20 volumeLabel];
            [v74 setObject:v76 forKeyedSubscript:@"name"];

            v77 = [v20 errorState];

            if (v77)
            {
              v78 = [v20 errorState];
              v79 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [v78 code]);
              [v74 setObject:v79 forKeyedSubscript:@"errorForDomain"];
            }

            v80 = [v20 readOnly];
            v81 = [(UVFSService *)self fsTypeIsErasable:v20];
            if (v80)
            {
              v82 = 2048;
            }

            else
            {
              v82 = 0;
            }

            if (v81)
            {
              v83 = v82 | 0x1000;
            }

            else
            {
              v83 = v82;
            }

            v84 = [NSNumber numberWithUnsignedInt:v83];
            [v74 setObject:v84 forKeyedSubscript:@"how"];

            v85 = uvfsservice_log_default;
            if (os_log_type_enabled(uvfsservice_log_default, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543618;
              v118 = v9;
              v119 = 2112;
              v120 = v74;
              _os_log_debug_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEBUG, "device:%{public}@:volumeInfo:%@", buf, 0x16u);
            }

            [v100 addObject:v74];

LABEL_89:
            v15 = 0;
            goto LABEL_90;
          }

          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            v57 = [v20 volumeName];
            *buf = 138544130;
            v118 = v9;
            v119 = 2112;
            v120 = v57;
            v121 = 2114;
            v122 = v15;
            v123 = 1024;
            v124 = j;
            _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "device:%{public}@:volume:%@:userfsd:registration:failed:%{public}@:retry:%d", buf, 0x26u);
          }

          v39 = v107[5];
          v107[5] = 0;

          v40 = externalVolumeLiveFSService;
          v41 = [v20 volumeName];
          [v40 removeVolume:v41];

          v42 = userfs_log_default;
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
          {
            v58 = [v20 volumeName];
            *buf = 138543618;
            v118 = v9;
            v119 = 2112;
            v120 = v58;
            _os_log_debug_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEBUG, "device:%{public}@:volume:%@:volume:removed", buf, 0x16u);
          }

          v43 = [v15 userInfo];
          v23 = [v43 objectForKeyedSubscript:NSUnderlyingErrorKey];

          if (!v23)
          {
            goto LABEL_72;
          }

          v44 = [v23 domain];
          if (![v44 isEqual:NSPOSIXErrorDomain])
          {
            goto LABEL_71;
          }

          v45 = [v23 code]!= 17 || j >= 5;
          v46 = !v45;

          if (!v46)
          {
            goto LABEL_72;
          }

          v47 = masterService;
          v48 = [v20 volumeName];
          v104 = 0;
          v49 = [v47 sameVolumeAlreadyLoaded:v48 device:v9 withError:&v104];
          v44 = v104;

          if (v49)
          {
            break;
          }

          if (v44)
          {
            v68 = uvfsservice_log_default;
            if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
            {
              v90 = [v20 volumeName];
              *buf = 138412802;
              v118 = v9;
              v119 = 2112;
              v120 = v90;
              v121 = 2112;
              v122 = v44;
              _os_log_error_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "device:%@:volume:%@:collision:resolution:error%@", buf, 0x20u);
            }

            goto LABEL_70;
          }

          v50 = +[NSUUID UUID];
          v51 = [v50 UUIDString];
          [v20 setVolumeName:v51];

          v52 = uvfsservice_log_default;
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            v53 = [v20 volumeName];
            *buf = 138412802;
            v118 = v9;
            v119 = 2112;
            v120 = v53;
            v121 = 1024;
            LODWORD(v122) = j;
            _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "device:%@:volume:%@:collision:resolved:retry:%d", buf, 0x1Cu);
          }
        }

        v68 = userfs_log_default;
        if (os_log_type_enabled(v68, OS_LOG_TYPE_FAULT))
        {
          v69 = [v20 volumeName];
          *buf = v94;
          v118 = v9;
          v119 = 2112;
          v120 = v69;
          _os_log_fault_impl(&_mh_execute_header, v68, OS_LOG_TYPE_FAULT, "device:%@:volume:%@:collision:already:loaded.", buf, 0x16u);
        }

LABEL_70:

LABEL_71:
LABEL_72:
        [v20 unmount:0];
        dispatch_sync(gIOKitNotificationQueue, &stru_1000387D0);
        v70 = uvfsservice_log_default;
        if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          v72 = [v20 volumeName];
          *buf = 138544130;
          v118 = v9;
          v119 = 2112;
          v120 = v72;
          v121 = 2114;
          v122 = v15;
          v123 = 1024;
          v124 = j;
          _os_log_error_impl(&_mh_execute_header, v70, OS_LOG_TYPE_ERROR, "device:%{public}@:volume:%@:userfsd:registration:failed:%{public}@:retry:%d:skipping", buf, 0x26u);
        }

LABEL_90:
        _Block_object_dispose(&v106, 8);

        _Block_object_dispose(v125, 8);
      }

      v103 = [v101 countByEnumeratingWithState:&v112 objects:v129 count:16];
      if (!v103)
      {
        goto LABEL_97;
      }
    }
  }

  v100 = 0;
LABEL_97:

  v95[2](v95, 0, v100);
}

@end