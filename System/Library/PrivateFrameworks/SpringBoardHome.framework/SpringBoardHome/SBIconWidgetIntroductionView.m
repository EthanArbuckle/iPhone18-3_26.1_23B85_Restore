@interface SBIconWidgetIntroductionView
- (SBIconWidgetIntroductionView)initWithWidgetIcons:(id)a3;
@end

@implementation SBIconWidgetIntroductionView

- (SBIconWidgetIntroductionView)initWithWidgetIcons:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBIconWidgetIntroductionView;
  v5 = [(SBIconWidgetIntroductionView *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    widgetIcons = v5->_widgetIcons;
    v5->_widgetIcons = v6;
  }

  return v5;
}

@end