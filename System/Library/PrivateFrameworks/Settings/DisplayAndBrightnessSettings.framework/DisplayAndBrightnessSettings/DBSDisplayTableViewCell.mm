@interface DBSDisplayTableViewCell
- (DBSDisplayTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
@end

@implementation DBSDisplayTableViewCell

- (DBSDisplayTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v11.receiver = self;
  v11.super_class = DBSDisplayTableViewCell;
  v6 = [(PSTableCell *)&v11 initWithStyle:style reuseIdentifier:identifier specifier:specifier];
  v7 = v6;
  if (style == 1 && v6)
  {
    v8 = objc_opt_new();
    [(DBSDisplayTableViewCell *)v7 setLayoutManager:v8];

    imageView = [(DBSDisplayTableViewCell *)v7 imageView];
    [imageView setContentMode:1];
  }

  return v7;
}

@end