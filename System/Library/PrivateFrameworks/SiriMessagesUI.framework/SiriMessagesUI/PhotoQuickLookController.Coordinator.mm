@interface PhotoQuickLookController.Coordinator
- (id)previewController:(id)a3 previewItemAtIndex:(int64_t)a4;
- (void)dismiss;
@end

@implementation PhotoQuickLookController.Coordinator

- (id)previewController:(id)a3 previewItemAtIndex:(int64_t)a4
{
  v5 = a3;

  v7 = sub_26803923C(v6, a4);

  return v7;
}

- (void)dismiss
{

  sub_2680393B0();
}

@end