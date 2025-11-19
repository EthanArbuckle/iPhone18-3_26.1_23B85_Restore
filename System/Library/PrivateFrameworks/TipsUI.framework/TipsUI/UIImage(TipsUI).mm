@interface UIImage(TipsUI)
+ (id)tipsAppHomeScreenIcon;
@end

@implementation UIImage(TipsUI)

+ (id)tipsAppHomeScreenIcon
{
  v0 = MEMORY[0x277D755B8];
  v1 = [MEMORY[0x277D716E8] clientBundleIdentifier];
  v2 = [MEMORY[0x277D759A0] mainScreen];
  [v2 scale];
  v3 = [v0 _applicationIconImageForBundleIdentifier:v1 format:2 scale:?];

  return v3;
}

@end