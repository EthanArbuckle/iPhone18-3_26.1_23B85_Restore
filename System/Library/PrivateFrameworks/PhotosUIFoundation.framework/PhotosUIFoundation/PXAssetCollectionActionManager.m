@interface PXAssetCollectionActionManager
- (BOOL)canPerformActionType:(id)a3;
- (PXAssetCollectionActionManager)init;
- (PXAssetCollectionActionManager)initWithAssetCollectionReference:(id)a3;
- (PXAssetCollectionReference)assetCollectionReference;
- (UIDragSession)dragSession;
- (UIDropSession)dropSession;
- (UITraitEnvironment)traitEnvironment;
- (id)actionPerformerForActionType:(id)a3;
- (id)localizedTitleForActionType:(id)a3 useCase:(unint64_t)a4;
- (id)menuElementsForActionType:(id)a3;
- (id)systemImageNameForActionType:(id)a3;
- (void)setPhotosEnvironmentReference:(id)a3;
@end

@implementation PXAssetCollectionActionManager

- (UITraitEnvironment)traitEnvironment
{
  WeakRetained = objc_loadWeakRetained(&self->_traitEnvironment);

  return WeakRetained;
}

- (UIDropSession)dropSession
{
  WeakRetained = objc_loadWeakRetained(&self->_dropSession);

  return WeakRetained;
}

- (UIDragSession)dragSession
{
  WeakRetained = objc_loadWeakRetained(&self->_dragSession);

  return WeakRetained;
}

- (void)setPhotosEnvironmentReference:(id)a3
{
  v4 = a3;
  if (!v4 || (photosEnvironmentReference = self->_photosEnvironmentReference) != 0)
  {
    v6 = PXAssertGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *v7 = 0;
      _os_log_fault_impl(&dword_1B3F73000, v6, OS_LOG_TYPE_FAULT, "photos environment reference can only be set once", v7, 2u);
    }

    photosEnvironmentReference = self->_photosEnvironmentReference;
  }

  self->_photosEnvironmentReference = v4;
}

- (id)systemImageNameForActionType:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PXAssetCollectionActionManager *)self assetCollectionReference];
  if (v5)
  {
    v6 = [(PXAssetCollectionActionManager *)self systemImageNameForActionType:v4 assetCollectionReference:v5];
  }

  else
  {
    v7 = PXAssertGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_error_impl(&dword_1B3F73000, v7, OS_LOG_TYPE_ERROR, "systemImageNameForActionType: %@ with no assetCollection", &v9, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

- (id)localizedTitleForActionType:(id)a3 useCase:(unint64_t)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(PXAssetCollectionActionManager *)self assetCollectionReference];
  if (v7)
  {
    v8 = [(PXAssetCollectionActionManager *)self localizedTitleForActionType:v6 useCase:a4 assetCollectionReference:v7];
  }

  else
  {
    v9 = PXAssertGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_error_impl(&dword_1B3F73000, v9, OS_LOG_TYPE_ERROR, "localizedTitleForActionType: %@ with no assetCollection", &v11, 0xCu);
    }

    v8 = 0;
  }

  return v8;
}

- (id)actionPerformerForActionType:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PXAssetCollectionActionManager *)self assetCollectionReference];
  if (v5)
  {
    v6 = [(PXAssetCollectionActionManager *)self actionPerformerForActionType:v4 assetCollectionReference:v5];
  }

  else
  {
    v7 = PXAssertGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_error_impl(&dword_1B3F73000, v7, OS_LOG_TYPE_ERROR, "actionPerformerForActionType: %@ with no assetCollection", &v9, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

- (BOOL)canPerformActionType:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PXAssetCollectionActionManager *)self assetCollectionReference];
  if (v5)
  {
    v6 = [(PXAssetCollectionActionManager *)self canPerformActionType:v4 assetCollectionReference:v5];
  }

  else
  {
    v7 = PXAssertGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_error_impl(&dword_1B3F73000, v7, OS_LOG_TYPE_ERROR, "canPerformActionType: %@ with no assetCollection", &v9, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

- (PXAssetCollectionReference)assetCollectionReference
{
  v3 = [(PXAssetCollectionActionManager *)self assetsDataSourceManager];

  if (!v3 || (-[PXAssetCollectionActionManager assetsDataSourceManager](self, "assetsDataSourceManager"), v4 = objc_claimAutoreleasedReturnValue(), [v4 dataSource], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "assetCollectionReferenceForAssetCollectionReference:", self->_initialAssetCollectionReference), v6 = objc_claimAutoreleasedReturnValue(), v5, v4, (initialAssetCollectionReference = v6) == 0))
  {
    v6 = 0;
    initialAssetCollectionReference = self->_initialAssetCollectionReference;
  }

  v8 = initialAssetCollectionReference;

  return initialAssetCollectionReference;
}

- (PXAssetCollectionActionManager)initWithAssetCollectionReference:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v11.receiver = self;
  v11.super_class = PXAssetCollectionActionManager;
  v6 = [(PXAssetCollectionActionManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_initialAssetCollectionReference, a3);
    v12 = PXActionTypeAddContent;
    v13[0] = @"PXAssetCollectionActionTypeAddContent";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    assetCollectionActionTypeByGenericType = v7->_assetCollectionActionTypeByGenericType;
    v7->_assetCollectionActionTypeByGenericType = v8;
  }

  return v7;
}

- (PXAssetCollectionActionManager)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXAssetCollectionActionManager.m" lineNumber:80 description:{@"%s is not available as initializer", "-[PXAssetCollectionActionManager init]"}];

  abort();
}

- (id)menuElementsForActionType:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PXAssetCollectionActionManager *)self assetCollectionReference];
  if (v5)
  {
    v6 = [(PXAssetCollectionActionManager *)self menuElementsForActionType:v4 assetCollectionReference:v5];
  }

  else
  {
    v7 = PXAssertGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_error_impl(&dword_1B3F73000, v7, OS_LOG_TYPE_ERROR, "canPerformActionType: %@ with no assetCollection", &v9, 0xCu);
    }

    v6 = MEMORY[0x1E695E0F0];
  }

  return v6;
}

@end