@interface _UIFocusSystemPFEDebugOverlayView
- (id)updatedLabelContent;
@end

@implementation _UIFocusSystemPFEDebugOverlayView

- (id)updatedLabelContent
{
  _focusSystem = [(UIView *)self _focusSystem];
  v3 = [UIFocusDebugger preferredFocusEnvironmentsForEnvironment:_focusSystem];
  v4 = [v3 description];

  return v4;
}

@end