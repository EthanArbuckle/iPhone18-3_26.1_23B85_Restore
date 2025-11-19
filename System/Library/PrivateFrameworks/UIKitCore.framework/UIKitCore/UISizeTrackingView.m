@interface UISizeTrackingView
@end

@implementation UISizeTrackingView

void __70___UISizeTrackingView__updateTextEffectsGeometries_textEffectsWindow___block_invoke(uint64_t a1)
{
  v7 = [*(a1 + 32) view];
  [v7 convertRect:0 fromView:{*(*(*(a1 + 40) + 8) + 32), *(*(*(a1 + 40) + 8) + 40), *(*(*(a1 + 40) + 8) + 48), *(*(*(a1 + 40) + 8) + 56)}];
  v2 = *(*(a1 + 40) + 8);
  v2[4] = v3;
  v2[5] = v4;
  v2[6] = v5;
  v2[7] = v6;
}

void __52___UISizeTrackingView__geometryChanged_forAncestor___block_invoke(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = [*(a1 + 32) _window];
    v3 = [v2 windowScene];
    v4 = [v3 _enhancedWindowingEnabled];

    if (v4)
    {
      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 408));
      v6 = [WeakRetained _existingPresentationControllerImmediate:0 effective:1];

      v7 = [v6 _viewForRemoteTextEffectsWindowMatchAnimation];
    }

    else
    {
      v7 = 0;
    }

    v8 = objc_loadWeakRetained((*(a1 + 32) + 504));

    if (v7 != v8)
    {
      objc_storeWeak((*(a1 + 32) + 504), v7);
      if (v7)
      {
        v9 = [v7 layer];
        v10 = [v9 context];
        v11 = [v10 contextId];

        RenderId = CALayerGetRenderId();
      }

      else
      {
        RenderId = 0;
        v11 = 0;
      }

      [*(*(a1 + 32) + 432) __setRemoteTextEffectsWindowMatchesLayerWithContextId:v11 renderId:RenderId];
    }

    if (*(a1 + 49) == 1)
    {
      v13 = objc_loadWeakRetained((*(a1 + 32) + 416));
      [v13 _updateUnderflowProperties];
    }

    if (*(a1 + 50) == 1)
    {
      v14 = objc_loadWeakRetained((*(a1 + 32) + 416));
      v15 = [v14 _fenceForSynchronizedDrawing];

      v16 = *(a1 + 32);
      v17 = v16[53];
      [v16 _sizeForRemoteViewService];
      v19 = v18;
      v21 = v20;
      v22 = [*(a1 + 32) _boundingPathForRemoteViewService];
      [v17 __setContentSize:v22 boundingPath:v15 withFence:{v19, v21}];

      [v15 invalidate];
      [*(a1 + 32) _clearNeedsRemoteViewServiceBoundingPathUpdate];
    }

    if (*(a1 + 51) == 1)
    {
      v23 = *(a1 + 32);
      [v23 frame];
      [v23 _updateTextEffectsGeometries:?];
    }
  }

  if (*(a1 + 52) == 1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = *(*(a1 + 40) + 8);
      v25 = *(v24 + 40);
      *(v24 + 40) = 0;
    }

    v26 = *(a1 + 32);
    v27 = *(*(*(a1 + 40) + 8) + 40);

    [v26 _updateSceneGeometries:v27 forOrientation:0];
  }
}

uint64_t __67___UISizeTrackingView__setNeedsRemoteViewServiceBoundingPathUpdate__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 512) &= ~8u;
  result = *(a1 + 32);
  if ((*(result + 512) & 4) != 0)
  {
    v3 = *(result + 424);
    v4 = [result _boundingPathForRemoteViewService];
    [v3 __setBoundingPath:v4];

    v5 = *(a1 + 32);

    return [v5 _clearNeedsRemoteViewServiceBoundingPathUpdate];
  }

  return result;
}

@end