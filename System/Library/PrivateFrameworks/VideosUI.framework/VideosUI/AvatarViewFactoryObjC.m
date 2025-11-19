@interface AvatarViewFactoryObjC
+ (id)makeAccountAvatarViewWithExisting:(id)a3;
@end

@implementation AvatarViewFactoryObjC

+ (id)makeAccountAvatarViewWithExisting:(id)a3
{
  v4 = a3;
  v5 = static AvatarViewFactoryObjC.makeAccountAvatarView(existing:)(a3);

  return v5;
}

@end