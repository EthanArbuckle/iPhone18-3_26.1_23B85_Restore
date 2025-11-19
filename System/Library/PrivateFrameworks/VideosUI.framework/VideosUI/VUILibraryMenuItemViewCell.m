@interface VUILibraryMenuItemViewCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (VUILibraryMenuItemViewCell)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setImageName:(id)a3;
- (void)setTopSeparatorView:(id)a3;
@end

@implementation VUILibraryMenuItemViewCell

- (VUILibraryMenuItemViewCell)initWithFrame:(CGRect)a3
{
  v34.receiver = self;
  v34.super_class = VUILibraryMenuItemViewCell;
  v3 = [(VUILibraryMenuItemViewCell *)&v34 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(VUITextLayout);
    [(VUITextLayout *)v4 setTextStyle:2];
    [(VUITextLayout *)v4 setFontWeight:0];
    v5 = [MEMORY[0x1E69DC888] vui_keyColor];
    [(VUITextLayout *)v4 setColor:v5];

    v6 = [MEMORY[0x1E69DC888] whiteColor];
    [(VUITextLayout *)v4 setHighlightOrSelectedColor:v6];

    v7 = [VUILabel labelWithString:&stru_1F5DB25C0 textLayout:v4 existingLabel:0];
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v7;

    v9 = [(VUILibraryMenuItemViewCell *)v3 contentView];
    [v9 addSubview:v3->_titleLabel];

    v10 = objc_alloc_init(VUISeparatorView);
    bottomSeparatorView = v3->_bottomSeparatorView;
    v3->_bottomSeparatorView = v10;

    v12 = [(VUILibraryMenuItemViewCell *)v3 contentView];
    [v12 addSubview:v3->_bottomSeparatorView];

    v13 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.forward"];
    v14 = [VUIVideosImageView alloc];
    v15 = *MEMORY[0x1E695F058];
    v16 = *(MEMORY[0x1E695F058] + 8);
    v17 = *(MEMORY[0x1E695F058] + 16);
    v18 = *(MEMORY[0x1E695F058] + 24);
    v19 = [(VUIVideosImageView *)v14 initWithFrame:*MEMORY[0x1E695F058], v16, v17, v18];
    accessoryView = v3->_accessoryView;
    v3->_accessoryView = v19;

    v21 = v3->_accessoryView;
    v22 = [MEMORY[0x1E69DC888] lightGrayColor];
    v23 = [v13 imageWithTintColor:v22 renderingMode:1];
    [(VUIVideosImageView *)v21 setImage:v23];

    v24 = v3->_accessoryView;
    v25 = [MEMORY[0x1E69DC888] whiteColor];
    v26 = [v13 imageWithTintColor:v25 renderingMode:1];
    [(VUIVideosImageView *)v24 setHighlightOrSelectedImage:v26];

    v27 = [(VUILibraryMenuItemViewCell *)v3 contentView];
    [v27 addSubview:v3->_accessoryView];

    v28 = [[VUIVideosImageView alloc] initWithFrame:v15, v16, v17, v18];
    imageView = v3->_imageView;
    v3->_imageView = v28;

    [(VUIVideosImageView *)v3->_imageView setContentMode:2];
    v30 = [(VUILibraryMenuItemViewCell *)v3 contentView];
    [v30 addSubview:v3->_imageView];

    v31 = [MEMORY[0x1E69DC888] vui_primaryDynamicBackgroundColor];
    [(VUIListCollectionViewCell *)v3 setBackgroundColor:v31];

    v32 = [MEMORY[0x1E69DC888] vui_keyColor];
    [(VUIListCollectionViewCell *)v3 setHighlightedBackgroundColor:v32];

    [(VUILibraryMenuItemViewCell *)v3 setHideChevron:0];
  }

  return v3;
}

- (void)setImageName:(id)a3
{
  v5 = a3;
  if (self->_imageName != v5)
  {
    v13 = v5;
    objc_storeStrong(&self->_imageName, a3);
    v6 = [MEMORY[0x1E69DCAD8] configurationPreferringMonochrome];
    v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:v13 withConfiguration:v6];
    if (!v7)
    {
      v8 = MEMORY[0x1E69DCAB8];
      v9 = [MEMORY[0x1E696AAE8] mainBundle];
      v7 = [v8 imageNamed:v13 inBundle:v9 withConfiguration:0];
    }

    [(VUIVideosImageView *)self->_imageView setImage:v7];
    imageView = self->_imageView;
    v11 = [MEMORY[0x1E69DC888] whiteColor];
    v12 = [v7 imageWithTintColor:v11 renderingMode:1];
    [(VUIVideosImageView *)imageView setHighlightOrSelectedImage:v12];

    [(VUILibraryMenuItemViewCell *)self setNeedsLayout];
    v5 = v13;
  }
}

- (void)setTopSeparatorView:(id)a3
{
  v5 = a3;
  topSeparatorView = self->_topSeparatorView;
  if (topSeparatorView != v5)
  {
    v7 = v5;
    [(VUISeparatorView *)topSeparatorView removeFromSuperview];
    objc_storeStrong(&self->_topSeparatorView, a3);
    if (self->_topSeparatorView)
    {
      [(VUILibraryMenuItemViewCell *)self addSubview:?];
    }

    [(VUILibraryMenuItemViewCell *)self setNeedsLayout];
    v5 = v7;
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [MEMORY[0x1E69DD2E8] vui_padding];
  v6 = v5;
  v8 = v7;
  v9 = MEMORY[0x1E69DF6D0];
  v10 = [(VUILibraryMenuItemViewCell *)self vuiTraitCollection];
  [v9 scaleContentSizeValue:v10 forTraitCollection:20.0];
  v12 = v11;

  v13 = [(VUIVideosImageView *)self->_accessoryView image];
  [v13 size];
  v15 = v14;

  [(VUILabel *)self->_titleLabel sizeThatFits:width - v6 - v8 + -10.0 + -10.0 - v15 - v12, 1.79769313e308];
  v17 = v16;
  [(VUILabel *)self->_titleLabel topMarginWithBaselineMargin:32.0];
  v19 = v18;
  [(VUILabel *)self->_titleLabel bottomMarginWithBaselineMargin:16.0];
  v21 = v17 + v19 + v20;
  v22 = width;
  result.height = v21;
  result.width = v22;
  return result;
}

- (void)layoutSubviews
{
  v50.receiver = self;
  v50.super_class = VUILibraryMenuItemViewCell;
  [(VUILibraryMenuItemViewCell *)&v50 layoutSubviews];
  [(VUILibraryMenuItemViewCell *)self bounds];
  Width = CGRectGetWidth(v51);
  [(VUILibraryMenuItemViewCell *)self bounds];
  Height = CGRectGetHeight(v52);
  [MEMORY[0x1E69DD2E8] vui_paddingForWindowWidth:Width];
  v6 = v5;
  v49 = v7;
  v8 = [(VUILibraryMenuItemViewCell *)self contentView];
  v9 = [v8 effectiveUserInterfaceLayoutDirection];

  v10 = [(VUILibraryMenuItemViewCell *)self contentView];
  [v10 bounds];

  topSeparatorView = self->_topSeparatorView;
  if (topSeparatorView)
  {
    [(VUIBaseView *)topSeparatorView sizeThatFits:Width - v6, 1.79769313e308];
    v13 = v12;
    v15 = v14;
    v16 = 0.0;
    v17 = v6;
    if (v9 == 1)
    {
      VUIRectWithFlippedOriginRelativeToBoundingRect();
    }

    [(VUISeparatorView *)self->_topSeparatorView setFrame:v17, v16, v13, v15];
  }

  bottomSeparatorView = self->_bottomSeparatorView;
  if (bottomSeparatorView)
  {
    [(VUIBaseView *)bottomSeparatorView sizeThatFits:Width - v6, 1.79769313e308];
    v20 = v19;
    v22 = v21;
    v23 = Height - v21;
    v24 = v6;
    if (v9 == 1)
    {
      VUIRectWithFlippedOriginRelativeToBoundingRect();
    }

    [(VUISeparatorView *)self->_bottomSeparatorView setFrame:v24, v23, v20, v22];
  }

  v25 = MEMORY[0x1E69DF6D0];
  v26 = [(VUILibraryMenuItemViewCell *)self vuiTraitCollection];
  [v25 scaleContentSizeValue:v26 forTraitCollection:20.0];
  v28 = v27;

  if ([(VUILibraryMenuItemViewCell *)self hasImage])
  {
    v29 = (Height - v28) * 0.5;
    v30 = v6;
    v31 = v28;
    v32 = v28;
    if (v9 == 1)
    {
      VUIRectWithFlippedOriginRelativeToBoundingRect();
    }

    [(VUIVideosImageView *)self->_imageView setFrame:v30, v29, v31, v32];
  }

  v33 = [(VUIVideosImageView *)self->_accessoryView image];
  [v33 size];
  v35 = v34;
  v37 = v36;

  if (![(VUILibraryMenuItemViewCell *)self hideChevron])
  {
    v38 = Width - v49 - v35;
    v39 = (Height - v37) * 0.5;
    v40 = v35;
    if (v9 == 1)
    {
      VUIRectWithFlippedOriginRelativeToBoundingRect();
      v37 = v41;
    }

    [(VUIVideosImageView *)self->_accessoryView setFrame:v38, v39, v40, v37];
  }

  [(VUILabel *)self->_titleLabel topMarginWithBaselineMargin:32.0];
  v43 = v42;
  v44 = Width - v6 - v49;
  if (![(VUILibraryMenuItemViewCell *)self hideChevron])
  {
    v44 = v44 - (v35 + 10.0);
  }

  if ([(VUILibraryMenuItemViewCell *)self hasImage])
  {
    v44 = v44 - (v28 + 10.0);
    v6 = v6 + v28 + 10.0;
  }

  [(VUILabel *)self->_titleLabel sizeThatFits:v44, 1.79769313e308];
  if (v9 == 1)
  {
    VUIRectWithFlippedOriginRelativeToBoundingRect();
    v6 = v45;
    v43 = v46;
    v44 = v47;
    v48 = 2;
  }

  else
  {
    v48 = 0;
  }

  [(VUILabel *)self->_titleLabel setFrame:v6, v43, v44];
  [(VUILabel *)self->_titleLabel setTextAlignment:v48];
}

@end