@interface PXRenameCollectionAction
+ (id)_actionNameLocalizationKeyForCollectionType:(unint64_t)type;
+ (id)actionNameForCollection:(id)collection;
+ (unint64_t)_renameTypeForCollection:(id)collection;
- (PXRenameCollectionAction)initWithCollection:(id)collection title:(id)title;
- (id)actionNameLocalizationKey;
- (void)_changeTitle:(id)title completionHandler:(id)handler;
- (void)performAction:(id)action;
- (void)performUndo:(id)undo;
@end

@implementation PXRenameCollectionAction

- (void)performUndo:(id)undo
{
  undoCopy = undo;
  undoTitle = [(PXRenameCollectionAction *)self undoTitle];
  [(PXRenameCollectionAction *)self _changeTitle:undoTitle completionHandler:undoCopy];
}

- (void)performAction:(id)action
{
  actionCopy = action;
  redoTitle = [(PXRenameCollectionAction *)self redoTitle];
  [(PXRenameCollectionAction *)self _changeTitle:redoTitle completionHandler:actionCopy];
}

- (id)actionNameLocalizationKey
{
  v3 = objc_opt_class();
  collectionType = [(PXRenameCollectionAction *)self collectionType];

  return [v3 _actionNameLocalizationKeyForCollectionType:collectionType];
}

- (void)_changeTitle:(id)title completionHandler:(id)handler
{
  titleCopy = title;
  handlerCopy = handler;
  collection = [(PXRenameCollectionAction *)self collection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __59__PXRenameCollectionAction__changeTitle_completionHandler___block_invoke;
  v15[3] = &unk_1E774A1B8;
  v15[4] = self;
  v16 = collection;
  v17 = titleCopy;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59__PXRenameCollectionAction__changeTitle_completionHandler___block_invoke_2;
  v12[3] = &unk_1E774ACE8;
  v12[4] = self;
  v13 = v17;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = v17;
  v11 = collection;
  [(PXPhotosAction *)self performChanges:v15 completionHandler:v12];
}

void __59__PXRenameCollectionAction__changeTitle_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionType];
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v3 = *(a1 + 48);
      v4 = [MEMORY[0x1E6978780] changeRequestForCollectionShare:*(a1 + 40)];
    }

    else
    {
      if (v2 != 4)
      {
        return;
      }

      v3 = *(a1 + 48);
      v4 = [MEMORY[0x1E6978768] changeRequestForCollectionList:*(a1 + 40)];
    }
  }

  else if (v2 == 1)
  {
    v3 = *(a1 + 48);
    v4 = [MEMORY[0x1E6978660] changeRequestForAssetCollection:*(a1 + 40)];
  }

  else
  {
    if (v2 != 2)
    {
      return;
    }

    v3 = *(a1 + 48);
    v4 = [MEMORY[0x1E6978AD0] changeRequestForSmartAlbum:*(a1 + 40)];
  }

  v5 = v4;
  [v4 setTitle:v3];
}

void __59__PXRenameCollectionAction__changeTitle_completionHandler___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) setCurrentTitle:*(a1 + 40)];
  }

  (*(*(a1 + 48) + 16))();
}

- (PXRenameCollectionAction)initWithCollection:(id)collection title:(id)title
{
  v22 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  titleCopy = title;
  if ([collectionCopy canPerformEditOperation:7])
  {
    v9 = [titleCopy copy];
    localizedTitle = [collectionCopy localizedTitle];
    v11 = localizedTitle;
    if (localizedTitle)
    {
      v12 = localizedTitle;
    }

    else
    {
      v12 = &stru_1F1741150;
    }

    v13 = v12;

    if ([v9 isEqualToString:v13])
    {
      selfCopy = 0;
    }

    else
    {
      v14 = [objc_opt_class() _renameTypeForCollection:collectionCopy];
      if (!v14)
      {
        PXAssertGetLog();
      }

      v15 = v14;
      photoLibrary = [collectionCopy photoLibrary];
      v21.receiver = self;
      v21.super_class = PXRenameCollectionAction;
      v17 = [(PXPhotosAction *)&v21 initWithPhotoLibrary:photoLibrary];

      if (v17)
      {
        objc_storeStrong(&v17->_collection, collection);
        v17->_collectionType = v15;
        objc_storeStrong(&v17->_redoTitle, v9);
        objc_storeStrong(&v17->_undoTitle, v12);
        currentTitle = v17->_currentTitle;
        v17->_currentTitle = &stru_1F1741150;
      }

      self = v17;
      selfCopy = self;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)actionNameForCollection:(id)collection
{
  v3 = [self _actionNameLocalizationKeyForCollectionType:{objc_msgSend(self, "_renameTypeForCollection:", collection)}];
  v4 = PXLocalizedStringFromTable(v3, @"PhotosUICore");

  return v4;
}

+ (id)_actionNameLocalizationKeyForCollectionType:(unint64_t)type
{
  if (type - 2 > 2)
  {
    return @"PXPhotosGridRenameAlbumActionMenuTitle";
  }

  else
  {
    return off_1E7743BD8[type - 2];
  }
}

+ (unint64_t)_renameTypeForCollection:(id)collection
{
  collectionCopy = collection;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([collectionCopy assetCollectionSubtype] == 1000000204)
    {
      v4 = 2;
    }

    else if ([collectionCopy assetCollectionType] == 12)
    {
      v4 = 3;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = 4;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

@end