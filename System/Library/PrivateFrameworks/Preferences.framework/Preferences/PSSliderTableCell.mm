@interface PSSliderTableCell
+ (Class)alternativeCellClass;
- (BOOL)canReload;
- (PSSliderTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)controlValue;
- (id)newControl;
- (void)_configureLayout;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)setValue:(id)value;
@end

@implementation PSSliderTableCell

- (PSSliderTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = PSSliderTableCell;
  v4 = [(PSControlTableCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
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
  control = [(PSControlTableCell *)self control];
  if (objc_opt_isKindOfClass())
  {
    v3 = control;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  if (v4)
  {
    v5 = v4;
    skipsPreferencesTableCellLayoutSubviews = [(PSTableCell *)self skipsPreferencesTableCellLayoutSubviews];

    if (!skipsPreferencesTableCellLayoutSubviews)
    {
      control2 = [(PSControlTableCell *)self control];
      [control2 setTranslatesAutoresizingMaskIntoConstraints:0];

      v21 = MEMORY[0x1E696ACD8];
      control3 = [(PSControlTableCell *)self control];
      leadingAnchor = [control3 leadingAnchor];
      contentView = [(PSSliderTableCell *)self contentView];
      layoutMarginsGuide = [contentView layoutMarginsGuide];
      leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
      v26 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v33[0] = v26;
      contentView2 = [(PSSliderTableCell *)self contentView];
      layoutMarginsGuide2 = [contentView2 layoutMarginsGuide];
      trailingAnchor = [layoutMarginsGuide2 trailingAnchor];
      control4 = [(PSControlTableCell *)self control];
      trailingAnchor2 = [control4 trailingAnchor];
      v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v33[1] = v19;
      control5 = [(PSControlTableCell *)self control];
      topAnchor = [control5 topAnchor];
      contentView3 = [(PSSliderTableCell *)self contentView];
      topAnchor2 = [contentView3 topAnchor];
      v11 = [topAnchor constraintLessThanOrEqualToSystemSpacingBelowAnchor:topAnchor2 multiplier:1.0];
      v33[2] = v11;
      contentView4 = [(PSSliderTableCell *)self contentView];
      bottomAnchor = [contentView4 bottomAnchor];
      control6 = [(PSControlTableCell *)self control];
      bottomAnchor2 = [control6 bottomAnchor];
      v16 = [bottomAnchor constraintLessThanOrEqualToSystemSpacingBelowAnchor:bottomAnchor2 multiplier:1.0];
      v33[3] = v16;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:4];
      [v21 activateConstraints:v17];
    }
  }

  else
  {
  }
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  control = [(PSControlTableCell *)self control];
  name = [specifierCopy name];
  selfCopy = self;
  [(PSTableCell *)self setTitle:name];

  v7 = [specifierCopy propertyForKey:@"defaults"];
  lastPathComponent = [v7 lastPathComponent];

  if (([lastPathComponent hasPrefix:@"com.apple"] & 1) == 0 && objc_msgSend(lastPathComponent, "length") || (objc_msgSend(specifierCopy, "propertyForKey:", @"isContinuous"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "BOOLValue"), v9, (v10 & 1) == 0))
  {
    [control setContinuous:0];
  }

  v38 = lastPathComponent;
  v11 = [specifierCopy propertyForKey:@"min"];
  v12 = [specifierCopy propertyForKey:@"max"];
  if (v11)
  {
    [v11 floatValue];
    [control setMinimumValue:?];
  }

  v37 = v11;
  if (v12)
  {
    [v12 floatValue];
    [control setMaximumValue:?];
  }

  v13 = [specifierCopy propertyForKey:{@"isSegmented", v12}];
  bOOLValue = [v13 BOOLValue];

  [control setSegmented:bOOLValue];
  v15 = [specifierCopy propertyForKey:@"locksToSegment"];
  v16 = v15;
  if (v15)
  {
    [control setLocksToSegment:{objc_msgSend(v15, "BOOLValue")}];
  }

  v17 = [specifierCopy propertyForKey:@"snapsToSegment"];
  v18 = v17;
  if (v17)
  {
    [control setSnapsToSegment:{objc_msgSend(v17, "BOOLValue")}];
  }

  v19 = [specifierCopy propertyForKey:@"segmentCount"];
  [control setSegmentCount:{objc_msgSend(v19, "unsignedIntegerValue")}];
  v20 = [specifierCopy propertyForKey:@"rightImage"];
  if (v20)
  {
    image = v20;
  }

  else
  {
    v32 = [specifierCopy propertyForKey:@"rightImagePromise"];
    if (!v32)
    {
      goto LABEL_18;
    }

    v33 = v32;
    image = [v32 image];
    [specifierCopy setProperty:image forKey:@"rightImage"];
    [specifierCopy removePropertyForKey:@"rightImagePromise"];

    if (!image)
    {
      goto LABEL_18;
    }
  }

  v22 = [specifierCopy propertyForKey:@"iconImageShouldFlipForRightToLeft"];
  bOOLValue2 = [v22 BOOLValue];

  if (bOOLValue2)
  {
    imageFlippedForRightToLeftLayoutDirection = [image imageFlippedForRightToLeftLayoutDirection];

    image = imageFlippedForRightToLeftLayoutDirection;
  }

  [control setMaximumValueImage:image];

LABEL_18:
  v25 = [specifierCopy propertyForKey:@"leftImage"];
  if (v25)
  {
    image2 = v25;
  }

  else
  {
    v34 = [specifierCopy propertyForKey:@"leftImagePromise"];
    if (!v34)
    {
      goto LABEL_23;
    }

    v35 = v34;
    image2 = [v34 image];
    [specifierCopy setProperty:image2 forKey:@"leftImage"];
    [specifierCopy removePropertyForKey:@"leftImagePromise"];

    if (!image2)
    {
      goto LABEL_23;
    }
  }

  v27 = [specifierCopy propertyForKey:@"iconImageShouldFlipForRightToLeft"];
  bOOLValue3 = [v27 BOOLValue];

  if (bOOLValue3)
  {
    imageFlippedForRightToLeftLayoutDirection2 = [image2 imageFlippedForRightToLeftLayoutDirection];

    image2 = imageFlippedForRightToLeftLayoutDirection2;
  }

  [control setMinimumValueImage:image2];

LABEL_23:
  v30 = [specifierCopy propertyForKey:@"showValue"];
  v31 = v30;
  if (v30)
  {
    [control setShowValue:{objc_msgSend(v30, "BOOLValue")}];
  }

  v40.receiver = selfCopy;
  v40.super_class = PSSliderTableCell;
  [(PSControlTableCell *)&v40 refreshCellContentsWithSpecifier:specifierCopy];
}

- (void)prepareForReuse
{
  control = [(PSControlTableCell *)self control];
  if ([(PSTableCell *)self type]== 5)
  {
    [control setContinuous:1];
    [control setMinimumValue:0.0];
    LODWORD(v4) = 1.0;
    [control setMaximumValue:v4];
    [control setMaximumValueImage:0];
    [control setMinimumValueImage:0];
    [control setShowValue:0];
    [control setSegmented:0];
    [control setSegmentCount:0];
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

- (void)setValue:(id)value
{
  valueCopy = value;
  if (self->super.super._value != valueCopy)
  {
    v7 = valueCopy;
    objc_storeStrong(&self->super.super._value, value);
    control = self->super._control;
    [v7 floatValue];
    [(UIControl *)control setValue:?];
    valueCopy = v7;
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