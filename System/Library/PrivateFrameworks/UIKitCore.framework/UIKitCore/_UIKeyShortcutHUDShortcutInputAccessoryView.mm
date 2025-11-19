@interface _UIKeyShortcutHUDShortcutInputAccessoryView
- (_UIKeyShortcutHUDShortcutInputAccessoryView)initWithFrame:(CGRect)a3;
- (void)_commonInit;
@end

@implementation _UIKeyShortcutHUDShortcutInputAccessoryView

- (_UIKeyShortcutHUDShortcutInputAccessoryView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = _UIKeyShortcutHUDShortcutInputAccessoryView;
  v3 = [(UIView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(_UIKeyShortcutHUDShortcutInputAccessoryView *)v3 _commonInit];
  }

  return v4;
}

- (void)_commonInit
{
  v19[3] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  shortcutInputView = self->_shortcutInputView;
  self->_shortcutInputView = v3;

  v5 = self->_shortcutInputView;
  v6 = +[UIKeyShortcutHUDMetrics currentMetrics];
  [(_UIKeyboardShortcutView *)v5 _configureWithHUDMetrics:v6];

  [(UIView *)self->_shortcutInputView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self addSubview:self->_shortcutInputView];
  v17 = MEMORY[0x1E69977A0];
  v18 = [(UIView *)self->_shortcutInputView leadingAnchor];
  v7 = [(UIView *)self leadingAnchor];
  v8 = +[UIKeyShortcutHUDMetrics currentMetrics];
  [v8 minShortcutNameKeyCombinationSpacing];
  v9 = [v18 constraintEqualToAnchor:v7 constant:?];
  v19[0] = v9;
  v10 = [(UIView *)self->_shortcutInputView trailingAnchor];
  v11 = [(UIView *)self trailingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  v19[1] = v12;
  v13 = [(UIView *)self->_shortcutInputView centerYAnchor];
  v14 = [(UIView *)self centerYAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  v19[2] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:3];
  [v17 activateConstraints:v16];
}

@end