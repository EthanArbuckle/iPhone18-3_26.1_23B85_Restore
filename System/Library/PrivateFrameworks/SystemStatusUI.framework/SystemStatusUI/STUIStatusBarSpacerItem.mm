@interface STUIStatusBarSpacerItem
+ (STUIStatusBarIdentifier)randomDisplayIdentifier;
- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4;
- (id)createDisplayItemForIdentifier:(id)a3;
@end

@implementation STUIStatusBarSpacerItem

+ (STUIStatusBarIdentifier)randomDisplayIdentifier
{
  v2 = [a1 identifier];
  v3 = [MEMORY[0x277CCAD78] UUID];
  v4 = [v3 UUIDString];
  v5 = [STUIStatusBarIdentifier uninternedIdentifierForObject:v2 string:v4];

  return v5;
}

- (id)createDisplayItemForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [[STUIStatusBarSpacerDisplayItem alloc] initWithIdentifier:v4 item:self];

  v6 = objc_alloc_init(MEMORY[0x277D756D0]);
  [v6 _setAllowsNegativeDimensions:1];
  [(STUIStatusBarSpacerDisplayItem *)v5 setLayoutGuide:v6];
  [(STUIStatusBarDisplayItem *)v5 setLayoutItem:v6];

  return v5;
}

- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = STUIStatusBarSpacerItem;
  v7 = a3;
  v8 = [(STUIStatusBarItem *)&v10 applyUpdate:v7 toDisplayItem:v6];
  [v6 applyUpdate:{v7, v10.receiver, v10.super_class}];

  return v8;
}

@end