@interface PXChangePersonAssetsSortOrderAction
- (PXChangePersonAssetsSortOrderAction)initWithPerson:(id)person sortOrder:(int64_t)order;
- (id)actionNameLocalizationKey;
- (void)performAction:(id)action;
- (void)performUndo:(id)undo;
@end

@implementation PXChangePersonAssetsSortOrderAction

- (void)performUndo:(id)undo
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__PXChangePersonAssetsSortOrderAction_performUndo___block_invoke;
  v3[3] = &unk_1E774C648;
  v3[4] = self;
  [(PXPhotosAction *)self performChanges:v3 completionHandler:undo];
}

void __51__PXChangePersonAssetsSortOrderAction_performUndo___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E6978990];
  v3 = [*(a1 + 32) person];
  v4 = [v2 changeRequestForPerson:v3];

  [v4 setAssetSortOrder:{objc_msgSend(*(a1 + 32), "originalSortOrder")}];
}

- (void)performAction:(id)action
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__PXChangePersonAssetsSortOrderAction_performAction___block_invoke;
  v3[3] = &unk_1E774C648;
  v3[4] = self;
  [(PXPhotosAction *)self performChanges:v3 completionHandler:action];
}

void __53__PXChangePersonAssetsSortOrderAction_performAction___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E6978990];
  v3 = [*(a1 + 32) person];
  v4 = [v2 changeRequestForPerson:v3];

  [v4 setAssetSortOrder:{objc_msgSend(*(a1 + 32), "sortOrder")}];
}

- (id)actionNameLocalizationKey
{
  person = [(PXChangePersonAssetsSortOrderAction *)self person];
  v3 = [PXPeopleUtilities locKeyForPersonOrPet:person withVisibility:0 key:@"PXPhotosGridsPeopleSortActionName"];

  return v3;
}

- (PXChangePersonAssetsSortOrderAction)initWithPerson:(id)person sortOrder:(int64_t)order
{
  personCopy = person;
  photoLibrary = [personCopy photoLibrary];
  v11.receiver = self;
  v11.super_class = PXChangePersonAssetsSortOrderAction;
  v9 = [(PXPhotosAction *)&v11 initWithPhotoLibrary:photoLibrary];

  if (v9)
  {
    objc_storeStrong(&v9->_person, person);
    v9->_sortOrder = order;
    v9->_originalSortOrder = [personCopy assetSortOrder];
  }

  return v9;
}

@end