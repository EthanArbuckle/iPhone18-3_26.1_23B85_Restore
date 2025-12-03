@interface PXNavigationListActionItem
- (BOOL)isEqualToNavigationListItem:(id)item;
- (PXNavigationListActionItem)initWithActionType:(id)type;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation PXNavigationListActionItem

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = PXNavigationListActionItem;
  v3 = [(PXNavigationListItem *)&v7 hash];
  actionType = [(PXNavigationListActionItem *)self actionType];
  v5 = [actionType hash];

  return v5 ^ v3;
}

- (BOOL)isEqualToNavigationListItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = PXNavigationListActionItem;
  if ([(PXNavigationListItem *)&v9 isEqualToNavigationListItem:itemCopy])
  {
    actionType = [(PXNavigationListActionItem *)self actionType];
    actionType2 = [itemCopy actionType];
    if (actionType == actionType2)
    {
      v7 = 1;
    }

    else
    {
      v7 = [actionType isEqualToString:actionType2];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v13.receiver = self;
  v13.super_class = PXNavigationListActionItem;
  v5 = [(PXNavigationListItem *)&v13 copyWithZone:?];
  glyphImageName = [(PXNavigationListActionItem *)self glyphImageName];
  v7 = [glyphImageName copyWithZone:zone];
  v8 = v5[6];
  v5[6] = v7;

  actionType = [(PXNavigationListActionItem *)self actionType];
  v10 = [actionType copyWithZone:zone];
  v11 = v5[7];
  v5[7] = v10;

  return v5;
}

- (PXNavigationListActionItem)initWithActionType:(id)type
{
  typeCopy = type;
  collection = [(PXNavigationListItem *)self collection];
  v6 = [PXPhotoKitCollectionListCreateCollectionActionPerformer localizedTitleForActionType:typeCopy collectionList:collection];

  v13.receiver = self;
  v13.super_class = PXNavigationListActionItem;
  v7 = [(PXNavigationListItem *)&v13 initWithIdentifier:typeCopy title:v6 accessoryTitle:0 reorderable:0 topLevelIdentifier:0];
  v8 = v7;
  if (v7)
  {
    glyphImageName = v7->_glyphImageName;
    v7->_glyphImageName = @"PXNavigationListItemImageNamePlus";

    v10 = [typeCopy copy];
    actionType = v8->_actionType;
    v8->_actionType = v10;
  }

  return v8;
}

@end