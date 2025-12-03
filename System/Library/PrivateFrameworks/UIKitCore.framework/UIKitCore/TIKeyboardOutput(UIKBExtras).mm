@interface TIKeyboardOutput(UIKBExtras)
- (BOOL)_isEmpty;
- (void)_copyTo:()UIKBExtras;
@end

@implementation TIKeyboardOutput(UIKBExtras)

- (void)_copyTo:()UIKBExtras
{
  v11 = a3;
  acceptedCandidate = [self acceptedCandidate];
  [v11 setAcceptedCandidate:acceptedCandidate];

  textToCommit = [self textToCommit];
  [v11 setTextToCommit:textToCommit];

  [v11 setUnmarkIfNecessary:{objc_msgSend(self, "unmarkIfNecessary")}];
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    [v11 setPositionOffset:{objc_msgSend(self, "positionOffset")}];
  }

  [v11 setDeletionCount:{objc_msgSend(self, "deletionCount")}];
  insertionText = [self insertionText];
  [v11 setInsertionText:insertionText];

  [v11 setForwardDeletionCount:{objc_msgSend(self, "forwardDeletionCount")}];
  insertionTextAfterSelection = [self insertionTextAfterSelection];
  [v11 setInsertionTextAfterSelection:insertionTextAfterSelection];

  shortcutConversion = [self shortcutConversion];
  [v11 setShortcutConversion:shortcutConversion];

  handwritingStrokesToDelete = [self handwritingStrokesToDelete];
  [v11 setHandwritingStrokesToDelete:handwritingStrokesToDelete];

  [v11 setShouldSendCurrentLocation:{objc_msgSend(self, "shouldSendCurrentLocation")}];
  customInfo = [self customInfo];
  [v11 setCustomInfo:customInfo];

  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    [v11 setProducedByDeleteInput:{objc_msgSend(self, "producedByDeleteInput")}];
  }
}

- (BOOL)_isEmpty
{
  acceptedCandidate = [self acceptedCandidate];

  textToCommit = [self textToCommit];
  v4 = acceptedCandidate | textToCommit;

  unmarkIfNecessary = [self unmarkIfNecessary];
  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = unmarkIfNecessary;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [self positionOffset])
  {
    v6 = 1;
  }

  if ([self deletionCount])
  {
    v6 = 1;
  }

  insertionText = [self insertionText];
  if (insertionText)
  {
    v6 = 1;
  }

  if ([self forwardDeletionCount])
  {
    v6 = 1;
  }

  insertionTextAfterSelection = [self insertionTextAfterSelection];
  if (insertionTextAfterSelection)
  {
    v6 = 1;
  }

  shortcutConversion = [self shortcutConversion];
  if (shortcutConversion)
  {
    v6 = 1;
  }

  handwritingStrokesToDelete = [self handwritingStrokesToDelete];
  if (handwritingStrokesToDelete)
  {
    v11 = 1;
  }

  else
  {
    v11 = v6;
  }

  shouldSendCurrentLocation = [self shouldSendCurrentLocation];
  customInfo = [self customInfo];
  v14 = v11 | shouldSendCurrentLocation | (customInfo != 0);

  if (objc_opt_respondsToSelector())
  {
    v14 |= [self producedByDeleteInput];
  }

  return (v14 & 1) == 0;
}

@end