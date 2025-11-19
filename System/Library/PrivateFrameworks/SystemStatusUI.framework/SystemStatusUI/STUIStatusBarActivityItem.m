@interface STUIStatusBarActivityItem
- (STUIStatusBarActivityIndicator)activityIndicator;
- (UIEdgeInsets)activityIndicatorAlignmentRectInsets;
- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4;
- (void)_create_activityIndicator;
@end

@implementation STUIStatusBarActivityItem

- (STUIStatusBarActivityIndicator)activityIndicator
{
  activityIndicator = self->_activityIndicator;
  if (!activityIndicator)
  {
    [(STUIStatusBarActivityItem *)self _create_activityIndicator];
    activityIndicator = self->_activityIndicator;
  }

  return activityIndicator;
}

- (void)_create_activityIndicator
{
  v3 = [STUIStatusBarActivityIndicator alloc];
  v4 = [(STUIStatusBarActivityIndicator *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  activityIndicator = self->_activityIndicator;
  self->_activityIndicator = v4;

  [(STUIStatusBarActivityIndicator *)self->_activityIndicator setActivityIndicatorViewStyle:6];
  [(STUIStatusBarActivityItem *)self activityIndicatorAlignmentRectInsets];
  v6 = self->_activityIndicator;

  [(STUIStatusBarActivityIndicator *)v6 setAlignmentRectInsets:?];
}

- (UIEdgeInsets)activityIndicatorAlignmentRectInsets
{
  v2 = *MEMORY[0x277D768C8];
  v3 = *(MEMORY[0x277D768C8] + 8);
  v4 = *(MEMORY[0x277D768C8] + 16);
  v5 = *(MEMORY[0x277D768C8] + 24);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([v6 dataChanged] & 1) != 0 || objc_msgSend(v6, "styleAttributesChanged"))
  {
    v8 = [v6 data];
    v9 = [v8 activityEntry];
    v10 = [v9 type];

    LODWORD(v9) = [(STUIStatusBarActivityItem *)self _enableForType:v10];
    v11 = [(STUIStatusBarActivityItem *)self activityIndicator];
    v12 = v11;
    if (v9)
    {
      v13 = [v6 styleAttributes];
      [v13 iconScale];
      v15 = v14;

      v16 = 7;
      if (v15 > 1.0)
      {
        v16 = 12;
      }

      v17 = 6;
      if (v15 > 1.0)
      {
        v17 = 11;
      }

      v18 = (&unk_26C582300 + 8 * ((v10 & 2) == 0));
      if ((v10 & 1) == 0)
      {
        v18 = (&unk_26C582310 + 8 * ((v10 & 2) == 0));
      }

      v19 = *v18;
      if (v10)
      {
        v20 = v16;
      }

      else
      {
        v20 = v17;
      }

      if (v20 == [v12 activityIndicatorViewStyle])
      {
        [v12 setActivityIndicatorViewStyle:v20];
        [v12 setAnimationDuration:v19];
      }

      else
      {
        v21 = [v6 styleAttributesChanged];
        [v12 setActivityIndicatorViewStyle:v20];
        [v12 setAnimationDuration:v19];
        if ((v21 & 1) == 0)
        {
          v22 = [(STUIStatusBarItem *)self statusBar];
          v23 = [v22 styleAttributes];
          [v12 applyStyleAttributes:v23];
        }
      }

      [v12 startAnimating];
    }

    else
    {
      [v11 stopAnimating];
      [v7 setEnabled:0];
    }
  }

  v26.receiver = self;
  v26.super_class = STUIStatusBarActivityItem;
  v24 = [(STUIStatusBarItem *)&v26 applyUpdate:v6 toDisplayItem:v7];

  return v24;
}

void __81__STUIStatusBarActivityItem_Split_additionAnimationForDisplayItemWithIdentifier___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(a1 + 32);
  v6 = a4;
  v5 = [v4 activityView];
  [v5 startAnimating];

  v6[2](v6, 1);
}

void __80__STUIStatusBarActivityItem_Split_removalAnimationForDisplayItemWithIdentifier___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(a1 + 32);
  v5 = a4;
  v6 = [v4 activityView];
  [v6 stopAnimatingWithCompletionHandler:v5];
}

@end