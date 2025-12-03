@interface PXCreateSocialGroupAction
- (NSString)localizedActionName;
- (PXCreateSocialGroupAction)initWithPeople:(id)people customTitle:(id)title keyAssetUUID:(id)d creationCompletionBlock:(id)block;
- (PXCreateSocialGroupAction)initWithPhotoLibrary:(id)library;
@end

@implementation PXCreateSocialGroupAction

- (NSString)localizedActionName
{
  sub_1A3C38BD4();
  v2 = sub_1A524C634();

  return v2;
}

- (PXCreateSocialGroupAction)initWithPeople:(id)people customTitle:(id)title keyAssetUUID:(id)d creationCompletionBlock:(id)block
{
  v9 = _Block_copy(block);
  if (title)
  {
    title = sub_1A524C674();
    v11 = v10;
    if (d)
    {
      goto LABEL_3;
    }

LABEL_6:
    v13 = 0;
    if (v9)
    {
      goto LABEL_4;
    }

LABEL_7:
    v14 = 0;
    return sub_1A42CCC90(people, title, v11, d, v13, v9, v14);
  }

  v11 = 0;
  if (!d)
  {
    goto LABEL_6;
  }

LABEL_3:
  d = sub_1A524C674();
  v13 = v12;
  if (!v9)
  {
    goto LABEL_7;
  }

LABEL_4:
  v14 = swift_allocObject();
  *(v14 + 16) = v9;
  v9 = sub_1A3F3D4CC;
  return sub_1A42CCC90(people, title, v11, d, v13, v9, v14);
}

- (PXCreateSocialGroupAction)initWithPhotoLibrary:(id)library
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end