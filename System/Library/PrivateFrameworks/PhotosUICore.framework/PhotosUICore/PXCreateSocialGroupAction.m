@interface PXCreateSocialGroupAction
- (NSString)localizedActionName;
- (PXCreateSocialGroupAction)initWithPeople:(id)a3 customTitle:(id)a4 keyAssetUUID:(id)a5 creationCompletionBlock:(id)a6;
- (PXCreateSocialGroupAction)initWithPhotoLibrary:(id)a3;
@end

@implementation PXCreateSocialGroupAction

- (NSString)localizedActionName
{
  sub_1A3C38BD4();
  v2 = sub_1A524C634();

  return v2;
}

- (PXCreateSocialGroupAction)initWithPeople:(id)a3 customTitle:(id)a4 keyAssetUUID:(id)a5 creationCompletionBlock:(id)a6
{
  v9 = _Block_copy(a6);
  if (a4)
  {
    a4 = sub_1A524C674();
    v11 = v10;
    if (a5)
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
    return sub_1A42CCC90(a3, a4, v11, a5, v13, v9, v14);
  }

  v11 = 0;
  if (!a5)
  {
    goto LABEL_6;
  }

LABEL_3:
  a5 = sub_1A524C674();
  v13 = v12;
  if (!v9)
  {
    goto LABEL_7;
  }

LABEL_4:
  v14 = swift_allocObject();
  *(v14 + 16) = v9;
  v9 = sub_1A3F3D4CC;
  return sub_1A42CCC90(a3, a4, v11, a5, v13, v9, v14);
}

- (PXCreateSocialGroupAction)initWithPhotoLibrary:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end