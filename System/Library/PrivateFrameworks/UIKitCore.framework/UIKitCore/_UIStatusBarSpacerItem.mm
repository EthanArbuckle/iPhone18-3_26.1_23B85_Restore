@interface _UIStatusBarSpacerItem
+ (_UIStatusBarIdentifier)randomDisplayIdentifier;
- (id)applyUpdate:(id)update toDisplayItem:(id)item;
- (id)createDisplayItemForIdentifier:(id)identifier;
@end

@implementation _UIStatusBarSpacerItem

+ (_UIStatusBarIdentifier)randomDisplayIdentifier
{
  identifier = [self identifier];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v5 = [_UIStatusBarIdentifier uninternedIdentifierForObject:identifier string:uUIDString];

  return v5;
}

- (id)createDisplayItemForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[_UIStatusBarSpacerDisplayItem alloc] initWithIdentifier:identifierCopy item:self];

  v6 = objc_alloc_init(UILayoutGuide);
  [(UILayoutGuide *)v6 _setAllowsNegativeDimensions:1];
  [(_UIStatusBarSpacerDisplayItem *)v5 setLayoutGuide:v6];
  [(_UIStatusBarDisplayItem *)v5 setLayoutItem:v6];

  return v5;
}

- (id)applyUpdate:(id)update toDisplayItem:(id)item
{
  itemCopy = item;
  v10.receiver = self;
  v10.super_class = _UIStatusBarSpacerItem;
  updateCopy = update;
  v8 = [(_UIStatusBarItem *)&v10 applyUpdate:updateCopy toDisplayItem:itemCopy];
  [itemCopy applyUpdate:{updateCopy, v10.receiver, v10.super_class}];

  return v8;
}

@end