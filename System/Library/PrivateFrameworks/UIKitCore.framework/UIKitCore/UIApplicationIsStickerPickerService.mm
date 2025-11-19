@interface UIApplicationIsStickerPickerService
@end

@implementation UIApplicationIsStickerPickerService

void ___UIApplicationIsStickerPickerService_block_invoke()
{
  v0 = _UIMainBundleIdentifier();
  byte_1EA992DB6 = [v0 isEqualToString:@"com.apple.StickerKit.StickerPickerService"];
}

@end