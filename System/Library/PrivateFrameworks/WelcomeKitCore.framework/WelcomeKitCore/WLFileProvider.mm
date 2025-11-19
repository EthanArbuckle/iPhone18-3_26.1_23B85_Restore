@interface WLFileProvider
- (id)fetchRootPath;
@end

@implementation WLFileProvider

- (id)fetchRootPath
{
  rootPath = self->_rootPath;
  if (rootPath)
  {
    v3 = rootPath;
  }

  else
  {
    v5 = [MEMORY[0x277CCAA00] defaultManager];
    v6 = [v5 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.FileProvider.LocalStorage"];

    if (v6)
    {
      v7 = [v6 URLByAppendingPathComponent:@"File Provider Storage"];
    }

    else
    {
      _WLLog();
      v7 = 0;
    }

    v3 = [v7 path];
    if (v3)
    {
      v8 = [MEMORY[0x277CCAA00] defaultManager];
      v9 = [v8 fileExistsAtPath:v3];

      if ((v9 & 1) == 0)
      {
        _WLLog();
        v10 = [MEMORY[0x277CCAA00] defaultManager];
        v14 = 0;
        [v10 createDirectoryAtPath:v3 withIntermediateDirectories:0 attributes:0 error:&v14];
        v11 = v14;

        if (v11)
        {
          v13 = [v11 description];
          _WLLog();
        }

        else
        {
          _WLLog();
        }
      }

      [(WLFileProvider *)self setRootPath:v3, v13];
    }

    else
    {
      _WLLog();
    }
  }

  return v3;
}

@end