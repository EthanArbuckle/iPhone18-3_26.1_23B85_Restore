@interface PXCollectionSortOrderUtilities
+ (BOOL)supportsFetchSortOrder:(int64_t)order inCollection:(id)collection;
+ (BOOL)userCanChangeSortOrderInCollection:(id)collection;
+ (int64_t)_sortOrderFromCollection:(id)collection sortKey:(unsigned int)key;
+ (int64_t)sortOrderFromCollection:(id)collection isAscending:(BOOL *)ascending;
@end

@implementation PXCollectionSortOrderUtilities

+ (BOOL)userCanChangeSortOrderInCollection:(id)collection
{
  collectionCopy = collection;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = 0;
    goto LABEL_15;
  }

  v6 = collectionCopy;
  if (!v6)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCollectionSortOrderUtilities.m" lineNumber:69 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"collection", v15}];
LABEL_18:

    goto LABEL_4;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = objc_opt_class();
    v15 = NSStringFromClass(v16);
    px_descriptionForAssertionMessage = [v6 px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCollectionSortOrderUtilities.m" lineNumber:69 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"collection", v15, px_descriptionForAssertionMessage}];

    goto LABEL_18;
  }

LABEL_4:
  v7 = [v6 assetCollectionType] == 2 && objc_msgSend(v6, "assetCollectionSubtype") == 1000000204;
  px_isSharedAlbum = [v6 px_isSharedAlbum];
  if ([v6 canPerformEditOperation:5])
  {
    v10 = [v6 estimatedAssetCount] > 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = px_isSharedAlbum | v10;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = v11;
  }

LABEL_15:
  return v8 & 1;
}

+ (BOOL)supportsFetchSortOrder:(int64_t)order inCollection:(id)collection
{
  collectionCopy = collection;
  v6 = collectionCopy;
  if ((order - 1) < 2)
  {
    px_isRegularAlbum = [collectionCopy px_isRegularAlbum];
LABEL_8:
    v7 = px_isRegularAlbum;
    goto LABEL_10;
  }

  if (order == 4)
  {
    goto LABEL_7;
  }

  if (order != 3)
  {
    v7 = 0;
    goto LABEL_10;
  }

  if (([collectionCopy px_isRegularAlbum] & 1) == 0)
  {
LABEL_7:
    px_isRegularAlbum = [v6 px_isSharedAlbum];
    goto LABEL_8;
  }

  v7 = 1;
LABEL_10:

  return v7;
}

+ (int64_t)_sortOrderFromCollection:(id)collection sortKey:(unsigned int)key
{
  collectionCopy = collection;
  v6 = collectionCopy;
  if (key > 6)
  {
LABEL_9:
    if (key != 101)
    {
      v7 = 3;
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (((1 << key) & 0x34) != 0)
  {
LABEL_10:
    v7 = 0;
    goto LABEL_11;
  }

  if (((1 << key) & 0x41) == 0)
  {
    if (key == 3)
    {
      v7 = 2;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if ([collectionCopy px_isSharedAlbum])
  {
    v7 = 4;
  }

  else
  {
    v7 = 1;
  }

LABEL_11:

  return v7;
}

+ (int64_t)sortOrderFromCollection:(id)collection isAscending:(BOOL *)ascending
{
  collectionCopy = collection;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = collectionCopy;
    customSortAscending = [v7 customSortAscending];
    customSortKey = [v7 customSortKey];
  }

  else
  {
    customSortAscending = 0;
    customSortKey = 1;
  }

  v10 = [self _sortOrderFromCollection:collectionCopy sortKey:customSortKey];
  if (ascending)
  {
    *ascending = customSortAscending;
  }

  return v10;
}

@end