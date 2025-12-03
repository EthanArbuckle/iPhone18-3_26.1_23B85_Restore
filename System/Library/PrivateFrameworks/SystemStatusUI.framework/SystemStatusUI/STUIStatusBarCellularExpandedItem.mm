@interface STUIStatusBarCellularExpandedItem
+ (id)groupWithHighPriority:(int64_t)priority lowPriority:(int64_t)lowPriority typeClass:(Class)class allowDualNetwork:(BOOL)network;
- (STUIStatusBarBadgeView)badgeView;
- (id)applyUpdate:(id)update toDisplayItem:(id)item;
- (id)viewForIdentifier:(id)identifier;
- (void)_create_badgeView;
@end

@implementation STUIStatusBarCellularExpandedItem

- (id)applyUpdate:(id)update toDisplayItem:(id)item
{
  itemCopy = item;
  v16.receiver = self;
  v16.super_class = STUIStatusBarCellularExpandedItem;
  v7 = [(STUIStatusBarCellularItem *)&v16 applyUpdate:update toDisplayItem:itemCopy];
  identifier = [itemCopy identifier];
  v9 = [(STUIStatusBarCellularItem *)self entryForDisplayItemWithIdentifier:identifier];

  identifier2 = [itemCopy identifier];
  badgeDisplayIdentifier = [objc_opt_class() badgeDisplayIdentifier];

  if (identifier2 == badgeDisplayIdentifier)
  {
    badgeString = [v9 badgeString];
    if ([itemCopy isEnabled])
    {
      v13 = [badgeString length] != 0;
    }

    else
    {
      v13 = 0;
    }

    [itemCopy setEnabled:v13];
    if ([itemCopy isEnabled])
    {
      badgeView = [(STUIStatusBarCellularExpandedItem *)self badgeView];
      [badgeView setText:badgeString];
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

- (id)viewForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  badgeDisplayIdentifier = [objc_opt_class() badgeDisplayIdentifier];

  if (badgeDisplayIdentifier == identifierCopy)
  {
    badgeView = [(STUIStatusBarCellularExpandedItem *)self badgeView];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = STUIStatusBarCellularExpandedItem;
    badgeView = [(STUIStatusBarCellularItem *)&v9 viewForIdentifier:identifierCopy];
  }

  v7 = badgeView;

  return v7;
}

+ (id)groupWithHighPriority:(int64_t)priority lowPriority:(int64_t)lowPriority typeClass:(Class)class allowDualNetwork:(BOOL)network
{
  v20[7] = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = &OBJC_METACLASS___STUIStatusBarCellularExpandedItem;
  v8 = objc_msgSendSuper2(&v19, sel_groupWithHighPriority_lowPriority_typeClass_allowDualNetwork_, priority, lowPriority, class, network);
  badgeDisplayIdentifier = [self badgeDisplayIdentifier];
  v10 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:badgeDisplayIdentifier priority:priority + 1];

  [v8 setBadgePlacement:v10];
  signalStrengthPlacement = [v8 signalStrengthPlacement];
  v20[0] = signalStrengthPlacement;
  warningPlacement = [v8 warningPlacement];
  v20[1] = warningPlacement;
  rawPlacement = [v8 rawPlacement];
  v20[2] = rawPlacement;
  v20[3] = v10;
  namePlacement = [v8 namePlacement];
  v20[4] = namePlacement;
  typePlacement = [v8 typePlacement];
  v20[5] = typePlacement;
  callForwardingPlacement = [v8 callForwardingPlacement];
  v20[6] = callForwardingPlacement;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:7];
  [v8 setPlacements:v17];

  return v8;
}

@end