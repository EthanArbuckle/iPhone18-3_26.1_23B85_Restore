@interface NavigationButtonBar.ItemLayout.TargetAction
- (void)_invokeWithRealSender:(id)sender forEvent:(id)event;
- (void)init;
@end

@implementation NavigationButtonBar.ItemLayout.TargetAction

- (void)_invokeWithRealSender:(id)sender forEvent:(id)event
{
  v5 = OBJC_IVAR____TtCCC5UIKit19NavigationButtonBar10ItemLayoutP33_7414260656797E7BB737FC627AD30E4912TargetAction_barButtonItem;
  v6 = *(&self->super.isa + OBJC_IVAR____TtCCC5UIKit19NavigationButtonBar10ItemLayoutP33_7414260656797E7BB737FC627AD30E4912TargetAction_barButtonItem);
  eventCopy = event;
  selfCopy = self;
  [v6 _triggerActionForEvent_];
  [*(&self->super.isa + v5) _executeValidationHandler];
}

- (void)init
{
  v0 = *MEMORY[0x1E695D930];
  v1 = objc_allocWithZone(MEMORY[0x1E695DF30]);
  v2 = sub_18A4A7258();
  v3 = [v1 initWithName:v0 reason:v2 userInfo:0];

  [v3 raise];
  sub_18A4A8398();
  __break(1u);
}

@end