@interface PBFFocusPosterMastheadConfiguration
- (BOOL)isEqual:(id)a3;
- (NSString)symbolImageName;
- (_TtC11PosterBoard35PBFFocusPosterMastheadConfiguration)init;
- (_TtC11PosterBoard35PBFFocusPosterMastheadConfiguration)initWithKeyColor:(id)a3 symbolImageName:(id)a4;
@end

@implementation PBFFocusPosterMastheadConfiguration

- (NSString)symbolImageName
{

  v2 = sub_21B6C8D74();

  return v2;
}

- (_TtC11PosterBoard35PBFFocusPosterMastheadConfiguration)initWithKeyColor:(id)a3 symbolImageName:(id)a4
{
  v6 = sub_21B6C8DA4();
  *(self + OBJC_IVAR____TtC11PosterBoard35PBFFocusPosterMastheadConfiguration_keyColor) = a3;
  v7 = (self + OBJC_IVAR____TtC11PosterBoard35PBFFocusPosterMastheadConfiguration_symbolImageName);
  *v7 = v6;
  v7[1] = v8;
  v11.receiver = self;
  v11.super_class = type metadata accessor for PBFFocusPosterMastheadConfiguration();
  v9 = a3;
  return [(PBFFocusPosterMastheadConfiguration *)&v11 init];
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_21B6C93E4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = PBFFocusPosterMastheadConfiguration.isEqual(_:)(v8);

  sub_21B65B734(v8);
  return v6 & 1;
}

- (_TtC11PosterBoard35PBFFocusPosterMastheadConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end