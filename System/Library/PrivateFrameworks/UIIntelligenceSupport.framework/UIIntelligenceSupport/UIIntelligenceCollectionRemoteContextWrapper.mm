@interface UIIntelligenceCollectionRemoteContextWrapper
- (BOOL)isEqual:(id)a3;
- (_TtC21UIIntelligenceSupport44UIIntelligenceCollectionRemoteContextWrapper)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UIIntelligenceCollectionRemoteContextWrapper

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  UIIntelligenceCollectionRemoteContextWrapper.encode(with:)(v4);
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1BBB83F08();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = UIIntelligenceCollectionRemoteContextWrapper.isEqual(_:)(v8);

  sub_1BBB0F270(v8);
  return v6 & 1;
}

- (_TtC21UIIntelligenceSupport44UIIntelligenceCollectionRemoteContextWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end