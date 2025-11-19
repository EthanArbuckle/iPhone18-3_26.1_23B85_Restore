@interface PXNavigationSocialGroupListItem
- (PXNavigationSocialGroupListItem)initWithSocialGroup:(id)a3 reorderable:(BOOL)a4 topLevelIdentifier:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation PXNavigationSocialGroupListItem

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = PXNavigationSocialGroupListItem;
  v5 = [(PXNavigationListItem *)&v10 copyWithZone:?];
  v6 = [(PXNavigationSocialGroupListItem *)self representedObject];
  v7 = [v6 copyWithZone:a3];
  v8 = v5[6];
  v5[6] = v7;

  return v5;
}

- (PXNavigationSocialGroupListItem)initWithSocialGroup:(id)a3 reorderable:(BOOL)a4 topLevelIdentifier:(id)a5
{
  v6 = a4;
  v9 = a3;
  v10 = a5;
  v11 = [v9 localIdentifier];
  v12 = [PXPeopleUtilities titleStringForSocialGroup:v9];
  v15.receiver = self;
  v15.super_class = PXNavigationSocialGroupListItem;
  v13 = [(PXNavigationListItem *)&v15 initWithIdentifier:v11 title:v12 accessoryTitle:0 reorderable:v6 topLevelIdentifier:v10];

  if (v13)
  {
    objc_storeStrong(&v13->_representedObject, a3);
  }

  return v13;
}

@end