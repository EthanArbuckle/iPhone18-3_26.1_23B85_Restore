@interface AvatarViewFactoryObjC
+ (id)makeAccountAvatarViewWithExisting:(id)existing;
@end

@implementation AvatarViewFactoryObjC

+ (id)makeAccountAvatarViewWithExisting:(id)existing
{
  existingCopy = existing;
  v5 = static AvatarViewFactoryObjC.makeAccountAvatarView(existing:)(existing);

  return v5;
}

@end