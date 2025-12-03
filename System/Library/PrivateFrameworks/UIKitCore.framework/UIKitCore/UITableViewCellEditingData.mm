@interface UITableViewCellEditingData
- (BOOL)wantsMaskingWhileAnimatingDisabled;
- (UITableViewCellEditingData)initWithTableViewCell:(id)cell editingStyle:(int64_t)style;
- (id)editControl:(BOOL)control;
- (id)reorderControl:(BOOL)control;
- (id)reorderSeparatorView:(BOOL)view;
- (void)dealloc;
@end

@implementation UITableViewCellEditingData

- (UITableViewCellEditingData)initWithTableViewCell:(id)cell editingStyle:(int64_t)style
{
  cellCopy = cell;
  v10.receiver = self;
  v10.super_class = UITableViewCellEditingData;
  v7 = [(UITableViewCellEditingData *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_cell, cellCopy);
    v8->_editingStyle = style;
  }

  return v8;
}

- (void)dealloc
{
  flags = self->_flags;
  if ((flags & 1) == 0)
  {
    if ((*&self->_flags & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    [(UIView *)self->_reorderControl removeFromSuperview];
    if ((*&self->_flags & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  [(UIView *)self->_editControl removeFromSuperview];
  flags = self->_flags;
  if ((flags & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((flags & 4) != 0)
  {
LABEL_4:
    [(UIView *)self->_reorderSeparatorView removeFromSuperview];
  }

LABEL_5:
  v4.receiver = self;
  v4.super_class = UITableViewCellEditingData;
  [(UITableViewCellEditingData *)&v4 dealloc];
}

- (BOOL)wantsMaskingWhileAnimatingDisabled
{
  if ([(UITableViewCellEditControl *)self->_editControl wantsMaskingWhileAnimatingDisabled])
  {
    return 1;
  }

  reorderControl = self->_reorderControl;

  return [(UITableViewCellReorderControl *)reorderControl wantsMaskingWhileAnimatingDisabled];
}

- (id)editControl:(BOOL)control
{
  editControl = self->_editControl;
  if (editControl)
  {
    v5 = 1;
  }

  else
  {
    v5 = !control;
  }

  if (!v5)
  {
    v6 = (LODWORD(self->_editingStyle) - 1);
    if (v6 < 3)
    {
      v7 = v6 + 1;
    }

    else
    {
      v7 = 0;
    }

    WeakRetained = objc_loadWeakRetained(&self->_cell);
    v9 = [objc_alloc(objc_opt_class()) initWithTableViewCell:WeakRetained editingStyle:v7];
    v10 = self->_editControl;
    self->_editControl = v9;

    -[UITableViewCellEditControl setSelected:](self->_editControl, "setSelected:", [WeakRetained isSelected]);
    -[UIView setHidden:](self->_editControl, "setHidden:", [WeakRetained _accessoryViewsHidden]);
    [(UIControl *)self->_editControl addTarget:WeakRetained action:sel_editControlWasClicked_ forControlEvents:0x2000];
    if (([WeakRetained _usesModernAccessoriesLayout] & 1) == 0)
    {
      [WeakRetained addSubview:self->_editControl];
      *&self->_flags |= 1u;
    }

    editControl = self->_editControl;
  }

  return editControl;
}

- (id)reorderControl:(BOOL)control
{
  reorderControl = self->_reorderControl;
  if (reorderControl)
  {
    v5 = 1;
  }

  else
  {
    v5 = !control;
  }

  if (!v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_cell);
    v7 = [objc_alloc(objc_opt_class()) initWithTableViewCell:WeakRetained];
    v8 = self->_reorderControl;
    self->_reorderControl = v7;

    if (([WeakRetained _usesModernAccessoriesLayout] & 1) == 0)
    {
      [WeakRetained addSubview:self->_reorderControl];
      *&self->_flags |= 2u;
    }

    reorderControl = self->_reorderControl;
  }

  return reorderControl;
}

- (id)reorderSeparatorView:(BOOL)view
{
  reorderSeparatorView = self->_reorderSeparatorView;
  if (reorderSeparatorView)
  {
    v5 = 1;
  }

  else
  {
    v5 = !view;
  }

  if (!v5)
  {
    v6 = objc_alloc_init(_UITableViewCellVerticalSeparator);
    v7 = self->_reorderSeparatorView;
    self->_reorderSeparatorView = &v6->super;

    [(UIView *)self->_reorderSeparatorView setAutoresizingMask:17];
    WeakRetained = objc_loadWeakRetained(&self->_cell);
    if ([WeakRetained tableViewStyle])
    {
      +[UIColor tableSeparatorDarkColor];
    }

    else
    {
      +[UIColor tableSeparatorLightColor];
    }
    v9 = ;
    [(UIView *)self->_reorderSeparatorView setBackgroundColor:v9];

    if (([WeakRetained _usesModernAccessoriesLayout] & 1) == 0)
    {
      [WeakRetained addSubview:self->_reorderSeparatorView];
      *&self->_flags |= 4u;
    }

    reorderSeparatorView = self->_reorderSeparatorView;
  }

  return reorderSeparatorView;
}

@end