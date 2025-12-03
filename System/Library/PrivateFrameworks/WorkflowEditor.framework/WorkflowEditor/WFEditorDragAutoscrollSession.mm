@interface WFEditorDragAutoscrollSession
- (void)autoscroll;
- (void)invalidate;
@end

@implementation WFEditorDragAutoscrollSession

- (void)invalidate
{
  selfCopy = self;
  sub_27459C6C0();
}

- (void)autoscroll
{
  selfCopy = self;
  sub_27459CA1C();
}

@end