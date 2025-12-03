@interface UIIntelligenceCollectionRemoteContextWrapper
- (BOOL)isEqual:(id)equal;
- (_TtC21UIIntelligenceSupport44UIIntelligenceCollectionRemoteContextWrapper)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UIIntelligenceCollectionRemoteContextWrapper

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  UIIntelligenceCollectionRemoteContextWrapper.encode(with:)(coderCopy);
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1BBB83F08();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
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