@interface CSDSandboxExtensionDirectory
+ (NSURL)recordingDirectoryURL;
+ (id)CSDApplicationGroup;
- (BOOL)removeLinksForFilenamesNotInArray:(id)a3 error:(id *)a4;
- (CSDSandboxExtensionDirectory)init;
- (CSDSandboxExtensionDirectory)initWithName:(id)a3 error:(id *)a4;
- (CSDSandboxExtensionDirectory)initWithName:(id)a3 fileManager:(id)a4 error:(id *)a5;
- (NSString)name;
- (id)createLinkIfNecessaryWithFilename:(id)a3 toURL:(id)a4 error:(id *)a5;
- (id)urlForFilename:(id)a3;
@end

@implementation CSDSandboxExtensionDirectory

- (CSDSandboxExtensionDirectory)initWithName:(id)a3 fileManager:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v19.receiver = self;
  v19.super_class = CSDSandboxExtensionDirectory;
  v10 = [(CSDSandboxExtensionDirectory *)&v19 init];
  if (v10)
  {
    p_isa = &v10->super.isa;
    objc_storeStrong(&v10->_fileManager, a4);
    v12 = [p_isa[2] URLForDirectory:5 inDomain:1 appropriateForURL:0 create:1 error:a5];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 URLByAppendingPathComponent:@"CallServices" isDirectory:1];
      v15 = [v14 URLByAppendingPathComponent:v8 isDirectory:1];
      v16 = [v15 URLByStandardizingPath];

      if (v16 && [p_isa[2] createDirectoryAtURL:v16 withIntermediateDirectories:1 attributes:0 error:a5])
      {
        objc_storeStrong(p_isa + 1, v16);
      }

      else
      {

        p_isa = 0;
      }

      v17 = p_isa;

      p_isa = v14;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (CSDSandboxExtensionDirectory)initWithName:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[NSFileManager defaultManager];
  v8 = [(CSDSandboxExtensionDirectory *)self initWithName:v6 fileManager:v7 error:a4];

  return v8;
}

- (CSDSandboxExtensionDirectory)init
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"CSDSandboxExtensionDirectory.m" lineNumber:60 description:{@"%s is not available. Use a designated initializer instead.", "-[CSDSandboxExtensionDirectory init]"}];

  return 0;
}

- (NSString)name
{
  v2 = [(CSDSandboxExtensionDirectory *)self URL];
  v3 = [v2 lastPathComponent];

  return v3;
}

- (id)createLinkIfNecessaryWithFilename:(id)a3 toURL:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [(CSDSandboxExtensionDirectory *)self urlForFilename:a3];
  v10 = [(CSDSandboxExtensionDirectory *)self fileManager];
  v11 = [v9 path];
  v12 = [v10 fileExistsAtPath:v11];

  if (!v12)
  {
    goto LABEL_8;
  }

  v26 = 0;
  v13 = [v8 getResourceValue:&v26 forKey:NSURLFileResourceIdentifierKey error:0];
  v14 = v26;
  v15 = 0;
  if (v13 && (v25 = 0, v16 = [v9 getResourceValue:&v25 forKey:NSURLFileResourceIdentifierKey error:0], v15 = v25, v16))
  {
    v17 = [v14 isEqual:v15];

    if (v17)
    {
      goto LABEL_14;
    }
  }

  else
  {
  }

  v18 = [(CSDSandboxExtensionDirectory *)self fileManager];
  v19 = [v18 removeItemAtURL:v9 error:a5];

  if (!v19)
  {
    v21 = 0;
    if (!a5)
    {
      goto LABEL_13;
    }
  }

  else
  {
LABEL_8:
    v20 = [(CSDSandboxExtensionDirectory *)self fileManager];
    v21 = [v20 copyItemAtURL:v8 toURL:v9 error:a5];

    if (!a5)
    {
      goto LABEL_13;
    }
  }

  if ((v21 & 1) == 0 && !*a5)
  {
    v22 = 0;
    *a5 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:*__error() userInfo:0];
    goto LABEL_17;
  }

LABEL_13:
  if ((v21 & 1) == 0)
  {
    v22 = 0;
    goto LABEL_17;
  }

LABEL_14:
  v22 = v9;
LABEL_17:
  v23 = v22;

  return v22;
}

- (BOOL)removeLinksForFilenamesNotInArray:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count]);
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v48 objects:v56 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v49;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v49 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v48 + 1) + 8 * i);
        v13 = [(CSDSandboxExtensionDirectory *)self urlForFilename:v12];
        if (v13)
        {
          [v6 addObject:v13];
        }

        else
        {
          v14 = sub_100004778();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v55 = v12;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[WARN] Unable to get URL for filename '%@'", buf, 0xCu);
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v48 objects:v56 count:16];
    }

    while (v9);
  }

  v38 = v7;

  v15 = [(CSDSandboxExtensionDirectory *)self fileManager];
  v16 = [(CSDSandboxExtensionDirectory *)self URL];
  v17 = [v15 contentsOfDirectoryAtURL:v16 includingPropertiesForKeys:&__NSArray0__struct options:0 error:a4];

  v18 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v17 count]);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v19 = v17;
  v20 = [v19 countByEnumeratingWithState:&v44 objects:v53 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v45;
    do
    {
      for (j = 0; j != v21; j = j + 1)
      {
        if (*v45 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v44 + 1) + 8 * j);
        v25 = [v24 URLByStandardizingPath];
        if (v25)
        {
          [v18 addObject:v25];
        }

        else
        {
          v26 = sub_100004778();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v55 = v24;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[WARN] Unable to get standardized URL for URL '%@'", buf, 0xCu);
          }
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v44 objects:v53 count:16];
    }

    while (v21);
  }

  v27 = [NSMutableSet setWithArray:v18];
  v28 = [NSSet setWithArray:v6];
  [v27 minusSet:v28];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v29 = v27;
  v30 = [v29 countByEnumeratingWithState:&v40 objects:v52 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v41;
LABEL_27:
    v33 = 0;
    while (1)
    {
      if (*v41 != v32)
      {
        objc_enumerationMutation(v29);
      }

      v34 = *(*(&v40 + 1) + 8 * v33);
      v35 = [(CSDSandboxExtensionDirectory *)self fileManager];
      v36 = [v35 removeItemAtURL:v34 error:a4];

      if (!v36)
      {
        break;
      }

      if (v31 == ++v33)
      {
        v31 = [v29 countByEnumeratingWithState:&v40 objects:v52 count:16];
        if (v31)
        {
          goto LABEL_27;
        }

        goto LABEL_33;
      }
    }
  }

  else
  {
LABEL_33:
    LOBYTE(v36) = 1;
  }

  return v36;
}

- (id)urlForFilename:(id)a3
{
  v4 = a3;
  v5 = [(CSDSandboxExtensionDirectory *)self URL];
  v6 = [v5 URLByAppendingPathComponent:v4];

  v7 = [v6 URLByStandardizingPath];

  return v7;
}

+ (id)CSDApplicationGroup
{
  v2 = +[NSFileManager defaultManager];
  v3 = [@"group." stringByAppendingString:TUBundleIdentifierCallServicesDaemon];
  v4 = [v2 containerURLForSecurityApplicationGroupIdentifier:v3];

  return v4;
}

+ (NSURL)recordingDirectoryURL
{
  v2 = [[NSArray alloc] initWithObjects:{@"Greetings", @"Recordings", 0}];
  v3 = [NSURL fileURLWithPathComponents:v2];

  return v3;
}

@end