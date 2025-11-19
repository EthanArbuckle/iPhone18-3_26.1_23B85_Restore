@interface PUDefaultAccessoryViewVisibilityChangeTileTransitionCoordinator
- (id)_layoutInfoWithDefaultDisappearance:(id)a3;
- (id)optionsForAnimatingTileController:(id)a3 toLayoutInfo:(id)a4 withAnimationType:(int64_t)a5;
@end

@implementation PUDefaultAccessoryViewVisibilityChangeTileTransitionCoordinator

- (id)_layoutInfoWithDefaultDisappearance:(id)a3
{
  v4 = a3;
  if ([(PUDefaultAccessoryViewVisibilityChangeTileTransitionCoordinator *)self shouldSlideAccessory])
  {
    v5 = [v4 tileKind];
    v6 = [v5 isEqualToString:PUTileKindAccessory];

    if (v6)
    {
      v7 = v4;
      v8 = [(PUDefaultAccessoryViewVisibilityChangeTileTransitionCoordinator *)self viewModel];
      v9 = [v8 assetsDataSource];
      v10 = [v7 dataSourceIdentifier];
      v11 = [v9 identifier];
      v12 = [v10 isEqualToString:v11];

      if (!v12)
      {
        v61 = 0;
        goto LABEL_20;
      }

      v13 = [v7 indexPath];
      v14 = [v9 assetReferenceAtIndexPath:v13];

      v15 = [v8 assetViewModelForAssetReference:v14];
      [v15 contentOffset];
      v17 = v16;

      [v7 untransformedContentFrame];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;
      [v7 size];
      v27 = v26;
      v72.origin.x = v19;
      v72.origin.y = v21;
      v72.size.width = v23;
      v72.size.height = v25;
      v28 = v27 - (v17 + CGRectGetMaxY(v72));
      [v7 minimumVisibleHeight];
      if (v28 >= v29)
      {
        v30 = v28;
      }

      else
      {
        v30 = v29;
      }

      [v7 center];
      v32 = v31;
      v34 = v33 + v30;
      [v7 size];
      v36 = v35;
      v38 = v37;
      if (v7)
      {
        [v7 transform];
      }

      else
      {
        v69 = 0u;
        v70 = 0u;
        v68 = 0u;
      }

      v60 = [v7 layoutInfoWithCenter:&v68 size:v32 alpha:v34 transform:{v36, v38, 0.0}];
LABEL_19:
      v61 = v60;

LABEL_20:
      if (v61)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }
  }

  if ([(PUDefaultAccessoryViewVisibilityChangeTileTransitionCoordinator *)self shouldSlideAccessory])
  {
    v39 = [v4 tileKind];
    v40 = [v39 isEqualToString:PUTileKindPeople];

    if (v40)
    {
      v7 = [(PUDefaultAccessoryViewVisibilityChangeTileTransitionCoordinator *)self viewModel];
      v8 = [v7 assetsDataSource];
      v41 = [v4 dataSourceIdentifier];
      v42 = [v8 identifier];
      v43 = [v41 isEqualToString:v42];

      if (v43)
      {
        v44 = [v4 indexPath];
        v9 = [v8 assetReferenceAtIndexPath:v44];

        v45 = [v7 assetViewModelForAssetReference:v9];
        [v45 contentOffset];
        v47 = v46;

        [v4 size];
        v49 = v48 - v47;
        [v4 center];
        v51 = v50;
        v69 = 0u;
        v70 = 0u;
        v53 = v52 + v49;
        v68 = 0u;
        if (v4)
        {
          [v4 transform];
        }

        v64[0] = v68;
        v64[1] = v69;
        v64[2] = v70;
        [(PUDefaultTileTransitionCoordinator *)self _adjustDefaultDisappearanceTransform:v64];
        v68 = v65;
        v69 = v66;
        v70 = v67;
        [v4 size];
        v55 = v54;
        v57 = v56;
        [v4 zPosition];
        v59 = v58;
        v14 = [v4 coordinateSystem];
        v65 = v68;
        v66 = v69;
        v67 = v70;
        v60 = [v4 layoutInfoWithCenter:&v65 size:v14 alpha:v51 transform:v53 zPosition:v55 coordinateSystem:{v57, 0.0, v59}];
        goto LABEL_19;
      }
    }
  }

LABEL_21:
  v63.receiver = self;
  v63.super_class = PUDefaultAccessoryViewVisibilityChangeTileTransitionCoordinator;
  v61 = [(PUDefaultTileTransitionCoordinator *)&v63 _layoutInfoWithDefaultDisappearance:v4];
LABEL_22:

  return v61;
}

- (id)optionsForAnimatingTileController:(id)a3 toLayoutInfo:(id)a4 withAnimationType:(int64_t)a5
{
  v6 = a4;
  if ([(PUDefaultAccessoryViewVisibilityChangeTileTransitionCoordinator *)self shouldAnimateContent])
  {
    goto LABEL_2;
  }

  if ([(PUDefaultAccessoryViewVisibilityChangeTileTransitionCoordinator *)self shouldAnimateAccessory])
  {
    v8 = [v6 tileKind];
    if ([v8 isEqualToString:PUTileKindAccessory])
    {

LABEL_2:
      v7 = [(PUTileTransitionCoordinator *)self newTileAnimationOptions];
      [v7 setKind:1001];
      [v7 setHighFrameRateReason:2228225];
      goto LABEL_8;
    }

    v9 = [v6 tileKind];
    v10 = [v9 isEqualToString:PUTileKindPeople];

    if (v10)
    {
      goto LABEL_2;
    }
  }

  v7 = 0;
LABEL_8:

  return v7;
}

@end