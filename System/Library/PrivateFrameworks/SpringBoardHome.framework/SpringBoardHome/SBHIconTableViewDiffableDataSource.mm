@interface SBHIconTableViewDiffableDataSource
- (id)sectionIndexTitlesForTableView:(id)a3;
- (void)applyQueryResult:(id)a3 animatingDifferences:(BOOL)a4;
- (void)applyQueryResult:(id)a3 animatingDifferences:(BOOL)a4 completion:(id)a5;
- (void)applySnapshot:(id)a3 animatingDifferences:(BOOL)a4 completion:(id)a5;
@end

@implementation SBHIconTableViewDiffableDataSource

- (id)sectionIndexTitlesForTableView:(id)a3
{
  if ([(SBHIconLibraryQueryResult *)self->_queryResult sortMethodology]== 1)
  {
    v4 = [(SBHIconLibraryQueryResult *)self->_queryResult totalNumberOfItems];
    if (v4)
    {
      v4 = [(SBHIconLibraryQueryResult *)self->_queryResult sectionIndexTitles];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)applyQueryResult:(id)a3 animatingDifferences:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = MEMORY[0x1E696AF00];
  v10 = a5;
  if (([v9 isMainThread] & 1) == 0)
  {
    v11 = SBLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [(SBHIconTableViewDiffableDataSource *)v11 applyQueryResult:v12 animatingDifferences:v13 completion:v14, v15, v16, v17, v18];
    }
  }

  queryResult = self->_queryResult;
  self->_queryResult = v8;
  v20 = v8;

  v21 = [(SBHIconLibraryQueryResult *)v20 snapshot];

  [(SBHIconTableViewDiffableDataSource *)self applySnapshot:v21 animatingDifferences:v6 completion:v10];
}

- (void)applyQueryResult:(id)a3 animatingDifferences:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v7 = SBLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [(SBHIconTableViewDiffableDataSource *)v7 applyQueryResult:v8 animatingDifferences:v9 completion:v10, v11, v12, v13, v14];
    }
  }

  queryResult = self->_queryResult;
  self->_queryResult = v6;
  v16 = v6;

  v17 = [(SBHIconLibraryQueryResult *)v16 snapshot];

  [(UITableViewDiffableDataSource *)self applySnapshot:v17 animatingDifferences:v4];
}

- (void)applySnapshot:(id)a3 animatingDifferences:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
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
  [(UITableViewDiffableDataSource *)&v18 applySnapshot:v8 animatingDifferences:v6 completion:v9];
}

@end