@interface PKTableViewDiffableDataSource
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
@end

@implementation PKTableViewDiffableDataSource

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if (self->_sectionHeaderProvider)
  {
    viewCopy = view;
    snapshot = [(UITableViewDiffableDataSource *)self snapshot];
    sectionIdentifiers = [snapshot sectionIdentifiers];
    v9 = [sectionIdentifiers objectAtIndex:section];

    v10 = (*(self->_sectionHeaderProvider + 2))();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  if (self->_sectionFooterProvider)
  {
    viewCopy = view;
    snapshot = [(UITableViewDiffableDataSource *)self snapshot];
    sectionIdentifiers = [snapshot sectionIdentifiers];
    v9 = [sectionIdentifiers objectAtIndex:section];

    v10 = (*(self->_sectionFooterProvider + 2))();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  commitEditingHandler = self->_commitEditingHandler;
  if (commitEditingHandler)
  {
    commitEditingHandler[2](commitEditingHandler, view, style, path);
  }
}

@end