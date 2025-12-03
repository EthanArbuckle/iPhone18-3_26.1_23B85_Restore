@interface UIImageActivityType
- (_TtC9TipsTryIt19UIImageActivityType)init;
- (id)activityViewControllerLinkMetadata:(id)metadata;
@end

@implementation UIImageActivityType

- (id)activityViewControllerLinkMetadata:(id)metadata
{
  v4 = objc_allocWithZone(MEMORY[0x277CD46C8]);
  selfCopy = self;
  v6 = [v4 init];
  initWithObject_ = [objc_allocWithZone(MEMORY[0x277CCAA88]) initWithObject_];
  [v6 setIconProvider_];

  return v6;
}

- (_TtC9TipsTryIt19UIImageActivityType)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end