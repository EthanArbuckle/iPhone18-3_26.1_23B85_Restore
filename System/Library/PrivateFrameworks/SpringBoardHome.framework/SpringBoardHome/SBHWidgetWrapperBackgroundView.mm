@interface SBHWidgetWrapperBackgroundView
- (SBHWidgetWrapperBackgroundView)initWithUnderlyingBackgroundView:(id)a3 widgetBackgroundView:(id)a4;
@end

@implementation SBHWidgetWrapperBackgroundView

- (SBHWidgetWrapperBackgroundView)initWithUnderlyingBackgroundView:(id)a3 widgetBackgroundView:(id)a4
{
  v7 = a3;
  v8 = a4;
  v11.receiver = self;
  v11.super_class = SBHWidgetWrapperBackgroundView;
  v9 = [(SBHWidgetWrapperBackgroundView *)&v11 init];
  if (v9)
  {
    [v7 setAutoresizingMask:18];
    [(SBHWidgetWrapperBackgroundView *)v9 addSubview:v7];
    objc_storeStrong(&v9->_underlyingBackgroundView, a3);
    [v8 setAutoresizingMask:18];
    [(SBHWidgetWrapperBackgroundView *)v9 addSubview:v8];
    objc_storeStrong(&v9->_widgetBackgroundView, a4);
  }

  return v9;
}

@end