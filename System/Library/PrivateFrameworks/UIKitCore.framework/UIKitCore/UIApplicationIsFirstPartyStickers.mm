@interface UIApplicationIsFirstPartyStickers
@end

@implementation UIApplicationIsFirstPartyStickers

void ___UIApplicationIsFirstPartyStickers_block_invoke()
{
  v0 = _UIMainBundleIdentifier();
  byte_1EA992DB4 = [v0 isEqualToString:@"com.apple.Stickers.UserGenerated.MessagesExtension"];
}

@end