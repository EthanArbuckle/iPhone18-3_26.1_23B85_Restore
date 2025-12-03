@interface PKPassTileForeignViewAdaptor
- (BOOL)isViewEqualToOther:(id)other withAdaptor:(id)adaptor;
- (NSString)viewIdentifier;
- (_TtC9PassKitUI28PKPassTileForeignViewAdaptor)init;
- (_TtC9PassKitUI28PKPassTileForeignViewAdaptor)initWithView:(id)view;
- (int64_t)viewPreferredSizing;
- (void)setViewIdentifier:(id)identifier;
- (void)setViewPreferredSizing:(int64_t)sizing;
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

- (void)setViewIdentifier:(id)identifier
{
  if (identifier)
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

- (void)setViewPreferredSizing:(int64_t)sizing
{
  v5 = OBJC_IVAR____TtC9PassKitUI28PKPassTileForeignViewAdaptor_viewPreferredSizing;
  swift_beginAccess();
  *(self + v5) = sizing;
}

- (_TtC9PassKitUI28PKPassTileForeignViewAdaptor)initWithView:(id)view
{
  v4 = (self + OBJC_IVAR____TtC9PassKitUI28PKPassTileForeignViewAdaptor_viewIdentifier);
  *v4 = 0;
  v4[1] = 0;
  *(self + OBJC_IVAR____TtC9PassKitUI28PKPassTileForeignViewAdaptor_viewPreferredSizing) = 0;
  *(self + OBJC_IVAR____TtC9PassKitUI28PKPassTileForeignViewAdaptor_view) = view;
  v7.receiver = self;
  v7.super_class = type metadata accessor for PKPassTileForeignViewAdaptor();
  viewCopy = view;
  return [(PKPassTileForeignViewAdaptor *)&v7 init];
}

- (BOOL)isViewEqualToOther:(id)other withAdaptor:(id)adaptor
{
  otherCopy = other;
  adaptorCopy = adaptor;
  selfCopy = self;
  LOBYTE(adaptor) = sub_1BD1C3A8C(other, adaptor);

  return adaptor & 1;
}

- (_TtC9PassKitUI28PKPassTileForeignViewAdaptor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end