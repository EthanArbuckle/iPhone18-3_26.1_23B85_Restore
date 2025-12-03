@interface PXOutlineDataSectionManager
- (BOOL)shouldInvalidateDataSectionForChildDataSectionManager:(id)manager changeDescriptor:(unint64_t)descriptor;
- (PXOutlineDataSectionManagerDelegate)delegate;
- (id)_changeDetailsForNewDataSection:(id)section;
- (id)changeDetailsForChangedChildDataSectionManager:(id)manager childChangeDetails:(id)details;
- (id)createDataSection;
- (void)rearrangeSectionContent;
@end

@implementation PXOutlineDataSectionManager

- (PXOutlineDataSectionManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)changeDetailsForChangedChildDataSectionManager:(id)manager childChangeDetails:(id)details
{
  v12[1] = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  if ([details hasIncrementalChanges])
  {
    outlineObject = [managerCopy outlineObject];
    v8 = outlineObject;
    if (outlineObject)
    {
      v12[0] = outlineObject;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    }

    else
    {
      v9 = 0;
    }

    changeDetailsWithNoIncrementalChanges = [(PXOutlineDataSectionManager *)self _changeDetailsForNewDataSection:v9];
  }

  else
  {
    changeDetailsWithNoIncrementalChanges = [off_1E7721450 changeDetailsWithNoIncrementalChanges];
  }

  return changeDetailsWithNoIncrementalChanges;
}

- (BOOL)shouldInvalidateDataSectionForChildDataSectionManager:(id)manager changeDescriptor:(unint64_t)descriptor
{
  descriptorCopy = descriptor;
  managerCopy = manager;
  v6 = managerCopy;
  if ((descriptorCopy & 6) != 0)
  {
    v7 = 1;
  }

  else if (descriptorCopy)
  {
    previousDataSection = [managerCopy previousDataSection];
    v9 = previousDataSection;
    if (previousDataSection)
    {
      v10 = [previousDataSection containsAnyObjects] ^ 1;
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
  childDataSectionManagers = [(PXDataSectionManager *)self childDataSectionManagers];
  v7 = [childDataSectionManagers countByEnumeratingWithState:&v26 objects:v32 count:16];
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
          objc_enumerationMutation(childDataSectionManagers);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        outlineObject = [v11 outlineObject];
        if (outlineObject)
        {
          [v3 addObject:outlineObject];
          if (([v11 allowsEmptyDataSection] & 1) != 0 || (objc_msgSend(v11, "isDataSectionEmpty") & 1) == 0)
          {
            [(NSDictionary *)v5 setObject:v11 forKeyedSubscript:outlineObject];
          }

          else
          {
            [v4 addObject:outlineObject];
          }
        }
      }

      v8 = [childDataSectionManagers countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v8);
  }

  delegate = [(PXOutlineDataSectionManager *)self delegate];
  v14 = delegate;
  if (delegate)
  {
    v15 = [delegate outlineDataSectionManager:self arrangedSectionContent:v3];
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

- (id)_changeDetailsForNewDataSection:(id)section
{
  sectionCopy = section;
  createDataSection = [(PXOutlineDataSectionManager *)self createDataSection];
  dataSection = [(PXDataSectionManager *)self dataSection];
  sectionContent = [dataSection sectionContent];
  sectionContent2 = [createDataSection sectionContent];
  if (sectionCopy)
  {
    v9 = sectionCopy;
  }

  else
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  v10 = [off_1E7721450 changeDetailsFromArray:sectionContent toArray:sectionContent2 changedObjects:v9];

  return v10;
}

@end