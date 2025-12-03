@interface PhotoQuickLookController.Coordinator
- (id)previewController:(id)controller previewItemAtIndex:(int64_t)index;
- (void)dismiss;
@end

@implementation PhotoQuickLookController.Coordinator

- (id)previewController:(id)controller previewItemAtIndex:(int64_t)index
{
  controllerCopy = controller;

  v7 = sub_26803923C(v6, index);

  return v7;
}

- (void)dismiss
{

  sub_2680393B0();
}

@end