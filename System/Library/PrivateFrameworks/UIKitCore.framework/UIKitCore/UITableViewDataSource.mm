@interface UITableViewDataSource
+ (id)staticDataSourceWithSections:(id)sections;
- (UITableViewDataSource)initWithCoder:(id)coder;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view indentationLevelForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UITableViewDataSource

+ (id)staticDataSourceWithSections:(id)sections
{
  sectionsCopy = sections;
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setSections:sectionsCopy];

  return v4;
}

- (UITableViewDataSource)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = UITableViewDataSource;
  v5 = [(UITableViewDataSource *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"UITableSections"];
    sections = v5->_sections;
    v5->_sections = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  sections = self->_sections;
  if (sections)
  {
    [coder encodeObject:sections forKey:@"UITableSections"];
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(NSArray *)self->_sections objectAtIndex:section];
  rows = [v4 rows];
  v6 = [rows count];

  return v6;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  sections = self->_sections;
  pathCopy = path;
  v6 = -[NSArray objectAtIndex:](sections, "objectAtIndex:", [pathCopy section]);
  rows = [v6 rows];
  v8 = [pathCopy row];

  v9 = [rows objectAtIndex:v8];
  cell = [v9 cell];

  if (!cell)
  {
    cell = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"blank-cell"];
  }

  return cell;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v4 = [(NSArray *)self->_sections objectAtIndex:section];
  headerTitle = [v4 headerTitle];

  return headerTitle;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  v4 = [(NSArray *)self->_sections objectAtIndex:section];
  footerTitle = [v4 footerTitle];

  return footerTitle;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  v4 = [(NSArray *)self->_sections objectAtIndex:section];
  headerView = [v4 headerView];

  return headerView;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  v4 = [(NSArray *)self->_sections objectAtIndex:section];
  footerView = [v4 footerView];

  return footerView;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  v4 = [(NSArray *)self->_sections objectAtIndex:section];
  headerView = [v4 headerView];

  if (headerView)
  {
    [headerView frame];
    v7 = v6;
  }

  else
  {
    v7 = -1.0;
  }

  return v7;
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  v4 = [(NSArray *)self->_sections objectAtIndex:section];
  headerView = [v4 headerView];

  if (headerView)
  {
    [headerView frame];
    v7 = v6;
  }

  else
  {
    v7 = -1.0;
  }

  return v7;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  viewCopy = view;
  sections = self->_sections;
  pathCopy = path;
  v9 = -[NSArray objectAtIndex:](sections, "objectAtIndex:", [pathCopy section]);
  rows = [v9 rows];
  v11 = [pathCopy row];

  v12 = [rows objectAtIndex:v11];
  [v12 height];
  v14 = v13;

  if (v14 == -1.0)
  {
    [viewCopy rowHeight];
    v14 = v15;
  }

  return v14;
}

- (int64_t)tableView:(id)view indentationLevelForRowAtIndexPath:(id)path
{
  sections = self->_sections;
  pathCopy = path;
  v6 = -[NSArray objectAtIndex:](sections, "objectAtIndex:", [pathCopy section]);
  rows = [v6 rows];
  v8 = [pathCopy row];

  v9 = [rows objectAtIndex:v8];
  cell = [v9 cell];
  indentationLevel = [cell indentationLevel];

  return indentationLevel;
}

@end