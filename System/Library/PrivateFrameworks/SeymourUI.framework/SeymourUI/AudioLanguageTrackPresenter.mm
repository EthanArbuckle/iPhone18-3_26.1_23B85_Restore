@interface AudioLanguageTrackPresenter
- (void)handleMediaSelectionDidChangeWithItem:(id)a3;
@end

@implementation AudioLanguageTrackPresenter

- (void)handleMediaSelectionDidChangeWithItem:(id)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC9SeymourUI27AudioLanguageTrackPresenter_state);
  v4 = a3;

  os_unfair_lock_lock(v3 + 15);
  sub_20C0D34F0(&v3[4]);
  os_unfair_lock_unlock(v3 + 15);
}

@end