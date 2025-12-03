@interface STUIStatusBarSpacerItem
+ (STUIStatusBarIdentifier)randomDisplayIdentifier;
- (id)applyUpdate:(id)update toDisplayItem:(id)item;
- (id)createDisplayItemForIdentifier:(id)identifier;
@end

@implementation STUIStatusBarSpacerItem

+ (STUIStatusBarIdentifier)randomDisplayIdentifier
{
  identifier = [self identifier];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v5 = [STUIStatusBarIdentifier uninternedIdentifierForObject:identifier string:uUIDString];

  return v5;
}

- (id)createDisplayItemForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[STUIStatusBarSpacerDisplayItem alloc] initWithIdentifier:identifierCopy item:self];

  v6 = objc_alloc_init(MEMORY[0x277D756D0]);
  [v6 _setAllowsNegativeDimensions:1];
  [(STUIStatusBarSpacerDisplayItem *)v5 setLayoutGuide:v6];
  [(STUIStatusBarDisplayItem *)v5 setLayoutItem:v6];

  return v5;
}

- (id)applyUpdate:(id)update toDisplayItem:(id)item
{
  itemCopy = item;
  v10.receiver = self;
  v10.super_class = STUIStatusBarSpacerItem;
  updateCopy = update;
  v8 = [(STUIStatusBarItem *)&v10 applyUpdate:updateCopy toDisplayItem:itemCopy];
  [itemCopy applyUpdate:{updateCopy, v10.receiver, v10.super_class}];

  return v8;
}

@end