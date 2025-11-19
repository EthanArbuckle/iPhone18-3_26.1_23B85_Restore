@interface UIKeyboardEmoji
+ (BOOL)shouldHighlightEmoji:(id)a3;
+ (id)emojiWithString:(id)a3 withVariantMask:(unint64_t)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)supportsSkinToneVariants;
- (UIKeyboardEmoji)initWithString:(id)a3 withVariantMask:(unint64_t)a4;
@end

@implementation UIKeyboardEmoji

- (UIKeyboardEmoji)initWithString:(id)a3 withVariantMask:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = UIKeyboardEmoji;
  v8 = [(UIKeyboardEmoji *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_emojiString, a3);
    v9->_variantMask = a4;
  }

  return v9;
}

+ (id)emojiWithString:(id)a3 withVariantMask:(unint64_t)a4
{
  v5 = a3;
  v6 = [[UIKeyboardEmoji alloc] initWithString:v5 withVariantMask:a4];

  return v6;
}

+ (BOOL)shouldHighlightEmoji:(id)a3
{
  v3 = a3;
  v4 = [getEMFEmojiTokenClass() emojiTokenWithString:v3 localeData:0];

  LOBYTE(v3) = [v4 _shouldHighlightEmoji];
  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = [a3 key];
  v5 = [(UIKeyboardEmoji *)self key];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

- (BOOL)supportsSkinToneVariants
{
  v2 = [getEMFEmojiTokenClass() emojiTokenWithString:self->_emojiString localeData:0];
  v3 = [v2 supportsSkinToneVariants];

  return v3;
}

@end