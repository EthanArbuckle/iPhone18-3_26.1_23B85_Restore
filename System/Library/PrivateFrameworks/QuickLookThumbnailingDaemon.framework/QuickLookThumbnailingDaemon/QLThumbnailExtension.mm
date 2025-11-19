@interface QLThumbnailExtension
- (NSString)debugDescription;
- (QLThumbnailExtension)init;
- (_EXExtensionIdentity)exIdentity;
@end

@implementation QLThumbnailExtension

- (_EXExtensionIdentity)exIdentity
{
  v2 = self;
  v3 = sub_26162B3FC();

  return v3;
}

- (NSString)debugDescription
{
  v2 = self;
  sub_26161D304();

  v3 = sub_26162B89C();

  return v3;
}

- (QLThumbnailExtension)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end