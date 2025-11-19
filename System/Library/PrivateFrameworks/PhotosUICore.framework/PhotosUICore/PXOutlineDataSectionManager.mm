@interface PXOutlineDataSectionManager
- (BOOL)shouldInvalidateDataSectionForChildDataSectionManager:(id)a3 changeDescriptor:(unint64_t)a4;
- (PXOutlineDataSectionManagerDelegate)delegate;
- (id)_changeDetailsForNewDataSection:(id)a3;
- (id)changeDetailsForChangedChildDataSectionManager:(id)a3 childChangeDetails:(id)a4;
- (id)createDataSection;
- (void)rearrangeSectionContent;
@end

@implementation PXOutlineDataSectionManager

- (PXOutlineDataSectionManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)changeDetailsForChangedChildDataSectionManager:(id)a3 childChangeDetails:(id)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([a4 hasIncrementalChanges])
  {
    v7 = [v6 outlineObject];
    v8 = v7;
    if (v7)
    {
      v12[0] = v7;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    }

    else
    {
      v9 = 0;
    }

    v10 = [(PXOutlineDataSectionManager *)self _changeDetailsForNewDataSection:v9];
  }

  else
  {
    v10 = [off_1E7721450 changeDetailsWithNoIncrementalChanges];
  }

  return v10;
}

- (BOOL)shouldInvalidateDataSectionForChildDataSectionManager:(id)a3 changeDescriptor:(unint64_t)a4
{
  v4 = a4;
  v5 = a3;
  v6 = v5;
  if ((v4 & 6) != 0)
  {
    v7 = 1;
  }

  else if (v4)
  {
    v8 = [v5 previousDataSection];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 containsAnyObjects] ^ 1;
    }

    else
    {
      v10 = 1;
    }

    v7 = v10 != [v6 isDataSectionEmpty];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)createDataSection
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = [(PXDataSectionManager *)self childDataSectionManagers];
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        v12 = [v11 outlineObject];
        if (v12)
        {
          [v3 addObject:v12];
          if (([v11 allowsEmptyDataSection] & 1) != 0 || (objc_msgSend(v11, "isDataSectionEmpty") & 1) == 0)
          {
            [(NSDictionary *)v5 setObject:v11 forKeyedSubscript:v12];
          }

          else
          {
            [v4 addObject:v12];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v8);
  }

  v13 = [(PXOutlineDataSectionManager *)self delegate];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 outlineDataSectionManager:self arrangedSectionContent:v3];
    if (v15 != v3)
    {
      v16 = [v3 count];
      if (v16 == [v15 count] && (objc_msgSend(MEMORY[0x1E695DFD8], "setWithArray:", v3), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E695DFD8], "setWithArray:", v15), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v17, "isEqualToSet:", v18), v18, v17, v19))
      {
        [v3 setArray:v15];
      }

      else
      {
        v20 = PLUIGetLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v31 = v14;
          _os_log_impl(&dword_1A3C1C000, v20, OS_LOG_TYPE_ERROR, "%@ did not return a valid arranged section content (different count or content)", buf, 0xCu);
        }
      }
    }
  }

  [v3 removeObjectsInArray:v4];
  dataSectionManagersByDataSectionObjects = self->_dataSectionManagersByDataSectionObjects;
  self->_dataSectionManagersByDataSectionObjects = v5;
  v22 = v5;

  v23 = [PXArrayDataSection alloc];
  v24 = [(PXArrayDataSection *)v23 initWithOutlineObject:0 sectionContent:v3];

  return v24;
}

- (void)rearrangeSectionContent
{
  v3 = [(PXOutlineDataSectionManager *)self _changeDetailsForNewDataSection:0];
  [(PXDataSectionManager *)self updateDataSectionWithChangeDetails:v3];
}

- (id)_changeDetailsForNewDataSection:(id)a3
{
  v4 = a3;
  v5 = [(PXOutlineDataSectionManager *)self createDataSection];
  v6 = [(PXDataSectionManager *)self dataSection];
  v7 = [v6 sectionContent];
  v8 = [v5 sectionContent];
  if (v4)
  {
    v9 = v4;
  }

  else
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  v10 = [off_1E7721450 changeDetailsFromArray:v7 toArray:v8 changedObjects:v9];

  return v10;
}

@end