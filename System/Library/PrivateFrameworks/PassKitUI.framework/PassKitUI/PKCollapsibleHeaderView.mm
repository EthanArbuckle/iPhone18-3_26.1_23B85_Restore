@interface PKCollapsibleHeaderView
- ($3CC2805F0189FCCE51047C0D2B5A52A9)_layoutWithBounds:(SEL)a3 isTemplateLayout:(CGRect)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKCollapsibleHeaderView)initWithFrame:(CGRect)a3;
- (PKCollapsibleHeaderViewDelegate)delegate;
- (UIEdgeInsets)readableContentInsets;
- (UIImage)image;
- (double)_maxTitleWidthInsideFrameWidth:(double)a3 reserveSpace:(BOOL)a4;
- (double)_titleTopPadding;
- (double)_topArtTopPadding;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_contentSizeCategoryDidChange;
- (void)_setLabelFonts;
- (void)layoutSubviews;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)searchBarCancelButtonClicked:(id)a3;
- (void)searchBarTextDidBeginEditing:(id)a3;
- (void)searchBarTextDidEndEditing:(id)a3;
- (void)setAdditionalCollapsibleHeight:(double)a3;
- (void)setImage:(id)a3;
- (void)setShowSearchBar:(BOOL)a3;
- (void)setShowSpinner:(BOOL)a3;
- (void)setTitle:(id)a3 subtitle:(id)a4;
- (void)setTitleAccessoriesEnabled:(BOOL)a3;
- (void)setTitleFont:(id)a3;
- (void)setTopArtView:(id)a3;
- (void)showCheckmark:(BOOL)a3 animated:(BOOL)a4;
- (void)updateTitleLabelText;
@end

@implementation PKCollapsibleHeaderView

- (PKCollapsibleHeaderView)initWithFrame:(CGRect)a3
{
  v21.receiver = self;
  v21.super_class = PKCollapsibleHeaderView;
  v3 = [(PKCollapsibleHeaderView *)&v21 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v19 = [MEMORY[0x1E696AD88] defaultCenter];
    [v19 addObserver:v4 selector:sel__contentSizeCategoryDidChange name:*MEMORY[0x1E69DDC48] object:0];

    [(PKCollapsibleHeaderView *)v4 setAccessibilityIdentifier:*MEMORY[0x1E69B9840]];
  }

  return v4;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  [(UISearchBar *)self->_searchBar frame];
  v12.x = x;
  v12.y = y;
  if (CGRectContainsPoint(v13, v12))
  {
    searchBar = self->_searchBar;
    [(PKCollapsibleHeaderView *)self convertPoint:searchBar toView:x, y];
    v9 = [(UISearchBar *)searchBar hitTest:v7 withEvent:?];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(PKCollapsibleHeaderView *)self heightBoundsForWidth:a3.width, a3.height, 0, 0, 0, 0];
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

- ($3CC2805F0189FCCE51047C0D2B5A52A9)_layoutWithBounds:(SEL)a3 isTemplateLayout:(CGRect)a4
{
  v5 = a5;
  height = a4.size.height;
  width = a4.size.width;
  x = a4.origin.x;
  p_readableContentInsets = &self->_readableContentInsets;
  right = self->_readableContentInsets.right;
  left = self->_readableContentInsets.left;
  MaxY = 0.0;
  if (!a5)
  {
    [(PKCollapsibleHeaderView *)self _layoutWithBounds:1 isTemplateLayout:0.0, 0.0, a4.size.width, 1.79769313e308];
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

  v31 = [(UILabel *)self->_subtitleLabel text];
  v32 = [v31 length];

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

- (double)_maxTitleWidthInsideFrameWidth:(double)a3 reserveSpace:(BOOL)a4
{
  v5 = 0.0;
  if (a4)
  {
    [(UIActivityIndicatorView *)self->_activityIndicator sizeThatFits:a3, 1.79769313e308];
    v5 = fmax(v6, 30.0) * 2.0 + 10.0;
  }

  return a3 - v5;
}

- (void)setTitleAccessoriesEnabled:(BOOL)a3
{
  if (self->_titleAccessoriesEnabled == !a3)
  {
    self->_titleAccessoriesEnabled = a3;
    titleLabel = self->_titleLabel;
    if (a3)
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

- (void)setShowSpinner:(BOOL)a3
{
  if (self->_showSpinner == !a3)
  {
    self->_showSpinner = a3;
    activityIndicator = self->_activityIndicator;
    if (a3)
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

- (void)setShowSearchBar:(BOOL)a3
{
  if (self->_showSearchBar == !a3)
  {
    self->_showSearchBar = a3;
    if (a3)
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

- (void)setAdditionalCollapsibleHeight:(double)a3
{
  if (a3 < 0.0)
  {
    a3 = 0.0;
  }

  if (self->_additionalCollapsibleHeight != a3)
  {
    self->_additionalCollapsibleHeight = a3;
  }
}

- (void)showCheckmark:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_showCheckmark == !a3)
  {
    self->_showCheckmark = a3;
    [PKCheckmarkView showCheckmark:"showCheckmark:animated:" animated:?];
  }
}

- (void)setTitleFont:(id)a3
{
  objc_storeStrong(&self->_titleFont, a3);
  [(PKCollapsibleHeaderView *)self updateTitleLabelText];

  [(PKCollapsibleHeaderView *)self setNeedsLayout];
}

- (void)setTitle:(id)a3 subtitle:(id)a4
{
  objc_storeStrong(&self->_titleText, a3);
  v7 = a3;
  v8 = a4;
  [(PKCollapsibleHeaderView *)self updateTitleLabelText];
  [(UILabel *)self->_subtitleLabel setText:v8];

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

- (void)setImage:(id)a3
{
  v4 = a3;
  self->_imageSize = *MEMORY[0x1E695F060];
  v8 = v4;
  if (v4)
  {
    [v4 size];
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

- (void)setTopArtView:(id)a3
{
  v5 = a3;
  [(UIView *)self->_topArtView removeFromSuperview];
  objc_storeStrong(&self->_topArtView, a3);
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
    v3 = [(UIView *)self->_topArtView image];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 searchTextDidChangeTo:v7];
  }
}

- (void)searchBarTextDidBeginEditing:(id)a3
{
  [a3 setShowsCancelButton:1];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 searchBarTextDidBeginEditing];
  }
}

- (void)searchBarTextDidEndEditing:(id)a3
{
  v4 = a3;
  [v4 resignFirstResponder];
  [v4 setShowsCancelButton:0];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 searchBarTextDidEndEditing];
  }
}

- (void)searchBarCancelButtonClicked:(id)a3
{
  v4 = a3;
  [v4 setText:0];
  [v4 resignFirstResponder];

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