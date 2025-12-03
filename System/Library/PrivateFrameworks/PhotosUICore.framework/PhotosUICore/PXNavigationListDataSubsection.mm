@interface PXNavigationListDataSubsection
- (PXNavigationListDataSubsection)initWithDataSection:(id)section indexDelta:(int64_t)delta expandedIndex:(int64_t)index indentationLevel:(int64_t)level externalStartIndex:(int64_t)startIndex skipAssetCountFetches:(BOOL)fetches;
- (id)listItemAtExternalIndex:(int64_t)index topLevelIdentifier:(id)identifier;
@end

@implementation PXNavigationListDataSubsection

- (id)listItemAtExternalIndex:(int64_t)index topLevelIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = [(PXNavigationListDataSubsection *)self indexDelta]+ index;
  v8 = v7 - [(PXNavigationListDataSubsection *)self externalStartIndex];
  listDataSection = [(PXNavigationListDataSubsection *)self listDataSection];
  v10 = listDataSection;
  if (listDataSection)
  {
    v11 = [listDataSection objectAtIndex:v8];
  }

  else
  {
    listItemsCache = self->_listItemsCache;
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:v8];
    v11 = [(NSMutableDictionary *)listItemsCache objectForKeyedSubscript:v13];

    if (!v11)
    {
      dataSection = [(PXNavigationListDataSubsection *)self dataSection];
      v15 = [dataSection objectAtIndex:v8];
      if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      v17 = dataSection;
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
      outlineObject = [v17 outlineObject];
      if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
      {
        v21 = outlineObject;
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

      v11 = PXNavigationListItemWithObject(v29, v24, v23, v22, identifierCopy);
      v25 = self->_listItemsCache;
      v26 = [MEMORY[0x1E696AD98] numberWithInteger:v8];
      [(NSMutableDictionary *)v25 setObject:v11 forKeyedSubscript:v26];
    }
  }

  return v11;
}

- (PXNavigationListDataSubsection)initWithDataSection:(id)section indexDelta:(int64_t)delta expandedIndex:(int64_t)index indentationLevel:(int64_t)level externalStartIndex:(int64_t)startIndex skipAssetCountFetches:(BOOL)fetches
{
  sectionCopy = section;
  v22.receiver = self;
  v22.super_class = PXNavigationListDataSubsection;
  v16 = [(PXNavigationListDataSubsection *)&v22 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_dataSection, section);
    v17->_indentationLevel = level;
    v17->_indexDelta = delta;
    v17->_expandedIndex = index;
    v17->_externalStartIndex = startIndex;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = sectionCopy;
    }

    else
    {
      v18 = 0;
    }

    objc_storeStrong(&v17->_listDataSection, v18);
    v19 = objc_opt_new();
    listItemsCache = v17->_listItemsCache;
    v17->_listItemsCache = v19;

    v17->_skipAssetCountFetches = fetches;
  }

  return v17;
}

@end