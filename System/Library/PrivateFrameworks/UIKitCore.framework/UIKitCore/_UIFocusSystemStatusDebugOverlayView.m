@interface _UIFocusSystemStatusDebugOverlayView
- (id)updatedLabelContent;
@end

@implementation _UIFocusSystemStatusDebugOverlayView

- (id)updatedLabelContent
{
  v2 = +[UIFocusDebugger _verboseStatus];
  v3 = [v2 description];

  return v3;
}

@end