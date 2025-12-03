@interface PXAssetCollectionActionManager
- (BOOL)canPerformActionType:(id)type;
- (PXAssetCollectionActionManager)init;
- (PXAssetCollectionActionManager)initWithAssetCollectionReference:(id)reference;
- (PXAssetCollectionReference)assetCollectionReference;
- (UIDragSession)dragSession;
- (UIDropSession)dropSession;
- (UITraitEnvironment)traitEnvironment;
- (id)actionPerformerForActionType:(id)type;
- (id)localizedTitleForActionType:(id)type useCase:(unint64_t)case;
- (id)menuElementsForActionType:(id)type;
- (id)systemImageNameForActionType:(id)type;
- (void)setPhotosEnvironmentReference:(id)reference;
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

- (void)setPhotosEnvironmentReference:(id)reference
{
  referenceCopy = reference;
  if (!referenceCopy || (photosEnvironmentReference = self->_photosEnvironmentReference) != 0)
  {
    v6 = PXAssertGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *v7 = 0;
      _os_log_fault_impl(&dword_1B3F73000, v6, OS_LOG_TYPE_FAULT, "photos environment reference can only be set once", v7, 2u);
    }

    photosEnvironmentReference = self->_photosEnvironmentReference;
  }

  self->_photosEnvironmentReference = referenceCopy;
}

- (id)systemImageNameForActionType:(id)type
{
  v11 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  assetCollectionReference = [(PXAssetCollectionActionManager *)self assetCollectionReference];
  if (assetCollectionReference)
  {
    v6 = [(PXAssetCollectionActionManager *)self systemImageNameForActionType:typeCopy assetCollectionReference:assetCollectionReference];
  }

  else
  {
    v7 = PXAssertGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = typeCopy;
      _os_log_error_impl(&dword_1B3F73000, v7, OS_LOG_TYPE_ERROR, "systemImageNameForActionType: %@ with no assetCollection", &v9, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

- (id)localizedTitleForActionType:(id)type useCase:(unint64_t)case
{
  v13 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  assetCollectionReference = [(PXAssetCollectionActionManager *)self assetCollectionReference];
  if (assetCollectionReference)
  {
    v8 = [(PXAssetCollectionActionManager *)self localizedTitleForActionType:typeCopy useCase:case assetCollectionReference:assetCollectionReference];
  }

  else
  {
    v9 = PXAssertGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = typeCopy;
      _os_log_error_impl(&dword_1B3F73000, v9, OS_LOG_TYPE_ERROR, "localizedTitleForActionType: %@ with no assetCollection", &v11, 0xCu);
    }

    v8 = 0;
  }

  return v8;
}

- (id)actionPerformerForActionType:(id)type
{
  v11 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  assetCollectionReference = [(PXAssetCollectionActionManager *)self assetCollectionReference];
  if (assetCollectionReference)
  {
    v6 = [(PXAssetCollectionActionManager *)self actionPerformerForActionType:typeCopy assetCollectionReference:assetCollectionReference];
  }

  else
  {
    v7 = PXAssertGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = typeCopy;
      _os_log_error_impl(&dword_1B3F73000, v7, OS_LOG_TYPE_ERROR, "actionPerformerForActionType: %@ with no assetCollection", &v9, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

- (BOOL)canPerformActionType:(id)type
{
  v11 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  assetCollectionReference = [(PXAssetCollectionActionManager *)self assetCollectionReference];
  if (assetCollectionReference)
  {
    v6 = [(PXAssetCollectionActionManager *)self canPerformActionType:typeCopy assetCollectionReference:assetCollectionReference];
  }

  else
  {
    v7 = PXAssertGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = typeCopy;
      _os_log_error_impl(&dword_1B3F73000, v7, OS_LOG_TYPE_ERROR, "canPerformActionType: %@ with no assetCollection", &v9, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

- (PXAssetCollectionReference)assetCollectionReference
{
  assetsDataSourceManager = [(PXAssetCollectionActionManager *)self assetsDataSourceManager];

  if (!assetsDataSourceManager || (-[PXAssetCollectionActionManager assetsDataSourceManager](self, "assetsDataSourceManager"), v4 = objc_claimAutoreleasedReturnValue(), [v4 dataSource], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "assetCollectionReferenceForAssetCollectionReference:", self->_initialAssetCollectionReference), v6 = objc_claimAutoreleasedReturnValue(), v5, v4, (initialAssetCollectionReference = v6) == 0))
  {
    v6 = 0;
    initialAssetCollectionReference = self->_initialAssetCollectionReference;
  }

  v8 = initialAssetCollectionReference;

  return initialAssetCollectionReference;
}

- (PXAssetCollectionActionManager)initWithAssetCollectionReference:(id)reference
{
  v13[1] = *MEMORY[0x1E69E9840];
  referenceCopy = reference;
  v11.receiver = self;
  v11.super_class = PXAssetCollectionActionManager;
  v6 = [(PXAssetCollectionActionManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_initialAssetCollectionReference, reference);
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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetCollectionActionManager.m" lineNumber:80 description:{@"%s is not available as initializer", "-[PXAssetCollectionActionManager init]"}];

  abort();
}

- (id)menuElementsForActionType:(id)type
{
  v11 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  assetCollectionReference = [(PXAssetCollectionActionManager *)self assetCollectionReference];
  if (assetCollectionReference)
  {
    v6 = [(PXAssetCollectionActionManager *)self menuElementsForActionType:typeCopy assetCollectionReference:assetCollectionReference];
  }

  else
  {
    v7 = PXAssertGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = typeCopy;
      _os_log_error_impl(&dword_1B3F73000, v7, OS_LOG_TYPE_ERROR, "canPerformActionType: %@ with no assetCollection", &v9, 0xCu);
    }

    v6 = MEMORY[0x1E695E0F0];
  }

  return v6;
}

@end