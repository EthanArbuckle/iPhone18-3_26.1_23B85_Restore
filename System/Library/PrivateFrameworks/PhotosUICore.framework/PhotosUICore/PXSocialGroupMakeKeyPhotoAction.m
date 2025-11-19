@interface PXSocialGroupMakeKeyPhotoAction
- (NSString)localizedActionName;
- (PXSocialGroupMakeKeyPhotoAction)initWithPhotoLibrary:(id)a3;
- (PXSocialGroupMakeKeyPhotoAction)initWithSocialGroup:(id)a3 newKeyAsset:(id)a4;
@end

@implementation PXSocialGroupMakeKeyPhotoAction

- (NSString)localizedActionName
{
  sub_1A3C38BD4();
  v2 = sub_1A524C634();

  return v2;
}

- (PXSocialGroupMakeKeyPhotoAction)initWithSocialGroup:(id)a3 newKeyAsset:(id)a4
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR___PXSocialGroupMakeKeyPhotoAction_originalKeyAsset) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___PXSocialGroupMakeKeyPhotoAction_socialGroup) = a3;
  *(&self->super.super.super.isa + OBJC_IVAR___PXSocialGroupMakeKeyPhotoAction_newKeyAsset) = a4;
  v8 = a3;
  v9 = a4;
  v10 = v8;
  v11 = v9;
  result = [v10 photoLibrary];
  if (result)
  {
    v13 = result;
    v15.receiver = self;
    v15.super_class = ObjectType;
    v14 = [(PXPhotosAction *)&v15 initWithPhotoLibrary:result];

    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (PXSocialGroupMakeKeyPhotoAction)initWithPhotoLibrary:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end