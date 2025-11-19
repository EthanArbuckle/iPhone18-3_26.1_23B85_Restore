@interface _UIKeyShortcutHUDShortcutCell
- (_UIKeyShortcutHUDShortcut)shortcut;
- (_UIKeyShortcutHUDShortcutCell)initWithFrame:(CGRect)a3;
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
- (void)configureWithShortcut:(id)a3;
@end

@implementation _UIKeyShortcutHUDShortcutCell

- (_UIKeyShortcutHUDShortcutCell)initWithFrame:(CGRect)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = _UIKeyShortcutHUDShortcutCell;
  v3 = [(_UIKeyShortcutHUDCell *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (void)configureWithShortcut:(id)a3
{
  v4 = a3;
  [(_UIKeyShortcutHUDShortcutCell *)self setShortcut:v4];
  v12 = [(_UIKeyShortcutHUDCell *)self defaultContentConfiguration];
  v5 = [v4 hudTitle];
  [v12 setText:v5];

  v6 = [v4 subtitle];
  [v12 setSecondaryText:v6];

  v7 = [v4 modifierFlags];
  v8 = [v4 input];

  v9 = [_UIMenuLeafKeyCombination combinationWithModifierFlags:v7 keyEquivalent:v8];

  v10 = [_UIMenuLeafKeyboardShortcut shortcutWithBaseKeyCombination:v9];
  v11 = [(_UIKeyShortcutHUDShortcutInputAccessoryView *)self->_shortcutInputAccessoryView shortcutInputView];
  [v11 setShortcut:v10];

  [(UICollectionViewCell *)self setContentConfiguration:v12];
}

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  v18.receiver = self;
  v18.super_class = _UIKeyShortcutHUDShortcutCell;
  v4 = [(UICollectionReusableView *)&v18 preferredLayoutAttributesFittingAttributes:a3];
  v5 = +[UIKeyShortcutHUDMetrics currentMetrics];
  [v4 size];
  v7 = v6;
  WeakRetained = objc_loadWeakRetained(&self->_shortcut);
  [v5 cellWidthForShortcut:WeakRetained];
  v10 = v9;

  [v4 setSize:{v10, v7}];
  if ([v5 shouldAlignShortcutModifiersAndInputInColumn])
  {
    v11 = [(_UIKeyShortcutHUDShortcutInputAccessoryView *)self->_shortcutInputAccessoryView shortcutInputView];
    v12 = objc_loadWeakRetained(&self->_shortcut);
    [v5 modifiersWidthForShortcut:v12];
    v14 = v13;
    v15 = objc_loadWeakRetained(&self->_shortcut);
    [v5 inputWidthForShortcut:v15];
    [v11 setModifiersWidth:v14 inputWidth:v16];
  }

  return v4;
}

- (_UIKeyShortcutHUDShortcut)shortcut
{
  WeakRetained = objc_loadWeakRetained(&self->_shortcut);

  return WeakRetained;
}

@end