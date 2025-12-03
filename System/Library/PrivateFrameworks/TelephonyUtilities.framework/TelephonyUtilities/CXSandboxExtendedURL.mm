@interface CXSandboxExtendedURL
- (BOOL)csd_isSymbolicLink;
@end

@implementation CXSandboxExtendedURL

- (BOOL)csd_isSymbolicLink
{
  v2 = [(CXSandboxExtendedURL *)self URL];
  path = [v2 path];

  if ([path length])
  {
    v4 = +[NSFileManager defaultManager];
    v10 = 0;
    v5 = [v4 attributesOfItemAtPath:path error:&v10];
    v6 = v10;

    if (v5)
    {
      v7 = [v5 objectForKeyedSubscript:NSFileType];
      v8 = [v7 isEqual:NSFileTypeSymbolicLink];
    }

    else
    {
      v5 = sub_100004778();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10047D22C(v6, v5);
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end