@interface SettingsArchiveDirectory
@end

@implementation SettingsArchiveDirectory

void ___SettingsArchiveDirectory_block_invoke()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v0 = PTPrototypeDirectory();
  v1 = [v0 stringByAppendingPathComponent:@"Settings"];
  v2 = _SettingsArchiveDirectory___path;
  _SettingsArchiveDirectory___path = v1;

  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = _SettingsArchiveDirectory___path;
  v6 = *MEMORY[0x277CCA160];
  v7[0] = @"mobile";
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v3 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:v5 error:0];

  PTDisableFileProtection(_SettingsArchiveDirectory___path);
}

@end