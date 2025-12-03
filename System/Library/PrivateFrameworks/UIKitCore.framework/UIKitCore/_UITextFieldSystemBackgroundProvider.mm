@interface _UITextFieldSystemBackgroundProvider
+ (id)systemStyleMetricsProvider;
- (Class)systemBackgroundViewClass;
- (id)backgroundView;
- (id)overridingSetBackgroundColor:(id)color;
- (void)_buildDescription:(id)description;
- (void)addToTextField:(id)field;
- (void)enabledDidChangeAnimated:(BOOL)animated;
- (void)removeFromTextField;
@end

@implementation _UITextFieldSystemBackgroundProvider

- (id)backgroundView
{
  systemBackgroundView = self->_systemBackgroundView;
  if (!systemBackgroundView)
  {
    textField = [(_UITextFieldBackgroundProvider *)self textField];
    isEditing = [textField isEditing];

    v6 = objc_alloc([(_UITextFieldSystemBackgroundProvider *)self systemBackgroundViewClass]);
    v7 = [v6 initWithFrame:isEditing active:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v8 = self->_systemBackgroundView;
    self->_systemBackgroundView = v7;

    systemBackgroundView = self->_systemBackgroundView;
  }

  return systemBackgroundView;
}

- (Class)systemBackgroundViewClass
{
  textField = [(_UITextFieldBackgroundProvider *)self textField];
  v3 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (_UISolariumEnabled() && (isKindOfClass & 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = objc_opt_self();
  }

  return v5;
}

+ (id)systemStyleMetricsProvider
{
  v2 = [[_UITextFieldPaddedMetricsProvider alloc] initWithSymmetricalPadding:7.0, 2.0];
  [(_UITextFieldPaddedMetricsProvider *)v2 setMinimumIntrinsicHeight:30.0];

  return v2;
}

- (void)removeFromTextField
{
  if (self->_systemBackgroundView)
  {
    textField = [(_UITextFieldBackgroundProvider *)self textField];
    fillColor = [(UITextFieldBackgroundView *)self->_systemBackgroundView fillColor];
    [textField _setBackgroundColor:fillColor];
  }

  v5.receiver = self;
  v5.super_class = _UITextFieldSystemBackgroundProvider;
  [(_UITextFieldViewBackgroundProvider *)&v5 removeFromTextField];
}

- (void)addToTextField:(id)field
{
  fieldCopy = field;
  v7.receiver = self;
  v7.super_class = _UITextFieldSystemBackgroundProvider;
  [(_UITextFieldViewBackgroundProvider *)&v7 addToTextField:fieldCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [fieldCopy _roundedRectBackgroundCornerRadius];
    [(UITextFieldBackgroundView *)self->_systemBackgroundView setCornerRadius:?];
  }

  backgroundColor = [fieldCopy backgroundColor];
  v6 = [(_UITextFieldSystemBackgroundProvider *)self overridingSetBackgroundColor:backgroundColor];
  [fieldCopy _setBackgroundColor:v6];
}

- (id)overridingSetBackgroundColor:(id)color
{
  colorCopy = color;
  systemBackgroundView = self->_systemBackgroundView;
  if (systemBackgroundView)
  {
    [(UITextFieldBackgroundView *)systemBackgroundView setFillColor:colorCopy];
    v6 = 0;
  }

  else
  {
    v6 = colorCopy;
  }

  return v6;
}

- (void)enabledDidChangeAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v7.receiver = self;
  v7.super_class = _UITextFieldSystemBackgroundProvider;
  [(_UITextFieldBackgroundProvider *)&v7 enabledDidChangeAnimated:?];
  systemBackgroundView = self->_systemBackgroundView;
  textField = [(_UITextFieldBackgroundProvider *)self textField];
  -[UITextFieldBackgroundView setEnabled:animated:](systemBackgroundView, "setEnabled:animated:", [textField isEnabled], animatedCopy);

  [(_UITextFieldViewBackgroundProvider *)self layoutIfNeeded];
}

- (void)_buildDescription:(id)description
{
  descriptionCopy = description;
  v7.receiver = self;
  v7.super_class = _UITextFieldSystemBackgroundProvider;
  [(_UITextFieldViewBackgroundProvider *)&v7 _buildDescription:descriptionCopy];
  fillColor = [(UITextFieldBackgroundView *)self->_systemBackgroundView fillColor];
  v6 = [descriptionCopy appendName:@"fillColor" object:fillColor];
}

@end