@interface PXPhotosGridStackTransitionHelper
- (id)transitionViewForAsset:(id)asset;
- (uint64_t)prepareForTransitionFromEndpoint:(void *)endpoint toEndpoint:(void *)toEndpoint withPrimaryAssetReference:(void *)reference dataSource:;
- (void)addTransitionAnimationsToAnimator:(void *)animator inContainerView:;
- (void)addTransitionCompletionsToAnimator:(uint64_t)animator;
- (void)initWithStackItemsCount:(void *)count;
- (void)setInitialTransitionStateInContainerView:(void *)view aboveView:;
@end

@implementation PXPhotosGridStackTransitionHelper

- (id)transitionViewForAsset:(id)asset
{
  assetMapping = self->_assetMapping;
  assetCopy = asset;
  v5 = assetCopy;
  if (assetMapping)
  {
    assetReferences = assetMapping->_assetReferences;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __61__PXPhotosGridTransitionAssetMapping_transitionViewForAsset___block_invoke;
    v11[3] = &unk_1E774B6B0;
    v12 = assetCopy;
    v7 = [(NSMutableArray *)assetReferences indexOfObjectPassingTest:v11];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = 0;
    }

    else
    {
      v8 = v7;
      if (v7 >= [(NSMutableArray *)assetMapping->_transitionViews count])
      {
        PXAssertGetLog();
      }

      v9 = [(NSMutableArray *)assetMapping->_transitionViews objectAtIndexedSubscript:v8];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)initWithStackItemsCount:(void *)count
{
  if (!count)
  {
    return 0;
  }

  v18.receiver = count;
  v18.super_class = PXPhotosGridStackTransitionHelper;
  v3 = objc_msgSendSuper2(&v18, sel_init);
  v4 = v3;
  if (v3)
  {
    v3[2] = a2;
    v5 = [PXPhotosGridTransitionAssetMapping alloc];
    if (v5)
    {
      v19.receiver = v5;
      v19.super_class = PXPhotosGridTransitionAssetMapping;
      v6 = objc_msgSendSuper2(&v19, sel_init);
      if (v6)
      {
        v7 = (2 * a2) | 1;
        v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:v7];
        v9 = v6[1];
        v6[1] = v8;

        v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:v7];
        v11 = v6[2];
        v6[2] = v10;

        v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:v7];
        v13 = v6[3];
        v6[3] = v12;

        v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:v7];
        v15 = v6[4];
        v6[4] = v14;
      }
    }

    else
    {
      v6 = 0;
    }

    v16 = v4[1];
    v4[1] = v6;
  }

  return v4;
}

- (uint64_t)prepareForTransitionFromEndpoint:(void *)endpoint toEndpoint:(void *)toEndpoint withPrimaryAssetReference:(void *)reference dataSource:
{
  v57 = *MEMORY[0x1E69E9840];
  v9 = a2;
  endpointCopy = endpoint;
  toEndpointCopy = toEndpoint;
  referenceCopy = reference;
  v43 = referenceCopy;
  if (self)
  {
    v13 = [referenceCopy assetReferenceForAssetReference:toEndpointCopy];
    v48 = 0u;
    v49 = 0u;
    [toEndpointCopy indexPath];
    if (v13 && v48 != *off_1E7721F68)
    {
      v42 = v13;
      v39 = toEndpointCopy;
      v15 = *(self + 8);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __118__PXPhotosGridStackTransitionHelper_prepareForTransitionFromEndpoint_toEndpoint_withPrimaryAssetReference_dataSource___block_invoke;
      aBlock[3] = &unk_1E772FC78;
      v41 = v9;
      v45 = v9;
      v40 = endpointCopy;
      v46 = endpointCopy;
      v14 = v15;
      v47 = v14;
      v16 = _Block_copy(aBlock);
      v17 = [v43 numberOfItemsInSection:*(&v48 + 1)];
      identifier = [v43 identifier];
      v19 = *(self + 16);
      if (v19 >= 1)
      {
        v20 = identifier;
        v21 = -v19;
        do
        {
          v22 = v49;
          if (v21 + v49 >= 0)
          {
            *&buf = v20;
            *(&buf + 1) = *(&v48 + 1);
            v55 = v21 + v49;
            v56 = 0x7FFFFFFFFFFFFFFFLL;
            v23 = [v43 assetReferenceAtItemIndexPath:&buf];
            v16[2](v16, v23);

            v22 = v49;
          }

          v24 = v22 + v19;
          if (v24 < v17)
          {
            *&buf = v20;
            *(&buf + 1) = *(&v48 + 1);
            v55 = v24;
            v56 = 0x7FFFFFFFFFFFFFFFLL;
            v25 = [v43 assetReferenceAtItemIndexPath:&buf];
            v16[2](v16, v25);
          }

          ++v21;
        }

        while (v19-- > 1);
      }

      v13 = v42;
      v16[2](v16, v42);
      if (v14)
      {
        v53 = 0u;
        v51 = 0u;
        v52 = 0u;
        v50 = 0u;
        v27 = v14[2].isa;
        v28 = [(objc_class *)v27 countByEnumeratingWithState:&v50 objects:&buf count:16];
        if (v28)
        {
          v29 = v28;
          v30 = 0;
          v31 = *v51;
          do
          {
            for (i = 0; i != v29; ++i)
            {
              if (*v51 != v31)
              {
                objc_enumerationMutation(v27);
              }

              v33 = *(*(&v50 + 1) + 8 * i);
              placeholderViewFactory = [v33 placeholderViewFactory];

              if (placeholderViewFactory)
              {
                placeholderViewFactory2 = [v33 placeholderViewFactory];
                null = (placeholderViewFactory2)[2](placeholderViewFactory2, v33);

                [(objc_class *)v14[4].isa addObject:null];
                v30 = (v30 + 1);
              }

              else
              {
                isa = v14[4].isa;
                null = [MEMORY[0x1E695DFB0] null];
                [(objc_class *)isa addObject:null];
              }
            }

            v29 = [(objc_class *)v27 countByEnumeratingWithState:&v50 objects:&buf count:16];
          }

          while (v29);
        }

        else
        {
          v30 = 0;
        }

        v14[5].isa = v30;
        self = v30 != 0;
        v13 = v42;
      }

      else
      {
        self = 0;
      }

      endpointCopy = v40;
      v9 = v41;
      toEndpointCopy = v39;
    }

    else
    {
      v14 = PLUIGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = toEndpointCopy;
        _os_log_impl(&dword_1A3C1C000, v14, OS_LOG_TYPE_ERROR, "Transition: asset reference %@ cannot be found in the provided dataSource", &buf, 0xCu);
      }

      self = 0;
    }
  }

  return self;
}

void __118__PXPhotosGridStackTransitionHelper_prepareForTransitionFromEndpoint_toEndpoint_withPrimaryAssetReference_dataSource___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [*(a1 + 32) regionOfInterestForTransitioningAssetReference:v11];
  v4 = [*(a1 + 40) regionOfInterestForTransitioningAssetReference:v11];
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = *(a1 + 48);
    if (v7)
    {
      v8 = *(v7 + 8);
      v9 = v4;
      v10 = v3;
      [v8 addObject:v11];
      [*(v7 + 16) addObject:v10];

      [*(v7 + 24) addObject:v9];
    }
  }
}

- (void)setInitialTransitionStateInContainerView:(void *)view aboveView:
{
  v5 = a2;
  viewCopy = view;
  v7 = viewCopy;
  if (self)
  {
    v8 = self[1];
    if (v8 && *(v8 + 40))
    {
      if (viewCopy)
      {
        goto LABEL_5;
      }
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_setInitialTransitionStateInContainerView_aboveView_ object:self file:@"PXPhotosGridStackTransitionHelper.m" lineNumber:87 description:@"Helper must be successfully prepared"];

      if (v7)
      {
LABEL_5:
        v9 = v7;
        v10 = v5;
        do
        {
          superview = [v9 superview];

          if (superview == v10)
          {
            break;
          }

          superview2 = [v9 superview];

          v9 = superview2;
        }

        while (superview2);

        goto LABEL_11;
      }
    }

    v9 = 0;
LABEL_11:
    v14 = [MEMORY[0x1E695DFA8] set];
    v15 = self[1];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __88__PXPhotosGridStackTransitionHelper_setInitialTransitionStateInContainerView_aboveView___block_invoke;
    v20[3] = &unk_1E772FCA0;
    v21 = v5;
    v22 = v9;
    v16 = v14;
    v23 = v16;
    v17 = v9;
    [(PXPhotosGridTransitionAssetMapping *)v15 enumerateTransitionAssetsUsingBlock:v20];
    v18 = v23;
    self = v16;
  }

  return self;
}

void __88__PXPhotosGridStackTransitionHelper_setInitialTransitionStateInContainerView_aboveView___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v7 = *(a1 + 32);
  v8 = a5;
  a2;
  [a3 rectInCoordinateSpace:v7];
  PXRectGetCenter();
}

- (void)addTransitionAnimationsToAnimator:(void *)animator inContainerView:
{
  v5 = a2;
  animatorCopy = animator;
  if (self)
  {
    v7 = *(self + 8);
    if (!v7 || !*(v7 + 40))
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_addTransitionAnimationsToAnimator_inContainerView_ object:self file:@"PXPhotosGridStackTransitionHelper.m" lineNumber:112 description:@"Helper must be successfully prepared"];
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __87__PXPhotosGridStackTransitionHelper_addTransitionAnimationsToAnimator_inContainerView___block_invoke;
    v9[3] = &unk_1E774C620;
    v9[4] = self;
    v10 = animatorCopy;
    [v5 addAnimations:v9];
  }
}

void __87__PXPhotosGridStackTransitionHelper_addTransitionAnimationsToAnimator_inContainerView___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __87__PXPhotosGridStackTransitionHelper_addTransitionAnimationsToAnimator_inContainerView___block_invoke_2;
  v2[3] = &unk_1E772FCC8;
  v3 = *(a1 + 40);
  [(PXPhotosGridTransitionAssetMapping *)v1 enumerateTransitionAssetsUsingBlock:v2];
}

void __87__PXPhotosGridStackTransitionHelper_addTransitionAnimationsToAnimator_inContainerView___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v7 = a4;
  v8 = *(a1 + 32);
  v9 = a5;
  [v7 rectInCoordinateSpace:v8];
  memset(&v15, 0, sizeof(v15));
  v10 = [v7 imageViewSpec];
  [v10 rotationAngle];
  if (v11 == 0.0)
  {
    v14 = *(MEMORY[0x1E695EFD0] + 16);
    *&v15.a = *MEMORY[0x1E695EFD0];
    *&v15.c = v14;
    *&v15.tx = *(MEMORY[0x1E695EFD0] + 32);
  }

  else
  {
    v12 = [v7 imageViewSpec];
    [v12 rotationAngle];
    CGAffineTransformMakeRotation(&v15, v13);
  }

  PXRectGetCenter();
}

- (void)addTransitionCompletionsToAnimator:(uint64_t)animator
{
  v3 = a2;
  if (animator)
  {
    v4 = *(animator + 8);
    if (!v4 || !*(v4 + 40))
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_addTransitionCompletionsToAnimator_ object:animator file:@"PXPhotosGridStackTransitionHelper.m" lineNumber:127 description:@"Helper must be successfully prepared"];
    }

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __72__PXPhotosGridStackTransitionHelper_addTransitionCompletionsToAnimator___block_invoke;
    v6[3] = &unk_1E7748D18;
    v6[4] = animator;
    [v3 addCompletion:v6];
  }
}

@end