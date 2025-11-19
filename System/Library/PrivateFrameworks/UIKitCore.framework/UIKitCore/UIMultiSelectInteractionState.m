@interface UIMultiSelectInteractionState
- (BOOL)stillValidForSelectedIndexPaths:(id)a3;
- (CGPoint)startPoint;
- (UIMultiSelectInteractionState)initWithCurrentSelection:(id)a3;
- (id)pathsToDeselectForInterpolatedIndexPaths:(id)a3 currentlySelectedIndexPaths:(id)a4;
- (id)pathsToSelectForInterpolatedIndexPaths:(id)a3;
- (void)beginSelectingWithStartingIndexPath:(id)a3 otherSelectedIndexPaths:(id)a4 keepCurrentSelection:(BOOL)a5;
- (void)endMultiselectInteraction;
- (void)ignoreSelectionChangedNotificationsWithBlock:(id)a3;
- (void)setOriginallySelectedIndexPaths:(id)a3;
- (void)updateStateWithDifferenceFromCurrentSelection:(id)a3;
- (void)updateStateWithStartingIndexPath:(id)a3 otherSelectedIndexPaths:(id)a4;
@end

@implementation UIMultiSelectInteractionState

- (UIMultiSelectInteractionState)initWithCurrentSelection:(id)a3
{
  v4 = a3;
  v5 = [(UIMultiSelectInteractionState *)self init];
  v6 = v5;
  if (v5)
  {
    [(UIMultiSelectInteractionState *)v5 setOriginallySelectedIndexPaths:v4];
    v7 = [v4 lastObject];
    [(UIMultiSelectInteractionState *)v6 setStartIndexPath:v7];

    [(UIMultiSelectInteractionState *)v6 setSelecting:1];
  }

  return v6;
}

- (void)setOriginallySelectedIndexPaths:(id)a3
{
  objc_storeStrong(&self->_originallySelectedIndexPaths, a3);
  v5 = a3;
  [(UIMultiSelectInteractionState *)self setAllSelectedIndexPaths:v5];
}

- (void)ignoreSelectionChangedNotificationsWithBlock:(id)a3
{
  ++self->_ignoringSelectionChangedNotificationsCounter;
  (*(a3 + 2))(a3, a2);
  --self->_ignoringSelectionChangedNotificationsCounter;
}

- (BOOL)stillValidForSelectedIndexPaths:(id)a3
{
  v4 = a3;
  v5 = [(UIMultiSelectInteractionState *)self allSelectedIndexPaths];
  v6 = [v5 isEqualToArray:v4];

  return v6;
}

- (void)updateStateWithDifferenceFromCurrentSelection:(id)a3
{
  v20 = a3;
  if (![(UIMultiSelectInteractionState *)self ignoringSelectionChangedNotifications])
  {
    v4 = [(UIMultiSelectInteractionState *)self allSelectedIndexPaths];

    if (!v4)
    {
      [(UIMultiSelectInteractionState *)self setSelecting:1];
      v8 = [v20 lastObject];
      [(UIMultiSelectInteractionState *)self setStartIndexPath:v8];

      [(UIMultiSelectInteractionState *)self setEndIndexPath:0];
      [(UIMultiSelectInteractionState *)self setAllSelectedIndexPaths:v20];
LABEL_14:
      [(UIMultiSelectInteractionState *)self setOriginallySelectedIndexPaths:0];
      goto LABEL_15;
    }

    v5 = [(UIMultiSelectInteractionState *)self allSelectedIndexPaths];
    v6 = [v20 differenceFromArray:v5];

    v7 = [v6 insertions];
    if ([v7 count])
    {
    }

    else
    {
      v9 = [v6 removals];
      v10 = [v9 count];

      if (!v10)
      {
        [(UIMultiSelectInteractionState *)self setSelecting:1];
        v19 = [v20 lastObject];
        [(UIMultiSelectInteractionState *)self setStartIndexPath:v19];
        goto LABEL_12;
      }
    }

    v11 = [v6 insertions];
    v12 = [v11 count];

    if (v12)
    {
      [(UIMultiSelectInteractionState *)self setSelecting:1];
      v13 = [v6 insertions];
    }

    else
    {
      v14 = [v6 removals];
      v15 = [v14 count];

      if (!v15)
      {
LABEL_13:

        goto LABEL_14;
      }

      [(UIMultiSelectInteractionState *)self setSelecting:0];
      v13 = [v6 removals];
    }

    v16 = v13;
    v17 = [v13 lastObject];
    v18 = [v17 object];
    [(UIMultiSelectInteractionState *)self setStartIndexPath:v18];

    v19 = [(UIMultiSelectInteractionState *)self startIndexPath];
    [(UIMultiSelectInteractionState *)self setEndIndexPath:v19];
LABEL_12:

    goto LABEL_13;
  }

LABEL_15:
}

- (void)updateStateWithStartingIndexPath:(id)a3 otherSelectedIndexPaths:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (v9)
  {
    [(UIMultiSelectInteractionState *)self setAllSelectedIndexPaths:0];
    [(UIMultiSelectInteractionState *)self setOriginallySelectedIndexPaths:0];
    -[UIMultiSelectInteractionState setSelecting:](self, "setSelecting:", [v6 containsObject:v9] ^ 1);
    [(UIMultiSelectInteractionState *)self setOriginallySelectedIndexPaths:v6];
    [(UIMultiSelectInteractionState *)self setStartIndexPath:v9];
  }

  else
  {
    v7 = [(UIMultiSelectInteractionState *)self startIndexPath];
    -[UIMultiSelectInteractionState setSelecting:](self, "setSelecting:", [v6 containsObject:v7]);
  }

  v8 = [(UIMultiSelectInteractionState *)self originallySelectedIndexPaths];

  if (!v8)
  {
    [(UIMultiSelectInteractionState *)self setOriginallySelectedIndexPaths:v6];
  }
}

- (void)beginSelectingWithStartingIndexPath:(id)a3 otherSelectedIndexPaths:(id)a4 keepCurrentSelection:(BOOL)a5
{
  v5 = a5;
  v11 = a3;
  v8 = a4;
  v9 = self;
  if (v5)
  {
    v10 = v8;
  }

  else
  {
    [(UIMultiSelectInteractionState *)self setAllSelectedIndexPaths:0];
    v10 = MEMORY[0x1E695E0F0];
    v9 = self;
  }

  [(UIMultiSelectInteractionState *)v9 setOriginallySelectedIndexPaths:v10];
  if (v11)
  {
    [(UIMultiSelectInteractionState *)self setStartIndexPath:v11];
  }

  [(UIMultiSelectInteractionState *)self setSelecting:1];
}

- (id)pathsToSelectForInterpolatedIndexPaths:(id)a3
{
  v4 = MEMORY[0x1E695DFA8];
  v5 = a3;
  v6 = [(UIMultiSelectInteractionState *)self originallySelectedIndexPaths];
  v7 = [v4 setWithArray:v6];

  if ([(UIMultiSelectInteractionState *)self isSelecting])
  {
    [v7 unionSet:v5];
  }

  else
  {
    [v7 minusSet:v5];
  }

  return v7;
}

- (id)pathsToDeselectForInterpolatedIndexPaths:(id)a3 currentlySelectedIndexPaths:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UIMultiSelectInteractionState *)self pathsToSelectForInterpolatedIndexPaths:v6];
  v9 = [v8 mutableCopy];

  v10 = [v7 mutableCopy];
  [v10 minusSet:v9];
  if (![(UIMultiSelectInteractionState *)self isSelecting])
  {
    [v10 unionSet:v6];
  }

  return v10;
}

- (void)endMultiselectInteraction
{
  multiselectInteractionCounter = self->_multiselectInteractionCounter;
  if (!multiselectInteractionCounter)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"UIMultiSelectInteractionState.m" lineNumber:172 description:@"Unable to end multiselect interaction. No interaction ongoing."];

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