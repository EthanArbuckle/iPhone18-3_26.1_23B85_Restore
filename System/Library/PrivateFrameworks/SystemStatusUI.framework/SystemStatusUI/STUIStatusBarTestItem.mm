@interface STUIStatusBarTestItem
+ (id)displayIdentifierForIndex:(int64_t)index displayIndex:(int64_t)displayIndex;
+ (id)identifierForIndex:(int64_t)index;
- (STUIStatusBarTestItem)initWithIdentifier:(id)identifier statusBar:(id)bar;
- (id)_defaultStringFromDisplayIdentifier:(id)identifier;
- (id)applyUpdate:(id)update toDisplayItem:(id)item;
- (id)dependentEntryKeys;
- (id)viewForIdentifier:(id)identifier;
@end

@implementation STUIStatusBarTestItem

- (id)dependentEntryKeys
{
  v2 = MEMORY[0x277CBEB98];
  if (self->_overrideDependentEntryKeys)
  {
    v3 = [MEMORY[0x277CBEB98] setWithArray:?];
  }

  else
  {
    identifier = [(STUIStatusBarItem *)self identifier];
    v5 = [STUIStatusBarTestData dependentDataKeyForItemIdentifier:identifier];
    v3 = [v2 setWithObject:v5];
  }

  return v3;
}

+ (id)identifierForIndex:(int64_t)index
{
  index = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", index];
  v5 = [self itemIdentifierFromString:index];

  return v5;
}

+ (id)displayIdentifierForIndex:(int64_t)index displayIndex:(int64_t)displayIndex
{
  v6 = [self identifierForIndex:index];
  displayIndex = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", displayIndex];
  v8 = [self displayItemIdentifierFromIdentifier:v6 string:displayIndex];

  return v8;
}

- (STUIStatusBarTestItem)initWithIdentifier:(id)identifier statusBar:(id)bar
{
  v7.receiver = self;
  v7.super_class = STUIStatusBarTestItem;
  v4 = [(STUIStatusBarItem *)&v7 initWithIdentifier:identifier statusBar:bar];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [(STUIStatusBarTestItem *)v4 setStringViews:dictionary];

  return v4;
}

- (id)viewForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(NSMutableDictionary *)self->_stringViews objectForKeyedSubscript:identifierCopy];
  if (!v5)
  {
    v6 = [STUIStatusBarStringView alloc];
    v5 = [(STUIStatusBarStringView *)v6 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    greenColor = [MEMORY[0x277D75348] greenColor];
    v8 = [greenColor colorWithAlphaComponent:0.3];
    [(STUIStatusBarStringView *)v5 setBackgroundColor:v8];

    [(NSMutableDictionary *)self->_stringViews setObject:v5 forKeyedSubscript:identifierCopy];
  }

  return v5;
}

- (id)_defaultStringFromDisplayIdentifier:(id)identifier
{
  v3 = MEMORY[0x277CCACA8];
  identifierCopy = identifier;
  object = [identifierCopy object];
  string = [object string];
  string2 = [identifierCopy string];

  v8 = [v3 stringWithFormat:@"%@.%@", string, string2];

  return v8;
}

- (id)applyUpdate:(id)update toDisplayItem:(id)item
{
  v20.receiver = self;
  v20.super_class = STUIStatusBarTestItem;
  itemCopy = item;
  updateCopy = update;
  v8 = [(STUIStatusBarItem *)&v20 applyUpdate:updateCopy toDisplayItem:itemCopy];
  data = [updateCopy data];

  identifier = [itemCopy identifier];

  testEntries = [data testEntries];
  v12 = [STUIStatusBarTestData dependentDataKeyForDisplayItemIdentifier:identifier];
  v13 = [testEntries objectForKeyedSubscript:v12];

  v14 = [(STUIStatusBarTestItem *)self viewForIdentifier:identifier];
  stringValue = [v13 stringValue];

  if (stringValue)
  {
    [v13 stringValue];
  }

  else
  {
    [(STUIStatusBarTestItem *)self _defaultStringFromDisplayIdentifier:identifier];
  }
  v16 = ;
  [v14 setText:v16];
  otherAnimation = [(STUIStatusBarTestItem *)self otherAnimation];

  if (otherAnimation)
  {
    otherAnimation2 = [(STUIStatusBarTestItem *)self otherAnimation];

    v8 = otherAnimation2;
  }

  return v8;
}

@end