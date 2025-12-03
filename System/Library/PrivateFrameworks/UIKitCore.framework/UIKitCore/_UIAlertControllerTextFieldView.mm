@interface _UIAlertControllerTextFieldView
- (_UIAlertControllerTextFieldView)initWithFrame:(CGRect)frame;
- (double)_borderWidth;
- (id)_textFieldFont;
- (void)_loadConstraints;
- (void)dealloc;
- (void)setContainerView:(id)view;
@end

@implementation _UIAlertControllerTextFieldView

- (_UIAlertControllerTextFieldView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = _UIAlertControllerTextFieldView;
  v3 = [(UIView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(_UIAlertControllerTextField);
    textField = v3->_textField;
    v3->_textField = v4;

    [(_UIAlertControllerTextField *)v3->_textField setTextFieldView:v3];
    v6 = v3->_textField;
    _textFieldFont = [(_UIAlertControllerTextFieldView *)v3 _textFieldFont];
    [(UITextField *)v6 setFont:_textFieldFont];

    [(UIView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v3->_textField setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  return v3;
}

- (void)dealloc
{
  [(_UIAlertControllerTextField *)self->_textField setTextFieldView:0];
  v3.receiver = self;
  v3.super_class = _UIAlertControllerTextFieldView;
  [(UIView *)&v3 dealloc];
}

- (void)_loadConstraints
{
  if ([(NSArray *)self->_containerViewConstraints count])
  {
    [MEMORY[0x1E69977A0] deactivateConstraints:self->_containerViewConstraints];
    containerViewConstraints = self->_containerViewConstraints;
    self->_containerViewConstraints = 0;
  }

  containerView = self->_containerView;
  if (containerView)
  {
    [(UIView *)containerView setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = _NSDictionaryOfVariableBindings(&cfstr_TextfieldConta.isa, self->_textField, self->_containerView, 0);
    array = [MEMORY[0x1E695DF70] array];
    v6 = [MEMORY[0x1E69977A0] constraintsWithVisualFormat:@"H:|[_containerView]|" options:0 metrics:0 views:v10];
    [(NSArray *)array addObjectsFromArray:v6];

    v7 = [MEMORY[0x1E69977A0] constraintsWithVisualFormat:@"V:|[_containerView]|" options:0 metrics:0 views:v10];
    [(NSArray *)array addObjectsFromArray:v7];

    v8 = self->_containerViewConstraints;
    self->_containerViewConstraints = array;
    v9 = array;

    [MEMORY[0x1E69977A0] activateConstraints:self->_containerViewConstraints];
  }
}

- (double)_borderWidth
{
  if (_UISolariumEnabled())
  {
    return 0.0;
  }

  [(UIView *)self _currentScreenScale];

  UIRoundToViewScale(self);
  return result;
}

- (id)_textFieldFont
{
  v2 = _UISolariumEnabled();
  v3 = &UIFontTextStyleBody;
  if (!v2)
  {
    v3 = &UIFontTextStyleFootnote;
  }

  v4 = [off_1E70ECC20 preferredFontDescriptorWithTextStyle:*v3 addingSymbolicTraits:0 options:2];
  v5 = [off_1E70ECC18 fontWithDescriptor:v4 size:0.0];

  return v5;
}

- (void)setContainerView:(id)view
{
  viewCopy = view;
  [(UIView *)self->_containerView removeFromSuperview];
  containerView = self->_containerView;
  self->_containerView = viewCopy;
  v6 = viewCopy;

  [(UIView *)self addSubview:self->_containerView];

  [(_UIAlertControllerTextFieldView *)self _loadConstraints];
}

@end