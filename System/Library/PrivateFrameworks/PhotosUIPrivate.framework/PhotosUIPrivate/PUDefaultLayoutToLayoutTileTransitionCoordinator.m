@interface PUDefaultLayoutToLayoutTileTransitionCoordinator
- (BOOL)_canInspectLayout:(id)a3;
- (BOOL)_isCenterTileLayoutInfo:(id)a3;
- (BOOL)useDoubleSidedTransitionForUpdatedTileController:(id)a3 toLayoutInfo:(id)a4;
- (id)_centerTileLayoutInfoWithDefaultDisappearance:(id)a3 layoutWhereCenterTileExists:(id)a4 layoutWhereCenterTileDisappeared:(id)a5;
- (id)description;
- (id)finalLayoutInfoForDisappearingTileController:(id)a3 fromLayoutInfo:(id)a4;
- (id)initialLayoutInfoForAppearingTileController:(id)a3 toLayoutInfo:(id)a4;
- (id)optionsForAnimatingTileController:(id)a3 toLayoutInfo:(id)a4 withAnimationType:(int64_t)a5;
- (int64_t)_zoomLevelForLayout:(id)a3;
- (void)_updateIsZoomingInIfNeeded;
- (void)setContext:(id)a3;
- (void)setFromLayout:(id)a3;
- (void)setToLayout:(id)a3;
@end

@implementation PUDefaultLayoutToLayoutTileTransitionCoordinator

- (int64_t)_zoomLevelForLayout:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_updateIsZoomingInIfNeeded
{
  if ([(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self _needsUpdateZoomingIn])
  {
    [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self _setNeedsUpdateZoomingIn:0];
    v3 = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self fromLayout];
    v4 = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self _zoomLevelForLayout:v3];

    v5 = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self toLayout];
    v6 = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self _zoomLevelForLayout:v5];

    v7 = 0;
    if (v6 > v4)
    {
      v8 = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self context];
      v7 = [v8 isCancelingTransition] ^ 1;
    }

    [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self _setZoomingIn:v7];
  }
}

- (void)setToLayout:(id)a3
{
  v5 = a3;
  if (self->_toLayout != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_toLayout, a3);
    [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self _invalidateIsZoomingIn];
    v5 = v6;
  }
}

- (void)setFromLayout:(id)a3
{
  v5 = a3;
  if (self->_fromLayout != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_fromLayout, a3);
    [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self _invalidateIsZoomingIn];
    v5 = v6;
  }
}

- (void)setContext:(id)a3
{
  v5 = a3;
  if (self->_context != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_context, a3);
    [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self _invalidateIsZoomingIn];
    v5 = v6;
  }
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = PUDefaultLayoutToLayoutTileTransitionCoordinator;
  v3 = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)&v8 description];
  v4 = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self fromLayout];
  v5 = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self toLayout];
  v6 = [v3 stringByAppendingFormat:@" fromLayout:%@ toLayout:%@", v4, v5];

  return v6;
}

- (id)_centerTileLayoutInfoWithDefaultDisappearance:(id)a3 layoutWhereCenterTileExists:(id)a4 layoutWhereCenterTileDisappeared:(id)a5
{
  v42 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 dataSource];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v8 dataSource];
  }

  else
  {
    v11 = 0;
  }

  v12 = [v9 dataSource];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v13 = 0;
LABEL_13:
    v14 = 0;
    goto LABEL_24;
  }

  v13 = [v9 dataSource];

  v14 = 0;
  if (v11 && v13)
  {
    v15 = [v7 dataSourceIdentifier];
    v16 = [v11 identifier];
    v17 = v16;
    if (v15 == v16)
    {
    }

    else
    {
      v18 = [v15 isEqual:v16];

      if ((v18 & 1) == 0)
      {
        v19 = PLOneUpGetLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf.a) = 138412546;
          *(&buf.a + 4) = v7;
          WORD2(buf.b) = 2112;
          *(&buf.b + 6) = v11;
          _os_log_impl(&dword_1B36F3000, v19, OS_LOG_TYPE_DEFAULT, "Version mismatch between %@ and %@, this might cause incorrect animations.", &buf, 0x16u);
        }

        goto LABEL_13;
      }
    }

    v20 = [v7 indexPath];
    v21 = +[PUAssetsDataSourceConverter defaultConverter];
    v39 = @"PUTileKindItemContent";
    v40 = v20;
    v22 = [v21 convertIndexPath:&v40 tileKind:&v39 fromDataSource:v11 toDataSource:v13];
    v23 = v40;

    v24 = v39;
    if (v22)
    {
      v25 = [v9 layoutInfoForTileWithIndexPath:v23 kind:v24];
      v26 = v25;
      if (v25)
      {
        [v25 center];
        v28 = v27;
        v30 = v29;
        [v7 size];
        v33 = v31;
        v34 = v32;
        if (v31 < v32)
        {
          v31 = v32;
        }

        CGAffineTransformMakeScale(&buf, 1.0 / v31, 1.0 / v31);
        [v7 zPosition];
        v36 = v35;
        v37 = [v26 coordinateSystem];
        v14 = [v7 layoutInfoWithCenter:&buf size:v37 alpha:v28 transform:v30 zPosition:v33 coordinateSystem:{v34, 0.0, v36}];
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

- (BOOL)_isCenterTileLayoutInfo:(id)a3
{
  v3 = a3;
  v4 = +[PUOneUpTilingLayout centerTileKinds];
  v5 = [v3 tileKind];

  LOBYTE(v3) = [v4 containsObject:v5];
  return v3;
}

- (BOOL)_canInspectLayout:(id)a3
{
  v3 = a3;
  if (!objc_opt_class() || (objc_opt_isKindOfClass() & 1) == 0)
  {

    v4 = 0;
    goto LABEL_6;
  }

  v4 = v3;

  if (!v4)
  {
LABEL_6:
    v5 = 1;
    goto LABEL_7;
  }

  v5 = [v4 isPrepared];
LABEL_7:

  return v5;
}

- (id)finalLayoutInfoForDisappearingTileController:(id)a3 fromLayoutInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self anchorAssetReference];
  v9 = [v8 dataSourceIdentifier];
  v10 = [v7 dataSourceIdentifier];
  if ([v9 isEqual:v10])
  {
    v11 = [v8 indexPath];
    v12 = [v7 indexPath];
    v13 = [v11 isEqual:v12];
  }

  else
  {
    v13 = 0;
  }

  if (!v8 || v13)
  {
    v31 = v6;
    v14 = [v7 dataSourceIdentifier];
    v15 = [v7 indexPath];
    v16 = [v7 tileKind];
    v17 = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self toLayout];
    v18 = [v17 dataSource];
    v19 = [v18 identifier];
    v20 = [v14 isEqualToString:v19];

    if (v20)
    {
      v21 = 0;
      if (!v15)
      {
        v6 = v31;
LABEL_14:

        if (v21)
        {
          goto LABEL_18;
        }

        goto LABEL_15;
      }

      v6 = v31;
      if (!v16)
      {
        goto LABEL_14;
      }

      v22 = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self toLayout];
      v23 = [v22 layoutInfoForTileWithIndexPath:v15 kind:v16];

      if (!v23)
      {
        v21 = 0;
        goto LABEL_13;
      }

      v24 = [v7 coordinateSystem];
      v21 = [v7 layoutInfoByInterpolatingWithLayoutInfo:v23 mixFactor:v24 coordinateSystem:1.0];
    }

    else
    {
      v23 = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self fromLayout];
      v24 = [v23 dataSource];
      v25 = [v24 identifier];
      [v14 isEqualToString:v25];

      v21 = 0;
    }

    v6 = v31;
LABEL_13:

    goto LABEL_14;
  }

LABEL_15:
  if (![(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self _isCenterTileLayoutInfo:v7]|| ([(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self fromLayout], v26 = objc_claimAutoreleasedReturnValue(), [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self toLayout], v27 = objc_claimAutoreleasedReturnValue(), [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self _centerTileLayoutInfoWithDefaultDisappearance:v7 layoutWhereCenterTileExists:v26 layoutWhereCenterTileDisappeared:v27], v21 = objc_claimAutoreleasedReturnValue(), v27, v26, !v21))
  {
    v32.receiver = self;
    v32.super_class = PUDefaultLayoutToLayoutTileTransitionCoordinator;
    v28 = [(PUDefaultTileTransitionCoordinator *)&v32 finalLayoutInfoForDisappearingTileController:v6 fromLayoutInfo:v7];
    v29 = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self fixedCoordinateSystem];
    v21 = [v28 layoutInfoWithCoordinateSystem:v29];
  }

LABEL_18:

  return v21;
}

- (id)initialLayoutInfoForAppearingTileController:(id)a3 toLayoutInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self anchorAssetReference];
  v9 = [v8 dataSourceIdentifier];
  v10 = [v7 dataSourceIdentifier];
  if ([v9 isEqual:v10])
  {
    v11 = [v8 indexPath];
    v12 = [v7 indexPath];
    v13 = [v11 isEqual:v12];
  }

  else
  {
    v13 = 0;
  }

  if (!v8 || v13)
  {
    v14 = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self fromLayout];
    v15 = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self _canInspectLayout:v14];

    if (v15)
    {
      v16 = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self fromLayout];
      v17 = [v16 dataSource];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self fromLayout];
        v39 = [v18 dataSource];
      }

      else
      {
        v39 = 0;
      }

      v19 = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self toLayout];
      v20 = [v19 dataSource];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self toLayout];
        v22 = [v21 dataSource];
      }

      else
      {
        v22 = 0;
      }

      v23 = [v7 indexPath];
      v24 = [v7 tileKind];
      v25 = +[PUAssetsDataSourceConverter defaultConverter];
      v41 = v24;
      v42 = v23;
      v26 = [v25 convertIndexPath:&v42 tileKind:&v41 fromDataSource:v22 toDataSource:v39];
      v27 = v42;

      v28 = v41;
      v29 = 0;
      if (v26 && v27 && v28)
      {
        v30 = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self fromLayout];
        v31 = [v30 layoutInfoForTileWithIndexPath:v27 kind:v28];

        if (v31)
        {
          v32 = [v7 coordinateSystem];
          v29 = [v7 layoutInfoByInterpolatingWithLayoutInfo:v31 mixFactor:v32 coordinateSystem:1.0];
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

  if (![(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self _isCenterTileLayoutInfo:v7])
  {
LABEL_27:
    v40.receiver = self;
    v40.super_class = PUDefaultLayoutToLayoutTileTransitionCoordinator;
    v29 = [(PUDefaultTileTransitionCoordinator *)&v40 initialLayoutInfoForAppearingTileController:v6 toLayoutInfo:v7];
    goto LABEL_28;
  }

  v33 = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self toLayout];
  if (![(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self _canInspectLayout:v33])
  {

    goto LABEL_27;
  }

  v34 = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self fromLayout];
  v35 = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self _canInspectLayout:v34];

  if (!v35)
  {
    goto LABEL_27;
  }

  v36 = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self toLayout];
  v37 = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self fromLayout];
  v29 = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self _centerTileLayoutInfoWithDefaultDisappearance:v7 layoutWhereCenterTileExists:v36 layoutWhereCenterTileDisappeared:v37];

  if (!v29)
  {
    goto LABEL_27;
  }

LABEL_28:

  return v29;
}

- (BOOL)useDoubleSidedTransitionForUpdatedTileController:(id)a3 toLayoutInfo:(id)a4
{
  v5 = a4;
  v6 = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self toLayout];
  v7 = [v6 dataSource];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self toLayout];
    v9 = [v8 dataSource];
  }

  else
  {
    v9 = 0;
  }

  v10 = [v5 dataSourceIdentifier];
  v11 = [v9 identifier];
  v12 = [v10 isEqualToString:v11];

  if (v12)
  {
    v13 = [v5 indexPath];
    v14 = [v9 assetReferenceAtIndexPath:v13];
    v15 = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self anchorAssetReference];
    v16 = [v14 isEqual:v15];

    v17 = v16 ^ 1;
  }

  else
  {
    v17 = 1;
  }

  return v17;
}

- (id)optionsForAnimatingTileController:(id)a3 toLayoutInfo:(id)a4 withAnimationType:(int64_t)a5
{
  v8 = a4;
  v15.receiver = self;
  v15.super_class = PUDefaultLayoutToLayoutTileTransitionCoordinator;
  v9 = [(PUDefaultTileTransitionCoordinator *)&v15 optionsForAnimatingTileController:a3 toLayoutInfo:v8 withAnimationType:a5];
  v10 = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self context];
  v11 = [v10 isViewControllerTransition];

  if (v11)
  {
    [v9 setHighFrameRateReason:2228228];
  }

  v12 = [v8 tileKind];
  v13 = [v12 isEqualToString:PUTileKindBackground];

  if ((v13 & 1) == 0)
  {
    [(PUDefaultTileTransitionCoordinator *)self configureOptions:v9 forSpringAnimationsZoomingIn:[(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self _isZoomingIn]];
  }

  return v9;
}

@end