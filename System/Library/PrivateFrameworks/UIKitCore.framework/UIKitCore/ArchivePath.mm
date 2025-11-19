@interface ArchivePath
@end

@implementation ArchivePath

void ___ArchivePath_block_invoke()
{
  v0 = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, 1uLL, 1);
  v1 = [v0 objectAtIndex:0];
  v2 = _UIMainBundleIdentifier();
  if (![(__CFString *)v2 length])
  {

    v2 = @"com.apple";
  }

  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v2, @"settings"];
  v4 = [v1 stringByAppendingPathComponent:v3];
  v5 = _MergedGlobals_1360;
  _MergedGlobals_1360 = v4;

  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v14 = 0;
  v7 = [v6 createDirectoryAtPath:_MergedGlobals_1360 withIntermediateDirectories:1 attributes:0 error:&v14];
  v8 = v14;

  if ((v7 & 1) == 0)
  {
    v9 = [MEMORY[0x1E696AC08] defaultManager];
    v10 = [v9 fileExistsAtPath:_MergedGlobals_1360];

    if ((v10 & 1) == 0)
    {
      v11 = _MergedGlobals_1360;
      v12 = [v8 localizedDescription];
      NSLog(&cfstr_ErrorCreatingS_0.isa, v11, v12);

      v13 = _MergedGlobals_1360;
      _MergedGlobals_1360 = 0;
    }
  }
}

@end