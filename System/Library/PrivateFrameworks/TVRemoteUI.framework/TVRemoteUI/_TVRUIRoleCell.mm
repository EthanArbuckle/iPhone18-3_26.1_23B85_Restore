@interface _TVRUIRoleCell
+ (CGSize)preferredImageSize;
- (_TVRUIRoleCell)initWithFrame:(CGRect)frame;
- (_TVRUITemplateImageProviding)imageProvider;
- (void)_configureHierarchy;
- (void)_updateFallbackImageForRole:(id)role;
- (void)_updateUIWithRole:(id)role;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setRole:(id)role;
@end

@implementation _TVRUIRoleCell

- (_TVRUIRoleCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _TVRUIRoleCell;
  v3 = [(_TVRUIRoleCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(_TVRUIRoleCell *)v3 _configureHierarchy];
  }

  return v4;
}

+ (CGSize)preferredImageSize
{
  v2 = 100.0;
  v3 = 100.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = _TVRUIRoleCell;
  [(_TVRUIRoleCell *)&v3 prepareForReuse];
  [(_TVRUIRoleCell *)self setRole:0];
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = _TVRUIRoleCell;
  [(_TVRUIRoleCell *)&v8 layoutSubviews];
  imageView = [(_TVRUIRoleCell *)self imageView];
  [imageView bounds];
  v5 = v4;

  if (v5 > 0.0)
  {
    imageView2 = [(_TVRUIRoleCell *)self imageView];
    layer = [imageView2 layer];
    [layer setCornerRadius:v5 * 0.5];
  }
}

- (void)setRole:(id)role
{
  objc_storeStrong(&self->_role, role);
  roleCopy = role;
  [(_TVRUIRoleCell *)self _updateUIWithRole:roleCopy];

  [(_TVRUIRoleCell *)self setNeedsLayout];
}

- (void)_updateUIWithRole:(id)role
{
  roleCopy = role;
  imageView = [(_TVRUIRoleCell *)self imageView];
  [imageView setImage:0];

  actorName = [roleCopy actorName];
  nameLabel = [(_TVRUIRoleCell *)self nameLabel];
  [nameLabel setText:actorName];

  characterName = [roleCopy characterName];
  characterNameLabel = [(_TVRUIRoleCell *)self characterNameLabel];
  [characterNameLabel setText:characterName];

  imageURLTemplate = [roleCopy imageURLTemplate];
  if ([imageURLTemplate length])
  {
    objc_initWeak(&location, self);
    imageProvider = [(_TVRUIRoleCell *)self imageProvider];
    imageURLTemplate2 = [roleCopy imageURLTemplate];
    [objc_opt_class() preferredImageSize];
    v14 = v13;
    v16 = v15;
    canonicalID = [roleCopy canonicalID];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __36___TVRUIRoleCell__updateUIWithRole___block_invoke;
    v18[3] = &unk_279D882C8;
    objc_copyWeak(&v20, &location);
    v19 = roleCopy;
    [imageProvider requestImageForTemplate:imageURLTemplate2 size:canonicalID identifier:v18 completion:{v14, v16}];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  else
  {
    [(_TVRUIRoleCell *)self _updateFallbackImageForRole:roleCopy];
  }
}

- (void)_configureHierarchy
{
  v117 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D755E8]);
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
  v8 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], v5, v6, v7}];
  v9 = objc_alloc_init(MEMORY[0x277D75D18]);
  v10 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v4, v5, v6, v7}];
  v11 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v4, v5, v6, v7}];
  v12 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v4, v5, v6, v7}];
  v13 = [MEMORY[0x277D755B8] systemImageNamed:@"chevron.right"];
  [v12 setImage:v13];

  lightGrayColor = [MEMORY[0x277D75348] lightGrayColor];
  [v12 setTintColor:lightGrayColor];

  LODWORD(v15) = 1148846080;
  [v12 setContentHuggingPriority:0 forAxis:v15];
  [(UIImageView *)v8 setContentMode:2];
  v16 = [MEMORY[0x277D75348] colorWithWhite:0.2 alpha:1.0];
  cGColor = [v16 CGColor];
  layer = [(UIImageView *)v8 layer];
  [layer setBorderColor:cGColor];

  layer2 = [(UIImageView *)v8 layer];
  [layer2 setBorderWidth:1.0];

  [(UIImageView *)v8 setClipsToBounds:1];
  v20 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76938] variant:1024];
  [(UILabel *)v10 setFont:v20];

  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [(UILabel *)v10 setTextColor:whiteColor];

  v22 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76940]];
  [(UILabel *)v11 setFont:v22];

  lightGrayColor2 = [MEMORY[0x277D75348] lightGrayColor];
  [(UILabel *)v11 setTextColor:lightGrayColor2];

  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v103 = v10;
  v115[0] = v10;
  v24 = v11;
  v115[1] = v11;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v115 count:2];
  v26 = [v25 countByEnumeratingWithState:&v108 objects:v116 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v109;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v109 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v108 + 1) + 8 * i);
        [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v30 setAdjustsFontForContentSizeCategory:1];
        [v9 addSubview:v30];
      }

      v27 = [v25 countByEnumeratingWithState:&v108 objects:v116 count:16];
    }

    while (v27);
  }

  selfCopy = self;
  contentView = [(_TVRUIRoleCell *)self contentView];
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v113[0] = v8;
  v113[1] = v9;
  v113[2] = v12;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v113 count:3];
  v33 = [v32 countByEnumeratingWithState:&v104 objects:v114 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v105;
    do
    {
      for (j = 0; j != v34; ++j)
      {
        if (*v105 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = *(*(&v104 + 1) + 8 * j);
        [v37 setTranslatesAutoresizingMaskIntoConstraints:0];
        [contentView addSubview:v37];
      }

      v34 = [v32 countByEnumeratingWithState:&v104 objects:v114 count:16];
    }

    while (v34);
  }

  v81 = MEMORY[0x277CCAAD0];
  topAnchor = [(UIImageView *)v8 topAnchor];
  topAnchor2 = [contentView topAnchor];
  v99 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:10.0];
  v112[0] = v99;
  bottomAnchor = [(UIImageView *)v8 bottomAnchor];
  bottomAnchor2 = [contentView bottomAnchor];
  v96 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-10.0];
  v112[1] = v96;
  leadingAnchor = [(UIImageView *)v8 leadingAnchor];
  leadingAnchor2 = [contentView leadingAnchor];
  v93 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:10.0];
  v112[2] = v93;
  widthAnchor = [(UIImageView *)v8 widthAnchor];
  heightAnchor = [(UIImageView *)v8 heightAnchor];
  v90 = [widthAnchor constraintEqualToAnchor:heightAnchor];
  v112[3] = v90;
  leadingAnchor3 = [v9 leadingAnchor];
  trailingAnchor = [(UIImageView *)v8 trailingAnchor];
  v85 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:10.0];
  v112[4] = v85;
  trailingAnchor2 = [v9 trailingAnchor];
  leadingAnchor4 = [v12 leadingAnchor];
  v82 = [trailingAnchor2 constraintEqualToAnchor:leadingAnchor4 constant:-10.0];
  v112[5] = v82;
  centerYAnchor = [v9 centerYAnchor];
  centerYAnchor2 = [contentView centerYAnchor];
  v77 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v112[6] = v77;
  topAnchor3 = [(UILabel *)v103 topAnchor];
  topAnchor4 = [v9 topAnchor];
  v74 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v112[7] = v74;
  leadingAnchor5 = [(UILabel *)v103 leadingAnchor];
  leadingAnchor6 = [v9 leadingAnchor];
  v71 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v112[8] = v71;
  trailingAnchor3 = [(UILabel *)v103 trailingAnchor];
  trailingAnchor4 = [v9 trailingAnchor];
  v68 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v112[9] = v68;
  topAnchor5 = [(UILabel *)v24 topAnchor];
  bottomAnchor3 = [(UILabel *)v103 bottomAnchor];
  v65 = [topAnchor5 constraintEqualToAnchor:bottomAnchor3 constant:0.0];
  v112[10] = v65;
  leadingAnchor7 = [(UILabel *)v24 leadingAnchor];
  leadingAnchor8 = [v9 leadingAnchor];
  v62 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
  v112[11] = v62;
  v89 = v24;
  trailingAnchor5 = [(UILabel *)v24 trailingAnchor];
  trailingAnchor6 = [v9 trailingAnchor];
  v59 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v112[12] = v59;
  bottomAnchor4 = [(UILabel *)v24 bottomAnchor];
  bottomAnchor5 = [v9 bottomAnchor];
  v38 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
  v112[13] = v38;
  centerYAnchor3 = [v12 centerYAnchor];
  centerYAnchor4 = [contentView centerYAnchor];
  v41 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v42 = v12;
  v88 = v12;
  v43 = v41;
  v112[14] = v41;
  trailingAnchor7 = [v42 trailingAnchor];
  trailingAnchor8 = [contentView trailingAnchor];
  [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8 constant:-10.0];
  v46 = v80 = v8;
  v112[15] = v46;
  v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v112 count:16];
  [v81 activateConstraints:v47];

  v48 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v48 setClipsToBounds:1];
  [v48 _setContinuousCornerRadius:13.0];
  v49 = [MEMORY[0x277D75348] colorWithWhite:0.18 alpha:1.0];
  [v48 setBackgroundColor:v49];

  [(_TVRUIRoleCell *)selfCopy setBackgroundView:v48];
  v50 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v50 setClipsToBounds:1];
  [v50 _setContinuousCornerRadius:13.0];
  v51 = [MEMORY[0x277D75348] colorWithWhite:0.35 alpha:1.0];
  [v50 setBackgroundColor:v51];

  [(_TVRUIRoleCell *)selfCopy setSelectedBackgroundView:v50];
  imageView = selfCopy->_imageView;
  selfCopy->_imageView = v80;
  v53 = v80;

  nameLabel = selfCopy->_nameLabel;
  selfCopy->_nameLabel = v103;
  v55 = v103;

  characterNameLabel = selfCopy->_characterNameLabel;
  selfCopy->_characterNameLabel = v89;

  [(_TVRUIRoleCell *)selfCopy setNeedsLayout];
}

- (void)_updateFallbackImageForRole:(id)role
{
  roleCopy = role;
  avatarGenerator = [(_TVRUIRoleCell *)self avatarGenerator];

  if (avatarGenerator)
  {
    actorName = [roleCopy actorName];
    v7 = [actorName length];

    if (v7)
    {
      objc_initWeak(&location, self);
      avatarGenerator2 = [(_TVRUIRoleCell *)self avatarGenerator];
      actorName2 = [roleCopy actorName];
      canonicalID = [roleCopy canonicalID];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __46___TVRUIRoleCell__updateFallbackImageForRole___block_invoke;
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