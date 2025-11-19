@interface WorkflowEditorOptions
- (void)appendAction:(id)a3;
- (void)presentDrawerViewController:(id)a3 inPopover:(BOOL)a4 withSourceRect:(CGRect)a5;
@end

@implementation WorkflowEditorOptions

- (void)appendAction:(id)a3
{
  v4 = a3;
  v5 = self;
  WorkflowEditorOptions.appendAction(_:)(v4);
}

- (void)presentDrawerViewController:(id)a3 inPopover:(BOOL)a4 withSourceRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a3;
  v12 = self;
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  WorkflowEditorOptions.presentDrawerViewController(_:inPopover:withSourceRect:)(v11, a4, v14);
}

@end