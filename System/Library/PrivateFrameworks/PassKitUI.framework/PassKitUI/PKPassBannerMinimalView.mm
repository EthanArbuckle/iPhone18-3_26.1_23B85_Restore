@interface PKPassBannerMinimalView
- (CGSize)_layoutWithBounds:(CGRect)bounds commit:(BOOL)commit;
- (CGSize)sizeThatFits:(CGSize)fits;
- (id)_initWithStyle:(int64_t)style leadingView:(id)view trailingView:(id)trailingView;
- (void)_setInteritemPadding:(double)padding;
- (void)layoutSubviews;
@end

@implementation PKPassBannerMinimalView

- (id)_initWithStyle:(int64_t)style leadingView:(id)view trailingView:(id)trailingView
{
  viewCopy = view;
  result = trailingView;
  if (viewCopy && (v10 = result) != 0)
  {
    v17.receiver = self;
    v17.super_class = PKPassBannerMinimalView;
    v11 = [(PKPassBannerMinimalView *)&v17 init];
    v12 = v11;
    if (v11)
    {
      v11->_style = style;
      v13 = [[PKPassBannerLeadingView alloc] _initWithStyle:viewCopy[52] pass:?];
      leadingView = v12->_leadingView;
      v12->_leadingView = v13;

      v15 = [[PKPassBannerTrailingView alloc] _initWithStyle:*(v10 + 52) configuration:?];
      trailingView = v12->_trailingView;
      v12->_trailingView = v15;

      [(PKPassBannerMinimalView *)v12 addSubview:v12->_leadingView];
      [(PKPassBannerMinimalView *)v12 addSubview:v12->_trailingView];
    }

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(PKPassBannerMinimalView *)self _layoutWithBounds:0 commit:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKPassBannerMinimalView;
  [(PKPassBannerMinimalView *)&v3 layoutSubviews];
  [(PKPassBannerMinimalView *)self bounds];
  [(PKPassBannerMinimalView *)self _layoutWithBounds:1 commit:?];
}

- (CGSize)_layoutWithBounds:(CGRect)bounds commit:(BOOL)commit
{
  commitCopy = commit;
  v6 = *MEMORY[0x1E695F060];
  v7 = *(MEMORY[0x1E695F060] + 8);
  [(PKPassBannerLeadingView *)self->_leadingView sizeThatFits:*MEMORY[0x1E695F060], v7];
  v9 = v8;
  v11 = v10;
  [(PKPassBannerTrailingView *)self->_trailingView sizeThatFits:v6, v7];
  v14 = v12;
  v15 = v13;
  v16 = v9 > 0.0;
  if (v11 <= 0.0)
  {
    v16 = 0;
  }

  trailingView = self->_trailingView;
  if (trailingView)
  {
    image = trailingView->_image;
    v19 = v12 > 0.0;
    if (v13 <= 0.0)
    {
      v19 = 0;
    }

    if (image)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    if (v16 && v20)
    {
      v21 = fmax(v9, v12);
      interitemPadding = self->_interitemPadding;
      v23 = v13 + v11 + interitemPadding;
      if (commitCopy)
      {
        v39 = v15 + v11 + interitemPadding;
        v41 = v21;
        PKSizeAspectFit();
        PKSizeAspectFit();
        PKSizeAlignedInRect();
        leadingView = self->_leadingView;
        PKRectRoundToPixel(v25, v26, v27, v28, v29);
        [(PKPassBannerLeadingView *)leadingView setFrame:?];
        PKSizeAlignedInRect();
        v30 = self->_trailingView;
        PKRectRoundToPixel(v31, v32, v33, v34, v35);
LABEL_30:
        [(PKPassBannerTrailingView *)v30 setFrame:*&v39, *&v41];
        v23 = v40;
        v21 = v42;
        goto LABEL_33;
      }

      goto LABEL_33;
    }

    if (v20)
    {
      v36 = v13;
    }

    else
    {
      v36 = 1.0;
    }

    if (v20)
    {
      v37 = v14;
    }

    else
    {
      v37 = 1.0;
    }
  }

  else
  {
    v20 = 0;
    v36 = 1.0;
    v37 = 1.0;
  }

  if (v16)
  {
    v23 = v11;
  }

  else
  {
    v23 = v36;
  }

  if (v16)
  {
    v21 = v9;
  }

  else
  {
    v21 = v37;
  }

  if (commitCopy)
  {
    v39 = v23;
    v41 = v21;
    v38 = self->_leadingView;
    if (v16)
    {
      PKSizeAspectFit();
    }

    PKSizeAlignedInRect();
    [(PKPassBannerLeadingView *)v38 setFrame:?];
    v30 = self->_trailingView;
    if (v20)
    {
      PKSizeAspectFit();
    }

    PKSizeAlignedInRect();
    goto LABEL_30;
  }

LABEL_33:
  result.height = v23;
  result.width = v21;
  return result;
}

- (void)_setInteritemPadding:(double)padding
{
  if (self->_interitemPadding != padding)
  {
    self->_interitemPadding = padding;
    [(PKPassBannerMinimalView *)self setNeedsLayout];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained passBannerMinimalViewDidChangeSize:self];
  }
}

@end