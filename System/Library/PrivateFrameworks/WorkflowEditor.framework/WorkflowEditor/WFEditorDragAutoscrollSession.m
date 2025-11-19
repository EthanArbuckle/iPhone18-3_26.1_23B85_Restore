@interface WFEditorDragAutoscrollSession
- (void)autoscroll;
- (void)invalidate;
@end

@implementation WFEditorDragAutoscrollSession

- (void)invalidate
{
  v2 = self;
  sub_27459C6C0();
}

- (void)autoscroll
{
  v2 = self;
  sub_27459CA1C();
}

@end