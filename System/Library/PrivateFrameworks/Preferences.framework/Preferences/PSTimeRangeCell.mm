@interface PSTimeRangeCell
+ (Class)alternativeCellClass;
- (PSTimeRangeCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (id)accessibilityConstraintsWithVariableBindings:(id)bindings metrics:(id)metrics;
- (id)regularConstraintsWithVariableBindings:(id)bindings metrics:(id)metrics;
- (void)layoutSubviews;
- (void)updateConstraints;
@end

@implementation PSTimeRangeCell

- (PSTimeRangeCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  specifierCopy = specifier;
  v28.receiver = self;
  v28.super_class = PSTimeRangeCell;
  v9 = [(PSTableCell *)&v28 initWithStyle:style reuseIdentifier:identifier];
  v10 = v9;
  if (v9 && ![(PSTableCell *)v9 skipsPreferencesTableCellLayoutSubviews])
  {
    target = [specifierCopy target];
    v12 = [target conformsToProtocol:&unk_1EFEC6670];

    if (v12)
    {
      target2 = [specifierCopy target];
      objc_storeWeak(&v10->_delegate, target2);
    }

    titleLabel = [(PSTableCell *)v10 titleLabel];
    font = [titleLabel font];

    v16 = CreateRangeTitleLabel();
    fromTitle = v10->_fromTitle;
    v10->_fromTitle = v16;

    v18 = PS_LocalizedString(@"FROM");
    [(UILabel *)v10->_fromTitle setText:v18];

    [(UILabel *)v10->_fromTitle setFont:font];
    v19 = CreateRangeTitleLabel();
    toTitle = v10->_toTitle;
    v10->_toTitle = v19;

    v21 = PS_LocalizedString(@"TO");
    [(UILabel *)v10->_toTitle setText:v21];

    [(UILabel *)v10->_toTitle setFont:font];
    v22 = CreateRangeTimeLabel();
    fromTime = v10->_fromTime;
    v10->_fromTime = v22;

    [(UILabel *)v10->_fromTime setFont:font];
    v24 = CreateRangeTimeLabel();
    toTime = v10->_toTime;
    v10->_toTime = v24;

    [(UILabel *)v10->_toTime setFont:font];
    contentView = [(PSTimeRangeCell *)v10 contentView];
    [contentView addSubview:v10->_fromTitle];
    [contentView addSubview:v10->_toTitle];
    [contentView addSubview:v10->_fromTime];
    [contentView addSubview:v10->_toTime];
    [(PSTimeRangeCell *)v10 layoutSubviews];
  }

  return v10;
}

- (void)layoutSubviews
{
  if ([(PSTableCell *)self skipsPreferencesTableCellLayoutSubviews])
  {
    v8.receiver = self;
    v8.super_class = PSTimeRangeCell;
    [(PSTableCell *)&v8 layoutSubviews];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v4 = [WeakRetained fromDetailForCell:self];

    v5 = objc_loadWeakRetained(&self->_delegate);
    v6 = [v5 toDetailForCell:self];

    [(UILabel *)self->_fromTime setText:v4];
    [(UILabel *)self->_toTime setText:v6];
    v7.receiver = self;
    v7.super_class = PSTimeRangeCell;
    [(PSTableCell *)&v7 layoutSubviews];
    [(PSTimeRangeCell *)self setNeedsUpdateConstraints];
  }
}

- (void)updateConstraints
{
  if ([(PSTableCell *)self skipsPreferencesTableCellLayoutSubviews])
  {
    v19.receiver = self;
    v19.super_class = PSTimeRangeCell;
    [(PSTimeRangeCell *)&v19 updateConstraints];
  }

  else
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:self->_constraints];
    _shouldReverseLayoutDirection = [(PSTimeRangeCell *)self _shouldReverseLayoutDirection];
    textLabel = [(PSTimeRangeCell *)self textLabel];
    [textLabel frame];
    v6 = v5;

    v7 = MEMORY[0x1E696AD98];
    if (_shouldReverseLayoutDirection)
    {
      contentView = [(PSTimeRangeCell *)self contentView];
      [contentView bounds];
      v10 = [v7 numberWithDouble:v9 - v6];
    }

    else
    {
      v10 = [MEMORY[0x1E696AD98] numberWithDouble:v6];
    }

    v11 = _NSDictionaryOfVariableBindings(&cfstr_FromtitleTotit.isa, self->_fromTitle, self->_toTitle, self->_fromTime, self->_toTime, 0);
    v12 = _NSDictionaryOfVariableBindings(&cfstr_Margin.isa, v10, 0);
    traitCollection = [(PSTimeRangeCell *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

    if (IsAccessibilityCategory)
    {
      [(PSTimeRangeCell *)self accessibilityConstraintsWithVariableBindings:v11 metrics:v12];
    }

    else
    {
      [(PSTimeRangeCell *)self regularConstraintsWithVariableBindings:v11 metrics:v12];
    }
    v16 = ;
    constraints = self->_constraints;
    self->_constraints = v16;

    [MEMORY[0x1E696ACD8] activateConstraints:self->_constraints];
    v18.receiver = self;
    v18.super_class = PSTimeRangeCell;
    [(PSTimeRangeCell *)&v18 updateConstraints];
  }
}

- (id)regularConstraintsWithVariableBindings:(id)bindings metrics:(id)metrics
{
  v5 = MEMORY[0x1E696ACD8];
  metricsCopy = metrics;
  bindingsCopy = bindings;
  v8 = [v5 constraintsWithVisualFormat:@"H:|-margin-[_fromTitle]-(>=2.0)-[_fromTime]-|" options:0 metrics:metricsCopy views:bindingsCopy];
  v9 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|-margin-[_toTitle]-(>=2.0)-[_toTime]-|" options:0 metrics:metricsCopy views:bindingsCopy];
  v10 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|-[_fromTitle]-(>=2.0)-[_toTitle]-|" options:0 metrics:metricsCopy views:bindingsCopy];
  v11 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|-[_fromTime]-(>=2.0)-[_toTime]-|" options:0 metrics:metricsCopy views:bindingsCopy];

  v12 = [v8 arrayByAddingObjectsFromArray:v9];
  v13 = [v12 arrayByAddingObjectsFromArray:v10];
  v14 = [v13 arrayByAddingObjectsFromArray:v11];

  return v14;
}

- (id)accessibilityConstraintsWithVariableBindings:(id)bindings metrics:(id)metrics
{
  v5 = MEMORY[0x1E696ACD8];
  metricsCopy = metrics;
  bindingsCopy = bindings;
  v8 = [v5 constraintsWithVisualFormat:@"H:|-margin-[_fromTitle]-|" options:0 metrics:metricsCopy views:bindingsCopy];
  v9 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|-margin-[_fromTime]-|" options:0 metrics:metricsCopy views:bindingsCopy];
  v10 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|-margin-[_toTitle]-|" options:0 metrics:metricsCopy views:bindingsCopy];
  v11 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|-margin-[_toTime]-|" options:0 metrics:metricsCopy views:bindingsCopy];
  v12 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|-[_fromTitle]-[_fromTime]-[_toTitle]-[_toTime]-|" options:0 metrics:metricsCopy views:bindingsCopy];

  v13 = [v8 arrayByAddingObjectsFromArray:v9];
  v14 = [v13 arrayByAddingObjectsFromArray:v10];
  v15 = [v14 arrayByAddingObjectsFromArray:v11];
  v16 = [v15 arrayByAddingObjectsFromArray:v12];

  return v16;
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