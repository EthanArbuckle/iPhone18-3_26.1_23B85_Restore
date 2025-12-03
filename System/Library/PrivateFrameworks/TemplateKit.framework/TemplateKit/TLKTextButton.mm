@interface TLKTextButton
- (BOOL)alwaysShowPlaceholderView;
- (BOOL)hasTemplateUIImage;
- (BOOL)isImageMode;
- (CGRect)imageRectForContentRect:(CGRect)rect;
- (CGSize)intrinsicContentSize;
- (CGSize)maximumLayoutSize;
- (CGSize)minimumLayoutSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (TLKTextButton)init;
- (UIFont)font;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)matchHeightForAlignmentRectWithIntrinsicContentSizeIfNecessary;
- (void)setAlignment:(int64_t)alignment;
- (void)setAlwaysShowPlaceholderView:(BOOL)view;
- (void)setAttributedTitle:(id)title forState:(unint64_t)state;
- (void)setFont:(id)font;
- (void)setImage:(id)image forState:(unint64_t)state;
- (void)setMaximumLayoutSize:(CGSize)size;
- (void)setMinimumLayoutSize:(CGSize)size;
- (void)setProminence:(unint64_t)prominence;
- (void)setRichTitle:(id)title;
- (void)setTitle:(id)title;
- (void)setTlkImage:(id)image;
- (void)tlk_updateForAppearance:(id)appearance;
- (void)traitCollectionDidChange:(id)change;
- (void)updateAttributedTitle;
- (void)updateImageViewAlignment;
@end

@implementation TLKTextButton

- (TLKTextButton)init
{
  v3 = [objc_opt_class() buttonWithType:1];

  if (v3)
  {
    layer = [(TLKTextButton *)v3 layer];
    [layer setAllowsGroupOpacity:0];

    [(TLKTextButton *)v3 _setDisableAutomaticTitleAnimations:1];
  }

  return v3;
}

- (BOOL)isImageMode
{
  richTitle = [(TLKTextButton *)self richTitle];
  if ([richTitle hasContent])
  {
    v4 = 0;
  }

  else
  {
    title = [(TLKTextButton *)self title];
    if ([title length])
    {
      v4 = 0;
    }

    else
    {
      tlkImage = [(TLKTextButton *)self tlkImage];
      v4 = tlkImage != 0;
    }
  }

  return v4;
}

- (CGSize)intrinsicContentSize
{
  if ([(TLKTextButton *)self isImageMode])
  {
    tlkImageView = [(TLKTextButton *)self tlkImageView];
    [tlkImageView intrinsicContentSize];
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
  tlkImageView = [(TLKTextButton *)self tlkImageView];
  [tlkImageView setFrame:{v4, v6, v8, v10}];
}

- (BOOL)hasTemplateUIImage
{
  imageView = [(TLKTextButton *)self imageView];
  image = [imageView image];

  LOBYTE(imageView) = [TLKImage isTemplateImage:image];
  return imageView;
}

- (void)updateAttributedTitle
{
  if (![(TLKTextButton *)self attributedTitleExplicitlySet])
  {
    font = [(TLKTextButton *)self font];
    titleLabel = [(TLKTextButton *)self titleLabel];
    adjustsFontForContentSizeCategory = [titleLabel adjustsFontForContentSizeCategory];

    if (adjustsFontForContentSizeCategory)
    {
      _fontAdjustedForCurrentContentSizeCategory = [font _fontAdjustedForCurrentContentSizeCategory];

      font = _fontAdjustedForCurrentContentSizeCategory;
    }

    richTitle = [(TLKTextButton *)self richTitle];
    v8 = [TLKAppearance bestAppearanceForView:self];
    prominence = [(TLKTextButton *)self prominence];
    alignment = [(TLKTextButton *)self alignment];
    [(TLKTextButton *)self effectiveScreenScale];
    v12 = v11;
    v13 = [TLKAppearance bestAppearanceForView:self];
    LOBYTE(v17) = [v13 isDark];
    v14 = [TLKFontUtilities attributedStringForRichText:richTitle appearance:v8 prominence:prominence alignment:alignment font:font isButton:1 scale:v12 isDark:v17];
    v15 = [v14 mutableCopy];

    v18.receiver = self;
    v18.super_class = TLKTextButton;
    [(TLKTextButton *)&v18 setAttributedTitle:v15 forState:0];
    if (![(TLKTextButton *)self isImageMode])
    {
      tlkImageView = [(TLKTextButton *)self tlkImageView];
      [tlkImageView setTlkImage:0];
    }
  }
}

- (UIFont)font
{
  titleLabel = [(TLKTextButton *)self titleLabel];
  font = [titleLabel font];

  return font;
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
    richTitle = [(TLKTextButton *)self richTitle];
    if (!richTitle)
    {
      v16 = 0.0;
LABEL_7:

      goto LABEL_8;
    }
  }

  titleLabel = [(TLKTextButton *)self titleLabel];
  [titleLabel intrinsicContentSize];
  v16 = v15;

  if (!v13)
  {
    goto LABEL_7;
  }

LABEL_8:
  tlkImage = [(TLKTextButton *)self tlkImage];
  [tlkImage size];
  if (v18 == 0.0)
  {
    tlkImage2 = [(TLKTextButton *)self tlkImage];
    uiImage = [tlkImage2 uiImage];
    [uiImage size];
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

- (void)setTitle:(id)title
{
  objc_storeStrong(&self->_title, title);
  titleCopy = title;
  v6 = [(TLKMultilineText *)TLKRichText textWithString:titleCopy];
  richTitle = self->_richTitle;
  self->_richTitle = v6;

  [(UIView *)self tlk_updateWithCurrentAppearance];
}

- (void)setTlkImage:(id)image
{
  imageCopy = image;
  objc_storeStrong(&self->_tlkImage, image);
  tlkImageView = [(TLKTextButton *)self tlkImageView];

  if (!tlkImageView)
  {
    v6 = objc_opt_new();
    [(TLKTextButton *)self setTlkImageView:v6];

    [(TLKTextButton *)self updateImageViewAlignment];
    v7 = objc_opt_new();
    [(TLKTextButton *)self setImage:v7 forState:0];

    imageView = [(TLKTextButton *)self imageView];
    tlkImageView2 = [(TLKTextButton *)self tlkImageView];
    [imageView addSubview:tlkImageView2];
  }

  tlkImageView3 = [(TLKTextButton *)self tlkImageView];
  [tlkImageView3 setTlkImage:imageCopy];

  tlkImageView4 = [(TLKTextButton *)self tlkImageView];
  [tlkImageView4 setHidden:imageCopy == 0];

  [(UIView *)self tlk_updateWithCurrentAppearance];
  [(TLKTextButton *)self invalidateIntrinsicContentSize];
}

- (void)setImage:(id)image forState:(unint64_t)state
{
  v5.receiver = self;
  v5.super_class = TLKTextButton;
  [(TLKTextButton *)&v5 setImage:image forState:state];
  [(UIView *)self tlk_updateWithCurrentAppearance];
}

- (CGRect)imageRectForContentRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  if ([(TLKTextButton *)self isImageMode])
  {
    tlkImageView = [(TLKTextButton *)self tlkImageView];
    [tlkImageView sizeThatFits:{width, height}];
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
  tlkImageView = [(TLKTextButton *)self tlkImageView];
  [tlkImageView maximumLayoutSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setMaximumLayoutSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  tlkImageView = [(TLKTextButton *)self tlkImageView];
  [tlkImageView setMaximumLayoutSize:{width, height}];
}

- (CGSize)minimumLayoutSize
{
  tlkImageView = [(TLKTextButton *)self tlkImageView];
  [tlkImageView minimumLayoutSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setMinimumLayoutSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  tlkImageView = [(TLKTextButton *)self tlkImageView];
  [tlkImageView setMinimumLayoutSize:{width, height}];
}

- (BOOL)alwaysShowPlaceholderView
{
  tlkImageView = [(TLKTextButton *)self tlkImageView];
  v3 = [tlkImageView placeholderVisibility] == 1;

  return v3;
}

- (void)setAlwaysShowPlaceholderView:(BOOL)view
{
  viewCopy = view;
  tlkImageView = [(TLKTextButton *)self tlkImageView];
  [tlkImageView setPlaceholderVisibility:viewCopy];
}

- (void)setRichTitle:(id)title
{
  titleCopy = title;
  if (self->_richTitle != titleCopy)
  {
    v7 = titleCopy;
    objc_storeStrong(&self->_richTitle, title);
    window = [(TLKTextButton *)self window];

    if (window)
    {
      [(UIView *)self tlk_updateWithCurrentAppearance];
    }

    else
    {
      [(TLKTextButton *)self updateAttributedTitle];
    }

    titleCopy = v7;
  }
}

- (void)setProminence:(unint64_t)prominence
{
  if (self->_prominence != prominence)
  {
    self->_prominence = prominence;
    [(UIView *)self tlk_updateWithCurrentAppearance];
  }
}

- (void)setAlignment:(int64_t)alignment
{
  self->_alignment = alignment;
  [(TLKTextButton *)self updateAttributedTitle];

  [(TLKTextButton *)self updateImageViewAlignment];
}

- (void)updateImageViewAlignment
{
  v3 = [(TLKTextButton *)self alignment]== 2;
  tlkImageView = [(TLKTextButton *)self tlkImageView];
  [tlkImageView setAlignment:v3];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = TLKTextButton;
  [(TLKTextButton *)&v9 traitCollectionDidChange:changeCopy];
  traitCollection = [(TLKTextButton *)self traitCollection];
  if ([traitCollection hasDifferentColorAppearanceComparedToTraitCollection:changeCopy])
  {

LABEL_4:
    [(UIView *)self tlk_updateWithCurrentAppearance];
    goto LABEL_5;
  }

  traitCollection2 = [(TLKTextButton *)self traitCollection];
  _vibrancy = [traitCollection2 _vibrancy];
  _vibrancy2 = [changeCopy _vibrancy];

  if (_vibrancy != _vibrancy2)
  {
    goto LABEL_4;
  }

LABEL_5:
}

- (void)tlk_updateForAppearance:(id)appearance
{
  appearanceCopy = appearance;
  v15.receiver = self;
  v15.super_class = TLKTextButton;
  [(UIView *)&v15 tlk_updateForAppearance:appearanceCopy];
  v5 = [appearanceCopy buttonColorForProminence:{-[TLKTextButton prominence](self, "prominence")}];
  [(TLKTextButton *)self setTintColor:v5];

  v6 = MEMORY[0x1E69DD250];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __41__TLKTextButton_tlk_updateForAppearance___block_invoke;
  v12 = &unk_1E7FD8DA8;
  v7 = appearanceCopy;
  v13 = v7;
  selfCopy = self;
  [v6 performWithoutAnimation:&v9];
  if ([(TLKTextButton *)self isImageMode:v9]&& ![(TLKTextButton *)self hasTemplateUIImage])
  {
    imageView = [(TLKTextButton *)self imageView];
    [TLKView makeContainerShadowCompatible:imageView];
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

- (void)setAttributedTitle:(id)title forState:(unint64_t)state
{
  v6 = title != 0;
  titleCopy = title;
  [(TLKTextButton *)self setAttributedTitleExplicitlySet:v6];
  v8.receiver = self;
  v8.super_class = TLKTextButton;
  [(TLKTextButton *)&v8 setAttributedTitle:titleCopy forState:state];
}

- (void)setFont:(id)font
{
  fontCopy = font;
  titleLabel = [(TLKTextButton *)self titleLabel];
  [titleLabel setFont:fontCopy];

  [(UIView *)self tlk_updateWithCurrentAppearance];
}

@end