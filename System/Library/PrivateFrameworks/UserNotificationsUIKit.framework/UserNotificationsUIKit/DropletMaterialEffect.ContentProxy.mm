@interface DropletMaterialEffect.ContentProxy
- (_TtCC22UserNotificationsUIKit21DropletMaterialEffectP33_14CD243C8142B7E189D98278765B16FF12ContentProxy)init;
- (void)addEffectToView:(id)view;
@end

@implementation DropletMaterialEffect.ContentProxy

- (void)addEffectToView:(id)view
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtCC22UserNotificationsUIKit21DropletMaterialEffectP33_14CD243C8142B7E189D98278765B16FF12ContentProxy_contentView);
  *(&self->super.super.isa + OBJC_IVAR____TtCC22UserNotificationsUIKit21DropletMaterialEffectP33_14CD243C8142B7E189D98278765B16FF12ContentProxy_contentView) = view;
  viewCopy = view;
}

- (_TtCC22UserNotificationsUIKit21DropletMaterialEffectP33_14CD243C8142B7E189D98278765B16FF12ContentProxy)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.isa + OBJC_IVAR____TtCC22UserNotificationsUIKit21DropletMaterialEffectP33_14CD243C8142B7E189D98278765B16FF12ContentProxy_contentView) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(DropletMaterialEffect.ContentProxy *)&v5 init];
}

@end