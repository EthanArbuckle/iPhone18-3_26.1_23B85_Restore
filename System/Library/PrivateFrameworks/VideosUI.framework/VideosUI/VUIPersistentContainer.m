@interface VUIPersistentContainer
+ (id)defaultDirectoryURL;
@end

@implementation VUIPersistentContainer

+ (id)defaultDirectoryURL
{
  v12 = *MEMORY[0x1E69E9840];
  if (sDeleteAllEntriesOnInitialization != 1)
  {
    goto LABEL_5;
  }

  v3 = [MEMORY[0x1E6963620] bundleRecordWithBundleIdentifier:@"com.apple.tv" allowPlaceholder:0 error:0];
  v4 = [v3 dataContainerURL];
  v5 = [v4 URLByAppendingPathComponent:@"Library/Application Support" isDirectory:1];

  v6 = sLogObject_2;
  if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v5;
    _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "Using overridden defaultDirectoryURL for download database: %@", buf, 0xCu);
  }

  if (!v5)
  {
LABEL_5:
    v9.receiver = a1;
    v9.super_class = &OBJC_METACLASS___VUIPersistentContainer;
    v5 = objc_msgSendSuper2(&v9, sel_defaultDirectoryURL);
    v7 = sLogObject_2;
    if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v5;
      _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "Using default implementation of defaultDirectoryURL for download database: %@", buf, 0xCu);
    }
  }

  return v5;
}

@end