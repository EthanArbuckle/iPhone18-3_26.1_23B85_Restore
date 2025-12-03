@interface _TVRUILoadingCell
- (_TVRUILoadingCell)initWithFrame:(CGRect)frame;
- (void)animate;
- (void)configureHierarchy;
@end

@implementation _TVRUILoadingCell

- (_TVRUILoadingCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _TVRUILoadingCell;
  v3 = [(_TVRUILoadingCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(_TVRUILoadingCell *)v3 configureHierarchy];
  }

  return v4;
}

- (void)configureHierarchy
{
  v56 = *MEMORY[0x277D85DE8];
  contentView = [(_TVRUILoadingCell *)self contentView];
  v4 = objc_alloc_init(MEMORY[0x277D75D18]);
  v5 = objc_alloc_init(MEMORY[0x277D756B8]);
  v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [v5 setFont:v6];

  lightTextColor = [MEMORY[0x277D75348] lightTextColor];
  [v5 setTextColor:lightTextColor];

  [v5 setAdjustsFontForContentSizeCategory:1];
  selfCopy = self;
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"TVRUILoading" value:&stru_287E6AEF8 table:@"Localizable"];
  [v5 setText:v9];

  v10 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  [contentView addSubview:v4];
  [v4 addSubview:v5];
  [v4 addSubview:v10];
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v54[0] = v4;
  v54[1] = v5;
  v54[2] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:3];
  v12 = [v11 countByEnumeratingWithState:&v49 objects:v55 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v50;
    do
    {
      v15 = 0;
      do
      {
        if (*v50 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v49 + 1) + 8 * v15++) setTranslatesAutoresizingMaskIntoConstraints:0];
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v49 objects:v55 count:16];
    }

    while (v13);
  }

  v37 = MEMORY[0x277CCAAD0];
  leadingAnchor = [v5 leadingAnchor];
  leadingAnchor2 = [v4 leadingAnchor];
  v45 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v53[0] = v45;
  centerYAnchor = [v5 centerYAnchor];
  centerYAnchor2 = [v4 centerYAnchor];
  v42 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v53[1] = v42;
  leadingAnchor3 = [(UIActivityIndicatorView *)v10 leadingAnchor];
  trailingAnchor = [v5 trailingAnchor];
  v39 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:10.0];
  v53[2] = v39;
  centerYAnchor3 = [(UIActivityIndicatorView *)v10 centerYAnchor];
  centerYAnchor4 = [v4 centerYAnchor];
  v33 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v53[3] = v33;
  trailingAnchor2 = [(UIActivityIndicatorView *)v10 trailingAnchor];
  trailingAnchor3 = [v4 trailingAnchor];
  v29 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
  v53[4] = v29;
  topAnchor = [v4 topAnchor];
  [contentView topAnchor];
  v16 = v38 = v10;
  v17 = [topAnchor constraintEqualToAnchor:v16];
  v53[5] = v17;
  bottomAnchor = [v4 bottomAnchor];
  bottomAnchor2 = [contentView bottomAnchor];
  v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v53[6] = v20;
  centerXAnchor = [v4 centerXAnchor];
  v22 = contentView;
  v34 = contentView;
  v23 = centerXAnchor;
  [v22 centerXAnchor];
  v24 = v32 = v5;
  v25 = [v23 constraintEqualToAnchor:v24];
  v53[7] = v25;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:8];
  [v37 activateConstraints:v26];

  activityIndicatorView = selfCopy->_activityIndicatorView;
  selfCopy->_activityIndicatorView = v38;
}

- (void)animate
{
  activityIndicatorView = [(_TVRUILoadingCell *)self activityIndicatorView];
  [activityIndicatorView startAnimating];
}

@end