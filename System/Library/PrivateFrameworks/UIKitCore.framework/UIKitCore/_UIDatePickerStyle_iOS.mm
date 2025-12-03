@interface _UIDatePickerStyle_iOS
- (CGSize)compactLabelBackgroundPadding;
- (CGSize)idealLayoutFittingSizeForDatePickerMode:(int64_t)mode;
- (id)compactLabelBackgroundButtonConfiguration;
- (id)compactLabelBackgroundColorForEnabledState:(BOOL)state;
- (id)compactLabelTextColorForEditingState:(BOOL)state;
- (id)createOverlayBackgroundView;
- (void)addSubview:(id)subview toOverlayBackgroundView:(id)view;
@end

@implementation _UIDatePickerStyle_iOS

- (id)createOverlayBackgroundView
{
  v3 = [UIVisualEffectView alloc];
  v4 = [UIBlurEffect effectWithStyle:8];
  v5 = [(UIVisualEffectView *)v3 initWithEffect:v4];

  [(UIView *)v5 setAutoresizingMask:18];
  contentView = [(UIVisualEffectView *)v5 contentView];
  [contentView setClipsToBounds:1];

  [(_UIDatePickerStyle_iOS *)self overlayPlatterCornerRadius];
  [(UIVisualEffectView *)v5 _setContinuousCornerRadius:?];
  [(_UIDatePickerStyle_iOS *)self overlayPlatterCornerRadius];
  v8 = v7;
  layer = [(UIView *)v5 layer];
  [layer setCornerRadius:v8];

  return v5;
}

- (void)addSubview:(id)subview toOverlayBackgroundView:(id)view
{
  subviewCopy = subview;
  contentView = [view contentView];
  [contentView addSubview:subviewCopy];
}

- (CGSize)idealLayoutFittingSizeForDatePickerMode:(int64_t)mode
{
  v3 = 172.0;
  v4 = 218.0;
  v5 = 0.0;
  v6 = 320.0;
  if (mode == 3)
  {
    v6 = 218.0;
    v5 = 172.0;
  }

  if (mode)
  {
    v4 = v6;
    v3 = v5;
  }

  result.height = v3;
  result.width = v4;
  return result;
}

- (CGSize)compactLabelBackgroundPadding
{
  v2 = 12.0;
  v3 = 7.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)compactLabelTextColorForEditingState:(BOOL)state
{
  if (state)
  {
    +[UIColor tintColor];
  }

  else
  {
    +[UIColor labelColor];
  }
  v3 = ;

  return v3;
}

- (id)compactLabelBackgroundColorForEnabledState:(BOOL)state
{
  if (state)
  {
    +[UIColor tertiarySystemFillColor];
  }

  else
  {
    +[UIColor clearColor];
  }
  v3 = ;

  return v3;
}

- (id)compactLabelBackgroundButtonConfiguration
{
  v3 = +[UIButtonConfiguration plainButtonConfiguration];
  [v3 setCornerStyle:-1];
  [(_UIDatePickerStyle_iOS *)self compactLabelCornerRadius];
  v5 = v4;
  background = [v3 background];
  [background setCornerRadius:v5];

  v7 = +[UIColor tertiarySystemFillColor];
  background2 = [v3 background];
  [background2 setBackgroundColor:v7];

  return v3;
}

@end