@interface WLAutomation
- (void)deleteTestAutomationCachesIfNeeded;
- (void)writeCodeForTestAutomationIfNeeded:(id)a3;
@end

@implementation WLAutomation

- (void)writeCodeForTestAutomationIfNeeded:(id)a3
{
  v4 = a3;
  if ([MEMORY[0x277D7B8B0] BOOLForKey:*MEMORY[0x277D7B910]] == 1)
  {
    self->_hasTestAutomationCaches = 1;
    _WLLog();
    v5 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
    v6 = [v5 objectAtIndexedSubscript:{0, self}];
    v7 = [v6 stringByAppendingPathComponent:*MEMORY[0x277D7B8D8]];
    v8 = [v7 stringByAppendingPathComponent:@"code"];
    v9 = [MEMORY[0x277CCAA00] defaultManager];
    v10 = [v9 fileExistsAtPath:v7];

    if ((v10 & 1) != 0 || ([MEMORY[0x277CCAA00] defaultManager], v11 = objc_claimAutoreleasedReturnValue(), v15 = 0, objc_msgSend(v11, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", v7, 0, 0, &v15), v12 = v15, v11, !v12))
    {
      v13 = [MEMORY[0x277CCAA00] defaultManager];
      v14 = [v4 dataUsingEncoding:4];
      [v13 createFileAtPath:v8 contents:v14 attributes:0];

      _WLLog();
    }

    else
    {
      _WLLog();
    }
  }
}

- (void)deleteTestAutomationCachesIfNeeded
{
  if (self->_hasTestAutomationCaches)
  {
    _WLLog();
    v2 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
    v3 = [v2 objectAtIndexedSubscript:{0, self}];
    v4 = [v3 stringByAppendingPathComponent:*MEMORY[0x277D7B8D8]];
    v5 = [MEMORY[0x277CCAA00] defaultManager];
    v6 = [v5 fileExistsAtPath:v4];

    if (v6)
    {
      v7 = [MEMORY[0x277CCAA00] defaultManager];
      v9 = 0;
      [v7 removeItemAtPath:v4 error:&v9];

      _WLLog();
    }
  }
}

@end