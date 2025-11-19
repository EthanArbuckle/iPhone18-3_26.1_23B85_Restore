@interface PXCollectionSortOrderUtilities
+ (BOOL)supportsFetchSortOrder:(int64_t)a3 inCollection:(id)a4;
+ (BOOL)userCanChangeSortOrderInCollection:(id)a3;
+ (int64_t)_sortOrderFromCollection:(id)a3 sortKey:(unsigned int)a4;
+ (int64_t)sortOrderFromCollection:(id)a3 isAscending:(BOOL *)a4;
@end

@implementation PXCollectionSortOrderUtilities

+ (BOOL)userCanChangeSortOrderInCollection:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = 0;
    goto LABEL_15;
  }

  v6 = v5;
  if (!v6)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    [v13 handleFailureInMethod:a2 object:a1 file:@"PXCollectionSortOrderUtilities.m" lineNumber:69 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"collection", v15}];
LABEL_18:

    goto LABEL_4;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = objc_opt_class();
    v15 = NSStringFromClass(v16);
    v17 = [v6 px_descriptionForAssertionMessage];
    [v13 handleFailureInMethod:a2 object:a1 file:@"PXCollectionSortOrderUtilities.m" lineNumber:69 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"collection", v15, v17}];

    goto LABEL_18;
  }

LABEL_4:
  v7 = [v6 assetCollectionType] == 2 && objc_msgSend(v6, "assetCollectionSubtype") == 1000000204;
  v9 = [v6 px_isSharedAlbum];
  if ([v6 canPerformEditOperation:5])
  {
    v10 = [v6 estimatedAssetCount] > 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = v9 | v10;
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

+ (BOOL)supportsFetchSortOrder:(int64_t)a3 inCollection:(id)a4
{
  v5 = a4;
  v6 = v5;
  if ((a3 - 1) < 2)
  {
    v8 = [v5 px_isRegularAlbum];
LABEL_8:
    v7 = v8;
    goto LABEL_10;
  }

  if (a3 == 4)
  {
    goto LABEL_7;
  }

  if (a3 != 3)
  {
    v7 = 0;
    goto LABEL_10;
  }

  if (([v5 px_isRegularAlbum] & 1) == 0)
  {
LABEL_7:
    v8 = [v6 px_isSharedAlbum];
    goto LABEL_8;
  }

  v7 = 1;
LABEL_10:

  return v7;
}

+ (int64_t)_sortOrderFromCollection:(id)a3 sortKey:(unsigned int)a4
{
  v5 = a3;
  v6 = v5;
  if (a4 > 6)
  {
LABEL_9:
    if (a4 != 101)
    {
      v7 = 3;
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (((1 << a4) & 0x34) != 0)
  {
LABEL_10:
    v7 = 0;
    goto LABEL_11;
  }

  if (((1 << a4) & 0x41) == 0)
  {
    if (a4 == 3)
    {
      v7 = 2;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if ([v5 px_isSharedAlbum])
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

+ (int64_t)sortOrderFromCollection:(id)a3 isAscending:(BOOL *)a4
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    v8 = [v7 customSortAscending];
    v9 = [v7 customSortKey];
  }

  else
  {
    v8 = 0;
    v9 = 1;
  }

  v10 = [a1 _sortOrderFromCollection:v6 sortKey:v9];
  if (a4)
  {
    *a4 = v8;
  }

  return v10;
}

@end