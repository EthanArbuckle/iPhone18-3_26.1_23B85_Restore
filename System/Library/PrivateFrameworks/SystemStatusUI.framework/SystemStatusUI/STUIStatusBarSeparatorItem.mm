@interface STUIStatusBarSeparatorItem
+ (STUIStatusBarIdentifier)randomDisplayIdentifier;
- (NSMutableDictionary)separatorViews;
- (STUIStatusBarSeparatorItem)initWithIdentifier:(id)identifier statusBar:(id)bar;
- (id)applyUpdate:(id)update toDisplayItem:(id)item;
- (id)lazyViewForIdentifier:(id)identifier;
- (id)viewForIdentifier:(id)identifier;
- (void)_create_separatorViews;
@end

@implementation STUIStatusBarSeparatorItem

+ (STUIStatusBarIdentifier)randomDisplayIdentifier
{
  identifier = [self identifier];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v5 = [STUIStatusBarIdentifier uninternedIdentifierForObject:identifier string:uUIDString];

  return v5;
}

- (STUIStatusBarSeparatorItem)initWithIdentifier:(id)identifier statusBar:(id)bar
{
  v5.receiver = self;
  v5.super_class = STUIStatusBarSeparatorItem;
  return [(STUIStatusBarItem *)&v5 initWithIdentifier:identifier statusBar:bar];
}

- (id)applyUpdate:(id)update toDisplayItem:(id)item
{
  v18.receiver = self;
  v18.super_class = STUIStatusBarSeparatorItem;
  itemCopy = item;
  v7 = [(STUIStatusBarItem *)&v18 applyUpdate:update toDisplayItem:itemCopy];
  identifier = [itemCopy identifier];
  string = [identifier string];
  v10 = [(STUIStatusBarSeparatorItem *)self lazyViewForIdentifier:string];

  placement = [itemCopy placement];
  itemInfo = [placement itemInfo];
  v13 = [itemInfo objectForKeyedSubscript:@"lineHeight"];

  placement2 = [itemCopy placement];

  itemInfo2 = [placement2 itemInfo];
  v16 = [itemInfo2 objectForKeyedSubscript:@"lineWidth"];

  if (v13)
  {
    [v13 bs_CGFloatValue];
    [v10 setLineHeight:?];
  }

  if (v16)
  {
    [v16 bs_CGFloatValue];
    [v10 setLineWidth:?];
  }

  return v7;
}

- (NSMutableDictionary)separatorViews
{
  separatorViews = self->_separatorViews;
  if (!separatorViews)
  {
    [(STUIStatusBarSeparatorItem *)self _create_separatorViews];
    separatorViews = self->_separatorViews;
  }

  return separatorViews;
}

- (void)_create_separatorViews
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  separatorViews = self->_separatorViews;
  self->_separatorViews = v3;

  MEMORY[0x2821F96F8](v3, separatorViews);
}

- (id)lazyViewForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  separatorViews = [(STUIStatusBarSeparatorItem *)self separatorViews];
  v6 = [separatorViews objectForKeyedSubscript:identifierCopy];

  if (!v6)
  {
    v7 = [STUIStatusBarSeparatorView alloc];
    v6 = [(STUIStatusBarSeparatorView *)v7 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    separatorViews2 = [(STUIStatusBarSeparatorItem *)self separatorViews];
    [separatorViews2 setObject:v6 forKeyedSubscript:identifierCopy];
  }

  return v6;
}

- (id)viewForIdentifier:(id)identifier
{
  string = [identifier string];
  v5 = [(STUIStatusBarSeparatorItem *)self lazyViewForIdentifier:string];

  return v5;
}

@end