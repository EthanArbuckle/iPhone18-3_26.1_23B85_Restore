@interface UIInputSwitcherItem
+ (id)switcherItemWithIdentifier:(id)identifier;
- (BOOL)isSegmentedItem;
- (UIInputSwitcherItem)initWithIdentifier:(id)identifier;
- (void)dealloc;
@end

@implementation UIInputSwitcherItem

+ (id)switcherItemWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[self alloc] initWithIdentifier:identifierCopy];

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

- (UIInputSwitcherItem)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8.receiver = self;
  v8.super_class = UIInputSwitcherItem;
  v5 = [(UIInputSwitcherItem *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(UIInputSwitcherItem *)v5 setIdentifier:identifierCopy];
  }

  return v6;
}

- (BOOL)isSegmentedItem
{
  segmentImages = [(UIInputSwitcherItem *)self segmentImages];
  if ([segmentImages count])
  {
    v4 = 1;
  }

  else
  {
    segmentTitles = [(UIInputSwitcherItem *)self segmentTitles];
    v4 = [segmentTitles count] != 0;
  }

  return v4;
}

@end