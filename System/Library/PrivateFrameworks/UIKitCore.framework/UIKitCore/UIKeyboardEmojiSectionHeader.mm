@interface UIKeyboardEmojiSectionHeader
- (BOOL)useVibrantBlend;
- (UIEdgeInsets)insets;
- (UIKeyboardEmojiSectionHeader)initWithFrame:(CGRect)a3;
- (double)headerFontSize;
- (void)layoutSubviews;
- (void)setEffect:(id)a3;
- (void)setHeaderFontSize:(double)a3;
- (void)setHeaderName:(id)a3;
- (void)setHeaderOpacity:(double)a3;
- (void)setUseVibrantBlend:(BOOL)a3;
@end

@implementation UIKeyboardEmojiSectionHeader

- (UIKeyboardEmojiSectionHeader)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = UIKeyboardEmojiSectionHeader;
  v3 = [(UICollectionReusableView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (void)setHeaderName:(id)a3
{
  v4 = MEMORY[0x1E695DF58];
  v5 = a3;
  v6 = [v4 currentLocale];
  v7 = [v5 uppercaseStringWithLocale:v6];

  [(UILabel *)self->_emojiSectionHeader setText:v7];
}

- (void)setHeaderFontSize:(double)a3
{
  emojiSectionHeader = self->_emojiSectionHeader;
  v4 = [off_1E70ECC18 boldSystemFontOfSize:a3];
  [(UILabel *)emojiSectionHeader setFont:v4];
}

- (double)headerFontSize
{
  v2 = [(UILabel *)self->_emojiSectionHeader font];
  [v2 pointSize];
  v4 = v3;

  return v4;
}

- (void)setHeaderOpacity:(double)a3
{
  [(UIView *)self->_emojiSectionHeader setOpaque:0];
  emojiSectionHeader = self->_emojiSectionHeader;

  [(UIView *)emojiSectionHeader setAlpha:a3];
}

- (void)setUseVibrantBlend:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    v5 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CF8]];
    v6 = [(UIView *)self->_emojiSectionHeader layer];
    [v6 setCompositingFilter:v5];
  }

  else
  {
    v5 = [(UIView *)self->_emojiSectionHeader layer];
    [v5 setCompositingFilter:0];
  }

  v7 = [(UIView *)self layer];
  [v7 setAllowsGroupOpacity:!v3];

  v8 = [(UIView *)self layer];
  [v8 setAllowsGroupBlending:!v3];
}

- (BOOL)useVibrantBlend
{
  v2 = [(UIView *)self->_emojiSectionHeader layer];
  v3 = [v2 compositingFilter];
  v4 = v3 != 0;

  return v4;
}

- (void)setEffect:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (v4 && !self->_backdropView)
  {
    v5 = [UIVisualEffectView alloc];
    [(UIView *)self bounds];
    v6 = [(UIVisualEffectView *)v5 initWithFrame:?];
    backdropView = self->_backdropView;
    self->_backdropView = v6;

    [(UIView *)self insertSubview:self->_backdropView atIndex:0];
    v4 = v8;
  }

  [(UIVisualEffectView *)self->_backdropView setEffect:v4];
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