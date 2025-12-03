@interface _WGLockedOutWidgetView
- (_WGLockedOutWidgetView)initWithExplanation:(id)explanation;
@end

@implementation _WGLockedOutWidgetView

- (_WGLockedOutWidgetView)initWithExplanation:(id)explanation
{
  v4 = MEMORY[0x277D755B8];
  v5 = MEMORY[0x277CCA8D8];
  explanationCopy = explanation;
  v7 = [v5 bundleForClass:objc_opt_class()];
  v8 = [v4 imageNamed:@"TimerWidgetGlyph" inBundle:v7];

  v11.receiver = self;
  v11.super_class = _WGLockedOutWidgetView;
  v9 = [(WGExplanatoryView *)&v11 initWithGlyph:v8 andExplanation:explanationCopy];

  return v9;
}

@end