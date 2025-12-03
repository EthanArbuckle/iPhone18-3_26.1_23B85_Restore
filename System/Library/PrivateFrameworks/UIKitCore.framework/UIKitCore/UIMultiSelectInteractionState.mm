@interface UIMultiSelectInteractionState
- (BOOL)stillValidForSelectedIndexPaths:(id)paths;
- (CGPoint)startPoint;
- (UIMultiSelectInteractionState)initWithCurrentSelection:(id)selection;
- (id)pathsToDeselectForInterpolatedIndexPaths:(id)paths currentlySelectedIndexPaths:(id)indexPaths;
- (id)pathsToSelectForInterpolatedIndexPaths:(id)paths;
- (void)beginSelectingWithStartingIndexPath:(id)path otherSelectedIndexPaths:(id)paths keepCurrentSelection:(BOOL)selection;
- (void)endMultiselectInteraction;
- (void)ignoreSelectionChangedNotificationsWithBlock:(id)block;
- (void)setOriginallySelectedIndexPaths:(id)paths;
- (void)updateStateWithDifferenceFromCurrentSelection:(id)selection;
- (void)updateStateWithStartingIndexPath:(id)path otherSelectedIndexPaths:(id)paths;
@end

@implementation UIMultiSelectInteractionState

- (UIMultiSelectInteractionState)initWithCurrentSelection:(id)selection
{
  selectionCopy = selection;
  v5 = [(UIMultiSelectInteractionState *)self init];
  v6 = v5;
  if (v5)
  {
    [(UIMultiSelectInteractionState *)v5 setOriginallySelectedIndexPaths:selectionCopy];
    lastObject = [selectionCopy lastObject];
    [(UIMultiSelectInteractionState *)v6 setStartIndexPath:lastObject];

    [(UIMultiSelectInteractionState *)v6 setSelecting:1];
  }

  return v6;
}

- (void)setOriginallySelectedIndexPaths:(id)paths
{
  objc_storeStrong(&self->_originallySelectedIndexPaths, paths);
  pathsCopy = paths;
  [(UIMultiSelectInteractionState *)self setAllSelectedIndexPaths:pathsCopy];
}

- (void)ignoreSelectionChangedNotificationsWithBlock:(id)block
{
  ++self->_ignoringSelectionChangedNotificationsCounter;
  (*(block + 2))(block, a2);
  --self->_ignoringSelectionChangedNotificationsCounter;
}

- (BOOL)stillValidForSelectedIndexPaths:(id)paths
{
  pathsCopy = paths;
  allSelectedIndexPaths = [(UIMultiSelectInteractionState *)self allSelectedIndexPaths];
  v6 = [allSelectedIndexPaths isEqualToArray:pathsCopy];

  return v6;
}

- (void)updateStateWithDifferenceFromCurrentSelection:(id)selection
{
  selectionCopy = selection;
  if (![(UIMultiSelectInteractionState *)self ignoringSelectionChangedNotifications])
  {
    allSelectedIndexPaths = [(UIMultiSelectInteractionState *)self allSelectedIndexPaths];

    if (!allSelectedIndexPaths)
    {
      [(UIMultiSelectInteractionState *)self setSelecting:1];
      lastObject = [selectionCopy lastObject];
      [(UIMultiSelectInteractionState *)self setStartIndexPath:lastObject];

      [(UIMultiSelectInteractionState *)self setEndIndexPath:0];
      [(UIMultiSelectInteractionState *)self setAllSelectedIndexPaths:selectionCopy];
LABEL_14:
      [(UIMultiSelectInteractionState *)self setOriginallySelectedIndexPaths:0];
      goto LABEL_15;
    }

    allSelectedIndexPaths2 = [(UIMultiSelectInteractionState *)self allSelectedIndexPaths];
    v6 = [selectionCopy differenceFromArray:allSelectedIndexPaths2];

    insertions = [v6 insertions];
    if ([insertions count])
    {
    }

    else
    {
      removals = [v6 removals];
      v10 = [removals count];

      if (!v10)
      {
        [(UIMultiSelectInteractionState *)self setSelecting:1];
        lastObject2 = [selectionCopy lastObject];
        [(UIMultiSelectInteractionState *)self setStartIndexPath:lastObject2];
        goto LABEL_12;
      }
    }

    insertions2 = [v6 insertions];
    v12 = [insertions2 count];

    if (v12)
    {
      [(UIMultiSelectInteractionState *)self setSelecting:1];
      insertions3 = [v6 insertions];
    }

    else
    {
      removals2 = [v6 removals];
      v15 = [removals2 count];

      if (!v15)
      {
LABEL_13:

        goto LABEL_14;
      }

      [(UIMultiSelectInteractionState *)self setSelecting:0];
      insertions3 = [v6 removals];
    }

    v16 = insertions3;
    lastObject3 = [insertions3 lastObject];
    object = [lastObject3 object];
    [(UIMultiSelectInteractionState *)self setStartIndexPath:object];

    lastObject2 = [(UIMultiSelectInteractionState *)self startIndexPath];
    [(UIMultiSelectInteractionState *)self setEndIndexPath:lastObject2];
LABEL_12:

    goto LABEL_13;
  }

LABEL_15:
}

- (void)updateStateWithStartingIndexPath:(id)path otherSelectedIndexPaths:(id)paths
{
  pathCopy = path;
  pathsCopy = paths;
  if (pathCopy)
  {
    [(UIMultiSelectInteractionState *)self setAllSelectedIndexPaths:0];
    [(UIMultiSelectInteractionState *)self setOriginallySelectedIndexPaths:0];
    -[UIMultiSelectInteractionState setSelecting:](self, "setSelecting:", [pathsCopy containsObject:pathCopy] ^ 1);
    [(UIMultiSelectInteractionState *)self setOriginallySelectedIndexPaths:pathsCopy];
    [(UIMultiSelectInteractionState *)self setStartIndexPath:pathCopy];
  }

  else
  {
    startIndexPath = [(UIMultiSelectInteractionState *)self startIndexPath];
    -[UIMultiSelectInteractionState setSelecting:](self, "setSelecting:", [pathsCopy containsObject:startIndexPath]);
  }

  originallySelectedIndexPaths = [(UIMultiSelectInteractionState *)self originallySelectedIndexPaths];

  if (!originallySelectedIndexPaths)
  {
    [(UIMultiSelectInteractionState *)self setOriginallySelectedIndexPaths:pathsCopy];
  }
}

- (void)beginSelectingWithStartingIndexPath:(id)path otherSelectedIndexPaths:(id)paths keepCurrentSelection:(BOOL)selection
{
  selectionCopy = selection;
  pathCopy = path;
  pathsCopy = paths;
  selfCopy2 = self;
  if (selectionCopy)
  {
    v10 = pathsCopy;
  }

  else
  {
    [(UIMultiSelectInteractionState *)self setAllSelectedIndexPaths:0];
    v10 = MEMORY[0x1E695E0F0];
    selfCopy2 = self;
  }

  [(UIMultiSelectInteractionState *)selfCopy2 setOriginallySelectedIndexPaths:v10];
  if (pathCopy)
  {
    [(UIMultiSelectInteractionState *)self setStartIndexPath:pathCopy];
  }

  [(UIMultiSelectInteractionState *)self setSelecting:1];
}

- (id)pathsToSelectForInterpolatedIndexPaths:(id)paths
{
  v4 = MEMORY[0x1E695DFA8];
  pathsCopy = paths;
  originallySelectedIndexPaths = [(UIMultiSelectInteractionState *)self originallySelectedIndexPaths];
  v7 = [v4 setWithArray:originallySelectedIndexPaths];

  if ([(UIMultiSelectInteractionState *)self isSelecting])
  {
    [v7 unionSet:pathsCopy];
  }

  else
  {
    [v7 minusSet:pathsCopy];
  }

  return v7;
}

- (id)pathsToDeselectForInterpolatedIndexPaths:(id)paths currentlySelectedIndexPaths:(id)indexPaths
{
  pathsCopy = paths;
  indexPathsCopy = indexPaths;
  v8 = [(UIMultiSelectInteractionState *)self pathsToSelectForInterpolatedIndexPaths:pathsCopy];
  v9 = [v8 mutableCopy];

  v10 = [indexPathsCopy mutableCopy];
  [v10 minusSet:v9];
  if (![(UIMultiSelectInteractionState *)self isSelecting])
  {
    [v10 unionSet:pathsCopy];
  }

  return v10;
}

- (void)endMultiselectInteraction
{
  multiselectInteractionCounter = self->_multiselectInteractionCounter;
  if (!multiselectInteractionCounter)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIMultiSelectInteractionState.m" lineNumber:172 description:@"Unable to end multiselect interaction. No interaction ongoing."];

    multiselectInteractionCounter = self->_multiselectInteractionCounter;
  }

  self->_multiselectInteractionCounter = multiselectInteractionCounter - 1;
}

- (CGPoint)startPoint
{
  x = self->_startPoint.x;
  y = self->_startPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end