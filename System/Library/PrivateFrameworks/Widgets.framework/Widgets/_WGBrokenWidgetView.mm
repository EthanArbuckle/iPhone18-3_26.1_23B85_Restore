@interface _WGBrokenWidgetView
- (_WGBrokenWidgetView)init;
@end

@implementation _WGBrokenWidgetView

- (_WGBrokenWidgetView)init
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"BROKEN_WIDGET_EXPLANATION" value:&stru_2883435D8 table:@"Widgets"];
  v7.receiver = self;
  v7.super_class = _WGBrokenWidgetView;
  v5 = [(WGExplanatoryView *)&v7 initWithGlyph:0 andExplanation:v4];

  return v5;
}

@end