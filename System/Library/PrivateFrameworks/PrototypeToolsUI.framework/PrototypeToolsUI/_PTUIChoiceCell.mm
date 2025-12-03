@interface _PTUIChoiceCell
- (_PTUIChoiceCell)initWithReuseIdentifier:(id)identifier;
- (void)prepareForReuse;
- (void)setChecked:(BOOL)checked;
- (void)setTitle:(id)title;
@end

@implementation _PTUIChoiceCell

- (_PTUIChoiceCell)initWithReuseIdentifier:(id)identifier
{
  v4.receiver = self;
  v4.super_class = _PTUIChoiceCell;
  return [(_PTUIChoiceCell *)&v4 initWithStyle:1 reuseIdentifier:identifier];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = _PTUIChoiceCell;
  [(_PTUIChoiceCell *)&v3 prepareForReuse];
  [(_PTUIChoiceCell *)self setChecked:0];
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  textLabel = [(_PTUIChoiceCell *)self textLabel];
  [textLabel setText:titleCopy];
}

- (void)setChecked:(BOOL)checked
{
  if (checked)
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  [(_PTUIChoiceCell *)self setAccessoryType:v5];
  textLabel = [(_PTUIChoiceCell *)self textLabel];
  if (checked)
  {
    [(_PTUIChoiceCell *)self tintColor];
  }

  else
  {
    [MEMORY[0x277D75348] secondaryLabelColor];
  }
  v6 = ;
  [textLabel setTextColor:v6];
}

@end