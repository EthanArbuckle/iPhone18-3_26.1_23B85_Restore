@interface PCTemporaryFileManager
+ (id)createTemporaryDirectoryWithFilename:(id)filename;
+ (id)createTemporaryDirectoryWithFilename:(id)filename inDirectory:(id)directory;
+ (id)createTemporaryFileWithFilename:(id)filename;
+ (id)createTemporaryFileWithFilename:(id)filename inDirectory:(id)directory;
+ (id)createUniqueDirectoryInDirectory:(id)directory;
+ (id)sharedAppGroupDirectoryURL;
+ (id)sharedTemporaryDirectoryURL;
+ (id)temporaryDirectoryURL;
+ (id)topLevelTemporaryDirectoryURL;
+ (void)clearTemporaryFiles;
+ (void)configureBackupFlagAtURL:(id)l;
+ (void)configureBackupFlagIfNecessary;
+ (void)configureFileProtectionAtPath:(id)path;
+ (void)configureTemporaryDirectoryProtectionIfNecessary;
+ (void)createSharedDirectoryIfNecessary;
+ (void)setUpDirectories;
@end

@implementation PCTemporaryFileManager

+ (id)sharedAppGroupDirectoryURL
{
  v3 = +[NSFileManager defaultManager];
  appGroupIdentifier = [self appGroupIdentifier];
  v5 = [v3 containerURLForSecurityApplicationGroupIdentifier:appGroupIdentifier];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    appGroupIdentifier2 = [self appGroupIdentifier];
    v9 = 0;
    v5 = [self pc_uncachedContainerURLForSecurityApplicationGroupIdentifier:appGroupIdentifier2 error:&v9];
    v6 = v9;

    if (!v5)
    {
      NSLog(@"sharedAppGroupDirectoryURL should not be nil: %@", v6);
    }
  }

  return v5;
}

+ (id)topLevelTemporaryDirectoryURL
{
  sharedAppGroupDirectoryURL = [self sharedAppGroupDirectoryURL];
  v3 = [sharedAppGroupDirectoryURL URLByAppendingPathComponent:@"Temporary" isDirectory:1];

  return v3;
}

+ (id)temporaryDirectoryURL
{
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100001968;
  v14[3] = &unk_100010760;
  v14[4] = self;
  if (qword_100014C28 != -1)
  {
    dispatch_once(&qword_100014C28, v14);
  }

  if ((byte_100014C30 & 1) == 0)
  {
    v3 = +[NSFileManager defaultManager];
    path = [qword_100014C20 path];
    v5 = [v3 fileExistsAtPath:path isDirectory:0];

    if (v5)
    {
      byte_100014C30 = 1;
    }

    else
    {
      v6 = +[NSFileManager defaultManager];
      v13 = 0;
      v7 = [v6 createDirectoryAtURL:qword_100014C20 withIntermediateDirectories:1 attributes:0 error:&v13];
      v8 = v13;

      if (v7)
      {
        byte_100014C30 = 1;
        v9 = dispatch_get_global_queue(0, 0);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100001A24;
        block[3] = &unk_100010760;
        block[4] = self;
        dispatch_async(v9, block);
      }

      else
      {
        NSLog(@"Failed to create process temporary directory with error: %@", v8);
      }
    }
  }

  v10 = qword_100014C20;

  return v10;
}

+ (id)sharedTemporaryDirectoryURL
{
  sharedAppGroupDirectoryURL = [self sharedAppGroupDirectoryURL];
  v3 = [sharedAppGroupDirectoryURL URLByAppendingPathComponent:@"Temporary" isDirectory:1];
  v4 = +[NSBundle mainBundle];
  bundleIdentifier = [v4 bundleIdentifier];
  v6 = [v3 URLByAppendingPathComponent:bundleIdentifier isDirectory:1];

  if (!v6)
  {
    NSLog(@"sharedTemporaryDirectoryURL should not be nil");
  }

  return v6;
}

+ (void)createSharedDirectoryIfNecessary
{
  v4 = +[NSFileManager defaultManager];
  sharedTemporaryDirectoryURL = [self sharedTemporaryDirectoryURL];
  [v4 createDirectoryAtURL:sharedTemporaryDirectoryURL withIntermediateDirectories:1 attributes:0 error:0];
}

+ (void)configureTemporaryDirectoryProtectionIfNecessary
{
  temporaryDirectoryURL = [self temporaryDirectoryURL];
  path = [temporaryDirectoryURL path];
  [self configureFileProtectionAtPath:path];

  sharedTemporaryDirectoryURL = [self sharedTemporaryDirectoryURL];
  path2 = [sharedTemporaryDirectoryURL path];
  [self configureFileProtectionAtPath:path2];
}

+ (void)configureBackupFlagIfNecessary
{
  sharedTemporaryDirectoryURL = [self sharedTemporaryDirectoryURL];
  [self configureBackupFlagAtURL:sharedTemporaryDirectoryURL];
}

+ (void)configureFileProtectionAtPath:(id)path
{
  pathCopy = path;
  v4 = +[NSFileManager defaultManager];
  v12 = 0;
  v5 = [v4 attributesOfItemAtPath:pathCopy error:&v12];
  v6 = v12;
  if (v6)
  {
    v7 = v6;
    NSLog(@"Failed to read attributes of path %@: %@", pathCopy, v6);
  }

  else
  {
    v8 = [v5 objectForKey:NSFileProtectionKey];
    v9 = v8;
    if (v8 && ([v8 isEqualToString:NSFileProtectionCompleteUntilFirstUserAuthentication] & 1) == 0)
    {
      v13 = NSFileProtectionKey;
      v14 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v10 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
      v11 = 0;
      [v4 setAttributes:v10 ofItemAtPath:pathCopy error:&v11];
      v7 = v11;

      if (v7)
      {
        NSLog(@"Failed to set file protection attributes: %@", v7);
      }
    }

    else
    {
      v7 = 0;
    }
  }
}

+ (void)configureBackupFlagAtURL:(id)l
{
  lCopy = l;
  v12 = 0;
  v11 = 0;
  v4 = [lCopy getResourceValue:&v12 forKey:NSURLIsExcludedFromBackupKey error:&v11];
  v5 = v12;
  v6 = v11;
  v7 = v6;
  if (v4)
  {
    if (([v5 BOOLValue] & 1) == 0)
    {
      v10 = v7;
      v8 = [lCopy setResourceValue:&__kCFBooleanTrue forKey:NSURLIsExcludedFromBackupKey error:&v10];
      v9 = v10;

      if (v8)
      {
        NSLog(@"Set backup flag at %@", lCopy);
      }

      else
      {
        NSLog(@"Error setting backup flag at %@: %@", lCopy, v9);
      }

      v7 = v9;
    }
  }

  else
  {
    NSLog(@"Error checking backup flag at %@: %@", lCopy, v6);
  }
}

+ (void)setUpDirectories
{
  [self createSharedDirectoryIfNecessary];
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001FCC;
  block[3] = &unk_100010760;
  block[4] = self;
  dispatch_async(v3, block);
}

+ (void)clearTemporaryFiles
{
  v3 = +[NSFileManager defaultManager];
  v4 = objc_opt_new();
  temporaryDirectoryURL = [self temporaryDirectoryURL];
  v6 = [v3 contentsOfDirectoryAtURL:temporaryDirectoryURL includingPropertiesForKeys:0 options:0 error:0];
  [v4 addObjectsFromArray:v6];

  sharedTemporaryDirectoryURL = [self sharedTemporaryDirectoryURL];
  v8 = [v3 contentsOfDirectoryAtURL:sharedTemporaryDirectoryURL includingPropertiesForKeys:0 options:0 error:0];
  [v4 addObjectsFromArray:v8];

  v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v10 = dispatch_queue_attr_make_with_qos_class(v9, QOS_CLASS_BACKGROUND, 0);

  v11 = dispatch_queue_create("WFInitializeProcessWithDatabase temporary file clearing", v10);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000021B4;
  v14[3] = &unk_100010788;
  v15 = v4;
  v16 = v3;
  v12 = v3;
  v13 = v4;
  dispatch_async(v11, v14);
}

+ (id)createUniqueDirectoryInDirectory:(id)directory
{
  directoryCopy = directory;
  v4 = +[NSUUID UUID];
  uUIDString = [v4 UUIDString];

  v6 = [directoryCopy URLByAppendingPathComponent:uUIDString isDirectory:1];

  v7 = +[NSFileManager defaultManager];
  v12 = 0;
  v8 = [v7 createDirectoryAtURL:v6 withIntermediateDirectories:0 attributes:0 error:&v12];
  v9 = v12;

  if (v8)
  {
    v10 = v6;
  }

  else
  {
    NSLog(@"Failed to create unique directory (%@): %@", v6, v9);
    v10 = 0;
  }

  return v10;
}

+ (id)createTemporaryDirectoryWithFilename:(id)filename inDirectory:(id)directory
{
  filenameCopy = filename;
  directoryCopy = directory;
  v8 = [directoryCopy URLByAppendingPathComponent:filenameCopy isDirectory:1];
  if (!v8)
  {
    v11 = 0;
    goto LABEL_7;
  }

  v9 = +[NSFileManager defaultManager];
  v17 = 0;
  v10 = [v9 createDirectoryAtURL:v8 withIntermediateDirectories:0 attributes:0 error:&v17];
  v11 = v17;

  if (v10)
  {
LABEL_7:
    v15 = v8;
    goto LABEL_10;
  }

  domain = [v11 domain];
  if ([domain isEqualToString:NSCocoaErrorDomain])
  {
    code = [v11 code];

    if (code == 516)
    {
      v14 = [self createUniqueDirectoryInDirectory:directoryCopy];
      v15 = [self createTemporaryDirectoryWithFilename:filenameCopy inDirectory:v14];

      goto LABEL_10;
    }
  }

  else
  {
  }

  v15 = 0;
LABEL_10:

  return v15;
}

+ (id)createTemporaryDirectoryWithFilename:(id)filename
{
  filenameCopy = filename;
  temporaryDirectoryURL = [self temporaryDirectoryURL];
  v6 = [self createTemporaryDirectoryWithFilename:filenameCopy inDirectory:temporaryDirectoryURL];

  return v6;
}

+ (id)createTemporaryFileWithFilename:(id)filename inDirectory:(id)directory
{
  filenameCopy = filename;
  directoryCopy = directory;
  v8 = [directoryCopy URLByAppendingPathComponent:filenameCopy isDirectory:0];
  v9 = v8;
  if (v8)
  {
    v10 = open([v8 fileSystemRepresentation], 2562, 420);
    if (v10 != -1)
    {
      close(v10);
      v11 = v9;
      goto LABEL_8;
    }

    if (*__error() == 17)
    {
      v12 = [self createUniqueDirectoryInDirectory:directoryCopy];
      v11 = [self createTemporaryFileWithFilename:filenameCopy inDirectory:v12];

      goto LABEL_8;
    }

    v13 = __error();
    NSLog(@"Failed to create temporary file, errno=%d", *v13);
  }

  v11 = 0;
LABEL_8:

  return v11;
}

+ (id)createTemporaryFileWithFilename:(id)filename
{
  filenameCopy = filename;
  temporaryDirectoryURL = [self temporaryDirectoryURL];
  v6 = [self createTemporaryFileWithFilename:filenameCopy inDirectory:temporaryDirectoryURL];

  return v6;
}

@end