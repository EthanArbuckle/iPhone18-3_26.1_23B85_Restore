@interface SEProvisionedPasses
- (NSString)description;
- (_TtC11PassKitCore19SEProvisionedPasses)init;
- (void)encodeWithCoder:(id)coder;
- (void)passLibraryDidChangeWithNotification:(id)notification;
@end

@implementation SEProvisionedPasses

- (void)passLibraryDidChangeWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_1AD4E9228(notificationCopy);
}

- (NSString)description
{
  selfCopy = self;
  sub_1AD4E9B70();

  v3 = sub_1ADB06370();

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1AD4EA654(coderCopy);
}

- (_TtC11PassKitCore19SEProvisionedPasses)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end