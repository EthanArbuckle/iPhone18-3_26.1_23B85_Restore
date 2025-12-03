@interface WFSearchBar
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)sizeThatFits:(CGSize)fits forVisualConfiguration:(id)configuration;
- (WFSearchBar)initWithStyle:(unint64_t)style;
- (WFSearchBarDelegate)delegate;
- (double)_performHeightCalculationForVisualConfiguration:(id)configuration;
- (id)_currentVisualConfiguration;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_accessibilityBoldStatusDidChange:(id)change;
- (void)_cancelButtonTapped:(id)tapped;
- (void)_searchBarTextFieldDidChangeText:(id)text;
- (void)_updateCancelButtonFont;
- (void)layoutSubviews;
- (void)reset;
- (void)setAlignsTextFieldOnPixelBoundaries:(BOOL)boundaries;
- (void)setInactiveSearchConfiguration:(id)configuration;
- (void)setPortraitOrientation:(BOOL)orientation;
- (void)setSearchTextField:(id)field;
- (void)setShowsCancelButton:(BOOL)button animated:(BOOL)animated;
- (void)setTextFieldDefaultAlignmentBehavior:(int64_t)behavior;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidResignFirstResponder;
- (void)traitCollectionDidChange:(id)change;
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
  traitCollection = [(WFSearchBar *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  v6 = UIContentSizeCategoryClip(preferredContentSizeCategory, *MEMORY[0x277D76830], *MEMORY[0x277D767F0]);
  v12 = [v3 traitCollectionWithPreferredContentSizeCategory:v6];

  v7 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918] compatibleWithTraitCollection:v12];
  titleLabel = [(UIButton *)self->_cancelButton titleLabel];
  [titleLabel setFont:v7];

  [(UIButton *)self->_cancelButton sizeToFit];
  cancelButton = self->_cancelButton;
  traitCollection2 = [(WFSearchBar *)self traitCollection];
  if ([traitCollection2 userInterfaceStyle] == 2)
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

- (double)_performHeightCalculationForVisualConfiguration:(id)configuration
{
  configurationCopy = configuration;
  searchTextField = [(WFSearchBar *)self searchTextField];
  [searchTextField intrinsicContentSize];
  v7 = v6;

  if ([(WFSearchBar *)self isPortraitOrientation])
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

- (id)_currentVisualConfiguration
{
  showsCancelButton = [(WFSearchBar *)self showsCancelButton];
  v4 = &OBJC_IVAR___WFSearchBar__inactiveSearchConfiguration;
  if (showsCancelButton)
  {
    v4 = &OBJC_IVAR___WFSearchBar__activeSearchConfiguration;
  }

  v5 = *(&self->super.super.super.isa + *v4);

  return v5;
}

- (void)textFieldDidResignFirstResponder
{
  text = [(UISearchTextField *)self->_searchTextField text];
  if (!text || (v4 = text, -[UISearchTextField text](self->_searchTextField, "text"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 length], v5, v4, !v6))
  {

    [(WFSearchBar *)self setShowsCancelButton:0 animated:1];
  }
}

- (void)_searchBarTextFieldDidChangeText:(id)text
{
  delegate = [(WFSearchBar *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    text = [(UISearchTextField *)self->_searchTextField text];
    [delegate searchBar:self textDidChange:text];
  }
}

- (void)_cancelButtonTapped:(id)tapped
{
  [(WFSearchBar *)self reset];
  delegate = [(WFSearchBar *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    text = [(UISearchTextField *)self->_searchTextField text];
    [delegate searchBar:self textDidChange:text];
  }
}

- (void)textFieldDidBeginEditing:(id)editing
{
  delegate = [(WFSearchBar *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate searchBarDidBeginEditing:self];
  }
}

- (void)reset
{
  [(WFSearchTextField *)self->_searchTextField setTokens:MEMORY[0x277CBEBF8]];
  [(WFSearchTextField *)self->_searchTextField setText:&stru_2883A0E78];
  [(WFSearchBar *)self setNeedsLayout];
  [(WFSearchBar *)self layoutIfNeeded];
  searchTextField = [(WFSearchBar *)self searchTextField];
  [searchTextField resignFirstResponder];

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
  _currentVisualConfiguration = [(WFSearchBar *)self _currentVisualConfiguration];
  traitCollection = [(WFSearchBar *)self traitCollection];
  [traitCollection displayScale];
  v67 = v13;

  [(WFSearchBar *)self safeAreaInsets];
  if ([(WFSearchBar *)self isPortraitOrientation])
  {
    [_currentVisualConfiguration textFieldPortraitLayoutInsets];
  }

  else
  {
    [_currentVisualConfiguration textFieldLandscapeLayoutInsets];
  }

  UIEdgeInsetsAdd();
  v15 = v4 + v14;
  v17 = v6 + v16;
  v19 = v8 - (v14 + v18);
  v21 = v10 - (v16 + v20);
  [_currentVisualConfiguration textFieldWidth];
  v23 = v22;
  v24 = (v8 - v22) * 0.5;
  if (v23 > 0.0)
  {
    v19 = v23;
    v15 = v24;
  }

  [(UIButton *)self->_cancelButton frame];
  v66 = v25;
  searchTextField = [(WFSearchBar *)self searchTextField];
  [searchTextField intrinsicContentSize];

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
    userInterfaceLayoutDirection = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
    v46 = v66 + textFieldCancelButtonSpacing + self->_cancelButtonTrailingPadding;
    v47 = v69;
    if (userInterfaceLayoutDirection == 1)
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
  userInterfaceLayoutDirection2 = [*v44 userInterfaceLayoutDirection];
  if (searchTextField == 1)
  {
    v50 = v63 + v59;
    v51 = rect + v60;
    v52 = v62 - (v59 + v57);
    v53 = v61 - (v60 + v58);
    if (userInterfaceLayoutDirection2 == 1)
    {
      CGRectGetMinX(*&v50);
    }

    else
    {
      CGRectGetMaxX(*&v50);
    }
  }

  else if (userInterfaceLayoutDirection2 == 1)
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  _currentVisualConfiguration = [(WFSearchBar *)self _currentVisualConfiguration];
  [(WFSearchBar *)self sizeThatFits:_currentVisualConfiguration forVisualConfiguration:width, height];
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
  searchTextField = [(WFSearchBar *)self searchTextField];
  [searchTextField intrinsicContentSize];
  v5 = v4;

  _currentVisualConfiguration = [(WFSearchBar *)self _currentVisualConfiguration];
  [(WFSearchBar *)self _performHeightCalculationForVisualConfiguration:_currentVisualConfiguration];
  v8 = v7;

  v9 = v5;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits forVisualConfiguration:(id)configuration
{
  height = fits.height;
  width = fits.width;
  configurationCopy = configuration;
  searchTextField = [(WFSearchBar *)self searchTextField];
  [searchTextField sizeThatFits:{width, height}];
  v10 = v9;

  [(WFSearchBar *)self _performHeightCalculationForVisualConfiguration:configurationCopy];
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)setAlignsTextFieldOnPixelBoundaries:(BOOL)boundaries
{
  if (self->_alignsTextFieldOnPixelBoundaries != boundaries)
  {
    self->_alignsTextFieldOnPixelBoundaries = boundaries;
    [(WFSearchBar *)self setNeedsLayout];
  }
}

- (void)setPortraitOrientation:(BOOL)orientation
{
  if (self->_portraitOrientation != orientation)
  {
    self->_portraitOrientation = orientation;
    [(WFSearchBar *)self setNeedsLayout];

    [(WFSearchBar *)self _invalidateIntrinsicContentSizeAndNotify];
  }
}

- (void)setInactiveSearchConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = self->_inactiveSearchConfiguration;
  v6 = configurationCopy;
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

- (void)setSearchTextField:(id)field
{
  fieldCopy = field;
  searchTextField = self->_searchTextField;
  if (searchTextField != fieldCopy)
  {
    v7 = fieldCopy;
    [(WFSearchTextField *)searchTextField removeFromSuperview];
    objc_storeStrong(&self->_searchTextField, field);
    [(WFSearchBar *)self addSubview:self->_searchTextField];
    [(WFSearchBar *)self setNeedsLayout];
    [(WFSearchBar *)self _invalidateIntrinsicContentSizeAndNotify];
    [(WFSearchBar *)self layoutIfNeeded];
    fieldCopy = v7;
  }
}

- (void)setShowsCancelButton:(BOOL)button animated:(BOOL)animated
{
  if (self->_showsCancelButton != button)
  {
    animatedCopy = animated;
    buttonCopy = button;
    _isInAnimationBlock = [MEMORY[0x277D75D18] _isInAnimationBlock];
    [(WFSearchBar *)self bounds];
    v9 = v8;
    v11 = v10;
    [(WFSearchBar *)self sizeThatFits:v8, v10];
    v13 = v12;
    v15 = v14;
    self->_showsCancelButton = buttonCopy;
    [(WFSearchBar *)self sizeThatFits:v9, v11];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __45__WFSearchBar_setShowsCancelButton_animated___block_invoke;
    v24[3] = &unk_279EE7970;
    v24[4] = self;
    v25 = buttonCopy;
    v24[5] = v13;
    v24[6] = v15;
    v24[7] = v16;
    v24[8] = v17;
    v18 = _Block_copy(v24);
    v19 = v18;
    if (_isInAnimationBlock || !animatedCopy)
    {
      (*(v18 + 2))(v18);
    }

    else
    {
      [MEMORY[0x277D75D18] _animateUsingDefaultTimingWithOptions:6 animations:v18 completion:0];
    }

    delegate = [(WFSearchBar *)self delegate];
    if (buttonCopy)
    {
      if (objc_opt_respondsToSelector())
      {
        [delegate searchBarCancelButtonWillAppear:self];
      }

      searchTextField = [(WFSearchBar *)self searchTextField];
      searchTextField2 = searchTextField;
      textFieldDefaultAlignmentBehavior = 1;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        [delegate searchBarCancelButtonWillHide:self];
      }

      searchTextField2 = [(WFSearchBar *)self searchTextField];
      textFieldDefaultAlignmentBehavior = [(WFSearchBar *)self textFieldDefaultAlignmentBehavior];
      searchTextField = searchTextField2;
    }

    [searchTextField setAlignmentBehavior:textFieldDefaultAlignmentBehavior animated:1];
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

- (void)_accessibilityBoldStatusDidChange:(id)change
{
  [(WFSearchBar *)self _updateCancelButtonFont];
  [(WFSearchBar *)self setNeedsLayout];

  [(WFSearchBar *)self layoutIfNeeded];
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = WFSearchBar;
  [(WFSearchBar *)&v4 traitCollectionDidChange:change];
  [(WFSearchBar *)self _updateCancelButtonFont];
  [(WFSearchBar *)self setNeedsLayout];
  [(WFSearchBar *)self layoutIfNeeded];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = WFSearchBar;
  v5 = [(WFSearchBar *)&v9 hitTest:event withEvent:test.x, test.y];
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

- (void)setTextFieldDefaultAlignmentBehavior:(int64_t)behavior
{
  self->_textFieldDefaultAlignmentBehavior = behavior;
  searchTextField = [(WFSearchBar *)self searchTextField];
  [searchTextField setAlignmentBehavior:behavior animated:0];
}

- (WFSearchBar)initWithStyle:(unint64_t)style
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
    systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
    [(UIButton *)v9 setTitleColor:systemWhiteColor forState:0];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__accessibilityBoldStatusDidChange_ name:*MEMORY[0x277D76448] object:0];

    [(WFSearchBar *)v4 addSubview:v4->_cancelButton];
    [(WFSearchBar *)v4 _updateCancelButtonFont];
    v12 = [[WFSearchTextField alloc] initWithStyle:style];
    searchTextField = v4->_searchTextField;
    v4->_searchTextField = v12;

    [(WFSearchTextField *)v4->_searchTextField setTextFieldDelegate:v4];
    [(UISearchTextField *)v4->_searchTextField setDelegate:v4];
    v14 = v4->_searchTextField;
    v15 = WFLocalizedString(@"Search Shortcuts");
    [(WFSearchTextField *)v14 setPlaceholder:v15];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v4 selector:sel__searchBarTextFieldDidChangeText_ name:*MEMORY[0x277D770B0] object:v4->_searchTextField];

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