@interface ProxyDefinitionDirectory
@end

@implementation ProxyDefinitionDirectory

void ___ProxyDefinitionDirectory_block_invoke()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v0 = PTPrototypeDirectory();
  v1 = [v0 stringByAppendingPathComponent:@"ProxyDefinitions"];
  v2 = _ProxyDefinitionDirectory___path;
  _ProxyDefinitionDirectory___path = v1;

  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = _ProxyDefinitionDirectory___path;
  v6 = *MEMORY[0x277CCA160];
  v7[0] = @"mobile";
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v3 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:v5 error:0];

  PTDisableFileProtection(_ProxyDefinitionDirectory___path);
}

@end