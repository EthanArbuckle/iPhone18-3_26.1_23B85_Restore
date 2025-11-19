@interface TIKeyboardOutput(UIKBExtras)
- (BOOL)_isEmpty;
- (void)_copyTo:()UIKBExtras;
@end

@implementation TIKeyboardOutput(UIKBExtras)

- (void)_copyTo:()UIKBExtras
{
  v11 = a3;
  v4 = [a1 acceptedCandidate];
  [v11 setAcceptedCandidate:v4];

  v5 = [a1 textToCommit];
  [v11 setTextToCommit:v5];

  [v11 setUnmarkIfNecessary:{objc_msgSend(a1, "unmarkIfNecessary")}];
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    [v11 setPositionOffset:{objc_msgSend(a1, "positionOffset")}];
  }

  [v11 setDeletionCount:{objc_msgSend(a1, "deletionCount")}];
  v6 = [a1 insertionText];
  [v11 setInsertionText:v6];

  [v11 setForwardDeletionCount:{objc_msgSend(a1, "forwardDeletionCount")}];
  v7 = [a1 insertionTextAfterSelection];
  [v11 setInsertionTextAfterSelection:v7];

  v8 = [a1 shortcutConversion];
  [v11 setShortcutConversion:v8];

  v9 = [a1 handwritingStrokesToDelete];
  [v11 setHandwritingStrokesToDelete:v9];

  [v11 setShouldSendCurrentLocation:{objc_msgSend(a1, "shouldSendCurrentLocation")}];
  v10 = [a1 customInfo];
  [v11 setCustomInfo:v10];

  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    [v11 setProducedByDeleteInput:{objc_msgSend(a1, "producedByDeleteInput")}];
  }
}

- (BOOL)_isEmpty
{
  v2 = [a1 acceptedCandidate];

  v3 = [a1 textToCommit];
  v4 = v2 | v3;

  v5 = [a1 unmarkIfNecessary];
  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [a1 positionOffset])
  {
    v6 = 1;
  }

  if ([a1 deletionCount])
  {
    v6 = 1;
  }

  v7 = [a1 insertionText];
  if (v7)
  {
    v6 = 1;
  }

  if ([a1 forwardDeletionCount])
  {
    v6 = 1;
  }

  v8 = [a1 insertionTextAfterSelection];
  if (v8)
  {
    v6 = 1;
  }

  v9 = [a1 shortcutConversion];
  if (v9)
  {
    v6 = 1;
  }

  v10 = [a1 handwritingStrokesToDelete];
  if (v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = v6;
  }

  v12 = [a1 shouldSendCurrentLocation];
  v13 = [a1 customInfo];
  v14 = v11 | v12 | (v13 != 0);

  if (objc_opt_respondsToSelector())
  {
    v14 |= [a1 producedByDeleteInput];
  }

  return (v14 & 1) == 0;
}

@end