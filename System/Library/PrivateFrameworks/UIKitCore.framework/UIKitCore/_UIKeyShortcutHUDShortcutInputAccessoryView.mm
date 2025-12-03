@interface _UIKeyShortcutHUDShortcutInputAccessoryView
- (_UIKeyShortcutHUDShortcutInputAccessoryView)initWithFrame:(CGRect)frame;
- (void)_commonInit;
@end

@implementation _UIKeyShortcutHUDShortcutInputAccessoryView

- (_UIKeyShortcutHUDShortcutInputAccessoryView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _UIKeyShortcutHUDShortcutInputAccessoryView;
  v3 = [(UIView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  leadingAnchor = [(UIView *)self->_shortcutInputView leadingAnchor];
  leadingAnchor2 = [(UIView *)self leadingAnchor];
  v8 = +[UIKeyShortcutHUDMetrics currentMetrics];
  [v8 minShortcutNameKeyCombinationSpacing];
  v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];
  v19[0] = v9;
  trailingAnchor = [(UIView *)self->_shortcutInputView trailingAnchor];
  trailingAnchor2 = [(UIView *)self trailingAnchor];
  v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v19[1] = v12;
  centerYAnchor = [(UIView *)self->_shortcutInputView centerYAnchor];
  centerYAnchor2 = [(UIView *)self centerYAnchor];
  v15 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v19[2] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:3];
  [v17 activateConstraints:v16];
}

@end