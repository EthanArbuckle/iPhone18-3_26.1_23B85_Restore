@interface PUPhotoBrowserOneUpPresentationAdaptor
- (PUPhotoBrowserZoomTransitionDelegate)zoomTransitionDelegate;
- (id)_photoTokenForAssetReference:(id)a3;
- (id)oneUpPresentationHelper:(id)a3 currentImageForAssetReference:(id)a4;
- (id)oneUpPresentationHelper:(id)a3 regionOfInterestForAssetReference:(id)a4 cropInsets:(UIEdgeInsets *)a5;
- (void)_setPhotoTokensForHiddenAssetReferences:(id)a3;
- (void)_setShouldDisableScroll:(BOOL)a3;
- (void)oneUpPresentationHelper:(id)a3 scrollAssetReferenceToVisible:(id)a4;
- (void)oneUpPresentationHelper:(id)a3 shouldHideAssetReferences:(id)a4;
- (void)setZoomTransitionDelegate:(id)a3;
@end

@implementation PUPhotoBrowserOneUpPresentationAdaptor

- (PUPhotoBrowserZoomTransitionDelegate)zoomTransitionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_zoomTransitionDelegate);

  return WeakRetained;
}

- (void)oneUpPresentationHelper:(id)a3 scrollAssetReferenceToVisible:(id)a4
{
  v6 = [(PUPhotoBrowserOneUpPresentationAdaptor *)self _photoTokenForAssetReference:a4];
  v5 = [(PUPhotoBrowserOneUpPresentationAdaptor *)self zoomTransitionDelegate];
  [v5 zoomTransition:0 getFrame:0 inCoordinateSpace:0 contentMode:0 cropInsets:0 forPhotoToken:v6 operation:2];
}

- (void)oneUpPresentationHelper:(id)a3 shouldHideAssetReferences:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v5, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [(PUPhotoBrowserOneUpPresentationAdaptor *)self _photoTokenForAssetReference:*(*(&v13 + 1) + 8 * v11), v13];
        if (v12)
        {
          [v6 addObject:v12];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  [(PUPhotoBrowserOneUpPresentationAdaptor *)self _setPhotoTokensForHiddenAssetReferences:v6];
}

- (id)oneUpPresentationHelper:(id)a3 currentImageForAssetReference:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__52353;
  v18 = __Block_byref_object_dispose__52354;
  v19 = 0;
  if (self->_zoomTransitionDelegateFlags.respondsToTransitionImageForPhotoToken)
  {
    v9 = [(PUPhotoBrowserOneUpPresentationAdaptor *)self _photoTokenForAssetReference:v7];
    v10 = [(PUPhotoBrowserOneUpPresentationAdaptor *)self zoomTransitionDelegate];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __96__PUPhotoBrowserOneUpPresentationAdaptor_oneUpPresentationHelper_currentImageForAssetReference___block_invoke;
    v13[3] = &unk_1E7B7AA10;
    v13[4] = &v14;
    [v10 zoomTransition:0 transitionImageForPhotoToken:v9 callback:v13];

    v8 = v15[5];
  }

  v11 = v8;
  _Block_object_dispose(&v14, 8);

  return v11;
}

- (id)oneUpPresentationHelper:(id)a3 regionOfInterestForAssetReference:(id)a4 cropInsets:(UIEdgeInsets *)a5
{
  v7 = a4;
  v8 = *(MEMORY[0x1E695F050] + 16);
  v28.origin = *MEMORY[0x1E695F050];
  v28.size = v8;
  v27 = 0;
  v9 = [(PUPhotoBrowserOneUpPresentationAdaptor *)self _photoTokenForAssetReference:v7];
  v10 = [(PUPhotoBrowserOneUpPresentationAdaptor *)self zoomTransitionDelegate];
  v26 = 0;
  [v10 zoomTransition:0 getFrame:&v28 inCoordinateSpace:&v26 contentMode:&v27 cropInsets:a5 forPhotoToken:v9 operation:0];
  v11 = v26;

  if (v27 == 1)
  {
    v12 = [v7 asset];
    [v12 aspectRatio];
    v14 = v13;

    x = PURectWithAspectRatioFittingRect(v14, v28.origin.x, v28.origin.y, v28.size.width, v28.size.height);
    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = width;
    v28.size.height = height;
  }

  else
  {
    y = v28.origin.y;
    x = v28.origin.x;
    height = v28.size.height;
    width = v28.size.width;
  }

  if (CGRectIsNull(*&x))
  {
    v19 = PXAssertGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1B36F3000, v19, OS_LOG_TYPE_ERROR, "Supplied rect from zoom transition for creating region of interest was CGRectNull", buf, 2u);
    }
  }

  if (!v11)
  {
    v20 = PXAssertGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1B36F3000, v20, OS_LOG_TYPE_ERROR, "Supplied coordinateSpace from zoom transition for creating region of interest was nil", buf, 2u);
    }
  }

  IsNull = CGRectIsNull(v28);
  v22 = 0;
  if (v11 && !IsNull)
  {
    v23 = objc_alloc(MEMORY[0x1E69C45A0]);
    v22 = [v23 initWithRect:v11 inCoordinateSpace:{*&v28.origin, *&v28.size}];
  }

  return v22;
}

- (void)_setShouldDisableScroll:(BOOL)a3
{
  if (self->__shouldDisableScroll == a3)
  {
    return;
  }

  v4 = a3;
  self->__shouldDisableScroll = a3;
  v6 = [(PUPhotoBrowserOneUpPresentationAdaptor *)self zoomTransitionDelegate];
  if (v4)
  {
    if (self->_zoomTransitionDelegateFlags.respondsToWillBeginForOperation)
    {
      v7 = v6;
      [v6 zoomTransition:0 willBeginForOperation:1 animated:1 interactive:1];
LABEL_7:
      v6 = v7;
    }
  }

  else if (self->_zoomTransitionDelegateFlags.respondsToDidFinishForOperation)
  {
    v7 = v6;
    [v6 zoomTransition:0 didFinishForOperation:1 animated:1 interactive:1];
    goto LABEL_7;
  }
}

- (void)_setPhotoTokensForHiddenAssetReferences:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (self->__photoTokensForHiddenAssetReferences != v4 && ([(NSSet *)v4 isEqual:?]& 1) == 0)
  {
    v6 = self->__photoTokensForHiddenAssetReferences;
    v7 = [(NSSet *)v5 copy];
    photoTokensForHiddenAssetReferences = self->__photoTokensForHiddenAssetReferences;
    self->__photoTokensForHiddenAssetReferences = v7;

    v9 = [(PUPhotoBrowserOneUpPresentationAdaptor *)self zoomTransitionDelegate];
    v10 = v9;
    if (self->_zoomTransitionDelegateFlags.respondsToShouldHidePhotosTokens)
    {
      [v9 zoomTransition:0 shouldHidePhotoTokens:v5];
    }

    else if (self->_zoomTransitionDelegateFlags.respondsToSetVisibilityForPhotoToken)
    {
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v11 = v6;
      v12 = [(NSSet *)v11 countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v28;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v28 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v27 + 1) + 8 * i);
            if (![(NSSet *)v5 containsObject:v16])
            {
              [v10 zoomTransition:0 setVisibility:1 forPhotoToken:v16];
            }
          }

          v13 = [(NSSet *)v11 countByEnumeratingWithState:&v27 objects:v32 count:16];
        }

        while (v13);
      }

      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v17 = v5;
      v18 = [(NSSet *)v17 countByEnumeratingWithState:&v23 objects:v31 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v24;
        do
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v24 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v23 + 1) + 8 * j);
            if (![(NSSet *)v11 containsObject:v22, v23])
            {
              [v10 zoomTransition:0 setVisibility:0 forPhotoToken:v22];
            }
          }

          v19 = [(NSSet *)v17 countByEnumeratingWithState:&v23 objects:v31 count:16];
        }

        while (v19);
      }
    }
  }
}

- (id)_photoTokenForAssetReference:(id)a3
{
  v4 = a3;
  v5 = [v4 asset];
  v6 = [v4 assetCollection];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v7 = [(PUPhotoBrowserOneUpPresentationAdaptor *)self zoomTransitionDelegate];
    v8 = [v7 zoomTransition:0 photoTokenForPhoto:v5 inCollection:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setZoomTransitionDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_zoomTransitionDelegate);

  if (WeakRetained != obj)
  {
    v5 = [(PUPhotoBrowserOneUpPresentationAdaptor *)self _photoTokensForHiddenAssetReferences];
    v6 = [(PUPhotoBrowserOneUpPresentationAdaptor *)self _shouldDisableScroll];
    [(PUPhotoBrowserOneUpPresentationAdaptor *)self _setPhotoTokensForHiddenAssetReferences:0];
    [(PUPhotoBrowserOneUpPresentationAdaptor *)self _setShouldDisableScroll:0];
    objc_storeWeak(&self->_zoomTransitionDelegate, obj);
    self->_zoomTransitionDelegateFlags.respondsToTransitionImageForPhotoToken = objc_opt_respondsToSelector() & 1;
    self->_zoomTransitionDelegateFlags.respondsToWillBeginForOperation = objc_opt_respondsToSelector() & 1;
    self->_zoomTransitionDelegateFlags.respondsToDidFinishForOperation = objc_opt_respondsToSelector() & 1;
    self->_zoomTransitionDelegateFlags.respondsToWillBeginAnimationForOperation = objc_opt_respondsToSelector() & 1;
    self->_zoomTransitionDelegateFlags.respondsToDidFinishAnimationForOperation = objc_opt_respondsToSelector() & 1;
    self->_zoomTransitionDelegateFlags.respondsToShouldHidePhotosTokens = objc_opt_respondsToSelector() & 1;
    self->_zoomTransitionDelegateFlags.respondsToSetVisibilityForPhotoToken = objc_opt_respondsToSelector() & 1;
    [(PUPhotoBrowserOneUpPresentationAdaptor *)self _setPhotoTokensForHiddenAssetReferences:v5];
    [(PUPhotoBrowserOneUpPresentationAdaptor *)self _setShouldDisableScroll:v6];
  }
}

@end