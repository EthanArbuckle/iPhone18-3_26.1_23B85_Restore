@interface PUDefaultContentGuideInsetChangeTileTransitionCoordinator
- (id)optionsForAnimatingTileController:(id)a3 toLayoutInfo:(id)a4 withAnimationType:(int64_t)a5;
@end

@implementation PUDefaultContentGuideInsetChangeTileTransitionCoordinator

- (id)optionsForAnimatingTileController:(id)a3 toLayoutInfo:(id)a4 withAnimationType:(int64_t)a5
{
  v6 = a4;
  v7 = [(PUTileTransitionCoordinator *)self newTileAnimationOptions];
  v8 = [(PUDefaultContentGuideInsetChangeTileTransitionCoordinator *)self viewModel];
  v9 = [v6 tileKind];
  if ([v9 isEqualToString:PUTileKindProgressIndicator])
  {

LABEL_4:
    [v7 setKind:1003];
    v12 = PUBackgroundColorAnimatorBlockForChromeAnimation(v8);
    [v7 setCustomViewAnimatorBlock:v12];

    goto LABEL_11;
  }

  v10 = [v6 tileKind];
  v11 = [v10 isEqualToString:PUTileKindAssetExplorerReviewScreenProgressIndicator];

  if (v11)
  {
    goto LABEL_4;
  }

  v13 = [v6 tileKind];
  if (![v13 isEqualToString:PUTileKindBackground])
  {

    goto LABEL_9;
  }

  v14 = [v8 isScrubbing];

  if (!v14)
  {
LABEL_9:
    [v7 setKind:0];
    v15 = PUChromeAnimationDuration(v8);
    goto LABEL_10;
  }

  v15 = 0.0;
LABEL_10:
  [v7 setDuration:v15];
LABEL_11:

  return v7;
}

@end