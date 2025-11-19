@interface _TVRUILoadingCell
- (_TVRUILoadingCell)initWithFrame:(CGRect)a3;
- (void)animate;
- (void)configureHierarchy;
@end

@implementation _TVRUILoadingCell

- (_TVRUILoadingCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = _TVRUILoadingCell;
  v3 = [(_TVRUILoadingCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v3 = [(_TVRUILoadingCell *)self contentView];
  v4 = objc_alloc_init(MEMORY[0x277D75D18]);
  v5 = objc_alloc_init(MEMORY[0x277D756B8]);
  v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [v5 setFont:v6];

  v7 = [MEMORY[0x277D75348] lightTextColor];
  [v5 setTextColor:v7];

  [v5 setAdjustsFontForContentSizeCategory:1];
  v48 = self;
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"TVRUILoading" value:&stru_287E6AEF8 table:@"Localizable"];
  [v5 setText:v9];

  v10 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  [v3 addSubview:v4];
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
  v47 = [v5 leadingAnchor];
  v46 = [v4 leadingAnchor];
  v45 = [v47 constraintEqualToAnchor:v46];
  v53[0] = v45;
  v44 = [v5 centerYAnchor];
  v43 = [v4 centerYAnchor];
  v42 = [v44 constraintEqualToAnchor:v43];
  v53[1] = v42;
  v41 = [(UIActivityIndicatorView *)v10 leadingAnchor];
  v40 = [v5 trailingAnchor];
  v39 = [v41 constraintEqualToAnchor:v40 constant:10.0];
  v53[2] = v39;
  v36 = [(UIActivityIndicatorView *)v10 centerYAnchor];
  v35 = [v4 centerYAnchor];
  v33 = [v36 constraintEqualToAnchor:v35];
  v53[3] = v33;
  v31 = [(UIActivityIndicatorView *)v10 trailingAnchor];
  v30 = [v4 trailingAnchor];
  v29 = [v31 constraintEqualToAnchor:v30];
  v53[4] = v29;
  v28 = [v4 topAnchor];
  [v3 topAnchor];
  v16 = v38 = v10;
  v17 = [v28 constraintEqualToAnchor:v16];
  v53[5] = v17;
  v18 = [v4 bottomAnchor];
  v19 = [v3 bottomAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];
  v53[6] = v20;
  v21 = [v4 centerXAnchor];
  v22 = v3;
  v34 = v3;
  v23 = v21;
  [v22 centerXAnchor];
  v24 = v32 = v5;
  v25 = [v23 constraintEqualToAnchor:v24];
  v53[7] = v25;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:8];
  [v37 activateConstraints:v26];

  activityIndicatorView = v48->_activityIndicatorView;
  v48->_activityIndicatorView = v38;
}

- (void)animate
{
  v2 = [(_TVRUILoadingCell *)self activityIndicatorView];
  [v2 startAnimating];
}

@end