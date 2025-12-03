@interface PTUIChoiceRowTableViewCell
- (PTUIChoiceRowTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)updateDisplayedValue;
@end

@implementation PTUIChoiceRowTableViewCell

- (PTUIChoiceRowTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = PTUIChoiceRowTableViewCell;
  v4 = [(PTUIChoiceRowTableViewCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
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
  value = [v12 value];
  v4 = [v12 indexPathForValue:value];

  v5 = [v4 row];
  section = [v4 section];
  v7 = [v12 shortTitleForRow:v5 inSection:section];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [v12 titleForRow:v5 inSection:section];
  }

  v10 = v9;

  detailTextLabel = [(PTUIChoiceRowTableViewCell *)self detailTextLabel];
  [detailTextLabel setText:v10];
}

@end