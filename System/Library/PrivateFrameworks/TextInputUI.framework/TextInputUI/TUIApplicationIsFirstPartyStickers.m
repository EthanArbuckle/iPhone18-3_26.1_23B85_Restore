@interface TUIApplicationIsFirstPartyStickers
@end

@implementation TUIApplicationIsFirstPartyStickers

void ___TUIApplicationIsFirstPartyStickers_block_invoke()
{
  v1 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v0 = [v1 bundleIdentifier];
  _TUIApplicationIsFirstPartyStickers_isFirstPartyStickers = [v0 isEqualToString:@"com.apple.Stickers.UserGenerated.MessagesExtension"];
}

@end