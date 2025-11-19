@interface UIKeyboardStickerLog
@end

@implementation UIKeyboardStickerLog

void ___UIKeyboardStickerLog_block_invoke()
{
  v0 = os_log_create("com.apple.UIKit", "Sticker");
  v1 = _UIKeyboardStickerLog_log;
  _UIKeyboardStickerLog_log = v0;
}

@end