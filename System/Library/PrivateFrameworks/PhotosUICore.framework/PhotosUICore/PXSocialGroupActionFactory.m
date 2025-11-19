@interface PXSocialGroupActionFactory
+ (id)actionForAddingPeople:(id)a3 toSocialGroup:(id)a4;
+ (id)actionForCreatingSocialGroupWithPeople:(id)a3;
+ (id)actionForRejectingPeople:(id)a3 groups:(id)a4;
+ (id)actionForRemovingPeople:(id)a3 fromSocialGroup:(id)a4;
+ (id)actionForRenamingSocialGroup:(id)a3 newTitle:(id)a4;
+ (id)actionForSettingNewKeyAsset:(id)a3 forSocialGroup:(id)a4;
+ (id)internalActionForSettingAsMagicItem:(id)a3;
@end

@implementation PXSocialGroupActionFactory

+ (id)internalActionForSettingAsMagicItem:(id)a3
{
  v3 = a3;
  v4 = [PXPeoplePromoteAsMagicInternalAction alloc];
  v5 = [v3 localIdentifier];
  v6 = [v3 photoLibrary];

  v7 = [(PXPeoplePromoteAsMagicInternalAction *)v4 initWithLocalIdentifier:v5 photoLibrary:v6];

  return v7;
}

+ (id)actionForSettingNewKeyAsset:(id)a3 forSocialGroup:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[PXModifySocialGroupAction alloc] initWithOriginalSocialGroup:v5 newKeyAsset:v6 newCustomTitle:0 customTitleWasDeleted:0 peopleToBeAdded:0 peopleToBeRemoved:0];

  return v7;
}

+ (id)actionForRenamingSocialGroup:(id)a3 newTitle:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = -[PXModifySocialGroupAction initWithOriginalSocialGroup:newKeyAsset:newCustomTitle:customTitleWasDeleted:peopleToBeAdded:peopleToBeRemoved:]([PXModifySocialGroupAction alloc], "initWithOriginalSocialGroup:newKeyAsset:newCustomTitle:customTitleWasDeleted:peopleToBeAdded:peopleToBeRemoved:", v6, 0, v5, [v5 length] == 0, 0, 0);

  return v7;
}

+ (id)actionForRemovingPeople:(id)a3 fromSocialGroup:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [PXModifySocialGroupAction alloc];
  v8 = [v6 fetchedObjects];

  v9 = [(PXModifySocialGroupAction *)v7 initWithOriginalSocialGroup:v5 newKeyAsset:0 newCustomTitle:0 customTitleWasDeleted:0 peopleToBeAdded:0 peopleToBeRemoved:v8];

  return v9;
}

+ (id)actionForAddingPeople:(id)a3 toSocialGroup:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [PXModifySocialGroupAction alloc];
  v8 = [v6 fetchedObjects];

  v9 = [(PXModifySocialGroupAction *)v7 initWithOriginalSocialGroup:v5 newKeyAsset:0 newCustomTitle:0 customTitleWasDeleted:0 peopleToBeAdded:v8 peopleToBeRemoved:0];

  return v9;
}

+ (id)actionForCreatingSocialGroupWithPeople:(id)a3
{
  v3 = a3;
  v4 = [[PXCreateSocialGroupAction alloc] initWithPeople:v3 customTitle:0 keyAssetUUID:0 creationCompletionBlock:0];

  return v4;
}

+ (id)actionForRejectingPeople:(id)a3 groups:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v5 count])
  {
    v8 = [[PXChangePeopleTypeAction alloc] initWithPeople:v5 type:-1];
    [v7 addObject:v8];
  }

  if ([v6 count])
  {
    v9 = [[PXSocialGroupRejectGroupAction alloc] initWithSocialGroups:v6];
    [v7 addObject:v9];
  }

  v10 = [PXComposablePhotosAction alloc];
  v11 = [v7 copy];
  v12 = [(PXComposablePhotosAction *)v10 initWithSubActions:v11];

  return v12;
}

@end