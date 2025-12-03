@interface PUDefaultLayoutToLayoutTileTransitionCoordinator
- (BOOL)_canInspectLayout:(id)layout;
- (BOOL)_isCenterTileLayoutInfo:(id)info;
- (BOOL)useDoubleSidedTransitionForUpdatedTileController:(id)controller toLayoutInfo:(id)info;
- (id)_centerTileLayoutInfoWithDefaultDisappearance:(id)disappearance layoutWhereCenterTileExists:(id)exists layoutWhereCenterTileDisappeared:(id)disappeared;
- (id)description;
- (id)finalLayoutInfoForDisappearingTileController:(id)controller fromLayoutInfo:(id)info;
- (id)initialLayoutInfoForAppearingTileController:(id)controller toLayoutInfo:(id)info;
- (id)optionsForAnimatingTileController:(id)controller toLayoutInfo:(id)info withAnimationType:(int64_t)type;
- (int64_t)_zoomLevelForLayout:(id)layout;
- (void)_updateIsZoomingInIfNeeded;
- (void)setContext:(id)context;
- (void)setFromLayout:(id)layout;
- (void)setToLayout:(id)layout;
@end

@implementation PUDefaultLayoutToLayoutTileTransitionCoordinator

- (int64_t)_zoomLevelForLayout:(id)layout
{
  layoutCopy = layout;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_updateIsZoomingInIfNeeded
{
  if ([(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self _needsUpdateZoomingIn])
  {
    [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self _setNeedsUpdateZoomingIn:0];
    fromLayout = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self fromLayout];
    v4 = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self _zoomLevelForLayout:fromLayout];

    toLayout = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self toLayout];
    v6 = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self _zoomLevelForLayout:toLayout];

    v7 = 0;
    if (v6 > v4)
    {
      context = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self context];
      v7 = [context isCancelingTransition] ^ 1;
    }

    [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self _setZoomingIn:v7];
  }
}

- (void)setToLayout:(id)layout
{
  layoutCopy = layout;
  if (self->_toLayout != layoutCopy)
  {
    v6 = layoutCopy;
    objc_storeStrong(&self->_toLayout, layout);
    [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self _invalidateIsZoomingIn];
    layoutCopy = v6;
  }
}

- (void)setFromLayout:(id)layout
{
  layoutCopy = layout;
  if (self->_fromLayout != layoutCopy)
  {
    v6 = layoutCopy;
    objc_storeStrong(&self->_fromLayout, layout);
    [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self _invalidateIsZoomingIn];
    layoutCopy = v6;
  }
}

- (void)setContext:(id)context
{
  contextCopy = context;
  if (self->_context != contextCopy)
  {
    v6 = contextCopy;
    objc_storeStrong(&self->_context, context);
    [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self _invalidateIsZoomingIn];
    contextCopy = v6;
  }
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = PUDefaultLayoutToLayoutTileTransitionCoordinator;
  v3 = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)&v8 description];
  fromLayout = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self fromLayout];
  toLayout = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self toLayout];
  v6 = [v3 stringByAppendingFormat:@" fromLayout:%@ toLayout:%@", fromLayout, toLayout];

  return v6;
}

- (id)_centerTileLayoutInfoWithDefaultDisappearance:(id)disappearance layoutWhereCenterTileExists:(id)exists layoutWhereCenterTileDisappeared:(id)disappeared
{
  v42 = *MEMORY[0x1E69E9840];
  disappearanceCopy = disappearance;
  existsCopy = exists;
  disappearedCopy = disappeared;
  dataSource = [existsCopy dataSource];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    dataSource2 = [existsCopy dataSource];
  }

  else
  {
    dataSource2 = 0;
  }

  dataSource3 = [disappearedCopy dataSource];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    dataSource4 = 0;
LABEL_13:
    v14 = 0;
    goto LABEL_24;
  }

  dataSource4 = [disappearedCopy dataSource];

  v14 = 0;
  if (dataSource2 && dataSource4)
  {
    dataSourceIdentifier = [disappearanceCopy dataSourceIdentifier];
    identifier = [dataSource2 identifier];
    v17 = identifier;
    if (dataSourceIdentifier == identifier)
    {
    }

    else
    {
      v18 = [dataSourceIdentifier isEqual:identifier];

      if ((v18 & 1) == 0)
      {
        v19 = PLOneUpGetLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf.a) = 138412546;
          *(&buf.a + 4) = disappearanceCopy;
          WORD2(buf.b) = 2112;
          *(&buf.b + 6) = dataSource2;
          _os_log_impl(&dword_1B36F3000, v19, OS_LOG_TYPE_DEFAULT, "Version mismatch between %@ and %@, this might cause incorrect animations.", &buf, 0x16u);
        }

        goto LABEL_13;
      }
    }

    indexPath = [disappearanceCopy indexPath];
    v21 = +[PUAssetsDataSourceConverter defaultConverter];
    v39 = @"PUTileKindItemContent";
    v40 = indexPath;
    v22 = [v21 convertIndexPath:&v40 tileKind:&v39 fromDataSource:dataSource2 toDataSource:dataSource4];
    v23 = v40;

    v24 = v39;
    if (v22)
    {
      v25 = [disappearedCopy layoutInfoForTileWithIndexPath:v23 kind:v24];
      v26 = v25;
      if (v25)
      {
        [v25 center];
        v28 = v27;
        v30 = v29;
        [disappearanceCopy size];
        v33 = v31;
        v34 = v32;
        if (v31 < v32)
        {
          v31 = v32;
        }

        CGAffineTransformMakeScale(&buf, 1.0 / v31, 1.0 / v31);
        [disappearanceCopy zPosition];
        v36 = v35;
        coordinateSystem = [v26 coordinateSystem];
        v14 = [disappearanceCopy layoutInfoWithCenter:&buf size:coordinateSystem alpha:v28 transform:v30 zPosition:v33 coordinateSystem:{v34, 0.0, v36}];
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

LABEL_24:

  return v14;
}

- (BOOL)_isCenterTileLayoutInfo:(id)info
{
  infoCopy = info;
  v4 = +[PUOneUpTilingLayout centerTileKinds];
  tileKind = [infoCopy tileKind];

  LOBYTE(infoCopy) = [v4 containsObject:tileKind];
  return infoCopy;
}

- (BOOL)_canInspectLayout:(id)layout
{
  layoutCopy = layout;
  if (!objc_opt_class() || (objc_opt_isKindOfClass() & 1) == 0)
  {

    v4 = 0;
    goto LABEL_6;
  }

  v4 = layoutCopy;

  if (!v4)
  {
LABEL_6:
    isPrepared = 1;
    goto LABEL_7;
  }

  isPrepared = [v4 isPrepared];
LABEL_7:

  return isPrepared;
}

- (id)finalLayoutInfoForDisappearingTileController:(id)controller fromLayoutInfo:(id)info
{
  controllerCopy = controller;
  infoCopy = info;
  anchorAssetReference = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self anchorAssetReference];
  dataSourceIdentifier = [anchorAssetReference dataSourceIdentifier];
  dataSourceIdentifier2 = [infoCopy dataSourceIdentifier];
  if ([dataSourceIdentifier isEqual:dataSourceIdentifier2])
  {
    indexPath = [anchorAssetReference indexPath];
    indexPath2 = [infoCopy indexPath];
    v13 = [indexPath isEqual:indexPath2];
  }

  else
  {
    v13 = 0;
  }

  if (!anchorAssetReference || v13)
  {
    v31 = controllerCopy;
    dataSourceIdentifier3 = [infoCopy dataSourceIdentifier];
    indexPath3 = [infoCopy indexPath];
    tileKind = [infoCopy tileKind];
    toLayout = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self toLayout];
    dataSource = [toLayout dataSource];
    identifier = [dataSource identifier];
    v20 = [dataSourceIdentifier3 isEqualToString:identifier];

    if (v20)
    {
      v21 = 0;
      if (!indexPath3)
      {
        controllerCopy = v31;
LABEL_14:

        if (v21)
        {
          goto LABEL_18;
        }

        goto LABEL_15;
      }

      controllerCopy = v31;
      if (!tileKind)
      {
        goto LABEL_14;
      }

      toLayout2 = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self toLayout];
      fromLayout = [toLayout2 layoutInfoForTileWithIndexPath:indexPath3 kind:tileKind];

      if (!fromLayout)
      {
        v21 = 0;
        goto LABEL_13;
      }

      coordinateSystem = [infoCopy coordinateSystem];
      v21 = [infoCopy layoutInfoByInterpolatingWithLayoutInfo:fromLayout mixFactor:coordinateSystem coordinateSystem:1.0];
    }

    else
    {
      fromLayout = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self fromLayout];
      coordinateSystem = [fromLayout dataSource];
      identifier2 = [coordinateSystem identifier];
      [dataSourceIdentifier3 isEqualToString:identifier2];

      v21 = 0;
    }

    controllerCopy = v31;
LABEL_13:

    goto LABEL_14;
  }

LABEL_15:
  if (![(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self _isCenterTileLayoutInfo:infoCopy]|| ([(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self fromLayout], v26 = objc_claimAutoreleasedReturnValue(), [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self toLayout], v27 = objc_claimAutoreleasedReturnValue(), [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self _centerTileLayoutInfoWithDefaultDisappearance:infoCopy layoutWhereCenterTileExists:v26 layoutWhereCenterTileDisappeared:v27], v21 = objc_claimAutoreleasedReturnValue(), v27, v26, !v21))
  {
    v32.receiver = self;
    v32.super_class = PUDefaultLayoutToLayoutTileTransitionCoordinator;
    v28 = [(PUDefaultTileTransitionCoordinator *)&v32 finalLayoutInfoForDisappearingTileController:controllerCopy fromLayoutInfo:infoCopy];
    fixedCoordinateSystem = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self fixedCoordinateSystem];
    v21 = [v28 layoutInfoWithCoordinateSystem:fixedCoordinateSystem];
  }

LABEL_18:

  return v21;
}

- (id)initialLayoutInfoForAppearingTileController:(id)controller toLayoutInfo:(id)info
{
  controllerCopy = controller;
  infoCopy = info;
  anchorAssetReference = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self anchorAssetReference];
  dataSourceIdentifier = [anchorAssetReference dataSourceIdentifier];
  dataSourceIdentifier2 = [infoCopy dataSourceIdentifier];
  if ([dataSourceIdentifier isEqual:dataSourceIdentifier2])
  {
    indexPath = [anchorAssetReference indexPath];
    indexPath2 = [infoCopy indexPath];
    v13 = [indexPath isEqual:indexPath2];
  }

  else
  {
    v13 = 0;
  }

  if (!anchorAssetReference || v13)
  {
    fromLayout = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self fromLayout];
    v15 = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self _canInspectLayout:fromLayout];

    if (v15)
    {
      fromLayout2 = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self fromLayout];
      dataSource = [fromLayout2 dataSource];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        fromLayout3 = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self fromLayout];
        dataSource2 = [fromLayout3 dataSource];
      }

      else
      {
        dataSource2 = 0;
      }

      toLayout = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self toLayout];
      dataSource3 = [toLayout dataSource];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        toLayout2 = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self toLayout];
        dataSource4 = [toLayout2 dataSource];
      }

      else
      {
        dataSource4 = 0;
      }

      indexPath3 = [infoCopy indexPath];
      tileKind = [infoCopy tileKind];
      v25 = +[PUAssetsDataSourceConverter defaultConverter];
      v41 = tileKind;
      v42 = indexPath3;
      v26 = [v25 convertIndexPath:&v42 tileKind:&v41 fromDataSource:dataSource4 toDataSource:dataSource2];
      v27 = v42;

      v28 = v41;
      v29 = 0;
      if (v26 && v27 && v28)
      {
        fromLayout4 = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self fromLayout];
        v31 = [fromLayout4 layoutInfoForTileWithIndexPath:v27 kind:v28];

        if (v31)
        {
          coordinateSystem = [infoCopy coordinateSystem];
          v29 = [infoCopy layoutInfoByInterpolatingWithLayoutInfo:v31 mixFactor:coordinateSystem coordinateSystem:1.0];
        }

        else
        {
          v29 = 0;
        }
      }

      if (v29)
      {
        goto LABEL_28;
      }
    }
  }

  if (![(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self _isCenterTileLayoutInfo:infoCopy])
  {
LABEL_27:
    v40.receiver = self;
    v40.super_class = PUDefaultLayoutToLayoutTileTransitionCoordinator;
    v29 = [(PUDefaultTileTransitionCoordinator *)&v40 initialLayoutInfoForAppearingTileController:controllerCopy toLayoutInfo:infoCopy];
    goto LABEL_28;
  }

  toLayout3 = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self toLayout];
  if (![(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self _canInspectLayout:toLayout3])
  {

    goto LABEL_27;
  }

  fromLayout5 = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self fromLayout];
  v35 = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self _canInspectLayout:fromLayout5];

  if (!v35)
  {
    goto LABEL_27;
  }

  toLayout4 = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self toLayout];
  fromLayout6 = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self fromLayout];
  v29 = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self _centerTileLayoutInfoWithDefaultDisappearance:infoCopy layoutWhereCenterTileExists:toLayout4 layoutWhereCenterTileDisappeared:fromLayout6];

  if (!v29)
  {
    goto LABEL_27;
  }

LABEL_28:

  return v29;
}

- (BOOL)useDoubleSidedTransitionForUpdatedTileController:(id)controller toLayoutInfo:(id)info
{
  infoCopy = info;
  toLayout = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self toLayout];
  dataSource = [toLayout dataSource];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    toLayout2 = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self toLayout];
    dataSource2 = [toLayout2 dataSource];
  }

  else
  {
    dataSource2 = 0;
  }

  dataSourceIdentifier = [infoCopy dataSourceIdentifier];
  identifier = [dataSource2 identifier];
  v12 = [dataSourceIdentifier isEqualToString:identifier];

  if (v12)
  {
    indexPath = [infoCopy indexPath];
    v14 = [dataSource2 assetReferenceAtIndexPath:indexPath];
    anchorAssetReference = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self anchorAssetReference];
    v16 = [v14 isEqual:anchorAssetReference];

    v17 = v16 ^ 1;
  }

  else
  {
    v17 = 1;
  }

  return v17;
}

- (id)optionsForAnimatingTileController:(id)controller toLayoutInfo:(id)info withAnimationType:(int64_t)type
{
  infoCopy = info;
  v15.receiver = self;
  v15.super_class = PUDefaultLayoutToLayoutTileTransitionCoordinator;
  v9 = [(PUDefaultTileTransitionCoordinator *)&v15 optionsForAnimatingTileController:controller toLayoutInfo:infoCopy withAnimationType:type];
  context = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self context];
  isViewControllerTransition = [context isViewControllerTransition];

  if (isViewControllerTransition)
  {
    [v9 setHighFrameRateReason:2228228];
  }

  tileKind = [infoCopy tileKind];
  v13 = [tileKind isEqualToString:PUTileKindBackground];

  if ((v13 & 1) == 0)
  {
    [(PUDefaultTileTransitionCoordinator *)self configureOptions:v9 forSpringAnimationsZoomingIn:[(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self _isZoomingIn]];
  }

  return v9;
}

@end