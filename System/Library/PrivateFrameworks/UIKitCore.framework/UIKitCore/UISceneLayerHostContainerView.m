@interface UISceneLayerHostContainerView
@end

@implementation UISceneLayerHostContainerView

void __72___UISceneLayerHostContainerView_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(*(a1 + 40) + 432) array];
  [v1 appendArraySection:v2 withName:@"hostedLayers" skipIfEmpty:1];
}

uint64_t __58___UISceneLayerHostContainerView__filteredLayersToPresent__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 level];
  v6 = v5;
  [v4 level];
  v8 = v7;

  if (v6 < v8)
  {
    return -1;
  }

  else
  {
    return v6 != v8;
  }
}

void __58___UISceneLayerHostContainerView__filteredLayersToPresent__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if ([a3 isHidden])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [*(a1 + 32) copy];
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v12 + 1) + 8 * i);
          if ([v5 matchesLayer:v11])
          {
            [*(a1 + 32) removeObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

void __90___UISceneLayerHostContainerView__rebuildLayersForNormalPresentationWithReason_withFence___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = a2;
  v5 = [*(a1 + 32) indexOfObject:v12];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [*(a1 + 48) _createHostViewForLayer:v12];
    if (!v6)
    {
      goto LABEL_11;
    }

LABEL_7:
    [*(*(a1 + 48) + 432) addObject:v12];
    [*(*(a1 + 48) + 424) addObject:v6];
    v8 = [*(a1 + 48) _presentationContextForLayer:v12];
    v9 = ([v8 isClippingDisabled] & 1) == 0 && *(a1 + 64) == 0;
    [v6 setClipsToBounds:v9];
    v10 = [v8 transformer];
    [v6 setTransformer:v10];

    [v8 alpha];
    [v6 setAlpha:?];
    [v6 setInheritsSecurity:{objc_msgSend(*(*(a1 + 48) + 456), "inheritsSecurity")}];
    [v6 setResizesHostedContext:{objc_msgSend(*(*(a1 + 48) + 456), "resizesHostedContext")}];
    [v6 setZombifiesHostedContext:{objc_msgSend(*(*(a1 + 48) + 456), "zombifiesHostedContext")}];
    [v6 setStopsHitTestTransformAccumulation:{objc_msgSend(*(*(a1 + 48) + 456), "stopsHitTestTransformAccumulation")}];
    [v6 setStopsSecureSuperlayersValidation:{objc_msgSend(*(*(a1 + 48) + 456), "stopsSecureSuperlayersValidation")}];
    [*(*(a1 + 48) + 464) insertSubview:v6 atIndex:a3];
    [*(a1 + 48) _adjustHostViewFrameAlignment:v6];

    goto LABEL_11;
  }

  v7 = v5;
  v6 = [*(a1 + 40) objectAtIndex:v5];
  if (!v6)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:*(a1 + 56) object:*(a1 + 48) file:@"_UISceneLayerHostContainerView.m" lineNumber:764 description:{@"no existing view for layer: %@", v12}];
  }

  [*(a1 + 32) removeObjectAtIndex:v7];
  [*(a1 + 40) removeObjectAtIndex:v7];
  if (v6)
  {
    goto LABEL_7;
  }

LABEL_11:
}

void __77___UISceneLayerHostContainerView__invalidateAndRemoveAsyncViewsFromHierarchy__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77___UISceneLayerHostContainerView__invalidateAndRemoveAsyncViewsFromHierarchy__block_invoke_2;
  block[3] = &unk_1E70F2F20;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __77___UISceneLayerHostContainerView__invalidateAndRemoveAsyncViewsFromHierarchy__block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void __63___UISceneLayerHostContainerView__presentationContextForLayer___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a3;
  if ([a2 matchesLayer:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *a4 = 1;
  }
}

@end