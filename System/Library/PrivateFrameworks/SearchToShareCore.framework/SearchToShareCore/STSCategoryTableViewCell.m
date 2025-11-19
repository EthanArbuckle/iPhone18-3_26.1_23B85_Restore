@interface STSCategoryTableViewCell
- (STSCategoryTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)prepareForReuse;
@end

@implementation STSCategoryTableViewCell

- (STSCategoryTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v5.receiver = self;
  v5.super_class = STSCategoryTableViewCell;
  return [(STSCategoryTableViewCell *)&v5 initWithStyle:a3 reuseIdentifier:a4];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = STSCategoryTableViewCell;
  [(STSCategoryTableViewCell *)&v3 prepareForReuse];
  [(STSCategoryTableViewCell *)self showSeperator:0];
}

@end