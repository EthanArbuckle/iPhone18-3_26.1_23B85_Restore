@interface PXNavigationListCollectionListItem
- (BOOL)canRearrangeContent;
- (BOOL)isDeletable;
- (BOOL)isDraggable;
- (BOOL)isExpandable;
- (BOOL)isRenamable;
- (PXNavigationListCollectionListItem)initWithCollectionList:(id)a3 accessoryTitle:(id)a4 reorderable:(BOOL)a5 topLevelIdentifier:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)glyphImageName;
@end

@implementation PXNavigationListCollectionListItem

- (id)glyphImageName
{
  v2 = [(PXNavigationListCollectionListItem *)self collection];
  if ([v2 px_isSharedAlbumsFolder])
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
  v2 = [(PXNavigationListCollectionListItem *)self collection];
  v3 = [v2 px_canRearrangeContent];

  return v3;
}

- (BOOL)isExpandable
{
  v2 = [(PXNavigationListCollectionListItem *)self collection];
  v3 = [v2 px_isFolder];

  return v3;
}

- (BOOL)isDeletable
{
  v2 = [(PXNavigationListCollectionListItem *)self collection];
  v3 = [v2 px_isDeletable];

  return v3;
}

- (BOOL)isRenamable
{
  v2 = [(PXNavigationListCollectionListItem *)self collection];
  v3 = [v2 px_isRenamable];

  return v3;
}

- (BOOL)isDraggable
{
  v2 = [(PXNavigationListCollectionListItem *)self collection];
  if ([v2 px_isTopLevelFolder] & 1) != 0 || (objc_msgSend(v2, "px_isProjectsFolder"))
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = [v2 isTransient] ^ 1;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v13.receiver = self;
  v13.super_class = PXNavigationListCollectionListItem;
  v5 = [(PXNavigationListItem *)&v13 copyWithZone:?];
  v6 = [(PXNavigationListCollectionListItem *)self collection];
  v7 = [v6 copyWithZone:a3];
  v8 = v5[6];
  v5[6] = v7;

  v9 = [(PXNavigationListCollectionListItem *)self collectionIdentifier];
  v10 = [v9 copyWithZone:a3];
  v11 = v5[7];
  v5[7] = v10;

  return v5;
}

- (PXNavigationListCollectionListItem)initWithCollectionList:(id)a3 accessoryTitle:(id)a4 reorderable:(BOOL)a5 topLevelIdentifier:(id)a6
{
  v7 = a5;
  v11 = a3;
  v12 = a6;
  v13 = a4;
  v14 = PXNavigationListItemCollectionIdentifier(v11);
  v15 = PXNavigationListItemIdentifier(v12, v14);
  v16 = [v11 px_localizedTitle];
  v19.receiver = self;
  v19.super_class = PXNavigationListCollectionListItem;
  v17 = [(PXNavigationListItem *)&v19 initWithIdentifier:v15 title:v16 accessoryTitle:v13 reorderable:v7 topLevelIdentifier:v12];

  if (v17)
  {
    objc_storeStrong(&v17->_collection, a3);
    objc_storeStrong(&v17->_collectionIdentifier, v14);
  }

  return v17;
}

@end