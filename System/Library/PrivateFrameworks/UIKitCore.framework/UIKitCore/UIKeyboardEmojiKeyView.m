@interface UIKeyboardEmojiKeyView
- (UIKeyboardEmojiCategoryUpdateDelegate)emojiKeyManager;
@end

@implementation UIKeyboardEmojiKeyView

- (UIKeyboardEmojiCategoryUpdateDelegate)emojiKeyManager
{
  WeakRetained = objc_loadWeakRetained(&self->emojiKeyManager);

  return WeakRetained;
}

@end