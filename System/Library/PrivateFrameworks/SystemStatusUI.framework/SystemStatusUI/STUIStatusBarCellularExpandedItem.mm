@interface STUIStatusBarCellularExpandedItem
+ (id)groupWithHighPriority:(int64_t)a3 lowPriority:(int64_t)a4 typeClass:(Class)a5 allowDualNetwork:(BOOL)a6;
- (STUIStatusBarBadgeView)badgeView;
- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4;
- (id)viewForIdentifier:(id)a3;
- (void)_create_badgeView;
@end

@implementation STUIStatusBarCellularExpandedItem

- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4
{
  v6 = a4;
  v16.receiver = self;
  v16.super_class = STUIStatusBarCellularExpandedItem;
  v7 = [(STUIStatusBarCellularItem *)&v16 applyUpdate:a3 toDisplayItem:v6];
  v8 = [v6 identifier];
  v9 = [(STUIStatusBarCellularItem *)self entryForDisplayItemWithIdentifier:v8];

  v10 = [v6 identifier];
  v11 = [objc_opt_class() badgeDisplayIdentifier];

  if (v10 == v11)
  {
    v12 = [v9 badgeString];
    if ([v6 isEnabled])
    {
      v13 = [v12 length] != 0;
    }

    else
    {
      v13 = 0;
    }

    [v6 setEnabled:v13];
    if ([v6 isEnabled])
    {
      v14 = [(STUIStatusBarCellularExpandedItem *)self badgeView];
      [v14 setText:v12];
    }
  }

  return v7;
}

- (STUIStatusBarBadgeView)badgeView
{
  badgeView = self->_badgeView;
  if (!badgeView)
  {
    [(STUIStatusBarCellularExpandedItem *)self _create_badgeView];
    badgeView = self->_badgeView;
  }

  return badgeView;
}

- (void)_create_badgeView
{
  v3 = [STUIStatusBarBadgeView alloc];
  self->_badgeView = [(STUIStatusBarBadgeView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];

  MEMORY[0x2821F96F8]();
}

- (id)viewForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() badgeDisplayIdentifier];

  if (v5 == v4)
  {
    v6 = [(STUIStatusBarCellularExpandedItem *)self badgeView];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = STUIStatusBarCellularExpandedItem;
    v6 = [(STUIStatusBarCellularItem *)&v9 viewForIdentifier:v4];
  }

  v7 = v6;

  return v7;
}

+ (id)groupWithHighPriority:(int64_t)a3 lowPriority:(int64_t)a4 typeClass:(Class)a5 allowDualNetwork:(BOOL)a6
{
  v20[7] = *MEMORY[0x277D85DE8];
  v19.receiver = a1;
  v19.super_class = &OBJC_METACLASS___STUIStatusBarCellularExpandedItem;
  v8 = objc_msgSendSuper2(&v19, sel_groupWithHighPriority_lowPriority_typeClass_allowDualNetwork_, a3, a4, a5, a6);
  v9 = [a1 badgeDisplayIdentifier];
  v10 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v9 priority:a3 + 1];

  [v8 setBadgePlacement:v10];
  v11 = [v8 signalStrengthPlacement];
  v20[0] = v11;
  v12 = [v8 warningPlacement];
  v20[1] = v12;
  v13 = [v8 rawPlacement];
  v20[2] = v13;
  v20[3] = v10;
  v14 = [v8 namePlacement];
  v20[4] = v14;
  v15 = [v8 typePlacement];
  v20[5] = v15;
  v16 = [v8 callForwardingPlacement];
  v20[6] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:7];
  [v8 setPlacements:v17];

  return v8;
}

@end