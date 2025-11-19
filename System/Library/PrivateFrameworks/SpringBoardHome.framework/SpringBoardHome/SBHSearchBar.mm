@interface SBHSearchBar
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (BOOL)textFieldShouldBeginEditing:(id)a3;
- (BOOL)textFieldShouldEndEditing:(id)a3;
- (BOOL)textFieldShouldReturn:(id)a3;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)sizeThatFits:(CGSize)a3 forVisualConfiguration:(id)a4;
- (SBHSearchBar)initWithFrame:(CGRect)a3;
- (SBHSearchBarDelegate)delegate;
- (SBIconListLayoutProvider)listLayoutProvider;
- (double)_performHeightCalculationForVisualConfiguration:(id)a3;
- (id)_currentVisualConfiguration;
- (void)_accessibilityBoldStatusDidChange:(id)a3;
- (void)_cancelButtonTapped:(id)a3;
- (void)_invalidateIntrinsicContentSizeAndNotify;
- (void)_preferredContentSizeCategoryDidChange;
- (void)_searchBarTextFieldDidChangeText:(id)a3;
- (void)_updateCancelButtonFont;
- (void)layoutSubviews;
- (void)setAlignsTextFieldOnPixelBoundaries:(BOOL)a3;
- (void)setBackgroundViewBottomInsetToTextField:(double)a3;
- (void)setInactiveSearchConfiguration:(id)a3;
- (void)setListLayoutProvider:(id)a3;
- (void)setPortraitOrientation:(BOOL)a3;
- (void)setSearchTextField:(id)a3;
- (void)setShowsCancelButton:(BOOL)a3 animated:(BOOL)a4;
- (void)textFieldDidBeginEditing:(id)a3;
- (void)textFieldDidEndEditing:(id)a3;
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
  v9 = [(SBHSearchBar *)self _currentVisualConfiguration];
  v10 = [(SBHSearchBar *)self window];
  v11 = [(SBHSearchBar *)self traitCollection];
  [v11 displayScale];

  v12 = [(SBHSearchBar *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v12 safeAreaInsetsForSearchBar:self];
  }

  else
  {
    [(SBHSearchBar *)self safeAreaInsets];
  }

  if ([(SBHSearchBar *)self isPortraitOrientation])
  {
    [v9 textFieldPortraitLayoutInsets];
  }

  else
  {
    [v9 textFieldLandscapeLayoutInsets];
  }

  UIEdgeInsetsAdd();
  v14 = v4 + v13;
  v16 = v6 + v15;
  v18 = v76 - (v13 + v17);
  v20 = v72 - (v15 + v19);
  [v9 textFieldWidth];
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
  v26 = [(SBHSearchBar *)self searchTextField];
  [v26 intrinsicContentSize];

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
    v44 = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
    v45 = v71 + textFieldCancelButtonSpacing;
    if (v44 == 1)
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
  v54 = [v53 matchMoveAnimationForFrame:v10 relativeToView:?];
  v55 = [(SBFFeatherBlurView *)self->_backgroundView layer];
  [v55 addAnimation:v54 forKey:@"SBHSearchBarMatchMoveAnimation"];

  [(UIButton *)self->_cancelButton frame];
  v80.origin.x = v75;
  v80.origin.y = v74;
  v80.size.width = v73;
  v80.size.height = rect;
  CGRectGetMidY(v80);
  LODWORD(v55) = self->_showsCancelButton;
  v56 = [*v43 userInterfaceLayoutDirection];
  if (v55 == 1)
  {
    v57 = v75 + v67;
    v58 = v74 + v68;
    v59 = v73 - (v67 + v65);
    v60 = rect - (v68 + v66);
    if (v56 == 1)
    {
      CGRectGetMinX(*&v57);
    }

    else
    {
      CGRectGetMaxX(*&v57);
    }
  }

  else if (v56 == 1)
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
  v3 = [(SBHSearchBar *)self showsCancelButton];
  v4 = &OBJC_IVAR___SBHSearchBar__inactiveSearchConfiguration;
  if (v3)
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

- (SBHSearchBar)initWithFrame:(CGRect)a3
{
  v27[1] = *MEMORY[0x1E69E9840];
  v26.receiver = self;
  v26.super_class = SBHSearchBar;
  v3 = [(SBHSearchBar *)&v26 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v11 = [MEMORY[0x1E696AD88] defaultCenter];
    [v11 addObserver:v3 selector:sel__accessibilityBoldStatusDidChange_ name:*MEMORY[0x1E69DD898] object:0];

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

    v18 = [MEMORY[0x1E696AD88] defaultCenter];
    [v18 addObserver:v3 selector:sel__searchBarTextFieldDidChangeText_ name:*MEMORY[0x1E69DE5C0] object:v3->_searchTextField];

    [(SBHSearchBar *)v3 addSubview:v3->_searchTextField];
    v19 = [MEMORY[0x1E69DC938] currentDevice];
    v20 = [v19 userInterfaceIdiom];

    v21 = 16.0;
    if ((v20 & 0xFFFFFFFFFFFFFFFBLL) == 1)
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

- (void)_accessibilityBoldStatusDidChange:(id)a3
{
  [(SBHSearchBar *)self _updateCancelButtonFont];
  [(SBHSearchBar *)self setNeedsLayout];

  [(SBHSearchBar *)self layoutIfNeeded];
}

- (void)setShowsCancelButton:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_showsCancelButton != a3)
  {
    v4 = a4;
    v7 = [MEMORY[0x1E69DD250] _isInAnimationBlock];
    [(SBHSearchBar *)self frame];
    v9 = v8;
    v11 = v10;
    [(SBHSearchBar *)self sizeThatFits:v8, v10];
    v13 = v12;
    v15 = v14;
    self->_showsCancelButton = a3;
    [(SBHSearchBar *)self sizeThatFits:v9, v11];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __46__SBHSearchBar_setShowsCancelButton_animated___block_invoke;
    v20[3] = &unk_1E808D638;
    v20[4] = self;
    v21 = a3;
    v20[5] = v13;
    v20[6] = v15;
    v20[7] = v16;
    v20[8] = v17;
    v18 = _Block_copy(v20);
    v19 = v18;
    if (v7 || !v4)
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

- (void)setSearchTextField:(id)a3
{
  v5 = a3;
  searchTextField = self->_searchTextField;
  if (searchTextField != v5)
  {
    v7 = v5;
    [(SBHSearchTextField *)searchTextField removeFromSuperview];
    objc_storeStrong(&self->_searchTextField, a3);
    [(SBHSearchBar *)self addSubview:self->_searchTextField];
    [(SBHSearchBar *)self setNeedsLayout];
    [(SBHSearchBar *)self _invalidateIntrinsicContentSizeAndNotify];
    searchTextField = [(SBHSearchBar *)self layoutIfNeeded];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](searchTextField, v5);
}

- (void)setInactiveSearchConfiguration:(id)a3
{
  v6 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [v6 copy];
    inactiveSearchConfiguration = self->_inactiveSearchConfiguration;
    self->_inactiveSearchConfiguration = v4;

    [(SBHSearchBar *)self setNeedsLayout];
    [(SBHSearchBar *)self _invalidateIntrinsicContentSizeAndNotify];
  }
}

- (void)setPortraitOrientation:(BOOL)a3
{
  if (self->_portraitOrientation != a3)
  {
    self->_portraitOrientation = a3;
    [(SBHSearchBar *)self setNeedsLayout];

    [(SBHSearchBar *)self _invalidateIntrinsicContentSizeAndNotify];
  }
}

- (void)setAlignsTextFieldOnPixelBoundaries:(BOOL)a3
{
  if (self->_alignsTextFieldOnPixelBoundaries != a3)
  {
    self->_alignsTextFieldOnPixelBoundaries = a3;
    [(SBHSearchBar *)self setNeedsLayout];
  }
}

- (void)setListLayoutProvider:(id)a3
{
  obj = a3;
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
    v10 = [v9 appLibraryVisualConfiguration];
    v11 = v10;
    if (!self->_inactiveSearchConfiguration)
    {
      v12 = [v10 standardSearchVisualConfiguration];
      inactiveSearchConfiguration = self->_inactiveSearchConfiguration;
      self->_inactiveSearchConfiguration = v12;
    }

    v14 = [v11 activeSearchVisualConfiguration];
    activeSearchConfiguration = self->_activeSearchConfiguration;
    self->_activeSearchConfiguration = v14;

    [(SBHSearchBar *)self setNeedsLayout];
    [(SBHSearchBar *)self layoutIfNeeded];

    v6 = obj;
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)setBackgroundViewBottomInsetToTextField:(double)a3
{
  if (self->_backgroundViewBottomInsetToTextField != a3)
  {
    self->_backgroundViewBottomInsetToTextField = a3;
    [(SBHSearchBar *)self setNeedsLayout];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3 forVisualConfiguration:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = [(SBHSearchBar *)self searchTextField];
  [v8 effectiveLayoutSizeFittingSize:{width, height}];
  v10 = v9;

  [(SBHSearchBar *)self _performHeightCalculationForVisualConfiguration:v7];
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (CGSize)intrinsicContentSize
{
  v3 = [(SBHSearchBar *)self searchTextField];
  [v3 intrinsicContentSize];
  v5 = v4;

  v6 = [(SBHSearchBar *)self _currentVisualConfiguration];
  [(SBHSearchBar *)self _performHeightCalculationForVisualConfiguration:v6];
  v8 = v7;

  v9 = v5;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(SBHSearchBar *)self _currentVisualConfiguration];
  [(SBHSearchBar *)self sizeThatFits:v6 forVisualConfiguration:width, height];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (BOOL)textFieldShouldBeginEditing:(id)a3
{
  v4 = [(SBHSearchBar *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ![v4 searchBarShouldBeginEditing:self])
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

- (void)textFieldDidBeginEditing:(id)a3
{
  v4 = [(SBHSearchBar *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 searchBarTextDidBeginEditing:self];
  }
}

- (BOOL)textFieldShouldEndEditing:(id)a3
{
  v4 = [(SBHSearchBar *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 searchBarShouldEndEditing:self];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)textFieldDidEndEditing:(id)a3
{
  v4 = [(SBHSearchBar *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 searchBarTextDidEndEditing:self];
  }
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v8 = a5;
  v9 = [(SBHSearchBar *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v10 = [v9 searchBar:self shouldChangeTextInRange:location replacementText:{length, v8}];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = a3;
  v5 = [(SBHSearchBar *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v5 searchBarShouldReturn:self])
  {
    [v4 resignFirstResponder];
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_cancelButtonTapped:(id)a3
{
  [(UISearchTextField *)self->_searchTextField setText:&stru_1F3D472A8];
  v4 = [(SBHSearchBar *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 searchBarCancelButtonClicked:self];
  }

  [(SBHSearchBar *)self setShowsCancelButton:0 animated:1];
}

- (void)_searchBarTextFieldDidChangeText:(id)a3
{
  v5 = [(SBHSearchBar *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(UISearchTextField *)self->_searchTextField text];
    [v5 searchBar:self textDidChange:v4];
  }
}

- (void)_invalidateIntrinsicContentSizeAndNotify
{
  [(SBHSearchBar *)self invalidateIntrinsicContentSize];
  v3 = [(SBHSearchBar *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 searchBarDidInvalidateIntrinsicContentSize:self];
  }
}

- (double)_performHeightCalculationForVisualConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(SBHSearchBar *)self searchTextField];
  [v5 intrinsicContentSize];
  v7 = v6;

  if ([(SBHSearchBar *)self isPortraitOrientation])
  {
    [v4 textFieldPortraitLayoutInsets];
  }

  else
  {
    [v4 textFieldLandscapeLayoutInsets];
  }

  v10 = v8;
  v11 = v9;

  return v11 + v7 + v10;
}

- (void)_updateCancelButtonFont
{
  v3 = MEMORY[0x1E69DD1B8];
  v4 = [(SBHSearchBar *)self traitCollection];
  v5 = [v4 preferredContentSizeCategory];
  v6 = UIContentSizeCategoryClip();
  v9 = [v3 traitCollectionWithPreferredContentSizeCategory:v6];

  v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] compatibleWithTraitCollection:v9];
  v8 = [(UIButton *)self->_cancelButton titleLabel];
  [v8 setFont:v7];

  [(UIButton *)self->_cancelButton sizeToFit];
}

- (SBIconListLayoutProvider)listLayoutProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_listLayoutProvider);

  return WeakRetained;
}

@end