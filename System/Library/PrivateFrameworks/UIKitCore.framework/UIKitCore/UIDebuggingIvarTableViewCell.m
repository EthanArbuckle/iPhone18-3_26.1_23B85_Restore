@interface UIDebuggingIvarTableViewCell
- (UIDebuggingIvarTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_prepareConstraints;
- (void)prepareForReuse;
- (void)setIvar:(id)a3;
@end

@implementation UIDebuggingIvarTableViewCell

- (UIDebuggingIvarTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v15.receiver = self;
  v15.super_class = UIDebuggingIvarTableViewCell;
  v4 = [(UITableViewCell *)&v15 initWithStyle:a3 reuseIdentifier:a4];
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
    v11 = [(UITableViewCell *)v4 contentView];
    [v11 addSubview:v5];

    v12 = [(UITableViewCell *)v4 contentView];
    [v12 addSubview:v6];

    v13 = [(UITableViewCell *)v4 contentView];
    [v13 addSubview:v7];

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
  v56 = [MEMORY[0x1E695DF70] array];
  v3 = [(UITableViewCell *)self contentView];
  v4 = [v3 layoutMarginsGuide];

  v5 = [(UIDebuggingIvarTableViewCell *)self nameLabel];
  v6 = [v5 leadingAnchor];
  v7 = [v4 leadingAnchor];
  v55 = [v6 constraintEqualToAnchor:v7];

  v8 = [(UIDebuggingIvarTableViewCell *)self nameLabel];
  v9 = [v8 trailingAnchor];
  v10 = [(UIDebuggingIvarTableViewCell *)self valueLabel];
  v11 = [v10 trailingAnchor];
  v54 = [v9 constraintEqualToAnchor:v11];

  v12 = [(UIDebuggingIvarTableViewCell *)self nameLabel];
  v13 = [v12 topAnchor];
  v14 = [v4 topAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  v16 = [(UIDebuggingIvarTableViewCell *)self nameLabel];
  v17 = [v16 bottomAnchor];
  v18 = [(UIDebuggingIvarTableViewCell *)self typeLabel];
  v19 = [v18 topAnchor];
  v53 = [v17 constraintEqualToAnchor:v19];

  v20 = [(UIDebuggingIvarTableViewCell *)self typeLabel];
  v21 = [v20 leadingAnchor];
  v22 = [v4 leadingAnchor];
  v52 = [v21 constraintEqualToAnchor:v22];

  v23 = [(UIDebuggingIvarTableViewCell *)self typeLabel];
  v24 = [v23 trailingAnchor];
  v25 = [(UIDebuggingIvarTableViewCell *)self valueLabel];
  v26 = [v25 trailingAnchor];
  v51 = [v24 constraintEqualToAnchor:v26];

  v27 = [(UIDebuggingIvarTableViewCell *)self typeLabel];
  v28 = [v27 topAnchor];
  v29 = [v4 centerYAnchor];
  v50 = [v28 constraintEqualToAnchor:v29];

  v30 = [(UIDebuggingIvarTableViewCell *)self typeLabel];
  v31 = [v30 bottomAnchor];
  v32 = [v4 bottomAnchor];
  v49 = [v31 constraintEqualToAnchor:v32];

  v33 = [(UIDebuggingIvarTableViewCell *)self valueLabel];
  v34 = [v33 leadingAnchor];
  v35 = [v4 centerXAnchor];
  v48 = [v34 constraintEqualToAnchor:v35];

  v36 = [(UIDebuggingIvarTableViewCell *)self valueLabel];
  v37 = [v36 trailingAnchor];
  v38 = [v4 trailingAnchor];
  v47 = [v37 constraintEqualToAnchor:v38];

  v39 = [(UIDebuggingIvarTableViewCell *)self valueLabel];
  v40 = [v39 topAnchor];
  v41 = [v4 topAnchor];
  v46 = [v40 constraintEqualToAnchor:v41];

  v42 = [(UIDebuggingIvarTableViewCell *)self valueLabel];
  v43 = [v42 bottomAnchor];
  v44 = [v4 bottomAnchor];
  v45 = [v43 constraintEqualToAnchor:v44];

  [v56 addObject:v55];
  [v56 addObject:v54];
  [v56 addObject:v15];
  [v56 addObject:v53];
  [v56 addObject:v52];
  [v56 addObject:v51];
  [v56 addObject:v50];
  [v56 addObject:v49];
  [v56 addObject:v48];
  [v56 addObject:v47];
  [v56 addObject:v46];
  [v56 addObject:v45];
  [MEMORY[0x1E69977A0] activateConstraints:v56];
}

- (void)setIvar:(id)a3
{
  v13 = a3;
  objc_storeStrong(&self->_ivar, a3);
  v5 = [(UIDebuggingIvarTableViewCell *)self nameLabel];
  v6 = [v13 name];
  [v5 setText:v6];

  v7 = [(UIDebuggingIvarTableViewCell *)self typeLabel];
  v8 = [v13 typeDescription];
  [v7 setText:v8];

  v9 = [v13 valueDescription];
  if ([v13 isObject])
  {
    v10 = [v13 value];
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p\n%@", v10, objc_opt_class()];

    v9 = v11;
  }

  v12 = [(UIDebuggingIvarTableViewCell *)self valueLabel];
  [v12 setText:v9];
}

@end