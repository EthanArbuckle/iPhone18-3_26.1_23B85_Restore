@interface _UITextFieldViewBackgroundProvider
- (BOOL)hitTestView:(id)view;
- (UIView)backgroundView;
- (id)overridingSetBackgroundColor:(id)color;
- (void)_buildDescription:(id)description;
- (void)addToTextField:(id)field;
- (void)didChangeFirstResponder;
- (void)layoutIfNeeded;
- (void)populateArchivedSubviews:(id)subviews;
- (void)removeFromTextField;
- (void)setNeedsDisplay;
@end

@implementation _UITextFieldViewBackgroundProvider

- (void)setNeedsDisplay
{
  v4.receiver = self;
  v4.super_class = _UITextFieldViewBackgroundProvider;
  [(_UITextFieldBackgroundProvider *)&v4 setNeedsDisplay];
  backgroundView = [(_UITextFieldViewBackgroundProvider *)self backgroundView];
  [backgroundView setNeedsDisplay];
}

- (void)layoutIfNeeded
{
  v8.receiver = self;
  v8.super_class = _UITextFieldViewBackgroundProvider;
  [(_UITextFieldBackgroundProvider *)&v8 layoutIfNeeded];
  textField = [(_UITextFieldBackgroundProvider *)self textField];
  backgroundView = [(_UITextFieldViewBackgroundProvider *)self backgroundView];
  [textField _backgroundBounds];
  [backgroundView setFrame:?];
  [backgroundView _continuousCornerRadius];
  v6 = v5;
  _backgroundCoverView = [textField _backgroundCoverView];
  [_backgroundCoverView _setContinuousCornerRadius:v6];
}

- (void)removeFromTextField
{
  backgroundView = [(_UITextFieldViewBackgroundProvider *)self backgroundView];
  [backgroundView removeFromSuperview];

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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UITextFieldViewBackgroundProvider.m" lineNumber:36 description:{@"%@ (subclass of _UITextFieldViewBackgroundProvider) needs to override -backgroundView.", objc_opt_class()}];

  return 0;
}

- (id)overridingSetBackgroundColor:(id)color
{
  colorCopy = color;
  backgroundView = [(_UITextFieldViewBackgroundProvider *)self backgroundView];
  [backgroundView setBackgroundColor:colorCopy];

  return colorCopy;
}

- (BOOL)hitTestView:(id)view
{
  viewCopy = view;
  backgroundView = [(_UITextFieldViewBackgroundProvider *)self backgroundView];

  if (backgroundView)
  {
    v6 = backgroundView == viewCopy;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v7;
}

- (void)addToTextField:(id)field
{
  v7.receiver = self;
  v7.super_class = _UITextFieldViewBackgroundProvider;
  fieldCopy = field;
  [(_UITextFieldBackgroundProvider *)&v7 addToTextField:fieldCopy];
  v5 = [(_UITextFieldViewBackgroundProvider *)self backgroundView:v7.receiver];
  _contentView = [fieldCopy _contentView];

  if (v5 && v5 != _contentView)
  {
    [_contentView insertSubview:v5 atIndex:0];
    [(_UITextFieldViewBackgroundProvider *)self layoutIfNeeded];
  }
}

- (void)populateArchivedSubviews:(id)subviews
{
  subviewsCopy = subviews;
  v6.receiver = self;
  v6.super_class = _UITextFieldViewBackgroundProvider;
  [(_UITextFieldBackgroundProvider *)&v6 populateArchivedSubviews:subviewsCopy];
  backgroundView = [(_UITextFieldViewBackgroundProvider *)self backgroundView];
  if (backgroundView)
  {
    [subviewsCopy removeObject:backgroundView];
  }
}

- (void)_buildDescription:(id)description
{
  descriptionCopy = description;
  v7.receiver = self;
  v7.super_class = _UITextFieldViewBackgroundProvider;
  [(_UITextFieldBackgroundProvider *)&v7 _buildDescription:descriptionCopy];
  backgroundView = [(_UITextFieldViewBackgroundProvider *)self backgroundView];
  v6 = [descriptionCopy appendName:@"backgroundView" object:backgroundView];
}

@end