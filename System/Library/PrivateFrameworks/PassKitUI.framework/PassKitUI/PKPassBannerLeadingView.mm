@interface PKPassBannerLeadingView
- (CGSize)sizeThatFits:(CGSize)a3;
- (id)_initWithStyle:(void *)a3 pass:;
- (void)layoutSubviews;
@end

@implementation PKPassBannerLeadingView

- (id)_initWithStyle:(void *)a3 pass:
{
  result = a3;
  v7 = result;
  if (!a1)
  {
LABEL_7:

    return a1;
  }

  if (result)
  {
    v11.receiver = a1;
    v11.super_class = PKPassBannerLeadingView;
    v8 = objc_msgSendSuper2(&v11, sel_initWithFrame_, *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24));
    a1 = v8;
    if (v8)
    {
      v8[51] = a2;
      objc_storeStrong(v8 + 52, a3);
      v9 = [PKPassThumbnailView alloc];
      if (v9)
      {
        v9 = [(PKPassThumbnailView *)&v9->super.super.super.isa initWithPass:0x177 suppressedContent:0 rendererState:0 options:?];
      }

      v10 = a1[53];
      a1[53] = v9;

      [(PKPassThumbnailView *)a1[53] setShadowVisibility:?];
      [a1 addSubview:a1[53]];
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  style = self->_style;
  passView = self->_passView;
  v5 = 15.0;
  if (style != 1)
  {
    v5 = 63.0;
  }

  [(PKPassThumbnailView *)passView sizeThatFits:1.79769313e308, v5];
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = PKPassBannerLeadingView;
  [(PKPassBannerLeadingView *)&v6 layoutSubviews];
  [(PKPassBannerLeadingView *)self bounds];
  passView = self->_passView;
  [(PKPassThumbnailView *)passView sizeThatFits:v4, v5];
  PKSizeAlignedInRect();
  [(PKPassThumbnailView *)passView setFrame:?];
}

@end