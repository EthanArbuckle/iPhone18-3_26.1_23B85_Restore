@interface UIKeyboardEmoji
+ (BOOL)shouldHighlightEmoji:(id)emoji;
+ (id)emojiWithString:(id)string withVariantMask:(unint64_t)mask;
- (BOOL)isEqual:(id)equal;
- (BOOL)supportsSkinToneVariants;
- (UIKeyboardEmoji)initWithString:(id)string withVariantMask:(unint64_t)mask;
@end

@implementation UIKeyboardEmoji

- (UIKeyboardEmoji)initWithString:(id)string withVariantMask:(unint64_t)mask
{
  stringCopy = string;
  v11.receiver = self;
  v11.super_class = UIKeyboardEmoji;
  v8 = [(UIKeyboardEmoji *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_emojiString, string);
    v9->_variantMask = mask;
  }

  return v9;
}

+ (id)emojiWithString:(id)string withVariantMask:(unint64_t)mask
{
  stringCopy = string;
  v6 = [[UIKeyboardEmoji alloc] initWithString:stringCopy withVariantMask:mask];

  return v6;
}

+ (BOOL)shouldHighlightEmoji:(id)emoji
{
  emojiCopy = emoji;
  v4 = [getEMFEmojiTokenClass() emojiTokenWithString:emojiCopy localeData:0];

  LOBYTE(emojiCopy) = [v4 _shouldHighlightEmoji];
  return emojiCopy;
}

- (BOOL)isEqual:(id)equal
{
  v4 = [equal key];
  v5 = [(UIKeyboardEmoji *)self key];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

- (BOOL)supportsSkinToneVariants
{
  v2 = [getEMFEmojiTokenClass() emojiTokenWithString:self->_emojiString localeData:0];
  supportsSkinToneVariants = [v2 supportsSkinToneVariants];

  return supportsSkinToneVariants;
}

@end