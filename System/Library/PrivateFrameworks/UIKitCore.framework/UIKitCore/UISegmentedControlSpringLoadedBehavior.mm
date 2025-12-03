@interface UISegmentedControlSpringLoadedBehavior
- (BOOL)shouldAllowInteraction:(id)interaction withContext:(id)context;
@end

@implementation UISegmentedControlSpringLoadedBehavior

- (BOOL)shouldAllowInteraction:(id)interaction withContext:(id)context
{
  contextCopy = context;
  view = [interaction view];
  targetItem = [contextCopy targetItem];
  if (targetItem)
  {
    targetItem2 = [contextCopy targetItem];
    integerValue = [targetItem2 integerValue];
  }

  else
  {
    integerValue = -1;
  }

  [contextCopy locationInView:view];
  v10 = [view _closestSegmentIndexAtPoint:?];
  if (integerValue != v10)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
    [contextCopy setTargetItem:v11];
LABEL_9:
    LOBYTE(v12) = 0;
    goto LABEL_10;
  }

  if ((v10 & 0x80000000) != 0)
  {
    LOBYTE(v12) = 0;
    goto LABEL_11;
  }

  v11 = [view _segmentAtIndex:?];
  if (![v11 isUserInteractionEnabled])
  {
    goto LABEL_9;
  }

  v12 = [v11 isSelected] ^ 1;
LABEL_10:

LABEL_11:
  return v12;
}

@end