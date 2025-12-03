@interface PUBrowsingLayoutToLayoutTileTransitionCoordinator
- (BOOL)useDoubleSidedTransitionForUpdatedTileController:(id)controller toLayoutInfo:(id)info;
- (id)finalLayoutInfoForDisappearingTileController:(id)controller fromLayoutInfo:(id)info;
- (id)optionsForAnimatingTileController:(id)controller toLayoutInfo:(id)info withAnimationType:(int64_t)type;
@end

@implementation PUBrowsingLayoutToLayoutTileTransitionCoordinator

- (id)optionsForAnimatingTileController:(id)controller toLayoutInfo:(id)info withAnimationType:(int64_t)type
{
  controllerCopy = controller;
  infoCopy = info;
  v26.receiver = self;
  v26.super_class = PUBrowsingLayoutToLayoutTileTransitionCoordinator;
  v10 = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)&v26 optionsForAnimatingTileController:controllerCopy toLayoutInfo:infoCopy withAnimationType:type];
  context = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self context];
  isUpdatingDisplayedContent = [context isUpdatingDisplayedContent];

  if (isUpdatingDisplayedContent)
  {
    if ([controllerCopy shouldPreserveCurrentContent])
    {
      [v10 setDuration:0.0];
      [v10 setDelay:0.0];
      context2 = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self context];
      displayedContentUpdateGroup = [context2 displayedContentUpdateGroup];
      [v10 setCompletionGroup:displayedContentUpdateGroup];

      if (([controllerCopy shouldAvoidInPlaceSnapshottedFadeOut] & 1) == 0)
      {
        [v10 setShouldFadeOutSnapshotAfterCompletionGroup:1];
      }
    }
  }

  else
  {
    fromLayout = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self fromLayout];
    dataSource = [fromLayout dataSource];
    if (dataSource)
    {
      v17 = dataSource;
      fromLayout2 = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self fromLayout];
      dataSource2 = [fromLayout2 dataSource];
      toLayout = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self toLayout];
      dataSource3 = [toLayout dataSource];
      v25 = [dataSource2 isEqual:dataSource3];

      if ((v25 & 1) == 0)
      {
        if ((type - 1) >= 2)
        {
          if (type == 3)
          {
            tileKind = [infoCopy tileKind];
            v24 = [tileKind isEqualToString:@"PUTileKindItemContent"];

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

- (id)finalLayoutInfoForDisappearingTileController:(id)controller fromLayoutInfo:(id)info
{
  controllerCopy = controller;
  infoCopy = info;
  context = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self context];
  if (![context isUpdatingDisplayedContent])
  {

LABEL_6:
    v13.receiver = self;
    v13.super_class = PUBrowsingLayoutToLayoutTileTransitionCoordinator;
    v11 = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)&v13 finalLayoutInfoForDisappearingTileController:controllerCopy fromLayoutInfo:infoCopy];
    goto LABEL_7;
  }

  shouldPreserveCurrentContent = [controllerCopy shouldPreserveCurrentContent];

  if ((shouldPreserveCurrentContent & 1) == 0)
  {
    goto LABEL_6;
  }

  [infoCopy zPosition];
  v11 = [infoCopy layoutInfoWithZPosition:v10 + 0.5];
  if (!v11)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v11;
}

- (BOOL)useDoubleSidedTransitionForUpdatedTileController:(id)controller toLayoutInfo:(id)info
{
  controllerCopy = controller;
  context = [(PUDefaultLayoutToLayoutTileTransitionCoordinator *)self context];
  if ([context isUpdatingDisplayedContent])
  {
    shouldPreserveCurrentContent = [controllerCopy shouldPreserveCurrentContent];
  }

  else
  {
    shouldPreserveCurrentContent = 0;
  }

  return shouldPreserveCurrentContent;
}

@end