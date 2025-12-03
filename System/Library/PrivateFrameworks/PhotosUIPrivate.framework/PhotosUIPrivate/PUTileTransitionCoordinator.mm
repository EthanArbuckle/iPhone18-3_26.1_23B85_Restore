@interface PUTileTransitionCoordinator
+ (id)browsingTileTransitionCoordinatorForTransitionFromLayout:(id)layout toLayout:(id)toLayout withTilingView:(id)view anchorAssetReference:(id)reference context:(id)context;
+ (id)defaultTileTransitionCoordinatorForFrameChangeWithTileCrossFade:(BOOL)fade tilingView:(id)view;
+ (id)defaultTileTransitionCoordinatorForLayoutInvalidationContext:(id)context layout:(id)layout tilingView:(id)view viewModel:(id)model;
+ (id)defaultTileTransitionCoordinatorForReattachedTileControllers:(id)controllers context:(id)context;
+ (id)defaultTileTransitionCoordinatorForTransitionFromLayout:(id)layout toLayout:(id)toLayout withTilingView:(id)view anchorAssetReference:(id)reference context:(id)context;
+ (id)defaultTileTransitionCoordinatorForUpdates;
@end

@implementation PUTileTransitionCoordinator

+ (id)browsingTileTransitionCoordinatorForTransitionFromLayout:(id)layout toLayout:(id)toLayout withTilingView:(id)view anchorAssetReference:(id)reference context:(id)context
{
  contextCopy = context;
  referenceCopy = reference;
  toLayoutCopy = toLayout;
  layoutCopy = layout;
  fixedCoordinateSystem = [view fixedCoordinateSystem];
  v16 = objc_alloc_init(PUBrowsingLayoutToLayoutTileTransitionCoordinator);
  [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)v16 setFromLayout:layoutCopy];

  [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)v16 setToLayout:toLayoutCopy];
  [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)v16 setAnchorAssetReference:referenceCopy];

  [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)v16 setContext:contextCopy];
  [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)v16 setFixedCoordinateSystem:fixedCoordinateSystem];

  return v16;
}

+ (id)defaultTileTransitionCoordinatorForLayoutInvalidationContext:(id)context layout:(id)layout tilingView:(id)view viewModel:(id)model
{
  contextCopy = context;
  viewCopy = view;
  modelCopy = model;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = contextCopy;
    options = [v11 options];
    if ([v11 invalidatedContentInsets])
    {
      v13 = objc_alloc_init(PUDefaultContentGuideInsetChangeTileTransitionCoordinator);
      [(PUDefaultFrameChangeTileTransitionCoordinator *)v13 setShouldCrossFadeTiles:0];
      [(PUDefaultFrameChangeTileTransitionCoordinator *)v13 setTilingView:viewCopy];
      [(PUDefaultContentGuideInsetChangeTileTransitionCoordinator *)v13 setViewModel:modelCopy];
      [(PUDefaultFrameChangeTileTransitionCoordinator *)v13 prepare];
    }

    else if ([v11 invalidatedVideoPlaceholderTile])
    {
      v13 = objc_alloc_init(PUDefaultTileTransitionCoordinator);
    }

    else if ((options & 3) != 0)
    {
      v13 = objc_alloc_init(PUDefaultAccessoryViewVisibilityChangeTileTransitionCoordinator);
      [(PUDefaultContentGuideInsetChangeTileTransitionCoordinator *)v13 setViewModel:modelCopy];
      [(PUDefaultContentGuideInsetChangeTileTransitionCoordinator *)v13 setShouldAnimateContent:(options >> 1) & 1];
      [(PUDefaultContentGuideInsetChangeTileTransitionCoordinator *)v13 setShouldAnimateAccessory:options & 1];
      [(PUDefaultContentGuideInsetChangeTileTransitionCoordinator *)v13 setShouldSlideAccessory:(options >> 2) & 1];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)defaultTileTransitionCoordinatorForReattachedTileControllers:(id)controllers context:(id)context
{
  contextCopy = context;
  v5 = objc_alloc_init(PUDefaultReattachedTileTransitionCoordinator);
  [(PUDefaultReattachedTileTransitionCoordinator *)v5 setContext:contextCopy];

  return v5;
}

+ (id)defaultTileTransitionCoordinatorForFrameChangeWithTileCrossFade:(BOOL)fade tilingView:(id)view
{
  fadeCopy = fade;
  viewCopy = view;
  v6 = objc_alloc_init(PUDefaultFrameChangeTileTransitionCoordinator);
  [(PUDefaultFrameChangeTileTransitionCoordinator *)v6 setShouldCrossFadeTiles:fadeCopy];
  [(PUDefaultFrameChangeTileTransitionCoordinator *)v6 setTilingView:viewCopy];

  [(PUDefaultFrameChangeTileTransitionCoordinator *)v6 prepare];

  return v6;
}

+ (id)defaultTileTransitionCoordinatorForUpdates
{
  v2 = objc_alloc_init(PUDefaultUpdateTileTransitionCoordinator);

  return v2;
}

+ (id)defaultTileTransitionCoordinatorForTransitionFromLayout:(id)layout toLayout:(id)toLayout withTilingView:(id)view anchorAssetReference:(id)reference context:(id)context
{
  contextCopy = context;
  referenceCopy = reference;
  toLayoutCopy = toLayout;
  layoutCopy = layout;
  fixedCoordinateSystem = [view fixedCoordinateSystem];
  v16 = objc_alloc_init(PUDefaultLayoutToLayoutTileTransitionCoordinator);
  [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)v16 setFromLayout:layoutCopy];

  [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)v16 setToLayout:toLayoutCopy];
  [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)v16 setAnchorAssetReference:referenceCopy];

  [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)v16 setContext:contextCopy];
  [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)v16 setFixedCoordinateSystem:fixedCoordinateSystem];

  return v16;
}

@end