@interface Reservation
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (_TtC9SEService11Reservation)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation Reservation

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1C7C7D664();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = Reservation.isEqual(_:)(v8);

  sub_1C7BE48DC(v8, &unk_1EC262EB0, &unk_1C7C97910);
  return v6 & 1;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  Reservation.encode(with:)(coderCopy);
}

- (NSString)description
{
  selfCopy = self;
  Reservation.description.getter();

  v3 = sub_1C7C7D2E4();

  return v3;
}

- (_TtC9SEService11Reservation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end