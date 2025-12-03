@interface PKCollapsibleHeaderView
- ($3CC2805F0189FCCE51047C0D2B5A52A9)_layoutWithBounds:(SEL)bounds isTemplateLayout:(CGRect)layout;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKCollapsibleHeaderView)initWithFrame:(CGRect)frame;
- (PKCollapsibleHeaderViewDelegate)delegate;
- (UIEdgeInsets)readableContentInsets;
- (UIImage)image;
- (double)_maxTitleWidthInsideFrameWidth:(double)width reserveSpace:(BOOL)space;
- (double)_titleTopPadding;
- (double)_topArtTopPadding;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_contentSizeCategoryDidChange;
- (void)_setLabelFonts;
- (void)layoutSubviews;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)searchBarCancelButtonClicked:(id)clicked;
- (void)searchBarTextDidBeginEditing:(id)editing;
- (void)searchBarTextDidEndEditing:(id)editing;
- (void)setAdditionalCollapsibleHeight:(double)height;
- (void)setImage:(id)image;
- (void)setShowSearchBar:(BOOL)bar;
- (void)setShowSpinner:(BOOL)spinner;
- (void)setTitle:(id)title subtitle:(id)subtitle;
- (void)setTitleAccessoriesEnabled:(BOOL)enabled;
- (void)setTitleFont:(id)font;
- (void)setTopArtView:(id)view;
- (void)showCheckmark:(BOOL)checkmark animated:(BOOL)animated;
- (void)updateTitleLabelText;
@end

@implementation PKCollapsibleHeaderView

- (PKCollapsibleHeaderView)initWithFrame:(CGRect)frame
{
  v21.receiver = self;
  v21.super_class = PKCollapsibleHeaderView;
  v3 = [(PKCollapsibleHeaderView *)&v21 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = *(MEMORY[0x1E69DDCE0] + 16);
    *&v3->_readableContentInsets.top = *MEMORY[0x1E69DDCE0];
    *&v3->_readableContentInsets.bottom = v5;
    v6 = PKOBKTextAlignment();
    v7 = objc_alloc_init(PKTrailingAccessoryLabel);
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v7;

    [(PKTrailingAccessoryLabel *)v4->_titleLabel setTextAlignment:v6];
    [(PKTrailingAccessoryLabel *)v4->_titleLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];
    [(PKCollapsibleHeaderView *)v4 addSubview:v4->_titleLabel];
    v9 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    subtitleLabel = v4->_subtitleLabel;
    v4->_subtitleLabel = v9;

    [(UILabel *)v4->_subtitleLabel setTextAlignment:v6];
    [(UILabel *)v4->_subtitleLabel setNumberOfLines:0];
    v11 = v4->_subtitleLabel;
    v12 = PKOBKHeaderSubtitleTextColor();
    [(UILabel *)v11 setTextColor:v12];

    [(UILabel *)v4->_subtitleLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9CC8]];
    [(PKCollapsibleHeaderView *)v4 addSubview:v4->_subtitleLabel];
    [(PKCollapsibleHeaderView *)v4 _setLabelFonts];
    v13 = objc_alloc_init(MEMORY[0x1E69DCF08]);
    searchBar = v4->_searchBar;
    v4->_searchBar = v13;

    [(UISearchBar *)v4->_searchBar setAutocorrectionType:1];
    [(UISearchBar *)v4->_searchBar setDelegate:v4];
    [(UISearchBar *)v4->_searchBar setReturnKeyType:6];
    [(UISearchBar *)v4->_searchBar setEnablesReturnKeyAutomatically:1];
    [(UISearchBar *)v4->_searchBar setSearchBarStyle:2];
    v15 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    activityIndicator = v4->_activityIndicator;
    v4->_activityIndicator = v15;

    [(UIActivityIndicatorView *)v4->_activityIndicator setHidesWhenStopped:1];
    [(UIActivityIndicatorView *)v4->_activityIndicator sizeToFit];
    [(UIActivityIndicatorView *)v4->_activityIndicator setHidden:1];
    v17 = objc_alloc_init(PKCheckmarkView);
    checkmarkView = v4->_checkmarkView;
    v4->_checkmarkView = v17;

    [(PKCollapsibleHeaderView *)v4 setTitleAccessoriesEnabled:1];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__contentSizeCategoryDidChange name:*MEMORY[0x1E69DDC48] object:0];

    [(PKCollapsibleHeaderView *)v4 setAccessibilityIdentifier:*MEMORY[0x1E69B9840]];
  }

  return v4;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  [(UISearchBar *)self->_searchBar frame];
  v12.x = x;
  v12.y = y;
  if (CGRectContainsPoint(v13, v12))
  {
    searchBar = self->_searchBar;
    [(PKCollapsibleHeaderView *)self convertPoint:searchBar toView:x, y];
    v9 = [(UISearchBar *)searchBar hitTest:eventCopy withEvent:?];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(PKCollapsibleHeaderView *)self heightBoundsForWidth:fits.width, fits.height, 0, 0, 0, 0];
  v4 = 0.0;
  v5 = width;
  result.height = v4;
  result.width = v5;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKCollapsibleHeaderView;
  [(PKCollapsibleHeaderView *)&v3 layoutSubviews];
  [(PKCollapsibleHeaderView *)self bounds];
  [(PKCollapsibleHeaderView *)self _layoutWithBounds:0 isTemplateLayout:?];
}

- ($3CC2805F0189FCCE51047C0D2B5A52A9)_layoutWithBounds:(SEL)bounds isTemplateLayout:(CGRect)layout
{
  v5 = a5;
  height = layout.size.height;
  width = layout.size.width;
  x = layout.origin.x;
  p_readableContentInsets = &self->_readableContentInsets;
  right = self->_readableContentInsets.right;
  left = self->_readableContentInsets.left;
  MaxY = 0.0;
  if (!a5)
  {
    [(PKCollapsibleHeaderView *)self _layoutWithBounds:1 isTemplateLayout:0.0, 0.0, layout.size.width, 1.79769313e308];
    MaxY = height - v52;
  }

  v13 = width - (left + right);
  if (self->_topArtView)
  {
    v49 = x;
    v14 = height;
    [(PKCollapsibleHeaderView *)self _topArtTopPadding];
    v16 = v15;
    v18 = self->_imageSize.width;
    v17 = self->_imageSize.height;
    if (v18 == *MEMORY[0x1E695F060] && v17 == *(MEMORY[0x1E695F060] + 8))
    {
      [(UIView *)self->_topArtView sizeThatFits:v13, 1.79769313e308];
      v18 = v20;
      v17 = v21;
    }

    v22 = MaxY + v16;
    PKFloatRoundToPixel();
    v24 = v23;
    if (!v5)
    {
      [(UIView *)self->_topArtView setFrame:v23, v22, v18, v17];
    }

    v25 = fmin(v22, 0.0);
    v53.origin.x = v24;
    v53.origin.y = v22;
    v53.size.width = v18;
    v53.size.height = v17;
    MaxY = CGRectGetMaxY(v53);
    height = v14;
    x = v49;
  }

  else
  {
    v25 = 0.0;
  }

  if (self->_titleText || self->_showSpinner || self->_showCheckmark)
  {
    [(PKCollapsibleHeaderView *)self _titleTopPadding];
    v27 = MaxY + v26;
    [(PKTrailingAccessoryLabel *)self->_titleLabel setContentInsets:p_readableContentInsets->top, p_readableContentInsets->left, p_readableContentInsets->bottom, p_readableContentInsets->right];
    [(PKTrailingAccessoryLabel *)self->_titleLabel sizeThatFits:width, 1.79769313e308];
    v30 = v29;
    if (!v5)
    {
      [(PKTrailingAccessoryLabel *)self->_titleLabel setFrame:x, v27, v28, v29];
    }

    v25 = fmin(v25, v27);
    MaxY = v27 + v30;
  }

  else
  {
    [(PKTrailingAccessoryLabel *)self->_titleLabel setContentInsets:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
    if (!v5)
    {
      [(PKTrailingAccessoryLabel *)self->_titleLabel setFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    }
  }

  text = [(UILabel *)self->_subtitleLabel text];
  v32 = [text length];

  if (!v32)
  {
    if (!self->_showSearchBar)
    {
      v43 = MaxY + 15.0;
      v44 = 0.0;
      goto LABEL_37;
    }

    v43 = MaxY;
    goto LABEL_31;
  }

  v34 = _UISolariumFeatureFlagEnabled();
  v35 = 8.0;
  if (v34)
  {
    v35 = 0.0;
  }

  v36 = MaxY + v35;
  [(UILabel *)self->_subtitleLabel sizeThatFits:v13, 1.79769313e308];
  v38 = v37;
  PKFloatRoundToPixel();
  v40 = v39;
  if (!v5)
  {
    [(UILabel *)self->_subtitleLabel setFrame:v39, v36, v13, v38];
  }

  v25 = fmin(v25, v36);
  v54.origin.x = v40;
  v54.origin.y = v36;
  v54.size.width = width - (left + right);
  v54.size.height = v38;
  v41 = CGRectGetMaxY(v54);
  v42 = 15.0;
  if (self->_showSearchBar)
  {
    v42 = 10.0;
  }

  v43 = v41 + v42;
  v44 = 0.0;
  if (self->_showSearchBar)
  {
LABEL_31:
    v45 = v43;
    if (!v5)
    {
      v45 = fmax(v43, self->_additionalCollapsibleHeight);
    }

    result = [(UISearchBar *)self->_searchBar sizeThatFits:width, height];
    v47 = v46;
    if (!v5)
    {
      [(UISearchBar *)self->_searchBar setFrame:0.0, v45, width, v46];
      result = [(UISearchBar *)self->_searchBar setContentInset:0.0, left, 0.0, right];
    }

    v25 = fmin(v25, v43);
    v43 = v43 + v47 + 10.0;
    v44 = fmax(v47 + 10.0 - self->_additionalCollapsibleHeight, 0.0);
  }

LABEL_37:
  v48 = v43 + self->_additionalBottomPadding;
  retstr->var0 = v44;
  retstr->var1 = v25;
  retstr->var2 = MaxY;
  retstr->var3 = v48 - MaxY;
  retstr->var4 = v48;
  return result;
}

- (void)_contentSizeCategoryDidChange
{
  [(PKCollapsibleHeaderView *)self _setLabelFonts];

  [(PKCollapsibleHeaderView *)self setNeedsLayout];
}

- (void)_setLabelFonts
{
  v3 = PKOBKHeaderTitleFont();
  titleFont = self->_titleFont;
  self->_titleFont = v3;

  subtitleLabel = self->_subtitleLabel;
  v6 = PKOBKHeaderSubtitleFont();
  [(UILabel *)subtitleLabel setFont:v6];

  [(PKCollapsibleHeaderView *)self updateTitleLabelText];
}

- (double)_titleTopPadding
{
  if (self->_topArtView || (result = 0.0, !self->_removeAdditionalTopPadding))
  {
    v4 = PKUIGetMinScreenWidthType();
    if (self->_topArtView)
    {
      result = 15.0;
      if (!v4)
      {
        return 5.0;
      }
    }

    else
    {
      v5 = 20.0;
      if (!v4)
      {
        v5 = 10.0;
      }

      return v5 + self->_additionalTopPadding;
    }
  }

  return result;
}

- (double)_topArtTopPadding
{
  result = 0.0;
  if (!self->_removeAdditionalTopPadding)
  {
    v4 = PKUIGetMinScreenWidthType();
    v5 = 10.0;
    if (!v4)
    {
      v5 = 5.0;
    }

    return v5 + self->_additionalTopPadding;
  }

  return result;
}

- (double)_maxTitleWidthInsideFrameWidth:(double)width reserveSpace:(BOOL)space
{
  v5 = 0.0;
  if (space)
  {
    [(UIActivityIndicatorView *)self->_activityIndicator sizeThatFits:width, 1.79769313e308];
    v5 = fmax(v6, 30.0) * 2.0 + 10.0;
  }

  return width - v5;
}

- (void)setTitleAccessoriesEnabled:(BOOL)enabled
{
  if (self->_titleAccessoriesEnabled == !enabled)
  {
    self->_titleAccessoriesEnabled = enabled;
    titleLabel = self->_titleLabel;
    if (enabled)
    {
      checkmarkView = self->_checkmarkView;
      [(PKCheckmarkView *)checkmarkView intrinsicContentSize];
      [(PKTrailingAccessoryLabel *)titleLabel registerAccessoryWithView:checkmarkView withSize:@"checkmark" for:?];
      v7 = self->_titleLabel;
      activityIndicator = self->_activityIndicator;
      [(UIActivityIndicatorView *)activityIndicator intrinsicContentSize];
      [(PKTrailingAccessoryLabel *)v7 registerAccessoryWithView:activityIndicator withSize:@"activityIndicator" for:?];
    }

    else
    {
      [(PKTrailingAccessoryLabel *)self->_titleLabel unregisterAccessories];
    }

    [(PKCollapsibleHeaderView *)self setNeedsLayout];
  }
}

- (void)setShowSpinner:(BOOL)spinner
{
  if (self->_showSpinner == !spinner)
  {
    self->_showSpinner = spinner;
    activityIndicator = self->_activityIndicator;
    if (spinner)
    {
      [(UIActivityIndicatorView *)activityIndicator setHidden:0];
      v5 = self->_activityIndicator;

      [(UIActivityIndicatorView *)v5 startAnimating];
    }

    else
    {

      [(UIActivityIndicatorView *)activityIndicator stopAnimating];
    }
  }
}

- (void)setShowSearchBar:(BOOL)bar
{
  if (self->_showSearchBar == !bar)
  {
    self->_showSearchBar = bar;
    if (bar)
    {
      [(PKCollapsibleHeaderView *)self addSubview:self->_searchBar];
    }

    else
    {
      [(UISearchBar *)self->_searchBar removeFromSuperview];
    }

    [(PKCollapsibleHeaderView *)self setNeedsLayout];
  }
}

- (void)setAdditionalCollapsibleHeight:(double)height
{
  if (height < 0.0)
  {
    height = 0.0;
  }

  if (self->_additionalCollapsibleHeight != height)
  {
    self->_additionalCollapsibleHeight = height;
  }
}

- (void)showCheckmark:(BOOL)checkmark animated:(BOOL)animated
{
  if (self->_showCheckmark == !checkmark)
  {
    self->_showCheckmark = checkmark;
    [PKCheckmarkView showCheckmark:"showCheckmark:animated:" animated:?];
  }
}

- (void)setTitleFont:(id)font
{
  objc_storeStrong(&self->_titleFont, font);
  [(PKCollapsibleHeaderView *)self updateTitleLabelText];

  [(PKCollapsibleHeaderView *)self setNeedsLayout];
}

- (void)setTitle:(id)title subtitle:(id)subtitle
{
  objc_storeStrong(&self->_titleText, title);
  titleCopy = title;
  subtitleCopy = subtitle;
  [(PKCollapsibleHeaderView *)self updateTitleLabelText];
  [(UILabel *)self->_subtitleLabel setText:subtitleCopy];

  [(PKCollapsibleHeaderView *)self setNeedsLayout];
}

- (void)updateTitleLabelText
{
  v13[3] = *MEMORY[0x1E69E9840];
  if (self->_titleText)
  {
    v3 = self->_titleFont;
    v4 = PKOBKTextAlignment();
    v5 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
    [v5 setAlignment:v4];
    [v5 setLineBreakMode:0];
    v6 = objc_alloc(MEMORY[0x1E696AAB0]);
    titleText = self->_titleText;
    v8 = *MEMORY[0x1E69DB648];
    v12[0] = *MEMORY[0x1E69DB688];
    v12[1] = v8;
    v13[0] = v5;
    v13[1] = v3;
    v12[2] = *MEMORY[0x1E69DB650];
    v9 = PKOBKHeaderTitleTextColor();
    v13[2] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
    v11 = [v6 initWithString:titleText attributes:v10];
  }

  else
  {
    v11 = 0;
  }

  [(PKTrailingAccessoryLabel *)self->_titleLabel setAttributedText:v11];
}

- (void)setImage:(id)image
{
  imageCopy = image;
  self->_imageSize = *MEMORY[0x1E695F060];
  v8 = imageCopy;
  if (imageCopy)
  {
    [imageCopy size];
    self->_imageSize.width = v5;
    self->_imageSize.height = v6;
    v7 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    [v7 setContentMode:1];
    [v7 setImage:v8];
    [(PKCollapsibleHeaderView *)self addSubview:v7];
    [(PKCollapsibleHeaderView *)self setTopArtView:v7];
  }

  else
  {
    [(PKCollapsibleHeaderView *)self setTopArtView:0];
  }
}

- (void)setTopArtView:(id)view
{
  viewCopy = view;
  [(UIView *)self->_topArtView removeFromSuperview];
  objc_storeStrong(&self->_topArtView, view);
  if (self->_topArtView)
  {
    [(PKCollapsibleHeaderView *)self addSubview:?];
  }

  [(PKCollapsibleHeaderView *)self setNeedsLayout];
}

- (UIImage)image
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    image = [(UIView *)self->_topArtView image];
  }

  else
  {
    image = 0;
  }

  return image;
}

- (void)searchBar:(id)bar textDidChange:(id)change
{
  changeCopy = change;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 searchTextDidChangeTo:changeCopy];
  }
}

- (void)searchBarTextDidBeginEditing:(id)editing
{
  [editing setShowsCancelButton:1];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 searchBarTextDidBeginEditing];
  }
}

- (void)searchBarTextDidEndEditing:(id)editing
{
  editingCopy = editing;
  [editingCopy resignFirstResponder];
  [editingCopy setShowsCancelButton:0];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 searchBarTextDidEndEditing];
  }
}

- (void)searchBarCancelButtonClicked:(id)clicked
{
  clickedCopy = clicked;
  [clickedCopy setText:0];
  [clickedCopy resignFirstResponder];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 searchBarCancelButtonClicked];
  }
}

- (UIEdgeInsets)readableContentInsets
{
  top = self->_readableContentInsets.top;
  left = self->_readableContentInsets.left;
  bottom = self->_readableContentInsets.bottom;
  right = self->_readableContentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (PKCollapsibleHeaderViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end