@interface WLFileProvider
- (id)fetchRootPath;
@end

@implementation WLFileProvider

- (id)fetchRootPath
{
  rootPath = self->_rootPath;
  if (rootPath)
  {
    path = rootPath;
  }

  else
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v6 = [defaultManager containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.FileProvider.LocalStorage"];

    if (v6)
    {
      v7 = [v6 URLByAppendingPathComponent:@"File Provider Storage"];
    }

    else
    {
      _WLLog();
      v7 = 0;
    }

    path = [v7 path];
    if (path)
    {
      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      v9 = [defaultManager2 fileExistsAtPath:path];

      if ((v9 & 1) == 0)
      {
        _WLLog();
        defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
        v14 = 0;
        [defaultManager3 createDirectoryAtPath:path withIntermediateDirectories:0 attributes:0 error:&v14];
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

      [(WLFileProvider *)self setRootPath:path, v13];
    }

    else
    {
      _WLLog();
    }
  }

  return path;
}

@end