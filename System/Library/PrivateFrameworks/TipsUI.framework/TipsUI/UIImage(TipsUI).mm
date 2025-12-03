@interface UIImage(TipsUI)
+ (id)tipsAppHomeScreenIcon;
@end

@implementation UIImage(TipsUI)

+ (id)tipsAppHomeScreenIcon
{
  v0 = MEMORY[0x277D755B8];
  clientBundleIdentifier = [MEMORY[0x277D716E8] clientBundleIdentifier];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v3 = [v0 _applicationIconImageForBundleIdentifier:clientBundleIdentifier format:2 scale:?];

  return v3;
}

@end