@interface WFSearchBar
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)sizeThatFits:(CGSize)a3 forVisualConfiguration:(id)a4;
- (WFSearchBar)initWithStyle:(unint64_t)a3;
- (WFSearchBarDelegate)delegate;
- (double)_performHeightCalculationForVisualConfiguration:(id)a3;
- (id)_currentVisualConfiguration;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_accessibilityBoldStatusDidChange:(id)a3;
- (void)_cancelButtonTapped:(id)a3;
- (void)_searchBarTextFieldDidChangeText:(id)a3;
- (void)_updateCancelButtonFont;
- (void)layoutSubviews;
- (void)reset;
- (void)setAlignsTextFieldOnPixelBoundaries:(BOOL)a3;
- (void)setInactiveSearchConfiguration:(id)a3;
- (void)setPortraitOrientation:(BOOL)a3;
- (void)setSearchTextField:(id)a3;
- (void)setShowsCancelButton:(BOOL)a3 animated:(BOOL)a4;
- (void)setTextFieldDefaultAlignmentBehavior:(int64_t)a3;
- (void)textFieldDidBeginEditing:(id)a3;
- (void)textFieldDidResignFirstResponder;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation WFSearchBar

- (WFSearchBarDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateCancelButtonFont
{
  v3 = MEMORY[0x277D75C80];
  v4 = [(WFSearchBar *)self traitCollection];
  v5 = [v4 preferredContentSizeCategory];
  v6 = UIContentSizeCategoryClip(v5, *MEMORY[0x277D76830], *MEMORY[0x277D767F0]);
  v12 = [v3 traitCollectionWithPreferredContentSizeCategory:v6];

  v7 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918] compatibleWithTraitCollection:v12];
  v8 = [(UIButton *)self->_cancelButton titleLabel];
  [v8 setFont:v7];

  [(UIButton *)self->_cancelButton sizeToFit];
  cancelButton = self->_cancelButton;
  v10 = [(WFSearchBar *)self traitCollection];
  if ([v10 userInterfaceStyle] == 2)
  {
    [MEMORY[0x277D75348] systemWhiteColor];
  }

  else
  {
    [MEMORY[0x277D75348] systemBlueColor];
  }
  v11 = ;
  [(UIButton *)cancelButton setTitleColor:v11 forState:0];
}

- (double)_performHeightCalculationForVisualConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(WFSearchBar *)self searchTextField];
  [v5 intrinsicContentSize];
  v7 = v6;

  if ([(WFSearchBar *)self isPortraitOrientation])
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

- (id)_currentVisualConfiguration
{
  v3 = [(WFSearchBar *)self showsCancelButton];
  v4 = &OBJC_IVAR___WFSearchBar__inactiveSearchConfiguration;
  if (v3)
  {
    v4 = &OBJC_IVAR___WFSearchBar__activeSearchConfiguration;
  }

  v5 = *(&self->super.super.super.isa + *v4);

  return v5;
}

- (void)textFieldDidResignFirstResponder
{
  v3 = [(UISearchTextField *)self->_searchTextField text];
  if (!v3 || (v4 = v3, -[UISearchTextField text](self->_searchTextField, "text"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 length], v5, v4, !v6))
  {

    [(WFSearchBar *)self setShowsCancelButton:0 animated:1];
  }
}

- (void)_searchBarTextFieldDidChangeText:(id)a3
{
  v5 = [(WFSearchBar *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(UISearchTextField *)self->_searchTextField text];
    [v5 searchBar:self textDidChange:v4];
  }
}

- (void)_cancelButtonTapped:(id)a3
{
  [(WFSearchBar *)self reset];
  v5 = [(WFSearchBar *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(UISearchTextField *)self->_searchTextField text];
    [v5 searchBar:self textDidChange:v4];
  }
}

- (void)textFieldDidBeginEditing:(id)a3
{
  v4 = [(WFSearchBar *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 searchBarDidBeginEditing:self];
  }
}

- (void)reset
{
  [(WFSearchTextField *)self->_searchTextField setTokens:MEMORY[0x277CBEBF8]];
  [(WFSearchTextField *)self->_searchTextField setText:&stru_2883A0E78];
  [(WFSearchBar *)self setNeedsLayout];
  [(WFSearchBar *)self layoutIfNeeded];
  v3 = [(WFSearchBar *)self searchTextField];
  [v3 resignFirstResponder];

  [(WFSearchBar *)self setShowsCancelButton:0 animated:1];
}

- (void)layoutSubviews
{
  v70.receiver = self;
  v70.super_class = WFSearchBar;
  [(WFSearchBar *)&v70 layoutSubviews];
  [(WFSearchBar *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(WFSearchBar *)self _currentVisualConfiguration];
  v12 = [(WFSearchBar *)self traitCollection];
  [v12 displayScale];
  v67 = v13;

  [(WFSearchBar *)self safeAreaInsets];
  if ([(WFSearchBar *)self isPortraitOrientation])
  {
    [v11 textFieldPortraitLayoutInsets];
  }

  else
  {
    [v11 textFieldLandscapeLayoutInsets];
  }

  UIEdgeInsetsAdd();
  v15 = v4 + v14;
  v17 = v6 + v16;
  v19 = v8 - (v14 + v18);
  v21 = v10 - (v16 + v20);
  [v11 textFieldWidth];
  v23 = v22;
  v24 = (v8 - v22) * 0.5;
  if (v23 > 0.0)
  {
    v19 = v23;
    v15 = v24;
  }

  [(UIButton *)self->_cancelButton frame];
  v66 = v25;
  v26 = [(WFSearchBar *)self searchTextField];
  [v26 intrinsicContentSize];

  textFieldCancelButtonSpacing = self->_textFieldCancelButtonSpacing;
  v27 = *MEMORY[0x277CBF348];
  v68 = *(MEMORY[0x277CBF348] + 8);
  if (self->_alignsTextFieldOnPixelBoundaries)
  {
    v55 = v67;
    UIRectCenteredIntegralRectScale();
  }

  else
  {
    UIRectCenteredRect();
  }

  v62 = v30;
  v63 = v28;
  v61 = v31;
  rect = v29;
  v56 = v15;
  v69 = v27;
  UIEdgeInsetsAdd();
  v59 = v33;
  v60 = v32;
  v57 = v35;
  v58 = v34;
  UIEdgeInsetsAdd();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v44 = MEMORY[0x277D76620];
  if (self->_showsCancelButton)
  {
    v45 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
    v46 = v66 + textFieldCancelButtonSpacing + self->_cancelButtonTrailingPadding;
    v47 = v69;
    if (v45 == 1)
    {
      v39 = v39 + v46;
    }

    else
    {
      v43 = v43 + v46;
    }
  }

  else
  {
    v47 = v69;
  }

  [(WFSearchTextField *)self->_searchTextField setBounds:v47, v68, v62 - (v39 + v43), v61 - (v37 + v41), v55];
  searchTextField = self->_searchTextField;
  UIRectGetCenter();
  [(WFSearchTextField *)searchTextField setCenter:?];
  [(UIButton *)self->_cancelButton frame];
  v71.origin.x = v63;
  v71.origin.y = rect;
  v71.size.width = v62;
  v71.size.height = v61;
  CGRectGetMidY(v71);
  LODWORD(searchTextField) = self->_showsCancelButton;
  v49 = [*v44 userInterfaceLayoutDirection];
  if (searchTextField == 1)
  {
    v50 = v63 + v59;
    v51 = rect + v60;
    v52 = v62 - (v59 + v57);
    v53 = v61 - (v60 + v58);
    if (v49 == 1)
    {
      CGRectGetMinX(*&v50);
    }

    else
    {
      CGRectGetMaxX(*&v50);
    }
  }

  else if (v49 == 1)
  {
    v72.origin.x = v63;
    v72.origin.y = rect;
    v72.size.width = v62;
    v72.size.height = v61;
    CGRectGetMinX(v72);
  }

  else
  {
    v73.origin.x = v56;
    v73.size.width = v19;
    v73.size.height = v21;
    v73.origin.y = v17;
    CGRectGetMaxX(v73);
  }

  UIRectIntegralWithScale();
  [(UIButton *)self->_cancelButton setBounds:v69, v68];
  cancelButton = self->_cancelButton;
  UIRectGetCenter();
  [(UIButton *)cancelButton setCenter:?];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(WFSearchBar *)self _currentVisualConfiguration];
  [(WFSearchBar *)self sizeThatFits:v6 forVisualConfiguration:width, height];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (CGSize)intrinsicContentSize
{
  v3 = [(WFSearchBar *)self searchTextField];
  [v3 intrinsicContentSize];
  v5 = v4;

  v6 = [(WFSearchBar *)self _currentVisualConfiguration];
  [(WFSearchBar *)self _performHeightCalculationForVisualConfiguration:v6];
  v8 = v7;

  v9 = v5;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3 forVisualConfiguration:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = [(WFSearchBar *)self searchTextField];
  [v8 sizeThatFits:{width, height}];
  v10 = v9;

  [(WFSearchBar *)self _performHeightCalculationForVisualConfiguration:v7];
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)setAlignsTextFieldOnPixelBoundaries:(BOOL)a3
{
  if (self->_alignsTextFieldOnPixelBoundaries != a3)
  {
    self->_alignsTextFieldOnPixelBoundaries = a3;
    [(WFSearchBar *)self setNeedsLayout];
  }
}

- (void)setPortraitOrientation:(BOOL)a3
{
  if (self->_portraitOrientation != a3)
  {
    self->_portraitOrientation = a3;
    [(WFSearchBar *)self setNeedsLayout];

    [(WFSearchBar *)self _invalidateIntrinsicContentSizeAndNotify];
  }
}

- (void)setInactiveSearchConfiguration:(id)a3
{
  v4 = a3;
  v5 = self->_inactiveSearchConfiguration;
  v6 = v4;
  v10 = v6;
  if (v5 == v6)
  {

    goto LABEL_9;
  }

  if (!v6 || !v5)
  {

    goto LABEL_8;
  }

  v7 = [v5 isEqual:v6];

  if ((v7 & 1) == 0)
  {
LABEL_8:
    v8 = [v10 copy];
    inactiveSearchConfiguration = self->_inactiveSearchConfiguration;
    self->_inactiveSearchConfiguration = v8;

    [(WFSearchBar *)self setNeedsLayout];
    [(WFSearchBar *)self _invalidateIntrinsicContentSizeAndNotify];
  }

LABEL_9:
}

- (void)setSearchTextField:(id)a3
{
  v5 = a3;
  searchTextField = self->_searchTextField;
  if (searchTextField != v5)
  {
    v7 = v5;
    [(WFSearchTextField *)searchTextField removeFromSuperview];
    objc_storeStrong(&self->_searchTextField, a3);
    [(WFSearchBar *)self addSubview:self->_searchTextField];
    [(WFSearchBar *)self setNeedsLayout];
    [(WFSearchBar *)self _invalidateIntrinsicContentSizeAndNotify];
    [(WFSearchBar *)self layoutIfNeeded];
    v5 = v7;
  }
}

- (void)setShowsCancelButton:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_showsCancelButton != a3)
  {
    v4 = a4;
    v5 = a3;
    v7 = [MEMORY[0x277D75D18] _isInAnimationBlock];
    [(WFSearchBar *)self bounds];
    v9 = v8;
    v11 = v10;
    [(WFSearchBar *)self sizeThatFits:v8, v10];
    v13 = v12;
    v15 = v14;
    self->_showsCancelButton = v5;
    [(WFSearchBar *)self sizeThatFits:v9, v11];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __45__WFSearchBar_setShowsCancelButton_animated___block_invoke;
    v24[3] = &unk_279EE7970;
    v24[4] = self;
    v25 = v5;
    v24[5] = v13;
    v24[6] = v15;
    v24[7] = v16;
    v24[8] = v17;
    v18 = _Block_copy(v24);
    v19 = v18;
    if (v7 || !v4)
    {
      (*(v18 + 2))(v18);
    }

    else
    {
      [MEMORY[0x277D75D18] _animateUsingDefaultTimingWithOptions:6 animations:v18 completion:0];
    }

    v20 = [(WFSearchBar *)self delegate];
    if (v5)
    {
      if (objc_opt_respondsToSelector())
      {
        [v20 searchBarCancelButtonWillAppear:self];
      }

      v21 = [(WFSearchBar *)self searchTextField];
      v22 = v21;
      v23 = 1;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        [v20 searchBarCancelButtonWillHide:self];
      }

      v22 = [(WFSearchBar *)self searchTextField];
      v23 = [(WFSearchBar *)self textFieldDefaultAlignmentBehavior];
      v21 = v22;
    }

    [v21 setAlignmentBehavior:v23 animated:1];
  }
}

uint64_t __45__WFSearchBar_setShowsCancelButton_animated___block_invoke(uint64_t a1, double a2)
{
  LOBYTE(a2) = *(a1 + 72);
  [*(*(a1 + 32) + 480) setAlpha:*&a2];
  [*(a1 + 32) setNeedsLayout];
  if (*(a1 + 40) != *(a1 + 56) || *(a1 + 48) != *(a1 + 64))
  {
    [*(a1 + 32) _invalidateIntrinsicContentSizeAndNotify];
  }

  v4 = *(a1 + 32);

  return [v4 layoutIfNeeded];
}

- (void)_accessibilityBoldStatusDidChange:(id)a3
{
  [(WFSearchBar *)self _updateCancelButtonFont];
  [(WFSearchBar *)self setNeedsLayout];

  [(WFSearchBar *)self layoutIfNeeded];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = WFSearchBar;
  [(WFSearchBar *)&v4 traitCollectionDidChange:a3];
  [(WFSearchBar *)self _updateCancelButtonFont];
  [(WFSearchBar *)self setNeedsLayout];
  [(WFSearchBar *)self layoutIfNeeded];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v9.receiver = self;
  v9.super_class = WFSearchBar;
  v5 = [(WFSearchBar *)&v9 hitTest:a4 withEvent:a3.x, a3.y];
  v6 = v5;
  if (v5 == self)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (void)setTextFieldDefaultAlignmentBehavior:(int64_t)a3
{
  self->_textFieldDefaultAlignmentBehavior = a3;
  v4 = [(WFSearchBar *)self searchTextField];
  [v4 setAlignmentBehavior:a3 animated:0];
}

- (WFSearchBar)initWithStyle:(unint64_t)a3
{
  v18.receiver = self;
  v18.super_class = WFSearchBar;
  v4 = [(WFSearchBar *)&v18 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v4)
  {
    v5 = [MEMORY[0x277D75220] buttonWithType:1];
    cancelButton = v4->_cancelButton;
    v4->_cancelButton = v5;

    v7 = v4->_cancelButton;
    v8 = WFLocalizedString(@"Cancel");
    [(UIButton *)v7 setTitle:v8 forState:0];

    [(UIButton *)v4->_cancelButton sizeToFit];
    [(UIButton *)v4->_cancelButton setAlpha:0.0];
    [(UIButton *)v4->_cancelButton addTarget:v4 action:sel__cancelButtonTapped_ forControlEvents:64];
    v9 = v4->_cancelButton;
    v10 = [MEMORY[0x277D75348] systemWhiteColor];
    [(UIButton *)v9 setTitleColor:v10 forState:0];

    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 addObserver:v4 selector:sel__accessibilityBoldStatusDidChange_ name:*MEMORY[0x277D76448] object:0];

    [(WFSearchBar *)v4 addSubview:v4->_cancelButton];
    [(WFSearchBar *)v4 _updateCancelButtonFont];
    v12 = [[WFSearchTextField alloc] initWithStyle:a3];
    searchTextField = v4->_searchTextField;
    v4->_searchTextField = v12;

    [(WFSearchTextField *)v4->_searchTextField setTextFieldDelegate:v4];
    [(UISearchTextField *)v4->_searchTextField setDelegate:v4];
    v14 = v4->_searchTextField;
    v15 = WFLocalizedString(@"Search Shortcuts");
    [(WFSearchTextField *)v14 setPlaceholder:v15];

    v16 = [MEMORY[0x277CCAB98] defaultCenter];
    [v16 addObserver:v4 selector:sel__searchBarTextFieldDidChangeText_ name:*MEMORY[0x277D770B0] object:v4->_searchTextField];

    [(WFSearchBar *)v4 addSubview:v4->_searchTextField];
    v4->_textFieldCancelButtonSpacing = 16.0;
    v4->_cancelButtonTrailingPadding = 0.0;
    v4->_alignsTextFieldOnPixelBoundaries = 1;
    v4->_portraitOrientation = 1;
    v4->_textFieldDefaultAlignmentBehavior = 0;
    [(WFSearchBar *)v4 setMaximumContentSizeCategory:*MEMORY[0x277D76808]];
    [(WFSearchBar *)v4 _setIgnoresLayerTransformForSafeAreaInsets:1];
  }

  return v4;
}

@end