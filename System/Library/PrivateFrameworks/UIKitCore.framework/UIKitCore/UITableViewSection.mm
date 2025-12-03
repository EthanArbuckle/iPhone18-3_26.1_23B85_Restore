@interface UITableViewSection
+ (id)sectionWithRows:(id)rows;
- (UITableViewSection)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UITableViewSection

+ (id)sectionWithRows:(id)rows
{
  rowsCopy = rows;
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setRows:rowsCopy];

  return v4;
}

- (UITableViewSection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = UITableViewSection;
  v5 = [(UITableViewSection *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"UITableSectionHeaderView"];
    headerView = v5->_headerView;
    v5->_headerView = v6;

    v8 = [coderCopy decodeObjectForKey:@"UITableSectionHeaderTitle"];
    headerTitle = v5->_headerTitle;
    v5->_headerTitle = v8;

    v10 = [coderCopy decodeObjectForKey:@"UITableSectionFooterView"];
    footerView = v5->_footerView;
    v5->_footerView = v10;

    v12 = [coderCopy decodeObjectForKey:@"UITableSectionFooterTitle"];
    footerTitle = v5->_footerTitle;
    v5->_footerTitle = v12;

    v14 = [coderCopy decodeObjectForKey:@"UITableSectionRows"];
    rows = v5->_rows;
    v5->_rows = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7 = coderCopy;
  if (*&self->_headerTitle != 0)
  {
    [coderCopy encodeObject:? forKey:?];
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