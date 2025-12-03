@interface PSMultilineTableCell
+ (Class)alternativeCellClass;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)setIcon:(id)icon;
- (void)updateConfigurationUsingState:(id)state;
@end

@implementation PSMultilineTableCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v4.receiver = self;
  v4.super_class = PSMultilineTableCell;
  [(PSTableCell *)&v4 refreshCellContentsWithSpecifier:specifier];
  [(PSMultilineTableCell *)self setNeedsUpdateConfiguration];
}

- (void)updateConfigurationUsingState:(id)state
{
  stateCopy = state;
  if (![(PSTableCell *)self skipsPreferencesTableCellLayoutSubviews])
  {
    specifier = [(PSTableCell *)self specifier];
    v6 = [stateCopy copy];
    v7 = [specifier objectForKeyedSubscript:@"enabled"];

    if (v7)
    {
      v8 = [specifier objectForKeyedSubscript:@"enabled"];
      bOOLValue = [v8 BOOLValue];

      v10 = bOOLValue ^ 1u;
    }

    else
    {
      v10 = 0;
    }

    [v6 setDisabled:v10];
    valueCellConfiguration = [MEMORY[0x1E69DCC28] valueCellConfiguration];
    v12 = [valueCellConfiguration updatedConfigurationForState:v6];

    v13 = *MEMORY[0x1E69DE0A0];
    imageProperties = [v12 imageProperties];
    [imageProperties setReservedLayoutSize:{0.0, v13}];

    name = [specifier name];
    [v12 setText:name];

    value = [(PSTableCell *)self value];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      value2 = [(PSTableCell *)self value];
      [v12 setSecondaryText:value2];
    }

    else
    {
      [v12 setSecondaryText:0];
    }

    v19 = [specifier objectForKeyedSubscript:@"useLazyIcons"];

    if (!v19)
    {
      v20 = [specifier objectForKeyedSubscript:@"iconImage"];
      [(PSMultilineTableCell *)self setIconImage:v20];
    }

    iconImage = [(PSMultilineTableCell *)self iconImage];
    [v12 setImage:iconImage];

    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __54__PSMultilineTableCell_updateConfigurationUsingState___block_invoke;
    v33[3] = &unk_1E71DCB00;
    v34 = stateCopy;
    textProperties = [v12 textProperties];
    [textProperties setColorTransformer:v33];

    traitCollection = [(PSMultilineTableCell *)self traitCollection];
    layoutDirection = [traitCollection layoutDirection];

    [(PSMultilineTableCell *)self directionalLayoutMargins];
    v26 = v25;
    [(PSMultilineTableCell *)self safeAreaInsets];
    if (layoutDirection == 1)
    {
      v29 = v28;
    }

    else
    {
      v29 = v27;
    }

    v30 = v26 - v29;
    [v12 directionalLayoutMargins];
    if (v31 < v30)
    {
      [v12 directionalLayoutMargins];
      [v12 setDirectionalLayoutMargins:?];
    }

    identifier = [specifier identifier];
    [(PSMultilineTableCell *)self setAccessibilityIdentifier:identifier];

    [(PSMultilineTableCell *)self setContentConfiguration:v12];
  }
}

id __54__PSMultilineTableCell_updateConfigurationUsingState___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isSelected])
  {
    v1 = [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    v2 = +[PSListController appearance];
    v1 = [v2 textColor];
  }

  return v1;
}

- (void)setIcon:(id)icon
{
  [(PSMultilineTableCell *)self setIconImage:icon];

  [(PSMultilineTableCell *)self setNeedsUpdateConfiguration];
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