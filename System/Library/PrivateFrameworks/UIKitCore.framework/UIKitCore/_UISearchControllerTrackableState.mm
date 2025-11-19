@interface _UISearchControllerTrackableState
- (BOOL)isActive;
- (_UISearchControllerTrackableState)init;
- (void)setActive:(BOOL)a3 animated:(BOOL)a4;
- (void)setIsActive:(BOOL)a3;
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
  v4 = self;

  sub_18A4A2C08();

  LOBYTE(v4) = *(v3 + 16);

  return v4;
}

- (void)setIsActive:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  sub_1890A4930(v3);
}

- (void)setActive:(BOOL)a3 animated:(BOOL)a4
{
  v6 = self;
  sub_1890A4A30(a3, a4);
}

@end