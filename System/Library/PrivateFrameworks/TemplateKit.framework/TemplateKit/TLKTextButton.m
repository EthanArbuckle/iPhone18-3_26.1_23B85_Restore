@interface TLKTextButton
- (BOOL)alwaysShowPlaceholderView;
- (BOOL)hasTemplateUIImage;
- (BOOL)isImageMode;
- (CGRect)imageRectForContentRect:(CGRect)a3;
- (CGSize)intrinsicContentSize;
- (CGSize)maximumLayoutSize;
- (CGSize)minimumLayoutSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (TLKTextButton)init;
- (UIFont)font;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)matchHeightForAlignmentRectWithIntrinsicContentSizeIfNecessary;
- (void)setAlignment:(int64_t)a3;
- (void)setAlwaysShowPlaceholderView:(BOOL)a3;
- (void)setAttributedTitle:(id)a3 forState:(unint64_t)a4;
- (void)setFont:(id)a3;
- (void)setImage:(id)a3 forState:(unint64_t)a4;
- (void)setMaximumLayoutSize:(CGSize)a3;
- (void)setMinimumLayoutSize:(CGSize)a3;
- (void)setProminence:(unint64_t)a3;
- (void)setRichTitle:(id)a3;
- (void)setTitle:(id)a3;
- (void)setTlkImage:(id)a3;
- (void)tlk_updateForAppearance:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateAttributedTitle;
- (void)updateImageViewAlignment;
@end

@implementation TLKTextButton

- (TLKTextButton)init
{
  v3 = [objc_opt_class() buttonWithType:1];

  if (v3)
  {
    v4 = [(TLKTextButton *)v3 layer];
    [v4 setAllowsGroupOpacity:0];

    [(TLKTextButton *)v3 _setDisableAutomaticTitleAnimations:1];
  }

  return v3;
}

- (BOOL)isImageMode
{
  v3 = [(TLKTextButton *)self richTitle];
  if ([v3 hasContent])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(TLKTextButton *)self title];
    if ([v5 length])
    {
      v4 = 0;
    }

    else
    {
      v6 = [(TLKTextButton *)self tlkImage];
      v4 = v6 != 0;
    }
  }

  return v4;
}

- (CGSize)intrinsicContentSize
{
  if ([(TLKTextButton *)self isImageMode])
  {
    v3 = [(TLKTextButton *)self tlkImageView];
    [v3 intrinsicContentSize];
    v5 = v4;
    v7 = v6;

    v8 = v5;
    v9 = v7;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = TLKTextButton;
    [(TLKTextButton *)&v10 intrinsicContentSize];
  }

  result.height = v9;
  result.width = v8;
  return result;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = TLKTextButton;
  [(TLKTextButton *)&v12 layoutSubviews];
  [(TLKTextButton *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(TLKTextButton *)self tlkImageView];
  [v11 setFrame:{v4, v6, v8, v10}];
}

- (BOOL)hasTemplateUIImage
{
  v2 = [(TLKTextButton *)self imageView];
  v3 = [v2 image];

  LOBYTE(v2) = [TLKImage isTemplateImage:v3];
  return v2;
}

- (void)updateAttributedTitle
{
  if (![(TLKTextButton *)self attributedTitleExplicitlySet])
  {
    v3 = [(TLKTextButton *)self font];
    v4 = [(TLKTextButton *)self titleLabel];
    v5 = [v4 adjustsFontForContentSizeCategory];

    if (v5)
    {
      v6 = [v3 _fontAdjustedForCurrentContentSizeCategory];

      v3 = v6;
    }

    v7 = [(TLKTextButton *)self richTitle];
    v8 = [TLKAppearance bestAppearanceForView:self];
    v9 = [(TLKTextButton *)self prominence];
    v10 = [(TLKTextButton *)self alignment];
    [(TLKTextButton *)self effectiveScreenScale];
    v12 = v11;
    v13 = [TLKAppearance bestAppearanceForView:self];
    LOBYTE(v17) = [v13 isDark];
    v14 = [TLKFontUtilities attributedStringForRichText:v7 appearance:v8 prominence:v9 alignment:v10 font:v3 isButton:1 scale:v12 isDark:v17];
    v15 = [v14 mutableCopy];

    v18.receiver = self;
    v18.super_class = TLKTextButton;
    [(TLKTextButton *)&v18 setAttributedTitle:v15 forState:0];
    if (![(TLKTextButton *)self isImageMode])
    {
      v16 = [(TLKTextButton *)self tlkImageView];
      [v16 setTlkImage:0];
    }
  }
}

- (UIFont)font
{
  v2 = [(TLKTextButton *)self titleLabel];
  v3 = [v2 font];

  return v3;
}

- (void)matchHeightForAlignmentRectWithIntrinsicContentSizeIfNecessary
{
  [(TLKTextButton *)self customAlignmentRectInsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if (![(TLKTextButton *)self matchesHeightForAlignmentRectWithIntrinsicContentSize])
  {
    goto LABEL_16;
  }

  v12 = [(TLKTextButton *)self attributedTitleForState:0];
  v13 = [v12 length];
  if (!v13)
  {
    v2 = [(TLKTextButton *)self richTitle];
    if (!v2)
    {
      v16 = 0.0;
LABEL_7:

      goto LABEL_8;
    }
  }

  v14 = [(TLKTextButton *)self titleLabel];
  [v14 intrinsicContentSize];
  v16 = v15;

  if (!v13)
  {
    goto LABEL_7;
  }

LABEL_8:
  v17 = [(TLKTextButton *)self tlkImage];
  [v17 size];
  if (v18 == 0.0)
  {
    v19 = [(TLKTextButton *)self tlkImage];
    v20 = [v19 uiImage];
    [v20 size];
    v22 = v21;
  }

  else
  {
    v22 = v18;
  }

  if (v16 < v22)
  {
    v16 = v22;
  }

  if (v16 != 0.0)
  {
    [(TLKTextButton *)self intrinsicContentSize];
    [TLKLayoutUtilities deviceScaledRoundedValue:self forView:(v23 - v16) * 0.5];
    v9 = v24;
    v11 = 0.0;
    v7 = 0.0;
    v5 = v24;
  }

LABEL_16:

  [(TLKTextButton *)self setCustomAlignmentRectInsets:v5, v7, v9, v11];
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = TLKTextButton;
  [(TLKTextButton *)&v3 didMoveToWindow];
  [(UIView *)self tlk_updateWithCurrentAppearance];
}

- (void)setTitle:(id)a3
{
  objc_storeStrong(&self->_title, a3);
  v5 = a3;
  v6 = [(TLKMultilineText *)TLKRichText textWithString:v5];
  richTitle = self->_richTitle;
  self->_richTitle = v6;

  [(UIView *)self tlk_updateWithCurrentAppearance];
}

- (void)setTlkImage:(id)a3
{
  v12 = a3;
  objc_storeStrong(&self->_tlkImage, a3);
  v5 = [(TLKTextButton *)self tlkImageView];

  if (!v5)
  {
    v6 = objc_opt_new();
    [(TLKTextButton *)self setTlkImageView:v6];

    [(TLKTextButton *)self updateImageViewAlignment];
    v7 = objc_opt_new();
    [(TLKTextButton *)self setImage:v7 forState:0];

    v8 = [(TLKTextButton *)self imageView];
    v9 = [(TLKTextButton *)self tlkImageView];
    [v8 addSubview:v9];
  }

  v10 = [(TLKTextButton *)self tlkImageView];
  [v10 setTlkImage:v12];

  v11 = [(TLKTextButton *)self tlkImageView];
  [v11 setHidden:v12 == 0];

  [(UIView *)self tlk_updateWithCurrentAppearance];
  [(TLKTextButton *)self invalidateIntrinsicContentSize];
}

- (void)setImage:(id)a3 forState:(unint64_t)a4
{
  v5.receiver = self;
  v5.super_class = TLKTextButton;
  [(TLKTextButton *)&v5 setImage:a3 forState:a4];
  [(UIView *)self tlk_updateWithCurrentAppearance];
}

- (CGRect)imageRectForContentRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (![(TLKTextButton *)self isImageMode])
  {
    v16.receiver = self;
    v16.super_class = TLKTextButton;
    [(TLKTextButton *)&v16 imageRectForContentRect:x, y, width, height];
    x = v8;
    y = v9;
    width = v10;
    height = v11;
  }

  v12 = x;
  v13 = y;
  v14 = width;
  v15 = height;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if ([(TLKTextButton *)self isImageMode])
  {
    v6 = [(TLKTextButton *)self tlkImageView];
    [v6 sizeThatFits:{width, height}];
    v8 = v7;
    v10 = v9;

    v11 = v8;
    v12 = v10;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = TLKTextButton;
    [(TLKTextButton *)&v13 sizeThatFits:width, height];
  }

  result.height = v12;
  result.width = v11;
  return result;
}

- (CGSize)maximumLayoutSize
{
  v2 = [(TLKTextButton *)self tlkImageView];
  [v2 maximumLayoutSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setMaximumLayoutSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(TLKTextButton *)self tlkImageView];
  [v5 setMaximumLayoutSize:{width, height}];
}

- (CGSize)minimumLayoutSize
{
  v2 = [(TLKTextButton *)self tlkImageView];
  [v2 minimumLayoutSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setMinimumLayoutSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(TLKTextButton *)self tlkImageView];
  [v5 setMinimumLayoutSize:{width, height}];
}

- (BOOL)alwaysShowPlaceholderView
{
  v2 = [(TLKTextButton *)self tlkImageView];
  v3 = [v2 placeholderVisibility] == 1;

  return v3;
}

- (void)setAlwaysShowPlaceholderView:(BOOL)a3
{
  v3 = a3;
  v4 = [(TLKTextButton *)self tlkImageView];
  [v4 setPlaceholderVisibility:v3];
}

- (void)setRichTitle:(id)a3
{
  v5 = a3;
  if (self->_richTitle != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_richTitle, a3);
    v6 = [(TLKTextButton *)self window];

    if (v6)
    {
      [(UIView *)self tlk_updateWithCurrentAppearance];
    }

    else
    {
      [(TLKTextButton *)self updateAttributedTitle];
    }

    v5 = v7;
  }
}

- (void)setProminence:(unint64_t)a3
{
  if (self->_prominence != a3)
  {
    self->_prominence = a3;
    [(UIView *)self tlk_updateWithCurrentAppearance];
  }
}

- (void)setAlignment:(int64_t)a3
{
  self->_alignment = a3;
  [(TLKTextButton *)self updateAttributedTitle];

  [(TLKTextButton *)self updateImageViewAlignment];
}

- (void)updateImageViewAlignment
{
  v3 = [(TLKTextButton *)self alignment]== 2;
  v4 = [(TLKTextButton *)self tlkImageView];
  [v4 setAlignment:v3];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TLKTextButton;
  [(TLKTextButton *)&v9 traitCollectionDidChange:v4];
  v5 = [(TLKTextButton *)self traitCollection];
  if ([v5 hasDifferentColorAppearanceComparedToTraitCollection:v4])
  {

LABEL_4:
    [(UIView *)self tlk_updateWithCurrentAppearance];
    goto LABEL_5;
  }

  v6 = [(TLKTextButton *)self traitCollection];
  v7 = [v6 _vibrancy];
  v8 = [v4 _vibrancy];

  if (v7 != v8)
  {
    goto LABEL_4;
  }

LABEL_5:
}

- (void)tlk_updateForAppearance:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = TLKTextButton;
  [(UIView *)&v15 tlk_updateForAppearance:v4];
  v5 = [v4 buttonColorForProminence:{-[TLKTextButton prominence](self, "prominence")}];
  [(TLKTextButton *)self setTintColor:v5];

  v6 = MEMORY[0x1E69DD250];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __41__TLKTextButton_tlk_updateForAppearance___block_invoke;
  v12 = &unk_1E7FD8DA8;
  v7 = v4;
  v13 = v7;
  v14 = self;
  [v6 performWithoutAnimation:&v9];
  if ([(TLKTextButton *)self isImageMode:v9]&& ![(TLKTextButton *)self hasTemplateUIImage])
  {
    v8 = [(TLKTextButton *)self imageView];
    [TLKView makeContainerShadowCompatible:v8];
  }

  if ([(TLKTextButton *)self isImageMode]&& ![(TLKTextButton *)self hasTemplateUIImage])
  {
    [v7 disableAppearanceForView:self];
  }

  else
  {
    [v7 enableAppearanceForView:self];
  }

  [(TLKTextButton *)self updateAttributedTitle];
  [(TLKTextButton *)self matchHeightForAlignmentRectWithIntrinsicContentSizeIfNecessary];
}

void __41__TLKTextButton_tlk_updateForAppearance___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) titleLabel];
  [v2 enableAppearanceForView:v3];

  LODWORD(v3) = [*(a1 + 40) hasTemplateUIImage];
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) imageView];
  if (v3)
  {
    [v4 enableAppearanceForView:v5];
  }

  else
  {
    [v4 disableAppearanceForView:v5];
  }
}

- (void)setAttributedTitle:(id)a3 forState:(unint64_t)a4
{
  v6 = a3 != 0;
  v7 = a3;
  [(TLKTextButton *)self setAttributedTitleExplicitlySet:v6];
  v8.receiver = self;
  v8.super_class = TLKTextButton;
  [(TLKTextButton *)&v8 setAttributedTitle:v7 forState:a4];
}

- (void)setFont:(id)a3
{
  v4 = a3;
  v5 = [(TLKTextButton *)self titleLabel];
  [v5 setFont:v4];

  [(UIView *)self tlk_updateWithCurrentAppearance];
}

@end