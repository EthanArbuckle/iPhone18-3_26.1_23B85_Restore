@interface WFShareSheetState
+ (NSDictionary)shareSheetShortcuts;
+ (id)storageURL;
+ (void)setShareSheetShortcuts:(id)a3;
@end

@implementation WFShareSheetState

+ (void)setShareSheetShortcuts:(id)a3
{
  v6 = a3;
  if (v6)
  {
    v4 = [a1 storageURL];
    [v6 writeToURL:v4 error:0];
  }

  else
  {
    v4 = [MEMORY[0x277CCAA00] defaultManager];
    v5 = [a1 storageURL];
    [v4 removeItemAtURL:v5 error:0];
  }
}

+ (NSDictionary)shareSheetShortcuts
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [a1 storageURL];
  v4 = [v2 dictionaryWithContentsOfURL:v3];

  return v4;
}

+ (id)storageURL
{
  v2 = [MEMORY[0x277CBEBC0] wf_shortcutsDirectoryURL];
  v3 = [v2 URLByAppendingPathComponent:@"ShareSheetState.plist" isDirectory:0];

  return v3;
}

@end