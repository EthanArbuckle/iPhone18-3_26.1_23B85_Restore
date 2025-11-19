@interface PTUIChoiceRowTableViewCell
- (PTUIChoiceRowTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)updateDisplayedValue;
@end

@implementation PTUIChoiceRowTableViewCell

- (PTUIChoiceRowTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = PTUIChoiceRowTableViewCell;
  v4 = [(PTUIChoiceRowTableViewCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(PTUIChoiceRowTableViewCell *)v4 setAccessoryType:1];
  }

  return v5;
}

- (void)updateDisplayedValue
{
  v12 = [(PTUIRowTableViewCell *)self row];
  v3 = [v12 value];
  v4 = [v12 indexPathForValue:v3];

  v5 = [v4 row];
  v6 = [v4 section];
  v7 = [v12 shortTitleForRow:v5 inSection:v6];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [v12 titleForRow:v5 inSection:v6];
  }

  v10 = v9;

  v11 = [(PTUIChoiceRowTableViewCell *)self detailTextLabel];
  [v11 setText:v10];
}

@end