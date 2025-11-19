@interface InstallSoftwareOperation
- (BOOL)_installPackage:(id *)a3;
- (BOOL)_verifyApplication:(id)a3 error:(id *)a4;
- (InstallSoftwareOperation)initWithSoftwareProperties:(id)a3;
- (SoftwareProperties)softwareProperties;
- (id)_newInstallationOptions;
- (void)dealloc;
- (void)main;
- (void)run;
@end

@implementation InstallSoftwareOperation

- (InstallSoftwareOperation)initWithSoftwareProperties:(id)a3
{
  v6.receiver = self;
  v6.super_class = InstallSoftwareOperation;
  v4 = [(InstallSoftwareOperation *)&v6 init];
  if (v4)
  {
    v4->_softwareProperties = [a3 copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = InstallSoftwareOperation;
  [(InstallSoftwareOperation *)&v3 dealloc];
}

- (SoftwareProperties)softwareProperties
{
  v2 = [(SoftwareProperties *)self->_softwareProperties copy];

  return v2;
}

- (void)main
{
  if ([+[ApplicationWorkspace defaultWorkspace](ApplicationWorkspace "defaultWorkspace")])
  {
    v3 = [[NSString alloc] initWithFormat:@"com.apple.itunesstored.install_software.%@", -[NSUUID UUIDString](+[NSUUID UUID](NSUUID, "UUID"), "UUIDString")];
    AssertionID = 0;
    v4 = IOPMAssertionCreateWithDescription(@"PreventUserIdleSystemSleep", v3, 0, @"itunesstored install software", 0, 180.0, @"TimeoutActionRelease", &AssertionID);
    v5 = +[SSLogConfig sharedDaemonConfig];
    v6 = v5;
    if (v4)
    {
      if (!v5)
      {
        v6 = +[SSLogConfig sharedConfig];
      }

      v7 = [v6 shouldLog];
      if ([v6 shouldLogToDisk])
      {
        v8 = v7 | 2;
      }

      else
      {
        v8 = v7;
      }

      if (!os_log_type_enabled([v6 OSLogObject], OS_LOG_TYPE_INFO))
      {
        v8 &= 2u;
      }

      if (v8)
      {
        v9 = objc_opt_class();
        v25 = 138412546;
        v26 = v9;
        v27 = 1024;
        LODWORD(v28) = v4;
        LODWORD(v20) = 18;
        v19 = &v25;
        v10 = _os_log_send_and_compose_impl();
        if (v10)
        {
          v11 = v10;
          v12 = [NSString stringWithCString:v10 encoding:4, &v25, v20];
          free(v11);
          v19 = v12;
          SSFileLog();
        }
      }

      v22.receiver = self;
      v22.super_class = InstallSoftwareOperation;
      [(InstallSoftwareOperation *)&v22 main];
    }

    else
    {
      if (!v5)
      {
        v6 = +[SSLogConfig sharedConfig];
      }

      v13 = [v6 shouldLog];
      if ([v6 shouldLogToDisk])
      {
        v14 = v13 | 2;
      }

      else
      {
        v14 = v13;
      }

      if (!os_log_type_enabled([v6 OSLogObject], OS_LOG_TYPE_INFO))
      {
        v14 &= 2u;
      }

      if (v14)
      {
        v15 = objc_opt_class();
        v25 = 138412546;
        v26 = v15;
        v27 = 2112;
        v28 = v3;
        LODWORD(v20) = 22;
        v19 = &v25;
        v16 = _os_log_send_and_compose_impl();
        if (v16)
        {
          v17 = v16;
          v18 = [NSString stringWithCString:v16 encoding:4, &v25, v20];
          free(v17);
          v19 = v18;
          SSFileLog();
        }
      }

      v23.receiver = self;
      v23.super_class = InstallSoftwareOperation;
      [(InstallSoftwareOperation *)&v23 main];
      IOPMAssertionRelease(AssertionID);
    }
  }

  else
  {
    v21.receiver = self;
    v21.super_class = InstallSoftwareOperation;
    [(InstallSoftwareOperation *)&v21 main];
  }
}

- (void)run
{
  v3 = objc_autoreleasePoolPush();
  v4 = OBJC_IVAR___ISOperation__progress;
  [*&self->ISOperation_opaque[OBJC_IVAR___ISOperation__progress] setMaxValue:100];
  [*&self->ISOperation_opaque[v4] setOperationType:1];
  [(InstallSoftwareOperation *)self sendProgressToDelegate];
  v6 = 0;
  if ([(InstallSoftwareOperation *)self _installPackage:&v6])
  {
    v5 = +[DistributedNotificationCenter defaultCenter];
    [v5 postNotificationName:kISSoftwareMapInvalidatedNotification];
    [(InstallSoftwareOperation *)self setSuccess:1];
  }

  else
  {
    if (!v6)
    {
      ISError();
    }

    [(InstallSoftwareOperation *)self setError:?];
  }

  objc_autoreleasePoolPop(v3);
}

- (BOOL)_installPackage:(id *)a3
{
  if (a3)
  {
    *a3 = SSError();
  }

  return 0;
}

- (id)_newInstallationOptions
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(SoftwareProperties *)self->_softwareProperties artworkData];
  if (v4)
  {
    [v3 setObject:v4 forKey:LSiTunesArtworkKey];
  }

  v5 = [(SoftwareProperties *)self->_softwareProperties transitMapData];
  if (v5)
  {
    [v3 setObject:v5 forKey:LSGeoJSONKey];
  }

  v6 = [(SoftwareProperties *)self->_softwareProperties ITunesMetadata];
  if (v6)
  {
    v29 = 0;
    v7 = [NSPropertyListSerialization dataWithPropertyList:v6 format:200 options:0 error:&v29];
    v8 = v7 != 0;
    if (v7)
    {
      [v3 setObject:v7 forKey:LSiTunesMetadataKey];
    }

    else
    {
      v20 = +[SSLogConfig sharedDaemonConfig];
      if (!v20)
      {
        v20 = +[SSLogConfig sharedConfig];
      }

      v21 = [v20 shouldLog];
      if ([v20 shouldLogToDisk])
      {
        v22 = v21 | 2;
      }

      else
      {
        v22 = v21;
      }

      if (!os_log_type_enabled([v20 OSLogObject], OS_LOG_TYPE_DEFAULT))
      {
        v22 &= 2u;
      }

      if (v22)
      {
        v23 = objc_opt_class();
        v30 = 138412546;
        v31 = v23;
        v32 = 2112;
        v33 = v29;
        LODWORD(v28) = 22;
        v27 = &v30;
        v24 = _os_log_send_and_compose_impl();
        if (v24)
        {
          v25 = v24;
          v26 = [NSString stringWithCString:v24 encoding:4, &v30, v28];
          free(v25);
          v27 = v26;
          SSFileLog();
        }
      }
    }
  }

  else
  {
    v9 = +[SSLogConfig sharedDaemonConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    v10 = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v11 = v10 | 2;
    }

    else
    {
      v11 = v10;
    }

    if (!os_log_type_enabled([v9 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v11 &= 2u;
    }

    if (v11)
    {
      v30 = 138412290;
      v31 = objc_opt_class();
      LODWORD(v28) = 12;
      v27 = &v30;
      v12 = _os_log_send_and_compose_impl();
      if (v12)
      {
        v13 = v12;
        v14 = [NSString stringWithCString:v12 encoding:4, &v30, v28];
        free(v13);
        v27 = v14;
        SSFileLog();
      }
    }

    v8 = 0;
  }

  v15 = [(SoftwareProperties *)self->_softwareProperties sinfData];
  if (v15)
  {
    [v3 setObject:v15 forKey:LSApplicationSINFKey];
  }

  v16 = [(SoftwareProperties *)self->_softwareProperties installType];
  if (v16)
  {
    [v3 setObject:v16 forKey:LSInstallTypeKey];
  }

  v17 = [NSNumber numberWithBool:1];
  [v3 setObject:v17 forKey:LSSupressNotificationKey];
  [v3 setObject:LSPackageTypeCustomer forKey:LSPackageTypeKey];
  v18 = [(SoftwareProperties *)self->_softwareProperties bundleIdentifier];
  if ([(NSString *)v18 length])
  {
    [v3 setObject:v18 forKey:@"CFBundleIdentifier"];
  }

  if (!v8)
  {

    return 0;
  }

  return v3;
}

- (BOOL)_verifyApplication:(id)a3 error:(id *)a4
{
  v7 = objc_opt_new();
  [v7 setSourceURL:a3];
  [v7 setBundleIdentifier:{-[SoftwareProperties bundleIdentifier](self->_softwareProperties, "bundleIdentifier")}];
  [v7 setBundleVersion:{-[SoftwareProperties bundleVersion](self->_softwareProperties, "bundleVersion")}];
  v10 = 0;
  v8 = [v7 validate:&v10];

  if (a4)
  {
    *a4 = v10;
  }

  return v8;
}

@end