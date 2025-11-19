@interface SBXXAddWebClipToHomeScreen
@end

@implementation SBXXAddWebClipToHomeScreen

void ___SBXXAddWebClipToHomeScreen_block_invoke(uint64_t a1)
{
  v27 = serverIconController();
  v2 = [v27 iconManager];
  v3 = [v27 iconModel];
  [v3 clearDesiredIconState];
  if (*(a1 + 32))
  {
    v4 = [MEMORY[0x277D75D70] webClipWithIdentifier:?];
    v5 = [v4 initialLaunchImage];
    if (v5)
    {
      v24 = [MEMORY[0x277CCAA00] defaultManager];
      v6 = [MEMORY[0x277D759A0] mainScreen];
      [v6 scale];
      v8 = SBScaleSuffixForScale(v7);

      v26 = v8;
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Main/Default%@.png", v8];
      v10 = +[SBApplicationController sharedInstance];
      v11 = [v10 applicationWithBundleIdentifier:@"com.apple.webapp"];

      v12 = [v11 _snapshotManifest];
      v13 = [v12 containerPath];

      v14 = [v4 identifier];
      v15 = [v13 stringByAppendingPathComponent:v14];
      v25 = v9;
      v16 = [v15 stringByAppendingPathComponent:v9];
      v17 = [v16 stringByStandardizingPath];

      if ([v17 hasPrefix:v13])
      {
        v18 = [v17 stringByDeletingLastPathComponent];
        if (([v24 fileExistsAtPath:v18 isDirectory:0] & 1) == 0)
        {
          [v24 createDirectoryAtPath:v18 withIntermediateDirectories:1 attributes:0 error:0];
        }

        v19 = UIImagePNGRepresentation(v5);
        [v19 writeToFile:v17 options:0x10000000 error:0];
      }
    }

    v20 = [MEMORY[0x277D65FC8] sanitizeWebClip:v4];
    v21 = [v3 addBookmarkIconForWebClip:v4];
    if (v21)
    {
      if (SBWorkspaceSpringBoardIsActive())
      {
        v22 = 12;
      }

      else
      {
        v22 = 14;
      }

      [v2 addNewIconToDesignatedLocation:v21 options:v22];
    }

    [SBApp noteInstalledWebClipsDidChange];
    v23 = [MEMORY[0x277CEB358] sharedInstance];
    [v23 notifyBookmarksDidChange];
  }
}

@end