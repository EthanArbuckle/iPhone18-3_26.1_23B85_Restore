@interface _UIDatePickerStyle_iOS
- (CGSize)compactLabelBackgroundPadding;
- (CGSize)idealLayoutFittingSizeForDatePickerMode:(int64_t)a3;
- (id)compactLabelBackgroundButtonConfiguration;
- (id)compactLabelBackgroundColorForEnabledState:(BOOL)a3;
- (id)compactLabelTextColorForEditingState:(BOOL)a3;
- (id)createOverlayBackgroundView;
- (void)addSubview:(id)a3 toOverlayBackgroundView:(id)a4;
@end

@implementation _UIDatePickerStyle_iOS

- (id)createOverlayBackgroundView
{
  v3 = [UIVisualEffectView alloc];
  v4 = [UIBlurEffect effectWithStyle:8];
  v5 = [(UIVisualEffectView *)v3 initWithEffect:v4];

  [(UIView *)v5 setAutoresizingMask:18];
  v6 = [(UIVisualEffectView *)v5 contentView];
  [v6 setClipsToBounds:1];

  [(_UIDatePickerStyle_iOS *)self overlayPlatterCornerRadius];
  [(UIVisualEffectView *)v5 _setContinuousCornerRadius:?];
  [(_UIDatePickerStyle_iOS *)self overlayPlatterCornerRadius];
  v8 = v7;
  v9 = [(UIView *)v5 layer];
  [v9 setCornerRadius:v8];

  return v5;
}

- (void)addSubview:(id)a3 toOverlayBackgroundView:(id)a4
{
  v5 = a3;
  v6 = [a4 contentView];
  [v6 addSubview:v5];
}

- (CGSize)idealLayoutFittingSizeForDatePickerMode:(int64_t)a3
{
  v3 = 172.0;
  v4 = 218.0;
  v5 = 0.0;
  v6 = 320.0;
  if (a3 == 3)
  {
    v6 = 218.0;
    v5 = 172.0;
  }

  if (a3)
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

- (id)compactLabelTextColorForEditingState:(BOOL)a3
{
  if (a3)
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

- (id)compactLabelBackgroundColorForEnabledState:(BOOL)a3
{
  if (a3)
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
  v6 = [v3 background];
  [v6 setCornerRadius:v5];

  v7 = +[UIColor tertiarySystemFillColor];
  v8 = [v3 background];
  [v8 setBackgroundColor:v7];

  return v3;
}

@end