@interface PXPhotosGridStackTransitionHelper
- (id)transitionViewForAsset:(id)a3;
- (uint64_t)prepareForTransitionFromEndpoint:(void *)a3 toEndpoint:(void *)a4 withPrimaryAssetReference:(void *)a5 dataSource:;
- (void)addTransitionAnimationsToAnimator:(void *)a3 inContainerView:;
- (void)addTransitionCompletionsToAnimator:(uint64_t)a1;
- (void)initWithStackItemsCount:(void *)a1;
- (void)setInitialTransitionStateInContainerView:(void *)a3 aboveView:;
@end

@implementation PXPhotosGridStackTransitionHelper

- (id)transitionViewForAsset:(id)a3
{
  assetMapping = self->_assetMapping;
  v4 = a3;
  v5 = v4;
  if (assetMapping)
  {
    assetReferences = assetMapping->_assetReferences;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __61__PXPhotosGridTransitionAssetMapping_transitionViewForAsset___block_invoke;
    v11[3] = &unk_1E774B6B0;
    v12 = v4;
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

- (void)initWithStackItemsCount:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  v18.receiver = a1;
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

- (uint64_t)prepareForTransitionFromEndpoint:(void *)a3 toEndpoint:(void *)a4 withPrimaryAssetReference:(void *)a5 dataSource:
{
  v57 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v43 = v12;
  if (a1)
  {
    v13 = [v12 assetReferenceForAssetReference:v11];
    v48 = 0u;
    v49 = 0u;
    [v11 indexPath];
    if (v13 && v48 != *off_1E7721F68)
    {
      v42 = v13;
      v39 = v11;
      v15 = *(a1 + 8);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __118__PXPhotosGridStackTransitionHelper_prepareForTransitionFromEndpoint_toEndpoint_withPrimaryAssetReference_dataSource___block_invoke;
      aBlock[3] = &unk_1E772FC78;
      v41 = v9;
      v45 = v9;
      v40 = v10;
      v46 = v10;
      v14 = v15;
      v47 = v14;
      v16 = _Block_copy(aBlock);
      v17 = [v43 numberOfItemsInSection:*(&v48 + 1)];
      v18 = [v43 identifier];
      v19 = *(a1 + 16);
      if (v19 >= 1)
      {
        v20 = v18;
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
              v34 = [v33 placeholderViewFactory];

              if (v34)
              {
                v35 = [v33 placeholderViewFactory];
                v36 = (v35)[2](v35, v33);

                [(objc_class *)v14[4].isa addObject:v36];
                v30 = (v30 + 1);
              }

              else
              {
                isa = v14[4].isa;
                v36 = [MEMORY[0x1E695DFB0] null];
                [(objc_class *)isa addObject:v36];
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
        a1 = v30 != 0;
        v13 = v42;
      }

      else
      {
        a1 = 0;
      }

      v10 = v40;
      v9 = v41;
      v11 = v39;
    }

    else
    {
      v14 = PLUIGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v11;
        _os_log_impl(&dword_1A3C1C000, v14, OS_LOG_TYPE_ERROR, "Transition: asset reference %@ cannot be found in the provided dataSource", &buf, 0xCu);
      }

      a1 = 0;
    }
  }

  return a1;
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

- (void)setInitialTransitionStateInContainerView:(void *)a3 aboveView:
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    v8 = a1[1];
    if (v8 && *(v8 + 40))
    {
      if (v6)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      [v13 handleFailureInMethod:sel_setInitialTransitionStateInContainerView_aboveView_ object:a1 file:@"PXPhotosGridStackTransitionHelper.m" lineNumber:87 description:@"Helper must be successfully prepared"];

      if (v7)
      {
LABEL_5:
        v9 = v7;
        v10 = v5;
        do
        {
          v11 = [v9 superview];

          if (v11 == v10)
          {
            break;
          }

          v12 = [v9 superview];

          v9 = v12;
        }

        while (v12);

        goto LABEL_11;
      }
    }

    v9 = 0;
LABEL_11:
    v14 = [MEMORY[0x1E695DFA8] set];
    v15 = a1[1];
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
    a1 = v16;
  }

  return a1;
}

void __88__PXPhotosGridStackTransitionHelper_setInitialTransitionStateInContainerView_aboveView___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v7 = *(a1 + 32);
  v8 = a5;
  a2;
  [a3 rectInCoordinateSpace:v7];
  PXRectGetCenter();
}

- (void)addTransitionAnimationsToAnimator:(void *)a3 inContainerView:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = *(a1 + 8);
    if (!v7 || !*(v7 + 40))
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:sel_addTransitionAnimationsToAnimator_inContainerView_ object:a1 file:@"PXPhotosGridStackTransitionHelper.m" lineNumber:112 description:@"Helper must be successfully prepared"];
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __87__PXPhotosGridStackTransitionHelper_addTransitionAnimationsToAnimator_inContainerView___block_invoke;
    v9[3] = &unk_1E774C620;
    v9[4] = a1;
    v10 = v6;
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

- (void)addTransitionCompletionsToAnimator:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 8);
    if (!v4 || !*(v4 + 40))
    {
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      [v5 handleFailureInMethod:sel_addTransitionCompletionsToAnimator_ object:a1 file:@"PXPhotosGridStackTransitionHelper.m" lineNumber:127 description:@"Helper must be successfully prepared"];
    }

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __72__PXPhotosGridStackTransitionHelper_addTransitionCompletionsToAnimator___block_invoke;
    v6[3] = &unk_1E7748D18;
    v6[4] = a1;
    [v3 addCompletion:v6];
  }
}

@end