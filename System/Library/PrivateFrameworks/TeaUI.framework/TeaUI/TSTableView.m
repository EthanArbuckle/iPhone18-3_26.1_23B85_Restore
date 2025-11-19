@interface TSTableView
- (TSTableView)initWithFrame:(CGRect)a3 style:(int64_t)a4;
- (id)_accessibilityReorderMessageForNewIndexPath:(id)a3 swappedWithRow:(int64_t)a4 movingDown:(BOOL)a5;
- (id)contextualActionForDeletingRowAtIndexPath:(id)a3;
- (void)_deferWhenTouchingWithBlock:(id)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation TSTableView

- (TSTableView)initWithFrame:(CGRect)a3 style:(int64_t)a4
{
  v8.receiver = self;
  v8.super_class = TSTableView;
  v4 = [(TSTableView *)&v8 initWithFrame:a4 style:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v4)
  {
    v5 = dispatch_group_create();
    touchDeferGroup = v4->_touchDeferGroup;
    v4->_touchDeferGroup = v5;

    v4->_touchDeferCounter = 0;
  }

  return v4;
}

- (id)contextualActionForDeletingRowAtIndexPath:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(TSTableView *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(TSTableView *)self delegate];
    v8 = [v7 tableView:self trailingSwipeActionsConfigurationForRowAtIndexPath:v4];

    if (v8)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v9 = [v8 actions];
      v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v18 + 1) + 8 * i);
            if ([v14 style] == 1)
            {
              v15 = v14;

              goto LABEL_14;
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
  v15 = [(TSTableView *)&v17 contextualActionForDeletingRowAtIndexPath:v4];
LABEL_14:

  return v15;
}

- (id)_accessibilityReorderMessageForNewIndexPath:(id)a3 swappedWithRow:(int64_t)a4 movingDown:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  if (![(TSTableView *)self tsaxPrefersCustomReorderMessage])
  {
    goto LABEL_11;
  }

  v9 = [(TSTableView *)self indexPathForRowAtGlobalRow:a4];
  v10 = [v9 row];
  if (v10 >= -[TSTableView numberOfRowsInSection:](self, "numberOfRowsInSection:", [v9 section]))
  {
LABEL_10:

LABEL_11:
    v22.receiver = self;
    v22.super_class = TSTableView;
    v19 = [(TSTableView *)&v22 _accessibilityReorderMessageForNewIndexPath:v8 swappedWithRow:a4 movingDown:v5];
    goto LABEL_12;
  }

  v11 = [(TSTableView *)self cellForRowAtIndexPath:v9];
  if (([v11 conformsToProtocol:&unk_1F539EF28] & 1) == 0)
  {

    goto LABEL_10;
  }

  v12 = [v11 tsaxAccessibilityLabelForReordering];
  if (v12)
  {
    v13 = [MEMORY[0x1E696AAE8] mainBundle];
    v14 = v13;
    if (v5)
    {
      v15 = @"below";
    }

    else
    {
      v15 = @"above";
    }

    v21 = [v13 localizedStringForKey:v15 value:&stru_1F530DA28 table:0];

    v16 = MEMORY[0x1E696AEC0];
    v17 = [MEMORY[0x1E696AAE8] mainBundle];
    v18 = [v17 localizedStringForKey:@"Move %1$@ %2$@." value:&stru_1F530DA28 table:0];
    v19 = [v16 stringWithFormat:v18, v21, v12];
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

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6.receiver = self;
  v6.super_class = TSTableView;
  [(TSTableView *)&v6 touchesBegan:a3 withEvent:a4];
  v5 = [(TSTableView *)self touchDeferGroup];
  dispatch_group_enter(v5);

  [(TSTableView *)self setTouchDeferCounter:[(TSTableView *)self touchDeferCounter]+ 1];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v6.receiver = self;
  v6.super_class = TSTableView;
  [(TSTableView *)&v6 touchesEnded:a3 withEvent:a4];
  if ([(TSTableView *)self touchDeferCounter]>= 1)
  {
    v5 = [(TSTableView *)self touchDeferGroup];
    dispatch_group_leave(v5);

    [(TSTableView *)self setTouchDeferCounter:[(TSTableView *)self touchDeferCounter]- 1];
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v6.receiver = self;
  v6.super_class = TSTableView;
  [(TSTableView *)&v6 touchesCancelled:a3 withEvent:a4];
  if ([(TSTableView *)self touchDeferCounter]>= 1)
  {
    v5 = [(TSTableView *)self touchDeferGroup];
    dispatch_group_leave(v5);

    [(TSTableView *)self setTouchDeferCounter:[(TSTableView *)self touchDeferCounter]- 1];
  }
}

- (void)_deferWhenTouchingWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(TSTableView *)self touchDeferGroup];
  dispatch_group_notify(v5, MEMORY[0x1E69E96A0], v4);
}

@end