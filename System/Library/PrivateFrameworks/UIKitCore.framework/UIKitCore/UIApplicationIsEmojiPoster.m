@interface UIApplicationIsEmojiPoster
@end

@implementation UIApplicationIsEmojiPoster

void ___UIApplicationIsEmojiPoster_block_invoke()
{
  v0 = _UIMainBundleIdentifier();
  byte_1EA992DB5 = [v0 isEqualToString:@"com.apple.EmojiPoster.EmojiPosterExtension"];
}

@end