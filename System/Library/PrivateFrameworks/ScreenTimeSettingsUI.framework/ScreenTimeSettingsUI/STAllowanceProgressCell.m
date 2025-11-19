@interface STAllowanceProgressCell
- (STAllowanceProgressCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
@end

@implementation STAllowanceProgressCell

- (STAllowanceProgressCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v26.receiver = self;
  v26.super_class = STAllowanceProgressCell;
  v5 = [(STTableCell *)&v26 initWithStyle:a3 reuseIdentifier:a4 specifier:a5];
  if (v5)
  {
    v6 = objc_opt_new();
    [v6 setContentMode:1];
    v7 = MEMORY[0x277D755B8];
    v8 = +[STScreenTimeSettingsUIBundle bundle];
    v9 = [v7 imageNamed:@"AllowanceProgressCell" inBundle:v8];
    [v6 setImage:v9];

    v10 = [(STAllowanceProgressCell *)v5 contentView];
    [v10 bounds];
    [v6 setFrame:?];

    [v6 setAutoresizingMask:18];
    v11 = [(STAllowanceProgressCell *)v5 contentView];
    [v11 addSubview:v6];

    v12 = [v6 image];
    [v12 size];
    v14 = v13;
    v16 = v15;

    v17 = [v6 heightAnchor];
    v18 = [v6 widthAnchor];
    v19 = [v17 constraintEqualToAnchor:v18 multiplier:v16 / v14];

    LODWORD(v20) = 1144750080;
    [v19 setPriority:v20];
    [v19 setActive:1];
    v21 = [v6 heightAnchor];
    v22 = [(STAllowanceProgressCell *)v5 contentView];
    v23 = [v22 heightAnchor];
    v24 = [v21 constraintEqualToAnchor:v23];
    [v24 setActive:1];
  }

  return v5;
}

@end