@interface _UISearchControllerTrackableState
- (BOOL)isActive;
- (_UISearchControllerTrackableState)init;
- (void)setActive:(BOOL)active animated:(BOOL)animated;
- (void)setIsActive:(BOOL)active;
@end

@implementation _UISearchControllerTrackableState

- (_UISearchControllerTrackableState)init
{
  v3 = OBJC_IVAR____UISearchControllerTrackableState_trackableState;
  _s5StateCMa_0();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  sub_18A4A2C38();
  *(&self->super.isa + v3) = v4;
  v6.receiver = self;
  v6.super_class = _UISearchControllerTrackableState;
  return [(_UISearchControllerTrackableState *)&v6 init];
}

- (BOOL)isActive
{
  v3 = *(&self->super.isa + OBJC_IVAR____UISearchControllerTrackableState_trackableState);
  swift_getKeyPath();
  sub_188CCA8E0();
  selfCopy = self;

  sub_18A4A2C08();

  LOBYTE(selfCopy) = *(v3 + 16);

  return selfCopy;
}

- (void)setIsActive:(BOOL)active
{
  activeCopy = active;
  selfCopy = self;
  sub_1890A4930(activeCopy);
}

- (void)setActive:(BOOL)active animated:(BOOL)animated
{
  selfCopy = self;
  sub_1890A4A30(active, animated);
}

@end