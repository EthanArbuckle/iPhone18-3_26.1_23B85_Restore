@interface WorkflowEditorOptions
- (void)appendAction:(id)action;
- (void)presentDrawerViewController:(id)controller inPopover:(BOOL)popover withSourceRect:(CGRect)rect;
@end

@implementation WorkflowEditorOptions

- (void)appendAction:(id)action
{
  actionCopy = action;
  selfCopy = self;
  WorkflowEditorOptions.appendAction(_:)(actionCopy);
}

- (void)presentDrawerViewController:(id)controller inPopover:(BOOL)popover withSourceRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  controllerCopy = controller;
  selfCopy = self;
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  WorkflowEditorOptions.presentDrawerViewController(_:inPopover:withSourceRect:)(controllerCopy, popover, v14);
}

@end