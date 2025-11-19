@interface UIFont
@end

@implementation UIFont

uint64_t __72__UIFont_UserNotificationsUIKitAdditions__unui_excessiveLineHeightChars__block_invoke()
{
  v0 = CTFontCopySystemUIFontExcessiveLineHeightCharacterSet();
  unui_excessiveLineHeightChars___excessiveLineHeightChars = v0;

  return MEMORY[0x2821F96F8](v0);
}

@end