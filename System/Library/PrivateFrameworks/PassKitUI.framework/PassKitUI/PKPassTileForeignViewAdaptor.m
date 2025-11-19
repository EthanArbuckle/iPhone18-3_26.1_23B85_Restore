@interface PKPassTileForeignViewAdaptor
- (BOOL)isViewEqualToOther:(id)a3 withAdaptor:(id)a4;
- (NSString)viewIdentifier;
- (_TtC9PassKitUI28PKPassTileForeignViewAdaptor)init;
- (_TtC9PassKitUI28PKPassTileForeignViewAdaptor)initWithView:(id)a3;
- (int64_t)viewPreferredSizing;
- (void)setViewIdentifier:(id)a3;
- (void)setViewPreferredSizing:(int64_t)a3;
@end

@implementation PKPassTileForeignViewAdaptor

- (NSString)viewIdentifier
{
  v2 = self + OBJC_IVAR____TtC9PassKitUI28PKPassTileForeignViewAdaptor_viewIdentifier;
  swift_beginAccess();
  if (*(v2 + 1))
  {
    sub_1BE048C84();
    v3 = sub_1BE052404();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setViewIdentifier:(id)a3
{
  if (a3)
  {
    v4 = sub_1BE052434();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC9PassKitUI28PKPassTileForeignViewAdaptor_viewIdentifier);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (int64_t)viewPreferredSizing
{
  v3 = OBJC_IVAR____TtC9PassKitUI28PKPassTileForeignViewAdaptor_viewPreferredSizing;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setViewPreferredSizing:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC9PassKitUI28PKPassTileForeignViewAdaptor_viewPreferredSizing;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (_TtC9PassKitUI28PKPassTileForeignViewAdaptor)initWithView:(id)a3
{
  v4 = (self + OBJC_IVAR____TtC9PassKitUI28PKPassTileForeignViewAdaptor_viewIdentifier);
  *v4 = 0;
  v4[1] = 0;
  *(self + OBJC_IVAR____TtC9PassKitUI28PKPassTileForeignViewAdaptor_viewPreferredSizing) = 0;
  *(self + OBJC_IVAR____TtC9PassKitUI28PKPassTileForeignViewAdaptor_view) = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for PKPassTileForeignViewAdaptor();
  v5 = a3;
  return [(PKPassTileForeignViewAdaptor *)&v7 init];
}

- (BOOL)isViewEqualToOther:(id)a3 withAdaptor:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  LOBYTE(a4) = sub_1BD1C3A8C(a3, a4);

  return a4 & 1;
}

- (_TtC9PassKitUI28PKPassTileForeignViewAdaptor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end