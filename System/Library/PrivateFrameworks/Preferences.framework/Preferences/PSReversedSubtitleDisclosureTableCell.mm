@interface PSReversedSubtitleDisclosureTableCell
+ (Class)alternativeCellClass;
- (void)_valueLabelForSpecifier:(id)specifier;
@end

@implementation PSReversedSubtitleDisclosureTableCell

- (void)_valueLabelForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  if (specifierCopy)
  {
    v21 = specifierCopy;
    value = [(PSTableCell *)self value];
    detailTextLabel = [(PSReversedSubtitleDisclosureTableCell *)self detailTextLabel];
    [detailTextLabel setText:value];

    valueLabel = [(PSSubtitleDisclosureTableCell *)self valueLabel];

    if (!valueLabel)
    {
      v8 = objc_alloc(MEMORY[0x1E69DCC10]);
      v9 = [v8 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      [(PSSubtitleDisclosureTableCell *)self setValueLabel:v9];

      v10 = objc_opt_new();
      detailTextLabel2 = [v10 detailTextLabel];
      font = [detailTextLabel2 font];
      valueLabel2 = [(PSSubtitleDisclosureTableCell *)self valueLabel];
      [valueLabel2 setFont:font];

      valueLabel3 = [(PSSubtitleDisclosureTableCell *)self valueLabel];
      [valueLabel3 setNumberOfLines:0];

      valueLabel4 = [(PSSubtitleDisclosureTableCell *)self valueLabel];
      [valueLabel4 setLineBreakMode:0];

      valueLabel5 = [(PSSubtitleDisclosureTableCell *)self valueLabel];
      [valueLabel5 setEnabled:0];

      contentView = [(PSReversedSubtitleDisclosureTableCell *)self contentView];
      valueLabel6 = [(PSSubtitleDisclosureTableCell *)self valueLabel];
      [contentView addSubview:valueLabel6];
    }

    v19 = [v21 propertyForKey:@"cellSubtitleText"];
    valueLabel7 = [(PSSubtitleDisclosureTableCell *)self valueLabel];
    [valueLabel7 setText:v19];

    specifierCopy = v21;
  }
}

+ (Class)alternativeCellClass
{
  if (objc_opt_class() == self)
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