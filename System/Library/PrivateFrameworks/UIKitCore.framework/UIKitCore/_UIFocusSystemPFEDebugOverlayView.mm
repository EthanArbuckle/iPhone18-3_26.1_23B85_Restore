@interface _UIFocusSystemPFEDebugOverlayView
- (id)updatedLabelContent;
@end

@implementation _UIFocusSystemPFEDebugOverlayView

- (id)updatedLabelContent
{
  v2 = [(UIView *)self _focusSystem];
  v3 = [UIFocusDebugger preferredFocusEnvironmentsForEnvironment:v2];
  v4 = [v3 description];

  return v4;
}

@end