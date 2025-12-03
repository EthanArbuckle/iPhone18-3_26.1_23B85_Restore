@interface PXSocialGroupMakeKeyPhotoAction
- (NSString)localizedActionName;
- (PXSocialGroupMakeKeyPhotoAction)initWithPhotoLibrary:(id)library;
- (PXSocialGroupMakeKeyPhotoAction)initWithSocialGroup:(id)group newKeyAsset:(id)asset;
@end

@implementation PXSocialGroupMakeKeyPhotoAction

- (NSString)localizedActionName
{
  sub_1A3C38BD4();
  v2 = sub_1A524C634();

  return v2;
}

- (PXSocialGroupMakeKeyPhotoAction)initWithSocialGroup:(id)group newKeyAsset:(id)asset
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR___PXSocialGroupMakeKeyPhotoAction_originalKeyAsset) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___PXSocialGroupMakeKeyPhotoAction_socialGroup) = group;
  *(&self->super.super.super.isa + OBJC_IVAR___PXSocialGroupMakeKeyPhotoAction_newKeyAsset) = asset;
  groupCopy = group;
  assetCopy = asset;
  v10 = groupCopy;
  v11 = assetCopy;
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

- (PXSocialGroupMakeKeyPhotoAction)initWithPhotoLibrary:(id)library
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end