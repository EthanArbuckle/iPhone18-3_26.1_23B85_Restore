@interface WFShareSheetState
+ (NSDictionary)shareSheetShortcuts;
+ (id)storageURL;
+ (void)setShareSheetShortcuts:(id)shortcuts;
@end

@implementation WFShareSheetState

+ (void)setShareSheetShortcuts:(id)shortcuts
{
  shortcutsCopy = shortcuts;
  if (shortcutsCopy)
  {
    storageURL = [self storageURL];
    [shortcutsCopy writeToURL:storageURL error:0];
  }

  else
  {
    storageURL = [MEMORY[0x277CCAA00] defaultManager];
    storageURL2 = [self storageURL];
    [storageURL removeItemAtURL:storageURL2 error:0];
  }
}

+ (NSDictionary)shareSheetShortcuts
{
  v2 = MEMORY[0x277CBEAC0];
  storageURL = [self storageURL];
  v4 = [v2 dictionaryWithContentsOfURL:storageURL];

  return v4;
}

+ (id)storageURL
{
  wf_shortcutsDirectoryURL = [MEMORY[0x277CBEBC0] wf_shortcutsDirectoryURL];
  v3 = [wf_shortcutsDirectoryURL URLByAppendingPathComponent:@"ShareSheetState.plist" isDirectory:0];

  return v3;
}

@end