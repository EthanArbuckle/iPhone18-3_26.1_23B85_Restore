@interface PXNavigationSocialGroupListItem
- (PXNavigationSocialGroupListItem)initWithSocialGroup:(id)group reorderable:(BOOL)reorderable topLevelIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PXNavigationSocialGroupListItem

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = PXNavigationSocialGroupListItem;
  v5 = [(PXNavigationListItem *)&v10 copyWithZone:?];
  representedObject = [(PXNavigationSocialGroupListItem *)self representedObject];
  v7 = [representedObject copyWithZone:zone];
  v8 = v5[6];
  v5[6] = v7;

  return v5;
}

- (PXNavigationSocialGroupListItem)initWithSocialGroup:(id)group reorderable:(BOOL)reorderable topLevelIdentifier:(id)identifier
{
  reorderableCopy = reorderable;
  groupCopy = group;
  identifierCopy = identifier;
  localIdentifier = [groupCopy localIdentifier];
  v12 = [PXPeopleUtilities titleStringForSocialGroup:groupCopy];
  v15.receiver = self;
  v15.super_class = PXNavigationSocialGroupListItem;
  v13 = [(PXNavigationListItem *)&v15 initWithIdentifier:localIdentifier title:v12 accessoryTitle:0 reorderable:reorderableCopy topLevelIdentifier:identifierCopy];

  if (v13)
  {
    objc_storeStrong(&v13->_representedObject, group);
  }

  return v13;
}

@end