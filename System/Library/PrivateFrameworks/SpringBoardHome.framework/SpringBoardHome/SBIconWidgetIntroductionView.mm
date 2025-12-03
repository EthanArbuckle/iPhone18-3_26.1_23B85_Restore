@interface SBIconWidgetIntroductionView
- (SBIconWidgetIntroductionView)initWithWidgetIcons:(id)icons;
@end

@implementation SBIconWidgetIntroductionView

- (SBIconWidgetIntroductionView)initWithWidgetIcons:(id)icons
{
  iconsCopy = icons;
  v9.receiver = self;
  v9.super_class = SBIconWidgetIntroductionView;
  v5 = [(SBIconWidgetIntroductionView *)&v9 init];
  if (v5)
  {
    v6 = [iconsCopy copy];
    widgetIcons = v5->_widgetIcons;
    v5->_widgetIcons = v6;
  }

  return v5;
}

@end