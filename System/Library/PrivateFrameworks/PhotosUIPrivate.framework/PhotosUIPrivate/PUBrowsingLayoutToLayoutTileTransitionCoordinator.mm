@interface PUBrowsingLayoutToLayoutTileTransitionCoordinator
- (BOOL)useDoubleSidedTransitionForUpdatedTileController:(id)a3 toLayoutInfo:(id)a4;
- (id)finalLayoutInfoForDisappearingTileController:(id)a3 fromLayoutInfo:(id)a4;
- (id)optionsForAnimatingTileController:(id)a3 toLayoutInfo:(id)a4 withAnimationType:(int64_t)a5;
@end

@implementation PUBrowsingLayoutToLayoutTileTransitionCoordinator

- (id)optionsForAnimatingTileController:(id)a3 toLayoutInfo:(id)a4 withAnimationType:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v26.receiver = self;
  v26.super_class = PUBrowsingLayoutToLayoutTileTransitionCoordinator;
  v10 = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)&v26 optionsForAnimatingTileController:v8 toLayoutInfo:v9 withAnimationType:a5];
  v11 = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self context];
  v12 = [v11 isUpdatingDisplayedContent];

  if (v12)
  {
    if ([v8 shouldPreserveCurrentContent])
    {
      [v10 setDuration:0.0];
      [v10 setDelay:0.0];
      v13 = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self context];
      v14 = [v13 displayedContentUpdateGroup];
      [v10 setCompletionGroup:v14];

      if (([v8 shouldAvoidInPlaceSnapshottedFadeOut] & 1) == 0)
      {
        [v10 setShouldFadeOutSnapshotAfterCompletionGroup:1];
      }
    }
  }

  else
  {
    v15 = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self fromLayout];
    v16 = [v15 dataSource];
    if (v16)
    {
      v17 = v16;
      v18 = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self fromLayout];
      v19 = [v18 dataSource];
      v20 = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self toLayout];
      v21 = [v20 dataSource];
      v25 = [v19 isEqual:v21];

      if ((v25 & 1) == 0)
      {
        if ((a5 - 1) >= 2)
        {
          if (a5 == 3)
          {
            v23 = [v9 tileKind];
            v24 = [v23 isEqualToString:@"PUTileKindItemContent"];

            if (v24)
            {
              [v10 setKind:101];
            }
          }
        }

        else
        {
          [v10 setDelay:0.25];
        }
      }
    }

    else
    {
    }
  }

  return v10;
}

- (id)finalLayoutInfoForDisappearingTileController:(id)a3 fromLayoutInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self context];
  if (![v8 isUpdatingDisplayedContent])
  {

LABEL_6:
    v13.receiver = self;
    v13.super_class = PUBrowsingLayoutToLayoutTileTransitionCoordinator;
    v11 = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)&v13 finalLayoutInfoForDisappearingTileController:v6 fromLayoutInfo:v7];
    goto LABEL_7;
  }

  v9 = [v6 shouldPreserveCurrentContent];

  if ((v9 & 1) == 0)
  {
    goto LABEL_6;
  }

  [v7 zPosition];
  v11 = [v7 layoutInfoWithZPosition:v10 + 0.5];
  if (!v11)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v11;
}

- (BOOL)useDoubleSidedTransitionForUpdatedTileController:(id)a3 toLayoutInfo:(id)a4
{
  v5 = a3;
  v6 = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self context];
  if ([v6 isUpdatingDisplayedContent])
  {
    v7 = [v5 shouldPreserveCurrentContent];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end