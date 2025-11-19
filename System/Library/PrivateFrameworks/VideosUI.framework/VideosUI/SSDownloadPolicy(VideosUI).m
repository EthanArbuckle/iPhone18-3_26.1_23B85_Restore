@interface SSDownloadPolicy(VideosUI)
+ (id)vui_policyAllowingCellularDownloads:()VideosUI;
@end

@implementation SSDownloadPolicy(VideosUI)

+ (id)vui_policyAllowingCellularDownloads:()VideosUI
{
  v4 = objc_alloc_init(MEMORY[0x1E69D48F8]);
  [v4 setCellularDataStates:0];
  if ((a3 & 1) == 0)
  {
    [v4 addNetworkType:1000];
  }

  v5 = objc_alloc(MEMORY[0x1E69D48F0]);
  v6 = [v5 initWithDownloadKind:*MEMORY[0x1E69D4AE0] URLBagType:0];
  [v6 setPolicyRule:v4];

  return v6;
}

@end