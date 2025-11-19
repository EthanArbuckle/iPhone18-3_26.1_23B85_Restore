@interface _TVRUIRoleCell
+ (CGSize)preferredImageSize;
- (_TVRUIRoleCell)initWithFrame:(CGRect)a3;
- (_TVRUITemplateImageProviding)imageProvider;
- (void)_configureHierarchy;
- (void)_updateFallbackImageForRole:(id)a3;
- (void)_updateUIWithRole:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setRole:(id)a3;
@end

@implementation _TVRUIRoleCell

- (_TVRUIRoleCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = _TVRUIRoleCell;
  v3 = [(_TVRUIRoleCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v3 = [(_TVRUIRoleCell *)self imageView];
  [v3 bounds];
  v5 = v4;

  if (v5 > 0.0)
  {
    v6 = [(_TVRUIRoleCell *)self imageView];
    v7 = [v6 layer];
    [v7 setCornerRadius:v5 * 0.5];
  }
}

- (void)setRole:(id)a3
{
  objc_storeStrong(&self->_role, a3);
  v5 = a3;
  [(_TVRUIRoleCell *)self _updateUIWithRole:v5];

  [(_TVRUIRoleCell *)self setNeedsLayout];
}

- (void)_updateUIWithRole:(id)a3
{
  v4 = a3;
  v5 = [(_TVRUIRoleCell *)self imageView];
  [v5 setImage:0];

  v6 = [v4 actorName];
  v7 = [(_TVRUIRoleCell *)self nameLabel];
  [v7 setText:v6];

  v8 = [v4 characterName];
  v9 = [(_TVRUIRoleCell *)self characterNameLabel];
  [v9 setText:v8];

  v10 = [v4 imageURLTemplate];
  if ([v10 length])
  {
    objc_initWeak(&location, self);
    v11 = [(_TVRUIRoleCell *)self imageProvider];
    v12 = [v4 imageURLTemplate];
    [objc_opt_class() preferredImageSize];
    v14 = v13;
    v16 = v15;
    v17 = [v4 canonicalID];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __36___TVRUIRoleCell__updateUIWithRole___block_invoke;
    v18[3] = &unk_279D882C8;
    objc_copyWeak(&v20, &location);
    v19 = v4;
    [v11 requestImageForTemplate:v12 size:v17 identifier:v18 completion:{v14, v16}];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  else
  {
    [(_TVRUIRoleCell *)self _updateFallbackImageForRole:v4];
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

  v14 = [MEMORY[0x277D75348] lightGrayColor];
  [v12 setTintColor:v14];

  LODWORD(v15) = 1148846080;
  [v12 setContentHuggingPriority:0 forAxis:v15];
  [(UIImageView *)v8 setContentMode:2];
  v16 = [MEMORY[0x277D75348] colorWithWhite:0.2 alpha:1.0];
  v17 = [v16 CGColor];
  v18 = [(UIImageView *)v8 layer];
  [v18 setBorderColor:v17];

  v19 = [(UIImageView *)v8 layer];
  [v19 setBorderWidth:1.0];

  [(UIImageView *)v8 setClipsToBounds:1];
  v20 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76938] variant:1024];
  [(UILabel *)v10 setFont:v20];

  v21 = [MEMORY[0x277D75348] whiteColor];
  [(UILabel *)v10 setTextColor:v21];

  v22 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76940]];
  [(UILabel *)v11 setFont:v22];

  v23 = [MEMORY[0x277D75348] lightGrayColor];
  [(UILabel *)v11 setTextColor:v23];

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

  v102 = self;
  v31 = [(_TVRUIRoleCell *)self contentView];
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
        [v31 addSubview:v37];
      }

      v34 = [v32 countByEnumeratingWithState:&v104 objects:v114 count:16];
    }

    while (v34);
  }

  v81 = MEMORY[0x277CCAAD0];
  v101 = [(UIImageView *)v8 topAnchor];
  v100 = [v31 topAnchor];
  v99 = [v101 constraintEqualToAnchor:v100 constant:10.0];
  v112[0] = v99;
  v98 = [(UIImageView *)v8 bottomAnchor];
  v97 = [v31 bottomAnchor];
  v96 = [v98 constraintEqualToAnchor:v97 constant:-10.0];
  v112[1] = v96;
  v95 = [(UIImageView *)v8 leadingAnchor];
  v94 = [v31 leadingAnchor];
  v93 = [v95 constraintEqualToAnchor:v94 constant:10.0];
  v112[2] = v93;
  v92 = [(UIImageView *)v8 widthAnchor];
  v91 = [(UIImageView *)v8 heightAnchor];
  v90 = [v92 constraintEqualToAnchor:v91];
  v112[3] = v90;
  v87 = [v9 leadingAnchor];
  v86 = [(UIImageView *)v8 trailingAnchor];
  v85 = [v87 constraintEqualToAnchor:v86 constant:10.0];
  v112[4] = v85;
  v84 = [v9 trailingAnchor];
  v83 = [v12 leadingAnchor];
  v82 = [v84 constraintEqualToAnchor:v83 constant:-10.0];
  v112[5] = v82;
  v79 = [v9 centerYAnchor];
  v78 = [v31 centerYAnchor];
  v77 = [v79 constraintEqualToAnchor:v78];
  v112[6] = v77;
  v76 = [(UILabel *)v103 topAnchor];
  v75 = [v9 topAnchor];
  v74 = [v76 constraintEqualToAnchor:v75];
  v112[7] = v74;
  v73 = [(UILabel *)v103 leadingAnchor];
  v72 = [v9 leadingAnchor];
  v71 = [v73 constraintEqualToAnchor:v72];
  v112[8] = v71;
  v70 = [(UILabel *)v103 trailingAnchor];
  v69 = [v9 trailingAnchor];
  v68 = [v70 constraintEqualToAnchor:v69];
  v112[9] = v68;
  v67 = [(UILabel *)v24 topAnchor];
  v66 = [(UILabel *)v103 bottomAnchor];
  v65 = [v67 constraintEqualToAnchor:v66 constant:0.0];
  v112[10] = v65;
  v64 = [(UILabel *)v24 leadingAnchor];
  v63 = [v9 leadingAnchor];
  v62 = [v64 constraintEqualToAnchor:v63];
  v112[11] = v62;
  v89 = v24;
  v61 = [(UILabel *)v24 trailingAnchor];
  v60 = [v9 trailingAnchor];
  v59 = [v61 constraintEqualToAnchor:v60];
  v112[12] = v59;
  v58 = [(UILabel *)v24 bottomAnchor];
  v57 = [v9 bottomAnchor];
  v38 = [v58 constraintEqualToAnchor:v57];
  v112[13] = v38;
  v39 = [v12 centerYAnchor];
  v40 = [v31 centerYAnchor];
  v41 = [v39 constraintEqualToAnchor:v40];
  v42 = v12;
  v88 = v12;
  v43 = v41;
  v112[14] = v41;
  v44 = [v42 trailingAnchor];
  v45 = [v31 trailingAnchor];
  [v44 constraintEqualToAnchor:v45 constant:-10.0];
  v46 = v80 = v8;
  v112[15] = v46;
  v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v112 count:16];
  [v81 activateConstraints:v47];

  v48 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v48 setClipsToBounds:1];
  [v48 _setContinuousCornerRadius:13.0];
  v49 = [MEMORY[0x277D75348] colorWithWhite:0.18 alpha:1.0];
  [v48 setBackgroundColor:v49];

  [(_TVRUIRoleCell *)v102 setBackgroundView:v48];
  v50 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v50 setClipsToBounds:1];
  [v50 _setContinuousCornerRadius:13.0];
  v51 = [MEMORY[0x277D75348] colorWithWhite:0.35 alpha:1.0];
  [v50 setBackgroundColor:v51];

  [(_TVRUIRoleCell *)v102 setSelectedBackgroundView:v50];
  imageView = v102->_imageView;
  v102->_imageView = v80;
  v53 = v80;

  nameLabel = v102->_nameLabel;
  v102->_nameLabel = v103;
  v55 = v103;

  characterNameLabel = v102->_characterNameLabel;
  v102->_characterNameLabel = v89;

  [(_TVRUIRoleCell *)v102 setNeedsLayout];
}

- (void)_updateFallbackImageForRole:(id)a3
{
  v4 = a3;
  v5 = [(_TVRUIRoleCell *)self avatarGenerator];

  if (v5)
  {
    v6 = [v4 actorName];
    v7 = [v6 length];

    if (v7)
    {
      objc_initWeak(&location, self);
      v8 = [(_TVRUIRoleCell *)self avatarGenerator];
      v9 = [v4 actorName];
      v10 = [v4 canonicalID];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __46___TVRUIRoleCell__updateFallbackImageForRole___block_invoke;
      v11[3] = &unk_279D87EC8;
      objc_copyWeak(&v12, &location);
      [v8 generateAvatarForName:v9 size:v10 identifier:v11 completion:{32.0, 32.0}];

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