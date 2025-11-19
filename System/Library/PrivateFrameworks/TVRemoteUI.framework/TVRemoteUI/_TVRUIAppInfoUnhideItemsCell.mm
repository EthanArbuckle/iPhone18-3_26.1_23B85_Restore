@interface _TVRUIAppInfoUnhideItemsCell
- (_TVRUIAppInfoUnhideItemsCell)initWithFrame:(CGRect)a3;
- (void)_configureHierarchy;
@end

@implementation _TVRUIAppInfoUnhideItemsCell

- (_TVRUIAppInfoUnhideItemsCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = _TVRUIAppInfoUnhideItemsCell;
  v3 = [(_TVRUIAppInfoUnhideItemsCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(_TVRUIAppInfoUnhideItemsCell *)v3 _configureHierarchy];
  }

  return v4;
}

- (void)_configureHierarchy
{
  v26[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [v3 setFont:v4];

  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"TVRUIUnhideApps" value:&stru_287E6AEF8 table:@"Localizable"];
  [v3 setText:v6];

  [v3 setTextAlignment:1];
  v7 = [(_TVRUIAppInfoUnhideItemsCell *)self contentView];
  [v7 addSubview:v3];
  v20 = MEMORY[0x277CCAAD0];
  v25 = [v3 leadingAnchor];
  v24 = [v7 leadingAnchor];
  v23 = [v25 constraintEqualToAnchor:v24];
  v26[0] = v23;
  v22 = [v3 trailingAnchor];
  v21 = [v7 trailingAnchor];
  v8 = [v22 constraintEqualToAnchor:v21];
  v26[1] = v8;
  v9 = [v3 topAnchor];
  v10 = [v7 topAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  v26[2] = v11;
  v12 = [v3 bottomAnchor];
  v13 = [v7 bottomAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  v26[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:4];
  [v20 activateConstraints:v15];

  [v7 _setContinuousCornerRadius:12.0];
  v16 = [MEMORY[0x277D75348] colorWithWhite:0.3 alpha:1.0];
  v17 = [v16 CGColor];
  v18 = [v7 layer];
  [v18 setBorderColor:v17];

  v19 = [v7 layer];
  [v19 setBorderWidth:1.0];
}

@end