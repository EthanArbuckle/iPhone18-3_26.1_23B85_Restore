@interface PXPhotoDetailsActionMenuController
- (BOOL)actionPerformer:(id)a3 dismissViewController:(id)a4 completionHandler:(id)a5;
- (BOOL)actionPerformer:(id)a3 presentViewController:(id)a4;
- (BOOL)enableSectionedMenus;
- (BOOL)sectionDisplaysInline:(int64_t)a3;
- (PXPhotoDetailsActionMenuController)initWithActionManagers:(id)a3;
- (PXPhotoDetailsActionMenuController)initWithSelectionManager:(id)a3 displayTitleInfo:(id)a4 blockActionManager:(id)a5;
- (PXPhotosDetailsActionMenuDelegate)delegate;
- (id)assetCollectionActionManager;
- (id)availableActionTypes;
- (id)availableActionTypesInSection:(int64_t)a3;
- (id)availableInternalActionTypes;
- (id)iconForSection:(int64_t)a3;
- (id)presentationEnvironmentForActionPerformer:(id)a3;
- (id)titleForSection:(int64_t)a3;
- (id)undoManagerForActionPerformer:(id)a3;
- (void)actionPerformer:(id)a3 didChangeState:(unint64_t)a4;
- (void)assetCollectionActionPerformer:(id)a3 playMovieForAssetCollection:(id)a4;
- (void)setPeople:(id)a3;
@end

@implementation PXPhotoDetailsActionMenuController

- (PXPhotosDetailsActionMenuDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)assetCollectionActionPerformer:(id)a3 playMovieForAssetCollection:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(PXPhotoDetailsActionMenuController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(PXPhotoDetailsActionMenuController *)self delegate];
    [v9 actionMenu:self assetCollectionActionPerformer:v10 playMovieForAssetCollection:v6];
  }
}

- (id)undoManagerForActionPerformer:(id)a3
{
  v4 = [(PXPhotoDetailsActionMenuController *)self delegate];
  v5 = [v4 undoManagerForActionMenuController:self];

  return v5;
}

- (id)presentationEnvironmentForActionPerformer:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotoDetailsActionMenuController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(PXPhotoDetailsActionMenuController *)self delegate];
    v8 = [v7 presentationEnvironmentForActionPerformer:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)actionPerformer:(id)a3 didChangeState:(unint64_t)a4
{
  v9 = a3;
  v6 = [(PXPhotoDetailsActionMenuController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(PXPhotoDetailsActionMenuController *)self delegate];
    [v8 actionMenu:self actionPerformer:v9 didChangeState:a4];
  }
}

- (BOOL)actionPerformer:(id)a3 dismissViewController:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(PXPhotoDetailsActionMenuController *)self delegate];
  LOBYTE(self) = [v11 actionMenu:self actionPerformer:v10 dismissViewController:v9 completionHandler:v8];

  return self;
}

- (BOOL)actionPerformer:(id)a3 presentViewController:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PXPhotoDetailsActionMenuController *)self delegate];
  LOBYTE(self) = [v8 actionMenu:self actionPerformer:v7 presentViewController:v6];

  return self;
}

- (BOOL)sectionDisplaysInline:(int64_t)a3
{
  if (a3 < 4)
  {
    return 1;
  }

  if (a3 != 4)
  {
    if (a3 == 5)
    {
      v4 = [MEMORY[0x1E696AAA8] currentHandler];
      v5 = v4;
      v6 = a2;
      v7 = self;
      v8 = 223;
    }

    else
    {
      v4 = [MEMORY[0x1E696AAA8] currentHandler];
      v5 = v4;
      v6 = a2;
      v7 = self;
      v8 = 226;
    }

    [v4 handleFailureInMethod:v6 object:v7 file:@"PXPhotoDetailsActionMenuController.m" lineNumber:v8 description:{@"Code which should be unreachable has been reached", a2, self}];

    abort();
  }

  return 0;
}

- (id)iconForSection:(int64_t)a3
{
  if (a3 >= 4)
  {
    if (a3 != 4)
    {
      if (a3 == 5)
      {
        v5 = [MEMORY[0x1E696AAA8] currentHandler];
        v6 = v5;
        v7 = a2;
        v8 = self;
        v9 = 206;
      }

      else
      {
        v5 = [MEMORY[0x1E696AAA8] currentHandler];
        v6 = v5;
        v7 = a2;
        v8 = self;
        v9 = 209;
      }

      [v5 handleFailureInMethod:v7 object:v8 file:@"PXPhotoDetailsActionMenuController.m" lineNumber:v9 description:{@"Code which should be unreachable has been reached", a2, self}];

      abort();
    }

    v3 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"apple.logo"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)titleForSection:(int64_t)a3
{
  if (a3 < 4)
  {
    return &stru_1F1741150;
  }

  if (a3 != 4)
  {
    if (a3 == 5)
    {
      v4 = [MEMORY[0x1E696AAA8] currentHandler];
      v5 = v4;
      v6 = a2;
      v7 = self;
      v8 = 189;
    }

    else
    {
      v4 = [MEMORY[0x1E696AAA8] currentHandler];
      v5 = v4;
      v6 = a2;
      v7 = self;
      v8 = 192;
    }

    [v4 handleFailureInMethod:v6 object:v7 file:@"PXPhotoDetailsActionMenuController.m" lineNumber:v8 description:{@"Code which should be unreachable has been reached", a2, self}];

    abort();
  }

  return @"Internal";
}

- (id)availableActionTypesInSection:(int64_t)a3
{
  v39 = *MEMORY[0x1E69E9840];
  if (a3 <= 2)
  {
    switch(a3)
    {
      case 0:
        v38 = *off_1E7721D60;
        v4 = MEMORY[0x1E695DEC8];
        v5 = &v38;
        v9 = 1;
LABEL_15:
        v13 = [v4 arrayWithObjects:v5 count:{v9, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39}];
        goto LABEL_16;
      case 1:
        v10 = *off_1E7721C40;
        v34 = *off_1E7721D10;
        v35 = v10;
        v11 = *off_1E7721CE0;
        v36 = *off_1E7721CD8;
        v37 = v11;
        v4 = MEMORY[0x1E695DEC8];
        v5 = &v34;
        goto LABEL_12;
      case 2:
        v30 = *off_1E7721DC8;
        v31 = @"PXPhotosDetailsShowFaceAction";
        v3 = *off_1E7721C88;
        v32 = @"PXPhotosDetailsShowAssetAction";
        v33 = v3;
        v4 = MEMORY[0x1E695DEC8];
        v5 = &v30;
LABEL_12:
        v9 = 4;
        goto LABEL_15;
    }

    goto LABEL_22;
  }

  if (a3 == 3)
  {
    v12 = *off_1E7721D78;
    v27 = *off_1E7721C78;
    v28 = v12;
    v29 = *off_1E7721D88;
    v4 = MEMORY[0x1E695DEC8];
    v5 = &v27;
    goto LABEL_14;
  }

  if (a3 != 4)
  {
    if (a3 == 5)
    {
      v17 = [MEMORY[0x1E696AAA8] currentHandler];
      v18 = v17;
      v19 = a2;
      v20 = self;
      v21 = 172;
      goto LABEL_23;
    }

LABEL_22:
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = v17;
    v19 = a2;
    v20 = self;
    v21 = 175;
LABEL_23:
    [v17 handleFailureInMethod:v19 object:v20 file:@"PXPhotoDetailsActionMenuController.m" lineNumber:v21 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v6 = +[PXRootSettings sharedInstance];
  v7 = [v6 canShowInternalUI];

  if (v7)
  {
    v8 = *off_1E7721D18;
    v24 = *off_1E7721C38;
    v25 = v8;
    v26 = *off_1E7721CB0;
    v4 = MEMORY[0x1E695DEC8];
    v5 = &v24;
LABEL_14:
    v9 = 3;
    goto LABEL_15;
  }

  v13 = MEMORY[0x1E695E0F0];
LABEL_16:

  return v13;
}

- (BOOL)enableSectionedMenus
{
  v2 = [(PXPhotoDetailsActionMenuController *)self people];
  v3 = [v2 count] != 0;

  return v3;
}

- (id)availableInternalActionTypes
{
  v5[3] = *MEMORY[0x1E69E9840];
  v2 = *off_1E7721D18;
  v5[0] = *off_1E7721C38;
  v5[1] = v2;
  v5[2] = *off_1E7721CB0;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:3];

  return v3;
}

- (id)availableActionTypes
{
  v11[14] = *MEMORY[0x1E69E9840];
  v2 = *off_1E7721CC0;
  v11[0] = *off_1E7721D08;
  v11[1] = v2;
  v3 = *off_1E7721CF8;
  v11[2] = *off_1E7721D70;
  v11[3] = v3;
  v4 = *off_1E7721DD8;
  v11[4] = *off_1E7721C48;
  v11[5] = v4;
  v5 = *off_1E7721D10;
  v11[6] = *off_1E7721C88;
  v11[7] = v5;
  v6 = *off_1E7721CE0;
  v11[8] = *off_1E7721CD8;
  v11[9] = v6;
  v7 = *off_1E7721CB8;
  v11[10] = *off_1E7721D60;
  v11[11] = v7;
  v8 = *off_1E7721DD0;
  v11[12] = *off_1E7721DF0;
  v11[13] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:14];

  return v9;
}

- (void)setPeople:(id)a3
{
  v5 = a3;
  if (self->_people != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_people, a3);
    v6 = [(PXPhotoDetailsActionMenuController *)self assetCollectionActionManager];
    [v6 setPeople:v7];

    [(PXActionMenuController *)self invalidateActions];
    v5 = v7;
  }
}

- (id)assetCollectionActionManager
{
  [(PXActionMenuController *)self actionManagers];
  objc_claimAutoreleasedReturnValue();
  PXFind();
}

uint64_t __66__PXPhotoDetailsActionMenuController_assetCollectionActionManager__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (PXPhotoDetailsActionMenuController)initWithSelectionManager:(id)a3 displayTitleInfo:(id)a4 blockActionManager:(id)a5
{
  v50[3] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    v35 = [MEMORY[0x1E696AAA8] currentHandler];
    [v35 handleFailureInMethod:a2 object:self file:@"PXPhotoDetailsActionMenuController.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"selectionManager"}];
  }

  v12 = v9;
  v13 = [v12 selectionSnapshot];
  v14 = [v13 isAnyItemSelected];

  v15 = v12;
  if ((v14 & 1) == 0)
  {
    v16 = [off_1E77218C8 alloc];
    v17 = [v12 dataSourceManager];
    v15 = [v16 initWithDataSourceManager:v17];

    [v15 performChanges:&__block_literal_global_257258];
  }

  v18 = [v15 dataSourceManager];
  v19 = [v18 dataSource];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v36 = [MEMORY[0x1E696AAA8] currentHandler];
    [v36 handleFailureInMethod:a2 object:self file:@"PXPhotoDetailsActionMenuController.m" lineNumber:55 description:@"Only support PXAssetsDataSource"];
  }

  if ([v19 numberOfSections] != 1)
  {
    PXAssertGetLog();
  }

  v37 = v12;
  *buf = [v19 identifier];
  v46 = xmmword_1A5380D10;
  v47 = 0x7FFFFFFFFFFFFFFFLL;
  v20 = [v19 assetCollectionAtSectionIndexPath:buf];
  v39 = v10;
  v21 = [[PXPhotoKitAssetCollectionActionManager alloc] initWithAssetCollection:v20 displayTitleInfo:v10];
  v22 = [v15 dataSourceManager];
  [(PXAssetCollectionActionManager *)v21 setAssetsDataSourceManager:v22];

  v23 = [[PXPhotoKitAssetActionManager alloc] initWithSelectionManager:v15];
  v24 = v23;
  v38 = v11;
  if (v11)
  {
    v50[0] = v11;
    v50[1] = v21;
    v50[2] = v23;
    v25 = MEMORY[0x1E695DEC8];
    v26 = v50;
    v27 = 3;
  }

  else
  {
    v49[0] = v21;
    v49[1] = v23;
    v25 = MEMORY[0x1E695DEC8];
    v26 = v49;
    v27 = 2;
  }

  [v25 arrayWithObjects:v26 count:v27];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v28 = v42 = 0u;
  v29 = [v28 countByEnumeratingWithState:&v41 objects:v48 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v42;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v42 != v31)
        {
          objc_enumerationMutation(v28);
        }

        [*(*(&v41 + 1) + 8 * i) setPerformerDelegate:self];
      }

      v30 = [v28 countByEnumeratingWithState:&v41 objects:v48 count:16];
    }

    while (v30);
  }

  v40.receiver = self;
  v40.super_class = PXPhotoDetailsActionMenuController;
  v33 = [(PXActionMenuController *)&v40 initWithActionManagers:v28];

  return v33;
}

- (PXPhotoDetailsActionMenuController)initWithActionManagers:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXPhotoDetailsActionMenuController.m" lineNumber:40 description:{@"%s is not available as initializer", "-[PXPhotoDetailsActionMenuController initWithActionManagers:]"}];

  abort();
}

@end