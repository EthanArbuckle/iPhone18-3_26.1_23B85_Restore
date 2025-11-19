@interface PSReversedSubtitleDisclosureTableCell
+ (Class)alternativeCellClass;
- (void)_valueLabelForSpecifier:(id)a3;
@end

@implementation PSReversedSubtitleDisclosureTableCell

- (void)_valueLabelForSpecifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v21 = v4;
    v5 = [(PSTableCell *)self value];
    v6 = [(PSReversedSubtitleDisclosureTableCell *)self detailTextLabel];
    [v6 setText:v5];

    v7 = [(PSSubtitleDisclosureTableCell *)self valueLabel];

    if (!v7)
    {
      v8 = objc_alloc(MEMORY[0x1E69DCC10]);
      v9 = [v8 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      [(PSSubtitleDisclosureTableCell *)self setValueLabel:v9];

      v10 = objc_opt_new();
      v11 = [v10 detailTextLabel];
      v12 = [v11 font];
      v13 = [(PSSubtitleDisclosureTableCell *)self valueLabel];
      [v13 setFont:v12];

      v14 = [(PSSubtitleDisclosureTableCell *)self valueLabel];
      [v14 setNumberOfLines:0];

      v15 = [(PSSubtitleDisclosureTableCell *)self valueLabel];
      [v15 setLineBreakMode:0];

      v16 = [(PSSubtitleDisclosureTableCell *)self valueLabel];
      [v16 setEnabled:0];

      v17 = [(PSReversedSubtitleDisclosureTableCell *)self contentView];
      v18 = [(PSSubtitleDisclosureTableCell *)self valueLabel];
      [v17 addSubview:v18];
    }

    v19 = [v21 propertyForKey:@"cellSubtitleText"];
    v20 = [(PSSubtitleDisclosureTableCell *)self valueLabel];
    [v20 setText:v19];

    v4 = v21;
  }
}

+ (Class)alternativeCellClass
{
  if (objc_opt_class() == a1)
  {
    v2 = objc_opt_class();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end