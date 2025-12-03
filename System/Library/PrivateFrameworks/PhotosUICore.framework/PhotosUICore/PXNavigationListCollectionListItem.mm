@interface PXNavigationListCollectionListItem
- (BOOL)canRearrangeContent;
- (BOOL)isDeletable;
- (BOOL)isDraggable;
- (BOOL)isExpandable;
- (BOOL)isRenamable;
- (PXNavigationListCollectionListItem)initWithCollectionList:(id)list accessoryTitle:(id)title reorderable:(BOOL)reorderable topLevelIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)glyphImageName;
@end

@implementation PXNavigationListCollectionListItem

- (id)glyphImageName
{
  collection = [(PXNavigationListCollectionListItem *)self collection];
  if ([collection px_isSharedAlbumsFolder])
  {
    v3 = @"rectangle.stack.badge.person.crop";
  }

  else
  {
    v3 = @"rectangle.stack";
  }

  v4 = v3;

  return v3;
}

- (BOOL)canRearrangeContent
{
  collection = [(PXNavigationListCollectionListItem *)self collection];
  px_canRearrangeContent = [collection px_canRearrangeContent];

  return px_canRearrangeContent;
}

- (BOOL)isExpandable
{
  collection = [(PXNavigationListCollectionListItem *)self collection];
  px_isFolder = [collection px_isFolder];

  return px_isFolder;
}

- (BOOL)isDeletable
{
  collection = [(PXNavigationListCollectionListItem *)self collection];
  px_isDeletable = [collection px_isDeletable];

  return px_isDeletable;
}

- (BOOL)isRenamable
{
  collection = [(PXNavigationListCollectionListItem *)self collection];
  px_isRenamable = [collection px_isRenamable];

  return px_isRenamable;
}

- (BOOL)isDraggable
{
  collection = [(PXNavigationListCollectionListItem *)self collection];
  if ([collection px_isTopLevelFolder] & 1) != 0 || (objc_msgSend(collection, "px_isProjectsFolder"))
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = [collection isTransient] ^ 1;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v13.receiver = self;
  v13.super_class = PXNavigationListCollectionListItem;
  v5 = [(PXNavigationListItem *)&v13 copyWithZone:?];
  collection = [(PXNavigationListCollectionListItem *)self collection];
  v7 = [collection copyWithZone:zone];
  v8 = v5[6];
  v5[6] = v7;

  collectionIdentifier = [(PXNavigationListCollectionListItem *)self collectionIdentifier];
  v10 = [collectionIdentifier copyWithZone:zone];
  v11 = v5[7];
  v5[7] = v10;

  return v5;
}

- (PXNavigationListCollectionListItem)initWithCollectionList:(id)list accessoryTitle:(id)title reorderable:(BOOL)reorderable topLevelIdentifier:(id)identifier
{
  reorderableCopy = reorderable;
  listCopy = list;
  identifierCopy = identifier;
  titleCopy = title;
  v14 = PXNavigationListItemCollectionIdentifier(listCopy);
  v15 = PXNavigationListItemIdentifier(identifierCopy, v14);
  px_localizedTitle = [listCopy px_localizedTitle];
  v19.receiver = self;
  v19.super_class = PXNavigationListCollectionListItem;
  v17 = [(PXNavigationListItem *)&v19 initWithIdentifier:v15 title:px_localizedTitle accessoryTitle:titleCopy reorderable:reorderableCopy topLevelIdentifier:identifierCopy];

  if (v17)
  {
    objc_storeStrong(&v17->_collection, list);
    objc_storeStrong(&v17->_collectionIdentifier, v14);
  }

  return v17;
}

@end