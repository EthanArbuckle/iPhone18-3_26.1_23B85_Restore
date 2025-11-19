@interface UIUDiagnosticExtension
- (id)findRelevantFiles;
@end

@implementation UIUDiagnosticExtension

- (id)findRelevantFiles
{
  v2 = +[NSMutableArray array];
  v3 = +[NSFileManager defaultManager];
  v4 = [v3 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.uiunderstanding"];
  v5 = [v4 URLByAppendingPathComponent:@"UIDeduplicatorDebug" isDirectory:1];
  v20 = 0;
  v6 = [v3 contentsOfDirectoryAtURL:v5 includingPropertiesForKeys:0 options:4 error:&v20];
  v7 = v20;
  if (v7)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100000CB4(v7);
    }
  }

  else
  {
    v15 = v4;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [[DEAttachmentItem alloc] initWithPathURL:*(*(&v16 + 1) + 8 * i)];
          [v2 addObject:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v10);
    }

    v4 = v15;
  }

  return v2;
}

@end