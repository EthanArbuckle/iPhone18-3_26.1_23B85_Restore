@interface _UIFocusSystemGroupHierarchyDebugOverlayView
- (id)updatedLabelContent;
@end

@implementation _UIFocusSystemGroupHierarchyDebugOverlayView

- (id)updatedLabelContent
{
  v2 = [UIFocusDebugger focusGroupsForEnvironment:self];
  v3 = [v2 description];

  return v3;
}

@end