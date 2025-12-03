@interface _UIFocusScrollOffsetResolverCentered
- (CGPoint)contentOffsetForScrollRequest:(id)request;
@end

@implementation _UIFocusScrollOffsetResolverCentered

- (CGPoint)contentOffsetForScrollRequest:(id)request
{
  requestCopy = request;
  environmentScrollableContainer = [requestCopy environmentScrollableContainer];
  scrollableContainer = [environmentScrollableContainer scrollableContainer];

  environmentScrollableContainer2 = [requestCopy environmentScrollableContainer];
  owningEnvironment = [environmentScrollableContainer2 owningEnvironment];

  focusItemInfo = [requestCopy focusItemInfo];
  focusMovement = [requestCopy focusMovement];
  heading = [focusMovement heading];

  [requestCopy focusItemFrame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  CanScrollX = _UIFocusItemScrollableContainerCanScrollX(scrollableContainer);
  CanScrollY = _UIFocusItemScrollableContainerCanScrollY(scrollableContainer);
  [requestCopy targetContentOffset];
  v22 = v21;
  v24 = v23;

  if (CanScrollX)
  {
    if (([scrollableContainer visibleSize], v26 = v12 + v16 * 0.5 - v25 * 0.5, _UIFocusHeadingIsEffectivelyLeft(heading, owningEnvironment)) && v26 < v22 || _UIFocusHeadingIsEffectivelyRight(heading, owningEnvironment) && v26 > v22)
    {
      v22 = v26;
    }
  }

  if (CanScrollY)
  {
    if (([scrollableContainer visibleSize], v27 = v14 + v18 * 0.5, v29 = v27 + v28 * -0.5, (heading) || (heading & 0x20) != 0) && v29 < v24 || ((heading & 2) != 0 || (heading & 0x10) != 0) && v29 > v24)
    {
      v24 = v27 + v28 * -0.5;
    }
  }

  if (focusItemInfo)
  {
    v22 = _UIFocusItemScrollableContainerAdjustedContentOffsetToShowFocusItem(scrollableContainer, focusItemInfo, v22, v24);
    v24 = v30;
  }

  v31 = v22;
  v32 = v24;
  result.y = v32;
  result.x = v31;
  return result;
}

@end