@interface PKCheckmarkView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKCheckmarkView)init;
- (void)_updateIconForCurrentTraitCollection;
- (void)layoutSubviews;
- (void)showCheckmark:(BOOL)a3 animated:(BOOL)a4;
- (void)tintColorDidChange;
@end

@implementation PKCheckmarkView

- (PKCheckmarkView)init
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = PKCheckmarkView;
  v2 = [(PKCheckmarkView *)&v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    imageView = v2->_imageView;
    v2->_imageView = v3;

    [(UIImageView *)v2->_imageView setContentMode:1];
    [(PKCheckmarkView *)v2 addSubview:v2->_imageView];
    [(PKCheckmarkView *)v2 _updateIconForCurrentTraitCollection];
    v9[0] = objc_opt_class();
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    v6 = [(PKCheckmarkView *)v2 registerForTraitChanges:v5 withHandler:&__block_literal_global_34];
  }

  return v2;
}

- (void)_updateIconForCurrentTraitCollection
{
  v6 = PKFontForDefaultDesign(*MEMORY[0x1E69DDDC8], *MEMORY[0x1E69DDC38], 2, 0);
  v3 = [MEMORY[0x1E69DCAD8] configurationWithFont:?];
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark" withConfiguration:v3];
  iconImage = self->_iconImage;
  self->_iconImage = v4;

  [(UIImageView *)self->_imageView setPreferredSymbolConfiguration:v3];
  if (self->_isShowingCheckmark)
  {
    [(UIImageView *)self->_imageView setImage:self->_iconImage];
  }

  [(PKCheckmarkView *)self setNeedsLayout];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(UIImage *)self->_iconImage size:a3.width];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [(UIImage *)self->_iconImage size];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)layoutSubviews
{
  [(PKCheckmarkView *)self bounds];
  [(UIImage *)self->_iconImage size];
  [(PKCheckmarkView *)self _shouldReverseLayoutDirection];
  PKContentAlignmentMake();
  imageView = self->_imageView;
  PKSizeAlignedInRect();

  [(UIImageView *)imageView setFrame:?];
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = PKCheckmarkView;
  [(PKCheckmarkView *)&v3 tintColorDidChange];
  [(PKCheckmarkView *)self _updateIconForCurrentTraitCollection];
}

- (void)showCheckmark:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_isShowingCheckmark != !a3)
  {
    return;
  }

  self->_isShowingCheckmark = a3;
  if (!a3)
  {
    v8 = 0;
LABEL_8:
    v15 = v8;
    [(UIImageView *)self->_imageView setImage:v8];
    goto LABEL_9;
  }

  v6 = a4;
  v7 = self->_iconImage;
  v8 = v7;
  if (!v6 || !v7)
  {
    goto LABEL_8;
  }

  v15 = v7;
  [(UIImageView *)self->_imageView setImage:v7];
  imageView = self->_imageView;
  v10 = [MEMORY[0x1E6982260] effect];
  v11 = [MEMORY[0x1E6982278] options];
  [(UIImageView *)imageView addSymbolEffect:v10 options:v11 animated:0];

  v12 = self->_imageView;
  v13 = [MEMORY[0x1E6982268] effect];
  v14 = [MEMORY[0x1E6982278] options];
  [(UIImageView *)v12 addSymbolEffect:v13 options:v14 animated:1];

LABEL_9:
}

@end