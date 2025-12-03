@interface PHUtilityCollection(PhotosUICore)
+ (__CFString)px_builtInAlbumNameForUtilityCollectionType:()PhotosUICore;
+ (uint64_t)px_utilityCollectionTypeforBuiltInAlbumName:()PhotosUICore;
- (uint64_t)px_navigationWellKnownName;
@end

@implementation PHUtilityCollection(PhotosUICore)

- (uint64_t)px_navigationWellKnownName
{
  v1 = MEMORY[0x1E6978B10];
  type = [self type];

  return [v1 px_builtInAlbumNameForUtilityCollectionType:type];
}

+ (uint64_t)px_utilityCollectionTypeforBuiltInAlbumName:()PhotosUICore
{
  v3 = a3;
  if (px_utilityCollectionTypeforBuiltInAlbumName__onceToken != -1)
  {
    dispatch_once(&px_utilityCollectionTypeforBuiltInAlbumName__onceToken, &__block_literal_global_875);
  }

  v4 = [px_utilityCollectionTypeforBuiltInAlbumName__utilityCollectionTypes objectForKeyedSubscript:v3];
  v5 = v4;
  if (v4)
  {
    unsignedIntegerValue = [v4 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

+ (__CFString)px_builtInAlbumNameForUtilityCollectionType:()PhotosUICore
{
  if (a3 > 2)
  {
    if (a3 <= 4)
    {
      if (a3 == 3)
      {
        v3 = @"utility-illustrations";
      }

      else
      {
        v3 = @"utility-handwriting";
      }

      goto LABEL_17;
    }

    if (a3 == 5)
    {
      v3 = @"utility-qr-codes";
      goto LABEL_17;
    }

    if (a3 == 6)
    {
      v3 = @"utility-maps";
      goto LABEL_17;
    }

LABEL_12:
    PXAssertGetLog();
  }

  if (!a3)
  {
    v3 = 0;
    goto LABEL_18;
  }

  if (a3 == 1)
  {
    v3 = @"utility-generic-documents";
    goto LABEL_17;
  }

  if (a3 != 2)
  {
    goto LABEL_12;
  }

  v3 = @"utility-receipts";
LABEL_17:
  v4 = v3;
LABEL_18:

  return v3;
}

@end