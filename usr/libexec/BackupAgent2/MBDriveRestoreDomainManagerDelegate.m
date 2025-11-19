@interface MBDriveRestoreDomainManagerDelegate
+ (id)domainForName:(id)a3 containerID:(id)a4 engine:(id)a5;
@end

@implementation MBDriveRestoreDomainManagerDelegate

+ (id)domainForName:(id)a3 containerID:(id)a4 engine:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v9 persona];
  if (!v10)
  {
    sub_10009FB50();
  }

  if (!v8)
  {
    sub_10009FB24();
  }

  v11 = v10;
  if ([MBDomain isSystemContainerName:v7])
  {
    v12 = [v11 systemContainerRestoreRootWithContainerID:v8];
    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v32 = v7;
      v33 = 2112;
      v34 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "=drive-domain-delegate= Creating system container domain for %@ at %@", buf, 0x16u);
      _MBLog();
    }

    v14 = [v11 systemContainersVolumeMountPoint];
    v15 = [MBDomain systemContainerDomainWithIdentifier:v8 volumeMountPoint:v14 rootPath:v12];
LABEL_11:
    v17 = v15;

    v18 = +[NSSet set];
    [v17 setRelativePathsToBackupAndRestore:v18];

    v19 = [NSSet setWithObject:&stru_1000FF270];
    [v17 setRelativePathsToRestoreOnly:v19];

    [v17 setShouldDigest:0];
LABEL_12:

    goto LABEL_13;
  }

  if ([MBDomain isSystemSharedContainerName:v7])
  {
    v12 = [v11 sharedSystemContainerRestoreRootWithContainerID:v8];
    v16 = MBGetDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v32 = v7;
      v33 = 2112;
      v34 = v12;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "=drive-domain-delegate= Creating system shared container domain for %@ at %@", buf, 0x16u);
      _MBLog();
    }

    v14 = [v11 systemContainersVolumeMountPoint];
    v15 = [MBDomain systemSharedContainerDomainWithIdentifier:v8 volumeMountPoint:v14 rootPath:v12];
    goto LABEL_11;
  }

  v21 = [v9 settingsContext];
  v22 = [v21 shouldRestoreAppWithID:v8];

  if (v22)
  {
    v23 = [v9 manifest];
    v24 = [v23 properties];
    v12 = [v24 containerWithIdentifier:v8];

    if (v12)
    {
      v25 = [MBDomain containerTypeWithName:v7];
      v26 = [v9 appManager];
      v27 = [v26 containerWithIdentifier:v8 containerType:v25];

      if (v27)
      {
        v17 = [v27 domain];
      }

      else
      {
        v28 = [v9 appManager];
        v30 = 0;
        v27 = [v28 createSafeHarborForContainer:v12 withPersona:v11 error:&v30];
        v29 = v30;

        if (!v27)
        {
          objc_exception_throw([[MBException alloc] initWithCode:1 format:{@"Error creating safe harbor for %@: %@", v8, v29}]);
        }

        v17 = [v27 domain];
      }
    }

    else
    {
      v27 = MBGetDefaultLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v32 = v8;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "=drive-domain-delegate= Container domain %@ without an entry in manifest properties", buf, 0xCu);
        _MBLog();
      }

      v17 = 0;
    }

    goto LABEL_12;
  }

  v17 = [MBDomain uninstalledDomainWithName:v7];
LABEL_13:

  return v17;
}

@end