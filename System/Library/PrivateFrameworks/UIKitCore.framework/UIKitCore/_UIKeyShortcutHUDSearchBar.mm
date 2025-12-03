@interface _UIKeyShortcutHUDSearchBar
- (_UIKeyShortcutHUDSearchBar)initWithCoder:(id)coder;
- (_UIKeyShortcutHUDSearchBar)initWithFrame:(CGRect)frame;
- (_UIKeyShortcutHUDSearchBarDelegate)delegate;
- (void)_commonInit;
- (void)_createBackgroundView;
- (void)_createCancelButton;
- (void)_createSearchTextField;
- (void)_setupLayout;
- (void)_textChanged:(id)changed;
- (void)didCompleteSearchTransition;
- (void)prepareForSearchTransition:(BOOL)transition usingCell:(id)cell;
- (void)setSearching:(BOOL)searching;
@end

@implementation _UIKeyShortcutHUDSearchBar

- (_UIKeyShortcutHUDSearchBar)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _UIKeyShortcutHUDSearchBar;
  v3 = [(UIView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(_UIKeyShortcutHUDSearchBar *)v3 _commonInit];
  }

  return v4;
}

- (_UIKeyShortcutHUDSearchBar)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = _UIKeyShortcutHUDSearchBar;
  v3 = [(UIView *)&v6 initWithCoder:coder];
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
  layer = [(UIView *)self->_backgroundView layer];
  [layer setCornerRadius:v8];

  v10 = *MEMORY[0x1E69796E8];
  layer2 = [(UIView *)self->_backgroundView layer];
  [layer2 setCornerCurve:v10];

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
  searchHUDTextColor = [v6 searchHUDTextColor];
  _placeholderLabel = [(UITextField *)self->_searchTextField _placeholderLabel];
  [_placeholderLabel setTextColor:searchHUDTextColor];

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
  searchHUDTextColor = [v7 searchHUDTextColor];
  [(UIButton *)self->_cancelButton setTintColor:searchHUDTextColor];

  v9 = +[UIKeyShortcutHUDMetrics currentMetrics];
  cancelButtonFont = [v9 cancelButtonFont];
  titleLabel = [(UIButton *)self->_cancelButton titleLabel];
  [titleLabel setFont:cancelButtonFont];

  titleLabel2 = [(UIButton *)self->_cancelButton titleLabel];
  [titleLabel2 setAdjustsFontForContentSizeCategory:1];

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

  leadingAnchor = [(UIView *)self->_searchTextField leadingAnchor];
  leadingAnchor2 = [(UIView *)self leadingAnchor];
  v34 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v5];
  v41[0] = v34;
  topAnchor = [(UIView *)self->_searchTextField topAnchor];
  topAnchor2 = [(UIView *)self topAnchor];
  v6 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v5];
  v41[1] = v6;
  bottomAnchor = [(UIView *)self->_searchTextField bottomAnchor];
  bottomAnchor2 = [(UIView *)self bottomAnchor];
  v9 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-v5];
  v41[2] = v9;
  leadingAnchor3 = [(UIView *)self->_cancelButton leadingAnchor];
  trailingAnchor = [(UIView *)self->_searchTextField trailingAnchor];
  v12 = [leadingAnchor3 constraintEqualToSystemSpacingAfterAnchor:trailingAnchor multiplier:2.0];
  v41[3] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:4];
  standardSearchTextFieldConstraints = self->_standardSearchTextFieldConstraints;
  self->_standardSearchTextFieldConstraints = v13;

  [MEMORY[0x1E69977A0] activateConstraints:self->_standardSearchTextFieldConstraints];
  v27 = MEMORY[0x1E69977A0];
  leadingAnchor4 = [(UIView *)self->_backgroundView leadingAnchor];
  leadingAnchor5 = [(UIView *)self->_searchTextField leadingAnchor];
  v35 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
  v40[0] = v35;
  topAnchor3 = [(UIView *)self->_backgroundView topAnchor];
  topAnchor4 = [(UIView *)self->_searchTextField topAnchor];
  v29 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v40[1] = v29;
  trailingAnchor2 = [(UIView *)self->_backgroundView trailingAnchor];
  trailingAnchor3 = [(UIView *)self->_searchTextField trailingAnchor];
  v25 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
  v40[2] = v25;
  bottomAnchor3 = [(UIView *)self->_backgroundView bottomAnchor];
  bottomAnchor4 = [(UIView *)self->_searchTextField bottomAnchor];
  v17 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v40[3] = v17;
  trailingAnchor4 = [(UIView *)self trailingAnchor];
  trailingAnchor5 = [(UIView *)self->_cancelButton trailingAnchor];
  v20 = [trailingAnchor4 constraintEqualToSystemSpacingAfterAnchor:trailingAnchor5 multiplier:2.17];
  v40[4] = v20;
  centerYAnchor = [(UIView *)self centerYAnchor];
  centerYAnchor2 = [(UIView *)self->_cancelButton centerYAnchor];
  v23 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2 constant:1.0];
  v40[5] = v23;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:6];
  [v27 activateConstraints:v24];
}

- (void)prepareForSearchTransition:(BOOL)transition usingCell:(id)cell
{
  transitionCopy = transition;
  v32[4] = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  if (cellCopy)
  {
    v12 = cellCopy;
    [(UIView *)self->_backgroundView setAlpha:1.0];
  }

  else
  {
    self->_usingFallbackSearchAnimation = 1;
    searchButton = [(_UIKeyShortcutHUDSearchBar *)self searchButton];
    collectionView = [searchButton collectionView];
    searchButton2 = [(_UIKeyShortcutHUDSearchBar *)self searchButton];
    searchButtonIndexPath = [searchButton2 searchButtonIndexPath];
    indexPath = [searchButtonIndexPath indexPath];
    v12 = [collectionView cellForItemAtIndexPath:indexPath];
  }

  v15 = 0.0;
  if ([(UIView *)self effectiveUserInterfaceLayoutDirection]== UIUserInterfaceLayoutDirectionRightToLeft)
  {
    searchButton = +[UIKeyShortcutHUDMetrics currentMetrics];
    [searchButton toolbarContentInset];
    v15 = v16;
  }

  if (v12)
  {
    searchTextField = [(_UIKeyShortcutHUDSearchBar *)self searchTextField];
    leadingAnchor = [searchTextField leadingAnchor];
    leadingAnchor2 = [v12 leadingAnchor];
    v29 = leadingAnchor;
    v27 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v15];
    v32[0] = v27;
    searchTextField2 = [(_UIKeyShortcutHUDSearchBar *)self searchTextField];
    topAnchor = [searchTextField2 topAnchor];
    topAnchor2 = [v12 topAnchor];
    v25 = topAnchor;
    v23 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v32[1] = v23;
    searchTextField3 = [(_UIKeyShortcutHUDSearchBar *)self searchTextField];
    bottomAnchor = [searchTextField3 bottomAnchor];
    searchButtonIndexPath = [v12 bottomAnchor];
    v21 = bottomAnchor;
    indexPath = [bottomAnchor constraintEqualToAnchor:searchButtonIndexPath];
    v32[2] = indexPath;
    searchTextField4 = [(_UIKeyShortcutHUDSearchBar *)self searchTextField];
    widthAnchor = [searchTextField4 widthAnchor];
    widthAnchor2 = [v12 widthAnchor];
    searchButton = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    v32[3] = searchButton;
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

  if (transitionCopy)
  {
    [MEMORY[0x1E69977A0] deactivateConstraints:self->_standardSearchTextFieldConstraints];
    [MEMORY[0x1E69977A0] activateConstraints:self->_searchTextFieldTransitionConstraints];
    [(UIView *)self layoutIfNeeded];
  }
}

- (void)setSearching:(BOOL)searching
{
  if (self->_searching == searching)
  {
    return;
  }

  v13 = v9;
  v14 = v3;
  self->_searching = searching;
  if (searching)
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

- (void)_textChanged:(id)changed
{
  changedCopy = changed;
  delegate = [(_UIKeyShortcutHUDSearchBar *)self delegate];
  text = [changedCopy text];

  [delegate searchBar:self didUpdateSearchText:text];
}

- (_UIKeyShortcutHUDSearchBarDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end