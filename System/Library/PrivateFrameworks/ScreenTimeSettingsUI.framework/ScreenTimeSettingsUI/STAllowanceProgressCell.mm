@interface STAllowanceProgressCell
- (STAllowanceProgressCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
@end

@implementation STAllowanceProgressCell

- (STAllowanceProgressCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v26.receiver = self;
  v26.super_class = STAllowanceProgressCell;
  v5 = [(STTableCell *)&v26 initWithStyle:style reuseIdentifier:identifier specifier:specifier];
  if (v5)
  {
    v6 = objc_opt_new();
    [v6 setContentMode:1];
    v7 = MEMORY[0x277D755B8];
    v8 = +[STScreenTimeSettingsUIBundle bundle];
    v9 = [v7 imageNamed:@"AllowanceProgressCell" inBundle:v8];
    [v6 setImage:v9];

    contentView = [(STAllowanceProgressCell *)v5 contentView];
    [contentView bounds];
    [v6 setFrame:?];

    [v6 setAutoresizingMask:18];
    contentView2 = [(STAllowanceProgressCell *)v5 contentView];
    [contentView2 addSubview:v6];

    image = [v6 image];
    [image size];
    v14 = v13;
    v16 = v15;

    heightAnchor = [v6 heightAnchor];
    widthAnchor = [v6 widthAnchor];
    v19 = [heightAnchor constraintEqualToAnchor:widthAnchor multiplier:v16 / v14];

    LODWORD(v20) = 1144750080;
    [v19 setPriority:v20];
    [v19 setActive:1];
    heightAnchor2 = [v6 heightAnchor];
    contentView3 = [(STAllowanceProgressCell *)v5 contentView];
    heightAnchor3 = [contentView3 heightAnchor];
    v24 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3];
    [v24 setActive:1];
  }

  return v5;
}

@end