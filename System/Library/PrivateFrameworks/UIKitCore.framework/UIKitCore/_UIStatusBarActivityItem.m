@interface _UIStatusBarActivityItem
- (UIEdgeInsets)activityIndicatorAlignmentRectInsets;
- (_UIStatusBarActivityIndicator)activityIndicator;
- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4;
- (void)_create_activityIndicator;
@end

@implementation _UIStatusBarActivityItem

- (UIEdgeInsets)activityIndicatorAlignmentRectInsets
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (_UIStatusBarActivityIndicator)activityIndicator
{
  activityIndicator = self->_activityIndicator;
  if (!activityIndicator)
  {
    [(_UIStatusBarActivityItem *)self _create_activityIndicator];
    activityIndicator = self->_activityIndicator;
  }

  return activityIndicator;
}

- (void)_create_activityIndicator
{
  v3 = [_UIStatusBarActivityIndicator alloc];
  v4 = [(UIActivityIndicatorView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  activityIndicator = self->_activityIndicator;
  self->_activityIndicator = v4;

  [(UIActivityIndicatorView *)self->_activityIndicator setActivityIndicatorViewStyle:6];
  [(_UIStatusBarActivityItem *)self activityIndicatorAlignmentRectInsets];
  v6 = self->_activityIndicator;

  [(_UIStatusBarActivityIndicator *)v6 setAlignmentRectInsets:?];
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

    LODWORD(v9) = [(_UIStatusBarActivityItem *)self _enableForType:v10];
    v11 = [(_UIStatusBarActivityItem *)self activityIndicator];
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

      v18 = (&unk_18A681690 + 8 * ((v10 & 2) == 0));
      if ((v10 & 1) == 0)
      {
        v18 = (&unk_18A6816A0 + 8 * ((v10 & 2) == 0));
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
          v22 = [(_UIStatusBarItem *)self statusBar];
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
  v26.super_class = _UIStatusBarActivityItem;
  v24 = [(_UIStatusBarItem *)&v26 applyUpdate:v6 toDisplayItem:v7];

  return v24;
}

@end