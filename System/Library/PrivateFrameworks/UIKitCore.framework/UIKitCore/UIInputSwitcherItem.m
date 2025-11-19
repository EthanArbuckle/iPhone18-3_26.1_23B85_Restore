@interface UIInputSwitcherItem
+ (id)switcherItemWithIdentifier:(id)a3;
- (BOOL)isSegmentedItem;
- (UIInputSwitcherItem)initWithIdentifier:(id)a3;
- (void)dealloc;
@end

@implementation UIInputSwitcherItem

+ (id)switcherItemWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithIdentifier:v4];

  return v5;
}

- (void)dealloc
{
  [(UIInputSwitcherItem *)self setPersistentSelectedIndex:0];
  [(UIInputSwitcherItem *)self setSwitchIsOnBlock:0];
  [(UIInputSwitcherItem *)self setSwitchToggleBlock:0];
  v3.receiver = self;
  v3.super_class = UIInputSwitcherItem;
  [(UIInputSwitcherItem *)&v3 dealloc];
}

- (UIInputSwitcherItem)initWithIdentifier:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = UIInputSwitcherItem;
  v5 = [(UIInputSwitcherItem *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(UIInputSwitcherItem *)v5 setIdentifier:v4];
  }

  return v6;
}

- (BOOL)isSegmentedItem
{
  v3 = [(UIInputSwitcherItem *)self segmentImages];
  if ([v3 count])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(UIInputSwitcherItem *)self segmentTitles];
    v4 = [v5 count] != 0;
  }

  return v4;
}

@end