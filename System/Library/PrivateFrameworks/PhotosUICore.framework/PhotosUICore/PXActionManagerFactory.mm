@interface PXActionManagerFactory
+ (id)actionManagerForObject:(id)a3;
+ (id)actionManagerForObjects:(id)a3;
@end

@implementation PXActionManagerFactory

+ (id)actionManagerForObjects:(id)a3
{
  v3 = a3;
  v4 = [v3 firstObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [[PXPhotoKitAssetActionManager alloc] initWithSuggestion:v4];
LABEL_5:
    v6 = v5;
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [[PXPhotoKitAssetCollectionActionManager alloc] initWithAssetCollection:v4 displayTitleInfo:0];
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v4;
    if ([v8 px_isMediaTypesFolder])
    {
      v9 = off_1E771ED48;
    }

    else
    {
      v9 = off_1E771ED48;
      if (([v8 px_isUtilitiesFolder] & 1) == 0 && !objc_msgSend(v8, "px_isBookmarksFolder"))
      {
        v9 = off_1E771EC70;
      }
    }

    v6 = [objc_alloc(*v9) initWithCollectionList:v8];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [[PXPhotoKitPersonActionManager alloc] initWithPeople:v3];
      goto LABEL_5;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v3;
      v11 = [PXPhotoKitSocialGroupActionManager alloc];
      v12 = [v10 firstObject];
      v13 = [v12 photoLibrary];
      v6 = [(PXPhotoKitSocialGroupActionManager *)v11 initWithSocialGroups:v10 photoLibrary:v13];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = [[PXPhotoKitAssetActionManager alloc] initWithAsset:v4];
        goto LABEL_5;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = [[PXPhotoKitPhotoLibraryActionManager alloc] initWithPhotoLibrary:v4];
        goto LABEL_5;
      }

      v6 = 0;
    }
  }

LABEL_6:

  return v6;
}

+ (id)actionManagerForObject:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v9 count:1];

  v7 = [a1 actionManagerForObjects:{v6, v9, v10}];

  return v7;
}

@end