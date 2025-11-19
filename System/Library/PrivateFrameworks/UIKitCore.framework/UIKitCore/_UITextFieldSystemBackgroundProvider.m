@interface _UITextFieldSystemBackgroundProvider
+ (id)systemStyleMetricsProvider;
- (Class)systemBackgroundViewClass;
- (id)backgroundView;
- (id)overridingSetBackgroundColor:(id)a3;
- (void)_buildDescription:(id)a3;
- (void)addToTextField:(id)a3;
- (void)enabledDidChangeAnimated:(BOOL)a3;
- (void)removeFromTextField;
@end

@implementation _UITextFieldSystemBackgroundProvider

- (id)backgroundView
{
  systemBackgroundView = self->_systemBackgroundView;
  if (!systemBackgroundView)
  {
    v4 = [(_UITextFieldBackgroundProvider *)self textField];
    v5 = [v4 isEditing];

    v6 = objc_alloc([(_UITextFieldSystemBackgroundProvider *)self systemBackgroundViewClass]);
    v7 = [v6 initWithFrame:v5 active:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v8 = self->_systemBackgroundView;
    self->_systemBackgroundView = v7;

    systemBackgroundView = self->_systemBackgroundView;
  }

  return systemBackgroundView;
}

- (Class)systemBackgroundViewClass
{
  v2 = [(_UITextFieldBackgroundProvider *)self textField];
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
    v3 = [(_UITextFieldBackgroundProvider *)self textField];
    v4 = [(UITextFieldBackgroundView *)self->_systemBackgroundView fillColor];
    [v3 _setBackgroundColor:v4];
  }

  v5.receiver = self;
  v5.super_class = _UITextFieldSystemBackgroundProvider;
  [(_UITextFieldViewBackgroundProvider *)&v5 removeFromTextField];
}

- (void)addToTextField:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _UITextFieldSystemBackgroundProvider;
  [(_UITextFieldViewBackgroundProvider *)&v7 addToTextField:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 _roundedRectBackgroundCornerRadius];
    [(UITextFieldBackgroundView *)self->_systemBackgroundView setCornerRadius:?];
  }

  v5 = [v4 backgroundColor];
  v6 = [(_UITextFieldSystemBackgroundProvider *)self overridingSetBackgroundColor:v5];
  [v4 _setBackgroundColor:v6];
}

- (id)overridingSetBackgroundColor:(id)a3
{
  v4 = a3;
  systemBackgroundView = self->_systemBackgroundView;
  if (systemBackgroundView)
  {
    [(UITextFieldBackgroundView *)systemBackgroundView setFillColor:v4];
    v6 = 0;
  }

  else
  {
    v6 = v4;
  }

  return v6;
}

- (void)enabledDidChangeAnimated:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = _UITextFieldSystemBackgroundProvider;
  [(_UITextFieldBackgroundProvider *)&v7 enabledDidChangeAnimated:?];
  systemBackgroundView = self->_systemBackgroundView;
  v6 = [(_UITextFieldBackgroundProvider *)self textField];
  -[UITextFieldBackgroundView setEnabled:animated:](systemBackgroundView, "setEnabled:animated:", [v6 isEnabled], v3);

  [(_UITextFieldViewBackgroundProvider *)self layoutIfNeeded];
}

- (void)_buildDescription:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _UITextFieldSystemBackgroundProvider;
  [(_UITextFieldViewBackgroundProvider *)&v7 _buildDescription:v4];
  v5 = [(UITextFieldBackgroundView *)self->_systemBackgroundView fillColor];
  v6 = [v4 appendName:@"fillColor" object:v5];
}

@end