@interface _PTUIChoiceCell
- (_PTUIChoiceCell)initWithReuseIdentifier:(id)a3;
- (void)prepareForReuse;
- (void)setChecked:(BOOL)a3;
- (void)setTitle:(id)a3;
@end

@implementation _PTUIChoiceCell

- (_PTUIChoiceCell)initWithReuseIdentifier:(id)a3
{
  v4.receiver = self;
  v4.super_class = _PTUIChoiceCell;
  return [(_PTUIChoiceCell *)&v4 initWithStyle:1 reuseIdentifier:a3];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = _PTUIChoiceCell;
  [(_PTUIChoiceCell *)&v3 prepareForReuse];
  [(_PTUIChoiceCell *)self setChecked:0];
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v5 = [(_PTUIChoiceCell *)self textLabel];
  [v5 setText:v4];
}

- (void)setChecked:(BOOL)a3
{
  if (a3)
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  [(_PTUIChoiceCell *)self setAccessoryType:v5];
  v7 = [(_PTUIChoiceCell *)self textLabel];
  if (a3)
  {
    [(_PTUIChoiceCell *)self tintColor];
  }

  else
  {
    [MEMORY[0x277D75348] secondaryLabelColor];
  }
  v6 = ;
  [v7 setTextColor:v6];
}

@end