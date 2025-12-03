@interface TTRICustomRecurrenceTableViewCell
+ (id)reuseIdentifier;
- (void)_layoutSeparator;
- (void)_setMarginExtendsToFullWidth:(BOOL)width;
- (void)layoutSubviews;
- (void)setDrawsOwnRowSeparators:(BOOL)separators;
- (void)setRowSeparatorColor:(id)color;
- (void)setRowSeparatorVisualEffect:(id)effect;
@end

@implementation TTRICustomRecurrenceTableViewCell

+ (id)reuseIdentifier
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__TTRICustomRecurrenceTableViewCell_reuseIdentifier__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (reuseIdentifier_onceToken_0 != -1)
  {
    dispatch_once(&reuseIdentifier_onceToken_0, block);
  }

  v2 = reuseIdentifier_reuseIdentifier_0;

  return v2;
}

void __52__TTRICustomRecurrenceTableViewCell_reuseIdentifier__block_invoke()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  v2 = reuseIdentifier_reuseIdentifier_0;
  reuseIdentifier_reuseIdentifier_0 = v1;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = TTRICustomRecurrenceTableViewCell;
  [(TTRICustomRecurrenceTableViewCell *)&v3 layoutSubviews];
  [(TTRICustomRecurrenceTableViewCell *)self _layoutSeparator];
}

- (void)_layoutSeparator
{
  if (self->_separatorViewForNonOpaqueTables)
  {
    [objc_opt_class() rowSeparatorThickness];
    v4 = v3;
    [(TTRICustomRecurrenceTableViewCell *)self bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    usesInsetMargin = [(TTRICustomRecurrenceTableViewCell *)self usesInsetMargin];
    v12 = 15.0;
    if (!usesInsetMargin)
    {
      v12 = v6;
    }

    separatorViewForNonOpaqueTables = self->_separatorViewForNonOpaqueTables;

    [(TTRICustomRecurrenceCellRowSeparatorView *)separatorViewForNonOpaqueTables setFrame:v12, v10 - v4, v8, v4];
  }
}

- (void)setRowSeparatorColor:(id)color
{
  colorCopy = color;
  objc_storeStrong(&self->_rowSeparatorColor, color);
  separatorViewForNonOpaqueTables = self->_separatorViewForNonOpaqueTables;
  if (separatorViewForNonOpaqueTables)
  {
    [(TTRICustomRecurrenceCellRowSeparatorView *)separatorViewForNonOpaqueTables setBackgroundColor:self->_rowSeparatorColor];
  }
}

- (void)setRowSeparatorVisualEffect:(id)effect
{
  objc_storeStrong(&self->_rowSeparatorVisualEffect, effect);
  effectCopy = effect;
  [(UIVisualEffectView *)self->_rowSeparatorParentView setEffect:self->_rowSeparatorVisualEffect];
}

- (void)setDrawsOwnRowSeparators:(BOOL)separators
{
  separatorsCopy = separators;
  selfCopy = self;
  contentView = selfCopy;
  if ([objc_opt_class() vibrant])
  {
    if (separatorsCopy && !selfCopy->_rowSeparatorParentView)
    {
      v5 = objc_alloc(MEMORY[0x277D75D68]);
      [(TTRICustomRecurrenceTableViewCell *)selfCopy bounds];
      v6 = [v5 initWithFrame:?];
      rowSeparatorParentView = selfCopy->_rowSeparatorParentView;
      selfCopy->_rowSeparatorParentView = v6;

      rowSeparatorVisualEffect = [(TTRICustomRecurrenceTableViewCell *)selfCopy rowSeparatorVisualEffect];
      rowSeparatorVisualEffect = selfCopy->_rowSeparatorVisualEffect;
      selfCopy->_rowSeparatorVisualEffect = rowSeparatorVisualEffect;

      [(UIVisualEffectView *)selfCopy->_rowSeparatorParentView setAutoresizingMask:18];
      clearColor = [MEMORY[0x277D75348] clearColor];
      [(UIVisualEffectView *)selfCopy->_rowSeparatorParentView setBackgroundColor:clearColor];

      [(TTRICustomRecurrenceTableViewCell *)selfCopy addSubview:selfCopy->_rowSeparatorParentView];
    }

    contentView = [(UIVisualEffectView *)selfCopy->_rowSeparatorParentView contentView];
  }

  selfCopy->_drawsOwnRowSeparators = separatorsCopy;
  separatorViewForNonOpaqueTables = selfCopy->_separatorViewForNonOpaqueTables;
  if (separatorsCopy)
  {
    if (!separatorViewForNonOpaqueTables)
    {
      v12 = objc_alloc_init(TTRICustomRecurrenceCellRowSeparatorView);
      v13 = selfCopy->_separatorViewForNonOpaqueTables;
      selfCopy->_separatorViewForNonOpaqueTables = v12;

      -[TTRICustomRecurrenceCellRowSeparatorView setVibrant:](selfCopy->_separatorViewForNonOpaqueTables, "setVibrant:", [objc_opt_class() vibrant]);
      if ([objc_opt_class() vibrant])
      {
        contentView2 = [(UIVisualEffectView *)selfCopy->_rowSeparatorParentView contentView];
        tintColor = [contentView2 tintColor];
      }

      else
      {
        contentView2 = [(TTRICustomRecurrenceTableViewCell *)selfCopy rowSeparatorColor];
        if (contentView2)
        {
          [(TTRICustomRecurrenceTableViewCell *)selfCopy rowSeparatorColor];
        }

        else
        {
          [MEMORY[0x277D75348] colorWithWhite:0.78 alpha:1.0];
        }
        tintColor = ;
      }

      v17 = tintColor;
      [(TTRICustomRecurrenceCellRowSeparatorView *)selfCopy->_separatorViewForNonOpaqueTables setBackgroundColor:tintColor];

      [contentView addSubview:selfCopy->_separatorViewForNonOpaqueTables];
    }
  }

  else if (separatorViewForNonOpaqueTables)
  {
    [(TTRICustomRecurrenceCellRowSeparatorView *)separatorViewForNonOpaqueTables removeFromSuperview];
    v16 = selfCopy->_separatorViewForNonOpaqueTables;
    selfCopy->_separatorViewForNonOpaqueTables = 0;
  }

  if ([objc_opt_class() vibrant])
  {
    if (!selfCopy->_drawsOwnRowSeparators)
    {
      v18 = selfCopy->_rowSeparatorParentView;
      if (v18)
      {
        [(UIVisualEffectView *)v18 removeFromSuperview];
        v19 = selfCopy->_rowSeparatorParentView;
        selfCopy->_rowSeparatorParentView = 0;
      }
    }
  }
}

- (void)_setMarginExtendsToFullWidth:(BOOL)width
{
  v3 = 15.0;
  if (width)
  {
    v3 = 0.0;
  }

  [(TTRICustomRecurrenceTableViewCell *)self _setMarginWidth:v3];
}

@end