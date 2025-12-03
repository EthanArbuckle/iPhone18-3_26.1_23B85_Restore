@interface TSTableView
- (TSTableView)initWithFrame:(CGRect)frame style:(int64_t)style;
- (id)_accessibilityReorderMessageForNewIndexPath:(id)path swappedWithRow:(int64_t)row movingDown:(BOOL)down;
- (id)contextualActionForDeletingRowAtIndexPath:(id)path;
- (void)_deferWhenTouchingWithBlock:(id)block;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation TSTableView

- (TSTableView)initWithFrame:(CGRect)frame style:(int64_t)style
{
  v8.receiver = self;
  v8.super_class = TSTableView;
  v4 = [(TSTableView *)&v8 initWithFrame:style style:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v4)
  {
    v5 = dispatch_group_create();
    touchDeferGroup = v4->_touchDeferGroup;
    v4->_touchDeferGroup = v5;

    v4->_touchDeferCounter = 0;
  }

  return v4;
}

- (id)contextualActionForDeletingRowAtIndexPath:(id)path
{
  v23 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  delegate = [(TSTableView *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(TSTableView *)self delegate];
    v8 = [delegate2 tableView:self trailingSwipeActionsConfigurationForRowAtIndexPath:pathCopy];

    if (v8)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      actions = [v8 actions];
      v10 = [actions countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v19;
        while (2)
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v19 != v12)
            {
              objc_enumerationMutation(actions);
            }

            v14 = *(*(&v18 + 1) + 8 * i);
            if ([v14 style] == 1)
            {
              v15 = v14;

              goto LABEL_14;
            }
          }

          v11 = [actions countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }
    }
  }

  v17.receiver = self;
  v17.super_class = TSTableView;
  v15 = [(TSTableView *)&v17 contextualActionForDeletingRowAtIndexPath:pathCopy];
LABEL_14:

  return v15;
}

- (id)_accessibilityReorderMessageForNewIndexPath:(id)path swappedWithRow:(int64_t)row movingDown:(BOOL)down
{
  downCopy = down;
  pathCopy = path;
  if (![(TSTableView *)self tsaxPrefersCustomReorderMessage])
  {
    goto LABEL_11;
  }

  v9 = [(TSTableView *)self indexPathForRowAtGlobalRow:row];
  v10 = [v9 row];
  if (v10 >= -[TSTableView numberOfRowsInSection:](self, "numberOfRowsInSection:", [v9 section]))
  {
LABEL_10:

LABEL_11:
    v22.receiver = self;
    v22.super_class = TSTableView;
    v19 = [(TSTableView *)&v22 _accessibilityReorderMessageForNewIndexPath:pathCopy swappedWithRow:row movingDown:downCopy];
    goto LABEL_12;
  }

  v11 = [(TSTableView *)self cellForRowAtIndexPath:v9];
  if (([v11 conformsToProtocol:&unk_1F539EF28] & 1) == 0)
  {

    goto LABEL_10;
  }

  tsaxAccessibilityLabelForReordering = [v11 tsaxAccessibilityLabelForReordering];
  if (tsaxAccessibilityLabelForReordering)
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    v14 = mainBundle;
    if (downCopy)
    {
      v15 = @"below";
    }

    else
    {
      v15 = @"above";
    }

    v21 = [mainBundle localizedStringForKey:v15 value:&stru_1F530DA28 table:0];

    v16 = MEMORY[0x1E696AEC0];
    mainBundle2 = [MEMORY[0x1E696AAE8] mainBundle];
    v18 = [mainBundle2 localizedStringForKey:@"Move %1$@ %2$@." value:&stru_1F530DA28 table:0];
    v19 = [v16 stringWithFormat:v18, v21, tsaxAccessibilityLabelForReordering];
  }

  else
  {
    v19 = 0;
  }

  if (!v19)
  {
    goto LABEL_11;
  }

LABEL_12:

  return v19;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v6.receiver = self;
  v6.super_class = TSTableView;
  [(TSTableView *)&v6 touchesBegan:began withEvent:event];
  touchDeferGroup = [(TSTableView *)self touchDeferGroup];
  dispatch_group_enter(touchDeferGroup);

  [(TSTableView *)self setTouchDeferCounter:[(TSTableView *)self touchDeferCounter]+ 1];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v6.receiver = self;
  v6.super_class = TSTableView;
  [(TSTableView *)&v6 touchesEnded:ended withEvent:event];
  if ([(TSTableView *)self touchDeferCounter]>= 1)
  {
    touchDeferGroup = [(TSTableView *)self touchDeferGroup];
    dispatch_group_leave(touchDeferGroup);

    [(TSTableView *)self setTouchDeferCounter:[(TSTableView *)self touchDeferCounter]- 1];
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v6.receiver = self;
  v6.super_class = TSTableView;
  [(TSTableView *)&v6 touchesCancelled:cancelled withEvent:event];
  if ([(TSTableView *)self touchDeferCounter]>= 1)
  {
    touchDeferGroup = [(TSTableView *)self touchDeferGroup];
    dispatch_group_leave(touchDeferGroup);

    [(TSTableView *)self setTouchDeferCounter:[(TSTableView *)self touchDeferCounter]- 1];
  }
}

- (void)_deferWhenTouchingWithBlock:(id)block
{
  blockCopy = block;
  touchDeferGroup = [(TSTableView *)self touchDeferGroup];
  dispatch_group_notify(touchDeferGroup, MEMORY[0x1E69E96A0], blockCopy);
}

@end