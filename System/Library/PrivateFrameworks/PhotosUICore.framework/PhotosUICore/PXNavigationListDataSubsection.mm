@interface PXNavigationListDataSubsection
- (PXNavigationListDataSubsection)initWithDataSection:(id)a3 indexDelta:(int64_t)a4 expandedIndex:(int64_t)a5 indentationLevel:(int64_t)a6 externalStartIndex:(int64_t)a7 skipAssetCountFetches:(BOOL)a8;
- (id)listItemAtExternalIndex:(int64_t)a3 topLevelIdentifier:(id)a4;
@end

@implementation PXNavigationListDataSubsection

- (id)listItemAtExternalIndex:(int64_t)a3 topLevelIdentifier:(id)a4
{
  v6 = a4;
  v7 = [(PXNavigationListDataSubsection *)self indexDelta]+ a3;
  v8 = v7 - [(PXNavigationListDataSubsection *)self externalStartIndex];
  v9 = [(PXNavigationListDataSubsection *)self listDataSection];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 objectAtIndex:v8];
  }

  else
  {
    listItemsCache = self->_listItemsCache;
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:v8];
    v11 = [(NSMutableDictionary *)listItemsCache objectForKeyedSubscript:v13];

    if (!v11)
    {
      v14 = [(PXNavigationListDataSubsection *)self dataSection];
      v15 = [v14 objectAtIndex:v8];
      if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      v17 = v14;
      v29 = v15;
      if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      v19 = [v18 objectAtIndex:v8];
      v20 = [v17 outlineObject];
      if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
      {
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }

      v30 = v17;

      if ([v21 canRearrangeContent])
      {
        v22 = [v16 isTransient] ^ 1;
      }

      else
      {
        v22 = 0;
      }

      v31 = v16;
      v23 = 0;
      v28 = v21;
      v24 = 0;
      if (v18 && v19)
      {
        v23 = [v18 lockStateForCollection:{v19, v21}];
        if ([(PXNavigationListDataSubsection *)self skipAssetCountFetches])
        {
          v24 = 0;
        }

        else
        {
          v24 = [v18 accessoryTitleForCollection:v19];
        }
      }

      v11 = PXNavigationListItemWithObject(v29, v24, v23, v22, v6);
      v25 = self->_listItemsCache;
      v26 = [MEMORY[0x1E696AD98] numberWithInteger:v8];
      [(NSMutableDictionary *)v25 setObject:v11 forKeyedSubscript:v26];
    }
  }

  return v11;
}

- (PXNavigationListDataSubsection)initWithDataSection:(id)a3 indexDelta:(int64_t)a4 expandedIndex:(int64_t)a5 indentationLevel:(int64_t)a6 externalStartIndex:(int64_t)a7 skipAssetCountFetches:(BOOL)a8
{
  v15 = a3;
  v22.receiver = self;
  v22.super_class = PXNavigationListDataSubsection;
  v16 = [(PXNavigationListDataSubsection *)&v22 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_dataSection, a3);
    v17->_indentationLevel = a6;
    v17->_indexDelta = a4;
    v17->_expandedIndex = a5;
    v17->_externalStartIndex = a7;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v15;
    }

    else
    {
      v18 = 0;
    }

    objc_storeStrong(&v17->_listDataSection, v18);
    v19 = objc_opt_new();
    listItemsCache = v17->_listItemsCache;
    v17->_listItemsCache = v19;

    v17->_skipAssetCountFetches = a8;
  }

  return v17;
}

@end