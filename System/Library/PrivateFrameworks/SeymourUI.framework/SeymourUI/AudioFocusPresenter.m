@interface AudioFocusPresenter
- (void)handleMediaSelectionDidChangeWithItem:(id)a3;
@end

@implementation AudioFocusPresenter

- (void)handleMediaSelectionDidChangeWithItem:(id)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC9SeymourUI19AudioFocusPresenter_state);
  v4 = a3;

  os_unfair_lock_lock(v3 + 12);
  sub_20C0ECAE0(&v3[4]);
  os_unfair_lock_unlock(v3 + 12);
}

@end