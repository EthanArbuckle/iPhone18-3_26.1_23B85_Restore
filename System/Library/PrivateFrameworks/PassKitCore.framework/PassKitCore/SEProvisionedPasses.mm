@interface SEProvisionedPasses
- (NSString)description;
- (_TtC11PassKitCore19SEProvisionedPasses)init;
- (void)encodeWithCoder:(id)a3;
- (void)passLibraryDidChangeWithNotification:(id)a3;
@end

@implementation SEProvisionedPasses

- (void)passLibraryDidChangeWithNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1AD4E9228(v4);
}

- (NSString)description
{
  v2 = self;
  sub_1AD4E9B70();

  v3 = sub_1ADB06370();

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1AD4EA654(v4);
}

- (_TtC11PassKitCore19SEProvisionedPasses)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end