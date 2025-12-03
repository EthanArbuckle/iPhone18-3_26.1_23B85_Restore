@interface UIKeyboardEmojiSectionHeader
- (BOOL)useVibrantBlend;
- (UIEdgeInsets)insets;
- (UIKeyboardEmojiSectionHeader)initWithFrame:(CGRect)frame;
- (double)headerFontSize;
- (void)layoutSubviews;
- (void)setEffect:(id)effect;
- (void)setHeaderFontSize:(double)size;
- (void)setHeaderName:(id)name;
- (void)setHeaderOpacity:(double)opacity;
- (void)setUseVibrantBlend:(BOOL)blend;
@end

@implementation UIKeyboardEmojiSectionHeader

- (UIKeyboardEmojiSectionHeader)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = UIKeyboardEmojiSectionHeader;
  v3 = [(UICollectionReusableView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [UILabel alloc];
    [(UIView *)v3 bounds];
    v5 = [(UILabel *)v4 initWithFrame:?];
    emojiSectionHeader = v3->_emojiSectionHeader;
    v3->_emojiSectionHeader = v5;

    v7 = +[UIColor clearColor];
    [(UIView *)v3->_emojiSectionHeader setBackgroundColor:v7];

    [(UIView *)v3 addSubview:v3->_emojiSectionHeader];
  }

  return v3;
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = UIKeyboardEmojiSectionHeader;
  [(UIView *)&v16 layoutSubviews];
  backdropView = self->_backdropView;
  if (backdropView)
  {
    [(UIView *)self bounds];
    [(UIView *)backdropView setFrame:?];
  }

  [(UIView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(UIKeyboardEmojiSectionHeader *)self insets];
  [(UILabel *)self->_emojiSectionHeader setFrame:v5 + v15, v7 + v12, v9 - (v15 + v13), v11 - (v12 + v14)];
}

- (void)setHeaderName:(id)name
{
  v4 = MEMORY[0x1E695DF58];
  nameCopy = name;
  currentLocale = [v4 currentLocale];
  v7 = [nameCopy uppercaseStringWithLocale:currentLocale];

  [(UILabel *)self->_emojiSectionHeader setText:v7];
}

- (void)setHeaderFontSize:(double)size
{
  emojiSectionHeader = self->_emojiSectionHeader;
  v4 = [off_1E70ECC18 boldSystemFontOfSize:size];
  [(UILabel *)emojiSectionHeader setFont:v4];
}

- (double)headerFontSize
{
  font = [(UILabel *)self->_emojiSectionHeader font];
  [font pointSize];
  v4 = v3;

  return v4;
}

- (void)setHeaderOpacity:(double)opacity
{
  [(UIView *)self->_emojiSectionHeader setOpaque:0];
  emojiSectionHeader = self->_emojiSectionHeader;

  [(UIView *)emojiSectionHeader setAlpha:opacity];
}

- (void)setUseVibrantBlend:(BOOL)blend
{
  blendCopy = blend;
  if (blend)
  {
    layer2 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CF8]];
    layer = [(UIView *)self->_emojiSectionHeader layer];
    [layer setCompositingFilter:layer2];
  }

  else
  {
    layer2 = [(UIView *)self->_emojiSectionHeader layer];
    [layer2 setCompositingFilter:0];
  }

  layer3 = [(UIView *)self layer];
  [layer3 setAllowsGroupOpacity:!blendCopy];

  layer4 = [(UIView *)self layer];
  [layer4 setAllowsGroupBlending:!blendCopy];
}

- (BOOL)useVibrantBlend
{
  layer = [(UIView *)self->_emojiSectionHeader layer];
  compositingFilter = [layer compositingFilter];
  v4 = compositingFilter != 0;

  return v4;
}

- (void)setEffect:(id)effect
{
  effectCopy = effect;
  v8 = effectCopy;
  if (effectCopy && !self->_backdropView)
  {
    v5 = [UIVisualEffectView alloc];
    [(UIView *)self bounds];
    v6 = [(UIVisualEffectView *)v5 initWithFrame:?];
    backdropView = self->_backdropView;
    self->_backdropView = v6;

    [(UIView *)self insertSubview:self->_backdropView atIndex:0];
    effectCopy = v8;
  }

  [(UIVisualEffectView *)self->_backdropView setEffect:effectCopy];
}

- (UIEdgeInsets)insets
{
  top = self->_insets.top;
  left = self->_insets.left;
  bottom = self->_insets.bottom;
  right = self->_insets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end