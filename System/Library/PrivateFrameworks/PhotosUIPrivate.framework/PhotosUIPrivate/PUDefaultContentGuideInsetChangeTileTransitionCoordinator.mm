@interface PUDefaultContentGuideInsetChangeTileTransitionCoordinator
- (id)optionsForAnimatingTileController:(id)controller toLayoutInfo:(id)info withAnimationType:(int64_t)type;
@end

@implementation PUDefaultContentGuideInsetChangeTileTransitionCoordinator

- (id)optionsForAnimatingTileController:(id)controller toLayoutInfo:(id)info withAnimationType:(int64_t)type
{
  infoCopy = info;
  newTileAnimationOptions = [(PUTileTransitionCoordinator *)self newTileAnimationOptions];
  viewModel = [(PUDefaultContentGuideInsetChangeTileTransitionCoordinator *)self viewModel];
  tileKind = [infoCopy tileKind];
  if ([tileKind isEqualToString:PUTileKindProgressIndicator])
  {

LABEL_4:
    [newTileAnimationOptions setKind:1003];
    v12 = PUBackgroundColorAnimatorBlockForChromeAnimation(viewModel);
    [newTileAnimationOptions setCustomViewAnimatorBlock:v12];

    goto LABEL_11;
  }

  tileKind2 = [infoCopy tileKind];
  v11 = [tileKind2 isEqualToString:PUTileKindAssetExplorerReviewScreenProgressIndicator];

  if (v11)
  {
    goto LABEL_4;
  }

  tileKind3 = [infoCopy tileKind];
  if (![tileKind3 isEqualToString:PUTileKindBackground])
  {

    goto LABEL_9;
  }

  isScrubbing = [viewModel isScrubbing];

  if (!isScrubbing)
  {
LABEL_9:
    [newTileAnimationOptions setKind:0];
    v15 = PUChromeAnimationDuration(viewModel);
    goto LABEL_10;
  }

  v15 = 0.0;
LABEL_10:
  [newTileAnimationOptions setDuration:v15];
LABEL_11:

  return newTileAnimationOptions;
}

@end