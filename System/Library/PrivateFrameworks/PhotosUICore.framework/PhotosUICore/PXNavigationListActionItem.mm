@interface PXNavigationListActionItem
- (BOOL)isEqualToNavigationListItem:(id)a3;
- (PXNavigationListActionItem)initWithActionType:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation PXNavigationListActionItem

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = PXNavigationListActionItem;
  v3 = [(PXNavigationListItem *)&v7 hash];
  v4 = [(PXNavigationListActionItem *)self actionType];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BOOL)isEqualToNavigationListItem:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PXNavigationListActionItem;
  if ([(PXNavigationListItem *)&v9 isEqualToNavigationListItem:v4])
  {
    v5 = [(PXNavigationListActionItem *)self actionType];
    v6 = [v4 actionType];
    if (v5 == v6)
    {
      v7 = 1;
    }

    else
    {
      v7 = [v5 isEqualToString:v6];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v13.receiver = self;
  v13.super_class = PXNavigationListActionItem;
  v5 = [(PXNavigationListItem *)&v13 copyWithZone:?];
  v6 = [(PXNavigationListActionItem *)self glyphImageName];
  v7 = [v6 copyWithZone:a3];
  v8 = v5[6];
  v5[6] = v7;

  v9 = [(PXNavigationListActionItem *)self actionType];
  v10 = [v9 copyWithZone:a3];
  v11 = v5[7];
  v5[7] = v10;

  return v5;
}

- (PXNavigationListActionItem)initWithActionType:(id)a3
{
  v4 = a3;
  v5 = [(PXNavigationListItem *)self collection];
  v6 = [PXPhotoKitCollectionListCreateCollectionActionPerformer localizedTitleForActionType:v4 collectionList:v5];

  v13.receiver = self;
  v13.super_class = PXNavigationListActionItem;
  v7 = [(PXNavigationListItem *)&v13 initWithIdentifier:v4 title:v6 accessoryTitle:0 reorderable:0 topLevelIdentifier:0];
  v8 = v7;
  if (v7)
  {
    glyphImageName = v7->_glyphImageName;
    v7->_glyphImageName = @"PXNavigationListItemImageNamePlus";

    v10 = [v4 copy];
    actionType = v8->_actionType;
    v8->_actionType = v10;
  }

  return v8;
}

@end