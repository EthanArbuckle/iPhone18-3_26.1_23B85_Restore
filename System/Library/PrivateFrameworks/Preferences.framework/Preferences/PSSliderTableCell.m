@interface PSSliderTableCell
+ (Class)alternativeCellClass;
- (BOOL)canReload;
- (PSSliderTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)controlValue;
- (id)newControl;
- (void)_configureLayout;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)setValue:(id)a3;
@end

@implementation PSSliderTableCell

- (PSSliderTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = PSSliderTableCell;
  v4 = [(PSControlTableCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(PSTableCell *)v4 setShouldHideTitle:1];
    [(PSSliderTableCell *)v5 _configureLayout];
  }

  return v5;
}

- (void)_configureLayout
{
  v33[4] = *MEMORY[0x1E69E9840];
  objc_opt_class();
  v31 = [(PSControlTableCell *)self control];
  if (objc_opt_isKindOfClass())
  {
    v3 = v31;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  if (v4)
  {
    v5 = v4;
    v6 = [(PSTableCell *)self skipsPreferencesTableCellLayoutSubviews];

    if (!v6)
    {
      v7 = [(PSControlTableCell *)self control];
      [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

      v21 = MEMORY[0x1E696ACD8];
      v32 = [(PSControlTableCell *)self control];
      v29 = [v32 leadingAnchor];
      v30 = [(PSSliderTableCell *)self contentView];
      v28 = [v30 layoutMarginsGuide];
      v27 = [v28 leadingAnchor];
      v26 = [v29 constraintEqualToAnchor:v27];
      v33[0] = v26;
      v25 = [(PSSliderTableCell *)self contentView];
      v24 = [v25 layoutMarginsGuide];
      v22 = [v24 trailingAnchor];
      v23 = [(PSControlTableCell *)self control];
      v20 = [v23 trailingAnchor];
      v19 = [v22 constraintEqualToAnchor:v20];
      v33[1] = v19;
      v18 = [(PSControlTableCell *)self control];
      v8 = [v18 topAnchor];
      v9 = [(PSSliderTableCell *)self contentView];
      v10 = [v9 topAnchor];
      v11 = [v8 constraintLessThanOrEqualToSystemSpacingBelowAnchor:v10 multiplier:1.0];
      v33[2] = v11;
      v12 = [(PSSliderTableCell *)self contentView];
      v13 = [v12 bottomAnchor];
      v14 = [(PSControlTableCell *)self control];
      v15 = [v14 bottomAnchor];
      v16 = [v13 constraintLessThanOrEqualToSystemSpacingBelowAnchor:v15 multiplier:1.0];
      v33[3] = v16;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:4];
      [v21 activateConstraints:v17];
    }
  }

  else
  {
  }
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4 = a3;
  v5 = [(PSControlTableCell *)self control];
  v6 = [v4 name];
  v39 = self;
  [(PSTableCell *)self setTitle:v6];

  v7 = [v4 propertyForKey:@"defaults"];
  v8 = [v7 lastPathComponent];

  if (([v8 hasPrefix:@"com.apple"] & 1) == 0 && objc_msgSend(v8, "length") || (objc_msgSend(v4, "propertyForKey:", @"isContinuous"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "BOOLValue"), v9, (v10 & 1) == 0))
  {
    [v5 setContinuous:0];
  }

  v38 = v8;
  v11 = [v4 propertyForKey:@"min"];
  v12 = [v4 propertyForKey:@"max"];
  if (v11)
  {
    [v11 floatValue];
    [v5 setMinimumValue:?];
  }

  v37 = v11;
  if (v12)
  {
    [v12 floatValue];
    [v5 setMaximumValue:?];
  }

  v13 = [v4 propertyForKey:{@"isSegmented", v12}];
  v14 = [v13 BOOLValue];

  [v5 setSegmented:v14];
  v15 = [v4 propertyForKey:@"locksToSegment"];
  v16 = v15;
  if (v15)
  {
    [v5 setLocksToSegment:{objc_msgSend(v15, "BOOLValue")}];
  }

  v17 = [v4 propertyForKey:@"snapsToSegment"];
  v18 = v17;
  if (v17)
  {
    [v5 setSnapsToSegment:{objc_msgSend(v17, "BOOLValue")}];
  }

  v19 = [v4 propertyForKey:@"segmentCount"];
  [v5 setSegmentCount:{objc_msgSend(v19, "unsignedIntegerValue")}];
  v20 = [v4 propertyForKey:@"rightImage"];
  if (v20)
  {
    v21 = v20;
  }

  else
  {
    v32 = [v4 propertyForKey:@"rightImagePromise"];
    if (!v32)
    {
      goto LABEL_18;
    }

    v33 = v32;
    v21 = [v32 image];
    [v4 setProperty:v21 forKey:@"rightImage"];
    [v4 removePropertyForKey:@"rightImagePromise"];

    if (!v21)
    {
      goto LABEL_18;
    }
  }

  v22 = [v4 propertyForKey:@"iconImageShouldFlipForRightToLeft"];
  v23 = [v22 BOOLValue];

  if (v23)
  {
    v24 = [v21 imageFlippedForRightToLeftLayoutDirection];

    v21 = v24;
  }

  [v5 setMaximumValueImage:v21];

LABEL_18:
  v25 = [v4 propertyForKey:@"leftImage"];
  if (v25)
  {
    v26 = v25;
  }

  else
  {
    v34 = [v4 propertyForKey:@"leftImagePromise"];
    if (!v34)
    {
      goto LABEL_23;
    }

    v35 = v34;
    v26 = [v34 image];
    [v4 setProperty:v26 forKey:@"leftImage"];
    [v4 removePropertyForKey:@"leftImagePromise"];

    if (!v26)
    {
      goto LABEL_23;
    }
  }

  v27 = [v4 propertyForKey:@"iconImageShouldFlipForRightToLeft"];
  v28 = [v27 BOOLValue];

  if (v28)
  {
    v29 = [v26 imageFlippedForRightToLeftLayoutDirection];

    v26 = v29;
  }

  [v5 setMinimumValueImage:v26];

LABEL_23:
  v30 = [v4 propertyForKey:@"showValue"];
  v31 = v30;
  if (v30)
  {
    [v5 setShowValue:{objc_msgSend(v30, "BOOLValue")}];
  }

  v40.receiver = v39;
  v40.super_class = PSSliderTableCell;
  [(PSControlTableCell *)&v40 refreshCellContentsWithSpecifier:v4];
}

- (void)prepareForReuse
{
  v3 = [(PSControlTableCell *)self control];
  if ([(PSTableCell *)self type]== 5)
  {
    [v3 setContinuous:1];
    [v3 setMinimumValue:0.0];
    LODWORD(v4) = 1.0;
    [v3 setMaximumValue:v4];
    [v3 setMaximumValueImage:0];
    [v3 setMinimumValueImage:0];
    [v3 setShowValue:0];
    [v3 setSegmented:0];
    [v3 setSegmentCount:0];
  }

  v5.receiver = self;
  v5.super_class = PSSliderTableCell;
  [(PSTableCell *)&v5 prepareForReuse];
}

- (id)newControl
{
  v2 = [PSSegmentableSlider alloc];
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);

  return [(PSSegmentableSlider *)v2 initWithFrame:v3, v4, v5, v6];
}

- (BOOL)canReload
{
  v3 = [(PSSliderTableCell *)self isMemberOfClass:objc_opt_class()];
  if (v3)
  {
    LOBYTE(v3) = [(PSSliderTableCell *)self tag]== 5;
  }

  return v3;
}

- (id)controlValue
{
  v2 = MEMORY[0x1E696AD98];
  [(UIControl *)self->super._control value];

  return [v2 numberWithFloat:?];
}

- (void)setValue:(id)a3
{
  v5 = a3;
  if (self->super.super._value != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->super.super._value, a3);
    control = self->super._control;
    [v7 floatValue];
    [(UIControl *)control setValue:?];
    v5 = v7;
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