@interface MBDriveRestoreDomainManagerDelegate
+ (id)domainForName:(id)name containerID:(id)d engine:(id)engine;
@end

@implementation MBDriveRestoreDomainManagerDelegate

+ (id)domainForName:(id)name containerID:(id)d engine:(id)engine
{
  nameCopy = name;
  dCopy = d;
  engineCopy = engine;
  persona = [engineCopy persona];
  if (!persona)
  {
    sub_10009FB50();
  }

  if (!dCopy)
  {
    sub_10009FB24();
  }

  v11 = persona;
  if ([MBDomain isSystemContainerName:nameCopy])
  {
    v12 = [v11 systemContainerRestoreRootWithContainerID:dCopy];
    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v32 = nameCopy;
      v33 = 2112;
      v34 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "=drive-domain-delegate= Creating system container domain for %@ at %@", buf, 0x16u);
      _MBLog();
    }

    systemContainersVolumeMountPoint = [v11 systemContainersVolumeMountPoint];
    v15 = [MBDomain systemContainerDomainWithIdentifier:dCopy volumeMountPoint:systemContainersVolumeMountPoint rootPath:v12];
LABEL_11:
    domain = v15;

    v18 = +[NSSet set];
    [domain setRelativePathsToBackupAndRestore:v18];

    v19 = [NSSet setWithObject:&stru_1000FF270];
    [domain setRelativePathsToRestoreOnly:v19];

    [domain setShouldDigest:0];
LABEL_12:

    goto LABEL_13;
  }

  if ([MBDomain isSystemSharedContainerName:nameCopy])
  {
    v12 = [v11 sharedSystemContainerRestoreRootWithContainerID:dCopy];
    v16 = MBGetDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v32 = nameCopy;
      v33 = 2112;
      v34 = v12;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "=drive-domain-delegate= Creating system shared container domain for %@ at %@", buf, 0x16u);
      _MBLog();
    }

    systemContainersVolumeMountPoint = [v11 systemContainersVolumeMountPoint];
    v15 = [MBDomain systemSharedContainerDomainWithIdentifier:dCopy volumeMountPoint:systemContainersVolumeMountPoint rootPath:v12];
    goto LABEL_11;
  }

  settingsContext = [engineCopy settingsContext];
  v22 = [settingsContext shouldRestoreAppWithID:dCopy];

  if (v22)
  {
    manifest = [engineCopy manifest];
    properties = [manifest properties];
    v12 = [properties containerWithIdentifier:dCopy];

    if (v12)
    {
      v25 = [MBDomain containerTypeWithName:nameCopy];
      appManager = [engineCopy appManager];
      v27 = [appManager containerWithIdentifier:dCopy containerType:v25];

      if (v27)
      {
        domain = [v27 domain];
      }

      else
      {
        appManager2 = [engineCopy appManager];
        v30 = 0;
        v27 = [appManager2 createSafeHarborForContainer:v12 withPersona:v11 error:&v30];
        v29 = v30;

        if (!v27)
        {
          objc_exception_throw([[MBException alloc] initWithCode:1 format:{@"Error creating safe harbor for %@: %@", dCopy, v29}]);
        }

        domain = [v27 domain];
      }
    }

    else
    {
      v27 = MBGetDefaultLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v32 = dCopy;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "=drive-domain-delegate= Container domain %@ without an entry in manifest properties", buf, 0xCu);
        _MBLog();
      }

      domain = 0;
    }

    goto LABEL_12;
  }

  domain = [MBDomain uninstalledDomainWithName:nameCopy];
LABEL_13:

  return domain;
}

@end