@interface SBHIconTableViewDiffableDataSource
- (id)sectionIndexTitlesForTableView:(id)view;
- (void)applyQueryResult:(id)result animatingDifferences:(BOOL)differences;
- (void)applyQueryResult:(id)result animatingDifferences:(BOOL)differences completion:(id)completion;
- (void)applySnapshot:(id)snapshot animatingDifferences:(BOOL)differences completion:(id)completion;
@end

@implementation SBHIconTableViewDiffableDataSource

- (id)sectionIndexTitlesForTableView:(id)view
{
  if ([(SBHIconLibraryQueryResult *)self->_queryResult sortMethodology]== 1)
  {
    totalNumberOfItems = [(SBHIconLibraryQueryResult *)self->_queryResult totalNumberOfItems];
    if (totalNumberOfItems)
    {
      totalNumberOfItems = [(SBHIconLibraryQueryResult *)self->_queryResult sectionIndexTitles];
    }
  }

  else
  {
    totalNumberOfItems = 0;
  }

  return totalNumberOfItems;
}

- (void)applyQueryResult:(id)result animatingDifferences:(BOOL)differences completion:(id)completion
{
  differencesCopy = differences;
  resultCopy = result;
  v9 = MEMORY[0x1E696AF00];
  completionCopy = completion;
  if (([v9 isMainThread] & 1) == 0)
  {
    v11 = SBLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [(SBHIconTableViewDiffableDataSource *)v11 applyQueryResult:v12 animatingDifferences:v13 completion:v14, v15, v16, v17, v18];
    }
  }

  queryResult = self->_queryResult;
  self->_queryResult = resultCopy;
  v20 = resultCopy;

  snapshot = [(SBHIconLibraryQueryResult *)v20 snapshot];

  [(SBHIconTableViewDiffableDataSource *)self applySnapshot:snapshot animatingDifferences:differencesCopy completion:completionCopy];
}

- (void)applyQueryResult:(id)result animatingDifferences:(BOOL)differences
{
  differencesCopy = differences;
  resultCopy = result;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v7 = SBLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [(SBHIconTableViewDiffableDataSource *)v7 applyQueryResult:v8 animatingDifferences:v9 completion:v10, v11, v12, v13, v14];
    }
  }

  queryResult = self->_queryResult;
  self->_queryResult = resultCopy;
  v16 = resultCopy;

  snapshot = [(SBHIconLibraryQueryResult *)v16 snapshot];

  [(UITableViewDiffableDataSource *)self applySnapshot:snapshot animatingDifferences:differencesCopy];
}

- (void)applySnapshot:(id)snapshot animatingDifferences:(BOOL)differences completion:(id)completion
{
  differencesCopy = differences;
  snapshotCopy = snapshot;
  completionCopy = completion;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v10 = SBLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [(SBHIconTableViewDiffableDataSource *)v10 applyQueryResult:v11 animatingDifferences:v12 completion:v13, v14, v15, v16, v17];
    }
  }

  v18.receiver = self;
  v18.super_class = SBHIconTableViewDiffableDataSource;
  [(UITableViewDiffableDataSource *)&v18 applySnapshot:snapshotCopy animatingDifferences:differencesCopy completion:completionCopy];
}

@end