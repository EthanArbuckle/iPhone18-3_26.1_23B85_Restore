@interface PSMultilineTableCell
+ (Class)alternativeCellClass;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)setIcon:(id)a3;
- (void)updateConfigurationUsingState:(id)a3;
@end

@implementation PSMultilineTableCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4.receiver = self;
  v4.super_class = PSMultilineTableCell;
  [(PSTableCell *)&v4 refreshCellContentsWithSpecifier:a3];
  [(PSMultilineTableCell *)self setNeedsUpdateConfiguration];
}

- (void)updateConfigurationUsingState:(id)a3
{
  v4 = a3;
  if (![(PSTableCell *)self skipsPreferencesTableCellLayoutSubviews])
  {
    v5 = [(PSTableCell *)self specifier];
    v6 = [v4 copy];
    v7 = [v5 objectForKeyedSubscript:@"enabled"];

    if (v7)
    {
      v8 = [v5 objectForKeyedSubscript:@"enabled"];
      v9 = [v8 BOOLValue];

      v10 = v9 ^ 1u;
    }

    else
    {
      v10 = 0;
    }

    [v6 setDisabled:v10];
    v11 = [MEMORY[0x1E69DCC28] valueCellConfiguration];
    v12 = [v11 updatedConfigurationForState:v6];

    v13 = *MEMORY[0x1E69DE0A0];
    v14 = [v12 imageProperties];
    [v14 setReservedLayoutSize:{0.0, v13}];

    v15 = [v5 name];
    [v12 setText:v15];

    v16 = [(PSTableCell *)self value];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v18 = [(PSTableCell *)self value];
      [v12 setSecondaryText:v18];
    }

    else
    {
      [v12 setSecondaryText:0];
    }

    v19 = [v5 objectForKeyedSubscript:@"useLazyIcons"];

    if (!v19)
    {
      v20 = [v5 objectForKeyedSubscript:@"iconImage"];
      [(PSMultilineTableCell *)self setIconImage:v20];
    }

    v21 = [(PSMultilineTableCell *)self iconImage];
    [v12 setImage:v21];

    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __54__PSMultilineTableCell_updateConfigurationUsingState___block_invoke;
    v33[3] = &unk_1E71DCB00;
    v34 = v4;
    v22 = [v12 textProperties];
    [v22 setColorTransformer:v33];

    v23 = [(PSMultilineTableCell *)self traitCollection];
    v24 = [v23 layoutDirection];

    [(PSMultilineTableCell *)self directionalLayoutMargins];
    v26 = v25;
    [(PSMultilineTableCell *)self safeAreaInsets];
    if (v24 == 1)
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

    v32 = [v5 identifier];
    [(PSMultilineTableCell *)self setAccessibilityIdentifier:v32];

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

- (void)setIcon:(id)a3
{
  [(PSMultilineTableCell *)self setIconImage:a3];

  [(PSMultilineTableCell *)self setNeedsUpdateConfiguration];
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