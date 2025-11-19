@interface UITableViewDataSource
+ (id)staticDataSourceWithSections:(id)a3;
- (UITableViewDataSource)initWithCoder:(id)a3;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 indentationLevelForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UITableViewDataSource

+ (id)staticDataSourceWithSections:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setSections:v3];

  return v4;
}

- (UITableViewDataSource)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = UITableViewDataSource;
  v5 = [(UITableViewDataSource *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"UITableSections"];
    sections = v5->_sections;
    v5->_sections = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  sections = self->_sections;
  if (sections)
  {
    [a3 encodeObject:sections forKey:@"UITableSections"];
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(NSArray *)self->_sections objectAtIndex:a4];
  v5 = [v4 rows];
  v6 = [v5 count];

  return v6;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  sections = self->_sections;
  v5 = a4;
  v6 = -[NSArray objectAtIndex:](sections, "objectAtIndex:", [v5 section]);
  v7 = [v6 rows];
  v8 = [v5 row];

  v9 = [v7 objectAtIndex:v8];
  v10 = [v9 cell];

  if (!v10)
  {
    v10 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"blank-cell"];
  }

  return v10;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v4 = [(NSArray *)self->_sections objectAtIndex:a4];
  v5 = [v4 headerTitle];

  return v5;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v4 = [(NSArray *)self->_sections objectAtIndex:a4];
  v5 = [v4 footerTitle];

  return v5;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v4 = [(NSArray *)self->_sections objectAtIndex:a4];
  v5 = [v4 headerView];

  return v5;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v4 = [(NSArray *)self->_sections objectAtIndex:a4];
  v5 = [v4 footerView];

  return v5;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v4 = [(NSArray *)self->_sections objectAtIndex:a4];
  v5 = [v4 headerView];

  if (v5)
  {
    [v5 frame];
    v7 = v6;
  }

  else
  {
    v7 = -1.0;
  }

  return v7;
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  v4 = [(NSArray *)self->_sections objectAtIndex:a4];
  v5 = [v4 headerView];

  if (v5)
  {
    [v5 frame];
    v7 = v6;
  }

  else
  {
    v7 = -1.0;
  }

  return v7;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v6 = a3;
  sections = self->_sections;
  v8 = a4;
  v9 = -[NSArray objectAtIndex:](sections, "objectAtIndex:", [v8 section]);
  v10 = [v9 rows];
  v11 = [v8 row];

  v12 = [v10 objectAtIndex:v11];
  [v12 height];
  v14 = v13;

  if (v14 == -1.0)
  {
    [v6 rowHeight];
    v14 = v15;
  }

  return v14;
}

- (int64_t)tableView:(id)a3 indentationLevelForRowAtIndexPath:(id)a4
{
  sections = self->_sections;
  v5 = a4;
  v6 = -[NSArray objectAtIndex:](sections, "objectAtIndex:", [v5 section]);
  v7 = [v6 rows];
  v8 = [v5 row];

  v9 = [v7 objectAtIndex:v8];
  v10 = [v9 cell];
  v11 = [v10 indentationLevel];

  return v11;
}

@end