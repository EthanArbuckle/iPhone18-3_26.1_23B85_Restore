@interface SMBClientdSettings
- (BOOL)load:(id *)a3;
- (BOOL)save:(id *)a3;
- (NSDictionary)servers;
- (SMBClientdSettings)init;
- (id)addShares:(id)a3 atServer:(id)a4 serverDomainName:(id *)a5 service:(id)a6;
- (id)findNewMountNumber:(unsigned int *)a3 error:(id *)a4;
- (id)getPasswordForIdentifier:(id)a3 error:(id *)a4;
- (id)internalAddShare:(id)a3 server:(id)a4 password:(id)a5 service:(id)a6 displayName:(id)a7 storageName:(id)a8 existingTags:(id)a9 flags:(unsigned int)a10;
- (id)removeServer:(id)a3;
- (id)storageStringForMountNumber:(unsigned int)a3;
- (void)calculateSet;
- (void)initFresh;
- (void)reconstituteWithService:(id)a3;
@end

@implementation SMBClientdSettings

- (void)initFresh
{
  v3 = objc_opt_new();
  servers = self->_servers;
  self->_servers = v3;

  v5 = objc_opt_new();
  mountNumbers = self->_mountNumbers;
  self->_mountNumbers = v5;

  _objc_release_x1();
}

- (SMBClientdSettings)init
{
  v5.receiver = self;
  v5.super_class = SMBClientdSettings;
  v2 = [(SMBClientdSettings *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SMBClientdSettings *)v2 initFresh];
  }

  return v3;
}

- (NSDictionary)servers
{
  v2 = [(NSMutableDictionary *)self->_servers copy];

  return v2;
}

- (void)calculateSet
{
  servers = self->_servers;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100033CD0;
  v3[3] = &unk_10008E1C0;
  v3[4] = self;
  [(NSMutableDictionary *)servers enumerateKeysAndObjectsUsingBlock:v3];
}

- (BOOL)load:(id *)a3
{
  v21 = 0;
  v5 = sub_100033EC8(&v21);
  [(SMBClientdSettings *)self initFresh];
  if (!v5)
  {
    v9 = [v21 URLByAppendingPathComponent:@"settings.plist"];
    v10 = v21;
    v21 = v9;

    v11 = +[NSFileManager defaultManager];
    v12 = [v21 path];
    v13 = [v11 fileExistsAtPath:v12];

    if (v13)
    {
      v20 = 0;
      v8 = [NSDictionary dictionaryWithContentsOfURL:v21 error:&v20];
      v14 = v20;
      v5 = v14;
      if (v14 || !v8)
      {
        if (!a3)
        {
          v7 = 0;
          goto LABEL_12;
        }

        v19 = v14;
        v7 = 0;
        goto LABEL_4;
      }

      v15 = [v8 objectForKeyedSubscript:@"servers"];
      v16 = [v15 mutableCopy];
      servers = self->_servers;
      self->_servers = v16;

      [(SMBClientdSettings *)self calculateSet];
      v5 = 0;
    }

    else
    {
      v5 = 0;
      v8 = 0;
    }

    v7 = 1;
    goto LABEL_12;
  }

  if (!a3)
  {
    v7 = 0;
    v8 = 0;
    goto LABEL_12;
  }

  v6 = v5;
  v7 = 0;
  v8 = 0;
LABEL_4:
  *a3 = v5;
LABEL_12:

  return v7;
}

- (BOOL)save:(id *)a3
{
  v17 = 0;
  v5 = sub_100033EC8(&v17);
  if (v5)
  {
    v6 = v5;
    if (a3)
    {
      v7 = v5;
      v8 = 0;
      *a3 = v6;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v9 = [v17 URLByAppendingPathComponent:@"settings.plist"];
    v10 = v17;
    v17 = v9;

    if ([(NSMutableDictionary *)self->_servers count])
    {
      servers = self->_servers;
      v18 = @"servers";
      v19 = servers;
      v12 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      v15 = 0;
      [v12 writeToURL:v17 error:&v15];
      v6 = v15;
      v8 = v6 == 0;
    }

    else
    {
      v13 = +[NSFileManager defaultManager];
      v16 = 0;
      [v13 removeItemAtURL:v17 error:&v16];
      v6 = v16;

      if (v6 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v21 = v6;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Error deleting preference file: %@", buf, 0xCu);
      }

      v8 = 1;
    }
  }

  return v8;
}

- (id)internalAddShare:(id)a3 server:(id)a4 password:(id)a5 service:(id)a6 displayName:(id)a7 storageName:(id)a8 existingTags:(id)a9 flags:(unsigned int)a10
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v39 = 0;
  v22 = [smbMount smbMountFromServerURL:v16 shareName:v15 password:v17 result:&v39];
  if (!v22)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005960C(&v39);
    }

    v26 = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:v39];
    goto LABEL_9;
  }

  v23 = os_transaction_create();
  [v22 setTransaction:v23];

  v24 = +[LiveFSClient interfaceForListeners];
  v25 = [v18 addVolume:v20 usingInterface:v24 connectionClass:objc_opt_class() queue:0 proxy:v22 description:v20];

  if (v25)
  {
    [v22 setTransaction:0];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005951C();
    }

    v26 = v25;
LABEL_9:
    v27 = v26;
    goto LABEL_44;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = v15;
    *&buf[12] = 2112;
    *&buf[14] = v20;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "internalAddShare: addVolume returned success for share: %@ desc: %@ ", buf, 0x16u);
  }

  v28 = [@"com.apple.filesystems.smbclientd" stringByAppendingPathComponent:v20];
  v29 = v28;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v45 = 0;
  if (v21)
  {
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_10003498C;
    v36[3] = &unk_10008E1E8;
    v37 = v28;
    v38 = buf;
    [v21 enumerateObjectsUsingBlock:v36];
  }

  v35 = [SMBFPClient newClientForProvider:@"com.apple.SMBClientProvider.FileProvider"];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v30 = *(*&buf[8] + 24);
    *v40 = 67109378;
    *v41 = v30;
    *&v41[4] = 2112;
    *&v41[6] = v15;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "internalAddShare: Got mounter, about to try mounting. isMounted is %d for share: %@", v40, 0x12u);
  }

  if (*(*&buf[8] + 24) != 1)
  {
    v32 = 130;
LABEL_29:
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *v40 = 138412802;
      *v41 = v20;
      *&v41[8] = 2112;
      *&v41[10] = v19;
      v42 = 2112;
      v43 = v15;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "internalAddShare: Added the volume: %@ with displayName: %@ share: %@ to livefiles local mount service, trying to register with fskitd.", v40, 0x20u);
    }

    v31 = [v35 mountVolume:v20 displayName:v19 provider:@"com.apple.SMBClientProvider.FileProvider" on:v29 how:v32];
    if (v31)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        *v40 = 138412802;
        *v41 = v31;
        *&v41[8] = 2112;
        *&v41[10] = v20;
        v42 = 2112;
        v43 = v15;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "internalAddShare: mountVolume returned error %@ for volume: %@ share: %@, about to tear down", v40, 0x20u);
      }

      [v18 removeVolumeLocked:v20];
      [v22 setTransaction:0];
      if (*(*&buf[8] + 24) == 1)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          *v40 = 138412290;
          *v41 = v15;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "internalAddShare: Calling unmountVolume to force/forget share: %@", v40, 0xCu);
        }

        v33 = [v35 unmountVolume:v29 how:3];
      }
    }

    else
    {
      if (a10)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          *v40 = 138412290;
          *v41 = v15;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "internalAddShare: try to create root node for share: %@ ", v40, 0xCu);
        }

        [v22 tryCreateRootNode];
      }

      v31 = 0;
    }

    goto LABEL_43;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *v40 = 138412290;
    *v41 = v15;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "internalAddShare: Force-unmounting existing mount for share: %@", v40, 0xCu);
  }

  v31 = [v35 unmountVolume:v29 how:1];
  if (!v31)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *v40 = 138412290;
      *v41 = v15;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "internalAddShare: Forced unmount returned success for share: %@", v40, 0xCu);
    }

    if (*(*&buf[8] + 24))
    {
      v32 = 194;
    }

    else
    {
      v32 = 130;
    }

    goto LABEL_29;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100059594();
  }

  [v18 removeVolumeLocked:v20];
  [v22 setTransaction:0];
LABEL_43:
  v27 = v31;
  _Block_object_dispose(buf, 8);

LABEL_44:

  return v27;
}

- (id)findNewMountNumber:(unsigned int *)a3 error:(id *)a4
{
  v7 = 0;
  do
  {
    v8 = arc4random();
    v9 = [NSNumber numberWithUnsignedInteger:v8];
    if ([(NSMutableSet *)self->_mountNumbers containsObject:v9])
    {

      v9 = 0;
    }

    else
    {
      if (a3)
      {
        *a3 = v8;
      }

      if (a4)
      {
        *a4 = 0;
      }
    }

    if (v9)
    {
      break;
    }
  }

  while (v7++ < 9);
  if (!v9)
  {
    v11 = getNSErrorFromLiveFSErrno();
    if (a4)
    {
      v11 = v11;
      *a4 = v11;
    }
  }

  return v9;
}

- (id)storageStringForMountNumber:(unsigned int)a3
{
  v9 = a3;
  v3 = [NSCharacterSet characterSetWithCharactersInString:@"="];
  v4 = [NSData dataWithBytes:&v9 length:4];
  v5 = [v4 base64EncodedStringWithOptions:0];
  v6 = [v5 stringByTrimmingCharactersInSet:v3];

  v7 = [v6 stringByReplacingOccurrencesOfString:@"/" withString:@"_"];

  return v7;
}

- (id)addShares:(id)a3 atServer:(id)a4 serverDomainName:(id *)a5 service:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [v11 scheme];
  v14 = [v13 isEqualToString:@"smb"];

  if ((v14 & 1) == 0)
  {
    a5 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    goto LABEL_70;
  }

  v15 = [NSURLComponents componentsWithURL:v11 resolvingAgainstBaseURL:1];
  v16 = [v15 user];
  v60 = [v15 host];
  v58 = [v15 password];
  v59 = [v15 port];
  if (v60)
  {
    if (v16)
    {
      v17 = [v16 caseInsensitiveCompare:@"GUEST"];
      if (!v17)
      {

        v58 = &stru_10008EA58;
      }

      v91 = 0;
      v92 = &v91;
      v93 = 0x3032000000;
      v94 = sub_10003566C;
      v87 = 0;
      v88 = &v87;
      v89 = 0x2020000000;
      v90 = 0;
      v95 = sub_10003567C;
      v96 = 0;
      if (v59 && [v59 intValue] == 445)
      {
        [v15 setPort:0];
      }

      [v15 setPassword:0];
      [v15 setPath:0];
      [v15 setFragment:0];
      [v15 setQuery:0];
      v57 = [v15 URL];
      v54 = [v57 absoluteString];
      v18 = sub_100035684(v15);
      v19 = self;
      objc_sync_enter(v19);
      v81 = 0;
      v82 = &v81;
      v83 = 0x3032000000;
      v84 = sub_10003566C;
      v85 = sub_10003567C;
      v86 = 0;
      v55 = v18;
      obj = &v19->super.isa;
      v20 = [(NSMutableDictionary *)v19->_servers objectForKey:v18];
      v21 = v20;
      if (v20)
      {
        v22 = [v20 objectForKeyedSubscript:@"user"];
        v23 = [v16 isEqualToString:v22];

        if ((v23 & 1) == 0)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_100059698();
          }

          a5 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
          v17 = 0;
          v28 = 0;
          goto LABEL_66;
        }

        if (!v17)
        {
          goto LABEL_44;
        }

        v80 = 0;
        v51 = [SMBClientdKeychainUtilities getItemForIdentifier:v55 error:&v80];
        v17 = v80;
        if (v17)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_100059710();
          }

          v24 = 0;
        }

        else
        {
          v24 = [[NSString alloc] initWithData:v51 encoding:4];
        }

        v32 = v24;
        if (([(__CFString *)v58 isEqualToString:?]& 1) != 0)
        {
LABEL_43:

LABEL_44:
          v52 = [v21 objectForKeyedSubscript:@"storageName"];
LABEL_45:
          v34 = objc_opt_new();
          v75[0] = 0;
          v75[1] = v75;
          v75[2] = 0x3032000000;
          v75[3] = sub_10003566C;
          v75[4] = sub_10003567C;
          v76 = 0;
          v35 = [v21 objectForKeyedSubscript:@"shares"];
          [v34 addObjectsFromArray:v35];

          v62[0] = _NSConcreteStackBlock;
          v62[1] = 3221225472;
          v62[2] = sub_10003571C;
          v62[3] = &unk_10008E210;
          v50 = v34;
          v63 = v50;
          v71 = &v81;
          v21 = v21;
          v72 = v75;
          v64 = v21;
          v65 = obj;
          v66 = v57;
          v67 = v58;
          v68 = v12;
          v36 = v55;
          v69 = v36;
          v53 = v52;
          v70 = v53;
          v73 = &v91;
          v74 = &v87;
          [v10 enumerateObjectsUsingBlock:v62];
          if (a5)
          {
            v37 = v53;
            *a5 = v53;
          }

          if (!*(v88 + 6))
          {
            v38 = v92[5];
            if (v38)
            {
              v39 = v38;

              v17 = v39;
            }
          }

          if (v82[5])
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              v40 = v82[5];
              *buf = 138412290;
              v98 = v40;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Saving new config %@", buf, 0xCu);
            }

            [obj[1] setObject:v82[5] forKey:v36];
            v61 = 0;
            [obj save:&v61];
            v41 = v61;
            a5 = v41;
            if (v17)
            {
              v42 = v17;
            }

            else
            {
              v42 = v41;
            }

            v43 = v42;

            v17 = v43;
          }

          _Block_object_dispose(v75, 8);
          v28 = 1;
          goto LABEL_66;
        }

        v33 = [(__CFString *)v58 dataUsingEncoding:4];
        v79 = v17;
        v48 = [SMBClientdKeychainUtilities addItem:v33 forIdentifier:v55 error:&v79];
        v49 = v79;

        if (v48)
        {
          v17 = v49;
          goto LABEL_43;
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10005979C();
        }

        v17 = v49;

LABEL_65:
        v28 = 0;
        a5 = v17;
LABEL_66:
        _Block_object_dispose(&v81, 8);

        objc_sync_exit(obj);
        if (v28)
        {
          a5 = v17;
        }

        _Block_object_dispose(&v87, 8);
        _Block_object_dispose(&v91, 8);

        goto LABEL_69;
      }

      LODWORD(v75[0]) = 0;
      v78 = 0;
      v25 = [obj findNewMountNumber:v75 error:&v78];
      v26 = v78;
      if (!v25)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10005998C();
        }

        v17 = v26;
        goto LABEL_64;
      }

      v52 = [obj storageStringForMountNumber:LODWORD(v75[0])];
      v27 = [v12 addVolumeCluster:v52];

      if (v27)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100059820();
        }
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          sub_100059898();
        }

        v29 = [(__CFString *)v58 dataUsingEncoding:4];
        v77 = 0;
        v30 = [SMBClientdKeychainUtilities addItem:v29 forIdentifier:v55 error:&v77];
        v31 = v77;

        if ((v30 & 1) == 0)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_100059914();
          }

          v17 = v31;

          goto LABEL_64;
        }

        v27 = [SMBFPClient locallyBuildFPDomain:v52 displayName:v55 provider:@"com.apple.SMBClientProvider.FileProvider" how:1];

        if (!v27)
        {
          v99[0] = @"mountNumber";
          v99[1] = @"shares";
          v100[0] = v25;
          v100[1] = &__NSArray0__struct;
          v99[2] = @"storageName";
          v99[3] = @"url";
          v100[2] = v52;
          v100[3] = v54;
          v99[4] = @"user";
          v100[4] = v16;
          v21 = [NSDictionary dictionaryWithObjects:v100 forKeys:v99 count:5];
          v45 = [v21 mutableCopy];
          v46 = v82[5];
          v82[5] = v45;

          v47 = objc_opt_new();
          [v82[5] setObject:v47 forKeyedSubscript:@"shares"];

          v17 = 0;
          goto LABEL_45;
        }
      }

      v17 = v27;

LABEL_64:
      v21 = 0;
      goto LABEL_65;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000599D0();
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100059A48();
  }

  a5 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
LABEL_69:

LABEL_70:

  return a5;
}

- (id)removeServer:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_10003566C;
  v21 = sub_10003567C;
  v22 = 0;
  servers = v5->_servers;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100035BB4;
  v14[3] = &unk_10008E238;
  v7 = v4;
  v15 = v7;
  v16 = &v17;
  [(NSMutableDictionary *)servers enumerateKeysAndObjectsUsingBlock:v14];
  if (v18[5])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v18[5];
      *buf = 136315394;
      v24 = "[SMBClientdSettings removeServer:]";
      v25 = 2112;
      v26 = v8;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s Remove server entry: %@", buf, 0x16u);
    }

    [(NSMutableDictionary *)v5->_servers removeObjectForKey:v18[5]];
    v13 = 0;
    [(SMBClientdSettings *)v5 save:&v13];
    v9 = v13;
    if (v9)
    {
      v10 = v9;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100059B54();
      }
    }

    else
    {
      v12 = 0;
      [SMBClientdKeychainUtilities removeItemForIdentifier:v7 error:&v12];
      v10 = v12;
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100059BD8();
  }

  _Block_object_dispose(&v17, 8);
  objc_sync_exit(v5);

  return 0;
}

- (void)reconstituteWithService:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v20 = 0;
  [(SMBClientdSettings *)v5 load:&v20];
  v6 = v20;
  if (v6)
  {
    v7 = v6;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100059C5C();
    }
  }

  else
  {
    v8 = +[LiveFSMountClient newClient];
    v19 = 0;
    v9 = [v8 allMounts:&v19];
    v7 = v19;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100035EE8;
    v17[3] = &unk_10008E260;
    v10 = objc_opt_new();
    v18 = v10;
    [v9 enumerateObjectsUsingBlock:v17];
    servers = v5->_servers;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100035F50;
    v13[3] = &unk_10008E2B0;
    v14 = v4;
    v15 = v5;
    v12 = v10;
    v16 = v12;
    [(NSMutableDictionary *)servers enumerateKeysAndObjectsUsingBlock:v13];
  }

  objc_sync_exit(v5);
}

- (id)getPasswordForIdentifier:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [NSURLComponents componentsWithURL:v5 resolvingAgainstBaseURL:1];
  v7 = sub_100035684(v6);
  if (a4)
  {
    *a4 = 0;
  }

  v13 = 0;
  v8 = [SMBClientdKeychainUtilities getItemForIdentifier:v7 error:&v13];
  v9 = v13;
  if (v9)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100059EDC();
      if (a4)
      {
        goto LABEL_6;
      }
    }

    else if (a4)
    {
LABEL_6:
      v10 = v9;
      v11 = 0;
      *a4 = v9;
      goto LABEL_10;
    }

    v11 = 0;
  }

  else
  {
    v11 = [[NSString alloc] initWithData:v8 encoding:4];
  }

LABEL_10:

  return v11;
}

@end