@interface ReservationState
- (_TtC9SEService16ReservationState)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ReservationState

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  ReservationState.encode(with:)(coderCopy);
}

- (_TtC9SEService16ReservationState)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end