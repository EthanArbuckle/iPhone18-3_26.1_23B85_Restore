@interface UIDebuggingIvarTableViewCell
- (UIDebuggingIvarTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_prepareConstraints;
- (void)prepareForReuse;
- (void)setIvar:(id)ivar;
@end

@implementation UIDebuggingIvarTableViewCell

- (UIDebuggingIvarTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v15.receiver = self;
  v15.super_class = UIDebuggingIvarTableViewCell;
  v4 = [(UITableViewCell *)&v15 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_opt_new();
    v6 = objc_opt_new();
    v7 = objc_opt_new();
    v8 = [off_1E70ECC18 systemFontOfSize:12.0];
    [v5 setFont:v8];

    v9 = [off_1E70ECC18 fontWithName:@"Menlo" size:9.0];
    [v6 setFont:v9];

    v10 = [off_1E70ECC18 fontWithName:@"Menlo" size:12.0];
    [v7 setFont:v10];

    [v7 setTextAlignment:2];
    [v7 setNumberOfLines:2];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIDebuggingIvarTableViewCell *)v4 setNameLabel:v5];
    [(UIDebuggingIvarTableViewCell *)v4 setTypeLabel:v6];
    [(UIDebuggingIvarTableViewCell *)v4 setValueLabel:v7];
    contentView = [(UITableViewCell *)v4 contentView];
    [contentView addSubview:v5];

    contentView2 = [(UITableViewCell *)v4 contentView];
    [contentView2 addSubview:v6];

    contentView3 = [(UITableViewCell *)v4 contentView];
    [contentView3 addSubview:v7];

    [(UIDebuggingIvarTableViewCell *)v4 _prepareConstraints];
  }

  return v4;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = UIDebuggingIvarTableViewCell;
  [(UITableViewCell *)&v3 prepareForReuse];
  [(UITableViewCell *)self setAccessoryType:0];
}

- (void)_prepareConstraints
{
  array = [MEMORY[0x1E695DF70] array];
  contentView = [(UITableViewCell *)self contentView];
  layoutMarginsGuide = [contentView layoutMarginsGuide];

  nameLabel = [(UIDebuggingIvarTableViewCell *)self nameLabel];
  leadingAnchor = [nameLabel leadingAnchor];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v55 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];

  nameLabel2 = [(UIDebuggingIvarTableViewCell *)self nameLabel];
  trailingAnchor = [nameLabel2 trailingAnchor];
  valueLabel = [(UIDebuggingIvarTableViewCell *)self valueLabel];
  trailingAnchor2 = [valueLabel trailingAnchor];
  v54 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];

  nameLabel3 = [(UIDebuggingIvarTableViewCell *)self nameLabel];
  topAnchor = [nameLabel3 topAnchor];
  topAnchor2 = [layoutMarginsGuide topAnchor];
  v15 = [topAnchor constraintEqualToAnchor:topAnchor2];

  nameLabel4 = [(UIDebuggingIvarTableViewCell *)self nameLabel];
  bottomAnchor = [nameLabel4 bottomAnchor];
  typeLabel = [(UIDebuggingIvarTableViewCell *)self typeLabel];
  topAnchor3 = [typeLabel topAnchor];
  v53 = [bottomAnchor constraintEqualToAnchor:topAnchor3];

  typeLabel2 = [(UIDebuggingIvarTableViewCell *)self typeLabel];
  leadingAnchor3 = [typeLabel2 leadingAnchor];
  leadingAnchor4 = [layoutMarginsGuide leadingAnchor];
  v52 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];

  typeLabel3 = [(UIDebuggingIvarTableViewCell *)self typeLabel];
  trailingAnchor3 = [typeLabel3 trailingAnchor];
  valueLabel2 = [(UIDebuggingIvarTableViewCell *)self valueLabel];
  trailingAnchor4 = [valueLabel2 trailingAnchor];
  v51 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];

  typeLabel4 = [(UIDebuggingIvarTableViewCell *)self typeLabel];
  topAnchor4 = [typeLabel4 topAnchor];
  centerYAnchor = [layoutMarginsGuide centerYAnchor];
  v50 = [topAnchor4 constraintEqualToAnchor:centerYAnchor];

  typeLabel5 = [(UIDebuggingIvarTableViewCell *)self typeLabel];
  bottomAnchor2 = [typeLabel5 bottomAnchor];
  bottomAnchor3 = [layoutMarginsGuide bottomAnchor];
  v49 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];

  valueLabel3 = [(UIDebuggingIvarTableViewCell *)self valueLabel];
  leadingAnchor5 = [valueLabel3 leadingAnchor];
  centerXAnchor = [layoutMarginsGuide centerXAnchor];
  v48 = [leadingAnchor5 constraintEqualToAnchor:centerXAnchor];

  valueLabel4 = [(UIDebuggingIvarTableViewCell *)self valueLabel];
  trailingAnchor5 = [valueLabel4 trailingAnchor];
  trailingAnchor6 = [layoutMarginsGuide trailingAnchor];
  v47 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];

  valueLabel5 = [(UIDebuggingIvarTableViewCell *)self valueLabel];
  topAnchor5 = [valueLabel5 topAnchor];
  topAnchor6 = [layoutMarginsGuide topAnchor];
  v46 = [topAnchor5 constraintEqualToAnchor:topAnchor6];

  valueLabel6 = [(UIDebuggingIvarTableViewCell *)self valueLabel];
  bottomAnchor4 = [valueLabel6 bottomAnchor];
  bottomAnchor5 = [layoutMarginsGuide bottomAnchor];
  v45 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];

  [array addObject:v55];
  [array addObject:v54];
  [array addObject:v15];
  [array addObject:v53];
  [array addObject:v52];
  [array addObject:v51];
  [array addObject:v50];
  [array addObject:v49];
  [array addObject:v48];
  [array addObject:v47];
  [array addObject:v46];
  [array addObject:v45];
  [MEMORY[0x1E69977A0] activateConstraints:array];
}

- (void)setIvar:(id)ivar
{
  ivarCopy = ivar;
  objc_storeStrong(&self->_ivar, ivar);
  nameLabel = [(UIDebuggingIvarTableViewCell *)self nameLabel];
  name = [ivarCopy name];
  [nameLabel setText:name];

  typeLabel = [(UIDebuggingIvarTableViewCell *)self typeLabel];
  typeDescription = [ivarCopy typeDescription];
  [typeLabel setText:typeDescription];

  valueDescription = [ivarCopy valueDescription];
  if ([ivarCopy isObject])
  {
    value = [ivarCopy value];
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p\n%@", value, objc_opt_class()];

    valueDescription = v11;
  }

  valueLabel = [(UIDebuggingIvarTableViewCell *)self valueLabel];
  [valueLabel setText:valueDescription];
}

@end