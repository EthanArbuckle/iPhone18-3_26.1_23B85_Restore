@interface Reservation
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (_TtC9SEService11Reservation)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation Reservation

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1C7C7D664();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = Reservation.isEqual(_:)(v8);

  sub_1C7BE48DC(v8, &unk_1EC262EB0, &unk_1C7C97910);
  return v6 & 1;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  Reservation.encode(with:)(v4);
}

- (NSString)description
{
  v2 = self;
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