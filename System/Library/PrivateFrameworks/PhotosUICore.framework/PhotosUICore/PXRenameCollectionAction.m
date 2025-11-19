@interface PXRenameCollectionAction
+ (id)_actionNameLocalizationKeyForCollectionType:(unint64_t)a3;
+ (id)actionNameForCollection:(id)a3;
+ (unint64_t)_renameTypeForCollection:(id)a3;
- (PXRenameCollectionAction)initWithCollection:(id)a3 title:(id)a4;
- (id)actionNameLocalizationKey;
- (void)_changeTitle:(id)a3 completionHandler:(id)a4;
- (void)performAction:(id)a3;
- (void)performUndo:(id)a3;
@end

@implementation PXRenameCollectionAction

- (void)performUndo:(id)a3
{
  v4 = a3;
  v5 = [(PXRenameCollectionAction *)self undoTitle];
  [(PXRenameCollectionAction *)self _changeTitle:v5 completionHandler:v4];
}

- (void)performAction:(id)a3
{
  v4 = a3;
  v5 = [(PXRenameCollectionAction *)self redoTitle];
  [(PXRenameCollectionAction *)self _changeTitle:v5 completionHandler:v4];
}

- (id)actionNameLocalizationKey
{
  v3 = objc_opt_class();
  v4 = [(PXRenameCollectionAction *)self collectionType];

  return [v3 _actionNameLocalizationKeyForCollectionType:v4];
}

- (void)_changeTitle:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PXRenameCollectionAction *)self collection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __59__PXRenameCollectionAction__changeTitle_completionHandler___block_invoke;
  v15[3] = &unk_1E774A1B8;
  v15[4] = self;
  v16 = v8;
  v17 = v6;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59__PXRenameCollectionAction__changeTitle_completionHandler___block_invoke_2;
  v12[3] = &unk_1E774ACE8;
  v12[4] = self;
  v13 = v17;
  v14 = v7;
  v9 = v7;
  v10 = v17;
  v11 = v8;
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

- (PXRenameCollectionAction)initWithCollection:(id)a3 title:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if ([v7 canPerformEditOperation:7])
  {
    v9 = [v8 copy];
    v10 = [v7 localizedTitle];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = &stru_1F1741150;
    }

    v13 = v12;

    if ([v9 isEqualToString:v13])
    {
      v19 = 0;
    }

    else
    {
      v14 = [objc_opt_class() _renameTypeForCollection:v7];
      if (!v14)
      {
        PXAssertGetLog();
      }

      v15 = v14;
      v16 = [v7 photoLibrary];
      v21.receiver = self;
      v21.super_class = PXRenameCollectionAction;
      v17 = [(PXPhotosAction *)&v21 initWithPhotoLibrary:v16];

      if (v17)
      {
        objc_storeStrong(&v17->_collection, a3);
        v17->_collectionType = v15;
        objc_storeStrong(&v17->_redoTitle, v9);
        objc_storeStrong(&v17->_undoTitle, v12);
        currentTitle = v17->_currentTitle;
        v17->_currentTitle = &stru_1F1741150;
      }

      self = v17;
      v19 = self;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (id)actionNameForCollection:(id)a3
{
  v3 = [a1 _actionNameLocalizationKeyForCollectionType:{objc_msgSend(a1, "_renameTypeForCollection:", a3)}];
  v4 = PXLocalizedStringFromTable(v3, @"PhotosUICore");

  return v4;
}

+ (id)_actionNameLocalizationKeyForCollectionType:(unint64_t)a3
{
  if (a3 - 2 > 2)
  {
    return @"PXPhotosGridRenameAlbumActionMenuTitle";
  }

  else
  {
    return off_1E7743BD8[a3 - 2];
  }
}

+ (unint64_t)_renameTypeForCollection:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v3 assetCollectionSubtype] == 1000000204)
    {
      v4 = 2;
    }

    else if ([v3 assetCollectionType] == 12)
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