@interface SoftwareLibraryUpdateOperation
- (NSDictionary)changeset;
- (NSString)bundleIdentifier;
- (SoftwareLibraryUpdateOperation)initWithBundleIdentifier:(id)a3 changeset:(id)a4;
- (void)dealloc;
- (void)run;
@end

@implementation SoftwareLibraryUpdateOperation

- (SoftwareLibraryUpdateOperation)initWithBundleIdentifier:(id)a3 changeset:(id)a4
{
  v8.receiver = self;
  v8.super_class = SoftwareLibraryUpdateOperation;
  v6 = [(SoftwareLibraryUpdateOperation *)&v8 init];
  if (v6)
  {
    v6->_bundleID = [a3 copy];
    v6->_changeset = [a4 copy];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SoftwareLibraryUpdateOperation;
  [(SoftwareLibraryUpdateOperation *)&v3 dealloc];
}

- (NSString)bundleIdentifier
{
  v2 = self->_bundleID;

  return v2;
}

- (NSDictionary)changeset
{
  v2 = self->_changeset;

  return v2;
}

- (void)run
{
  v28 = 0;
  if (!self->_bundleID)
  {
    goto LABEL_35;
  }

  v3 = [objc_msgSend(objc_msgSend(+[LSApplicationProxy applicationProxyForIdentifier:](LSApplicationProxy "applicationProxyForIdentifier:{"bundleContainerURL"), "path"), "stringByAppendingPathComponent:", @"iTunesMetadata.plist"}")];
  if (!v3)
  {
    goto LABEL_35;
  }

  v4 = v3;
  v5 = [[NSMutableDictionary alloc] initWithContentsOfFile:v3];
  if (v5)
  {
    v6 = +[SSLogConfig sharedDaemonConfig];
    if (!v6)
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
      v10 = [(NSDictionary *)self->_changeset count];
      bundleID = self->_bundleID;
      v29 = 138413058;
      v30 = v9;
      v31 = 2048;
      v32 = v10;
      v33 = 2112;
      v34 = bundleID;
      v35 = 2112;
      v36 = v4;
      LODWORD(v26) = 42;
      v25 = &v29;
      v12 = _os_log_send_and_compose_impl();
      if (v12)
      {
        v13 = v12;
        v14 = [NSString stringWithCString:v12 encoding:4, &v29, v26];
        free(v13);
        v25 = v14;
        SSFileLog();
      }
    }

    changeset = self->_changeset;
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1001FE910;
    v27[3] = &unk_10032C360;
    v27[4] = v5;
    [(NSDictionary *)changeset enumerateKeysAndObjectsUsingBlock:v27, v25];
    v16 = [NSPropertyListSerialization dataWithPropertyList:v5 format:200 options:0 error:&v28];
    if (v16)
    {
      v5 = 1;
      if ([(NSData *)v16 writeToFile:v4 options:1 error:&v28])
      {
        goto LABEL_36;
      }

      v17 = +[SSLogConfig sharedDaemonConfig];
      if (!v17)
      {
        v17 = +[SSLogConfig sharedConfig];
      }

      v18 = [v17 shouldLog];
      if ([v17 shouldLogToDisk])
      {
        v19 = v18 | 2;
      }

      else
      {
        v19 = v18;
      }

      if (!os_log_type_enabled([v17 OSLogObject], OS_LOG_TYPE_DEFAULT))
      {
        v19 &= 2u;
      }

      if (!v19)
      {
        goto LABEL_35;
      }
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

      if (!v22)
      {
        goto LABEL_35;
      }
    }

    v23 = objc_opt_class();
    v29 = 138412546;
    v30 = v23;
    v31 = 2112;
    v32 = v28;
    LODWORD(v26) = 22;
    v25 = &v29;
    v5 = _os_log_send_and_compose_impl();
    if (v5)
    {
      v24 = [NSString stringWithCString:v5 encoding:4, &v29, v26];
      free(v5);
      v25 = v24;
      SSFileLog();
LABEL_35:
      v5 = 0;
    }
  }

LABEL_36:
  [(SoftwareLibraryUpdateOperation *)self setError:v28, v25];
  [(SoftwareLibraryUpdateOperation *)self setSuccess:v5];
}

@end