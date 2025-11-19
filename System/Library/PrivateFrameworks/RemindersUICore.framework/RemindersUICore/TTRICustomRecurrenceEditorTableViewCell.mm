@interface TTRICustomRecurrenceEditorTableViewCell
+ (id)reuseIdentifier;
- (void)_layoutSeparator;
- (void)_setMarginExtendsToFullWidth:(BOOL)a3;
- (void)layoutSubviews;
- (void)setDrawsOwnRowSeparators:(BOOL)a3;
- (void)setRowSeparatorColor:(id)a3;
- (void)setRowSeparatorVisualEffect:(id)a3;
@end

@implementation TTRICustomRecurrenceEditorTableViewCell

+ (id)reuseIdentifier
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__TTRICustomRecurrenceEditorTableViewCell_reuseIdentifier__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (reuseIdentifier_onceToken != -1)
  {
    dispatch_once(&reuseIdentifier_onceToken, block);
  }

  v2 = reuseIdentifier_reuseIdentifier;

  return v2;
}

void __58__TTRICustomRecurrenceEditorTableViewCell_reuseIdentifier__block_invoke()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  v2 = reuseIdentifier_reuseIdentifier;
  reuseIdentifier_reuseIdentifier = v1;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = TTRICustomRecurrenceEditorTableViewCell;
  [(TTRICustomRecurrenceEditorTableViewCell *)&v3 layoutSubviews];
  [(TTRICustomRecurrenceEditorTableViewCell *)self _layoutSeparator];
}

- (void)_layoutSeparator
{
  if (self->_separatorViewForNonOpaqueTables)
  {
    [objc_opt_class() rowSeparatorThickness];
    v4 = v3;
    [(TTRICustomRecurrenceEditorTableViewCell *)self bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v11 = [(TTRICustomRecurrenceEditorTableViewCell *)self usesInsetMargin];
    v12 = 15.0;
    if (!v11)
    {
      v12 = v6;
    }

    separatorViewForNonOpaqueTables = self->_separatorViewForNonOpaqueTables;

    [(TTRIRowSeparatorView *)separatorViewForNonOpaqueTables setFrame:v12, v10 - v4, v8, v4];
  }
}

- (void)setRowSeparatorColor:(id)a3
{
  v6 = a3;
  objc_storeStrong(&self->_rowSeparatorColor, a3);
  separatorViewForNonOpaqueTables = self->_separatorViewForNonOpaqueTables;
  if (separatorViewForNonOpaqueTables)
  {
    [(TTRIRowSeparatorView *)separatorViewForNonOpaqueTables setBackgroundColor:self->_rowSeparatorColor];
  }
}

- (void)setRowSeparatorVisualEffect:(id)a3
{
  objc_storeStrong(&self->_rowSeparatorVisualEffect, a3);
  v5 = a3;
  [(UIVisualEffectView *)self->_rowSeparatorParentView setEffect:self->_rowSeparatorVisualEffect];
}

- (void)setDrawsOwnRowSeparators:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  v20 = v4;
  if ([objc_opt_class() isVibrant])
  {
    if (v3 && !v4->_rowSeparatorParentView)
    {
      v5 = objc_alloc(MEMORY[0x277D75D68]);
      [(TTRICustomRecurrenceEditorTableViewCell *)v4 bounds];
      v6 = [v5 initWithFrame:?];
      rowSeparatorParentView = v4->_rowSeparatorParentView;
      v4->_rowSeparatorParentView = v6;

      v8 = [(TTRICustomRecurrenceEditorTableViewCell *)v4 rowSeparatorVisualEffect];
      rowSeparatorVisualEffect = v4->_rowSeparatorVisualEffect;
      v4->_rowSeparatorVisualEffect = v8;

      [(UIVisualEffectView *)v4->_rowSeparatorParentView setAutoresizingMask:18];
      v10 = [MEMORY[0x277D75348] clearColor];
      [(UIVisualEffectView *)v4->_rowSeparatorParentView setBackgroundColor:v10];

      [(TTRICustomRecurrenceEditorTableViewCell *)v4 addSubview:v4->_rowSeparatorParentView];
    }

    v20 = [(UIVisualEffectView *)v4->_rowSeparatorParentView contentView];
  }

  v4->_drawsOwnRowSeparators = v3;
  separatorViewForNonOpaqueTables = v4->_separatorViewForNonOpaqueTables;
  if (v3)
  {
    if (!separatorViewForNonOpaqueTables)
    {
      v12 = objc_alloc_init(TTRIRowSeparatorView);
      v13 = v4->_separatorViewForNonOpaqueTables;
      v4->_separatorViewForNonOpaqueTables = v12;

      -[TTRIRowSeparatorView setIsVibrant:](v4->_separatorViewForNonOpaqueTables, "setIsVibrant:", [objc_opt_class() isVibrant]);
      if ([objc_opt_class() isVibrant])
      {
        v14 = [(UIVisualEffectView *)v4->_rowSeparatorParentView contentView];
        v15 = [v14 tintColor];
      }

      else
      {
        v14 = [(TTRICustomRecurrenceEditorTableViewCell *)v4 rowSeparatorColor];
        if (v14)
        {
          [(TTRICustomRecurrenceEditorTableViewCell *)v4 rowSeparatorColor];
        }

        else
        {
          [MEMORY[0x277D75348] colorWithWhite:0.78 alpha:1.0];
        }
        v15 = ;
      }

      v17 = v15;
      [(TTRIRowSeparatorView *)v4->_separatorViewForNonOpaqueTables setBackgroundColor:v15];

      [v20 addSubview:v4->_separatorViewForNonOpaqueTables];
    }
  }

  else if (separatorViewForNonOpaqueTables)
  {
    [(TTRIRowSeparatorView *)separatorViewForNonOpaqueTables removeFromSuperview];
    v16 = v4->_separatorViewForNonOpaqueTables;
    v4->_separatorViewForNonOpaqueTables = 0;
  }

  if ([objc_opt_class() isVibrant])
  {
    if (!v4->_drawsOwnRowSeparators)
    {
      v18 = v4->_rowSeparatorParentView;
      if (v18)
      {
        [(UIVisualEffectView *)v18 removeFromSuperview];
        v19 = v4->_rowSeparatorParentView;
        v4->_rowSeparatorParentView = 0;
      }
    }
  }
}

- (void)_setMarginExtendsToFullWidth:(BOOL)a3
{
  v3 = 15.0;
  if (a3)
  {
    v3 = 0.0;
  }

  [(TTRICustomRecurrenceEditorTableViewCell *)self _setMarginWidth:v3];
}

@end