@interface PXPhotoKitAssetSpotlightActionManager
+ (id)notThisPersonLocalizedTitleForPerson:(id)person;
- (BOOL)canPerformActionType:(id)type;
- (BOOL)supportsActionType:(id)type;
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

- (BOOL)canPerformActionType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:*off_1E7721B88] & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", *off_1E7721BB0))
  {
    goto LABEL_3;
  }

  if ([typeCopy isEqualToString:*off_1E7721A58])
  {
    selfCopy = self;
    v6 = &selfCopy;
LABEL_8:
    v6[1] = PXPhotoKitAssetSpotlightActionManager;
    v5 = objc_msgSendSuper2(v6, sel_canPerformActionType_, typeCopy, selfCopy7);
    goto LABEL_9;
  }

  if ([typeCopy isEqualToString:*off_1E7721A18])
  {
    v14.receiver = self;
    v6 = &v14;
    goto LABEL_8;
  }

  if (([typeCopy isEqualToString:*off_1E7721B90] & 1) == 0)
  {
    if ([typeCopy isEqualToString:*off_1E7721A30])
    {
      selfCopy2 = self;
      v6 = &selfCopy2;
    }

    else if ([typeCopy isEqualToString:*off_1E7721A38])
    {
      selfCopy3 = self;
      v6 = &selfCopy3;
    }

    else if ([typeCopy isEqualToString:*off_1E7721BC8])
    {
      selfCopy4 = self;
      v6 = &selfCopy4;
    }

    else if ([typeCopy isEqualToString:*off_1E7721B20])
    {
      selfCopy5 = self;
      v6 = &selfCopy5;
    }

    else if ([typeCopy isEqualToString:*off_1E7721B18])
    {
      selfCopy6 = self;
      v6 = &selfCopy6;
    }

    else
    {
      if (![typeCopy isEqualToString:*off_1E7721B10])
      {
        v5 = 0;
        goto LABEL_9;
      }

      selfCopy7 = self;
      v6 = &selfCopy7;
    }

    goto LABEL_8;
  }

LABEL_3:
  v5 = 1;
LABEL_9:

  return v5;
}

- (BOOL)supportsActionType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:*off_1E7721B88] & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", *off_1E7721BB0))
  {
    v4 = 1;
  }

  else
  {
    v4 = [typeCopy isEqualToString:*off_1E7721A58];
  }

  return v4;
}

+ (id)notThisPersonLocalizedTitleForPerson:(id)person
{
  personCopy = person;
  px_localizedName = [personCopy px_localizedName];
  if ([px_localizedName length])
  {
    PXLocalizedStringForPersonOrPetAndVisibility(personCopy, 0, @"PXPeopleAssetNotThisNamedPersonFormat");
    objc_claimAutoreleasedReturnValue();

    PXStringWithValidatedFormat();
  }

  v5 = PXLocalizedStringForPersonOrPetAndVisibility(personCopy, 0, @"PXPeopleAssetNotThisUnnamedPerson");

  return v5;
}

@end