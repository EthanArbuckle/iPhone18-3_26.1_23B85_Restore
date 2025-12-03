@interface _PXPhotoKitAssetCollectionFavoriteActionPerformer
+ (id)createActivityWithTitle:(id)title actionType:(id)type actionSystemImageName:(id)name;
@end

@implementation _PXPhotoKitAssetCollectionFavoriteActionPerformer

+ (id)createActivityWithTitle:(id)title actionType:(id)type actionSystemImageName:(id)name
{
  titleCopy = title;
  typeCopy = type;
  nameCopy = name;
  if (([self _targetFavoriteStateForAssetCollectionReference:0] & 1) == 0)
  {
    PXAssertGetLog();
  }

  v11 = [PXActivity activityWithActionTitle:titleCopy actionType:typeCopy activityType:@"PXActivityTypeAddToFavoriteMemories" systemImageName:nameCopy];

  return v11;
}

@end