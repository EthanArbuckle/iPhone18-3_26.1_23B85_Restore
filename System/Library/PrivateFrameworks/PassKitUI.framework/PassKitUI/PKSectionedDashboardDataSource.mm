@interface PKSectionedDashboardDataSource
- (PKSectionedDashboardDataSource)initWithSectionDataSources:(id)sources;
- (PKSectionedDashboardDataSourcePresentationProviding)presentationProvider;
- (id)footerTextItemForSection:(unint64_t)section;
- (id)itemAtIndexPath:(id)path;
- (id)presentationWindowForSectionDataSource:(id)source;
- (id)titleForSection:(unint64_t)section;
- (unint64_t)_sectionOffsetForDataSource:(id)source;
- (unint64_t)numberOfItemsInSection:(unint64_t)section;
- (unint64_t)numberOfSections;
- (void)_notifyContentLoadedIfNecessary;
- (void)_reloadSectionMap;
- (void)setDataSourceDelegate:(id)delegate;
- (void)updateSectionDataSource:(id)source withUpdates:(id)updates diff:(id)diff;
- (void)updateWithBlock:(id)block andDiff:(id)diff;
@end

@implementation PKSectionedDashboardDataSource

- (PKSectionedDashboardDataSource)initWithSectionDataSources:(id)sources
{
  sourcesCopy = sources;
  v12.receiver = self;
  v12.super_class = PKSectionedDashboardDataSource;
  v6 = [(PKSectionedDashboardDataSource *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sectionDataSources, sources);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __61__PKSectionedDashboardDataSource_initWithSectionDataSources___block_invoke;
    v10[3] = &unk_1E801C300;
    v8 = v7;
    v11 = v8;
    [sourcesCopy enumerateObjectsUsingBlock:v10];
    [(PKSectionedDashboardDataSource *)v8 _reloadSectionMap];
  }

  return v7;
}

- (void)setDataSourceDelegate:(id)delegate
{
  objc_storeWeak(&self->_delegate, delegate);

  [(PKSectionedDashboardDataSource *)self _notifyContentLoadedIfNecessary];
}

- (void)_reloadSectionMap
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  selfCopy = self;
  obj = self->_sectionDataSources;
  v5 = [(NSArray *)obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v26;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v25 + 1) + 8 * i);
        sectionIdentifiers = [v9 sectionIdentifiers];
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v11 = [sectionIdentifiers countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v22;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v22 != v13)
              {
                objc_enumerationMutation(sectionIdentifiers);
              }

              [v4 setObject:v9 forKey:*(*(&v21 + 1) + 8 * j)];
            }

            v12 = [sectionIdentifiers countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v12);
        }

        [v3 addObjectsFromArray:sectionIdentifiers];
      }

      v6 = [(NSArray *)obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v6);
  }

  v15 = [v3 copy];
  sectionIdentifiers = selfCopy->_sectionIdentifiers;
  selfCopy->_sectionIdentifiers = v15;

  v17 = [v4 copy];
  sectionMap = selfCopy->_sectionMap;
  selfCopy->_sectionMap = v17;
}

- (unint64_t)_sectionOffsetForDataSource:(id)source
{
  v19 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_sectionDataSources;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v3 = 0;
    v9 = *v15;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v15 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v14 + 1) + 8 * v10);
      if (v11 == sourceCopy)
      {
        break;
      }

      sectionIdentifiers = [v11 sectionIdentifiers];
      v3 += [sectionIdentifiers count];

      if (v8 == ++v10)
      {
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    __break(1u);
  }

  return v3;
}

- (void)_notifyContentLoadedIfNecessary
{
  if (!self->_isAllContentLoaded)
  {
    v3 = [(NSArray *)self->_sectionDataSources pk_countObjectsPassingTest:&__block_literal_global_147];
    if (v3 == [(NSArray *)self->_sectionDataSources count])
    {
      self->_isAllContentLoaded = 1;
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained contentIsLoaded];
    }
  }
}

- (id)itemAtIndexPath:(id)path
{
  sectionIdentifiers = self->_sectionIdentifiers;
  pathCopy = path;
  v6 = -[NSArray objectAtIndexedSubscript:](sectionIdentifiers, "objectAtIndexedSubscript:", [pathCopy section]);
  v7 = [(NSDictionary *)self->_sectionMap objectForKeyedSubscript:v6];
  item = [pathCopy item];

  v9 = [v7 itemForSectionIdentifier:v6 atIndex:item];

  return v9;
}

- (unint64_t)numberOfItemsInSection:(unint64_t)section
{
  if (!self->_isAllContentLoaded)
  {
    return 0;
  }

  v4 = [(NSArray *)self->_sectionIdentifiers objectAtIndexedSubscript:section];
  v5 = [(NSDictionary *)self->_sectionMap objectForKeyedSubscript:v4];
  v6 = [v5 numberOfItemsInSection:v4];

  return v6;
}

- (unint64_t)numberOfSections
{
  if (self->_isAllContentLoaded)
  {
    return [(NSArray *)self->_sectionIdentifiers count];
  }

  else
  {
    return 0;
  }
}

- (id)titleForSection:(unint64_t)section
{
  v4 = [(NSArray *)self->_sectionIdentifiers objectAtIndexedSubscript:section];
  v5 = [(NSDictionary *)self->_sectionMap objectForKeyedSubscript:v4];
  v6 = [v5 titleForSectionIdentifier:v4];

  return v6;
}

- (id)footerTextItemForSection:(unint64_t)section
{
  v4 = [(NSArray *)self->_sectionIdentifiers objectAtIndexedSubscript:section];
  v5 = [(NSDictionary *)self->_sectionMap objectForKeyedSubscript:v4];
  v6 = [v5 footerTextItemForSectionIdentifier:v4];

  return v6;
}

- (void)updateSectionDataSource:(id)source withUpdates:(id)updates diff:(id)diff
{
  updatesCopy = updates;
  diffCopy = diff;
  if (self->_isAllContentLoaded)
  {
    v10 = [(PKSectionedDashboardDataSource *)self _sectionOffsetForDataSource:source];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __75__PKSectionedDashboardDataSource_updateSectionDataSource_withUpdates_diff___block_invoke;
    v12[3] = &unk_1E8010E20;
    v12[4] = self;
    v13 = updatesCopy;
    v11 = diffCopy[2](diffCopy, v10);
    [(PKSectionedDashboardDataSource *)self updateWithBlock:v12 andDiff:v11];
  }

  else
  {
    updatesCopy[2](updatesCopy);
    [(PKSectionedDashboardDataSource *)self _reloadSectionMap];
    [(PKSectionedDashboardDataSource *)self _notifyContentLoadedIfNecessary];
  }
}

uint64_t __75__PKSectionedDashboardDataSource_updateSectionDataSource_withUpdates_diff___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 _reloadSectionMap];
}

- (void)updateWithBlock:(id)block andDiff:(id)diff
{
  blockCopy = block;
  diffCopy = diff;
  if (diffCopy)
  {
    objc_initWeak(&location, self);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __58__PKSectionedDashboardDataSource_updateWithBlock_andDiff___block_invoke;
    v14[3] = &unk_1E8011108;
    objc_copyWeak(&v17, &location);
    v16 = blockCopy;
    v9 = diffCopy;
    v15 = v9;
    [WeakRetained performBatchUpdates:v14 completion:0];

    v10 = objc_loadWeakRetained(&self->_delegate);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __58__PKSectionedDashboardDataSource_updateWithBlock_andDiff___block_invoke_2;
    v11[3] = &unk_1E80110E0;
    objc_copyWeak(&v13, &location);
    v12 = v9;
    [v10 performBatchUpdates:v11 completion:0];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

void __58__PKSectionedDashboardDataSource_updateWithBlock_andDiff___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v20 = WeakRetained;
    (*(*(a1 + 40) + 16))();
    v3 = objc_loadWeakRetained(v20 + 1);
    v4 = [*(a1 + 32) deletedIndexPaths];
    [v3 deleteItemsAtIndexPaths:v4];

    v5 = [*(a1 + 32) deletedSections];
    [v3 deleteSections:v5];

    v6 = [*(a1 + 32) insertedIndexPaths];
    [v3 insertItemsAtIndexPaths:v6];

    v7 = [*(a1 + 32) insertedSections];
    [v3 insertSections:v7];

    v8 = [*(a1 + 32) movedFromSections];
    v9 = [*(a1 + 32) movedToSections];
    if ([v8 count])
    {
      v10 = 0;
      do
      {
        v11 = [v8 objectAtIndexedSubscript:v10];
        v12 = [v11 unsignedIntegerValue];

        v13 = [v9 objectAtIndexedSubscript:v10];
        v14 = [v13 unsignedIntegerValue];

        [v3 moveSection:v12 toSection:v14];
        ++v10;
      }

      while ([v8 count] > v10);
    }

    v15 = [*(a1 + 32) movedFromIndexPaths];
    v16 = [*(a1 + 32) movedToIndexPaths];
    if ([v15 count])
    {
      v17 = 0;
      do
      {
        v18 = [v15 objectAtIndexedSubscript:v17];
        v19 = [v16 objectAtIndexedSubscript:v17];
        [v3 moveItemAtIndexPath:v18 toIndexPath:v19];

        ++v17;
      }

      while ([v15 count] > v17);
    }

    WeakRetained = v20;
  }
}

void __58__PKSectionedDashboardDataSource_updateWithBlock_andDiff___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(WeakRetained + 1);
    v5 = [*(a1 + 32) changedIndexPaths];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          v11 = [v3 itemAtIndexPath:v10];
          [v4 itemChanged:v11 atIndexPath:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }
}

- (id)presentationWindowForSectionDataSource:(id)source
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationProvider);
  v5 = [WeakRetained presentationWindowForSectionedDataSource:self];

  return v5;
}

- (PKSectionedDashboardDataSourcePresentationProviding)presentationProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationProvider);

  return WeakRetained;
}

@end