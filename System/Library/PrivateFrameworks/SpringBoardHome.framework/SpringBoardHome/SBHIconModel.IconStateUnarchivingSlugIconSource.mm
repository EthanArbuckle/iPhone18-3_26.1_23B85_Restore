@interface SBHIconModel.IconStateUnarchivingSlugIconSource
- (_TtCE15SpringBoardHomeCSo12SBHIconModelP33_294E8E30CF4CC42333D2CCC80E9D9C8134IconStateUnarchivingSlugIconSource)init;
- (id)applicationIconForBundleIdentifier:(id)identifier;
@end

@implementation SBHIconModel.IconStateUnarchivingSlugIconSource

- (id)applicationIconForBundleIdentifier:(id)identifier
{
  v4 = sub_1BEE4708C();
  v6 = v5;
  selfCopy = self;
  v8 = sub_1BEE12D60(v4, v6);

  if (v8)
  {
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      goto LABEL_5;
    }
  }

  v9 = 0;
LABEL_5:

  return v9;
}

- (_TtCE15SpringBoardHomeCSo12SBHIconModelP33_294E8E30CF4CC42333D2CCC80E9D9C8134IconStateUnarchivingSlugIconSource)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtCE15SpringBoardHomeCSo12SBHIconModelP33_294E8E30CF4CC42333D2CCC80E9D9C8134IconStateUnarchivingSlugIconSource_leafAppIcons;
  *(&self->super.isa + v4) = sub_1BEDCF88C(MEMORY[0x1E69E7CC0]);
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(SBHIconModel.IconStateUnarchivingSlugIconSource *)&v6 init];
}

@end