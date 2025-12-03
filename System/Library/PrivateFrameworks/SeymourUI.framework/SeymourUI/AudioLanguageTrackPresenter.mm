@interface AudioLanguageTrackPresenter
- (void)handleMediaSelectionDidChangeWithItem:(id)item;
@end

@implementation AudioLanguageTrackPresenter

- (void)handleMediaSelectionDidChangeWithItem:(id)item
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC9SeymourUI27AudioLanguageTrackPresenter_state);
  itemCopy = item;

  os_unfair_lock_lock(v3 + 15);
  sub_20C0D34F0(&v3[4]);
  os_unfair_lock_unlock(v3 + 15);
}

@end