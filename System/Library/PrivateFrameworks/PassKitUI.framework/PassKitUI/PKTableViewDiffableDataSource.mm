@interface PKTableViewDiffableDataSource
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
@end

@implementation PKTableViewDiffableDataSource

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  if (self->_sectionHeaderProvider)
  {
    v6 = a3;
    v7 = [(UITableViewDiffableDataSource *)self snapshot];
    v8 = [v7 sectionIdentifiers];
    v9 = [v8 objectAtIndex:a4];

    v10 = (*(self->_sectionHeaderProvider + 2))();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  if (self->_sectionFooterProvider)
  {
    v6 = a3;
    v7 = [(UITableViewDiffableDataSource *)self snapshot];
    v8 = [v7 sectionIdentifiers];
    v9 = [v8 objectAtIndex:a4];

    v10 = (*(self->_sectionFooterProvider + 2))();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  commitEditingHandler = self->_commitEditingHandler;
  if (commitEditingHandler)
  {
    commitEditingHandler[2](commitEditingHandler, a3, a4, a5);
  }
}

@end