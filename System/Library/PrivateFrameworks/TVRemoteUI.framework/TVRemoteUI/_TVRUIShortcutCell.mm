@interface _TVRUIShortcutCell
- (BOOL)compactConstraintsAreActive;
- (BOOL)editingConstraintsAreActive;
- (_TVRUIShortcutCell)initWithFrame:(CGRect)frame;
- (_TVRUIShortcutDelegate)delegate;
- (void)_configureHierarchy;
- (void)layoutSubviews;
- (void)setItem:(id)item;
- (void)updateConstraints;
@end

@implementation _TVRUIShortcutCell

- (_TVRUIShortcutCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _TVRUIShortcutCell;
  v3 = [(_TVRUIShortcutCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(_TVRUIShortcutCell *)v3 _configureHierarchy];
  }

  return v4;
}

- (void)setItem:(id)item
{
  objc_storeStrong(&self->_item, item);
  itemCopy = item;
  v6 = [MEMORY[0x277D755B8] systemImageNamed:@"checkmark.circle.fill"];
  editingAccessoryImageView = [(_TVRUIShortcutCell *)self editingAccessoryImageView];
  [editingAccessoryImageView setImage:v6];

  image = [itemCopy image];
  imageView = [(_TVRUIShortcutCell *)self imageView];
  [imageView setImage:image];

  title = [itemCopy title];

  titleLabel = [(_TVRUIShortcutCell *)self titleLabel];
  [titleLabel setText:title];
}

- (void)layoutSubviews
{
  v32[1] = *MEMORY[0x277D85DE8];
  v29.receiver = self;
  v29.super_class = _TVRUIShortcutCell;
  [(_TVRUIShortcutCell *)&v29 layoutSubviews];
  delegate = [(_TVRUIShortcutCell *)self delegate];
  isCompact = [delegate isCompact];

  delegate2 = [(_TVRUIShortcutCell *)self delegate];
  item = [(_TVRUIShortcutCell *)self item];
  v7 = [delegate2 itemIsEnabled:item];

  if (v7)
  {
    [MEMORY[0x277D75348] whiteColor];
  }

  else
  {
    [MEMORY[0x277D75348] grayColor];
  }
  v8 = ;
  editingAccessoryImageView = [(_TVRUIShortcutCell *)self editingAccessoryImageView];
  [editingAccessoryImageView setTintColor:v8];

  imageView = [(_TVRUIShortcutCell *)self imageView];
  v32[0] = imageView;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];

  editingAccessoryImageView2 = [(_TVRUIShortcutCell *)self editingAccessoryImageView];
  v31[0] = editingAccessoryImageView2;
  titleLabel = [(_TVRUIShortcutCell *)self titleLabel];
  v31[1] = titleLabel;
  imageView2 = [(_TVRUIShortcutCell *)self imageView];
  v31[2] = imageView2;
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
        if (isCompact)
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

  if (isCompact)
  {
    [MEMORY[0x277D75348] colorWithWhite:0.175 alpha:0.8];
  }

  else
  {
    [MEMORY[0x277D75348] clearColor];
  }
  v23 = ;
  contentView = [(_TVRUIShortcutCell *)self contentView];
  [contentView setBackgroundColor:v23];

  [(_TVRUIShortcutCell *)self setNeedsUpdateConstraints];
}

- (void)updateConstraints
{
  delegate = [(_TVRUIShortcutCell *)self delegate];
  isCompact = [delegate isCompact];

  delegate2 = [(_TVRUIShortcutCell *)self delegate];
  isEditing = [delegate2 isEditing];

  if (isCompact)
  {
    if ([(_TVRUIShortcutCell *)self editingConstraintsAreActive])
    {
      v7 = MEMORY[0x277CCAAD0];
      editingConstraints = [(_TVRUIShortcutCell *)self editingConstraints];
      [v7 deactivateConstraints:editingConstraints];
    }

    if (![(_TVRUIShortcutCell *)self compactConstraintsAreActive])
    {
      v9 = MEMORY[0x277CCAAD0];
      compactConstraints = [(_TVRUIShortcutCell *)self compactConstraints];
      [v9 activateConstraints:compactConstraints];
    }
  }

  if (isEditing)
  {
    if ([(_TVRUIShortcutCell *)self compactConstraintsAreActive])
    {
      v11 = MEMORY[0x277CCAAD0];
      compactConstraints2 = [(_TVRUIShortcutCell *)self compactConstraints];
      [v11 deactivateConstraints:compactConstraints2];
    }

    if (![(_TVRUIShortcutCell *)self editingConstraintsAreActive])
    {
      v13 = MEMORY[0x277CCAAD0];
      editingConstraints2 = [(_TVRUIShortcutCell *)self editingConstraints];
      [v13 activateConstraints:editingConstraints2];
    }
  }

  v15.receiver = self;
  v15.super_class = _TVRUIShortcutCell;
  [(_TVRUIShortcutCell *)&v15 updateConstraints];
}

- (void)_configureHierarchy
{
  v98 = *MEMORY[0x277D85DE8];
  contentView = [(_TVRUIShortcutCell *)self contentView];
  v3 = objc_alloc_init(MEMORY[0x277D755E8]);
  v4 = objc_alloc_init(MEMORY[0x277D755E8]);
  [v4 setContentMode:1];
  v5 = objc_alloc_init(MEMORY[0x277D756B8]);
  lightTextColor = [MEMORY[0x277D75348] lightTextColor];
  [v5 setTextColor:lightTextColor];

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
        [contentView addSubview:v13];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = MEMORY[0x277D75348];
          v15 = v13;
          whiteColor = [v14 whiteColor];
          [v15 setTintColor:whiteColor];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v90 objects:v97 count:16];
    }

    while (v10);
  }

  centerXAnchor = [v88 centerXAnchor];
  centerXAnchor2 = [contentView centerXAnchor];
  v80 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v95[0] = v80;
  centerYAnchor = [v88 centerYAnchor];
  centerYAnchor2 = [contentView centerYAnchor];
  v74 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v95[1] = v74;
  heightAnchor = [v88 heightAnchor];
  v70 = [heightAnchor constraintEqualToConstant:38.0];
  v95[2] = v70;
  widthAnchor = [v88 widthAnchor];
  heightAnchor2 = [v88 heightAnchor];
  v64 = [widthAnchor constraintEqualToAnchor:heightAnchor2];
  v95[3] = v64;
  centerXAnchor3 = [v3 centerXAnchor];
  centerXAnchor4 = [contentView centerXAnchor];
  v58 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v95[4] = v58;
  centerYAnchor3 = [v3 centerYAnchor];
  centerYAnchor4 = [contentView centerYAnchor];
  v52 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v95[5] = v52;
  leadingAnchor = [v87 leadingAnchor];
  leadingAnchor2 = [v88 leadingAnchor];
  v46 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v95[6] = v46;
  topAnchor = [v87 topAnchor];
  topAnchor2 = [contentView topAnchor];
  v18 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v95[7] = v18;
  bottomAnchor = [v87 bottomAnchor];
  bottomAnchor2 = [contentView bottomAnchor];
  v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v95[8] = v21;
  [v87 trailingAnchor];
  v22 = v86 = v3;
  trailingAnchor = [contentView trailingAnchor];
  v24 = [v22 constraintEqualToAnchor:trailingAnchor constant:-10.0];
  v95[9] = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v95 count:10];
  [(_TVRUIShortcutCell *)self setCompactConstraints:v25];

  leadingAnchor3 = [v86 leadingAnchor];
  leadingAnchor4 = [contentView leadingAnchor];
  v81 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:10.0];
  v94[0] = v81;
  centerYAnchor5 = [v86 centerYAnchor];
  centerYAnchor6 = [contentView centerYAnchor];
  v75 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
  v94[1] = v75;
  heightAnchor3 = [v86 heightAnchor];
  v71 = [heightAnchor3 constraintEqualToConstant:28.0];
  v94[2] = v71;
  widthAnchor2 = [v86 widthAnchor];
  heightAnchor4 = [v86 heightAnchor];
  v65 = [widthAnchor2 constraintEqualToAnchor:heightAnchor4];
  v94[3] = v65;
  leadingAnchor5 = [v88 leadingAnchor];
  trailingAnchor2 = [v86 trailingAnchor];
  v59 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor2 constant:10.0];
  v94[4] = v59;
  centerYAnchor7 = [v88 centerYAnchor];
  centerYAnchor8 = [contentView centerYAnchor];
  v53 = [centerYAnchor7 constraintEqualToAnchor:centerYAnchor8];
  v94[5] = v53;
  heightAnchor5 = [v88 heightAnchor];
  v49 = [heightAnchor5 constraintEqualToConstant:28.0];
  v94[6] = v49;
  widthAnchor3 = [v88 widthAnchor];
  heightAnchor6 = [v88 heightAnchor];
  v43 = [widthAnchor3 constraintEqualToAnchor:heightAnchor6];
  v94[7] = v43;
  topAnchor3 = [v87 topAnchor];
  topAnchor4 = [contentView topAnchor];
  v40 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v94[8] = v40;
  bottomAnchor3 = [v87 bottomAnchor];
  bottomAnchor4 = [contentView bottomAnchor];
  v37 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v94[9] = v37;
  leadingAnchor6 = [v87 leadingAnchor];
  trailingAnchor3 = [v88 trailingAnchor];
  v28 = [leadingAnchor6 constraintEqualToAnchor:trailingAnchor3 constant:10.0];
  v94[10] = v28;
  trailingAnchor4 = [v87 trailingAnchor];
  trailingAnchor5 = [contentView trailingAnchor];
  v31 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5 constant:-10.0];
  v94[11] = v31;
  heightAnchor7 = [contentView heightAnchor];
  v33 = [heightAnchor7 constraintEqualToConstant:44.0];
  v94[12] = v33;
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v94 count:13];
  [(_TVRUIShortcutCell *)self setEditingConstraints:v34];

  [(_TVRUIShortcutCell *)self setEditingAccessoryImageView:v86];
  [(_TVRUIShortcutCell *)self setImageView:v88];
  [(_TVRUIShortcutCell *)self setTitleLabel:v87];
  contentView2 = [(_TVRUIShortcutCell *)self contentView];
  [contentView2 _setContinuousCornerRadius:16.0];

  contentView3 = [(_TVRUIShortcutCell *)self contentView];
  [contentView3 setClipsToBounds:1];
}

- (BOOL)compactConstraintsAreActive
{
  compactConstraints = [(_TVRUIShortcutCell *)self compactConstraints];
  firstObject = [compactConstraints firstObject];
  isActive = [firstObject isActive];

  return isActive;
}

- (BOOL)editingConstraintsAreActive
{
  editingConstraints = [(_TVRUIShortcutCell *)self editingConstraints];
  firstObject = [editingConstraints firstObject];
  isActive = [firstObject isActive];

  return isActive;
}

- (_TVRUIShortcutDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end