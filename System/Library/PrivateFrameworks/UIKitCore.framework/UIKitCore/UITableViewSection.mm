@interface UITableViewSection
+ (id)sectionWithRows:(id)a3;
- (UITableViewSection)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UITableViewSection

+ (id)sectionWithRows:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setRows:v3];

  return v4;
}

- (UITableViewSection)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = UITableViewSection;
  v5 = [(UITableViewSection *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"UITableSectionHeaderView"];
    headerView = v5->_headerView;
    v5->_headerView = v6;

    v8 = [v4 decodeObjectForKey:@"UITableSectionHeaderTitle"];
    headerTitle = v5->_headerTitle;
    v5->_headerTitle = v8;

    v10 = [v4 decodeObjectForKey:@"UITableSectionFooterView"];
    footerView = v5->_footerView;
    v5->_footerView = v10;

    v12 = [v4 decodeObjectForKey:@"UITableSectionFooterTitle"];
    footerTitle = v5->_footerTitle;
    v5->_footerTitle = v12;

    v14 = [v4 decodeObjectForKey:@"UITableSectionRows"];
    rows = v5->_rows;
    v5->_rows = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (*&self->_headerTitle != 0)
  {
    [v4 encodeObject:? forKey:?];
  }

  if (self->_footerView || self->_footerTitle)
  {
    [v7 encodeObject:? forKey:?];
  }

  rows = self->_rows;
  v6 = v7;
  if (rows)
  {
    [v7 encodeObject:rows forKey:@"UITableSectionRows"];
    v6 = v7;
  }
}

@end