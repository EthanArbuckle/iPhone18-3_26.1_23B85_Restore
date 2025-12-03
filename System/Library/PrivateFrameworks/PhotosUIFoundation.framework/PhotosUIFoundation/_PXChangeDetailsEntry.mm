@interface _PXChangeDetailsEntry
- (NSDictionary)subitemChangesByItem;
- (_PXChangeDetailsEntry)initWithIndex:(int64_t)index changeDetails:(id)details;
- (void)addSubitemEntry:(id)entry;
- (void)updateWithSectionedChangeDetails:(id)details;
@end

@implementation _PXChangeDetailsEntry

- (NSDictionary)subitemChangesByItem
{
  v18 = *MEMORY[0x1E69E9840];
  if ([(NSMutableArray *)self->_subitemEntries count])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v3 = self->_subitemEntries;
    v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v14;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v13 + 1) + 8 * i);
          if ([v8 index] != 0x7FFFFFFFFFFFFFFFLL)
          {
            changeDetails = [v8 changeDetails];
            v10 = [changeDetails copy];
            v11 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v8, "index")}];
            [0 setObject:v10 forKeyedSubscript:v11];
          }
        }

        v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v5);
    }
  }

  return 0;
}

- (void)updateWithSectionedChangeDetails:(id)details
{
  v36 = *MEMORY[0x1E69E9840];
  detailsCopy = details;
  index = [(_PXChangeDetailsEntry *)self index];
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSectionedChangeDetailsCoalescer.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"sectionIndex != NSNotFound"}];
  }

  v7 = [detailsCopy itemChangesInSection:index];
  changeDetails = [(_PXChangeDetailsEntry *)self changeDetails];
  [changeDetails addChangeDetails:v7];

  changeDetails2 = [(_PXChangeDetailsEntry *)self changeDetails];
  hasIncrementalChanges = [changeDetails2 hasIncrementalChanges];

  if (hasIncrementalChanges)
  {
    v30 = index;
    v11 = [detailsCopy itemsWithSubitemChangesInSection:{-[_PXChangeDetailsEntry index](self, "index")}];
    v12 = [v11 mutableCopy];

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    subitemEntries = [(_PXChangeDetailsEntry *)self subitemEntries];
    v14 = [subitemEntries countByEnumeratingWithState:&v31 objects:v35 count:16];
    v29 = v7;
    if (v14)
    {
      v15 = v14;
      v16 = *v32;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v32 != v16)
          {
            objc_enumerationMutation(subitemEntries);
          }

          v18 = *(*(&v31 + 1) + 8 * i);
          v19 = [v7 indexAfterApplyingChangesToIndex:{objc_msgSend(v18, "index")}];
          [v18 setIndex:v19];
          if (v19 != 0x7FFFFFFFFFFFFFFFLL && [v12 containsIndex:v19])
          {
            [detailsCopy subitemChangesInItem:v19 section:v30];
            v21 = v20 = detailsCopy;
            changeDetails3 = [v18 changeDetails];
            [changeDetails3 addChangeDetails:v21];

            [v12 removeIndex:v19];
            detailsCopy = v20;
            v7 = v29;
          }
        }

        v15 = [subitemEntries countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v15);
    }

    while ([v12 count])
    {
      firstIndex = [v12 firstIndex];
      [v12 removeIndex:firstIndex];
      changeDetails4 = [(_PXChangeDetailsEntry *)self changeDetails];
      v25 = [changeDetails4 indexAfterRevertingChangesFromIndex:firstIndex];

      if (v25 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v26 = [detailsCopy subitemChangesInItem:firstIndex section:v30];
        v27 = [[_PXChangeDetailsEntry alloc] initWithIndex:firstIndex changeDetails:v26];
        [(_PXChangeDetailsEntry *)self addSubitemEntry:v27];
      }
    }

    v7 = v29;
  }
}

- (void)addSubitemEntry:(id)entry
{
  entryCopy = entry;
  subitemEntries = self->_subitemEntries;
  v8 = entryCopy;
  if (!subitemEntries)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_subitemEntries;
    self->_subitemEntries = v6;

    entryCopy = v8;
    subitemEntries = self->_subitemEntries;
  }

  [(NSMutableArray *)subitemEntries addObject:entryCopy];
}

- (_PXChangeDetailsEntry)initWithIndex:(int64_t)index changeDetails:(id)details
{
  detailsCopy = details;
  v12.receiver = self;
  v12.super_class = _PXChangeDetailsEntry;
  v7 = [(_PXChangeDetailsEntry *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_index = index;
    v9 = [detailsCopy mutableCopy];
    changeDetails = v8->_changeDetails;
    v8->_changeDetails = v9;
  }

  return v8;
}

@end