@interface _UITextFieldViewBackgroundProvider
- (BOOL)hitTestView:(id)a3;
- (UIView)backgroundView;
- (id)overridingSetBackgroundColor:(id)a3;
- (void)_buildDescription:(id)a3;
- (void)addToTextField:(id)a3;
- (void)didChangeFirstResponder;
- (void)layoutIfNeeded;
- (void)populateArchivedSubviews:(id)a3;
- (void)removeFromTextField;
- (void)setNeedsDisplay;
@end

@implementation _UITextFieldViewBackgroundProvider

- (void)setNeedsDisplay
{
  v4.receiver = self;
  v4.super_class = _UITextFieldViewBackgroundProvider;
  [(_UITextFieldBackgroundProvider *)&v4 setNeedsDisplay];
  v3 = [(_UITextFieldViewBackgroundProvider *)self backgroundView];
  [v3 setNeedsDisplay];
}

- (void)layoutIfNeeded
{
  v8.receiver = self;
  v8.super_class = _UITextFieldViewBackgroundProvider;
  [(_UITextFieldBackgroundProvider *)&v8 layoutIfNeeded];
  v3 = [(_UITextFieldBackgroundProvider *)self textField];
  v4 = [(_UITextFieldViewBackgroundProvider *)self backgroundView];
  [v3 _backgroundBounds];
  [v4 setFrame:?];
  [v4 _continuousCornerRadius];
  v6 = v5;
  v7 = [v3 _backgroundCoverView];
  [v7 _setContinuousCornerRadius:v6];
}

- (void)removeFromTextField
{
  v3 = [(_UITextFieldViewBackgroundProvider *)self backgroundView];
  [v3 removeFromSuperview];

  v4.receiver = self;
  v4.super_class = _UITextFieldViewBackgroundProvider;
  [(_UITextFieldBackgroundProvider *)&v4 removeFromTextField];
}

- (void)didChangeFirstResponder
{
  v3.receiver = self;
  v3.super_class = _UITextFieldViewBackgroundProvider;
  [(_UITextFieldBackgroundProvider *)&v3 didChangeFirstResponder];
  [(_UITextFieldViewBackgroundProvider *)self layoutIfNeeded];
}

- (UIView)backgroundView
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"_UITextFieldViewBackgroundProvider.m" lineNumber:36 description:{@"%@ (subclass of _UITextFieldViewBackgroundProvider) needs to override -backgroundView.", objc_opt_class()}];

  return 0;
}

- (id)overridingSetBackgroundColor:(id)a3
{
  v4 = a3;
  v5 = [(_UITextFieldViewBackgroundProvider *)self backgroundView];
  [v5 setBackgroundColor:v4];

  return v4;
}

- (BOOL)hitTestView:(id)a3
{
  v4 = a3;
  v5 = [(_UITextFieldViewBackgroundProvider *)self backgroundView];

  if (v5)
  {
    v6 = v5 == v4;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v7;
}

- (void)addToTextField:(id)a3
{
  v7.receiver = self;
  v7.super_class = _UITextFieldViewBackgroundProvider;
  v4 = a3;
  [(_UITextFieldBackgroundProvider *)&v7 addToTextField:v4];
  v5 = [(_UITextFieldViewBackgroundProvider *)self backgroundView:v7.receiver];
  v6 = [v4 _contentView];

  if (v5 && v5 != v6)
  {
    [v6 insertSubview:v5 atIndex:0];
    [(_UITextFieldViewBackgroundProvider *)self layoutIfNeeded];
  }
}

- (void)populateArchivedSubviews:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = _UITextFieldViewBackgroundProvider;
  [(_UITextFieldBackgroundProvider *)&v6 populateArchivedSubviews:v4];
  v5 = [(_UITextFieldViewBackgroundProvider *)self backgroundView];
  if (v5)
  {
    [v4 removeObject:v5];
  }
}

- (void)_buildDescription:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _UITextFieldViewBackgroundProvider;
  [(_UITextFieldBackgroundProvider *)&v7 _buildDescription:v4];
  v5 = [(_UITextFieldViewBackgroundProvider *)self backgroundView];
  v6 = [v4 appendName:@"backgroundView" object:v5];
}

@end