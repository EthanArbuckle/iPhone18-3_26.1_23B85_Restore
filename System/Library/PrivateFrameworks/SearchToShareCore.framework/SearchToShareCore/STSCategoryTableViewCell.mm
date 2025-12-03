@interface STSCategoryTableViewCell
- (STSCategoryTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)prepareForReuse;
@end

@implementation STSCategoryTableViewCell

- (STSCategoryTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v5.receiver = self;
  v5.super_class = STSCategoryTableViewCell;
  return [(STSCategoryTableViewCell *)&v5 initWithStyle:style reuseIdentifier:identifier];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = STSCategoryTableViewCell;
  [(STSCategoryTableViewCell *)&v3 prepareForReuse];
  [(STSCategoryTableViewCell *)self showSeperator:0];
}

@end