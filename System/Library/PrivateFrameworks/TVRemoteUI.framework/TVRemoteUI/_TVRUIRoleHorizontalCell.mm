@interface _TVRUIRoleHorizontalCell
+ (CGSize)preferredImageSize;
- (_TVRUIRoleHorizontalCell)initWithFrame:(CGRect)frame;
- (_TVRUITemplateImageProviding)imageProvider;
- (void)_configureHierarchy;
- (void)_updateFallbackImageForRole:(id)role;
- (void)_updateUIWithRole:(id)role;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setRole:(id)role;
@end

@implementation _TVRUIRoleHorizontalCell

- (_TVRUIRoleHorizontalCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _TVRUIRoleHorizontalCell;
  v3 = [(_TVRUIRoleHorizontalCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(_TVRUIRoleHorizontalCell *)v3 _configureHierarchy];
  }

  return v4;
}

+ (CGSize)preferredImageSize
{
  v2 = 300.0;
  v3 = 300.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = _TVRUIRoleHorizontalCell;
  [(_TVRUIRoleHorizontalCell *)&v3 prepareForReuse];
  [(_TVRUIRoleHorizontalCell *)self setRole:0];
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = _TVRUIRoleHorizontalCell;
  [(_TVRUIRoleHorizontalCell *)&v8 layoutSubviews];
  imageView = [(_TVRUIRoleHorizontalCell *)self imageView];
  [imageView bounds];
  v5 = v4;

  if (v5 > 0.0)
  {
    imageView2 = [(_TVRUIRoleHorizontalCell *)self imageView];
    layer = [imageView2 layer];
    [layer setCornerRadius:v5 * 0.5];
  }
}

- (void)setRole:(id)role
{
  objc_storeStrong(&self->_role, role);
  roleCopy = role;
  [(_TVRUIRoleHorizontalCell *)self _updateUIWithRole:roleCopy];

  [(_TVRUIRoleHorizontalCell *)self setNeedsLayout];

  [(_TVRUIRoleHorizontalCell *)self layoutIfNeeded];
}

- (void)_updateUIWithRole:(id)role
{
  roleCopy = role;
  imageView = [(_TVRUIRoleHorizontalCell *)self imageView];
  [imageView setImage:0];

  actorName = [roleCopy actorName];
  nameLabel = [(_TVRUIRoleHorizontalCell *)self nameLabel];
  [nameLabel setText:actorName];

  characterName = [roleCopy characterName];
  characterNameLabel = [(_TVRUIRoleHorizontalCell *)self characterNameLabel];
  [characterNameLabel setText:characterName];

  imageURLTemplate = [roleCopy imageURLTemplate];
  if ([imageURLTemplate length])
  {
    objc_initWeak(&location, self);
    imageProvider = [(_TVRUIRoleHorizontalCell *)self imageProvider];
    imageURLTemplate2 = [roleCopy imageURLTemplate];
    [objc_opt_class() preferredImageSize];
    v14 = v13;
    v16 = v15;
    canonicalID = [roleCopy canonicalID];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __46___TVRUIRoleHorizontalCell__updateUIWithRole___block_invoke;
    v18[3] = &unk_279D882C8;
    objc_copyWeak(&v20, &location);
    v19 = roleCopy;
    [imageProvider requestImageForTemplate:imageURLTemplate2 size:canonicalID identifier:v18 completion:{v14, v16}];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  else
  {
    [(_TVRUIRoleHorizontalCell *)self _updateFallbackImageForRole:roleCopy];
  }
}

- (void)_configureHierarchy
{
  v107 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D755E8]);
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
  v8 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], v5, v6, v7}];
  v9 = objc_alloc_init(MEMORY[0x277D75D18]);
  v10 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v4, v5, v6, v7}];
  v11 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v4, v5, v6, v7}];
  [(UIImageView *)v8 setContentMode:2];
  v12 = [MEMORY[0x277D75348] colorWithWhite:0.2 alpha:1.0];
  cGColor = [v12 CGColor];
  layer = [(UIImageView *)v8 layer];
  [layer setBorderColor:cGColor];

  layer2 = [(UIImageView *)v8 layer];
  [layer2 setBorderWidth:1.0];

  [(UIImageView *)v8 setClipsToBounds:1];
  v16 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76938] variant:1024];
  [(UILabel *)v10 setFont:v16];

  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [(UILabel *)v10 setTextColor:whiteColor];

  v18 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76940]];
  [(UILabel *)v11 setFont:v18];

  lightGrayColor = [MEMORY[0x277D75348] lightGrayColor];
  [(UILabel *)v11 setTextColor:lightGrayColor];

  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v105[0] = v10;
  v20 = v11;
  v105[1] = v11;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v105 count:2];
  v22 = [v21 countByEnumeratingWithState:&v98 objects:v106 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v99;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v99 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v98 + 1) + 8 * i);
        [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v26 setTextAlignment:1];
        [v9 addSubview:v26];
      }

      v23 = [v21 countByEnumeratingWithState:&v98 objects:v106 count:16];
    }

    while (v23);
  }

  selfCopy = self;
  contentView = [(_TVRUIRoleHorizontalCell *)self contentView];
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v103[0] = v8;
  v103[1] = v9;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v103 count:2];
  v29 = [v28 countByEnumeratingWithState:&v94 objects:v104 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v95;
    do
    {
      for (j = 0; j != v30; ++j)
      {
        if (*v95 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v94 + 1) + 8 * j);
        [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
        [contentView addSubview:v33];
      }

      v30 = [v28 countByEnumeratingWithState:&v94 objects:v104 count:16];
    }

    while (v30);
  }

  v71 = MEMORY[0x277CCAAD0];
  topAnchor = [(UIImageView *)v8 topAnchor];
  topAnchor2 = [contentView topAnchor];
  v90 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:2.0];
  v102[0] = v90;
  centerXAnchor = [(UIImageView *)v8 centerXAnchor];
  centerXAnchor2 = [contentView centerXAnchor];
  v87 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v102[1] = v87;
  widthAnchor = [(UIImageView *)v8 widthAnchor];
  heightAnchor = [(UIImageView *)v8 heightAnchor];
  v84 = [widthAnchor constraintEqualToAnchor:heightAnchor];
  v102[2] = v84;
  heightAnchor2 = [(UIImageView *)v8 heightAnchor];
  heightAnchor3 = [contentView heightAnchor];
  v81 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3 multiplier:0.65];
  v102[3] = v81;
  leadingAnchor = [v9 leadingAnchor];
  leadingAnchor2 = [contentView leadingAnchor];
  v75 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v102[4] = v75;
  trailingAnchor = [v9 trailingAnchor];
  trailingAnchor2 = [contentView trailingAnchor];
  v72 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v102[5] = v72;
  topAnchor3 = [v9 topAnchor];
  bottomAnchor = [(UIImageView *)v8 bottomAnchor];
  v68 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:1.0];
  v102[6] = v68;
  bottomAnchor2 = [v9 bottomAnchor];
  bottomAnchor3 = [contentView bottomAnchor];
  v65 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-3.0];
  v102[7] = v65;
  topAnchor4 = [(UILabel *)v10 topAnchor];
  topAnchor5 = [v9 topAnchor];
  v62 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
  v102[8] = v62;
  leadingAnchor3 = [(UILabel *)v10 leadingAnchor];
  leadingAnchor4 = [v9 leadingAnchor];
  v59 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v102[9] = v59;
  trailingAnchor3 = [(UILabel *)v10 trailingAnchor];
  trailingAnchor4 = [v9 trailingAnchor];
  v56 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v102[10] = v56;
  topAnchor6 = [(UILabel *)v20 topAnchor];
  bottomAnchor4 = [(UILabel *)v10 bottomAnchor];
  v53 = [topAnchor6 constraintEqualToAnchor:bottomAnchor4];
  v102[11] = v53;
  leadingAnchor5 = [(UILabel *)v20 leadingAnchor];
  leadingAnchor6 = [v9 leadingAnchor];
  [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v34 = v76 = v8;
  v102[12] = v34;
  v78 = v20;
  [(UILabel *)v20 trailingAnchor];
  v35 = v80 = v10;
  trailingAnchor5 = [v9 trailingAnchor];
  v37 = [v35 constraintEqualToAnchor:trailingAnchor5];
  v102[13] = v37;
  bottomAnchor5 = [(UILabel *)v20 bottomAnchor];
  bottomAnchor6 = [v9 bottomAnchor];
  v40 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
  v102[14] = v40;
  v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v102 count:15];
  [v71 activateConstraints:v41];

  v42 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v42 setClipsToBounds:1];
  [v42 _setContinuousCornerRadius:12.0];
  v43 = [MEMORY[0x277D75348] colorWithWhite:0.18 alpha:1.0];
  [v42 setBackgroundColor:v43];

  [(_TVRUIRoleHorizontalCell *)selfCopy setBackgroundView:v42];
  v44 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v44 setClipsToBounds:1];
  [v44 _setContinuousCornerRadius:12.0];
  v45 = [MEMORY[0x277D75348] colorWithWhite:0.35 alpha:1.0];
  [v44 setBackgroundColor:v45];

  [(_TVRUIRoleHorizontalCell *)selfCopy setSelectedBackgroundView:v44];
  imageView = selfCopy->_imageView;
  selfCopy->_imageView = v76;
  v47 = v76;

  nameLabel = selfCopy->_nameLabel;
  selfCopy->_nameLabel = v80;
  v49 = v80;

  characterNameLabel = selfCopy->_characterNameLabel;
  selfCopy->_characterNameLabel = v78;

  [(_TVRUIRoleHorizontalCell *)selfCopy setNeedsLayout];
}

- (void)_updateFallbackImageForRole:(id)role
{
  roleCopy = role;
  avatarGenerator = [(_TVRUIRoleHorizontalCell *)self avatarGenerator];

  if (avatarGenerator)
  {
    actorName = [roleCopy actorName];
    v7 = [actorName length];

    if (v7)
    {
      objc_initWeak(&location, self);
      avatarGenerator2 = [(_TVRUIRoleHorizontalCell *)self avatarGenerator];
      actorName2 = [roleCopy actorName];
      canonicalID = [roleCopy canonicalID];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __56___TVRUIRoleHorizontalCell__updateFallbackImageForRole___block_invoke;
      v11[3] = &unk_279D87EC8;
      objc_copyWeak(&v12, &location);
      [avatarGenerator2 generateAvatarForName:actorName2 size:canonicalID identifier:v11 completion:{32.0, 32.0}];

      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
    }
  }
}

- (_TVRUITemplateImageProviding)imageProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_imageProvider);

  return WeakRetained;
}

@end