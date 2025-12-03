@interface SBHSearchBar
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (BOOL)textFieldShouldBeginEditing:(id)editing;
- (BOOL)textFieldShouldEndEditing:(id)editing;
- (BOOL)textFieldShouldReturn:(id)return;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)sizeThatFits:(CGSize)fits forVisualConfiguration:(id)configuration;
- (SBHSearchBar)initWithFrame:(CGRect)frame;
- (SBHSearchBarDelegate)delegate;
- (SBIconListLayoutProvider)listLayoutProvider;
- (double)_performHeightCalculationForVisualConfiguration:(id)configuration;
- (id)_currentVisualConfiguration;
- (void)_accessibilityBoldStatusDidChange:(id)change;
- (void)_cancelButtonTapped:(id)tapped;
- (void)_invalidateIntrinsicContentSizeAndNotify;
- (void)_preferredContentSizeCategoryDidChange;
- (void)_searchBarTextFieldDidChangeText:(id)text;
- (void)_updateCancelButtonFont;
- (void)layoutSubviews;
- (void)setAlignsTextFieldOnPixelBoundaries:(BOOL)boundaries;
- (void)setBackgroundViewBottomInsetToTextField:(double)field;
- (void)setInactiveSearchConfiguration:(id)configuration;
- (void)setListLayoutProvider:(id)provider;
- (void)setPortraitOrientation:(BOOL)orientation;
- (void)setSearchTextField:(id)field;
- (void)setShowsCancelButton:(BOOL)button animated:(BOOL)animated;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidEndEditing:(id)editing;
@end

@implementation SBHSearchBar

- (void)layoutSubviews
{
  v78.receiver = self;
  v78.super_class = SBHSearchBar;
  [(SBHSearchBar *)&v78 layoutSubviews];
  [(SBHSearchBar *)self bounds];
  v4 = v3;
  v6 = v5;
  v76 = v7;
  v72 = v8;
  _currentVisualConfiguration = [(SBHSearchBar *)self _currentVisualConfiguration];
  window = [(SBHSearchBar *)self window];
  traitCollection = [(SBHSearchBar *)self traitCollection];
  [traitCollection displayScale];

  delegate = [(SBHSearchBar *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate safeAreaInsetsForSearchBar:self];
  }

  else
  {
    [(SBHSearchBar *)self safeAreaInsets];
  }

  if ([(SBHSearchBar *)self isPortraitOrientation])
  {
    [_currentVisualConfiguration textFieldPortraitLayoutInsets];
  }

  else
  {
    [_currentVisualConfiguration textFieldLandscapeLayoutInsets];
  }

  UIEdgeInsetsAdd();
  v14 = v4 + v13;
  v16 = v6 + v15;
  v18 = v76 - (v13 + v17);
  v20 = v72 - (v15 + v19);
  [_currentVisualConfiguration textFieldWidth];
  v22 = v21;
  v23 = (v76 - v21) * 0.5;
  if (v22 <= 0.0)
  {
    v24 = v14;
  }

  else
  {
    v18 = v22;
    v24 = v23;
  }

  [(UIButton *)self->_cancelButton frame];
  v71 = v25;
  searchTextField = [(SBHSearchBar *)self searchTextField];
  [searchTextField intrinsicContentSize];

  textFieldCancelButtonSpacing = self->_textFieldCancelButtonSpacing;
  if (self->_alignsTextFieldOnPixelBoundaries)
  {
    UIRectCenteredIntegralRectScale();
  }

  else
  {
    UIRectCenteredRect();
  }

  v74 = v28;
  v75 = v27;
  v73 = v29;
  rect = v30;
  v63 = v24;
  v64 = v18;
  v70 = v16;
  UIEdgeInsetsAdd();
  v67 = v32;
  v68 = v31;
  v65 = v34;
  v66 = v33;
  UIEdgeInsetsAdd();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = MEMORY[0x1E69DDA98];
  if (self->_showsCancelButton)
  {
    userInterfaceLayoutDirection = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
    v45 = v71 + textFieldCancelButtonSpacing;
    if (userInterfaceLayoutDirection == 1)
    {
      v38 = v45 + v38;
    }

    else
    {
      v42 = v45 + v42;
    }
  }

  v46 = v75 + v38;
  v47 = v73 - (v38 + v42);
  v48 = rect - (v36 + v40);
  searchTextField = self->_searchTextField;
  BSRectWithSize();
  [(SBHSearchTextField *)searchTextField setBounds:?];
  v50 = self->_searchTextField;
  UIRectGetCenter();
  [(SBHSearchTextField *)v50 setCenter:?];
  if (self->_backgroundViewBottomInsetToTextField != *MEMORY[0x1E69DE788])
  {
    v79.origin.x = v46;
    v79.origin.y = v74 + v36;
    v79.size.width = v47;
    v79.size.height = v48;
    CGRectGetMaxY(v79);
  }

  backgroundView = self->_backgroundView;
  BSRectWithSize();
  [(SBFFeatherBlurView *)backgroundView setBounds:?];
  v52 = self->_backgroundView;
  UIRectGetCenter();
  [(SBFFeatherBlurView *)v52 setCenter:?];
  v53 = MEMORY[0x1E69D3FC0];
  [(SBFFeatherBlurView *)self->_backgroundView frame];
  v54 = [v53 matchMoveAnimationForFrame:window relativeToView:?];
  layer = [(SBFFeatherBlurView *)self->_backgroundView layer];
  [layer addAnimation:v54 forKey:@"SBHSearchBarMatchMoveAnimation"];

  [(UIButton *)self->_cancelButton frame];
  v80.origin.x = v75;
  v80.origin.y = v74;
  v80.size.width = v73;
  v80.size.height = rect;
  CGRectGetMidY(v80);
  LODWORD(layer) = self->_showsCancelButton;
  userInterfaceLayoutDirection2 = [*v43 userInterfaceLayoutDirection];
  if (layer == 1)
  {
    v57 = v75 + v67;
    v58 = v74 + v68;
    v59 = v73 - (v67 + v65);
    v60 = rect - (v68 + v66);
    if (userInterfaceLayoutDirection2 == 1)
    {
      CGRectGetMinX(*&v57);
    }

    else
    {
      CGRectGetMaxX(*&v57);
    }
  }

  else if (userInterfaceLayoutDirection2 == 1)
  {
    v81.origin.x = v75;
    v81.origin.y = v74;
    v81.size.width = v73;
    v81.size.height = rect;
    CGRectGetMinX(v81);
  }

  else
  {
    v82.origin.x = v63;
    v82.size.width = v64;
    v82.origin.y = v70;
    v82.size.height = v20;
    CGRectGetMaxX(v82);
  }

  UIRectIntegralWithScale();
  cancelButton = self->_cancelButton;
  BSRectWithSize();
  [(UIButton *)cancelButton setBounds:?];
  v62 = self->_cancelButton;
  UIRectGetCenter();
  [(UIButton *)v62 setCenter:?];
}

- (id)_currentVisualConfiguration
{
  showsCancelButton = [(SBHSearchBar *)self showsCancelButton];
  v4 = &OBJC_IVAR___SBHSearchBar__inactiveSearchConfiguration;
  if (showsCancelButton)
  {
    v4 = &OBJC_IVAR___SBHSearchBar__activeSearchConfiguration;
  }

  v5 = *(&self->super.super.super.super.isa + *v4);

  return v5;
}

- (SBHSearchBarDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SBHSearchBar)initWithFrame:(CGRect)frame
{
  v27[1] = *MEMORY[0x1E69E9840];
  v26.receiver = self;
  v26.super_class = SBHSearchBar;
  v3 = [(SBHSearchBar *)&v26 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E69D3FC0]) initWithRecipe:1];
    backgroundView = v3->_backgroundView;
    v3->_backgroundView = v4;

    [(SBHSearchBar *)v3 addSubview:v3->_backgroundView];
    v3->_backgroundViewBottomInsetToTextField = *MEMORY[0x1E69DE788];
    v6 = [MEMORY[0x1E69DC738] buttonWithType:1];
    cancelButton = v3->_cancelButton;
    v3->_cancelButton = v6;

    v8 = v3->_cancelButton;
    v9 = SBHBundle();
    v10 = [v9 localizedStringForKey:@"APP_LIBRARY_SEARCH_CANCEL_BUTTON_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
    [(UIButton *)v8 setTitle:v10 forState:0];

    [(UIButton *)v3->_cancelButton sizeToFit];
    [(UIButton *)v3->_cancelButton setAlpha:0.0];
    [(UIButton *)v3->_cancelButton setPointerInteractionEnabled:1];
    [(UIButton *)v3->_cancelButton addTarget:v3 action:sel__cancelButtonTapped_ forControlEvents:64];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__accessibilityBoldStatusDidChange_ name:*MEMORY[0x1E69DD898] object:0];

    [(SBHSearchBar *)v3 addSubview:v3->_cancelButton];
    [(SBHSearchBar *)v3 _updateCancelButtonFont];
    v12 = [SBHSearchTextField alloc];
    v13 = [(SBHSearchTextField *)v12 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    searchTextField = v3->_searchTextField;
    v3->_searchTextField = v13;

    [(UISearchTextField *)v3->_searchTextField setDelegate:v3];
    v15 = v3->_searchTextField;
    v16 = SBHBundle();
    v17 = [v16 localizedStringForKey:@"APP_LIBRARY_SEARCH_PLACEHOLDER" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
    [(SBHSearchTextField *)v15 setPlaceholder:v17];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v3 selector:sel__searchBarTextFieldDidChangeText_ name:*MEMORY[0x1E69DE5C0] object:v3->_searchTextField];

    [(SBHSearchBar *)v3 addSubview:v3->_searchTextField];
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    v21 = 16.0;
    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v21 = 20.0;
    }

    v3->_textFieldCancelButtonSpacing = v21;
    v3->_alignsTextFieldOnPixelBoundaries = 1;
    v3->_portraitOrientation = 1;
    [(SBHSearchBar *)v3 setAccessibilityIdentifier:@"dewey-search-bar"];
    [(SBHSearchBar *)v3 _setIgnoresLayerTransformForSafeAreaInsets:1];
    v22 = objc_opt_self();
    v27[0] = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
    v24 = [(SBHSearchBar *)v3 registerForTraitChanges:v23 withAction:sel__preferredContentSizeCategoryDidChange];
  }

  return v3;
}

- (void)_preferredContentSizeCategoryDidChange
{
  [(SBHSearchBar *)self _updateCancelButtonFont];
  [(SBHSearchBar *)self setNeedsLayout];

  [(SBHSearchBar *)self layoutIfNeeded];
}

- (void)_accessibilityBoldStatusDidChange:(id)change
{
  [(SBHSearchBar *)self _updateCancelButtonFont];
  [(SBHSearchBar *)self setNeedsLayout];

  [(SBHSearchBar *)self layoutIfNeeded];
}

- (void)setShowsCancelButton:(BOOL)button animated:(BOOL)animated
{
  if (self->_showsCancelButton != button)
  {
    animatedCopy = animated;
    _isInAnimationBlock = [MEMORY[0x1E69DD250] _isInAnimationBlock];
    [(SBHSearchBar *)self frame];
    v9 = v8;
    v11 = v10;
    [(SBHSearchBar *)self sizeThatFits:v8, v10];
    v13 = v12;
    v15 = v14;
    self->_showsCancelButton = button;
    [(SBHSearchBar *)self sizeThatFits:v9, v11];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __46__SBHSearchBar_setShowsCancelButton_animated___block_invoke;
    v20[3] = &unk_1E808D638;
    v20[4] = self;
    buttonCopy = button;
    v20[5] = v13;
    v20[6] = v15;
    v20[7] = v16;
    v20[8] = v17;
    v18 = _Block_copy(v20);
    v19 = v18;
    if (_isInAnimationBlock || !animatedCopy)
    {
      (*(v18 + 2))(v18);
    }

    else
    {
      [MEMORY[0x1E69DD250] _animateUsingDefaultTimingWithOptions:6 animations:v18 completion:0];
    }
  }
}

uint64_t __46__SBHSearchBar_setShowsCancelButton_animated___block_invoke(uint64_t a1, double a2)
{
  LOBYTE(a2) = *(a1 + 72);
  [*(*(a1 + 32) + 472) setAlpha:*&a2];
  [*(a1 + 32) setNeedsLayout];
  if (*(a1 + 40) != *(a1 + 56) || *(a1 + 48) != *(a1 + 64))
  {
    [*(a1 + 32) _invalidateIntrinsicContentSizeAndNotify];
  }

  v4 = *(a1 + 32);

  return [v4 layoutIfNeeded];
}

- (void)setSearchTextField:(id)field
{
  fieldCopy = field;
  searchTextField = self->_searchTextField;
  if (searchTextField != fieldCopy)
  {
    v7 = fieldCopy;
    [(SBHSearchTextField *)searchTextField removeFromSuperview];
    objc_storeStrong(&self->_searchTextField, field);
    [(SBHSearchBar *)self addSubview:self->_searchTextField];
    [(SBHSearchBar *)self setNeedsLayout];
    [(SBHSearchBar *)self _invalidateIntrinsicContentSizeAndNotify];
    searchTextField = [(SBHSearchBar *)self layoutIfNeeded];
    fieldCopy = v7;
  }

  MEMORY[0x1EEE66BB8](searchTextField, fieldCopy);
}

- (void)setInactiveSearchConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [configurationCopy copy];
    inactiveSearchConfiguration = self->_inactiveSearchConfiguration;
    self->_inactiveSearchConfiguration = v4;

    [(SBHSearchBar *)self setNeedsLayout];
    [(SBHSearchBar *)self _invalidateIntrinsicContentSizeAndNotify];
  }
}

- (void)setPortraitOrientation:(BOOL)orientation
{
  if (self->_portraitOrientation != orientation)
  {
    self->_portraitOrientation = orientation;
    [(SBHSearchBar *)self setNeedsLayout];

    [(SBHSearchBar *)self _invalidateIntrinsicContentSizeAndNotify];
  }
}

- (void)setAlignsTextFieldOnPixelBoundaries:(BOOL)boundaries
{
  if (self->_alignsTextFieldOnPixelBoundaries != boundaries)
  {
    self->_alignsTextFieldOnPixelBoundaries = boundaries;
    [(SBHSearchBar *)self setNeedsLayout];
  }
}

- (void)setListLayoutProvider:(id)provider
{
  obj = provider;
  WeakRetained = objc_loadWeakRetained(&self->_listLayoutProvider);

  v6 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_listLayoutProvider, obj);
    v7 = [obj layoutForIconLocation:@"SBIconLocationRoot"];
    [v7 iconImageInfo];
    SBHIconListLayoutNonDefaultIconGridSizeClassLayoutInsets(v7, 1);
    BSFloatFloorForScale();
    self->_textFieldHorizontalLayoutInsets.top = 0.0;
    self->_textFieldHorizontalLayoutInsets.left = v8;
    self->_textFieldHorizontalLayoutInsets.bottom = 0.0;
    self->_textFieldHorizontalLayoutInsets.right = v8;
    v9 = [obj layoutForIconLocation:@"SBIconLocationAppLibrary"];
    appLibraryVisualConfiguration = [v9 appLibraryVisualConfiguration];
    v11 = appLibraryVisualConfiguration;
    if (!self->_inactiveSearchConfiguration)
    {
      standardSearchVisualConfiguration = [appLibraryVisualConfiguration standardSearchVisualConfiguration];
      inactiveSearchConfiguration = self->_inactiveSearchConfiguration;
      self->_inactiveSearchConfiguration = standardSearchVisualConfiguration;
    }

    activeSearchVisualConfiguration = [v11 activeSearchVisualConfiguration];
    activeSearchConfiguration = self->_activeSearchConfiguration;
    self->_activeSearchConfiguration = activeSearchVisualConfiguration;

    [(SBHSearchBar *)self setNeedsLayout];
    [(SBHSearchBar *)self layoutIfNeeded];

    v6 = obj;
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)setBackgroundViewBottomInsetToTextField:(double)field
{
  if (self->_backgroundViewBottomInsetToTextField != field)
  {
    self->_backgroundViewBottomInsetToTextField = field;
    [(SBHSearchBar *)self setNeedsLayout];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits forVisualConfiguration:(id)configuration
{
  height = fits.height;
  width = fits.width;
  configurationCopy = configuration;
  searchTextField = [(SBHSearchBar *)self searchTextField];
  [searchTextField effectiveLayoutSizeFittingSize:{width, height}];
  v10 = v9;

  [(SBHSearchBar *)self _performHeightCalculationForVisualConfiguration:configurationCopy];
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (CGSize)intrinsicContentSize
{
  searchTextField = [(SBHSearchBar *)self searchTextField];
  [searchTextField intrinsicContentSize];
  v5 = v4;

  _currentVisualConfiguration = [(SBHSearchBar *)self _currentVisualConfiguration];
  [(SBHSearchBar *)self _performHeightCalculationForVisualConfiguration:_currentVisualConfiguration];
  v8 = v7;

  v9 = v5;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  _currentVisualConfiguration = [(SBHSearchBar *)self _currentVisualConfiguration];
  [(SBHSearchBar *)self sizeThatFits:_currentVisualConfiguration forVisualConfiguration:width, height];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (BOOL)textFieldShouldBeginEditing:(id)editing
{
  delegate = [(SBHSearchBar *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ![delegate searchBarShouldBeginEditing:self])
  {
    v5 = 0;
  }

  else
  {
    v5 = 1;
    [(SBHSearchBar *)self setShowsCancelButton:1 animated:1];
  }

  return v5;
}

- (void)textFieldDidBeginEditing:(id)editing
{
  delegate = [(SBHSearchBar *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate searchBarTextDidBeginEditing:self];
  }
}

- (BOOL)textFieldShouldEndEditing:(id)editing
{
  delegate = [(SBHSearchBar *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [delegate searchBarShouldEndEditing:self];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)textFieldDidEndEditing:(id)editing
{
  delegate = [(SBHSearchBar *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate searchBarTextDidEndEditing:self];
  }
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  delegate = [(SBHSearchBar *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v10 = [delegate searchBar:self shouldChangeTextInRange:location replacementText:{length, stringCopy}];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (BOOL)textFieldShouldReturn:(id)return
{
  returnCopy = return;
  delegate = [(SBHSearchBar *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [delegate searchBarShouldReturn:self])
  {
    [returnCopy resignFirstResponder];
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_cancelButtonTapped:(id)tapped
{
  [(UISearchTextField *)self->_searchTextField setText:&stru_1F3D472A8];
  delegate = [(SBHSearchBar *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate searchBarCancelButtonClicked:self];
  }

  [(SBHSearchBar *)self setShowsCancelButton:0 animated:1];
}

- (void)_searchBarTextFieldDidChangeText:(id)text
{
  delegate = [(SBHSearchBar *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    text = [(UISearchTextField *)self->_searchTextField text];
    [delegate searchBar:self textDidChange:text];
  }
}

- (void)_invalidateIntrinsicContentSizeAndNotify
{
  [(SBHSearchBar *)self invalidateIntrinsicContentSize];
  delegate = [(SBHSearchBar *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate searchBarDidInvalidateIntrinsicContentSize:self];
  }
}

- (double)_performHeightCalculationForVisualConfiguration:(id)configuration
{
  configurationCopy = configuration;
  searchTextField = [(SBHSearchBar *)self searchTextField];
  [searchTextField intrinsicContentSize];
  v7 = v6;

  if ([(SBHSearchBar *)self isPortraitOrientation])
  {
    [configurationCopy textFieldPortraitLayoutInsets];
  }

  else
  {
    [configurationCopy textFieldLandscapeLayoutInsets];
  }

  v10 = v8;
  v11 = v9;

  return v11 + v7 + v10;
}

- (void)_updateCancelButtonFont
{
  v3 = MEMORY[0x1E69DD1B8];
  traitCollection = [(SBHSearchBar *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  v6 = UIContentSizeCategoryClip();
  v9 = [v3 traitCollectionWithPreferredContentSizeCategory:v6];

  v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] compatibleWithTraitCollection:v9];
  titleLabel = [(UIButton *)self->_cancelButton titleLabel];
  [titleLabel setFont:v7];

  [(UIButton *)self->_cancelButton sizeToFit];
}

- (SBIconListLayoutProvider)listLayoutProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_listLayoutProvider);

  return WeakRetained;
}

@end