@interface TUIApplicationIsStickerPickerService
@end

@implementation TUIApplicationIsStickerPickerService

void ___TUIApplicationIsStickerPickerService_block_invoke()
{
  v1 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v0 = [v1 bundleIdentifier];
  _TUIApplicationIsStickerPickerService_isStickerPickerService = [v0 isEqualToString:@"com.apple.StickerKit.StickerPickerService"];
}

@end