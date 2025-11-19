@interface PKMultiSelectIndicatorView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKMultiSelectIndicatorView)init;
- (void)layoutSubviews;
- (void)setSelected:(BOOL)a3;
@end

@implementation PKMultiSelectIndicatorView

- (PKMultiSelectIndicatorView)init
{
  v6.receiver = self;
  v6.super_class = PKMultiSelectIndicatorView;
  v2 = [(PKMultiSelectIndicatorView *)&v6 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    imageView = v2->_imageView;
    v2->_imageView = v3;

    [(UIImageView *)v2->_imageView setContentMode:1];
    [(PKMultiSelectIndicatorView *)v2 addSubview:v2->_imageView];
  }

  return v2;
}

- (void)setSelected:(BOOL)a3
{
  self->_selected = a3;
  if (a3)
  {
    v4 = @"checkmark.circle.fill";
  }

  else
  {
    v4 = @"circle";
  }

  v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:v4];
  v5 = [(UIImageView *)self->_imageView image];

  if (v5 && _UISolariumFeatureFlagEnabled())
  {
    v6 = MEMORY[0x1E6982288];
    v7 = [MEMORY[0x1E6982288] transition];
    v8 = [v6 magicTransitionWithFallback:v7];

    [(UIImageView *)self->_imageView setSymbolImage:v9 withContentTransition:v8];
  }

  else
  {
    [(UIImageView *)self->_imageView setImage:v9];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = 22.0;
  v4 = 22.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)intrinsicContentSize
{
  v2 = 22.0;
  v3 = 22.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)layoutSubviews
{
  [(PKMultiSelectIndicatorView *)self bounds];
  [(PKMultiSelectIndicatorView *)self _shouldReverseLayoutDirection];
  PKContentAlignmentMake();
  imageView = self->_imageView;
  PKSizeAlignedInRect();

  [(UIImageView *)imageView setFrame:?];
}

@end