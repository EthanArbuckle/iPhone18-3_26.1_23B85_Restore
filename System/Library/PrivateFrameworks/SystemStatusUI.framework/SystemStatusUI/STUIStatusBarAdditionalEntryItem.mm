@interface STUIStatusBarAdditionalEntryItem
- (BOOL)canEnableDisplayItem:(id)a3 fromData:(id)a4;
- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4;
- (id)existingEntryForIdentifier:(id)a3;
- (id)lazyViewForIdentifier:(id)a3 entry:(id)a4;
- (id)viewForIdentifier:(id)a3;
- (void)_create_itemViews;
- (void)itemViews;
@end

@implementation STUIStatusBarAdditionalEntryItem

- (BOOL)canEnableDisplayItem:(id)a3 fromData:(id)a4
{
  v5 = a3;
  v6 = [a4 additionalEntries];
  v7 = [v6 dictionary];

  if (v7)
  {
    v8 = [v5 identifier];
    v9 = [v8 string];
    v10 = [v7 objectForKeyedSubscript:v9];

    v11 = [v10 isEnabled];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v36.receiver = self;
  v36.super_class = STUIStatusBarAdditionalEntryItem;
  v8 = [(STUIStatusBarItem *)&v36 applyUpdate:v6 toDisplayItem:v7];
  if ([v6 dataChanged])
  {
    v9 = [v7 identifier];
    v10 = [v9 string];

    v11 = [v6 data];
    v12 = [v11 additionalEntries];
    v13 = [v12 dictionary];
    v14 = [v13 objectForKeyedSubscript:v10];

    if (![v14 isEnabled])
    {
LABEL_12:

      goto LABEL_13;
    }

    v15 = [(STUIStatusBarAdditionalEntryItem *)self lazyViewForIdentifier:v10 entry:v14];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = v15;
      v16 = v15;
      v17 = v14;
      v18 = MEMORY[0x277D755B8];
      v19 = [v17 imageName];
      v20 = [v18 _systemImageNamed:v19];

      [v16 setImage:v20];
      v21 = [v17 stringValue];
      [v16 setText:v21];

LABEL_7:
      v24 = [v17 BOOLValue];
      v25 = [v6 styleAttributes];
      v26 = v25;
      if (v24)
      {
        [v25 imageTintColor];
      }

      else
      {
        [v25 imageDimmedTintColor];
      }
      v27 = ;

      [v16 setTintColor:v27];
      v15 = v35;
      goto LABEL_11;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = v15;
      v16 = v15;
      v17 = v14;
      v22 = MEMORY[0x277D755B8];
      v23 = [v17 imageName];
      v20 = [v22 _systemImageNamed:v23];

      [v16 setImage:v20];
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = MEMORY[0x277D755B8];
      v30 = v15;
      v31 = [v14 imageName];
      v32 = [v29 _systemImageNamed:v31];
      [v30 setImage:v32];

      v16 = [v14 stringValue];
      [v30 setText:v16];

LABEL_11:
      goto LABEL_12;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = MEMORY[0x277D755B8];
      v16 = [v14 imageName];
      v34 = [v33 _systemImageNamed:v16];
      [v15 setImage:v34];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = [v14 stringValue];
        [v15 setText:v16];
        goto LABEL_11;
      }

      v16 = [(STUIStatusBarItem *)self statusBar];
      v34 = [v16 viewForAdditionalEntryWithIdentifier:v10];
      [v15 setView:v34];
    }

    goto LABEL_11;
  }

LABEL_13:

  return v8;
}

- (id)existingEntryForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(STUIStatusBarItem *)self statusBar];
  v6 = [v5 currentData];
  v7 = [v6 additionalEntries];
  v8 = [v7 dictionary];
  v9 = [v8 objectForKeyedSubscript:v4];

  return v9;
}

- (void)itemViews
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[5];
    if (!v3)
    {
      [a1 _create_itemViews];
      v3 = v2[5];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

- (void)_create_itemViews
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  itemViews = self->_itemViews;
  self->_itemViews = v3;

  MEMORY[0x2821F96F8](v3, itemViews);
}

- (id)lazyViewForIdentifier:(id)a3 entry:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(STUIStatusBarAdditionalEntryItem *)self itemViews];
  v9 = [v8 objectForKeyedSubscript:v6];

  if (!v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v10 = off_279D36FD8;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v10 = off_279D36FE8;
      }

      else
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v10 = off_279D370C8;
        if (isKindOfClass)
        {
          v10 = off_279D37188;
        }
      }
    }

    v11 = objc_alloc(*v10);
    v9 = [v11 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v12 = [(STUIStatusBarAdditionalEntryItem *)self itemViews];
    [v12 setObject:v9 forKeyedSubscript:v6];
  }

  return v9;
}

- (id)viewForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [v4 string];
  v6 = [v4 string];

  v7 = [(STUIStatusBarAdditionalEntryItem *)self existingEntryForIdentifier:v6];
  v8 = [(STUIStatusBarAdditionalEntryItem *)self lazyViewForIdentifier:v5 entry:v7];

  return v8;
}

@end