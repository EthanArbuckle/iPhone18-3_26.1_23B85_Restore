@interface DropletMaterialEffect
- (_TtC22UserNotificationsUIKit21DropletMaterialEffect)init;
- (_TtC22UserNotificationsUIKit21DropletMaterialEffect)initWithCoder:(id)coder;
- (void)_updateEffectDescriptor:(id)descriptor forEnvironment:(id)environment usage:(int64_t)usage;
@end

@implementation DropletMaterialEffect

- (_TtC22UserNotificationsUIKit21DropletMaterialEffect)initWithCoder:(id)coder
{
  result = sub_21E92A988();
  __break(1u);
  return result;
}

- (void)_updateEffectDescriptor:(id)descriptor forEnvironment:(id)environment usage:(int64_t)usage
{
  descriptorCopy = descriptor;
  environmentCopy = environment;
  selfCopy = self;
  sub_21E8E705C(descriptor);
}

- (_TtC22UserNotificationsUIKit21DropletMaterialEffect)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end