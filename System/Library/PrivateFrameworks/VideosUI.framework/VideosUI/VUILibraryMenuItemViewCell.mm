@interface VUILibraryMenuItemViewCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (VUILibraryMenuItemViewCell)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setImageName:(id)name;
- (void)setTopSeparatorView:(id)view;
@end

@implementation VUILibraryMenuItemViewCell

- (VUILibraryMenuItemViewCell)initWithFrame:(CGRect)frame
{
  v34.receiver = self;
  v34.super_class = VUILibraryMenuItemViewCell;
  v3 = [(VUILibraryMenuItemViewCell *)&v34 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(VUITextLayout);
    [(VUITextLayout *)v4 setTextStyle:2];
    [(VUITextLayout *)v4 setFontWeight:0];
    vui_keyColor = [MEMORY[0x1E69DC888] vui_keyColor];
    [(VUITextLayout *)v4 setColor:vui_keyColor];

    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(VUITextLayout *)v4 setHighlightOrSelectedColor:whiteColor];

    v7 = [VUILabel labelWithString:&stru_1F5DB25C0 textLayout:v4 existingLabel:0];
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v7;

    contentView = [(VUILibraryMenuItemViewCell *)v3 contentView];
    [contentView addSubview:v3->_titleLabel];

    v10 = objc_alloc_init(VUISeparatorView);
    bottomSeparatorView = v3->_bottomSeparatorView;
    v3->_bottomSeparatorView = v10;

    contentView2 = [(VUILibraryMenuItemViewCell *)v3 contentView];
    [contentView2 addSubview:v3->_bottomSeparatorView];

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
    lightGrayColor = [MEMORY[0x1E69DC888] lightGrayColor];
    v23 = [v13 imageWithTintColor:lightGrayColor renderingMode:1];
    [(VUIVideosImageView *)v21 setImage:v23];

    v24 = v3->_accessoryView;
    whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
    v26 = [v13 imageWithTintColor:whiteColor2 renderingMode:1];
    [(VUIVideosImageView *)v24 setHighlightOrSelectedImage:v26];

    contentView3 = [(VUILibraryMenuItemViewCell *)v3 contentView];
    [contentView3 addSubview:v3->_accessoryView];

    v28 = [[VUIVideosImageView alloc] initWithFrame:v15, v16, v17, v18];
    imageView = v3->_imageView;
    v3->_imageView = v28;

    [(VUIVideosImageView *)v3->_imageView setContentMode:2];
    contentView4 = [(VUILibraryMenuItemViewCell *)v3 contentView];
    [contentView4 addSubview:v3->_imageView];

    vui_primaryDynamicBackgroundColor = [MEMORY[0x1E69DC888] vui_primaryDynamicBackgroundColor];
    [(VUIListCollectionViewCell *)v3 setBackgroundColor:vui_primaryDynamicBackgroundColor];

    vui_keyColor2 = [MEMORY[0x1E69DC888] vui_keyColor];
    [(VUIListCollectionViewCell *)v3 setHighlightedBackgroundColor:vui_keyColor2];

    [(VUILibraryMenuItemViewCell *)v3 setHideChevron:0];
  }

  return v3;
}

- (void)setImageName:(id)name
{
  nameCopy = name;
  if (self->_imageName != nameCopy)
  {
    v13 = nameCopy;
    objc_storeStrong(&self->_imageName, name);
    configurationPreferringMonochrome = [MEMORY[0x1E69DCAD8] configurationPreferringMonochrome];
    v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:v13 withConfiguration:configurationPreferringMonochrome];
    if (!v7)
    {
      v8 = MEMORY[0x1E69DCAB8];
      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
      v7 = [v8 imageNamed:v13 inBundle:mainBundle withConfiguration:0];
    }

    [(VUIVideosImageView *)self->_imageView setImage:v7];
    imageView = self->_imageView;
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    v12 = [v7 imageWithTintColor:whiteColor renderingMode:1];
    [(VUIVideosImageView *)imageView setHighlightOrSelectedImage:v12];

    [(VUILibraryMenuItemViewCell *)self setNeedsLayout];
    nameCopy = v13;
  }
}

- (void)setTopSeparatorView:(id)view
{
  viewCopy = view;
  topSeparatorView = self->_topSeparatorView;
  if (topSeparatorView != viewCopy)
  {
    v7 = viewCopy;
    [(VUISeparatorView *)topSeparatorView removeFromSuperview];
    objc_storeStrong(&self->_topSeparatorView, view);
    if (self->_topSeparatorView)
    {
      [(VUILibraryMenuItemViewCell *)self addSubview:?];
    }

    [(VUILibraryMenuItemViewCell *)self setNeedsLayout];
    viewCopy = v7;
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [MEMORY[0x1E69DD2E8] vui_padding];
  v6 = v5;
  v8 = v7;
  v9 = MEMORY[0x1E69DF6D0];
  vuiTraitCollection = [(VUILibraryMenuItemViewCell *)self vuiTraitCollection];
  [v9 scaleContentSizeValue:vuiTraitCollection forTraitCollection:20.0];
  v12 = v11;

  image = [(VUIVideosImageView *)self->_accessoryView image];
  [image size];
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
  contentView = [(VUILibraryMenuItemViewCell *)self contentView];
  effectiveUserInterfaceLayoutDirection = [contentView effectiveUserInterfaceLayoutDirection];

  contentView2 = [(VUILibraryMenuItemViewCell *)self contentView];
  [contentView2 bounds];

  topSeparatorView = self->_topSeparatorView;
  if (topSeparatorView)
  {
    [(VUIBaseView *)topSeparatorView sizeThatFits:Width - v6, 1.79769313e308];
    v13 = v12;
    v15 = v14;
    v16 = 0.0;
    v17 = v6;
    if (effectiveUserInterfaceLayoutDirection == 1)
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
    if (effectiveUserInterfaceLayoutDirection == 1)
    {
      VUIRectWithFlippedOriginRelativeToBoundingRect();
    }

    [(VUISeparatorView *)self->_bottomSeparatorView setFrame:v24, v23, v20, v22];
  }

  v25 = MEMORY[0x1E69DF6D0];
  vuiTraitCollection = [(VUILibraryMenuItemViewCell *)self vuiTraitCollection];
  [v25 scaleContentSizeValue:vuiTraitCollection forTraitCollection:20.0];
  v28 = v27;

  if ([(VUILibraryMenuItemViewCell *)self hasImage])
  {
    v29 = (Height - v28) * 0.5;
    v30 = v6;
    v31 = v28;
    v32 = v28;
    if (effectiveUserInterfaceLayoutDirection == 1)
    {
      VUIRectWithFlippedOriginRelativeToBoundingRect();
    }

    [(VUIVideosImageView *)self->_imageView setFrame:v30, v29, v31, v32];
  }

  image = [(VUIVideosImageView *)self->_accessoryView image];
  [image size];
  v35 = v34;
  v37 = v36;

  if (![(VUILibraryMenuItemViewCell *)self hideChevron])
  {
    v38 = Width - v49 - v35;
    v39 = (Height - v37) * 0.5;
    v40 = v35;
    if (effectiveUserInterfaceLayoutDirection == 1)
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
  if (effectiveUserInterfaceLayoutDirection == 1)
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