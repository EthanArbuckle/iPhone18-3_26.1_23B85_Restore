@interface _UIStatusBarCellularExpandedItem
+ (id)groupWithHighPriority:(int64_t)priority lowPriority:(int64_t)lowPriority typeClass:(Class)class allowDualNetwork:(BOOL)network;
- (_UIStatusBarBadgeView)badgeView;
- (id)applyUpdate:(id)update toDisplayItem:(id)item;
- (id)viewForIdentifier:(id)identifier;
- (void)_create_badgeView;
@end

@implementation _UIStatusBarCellularExpandedItem

- (id)applyUpdate:(id)update toDisplayItem:(id)item
{
  itemCopy = item;
  v16.receiver = self;
  v16.super_class = _UIStatusBarCellularExpandedItem;
  v7 = [(_UIStatusBarCellularItem *)&v16 applyUpdate:update toDisplayItem:itemCopy];
  identifier = [itemCopy identifier];
  v9 = [(_UIStatusBarCellularItem *)self entryForDisplayItemWithIdentifier:identifier];

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
      badgeView = [(_UIStatusBarCellularExpandedItem *)self badgeView];
      [badgeView setText:badgeString];
    }
  }

  return v7;
}

- (_UIStatusBarBadgeView)badgeView
{
  badgeView = self->_badgeView;
  if (!badgeView)
  {
    [(_UIStatusBarCellularExpandedItem *)self _create_badgeView];
    badgeView = self->_badgeView;
  }

  return badgeView;
}

- (void)_create_badgeView
{
  v3 = [_UIStatusBarBadgeView alloc];
  v4 = [(_UIStatusBarBadgeView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  badgeView = self->_badgeView;
  self->_badgeView = v4;
}

- (id)viewForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  badgeDisplayIdentifier = [objc_opt_class() badgeDisplayIdentifier];

  if (badgeDisplayIdentifier == identifierCopy)
  {
    badgeView = [(_UIStatusBarCellularExpandedItem *)self badgeView];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = _UIStatusBarCellularExpandedItem;
    badgeView = [(_UIStatusBarCellularItem *)&v9 viewForIdentifier:identifierCopy];
  }

  v7 = badgeView;

  return v7;
}

+ (id)groupWithHighPriority:(int64_t)priority lowPriority:(int64_t)lowPriority typeClass:(Class)class allowDualNetwork:(BOOL)network
{
  v20[7] = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = &OBJC_METACLASS____UIStatusBarCellularExpandedItem;
  v8 = objc_msgSendSuper2(&v19, sel_groupWithHighPriority_lowPriority_typeClass_allowDualNetwork_, priority, lowPriority, class, network);
  badgeDisplayIdentifier = [self badgeDisplayIdentifier];
  v10 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:badgeDisplayIdentifier priority:priority + 1];

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
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:7];
  [v8 setPlacements:v17];

  return v8;
}

@end