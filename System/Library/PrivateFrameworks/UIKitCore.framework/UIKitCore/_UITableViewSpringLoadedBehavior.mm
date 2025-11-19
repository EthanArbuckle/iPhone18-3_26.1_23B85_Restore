@interface _UITableViewSpringLoadedBehavior
- (BOOL)shouldAllowInteraction:(id)a3 withContext:(id)a4;
@end

@implementation _UITableViewSpringLoadedBehavior

- (BOOL)shouldAllowInteraction:(id)a3 withContext:(id)a4
{
  v5 = a4;
  v6 = [a3 view];
  v7 = [v5 overrideTargetItem];
  [v5 locationInView:v6];
  v8 = [v6 _indexPathForSpringLoadingAtPoint:?];
  v9 = realCellForRowAtIndexPath(v6, v8);
  v10 = v9;
  if (v9 && ![v9 isUserInteractionEnabled])
  {
    goto LABEL_5;
  }

  if (v7)
  {
    if (([v7 isEqual:v8] & 1) == 0)
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

  [v5 setOverrideTargetView:0];
  v12 = [v5 targetView];
  if (![v6 _shouldSpringLoadRowAtIndexPath:v8 withContext:v5])
  {
    goto LABEL_13;
  }

  v13 = [v5 targetView];

  if (v13 != v12)
  {
    v14 = [v5 targetView];
    [v5 setOverrideTargetView:v14];
  }

  v15 = [v6 _delegateActual];
  v16 = objc_opt_respondsToSelector();

  if ((v16 & 1) == 0 || ([v6 _delegateProxy], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "tableView:shouldHighlightRowAtIndexPath:", v6, v8), v17, v18))
  {
    [v5 setOverrideTargetItem:v8];
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