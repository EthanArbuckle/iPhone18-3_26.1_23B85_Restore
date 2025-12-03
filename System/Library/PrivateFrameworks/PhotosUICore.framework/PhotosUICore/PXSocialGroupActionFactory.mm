@interface PXSocialGroupActionFactory
+ (id)actionForAddingPeople:(id)people toSocialGroup:(id)group;
+ (id)actionForCreatingSocialGroupWithPeople:(id)people;
+ (id)actionForRejectingPeople:(id)people groups:(id)groups;
+ (id)actionForRemovingPeople:(id)people fromSocialGroup:(id)group;
+ (id)actionForRenamingSocialGroup:(id)group newTitle:(id)title;
+ (id)actionForSettingNewKeyAsset:(id)asset forSocialGroup:(id)group;
+ (id)internalActionForSettingAsMagicItem:(id)item;
@end

@implementation PXSocialGroupActionFactory

+ (id)internalActionForSettingAsMagicItem:(id)item
{
  itemCopy = item;
  v4 = [PXPeoplePromoteAsMagicInternalAction alloc];
  localIdentifier = [itemCopy localIdentifier];
  photoLibrary = [itemCopy photoLibrary];

  v7 = [(PXPeoplePromoteAsMagicInternalAction *)v4 initWithLocalIdentifier:localIdentifier photoLibrary:photoLibrary];

  return v7;
}

+ (id)actionForSettingNewKeyAsset:(id)asset forSocialGroup:(id)group
{
  groupCopy = group;
  assetCopy = asset;
  v7 = [[PXModifySocialGroupAction alloc] initWithOriginalSocialGroup:groupCopy newKeyAsset:assetCopy newCustomTitle:0 customTitleWasDeleted:0 peopleToBeAdded:0 peopleToBeRemoved:0];

  return v7;
}

+ (id)actionForRenamingSocialGroup:(id)group newTitle:(id)title
{
  titleCopy = title;
  groupCopy = group;
  v7 = -[PXModifySocialGroupAction initWithOriginalSocialGroup:newKeyAsset:newCustomTitle:customTitleWasDeleted:peopleToBeAdded:peopleToBeRemoved:]([PXModifySocialGroupAction alloc], "initWithOriginalSocialGroup:newKeyAsset:newCustomTitle:customTitleWasDeleted:peopleToBeAdded:peopleToBeRemoved:", groupCopy, 0, titleCopy, [titleCopy length] == 0, 0, 0);

  return v7;
}

+ (id)actionForRemovingPeople:(id)people fromSocialGroup:(id)group
{
  groupCopy = group;
  peopleCopy = people;
  v7 = [PXModifySocialGroupAction alloc];
  fetchedObjects = [peopleCopy fetchedObjects];

  v9 = [(PXModifySocialGroupAction *)v7 initWithOriginalSocialGroup:groupCopy newKeyAsset:0 newCustomTitle:0 customTitleWasDeleted:0 peopleToBeAdded:0 peopleToBeRemoved:fetchedObjects];

  return v9;
}

+ (id)actionForAddingPeople:(id)people toSocialGroup:(id)group
{
  groupCopy = group;
  peopleCopy = people;
  v7 = [PXModifySocialGroupAction alloc];
  fetchedObjects = [peopleCopy fetchedObjects];

  v9 = [(PXModifySocialGroupAction *)v7 initWithOriginalSocialGroup:groupCopy newKeyAsset:0 newCustomTitle:0 customTitleWasDeleted:0 peopleToBeAdded:fetchedObjects peopleToBeRemoved:0];

  return v9;
}

+ (id)actionForCreatingSocialGroupWithPeople:(id)people
{
  peopleCopy = people;
  v4 = [[PXCreateSocialGroupAction alloc] initWithPeople:peopleCopy customTitle:0 keyAssetUUID:0 creationCompletionBlock:0];

  return v4;
}

+ (id)actionForRejectingPeople:(id)people groups:(id)groups
{
  peopleCopy = people;
  groupsCopy = groups;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([peopleCopy count])
  {
    v8 = [[PXChangePeopleTypeAction alloc] initWithPeople:peopleCopy type:-1];
    [v7 addObject:v8];
  }

  if ([groupsCopy count])
  {
    v9 = [[PXSocialGroupRejectGroupAction alloc] initWithSocialGroups:groupsCopy];
    [v7 addObject:v9];
  }

  v10 = [PXComposablePhotosAction alloc];
  v11 = [v7 copy];
  v12 = [(PXComposablePhotosAction *)v10 initWithSubActions:v11];

  return v12;
}

@end