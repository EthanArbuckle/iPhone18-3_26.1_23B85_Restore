@interface _TVRUIShortcutInternalHeaderView
- (_TVRUIShortcutInternalHeaderView)initWithFrame:(CGRect)frame;
- (void)_configureHierarchy;
@end

@implementation _TVRUIShortcutInternalHeaderView

- (_TVRUIShortcutInternalHeaderView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _TVRUIShortcutInternalHeaderView;
  v3 = [(_TVRUIShortcutInternalHeaderView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  selfCopy = self;
  v4 = objc_alloc_init(v2);
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [v4 setFont:v5];

  lightTextColor = [MEMORY[0x277D75348] lightTextColor];
  [v4 setTextColor:lightTextColor];

  [v4 setText:@" Internal"];
  [(_TVRUIShortcutInternalHeaderView *)selfCopy addSubview:v4];
  v16 = MEMORY[0x277CCAAD0];
  leadingAnchor = [v4 leadingAnchor];
  leadingAnchor2 = [(_TVRUIShortcutInternalHeaderView *)selfCopy leadingAnchor];
  v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:10.0];
  v21[0] = v18;
  trailingAnchor = [v4 trailingAnchor];
  trailingAnchor2 = [(_TVRUIShortcutInternalHeaderView *)selfCopy trailingAnchor];
  v8 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-10.0];
  v21[1] = v8;
  topAnchor = [v4 topAnchor];
  topAnchor2 = [(_TVRUIShortcutInternalHeaderView *)selfCopy topAnchor];
  v11 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v21[2] = v11;
  bottomAnchor = [v4 bottomAnchor];
  bottomAnchor2 = [(_TVRUIShortcutInternalHeaderView *)selfCopy bottomAnchor];

  v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v21[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:4];
  [v16 activateConstraints:v15];
}

@end