@interface PXActionManagerFactory
+ (id)actionManagerForObject:(id)object;
+ (id)actionManagerForObjects:(id)objects;
@end

@implementation PXActionManagerFactory

+ (id)actionManagerForObjects:(id)objects
{
  objectsCopy = objects;
  firstObject = [objectsCopy firstObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [[PXPhotoKitAssetActionManager alloc] initWithSuggestion:firstObject];
LABEL_5:
    v6 = v5;
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [[PXPhotoKitAssetCollectionActionManager alloc] initWithAssetCollection:firstObject displayTitleInfo:0];
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = firstObject;
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
      v5 = [[PXPhotoKitPersonActionManager alloc] initWithPeople:objectsCopy];
      goto LABEL_5;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = objectsCopy;
      v11 = [PXPhotoKitSocialGroupActionManager alloc];
      firstObject2 = [v10 firstObject];
      photoLibrary = [firstObject2 photoLibrary];
      v6 = [(PXPhotoKitSocialGroupActionManager *)v11 initWithSocialGroups:v10 photoLibrary:photoLibrary];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = [[PXPhotoKitAssetActionManager alloc] initWithAsset:firstObject];
        goto LABEL_5;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = [[PXPhotoKitPhotoLibraryActionManager alloc] initWithPhotoLibrary:firstObject];
        goto LABEL_5;
      }

      v6 = 0;
    }
  }

LABEL_6:

  return v6;
}

+ (id)actionManagerForObject:(id)object
{
  v10 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v4 = MEMORY[0x1E695DEC8];
  objectCopy2 = object;
  v6 = [v4 arrayWithObjects:&objectCopy count:1];

  v7 = [self actionManagerForObjects:{v6, objectCopy, v10}];

  return v7;
}

@end