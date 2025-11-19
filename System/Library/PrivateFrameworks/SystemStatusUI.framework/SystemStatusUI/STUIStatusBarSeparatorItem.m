@interface STUIStatusBarSeparatorItem
+ (STUIStatusBarIdentifier)randomDisplayIdentifier;
- (NSMutableDictionary)separatorViews;
- (STUIStatusBarSeparatorItem)initWithIdentifier:(id)a3 statusBar:(id)a4;
- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4;
- (id)lazyViewForIdentifier:(id)a3;
- (id)viewForIdentifier:(id)a3;
- (void)_create_separatorViews;
@end

@implementation STUIStatusBarSeparatorItem

+ (STUIStatusBarIdentifier)randomDisplayIdentifier
{
  v2 = [a1 identifier];
  v3 = [MEMORY[0x277CCAD78] UUID];
  v4 = [v3 UUIDString];
  v5 = [STUIStatusBarIdentifier uninternedIdentifierForObject:v2 string:v4];

  return v5;
}

- (STUIStatusBarSeparatorItem)initWithIdentifier:(id)a3 statusBar:(id)a4
{
  v5.receiver = self;
  v5.super_class = STUIStatusBarSeparatorItem;
  return [(STUIStatusBarItem *)&v5 initWithIdentifier:a3 statusBar:a4];
}

- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4
{
  v18.receiver = self;
  v18.super_class = STUIStatusBarSeparatorItem;
  v6 = a4;
  v7 = [(STUIStatusBarItem *)&v18 applyUpdate:a3 toDisplayItem:v6];
  v8 = [v6 identifier];
  v9 = [v8 string];
  v10 = [(STUIStatusBarSeparatorItem *)self lazyViewForIdentifier:v9];

  v11 = [v6 placement];
  v12 = [v11 itemInfo];
  v13 = [v12 objectForKeyedSubscript:@"lineHeight"];

  v14 = [v6 placement];

  v15 = [v14 itemInfo];
  v16 = [v15 objectForKeyedSubscript:@"lineWidth"];

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

- (id)lazyViewForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(STUIStatusBarSeparatorItem *)self separatorViews];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (!v6)
  {
    v7 = [STUIStatusBarSeparatorView alloc];
    v6 = [(STUIStatusBarSeparatorView *)v7 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    v8 = [(STUIStatusBarSeparatorItem *)self separatorViews];
    [v8 setObject:v6 forKeyedSubscript:v4];
  }

  return v6;
}

- (id)viewForIdentifier:(id)a3
{
  v4 = [a3 string];
  v5 = [(STUIStatusBarSeparatorItem *)self lazyViewForIdentifier:v4];

  return v5;
}

@end