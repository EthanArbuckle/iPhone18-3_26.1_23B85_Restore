@interface DBSDisplayTableViewCell
- (DBSDisplayTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
@end

@implementation DBSDisplayTableViewCell

- (DBSDisplayTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v11.receiver = self;
  v11.super_class = DBSDisplayTableViewCell;
  v6 = [(PSTableCell *)&v11 initWithStyle:a3 reuseIdentifier:a4 specifier:a5];
  v7 = v6;
  if (a3 == 1 && v6)
  {
    v8 = objc_opt_new();
    [(DBSDisplayTableViewCell *)v7 setLayoutManager:v8];

    v9 = [(DBSDisplayTableViewCell *)v7 imageView];
    [v9 setContentMode:1];
  }

  return v7;
}

@end