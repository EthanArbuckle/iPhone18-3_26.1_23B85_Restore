@interface CAContentStreamOptions(CAContentStreamOptionsRevLockAdditions)
- (id)trackedLayer;
- (void)setTrackedLayer:()CAContentStreamOptionsRevLockAdditions;
@end

@implementation CAContentStreamOptions(CAContentStreamOptionsRevLockAdditions)

- (void)setTrackedLayer:()CAContentStreamOptionsRevLockAdditions
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__CAContentStreamOptions_CAContentStreamOptionsRevLockAdditions__setTrackedLayer___block_invoke;
  block[3] = &unk_279D42530;
  block[4] = self;
  if ([CAContentStreamOptions(CAContentStreamOptionsRevLockAdditions) setTrackedLayer:]::once != -1)
  {
    dispatch_once(&[CAContentStreamOptions(CAContentStreamOptionsRevLockAdditions) setTrackedLayer:]::once, block);
  }

  if ([CAContentStreamOptions(CAContentStreamOptionsRevLockAdditions) setTrackedLayer:]::trackedLayerSel)
  {
    [self -[CAContentStreamOptions(CAContentStreamOptionsRevLockAdditions) setTrackedLayer:a3 ]:? :?trackedLayerSel];
  }
}

- (id)trackedLayer
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__CAContentStreamOptions_CAContentStreamOptionsRevLockAdditions__trackedLayer__block_invoke;
  block[3] = &unk_279D42530;
  block[4] = self;
  if ([CAContentStreamOptions(CAContentStreamOptionsRevLockAdditions) trackedLayer]::once != -1)
  {
    dispatch_once(&[CAContentStreamOptions(CAContentStreamOptionsRevLockAdditions) trackedLayer]::once, block);
  }

  if ([CAContentStreamOptions(CAContentStreamOptionsRevLockAdditions) trackedLayer]::trackedLayerSel)
  {
    return [self -[CAContentStreamOptions(CAContentStreamOptionsRevLockAdditions) trackedLayer]:? :?trackedLayerSel];
  }

  else
  {
    return 0;
  }
}

@end