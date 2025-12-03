@interface _UIKeyShortcutHUDShortcutCell
- (_UIKeyShortcutHUDShortcut)shortcut;
- (_UIKeyShortcutHUDShortcutCell)initWithFrame:(CGRect)frame;
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (void)configureWithShortcut:(id)shortcut;
@end

@implementation _UIKeyShortcutHUDShortcutCell

- (_UIKeyShortcutHUDShortcutCell)initWithFrame:(CGRect)frame
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = _UIKeyShortcutHUDShortcutCell;
  v3 = [(_UIKeyShortcutHUDCell *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_opt_new();
    shortcutInputAccessoryView = v3->_shortcutInputAccessoryView;
    v3->_shortcutInputAccessoryView = v4;

    v6 = [[UICellAccessoryCustomView alloc] initWithCustomView:v3->_shortcutInputAccessoryView placement:1];
    [(UICellAccessory *)v6 setReservedLayoutWidth:0.0];
    v10[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [(UICollectionViewListCell *)v3 setAccessories:v7];
  }

  return v3;
}

- (void)configureWithShortcut:(id)shortcut
{
  shortcutCopy = shortcut;
  [(_UIKeyShortcutHUDShortcutCell *)self setShortcut:shortcutCopy];
  defaultContentConfiguration = [(_UIKeyShortcutHUDCell *)self defaultContentConfiguration];
  hudTitle = [shortcutCopy hudTitle];
  [defaultContentConfiguration setText:hudTitle];

  subtitle = [shortcutCopy subtitle];
  [defaultContentConfiguration setSecondaryText:subtitle];

  modifierFlags = [shortcutCopy modifierFlags];
  input = [shortcutCopy input];

  v9 = [_UIMenuLeafKeyCombination combinationWithModifierFlags:modifierFlags keyEquivalent:input];

  v10 = [_UIMenuLeafKeyboardShortcut shortcutWithBaseKeyCombination:v9];
  shortcutInputView = [(_UIKeyShortcutHUDShortcutInputAccessoryView *)self->_shortcutInputAccessoryView shortcutInputView];
  [shortcutInputView setShortcut:v10];

  [(UICollectionViewCell *)self setContentConfiguration:defaultContentConfiguration];
}

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  v18.receiver = self;
  v18.super_class = _UIKeyShortcutHUDShortcutCell;
  v4 = [(UICollectionReusableView *)&v18 preferredLayoutAttributesFittingAttributes:attributes];
  v5 = +[UIKeyShortcutHUDMetrics currentMetrics];
  [v4 size];
  v7 = v6;
  WeakRetained = objc_loadWeakRetained(&self->_shortcut);
  [v5 cellWidthForShortcut:WeakRetained];
  v10 = v9;

  [v4 setSize:{v10, v7}];
  if ([v5 shouldAlignShortcutModifiersAndInputInColumn])
  {
    shortcutInputView = [(_UIKeyShortcutHUDShortcutInputAccessoryView *)self->_shortcutInputAccessoryView shortcutInputView];
    v12 = objc_loadWeakRetained(&self->_shortcut);
    [v5 modifiersWidthForShortcut:v12];
    v14 = v13;
    v15 = objc_loadWeakRetained(&self->_shortcut);
    [v5 inputWidthForShortcut:v15];
    [shortcutInputView setModifiersWidth:v14 inputWidth:v16];
  }

  return v4;
}

- (_UIKeyShortcutHUDShortcut)shortcut
{
  WeakRetained = objc_loadWeakRetained(&self->_shortcut);

  return WeakRetained;
}

@end