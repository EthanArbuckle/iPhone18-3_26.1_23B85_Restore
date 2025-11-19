@interface _UIKeyShortcutHUDSearchBar
- (_UIKeyShortcutHUDSearchBar)initWithCoder:(id)a3;
- (_UIKeyShortcutHUDSearchBar)initWithFrame:(CGRect)a3;
- (_UIKeyShortcutHUDSearchBarDelegate)delegate;
- (void)_commonInit;
- (void)_createBackgroundView;
- (void)_createCancelButton;
- (void)_createSearchTextField;
- (void)_setupLayout;
- (void)_textChanged:(id)a3;
- (void)didCompleteSearchTransition;
- (void)prepareForSearchTransition:(BOOL)a3 usingCell:(id)a4;
- (void)setSearching:(BOOL)a3;
@end

@implementation _UIKeyShortcutHUDSearchBar

- (_UIKeyShortcutHUDSearchBar)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = _UIKeyShortcutHUDSearchBar;
  v3 = [(UIView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(_UIKeyShortcutHUDSearchBar *)v3 _commonInit];
  }

  return v4;
}

- (_UIKeyShortcutHUDSearchBar)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = _UIKeyShortcutHUDSearchBar;
  v3 = [(UIView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(_UIKeyShortcutHUDSearchBar *)v3 _commonInit];
  }

  return v4;
}

- (void)_commonInit
{
  [(_UIKeyShortcutHUDSearchBar *)self _createBackgroundView];
  [(_UIKeyShortcutHUDSearchBar *)self _createSearchTextField];
  [(_UIKeyShortcutHUDSearchBar *)self _createCancelButton];

  [(_UIKeyShortcutHUDSearchBar *)self _setupLayout];
}

- (void)_createBackgroundView
{
  v3 = objc_opt_new();
  backgroundView = self->_backgroundView;
  self->_backgroundView = v3;

  v5 = +[UIColor tertiarySystemFillColor];
  [(UIView *)self->_backgroundView setBackgroundColor:v5];

  v6 = +[UIKeyShortcutHUDMetrics currentMetrics];
  [v6 toolbarCellCornerRadius];
  v8 = v7;
  v9 = [(UIView *)self->_backgroundView layer];
  [v9 setCornerRadius:v8];

  v10 = *MEMORY[0x1E69796E8];
  v11 = [(UIView *)self->_backgroundView layer];
  [v11 setCornerCurve:v10];

  v12 = self->_backgroundView;

  [(UIView *)v12 setAlpha:0.0];
}

- (void)_createSearchTextField
{
  v3 = objc_opt_new();
  searchTextField = self->_searchTextField;
  self->_searchTextField = v3;

  [(UISearchTextField *)self->_searchTextField setBorderStyle:0];
  v5 = _UINSLocalizedStringWithDefaultValue(@"Search", @"Search");
  [(UITextField *)self->_searchTextField setPlaceholder:v5];

  v6 = +[UIKeyShortcutHUDMetrics currentMetrics];
  v7 = [v6 searchHUDTextColor];
  v8 = [(UITextField *)self->_searchTextField _placeholderLabel];
  [v8 setTextColor:v7];

  v9 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleBody"];
  [(UITextField *)self->_searchTextField setFont:v9];

  v10 = +[_UIKeyShortcutHUDUtilities sharedFocusGroupIdentifier];
  [(UIView *)self->_searchTextField setFocusGroupIdentifier:v10];

  [(UIView *)self->_searchTextField setAlpha:0.0];
  [(UITextField *)self->_searchTextField setLeftView:0];
  v14 = objc_opt_new();
  v11 = [_UIMenuLeafKeyCombination combinationWithModifierFlags:0x100000 keyEquivalent:@"?"];
  [v14 setWantsCompressedWidth:1];
  v12 = [_UIMenuLeafKeyboardShortcut shortcutWithBaseKeyCombination:v11];
  [v14 setShortcut:v12];

  v13 = +[UIKeyShortcutHUDMetrics currentMetrics];
  [v14 _configureWithHUDMetrics:v13];

  [(_UIKeyShortcutHUDSearchTextField *)self->_searchTextField setShortcutInputView:v14];
  [(UITextField *)self->_searchTextField setClearButtonMode:1];
  [(_UIKeyShortcutHUDSearchTextField *)self->_searchTextField setAutocapitalizationType:0];
  [(_UIKeyShortcutHUDSearchTextField *)self->_searchTextField setAutocorrectionType:1];
  [(_UIKeyShortcutHUDSearchTextField *)self->_searchTextField setKeyboardType:13];
  [(_UIKeyShortcutHUDSearchTextField *)self->_searchTextField setDisableInputBars:1];
  [(_UIKeyShortcutHUDSearchTextField *)self->_searchTextField setDisableHandwritingKeyboard:1];
  [(UISearchTextField *)self->_searchTextField addTarget:self action:sel__textChanged_ forControlEvents:0x20000];
}

- (void)_createCancelButton
{
  objc_initWeak(&location, self);
  v3 = _UINSLocalizedStringWithDefaultValue(@"Cancel", @"Cancel");
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __49___UIKeyShortcutHUDSearchBar__createCancelButton__block_invoke;
  v18 = &unk_1E70F7450;
  objc_copyWeak(&v19, &location);
  v4 = [UIAction actionWithTitle:v3 image:0 identifier:0 handler:&v15];
  v5 = [UIButton systemButtonWithPrimaryAction:v4, v15, v16, v17, v18];
  cancelButton = self->_cancelButton;
  self->_cancelButton = v5;

  v7 = +[UIKeyShortcutHUDMetrics currentMetrics];
  v8 = [v7 searchHUDTextColor];
  [(UIButton *)self->_cancelButton setTintColor:v8];

  v9 = +[UIKeyShortcutHUDMetrics currentMetrics];
  v10 = [v9 cancelButtonFont];
  v11 = [(UIButton *)self->_cancelButton titleLabel];
  [v11 setFont:v10];

  v12 = [(UIButton *)self->_cancelButton titleLabel];
  [v12 setAdjustsFontForContentSizeCategory:1];

  [(UIView *)self->_cancelButton setAlpha:0.0];
  LODWORD(v13) = 1148846080;
  [(UIView *)self->_cancelButton setContentHuggingPriority:0 forAxis:v13];
  LODWORD(v14) = 1148846080;
  [(UIView *)self->_cancelButton setContentCompressionResistancePriority:0 forAxis:v14];
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

- (void)_setupLayout
{
  v41[4] = *MEMORY[0x1E69E9840];
  [(UIView *)self->_backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_searchTextField setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_cancelButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self addSubview:self->_backgroundView];
  [(UIView *)self addSubview:self->_searchTextField];
  [(UIView *)self addSubview:self->_cancelButton];
  v3 = +[UIKeyShortcutHUDMetrics currentMetrics];
  [v3 toolbarContentInset];
  v5 = v4;

  v38 = [(UIView *)self->_searchTextField leadingAnchor];
  v36 = [(UIView *)self leadingAnchor];
  v34 = [v38 constraintEqualToAnchor:v36 constant:v5];
  v41[0] = v34;
  v32 = [(UIView *)self->_searchTextField topAnchor];
  v30 = [(UIView *)self topAnchor];
  v6 = [v32 constraintEqualToAnchor:v30 constant:v5];
  v41[1] = v6;
  v7 = [(UIView *)self->_searchTextField bottomAnchor];
  v8 = [(UIView *)self bottomAnchor];
  v9 = [v7 constraintEqualToAnchor:v8 constant:-v5];
  v41[2] = v9;
  v10 = [(UIView *)self->_cancelButton leadingAnchor];
  v11 = [(UIView *)self->_searchTextField trailingAnchor];
  v12 = [v10 constraintEqualToSystemSpacingAfterAnchor:v11 multiplier:2.0];
  v41[3] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:4];
  standardSearchTextFieldConstraints = self->_standardSearchTextFieldConstraints;
  self->_standardSearchTextFieldConstraints = v13;

  [MEMORY[0x1E69977A0] activateConstraints:self->_standardSearchTextFieldConstraints];
  v27 = MEMORY[0x1E69977A0];
  v39 = [(UIView *)self->_backgroundView leadingAnchor];
  v37 = [(UIView *)self->_searchTextField leadingAnchor];
  v35 = [v39 constraintEqualToAnchor:v37];
  v40[0] = v35;
  v33 = [(UIView *)self->_backgroundView topAnchor];
  v31 = [(UIView *)self->_searchTextField topAnchor];
  v29 = [v33 constraintEqualToAnchor:v31];
  v40[1] = v29;
  v28 = [(UIView *)self->_backgroundView trailingAnchor];
  v26 = [(UIView *)self->_searchTextField trailingAnchor];
  v25 = [v28 constraintEqualToAnchor:v26];
  v40[2] = v25;
  v15 = [(UIView *)self->_backgroundView bottomAnchor];
  v16 = [(UIView *)self->_searchTextField bottomAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];
  v40[3] = v17;
  v18 = [(UIView *)self trailingAnchor];
  v19 = [(UIView *)self->_cancelButton trailingAnchor];
  v20 = [v18 constraintEqualToSystemSpacingAfterAnchor:v19 multiplier:2.17];
  v40[4] = v20;
  v21 = [(UIView *)self centerYAnchor];
  v22 = [(UIView *)self->_cancelButton centerYAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:1.0];
  v40[5] = v23;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:6];
  [v27 activateConstraints:v24];
}

- (void)prepareForSearchTransition:(BOOL)a3 usingCell:(id)a4
{
  v31 = a3;
  v32[4] = *MEMORY[0x1E69E9840];
  v11 = a4;
  if (v11)
  {
    v12 = v11;
    [(UIView *)self->_backgroundView setAlpha:1.0];
  }

  else
  {
    self->_usingFallbackSearchAnimation = 1;
    v4 = [(_UIKeyShortcutHUDSearchBar *)self searchButton];
    v13 = [v4 collectionView];
    v14 = [(_UIKeyShortcutHUDSearchBar *)self searchButton];
    v5 = [v14 searchButtonIndexPath];
    v6 = [v5 indexPath];
    v12 = [v13 cellForItemAtIndexPath:v6];
  }

  v15 = 0.0;
  if ([(UIView *)self effectiveUserInterfaceLayoutDirection]== UIUserInterfaceLayoutDirectionRightToLeft)
  {
    v4 = +[UIKeyShortcutHUDMetrics currentMetrics];
    [v4 toolbarContentInset];
    v15 = v16;
  }

  if (v12)
  {
    v30 = [(_UIKeyShortcutHUDSearchBar *)self searchTextField];
    v17 = [v30 leadingAnchor];
    v28 = [v12 leadingAnchor];
    v29 = v17;
    v27 = [v17 constraintEqualToAnchor:v28 constant:v15];
    v32[0] = v27;
    v26 = [(_UIKeyShortcutHUDSearchBar *)self searchTextField];
    v18 = [v26 topAnchor];
    v24 = [v12 topAnchor];
    v25 = v18;
    v23 = [v18 constraintEqualToAnchor:v24];
    v32[1] = v23;
    v22 = [(_UIKeyShortcutHUDSearchBar *)self searchTextField];
    v19 = [v22 bottomAnchor];
    v5 = [v12 bottomAnchor];
    v21 = v19;
    v6 = [v19 constraintEqualToAnchor:v5];
    v32[2] = v6;
    v7 = [(_UIKeyShortcutHUDSearchBar *)self searchTextField];
    v8 = [v7 widthAnchor];
    v9 = [v12 widthAnchor];
    v4 = [v8 constraintEqualToAnchor:v9];
    v32[3] = v4;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:4];
  }

  else
  {
    v20 = MEMORY[0x1E695E0F0];
  }

  objc_storeStrong(&self->_searchTextFieldTransitionConstraints, v20);
  if (v12)
  {
  }

  if (v31)
  {
    [MEMORY[0x1E69977A0] deactivateConstraints:self->_standardSearchTextFieldConstraints];
    [MEMORY[0x1E69977A0] activateConstraints:self->_searchTextFieldTransitionConstraints];
    [(UIView *)self layoutIfNeeded];
  }
}

- (void)setSearching:(BOOL)a3
{
  if (self->_searching == a3)
  {
    return;
  }

  v13 = v9;
  v14 = v3;
  self->_searching = a3;
  if (a3)
  {
    [MEMORY[0x1E69977A0] deactivateConstraints:self->_searchTextFieldTransitionConstraints];
    [MEMORY[0x1E69977A0] activateConstraints:self->_standardSearchTextFieldConstraints];
    v12 = 1.0;
    [(UIView *)self->_searchTextField setAlpha:1.0];
    [(UIView *)self->_cancelButton setAlpha:1.0];
LABEL_5:
    [(UIView *)self->_backgroundView setAlpha:v12, v10, v13, v6, v5, v4, v14, v7];
    goto LABEL_6;
  }

  [MEMORY[0x1E69977A0] deactivateConstraints:self->_standardSearchTextFieldConstraints];
  [MEMORY[0x1E69977A0] activateConstraints:self->_searchTextFieldTransitionConstraints];
  v12 = 0.0;
  [(UIView *)self->_searchTextField setAlpha:0.0];
  [(UIView *)self->_cancelButton setAlpha:0.0];
  if (self->_usingFallbackSearchAnimation)
  {
    goto LABEL_5;
  }

LABEL_6:

  [(UIView *)self layoutIfNeeded];
}

- (void)didCompleteSearchTransition
{
  [MEMORY[0x1E69977A0] deactivateConstraints:self->_searchTextFieldTransitionConstraints];
  [MEMORY[0x1E69977A0] activateConstraints:self->_standardSearchTextFieldConstraints];
  searchTextFieldTransitionConstraints = self->_searchTextFieldTransitionConstraints;
  self->_searchTextFieldTransitionConstraints = 0;

  self->_usingFallbackSearchAnimation = 0;
  if (!self->_searching)
  {
    backgroundView = self->_backgroundView;

    [(UIView *)backgroundView setAlpha:0.0];
  }
}

- (void)_textChanged:(id)a3
{
  v4 = a3;
  v6 = [(_UIKeyShortcutHUDSearchBar *)self delegate];
  v5 = [v4 text];

  [v6 searchBar:self didUpdateSearchText:v5];
}

- (_UIKeyShortcutHUDSearchBarDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end