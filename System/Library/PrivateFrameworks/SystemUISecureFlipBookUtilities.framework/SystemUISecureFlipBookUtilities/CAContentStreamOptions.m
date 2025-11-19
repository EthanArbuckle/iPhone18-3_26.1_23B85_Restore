@interface CAContentStreamOptions
@end

@implementation CAContentStreamOptions

uint64_t __82__CAContentStreamOptions_CAContentStreamOptionsRevLockAdditions__setTrackedLayer___block_invoke()
{
  result = NSSelectorFromString(&cfstr_Settrackedlaye.isa);
  if (![CAContentStreamOptions(CAContentStreamOptionsRevLockAdditions) setTrackedLayer:]::trackedLayerSel)
  {
    v1 = result;
    result = objc_opt_respondsToSelector();
    if (result)
    {
      [CAContentStreamOptions(CAContentStreamOptionsRevLockAdditions) setTrackedLayer:]::trackedLayerSel = v1;
    }
  }

  return result;
}

uint64_t __78__CAContentStreamOptions_CAContentStreamOptionsRevLockAdditions__trackedLayer__block_invoke()
{
  result = NSSelectorFromString(&cfstr_Trackedlayerid.isa);
  if (![CAContentStreamOptions(CAContentStreamOptionsRevLockAdditions) trackedLayer]::trackedLayerSel)
  {
    v1 = result;
    result = objc_opt_respondsToSelector();
    if (result)
    {
      [CAContentStreamOptions(CAContentStreamOptionsRevLockAdditions) trackedLayer]::trackedLayerSel = v1;
    }
  }

  return result;
}

@end