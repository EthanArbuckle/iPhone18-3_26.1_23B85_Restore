@interface PXNavigationPersonListItem
- (PXNavigationPersonListItem)initWithPerson:(id)person reorderable:(BOOL)reorderable topLevelIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PXNavigationPersonListItem

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = PXNavigationPersonListItem;
  v5 = [(PXNavigationListItem *)&v10 copyWithZone:?];
  representedObject = [(PXNavigationPersonListItem *)self representedObject];
  v7 = [representedObject copyWithZone:zone];
  v8 = v5[6];
  v5[6] = v7;

  return v5;
}

- (PXNavigationPersonListItem)initWithPerson:(id)person reorderable:(BOOL)reorderable topLevelIdentifier:(id)identifier
{
  reorderableCopy = reorderable;
  personCopy = person;
  identifierCopy = identifier;
  localIdentifier = [personCopy localIdentifier];
  v12 = [PXPeopleUtilities titleStringForPerson:personCopy];
  v15.receiver = self;
  v15.super_class = PXNavigationPersonListItem;
  v13 = [(PXNavigationListItem *)&v15 initWithIdentifier:localIdentifier title:v12 accessoryTitle:0 reorderable:reorderableCopy topLevelIdentifier:identifierCopy];

  if (v13)
  {
    objc_storeStrong(&v13->_representedObject, person);
  }

  return v13;
}

@end