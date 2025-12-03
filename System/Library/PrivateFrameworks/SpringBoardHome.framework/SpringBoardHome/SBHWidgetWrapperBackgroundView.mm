@interface SBHWidgetWrapperBackgroundView
- (SBHWidgetWrapperBackgroundView)initWithUnderlyingBackgroundView:(id)view widgetBackgroundView:(id)backgroundView;
@end

@implementation SBHWidgetWrapperBackgroundView

- (SBHWidgetWrapperBackgroundView)initWithUnderlyingBackgroundView:(id)view widgetBackgroundView:(id)backgroundView
{
  viewCopy = view;
  backgroundViewCopy = backgroundView;
  v11.receiver = self;
  v11.super_class = SBHWidgetWrapperBackgroundView;
  v9 = [(SBHWidgetWrapperBackgroundView *)&v11 init];
  if (v9)
  {
    [viewCopy setAutoresizingMask:18];
    [(SBHWidgetWrapperBackgroundView *)v9 addSubview:viewCopy];
    objc_storeStrong(&v9->_underlyingBackgroundView, view);
    [backgroundViewCopy setAutoresizingMask:18];
    [(SBHWidgetWrapperBackgroundView *)v9 addSubview:backgroundViewCopy];
    objc_storeStrong(&v9->_widgetBackgroundView, backgroundView);
  }

  return v9;
}

@end