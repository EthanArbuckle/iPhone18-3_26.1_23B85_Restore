@interface PXPhotoKitAssetSpotlightActionManager
+ (id)notThisPersonLocalizedTitleForPerson:(id)a3;
- (BOOL)canPerformActionType:(id)a3;
- (BOOL)supportsActionType:(id)a3;
- (void)px_registerAdditionalPerformerClasses;
@end

@implementation PXPhotoKitAssetSpotlightActionManager

- (void)px_registerAdditionalPerformerClasses
{
  v3.receiver = self;
  v3.super_class = PXPhotoKitAssetSpotlightActionManager;
  [(PXAssetActionManager *)&v3 px_registerAdditionalPerformerClasses];
  [(PXPhotoKitAssetActionManager *)self registerPerformerClass:objc_opt_class() forType:*off_1E7721BB0];
}

- (BOOL)canPerformActionType:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:*off_1E7721B88] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", *off_1E7721BB0))
  {
    goto LABEL_3;
  }

  if ([v4 isEqualToString:*off_1E7721A58])
  {
    v15 = self;
    v6 = &v15;
LABEL_8:
    v6[1] = PXPhotoKitAssetSpotlightActionManager;
    v5 = objc_msgSendSuper2(v6, sel_canPerformActionType_, v4, v8);
    goto LABEL_9;
  }

  if ([v4 isEqualToString:*off_1E7721A18])
  {
    v14.receiver = self;
    v6 = &v14;
    goto LABEL_8;
  }

  if (([v4 isEqualToString:*off_1E7721B90] & 1) == 0)
  {
    if ([v4 isEqualToString:*off_1E7721A30])
    {
      v13 = self;
      v6 = &v13;
    }

    else if ([v4 isEqualToString:*off_1E7721A38])
    {
      v12 = self;
      v6 = &v12;
    }

    else if ([v4 isEqualToString:*off_1E7721BC8])
    {
      v11 = self;
      v6 = &v11;
    }

    else if ([v4 isEqualToString:*off_1E7721B20])
    {
      v10 = self;
      v6 = &v10;
    }

    else if ([v4 isEqualToString:*off_1E7721B18])
    {
      v9 = self;
      v6 = &v9;
    }

    else
    {
      if (![v4 isEqualToString:*off_1E7721B10])
      {
        v5 = 0;
        goto LABEL_9;
      }

      v8 = self;
      v6 = &v8;
    }

    goto LABEL_8;
  }

LABEL_3:
  v5 = 1;
LABEL_9:

  return v5;
}

- (BOOL)supportsActionType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:*off_1E7721B88] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *off_1E7721BB0))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:*off_1E7721A58];
  }

  return v4;
}

+ (id)notThisPersonLocalizedTitleForPerson:(id)a3
{
  v3 = a3;
  v4 = [v3 px_localizedName];
  if ([v4 length])
  {
    PXLocalizedStringForPersonOrPetAndVisibility(v3, 0, @"PXPeopleAssetNotThisNamedPersonFormat");
    objc_claimAutoreleasedReturnValue();

    PXStringWithValidatedFormat();
  }

  v5 = PXLocalizedStringForPersonOrPetAndVisibility(v3, 0, @"PXPeopleAssetNotThisUnnamedPerson");

  return v5;
}

@end