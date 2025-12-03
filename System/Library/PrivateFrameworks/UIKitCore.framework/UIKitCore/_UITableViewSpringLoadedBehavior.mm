@interface _UITableViewSpringLoadedBehavior
- (BOOL)shouldAllowInteraction:(id)interaction withContext:(id)context;
@end

@implementation _UITableViewSpringLoadedBehavior

- (BOOL)shouldAllowInteraction:(id)interaction withContext:(id)context
{
  contextCopy = context;
  view = [interaction view];
  overrideTargetItem = [contextCopy overrideTargetItem];
  [contextCopy locationInView:view];
  v8 = [view _indexPathForSpringLoadingAtPoint:?];
  v9 = realCellForRowAtIndexPath(view, v8);
  v10 = v9;
  if (v9 && ![v9 isUserInteractionEnabled])
  {
    goto LABEL_5;
  }

  if (overrideTargetItem)
  {
    if (([overrideTargetItem isEqual:v8] & 1) == 0)
    {
LABEL_5:
      v11 = 0;
      goto LABEL_15;
    }
  }

  else if (!v8)
  {
    goto LABEL_5;
  }

  [contextCopy setOverrideTargetView:0];
  targetView = [contextCopy targetView];
  if (![view _shouldSpringLoadRowAtIndexPath:v8 withContext:contextCopy])
  {
    goto LABEL_13;
  }

  targetView2 = [contextCopy targetView];

  if (targetView2 != targetView)
  {
    targetView3 = [contextCopy targetView];
    [contextCopy setOverrideTargetView:targetView3];
  }

  _delegateActual = [view _delegateActual];
  v16 = objc_opt_respondsToSelector();

  if ((v16 & 1) == 0 || ([view _delegateProxy], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "tableView:shouldHighlightRowAtIndexPath:", view, v8), v17, v18))
  {
    [contextCopy setOverrideTargetItem:v8];
    v11 = 1;
  }

  else
  {
LABEL_13:
    v11 = 0;
  }

LABEL_15:
  return v11;
}

@end