@interface _TVRUIShortcutInternalHeaderView
- (_TVRUIShortcutInternalHeaderView)initWithFrame:(CGRect)a3;
- (void)_configureHierarchy;
@end

@implementation _TVRUIShortcutInternalHeaderView

- (_TVRUIShortcutInternalHeaderView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = _TVRUIShortcutInternalHeaderView;
  v3 = [(_TVRUIShortcutInternalHeaderView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(_TVRUIShortcutInternalHeaderView *)v3 _configureHierarchy];
  }

  return v4;
}

- (void)_configureHierarchy
{
  v21[4] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D756B8];
  v3 = self;
  v4 = objc_alloc_init(v2);
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [v4 setFont:v5];

  v6 = [MEMORY[0x277D75348] lightTextColor];
  [v4 setTextColor:v6];

  [v4 setText:@" Internal"];
  [(_TVRUIShortcutInternalHeaderView *)v3 addSubview:v4];
  v16 = MEMORY[0x277CCAAD0];
  v20 = [v4 leadingAnchor];
  v19 = [(_TVRUIShortcutInternalHeaderView *)v3 leadingAnchor];
  v18 = [v20 constraintEqualToAnchor:v19 constant:10.0];
  v21[0] = v18;
  v17 = [v4 trailingAnchor];
  v7 = [(_TVRUIShortcutInternalHeaderView *)v3 trailingAnchor];
  v8 = [v17 constraintEqualToAnchor:v7 constant:-10.0];
  v21[1] = v8;
  v9 = [v4 topAnchor];
  v10 = [(_TVRUIShortcutInternalHeaderView *)v3 topAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  v21[2] = v11;
  v12 = [v4 bottomAnchor];
  v13 = [(_TVRUIShortcutInternalHeaderView *)v3 bottomAnchor];

  v14 = [v12 constraintEqualToAnchor:v13];
  v21[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:4];
  [v16 activateConstraints:v15];
}

@end