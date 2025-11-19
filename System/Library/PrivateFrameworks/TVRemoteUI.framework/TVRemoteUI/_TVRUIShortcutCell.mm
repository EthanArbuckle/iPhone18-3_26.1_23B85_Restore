@interface _TVRUIShortcutCell
- (BOOL)compactConstraintsAreActive;
- (BOOL)editingConstraintsAreActive;
- (_TVRUIShortcutCell)initWithFrame:(CGRect)a3;
- (_TVRUIShortcutDelegate)delegate;
- (void)_configureHierarchy;
- (void)layoutSubviews;
- (void)setItem:(id)a3;
- (void)updateConstraints;
@end

@implementation _TVRUIShortcutCell

- (_TVRUIShortcutCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = _TVRUIShortcutCell;
  v3 = [(_TVRUIShortcutCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(_TVRUIShortcutCell *)v3 _configureHierarchy];
  }

  return v4;
}

- (void)setItem:(id)a3
{
  objc_storeStrong(&self->_item, a3);
  v5 = a3;
  v6 = [MEMORY[0x277D755B8] systemImageNamed:@"checkmark.circle.fill"];
  v7 = [(_TVRUIShortcutCell *)self editingAccessoryImageView];
  [v7 setImage:v6];

  v8 = [v5 image];
  v9 = [(_TVRUIShortcutCell *)self imageView];
  [v9 setImage:v8];

  v11 = [v5 title];

  v10 = [(_TVRUIShortcutCell *)self titleLabel];
  [v10 setText:v11];
}

- (void)layoutSubviews
{
  v32[1] = *MEMORY[0x277D85DE8];
  v29.receiver = self;
  v29.super_class = _TVRUIShortcutCell;
  [(_TVRUIShortcutCell *)&v29 layoutSubviews];
  v3 = [(_TVRUIShortcutCell *)self delegate];
  v4 = [v3 isCompact];

  v5 = [(_TVRUIShortcutCell *)self delegate];
  v6 = [(_TVRUIShortcutCell *)self item];
  v7 = [v5 itemIsEnabled:v6];

  if (v7)
  {
    [MEMORY[0x277D75348] whiteColor];
  }

  else
  {
    [MEMORY[0x277D75348] grayColor];
  }
  v8 = ;
  v9 = [(_TVRUIShortcutCell *)self editingAccessoryImageView];
  [v9 setTintColor:v8];

  v10 = [(_TVRUIShortcutCell *)self imageView];
  v32[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];

  v12 = [(_TVRUIShortcutCell *)self editingAccessoryImageView];
  v31[0] = v12;
  v13 = [(_TVRUIShortcutCell *)self titleLabel];
  v31[1] = v13;
  v14 = [(_TVRUIShortcutCell *)self imageView];
  v31[2] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:3];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v16 = v15;
  v17 = [v16 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v26;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v25 + 1) + 8 * i);
        v22 = 1.0;
        if (v4)
        {
          if ([v11 containsObject:{*(*(&v25 + 1) + 8 * i), 1.0, v25}])
          {
            v22 = 1.0;
          }

          else
          {
            v22 = 0.0;
          }
        }

        [v21 setAlpha:{v22, v25}];
      }

      v18 = [v16 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v18);
  }

  if (v4)
  {
    [MEMORY[0x277D75348] colorWithWhite:0.175 alpha:0.8];
  }

  else
  {
    [MEMORY[0x277D75348] clearColor];
  }
  v23 = ;
  v24 = [(_TVRUIShortcutCell *)self contentView];
  [v24 setBackgroundColor:v23];

  [(_TVRUIShortcutCell *)self setNeedsUpdateConstraints];
}

- (void)updateConstraints
{
  v3 = [(_TVRUIShortcutCell *)self delegate];
  v4 = [v3 isCompact];

  v5 = [(_TVRUIShortcutCell *)self delegate];
  v6 = [v5 isEditing];

  if (v4)
  {
    if ([(_TVRUIShortcutCell *)self editingConstraintsAreActive])
    {
      v7 = MEMORY[0x277CCAAD0];
      v8 = [(_TVRUIShortcutCell *)self editingConstraints];
      [v7 deactivateConstraints:v8];
    }

    if (![(_TVRUIShortcutCell *)self compactConstraintsAreActive])
    {
      v9 = MEMORY[0x277CCAAD0];
      v10 = [(_TVRUIShortcutCell *)self compactConstraints];
      [v9 activateConstraints:v10];
    }
  }

  if (v6)
  {
    if ([(_TVRUIShortcutCell *)self compactConstraintsAreActive])
    {
      v11 = MEMORY[0x277CCAAD0];
      v12 = [(_TVRUIShortcutCell *)self compactConstraints];
      [v11 deactivateConstraints:v12];
    }

    if (![(_TVRUIShortcutCell *)self editingConstraintsAreActive])
    {
      v13 = MEMORY[0x277CCAAD0];
      v14 = [(_TVRUIShortcutCell *)self editingConstraints];
      [v13 activateConstraints:v14];
    }
  }

  v15.receiver = self;
  v15.super_class = _TVRUIShortcutCell;
  [(_TVRUIShortcutCell *)&v15 updateConstraints];
}

- (void)_configureHierarchy
{
  v98 = *MEMORY[0x277D85DE8];
  v2 = [(_TVRUIShortcutCell *)self contentView];
  v3 = objc_alloc_init(MEMORY[0x277D755E8]);
  v4 = objc_alloc_init(MEMORY[0x277D755E8]);
  [v4 setContentMode:1];
  v5 = objc_alloc_init(MEMORY[0x277D756B8]);
  v6 = [MEMORY[0x277D75348] lightTextColor];
  [v5 setTextColor:v6];

  v7 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [v5 setFont:v7];

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v87 = v5;
  v88 = v4;
  v96[0] = v4;
  v96[1] = v5;
  v96[2] = v3;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v96 count:3];
  v9 = [v8 countByEnumeratingWithState:&v90 objects:v97 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v91;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v91 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v90 + 1) + 8 * i);
        [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v2 addSubview:v13];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = MEMORY[0x277D75348];
          v15 = v13;
          v16 = [v14 whiteColor];
          [v15 setTintColor:v16];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v90 objects:v97 count:16];
    }

    while (v10);
  }

  v84 = [v88 centerXAnchor];
  v82 = [v2 centerXAnchor];
  v80 = [v84 constraintEqualToAnchor:v82];
  v95[0] = v80;
  v78 = [v88 centerYAnchor];
  v76 = [v2 centerYAnchor];
  v74 = [v78 constraintEqualToAnchor:v76];
  v95[1] = v74;
  v72 = [v88 heightAnchor];
  v70 = [v72 constraintEqualToConstant:38.0];
  v95[2] = v70;
  v68 = [v88 widthAnchor];
  v66 = [v88 heightAnchor];
  v64 = [v68 constraintEqualToAnchor:v66];
  v95[3] = v64;
  v62 = [v3 centerXAnchor];
  v60 = [v2 centerXAnchor];
  v58 = [v62 constraintEqualToAnchor:v60];
  v95[4] = v58;
  v56 = [v3 centerYAnchor];
  v54 = [v2 centerYAnchor];
  v52 = [v56 constraintEqualToAnchor:v54];
  v95[5] = v52;
  v50 = [v87 leadingAnchor];
  v48 = [v88 leadingAnchor];
  v46 = [v50 constraintEqualToAnchor:v48];
  v95[6] = v46;
  v44 = [v87 topAnchor];
  v17 = [v2 topAnchor];
  v18 = [v44 constraintEqualToAnchor:v17];
  v95[7] = v18;
  v19 = [v87 bottomAnchor];
  v20 = [v2 bottomAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];
  v95[8] = v21;
  [v87 trailingAnchor];
  v22 = v86 = v3;
  v23 = [v2 trailingAnchor];
  v24 = [v22 constraintEqualToAnchor:v23 constant:-10.0];
  v95[9] = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v95 count:10];
  [(_TVRUIShortcutCell *)self setCompactConstraints:v25];

  v85 = [v86 leadingAnchor];
  v83 = [v2 leadingAnchor];
  v81 = [v85 constraintEqualToAnchor:v83 constant:10.0];
  v94[0] = v81;
  v79 = [v86 centerYAnchor];
  v77 = [v2 centerYAnchor];
  v75 = [v79 constraintEqualToAnchor:v77];
  v94[1] = v75;
  v73 = [v86 heightAnchor];
  v71 = [v73 constraintEqualToConstant:28.0];
  v94[2] = v71;
  v69 = [v86 widthAnchor];
  v67 = [v86 heightAnchor];
  v65 = [v69 constraintEqualToAnchor:v67];
  v94[3] = v65;
  v63 = [v88 leadingAnchor];
  v61 = [v86 trailingAnchor];
  v59 = [v63 constraintEqualToAnchor:v61 constant:10.0];
  v94[4] = v59;
  v57 = [v88 centerYAnchor];
  v55 = [v2 centerYAnchor];
  v53 = [v57 constraintEqualToAnchor:v55];
  v94[5] = v53;
  v51 = [v88 heightAnchor];
  v49 = [v51 constraintEqualToConstant:28.0];
  v94[6] = v49;
  v47 = [v88 widthAnchor];
  v45 = [v88 heightAnchor];
  v43 = [v47 constraintEqualToAnchor:v45];
  v94[7] = v43;
  v42 = [v87 topAnchor];
  v41 = [v2 topAnchor];
  v40 = [v42 constraintEqualToAnchor:v41];
  v94[8] = v40;
  v39 = [v87 bottomAnchor];
  v38 = [v2 bottomAnchor];
  v37 = [v39 constraintEqualToAnchor:v38];
  v94[9] = v37;
  v26 = [v87 leadingAnchor];
  v27 = [v88 trailingAnchor];
  v28 = [v26 constraintEqualToAnchor:v27 constant:10.0];
  v94[10] = v28;
  v29 = [v87 trailingAnchor];
  v30 = [v2 trailingAnchor];
  v31 = [v29 constraintEqualToAnchor:v30 constant:-10.0];
  v94[11] = v31;
  v32 = [v2 heightAnchor];
  v33 = [v32 constraintEqualToConstant:44.0];
  v94[12] = v33;
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v94 count:13];
  [(_TVRUIShortcutCell *)self setEditingConstraints:v34];

  [(_TVRUIShortcutCell *)self setEditingAccessoryImageView:v86];
  [(_TVRUIShortcutCell *)self setImageView:v88];
  [(_TVRUIShortcutCell *)self setTitleLabel:v87];
  v35 = [(_TVRUIShortcutCell *)self contentView];
  [v35 _setContinuousCornerRadius:16.0];

  v36 = [(_TVRUIShortcutCell *)self contentView];
  [v36 setClipsToBounds:1];
}

- (BOOL)compactConstraintsAreActive
{
  v2 = [(_TVRUIShortcutCell *)self compactConstraints];
  v3 = [v2 firstObject];
  v4 = [v3 isActive];

  return v4;
}

- (BOOL)editingConstraintsAreActive
{
  v2 = [(_TVRUIShortcutCell *)self editingConstraints];
  v3 = [v2 firstObject];
  v4 = [v3 isActive];

  return v4;
}

- (_TVRUIShortcutDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end