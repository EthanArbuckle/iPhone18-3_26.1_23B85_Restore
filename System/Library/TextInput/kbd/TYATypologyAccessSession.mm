@interface TYATypologyAccessSession
+ (id)_safeFilenameWithName:(id)a3;
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (TYATypologyAccessSession)initWithAuditToken:(id *)a3;
- (id)_issueSandboxExtensionForURL:(id)a3;
- (void)_initializeEnumerator;
- (void)nextTypologyURL:(id)a3;
- (void)removeTypologyFileWithName:(id)a3 completion:(id)a4;
- (void)setAccessMode:(unint64_t)a3;
- (void)setAuditToken:(id *)a3;
- (void)setTypologyAccessMode:(unint64_t)a3;
- (void)startEnumeration;
- (void)writeData:(id)a3 toTypologyFileWithName:(id)a4 completion:(id)a5;
@end

@implementation TYATypologyAccessSession

- (TYATypologyAccessSession)initWithAuditToken:(id *)a3
{
  v8.receiver = self;
  v8.super_class = TYATypologyAccessSession;
  v4 = [(TYATypologyAccessSession *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v6 = *&a3->var0[4];
    *v4->_auditToken.val = *a3->var0;
    *&v4->_auditToken.val[4] = v6;
    [(TYATypologyAccessSession *)v4 setAccessMode:0];
  }

  return v5;
}

- (void)setAccessMode:(unint64_t)a3
{
  if (self->_accessMode != a3)
  {
    self->_accessMode = a3;
    if (a3 <= 2)
    {
      v4 = objc_alloc_init(*(&off_10001C770)[a3]);
      typologyPreferences = self->_typologyPreferences;
      self->_typologyPreferences = v4;

      _objc_release_x1();
    }
  }
}

- (void)_initializeEnumerator
{
  directoryEnumerator = self->_directoryEnumerator;
  self->_directoryEnumerator = 0;

  v4 = [(TYATypologyAccessSession *)self typologyPreferences];
  v5 = [v4 typologyLoggingEnabledByProfile];

  if (v5)
  {
    v6 = [(TYATypologyAccessSession *)self typologyPreferences];
    v7 = [v6 typologyDirectoryURL];

    v12[0] = NSURLNameKey;
    v12[1] = NSURLIsDirectoryKey;
    v8 = [NSArray arrayWithObjects:v12 count:2];
    v9 = [&stru_10001C750 copy];
    v10 = +[NSFileManager defaultManager];
    v11 = [v10 enumeratorAtURL:v7 includingPropertiesForKeys:v8 options:5 errorHandler:v9];
    [(TYATypologyAccessSession *)self setDirectoryEnumerator:v11];
  }

  else
  {
    v7 = TYALog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10000D014();
    }
  }
}

- (id)_issueSandboxExtensionForURL:(id)a3
{
  v4 = a3;
  v5 = [v4 path];
  [v5 fileSystemRepresentation];
  [(TYATypologyAccessSession *)self auditToken];
  v6 = sandbox_extension_issue_file_to_process();
  if (!v6)
  {
    v14 = TYALog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10000D140(v4, v14);
    }

    goto LABEL_12;
  }

  v7 = v6;
  v8 = [[NSString alloc] initWithBytesNoCopy:v7 length:strlen(v7) encoding:4 freeWhenDone:1];
  v9 = TYALog();
  v10 = v9;
  if (!v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10000D100();
    }

    free(v7);
LABEL_12:
    v8 = 0;
    goto LABEL_13;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = [v8 UTF8String];
    v12 = [v4 lastPathComponent];
    v13 = [v12 UTF8String];
    v16 = 136380931;
    v17 = v11;
    v18 = 2081;
    v19 = v13;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Issued sandbox extension (%{private}s) for typology url with name %{private}s", &v16, 0x16u);
  }

LABEL_13:

  return v8;
}

- (void)startEnumeration
{
  v3 = TYALog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Start enumeration.", v4, 2u);
  }

  [(TYATypologyAccessSession *)self _initializeEnumerator];
}

+ (id)_safeFilenameWithName:(id)a3
{
  v3 = a3;
  v4 = [v3 lastPathComponent];
  v5 = v4;
  if (v4 && [v4 length] && (objc_msgSend(v5, "isEqualToString:", @"/") & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"~") & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @".") & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"..") & 1) == 0)
  {
    if ([v5 isEqualToString:v3])
    {
LABEL_8:
      v6 = v5;
      goto LABEL_15;
    }

    v7 = [v3 pathComponents];
    if ([v7 count] == 2 && (objc_msgSend(v7, "firstObject"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", @"."), v8, v9))
    {
      v10 = [v7 lastObject];
      v11 = [v10 isEqualToString:v5];

      if (v11)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  v6 = 0;
LABEL_15:

  return v6;
}

- (void)nextTypologyURL:(id)a3
{
  v4 = a3;
  v5 = 0;
  while (1)
  {
    v6 = v5;
    v7 = [(TYATypologyAccessSession *)self directoryEnumerator];
    v5 = [v7 nextObject];

    if (!v5)
    {
      break;
    }

    if (_isTypologyURL(v5))
    {
      v8 = [(TYATypologyAccessSession *)self typologyPreferences];
      v9 = [v8 isTypologyInDatavault];

      if (v9)
      {
        v10 = [(TYATypologyAccessSession *)self _issueSandboxExtensionForURL:v5];
      }

      else
      {
        v10 = 0;
      }

      v12 = TYALog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = [v5 lastPathComponent];
        v14 = 136380931;
        v15 = [v13 UTF8String];
        v16 = 2081;
        v17 = [v10 UTF8String];
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "-nextTypologyURL: -> (%{private}s, %{private}s)", &v14, 0x16u);
      }

      v4[2](v4, v5, v10);
      goto LABEL_13;
    }
  }

  v11 = TYALog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "-nextTypologyURL: -> ((null), (null))", &v14, 2u);
  }

  v4[2](v4, 0, 0);
LABEL_13:
}

- (void)removeTypologyFileWithName:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = TYALog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138477827;
    v20 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Removing typology file with name: %{private}@", buf, 0xCu);
  }

  v9 = [objc_opt_class() _safeFilenameWithName:v6];
  if (v9)
  {
    v10 = [(TYATypologyAccessSession *)self typologyPreferences];
    v11 = [v10 typologyDirectoryURL];
    v12 = [v11 URLByAppendingPathComponent:v9 isDirectory:0];

    v13 = +[NSFileManager defaultManager];
    v18 = 0;
    v14 = [v13 removeItemAtURL:v12 error:&v18];
    v15 = v18;

    if ((v14 & 1) == 0)
    {
      v16 = TYALog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10000D1DC();
      }
    }
  }

  else
  {
    v17 = TYALog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10000D24C();
    }

    v15 = [NSError errorWithDomain:NSCocoaErrorDomain code:514 userInfo:0];
    v14 = 0;
  }

  v7[2](v7, v14, v15);
}

- (void)setTypologyAccessMode:(unint64_t)a3
{
  v5 = TYALog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 134217984;
    v7 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Set typology access mode %lu.", &v6, 0xCu);
  }

  [(TYATypologyAccessSession *)self setAccessMode:a3];
}

- (void)writeData:(id)a3 toTypologyFileWithName:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (TI_IS_INTERNAL_INSTALL())
  {
    v11 = [objc_opt_class() _safeFilenameWithName:v9];
    if (!v11)
    {
      v24 = TYALog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_10000D24C();
      }

      v22 = [NSError errorWithDomain:NSCocoaErrorDomain code:514 userInfo:0];
      v23 = 0;
      goto LABEL_17;
    }

    v12 = [(TYATypologyAccessSession *)self typologyPreferences];
    v13 = [v12 typologyDirectoryURL];
    v14 = [v13 URLByAppendingPathComponent:v11];

    v15 = TYALog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138477827;
      v29 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Write data to typology file at url: %{private}@", buf, 0xCu);
    }

    v16 = +[NSFileManager defaultManager];
    v17 = [(TYATypologyAccessSession *)self typologyPreferences];
    v18 = [v17 typologyDirectoryURL];
    v27 = 0;
    v19 = [v16 createDirectoryAtURL:v18 withIntermediateDirectories:1 attributes:&__NSDictionary0__struct error:&v27];
    v20 = v27;

    if (v19)
    {
      v26 = v20;
      v21 = [v8 writeToURL:v14 options:2 error:&v26];
      v22 = v26;

      if (v21)
      {
        v23 = 1;
LABEL_16:

LABEL_17:
        goto LABEL_18;
      }
    }

    else
    {
      v22 = v20;
    }

    v25 = TYALog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_10000D2BC();
    }

    v23 = 0;
    goto LABEL_16;
  }

  v22 = 0;
  v23 = 0;
LABEL_18:
  v10[2](v10, v23, v22);
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  v3 = *&self[1].var0[4];
  *retstr->var0 = *self[1].var0;
  *&retstr->var0[4] = v3;
  return self;
}

- (void)setAuditToken:(id *)a3
{
  v3 = *&a3->var0[4];
  *self->_auditToken.val = *a3->var0;
  *&self->_auditToken.val[4] = v3;
}

@end