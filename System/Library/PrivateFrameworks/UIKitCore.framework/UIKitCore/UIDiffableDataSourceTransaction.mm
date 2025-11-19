@interface UIDiffableDataSourceTransaction
@end

@implementation UIDiffableDataSourceTransaction

uint64_t __64___UIDiffableDataSourceTransaction_initialDataSourceSnapshotter__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) initialSnapshot];
  v5 = v4;
  if (a2 < 0)
  {
    v9 = [v4 numberOfSections];
  }

  else
  {
    v6 = [*(a1 + 32) initialSnapshot];
    v7 = [v6 sectionIdentifiers];
    v8 = [v7 objectAtIndexedSubscript:a2];
    v9 = [v5 numberOfItemsInSection:v8];
  }

  return v9;
}

uint64_t __62___UIDiffableDataSourceTransaction_finalDataSourceSnapshotter__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) finalSnapshot];
  v5 = v4;
  if (a2 < 0)
  {
    v9 = [v4 numberOfSections];
  }

  else
  {
    v6 = [*(a1 + 32) finalSnapshot];
    v7 = [v6 sectionIdentifiers];
    v8 = [v7 objectAtIndexedSubscript:a2];
    v9 = [v5 numberOfItemsInSection:v8];
  }

  return v9;
}

@end