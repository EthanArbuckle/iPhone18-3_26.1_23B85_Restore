@interface _TVRUIRoleHorizontalCell
+ (CGSize)preferredImageSize;
- (_TVRUIRoleHorizontalCell)initWithFrame:(CGRect)a3;
- (_TVRUITemplateImageProviding)imageProvider;
- (void)_configureHierarchy;
- (void)_updateFallbackImageForRole:(id)a3;
- (void)_updateUIWithRole:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setRole:(id)a3;
@end

@implementation _TVRUIRoleHorizontalCell

- (_TVRUIRoleHorizontalCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = _TVRUIRoleHorizontalCell;
  v3 = [(_TVRUIRoleHorizontalCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v3 = [(_TVRUIRoleHorizontalCell *)self imageView];
  [v3 bounds];
  v5 = v4;

  if (v5 > 0.0)
  {
    v6 = [(_TVRUIRoleHorizontalCell *)self imageView];
    v7 = [v6 layer];
    [v7 setCornerRadius:v5 * 0.5];
  }
}

- (void)setRole:(id)a3
{
  objc_storeStrong(&self->_role, a3);
  v5 = a3;
  [(_TVRUIRoleHorizontalCell *)self _updateUIWithRole:v5];

  [(_TVRUIRoleHorizontalCell *)self setNeedsLayout];

  [(_TVRUIRoleHorizontalCell *)self layoutIfNeeded];
}

- (void)_updateUIWithRole:(id)a3
{
  v4 = a3;
  v5 = [(_TVRUIRoleHorizontalCell *)self imageView];
  [v5 setImage:0];

  v6 = [v4 actorName];
  v7 = [(_TVRUIRoleHorizontalCell *)self nameLabel];
  [v7 setText:v6];

  v8 = [v4 characterName];
  v9 = [(_TVRUIRoleHorizontalCell *)self characterNameLabel];
  [v9 setText:v8];

  v10 = [v4 imageURLTemplate];
  if ([v10 length])
  {
    objc_initWeak(&location, self);
    v11 = [(_TVRUIRoleHorizontalCell *)self imageProvider];
    v12 = [v4 imageURLTemplate];
    [objc_opt_class() preferredImageSize];
    v14 = v13;
    v16 = v15;
    v17 = [v4 canonicalID];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __46___TVRUIRoleHorizontalCell__updateUIWithRole___block_invoke;
    v18[3] = &unk_279D882C8;
    objc_copyWeak(&v20, &location);
    v19 = v4;
    [v11 requestImageForTemplate:v12 size:v17 identifier:v18 completion:{v14, v16}];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  else
  {
    [(_TVRUIRoleHorizontalCell *)self _updateFallbackImageForRole:v4];
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
  v13 = [v12 CGColor];
  v14 = [(UIImageView *)v8 layer];
  [v14 setBorderColor:v13];

  v15 = [(UIImageView *)v8 layer];
  [v15 setBorderWidth:1.0];

  [(UIImageView *)v8 setClipsToBounds:1];
  v16 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76938] variant:1024];
  [(UILabel *)v10 setFont:v16];

  v17 = [MEMORY[0x277D75348] whiteColor];
  [(UILabel *)v10 setTextColor:v17];

  v18 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76940]];
  [(UILabel *)v11 setFont:v18];

  v19 = [MEMORY[0x277D75348] lightGrayColor];
  [(UILabel *)v11 setTextColor:v19];

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

  v93 = self;
  v27 = [(_TVRUIRoleHorizontalCell *)self contentView];
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
        [v27 addSubview:v33];
      }

      v30 = [v28 countByEnumeratingWithState:&v94 objects:v104 count:16];
    }

    while (v30);
  }

  v71 = MEMORY[0x277CCAAD0];
  v92 = [(UIImageView *)v8 topAnchor];
  v91 = [v27 topAnchor];
  v90 = [v92 constraintEqualToAnchor:v91 constant:2.0];
  v102[0] = v90;
  v89 = [(UIImageView *)v8 centerXAnchor];
  v88 = [v27 centerXAnchor];
  v87 = [v89 constraintEqualToAnchor:v88];
  v102[1] = v87;
  v86 = [(UIImageView *)v8 widthAnchor];
  v85 = [(UIImageView *)v8 heightAnchor];
  v84 = [v86 constraintEqualToAnchor:v85];
  v102[2] = v84;
  v83 = [(UIImageView *)v8 heightAnchor];
  v82 = [v27 heightAnchor];
  v81 = [v83 constraintEqualToAnchor:v82 multiplier:0.65];
  v102[3] = v81;
  v79 = [v9 leadingAnchor];
  v77 = [v27 leadingAnchor];
  v75 = [v79 constraintEqualToAnchor:v77];
  v102[4] = v75;
  v74 = [v9 trailingAnchor];
  v73 = [v27 trailingAnchor];
  v72 = [v74 constraintEqualToAnchor:v73];
  v102[5] = v72;
  v70 = [v9 topAnchor];
  v69 = [(UIImageView *)v8 bottomAnchor];
  v68 = [v70 constraintEqualToAnchor:v69 constant:1.0];
  v102[6] = v68;
  v67 = [v9 bottomAnchor];
  v66 = [v27 bottomAnchor];
  v65 = [v67 constraintEqualToAnchor:v66 constant:-3.0];
  v102[7] = v65;
  v64 = [(UILabel *)v10 topAnchor];
  v63 = [v9 topAnchor];
  v62 = [v64 constraintEqualToAnchor:v63];
  v102[8] = v62;
  v61 = [(UILabel *)v10 leadingAnchor];
  v60 = [v9 leadingAnchor];
  v59 = [v61 constraintEqualToAnchor:v60];
  v102[9] = v59;
  v58 = [(UILabel *)v10 trailingAnchor];
  v57 = [v9 trailingAnchor];
  v56 = [v58 constraintEqualToAnchor:v57];
  v102[10] = v56;
  v55 = [(UILabel *)v20 topAnchor];
  v54 = [(UILabel *)v10 bottomAnchor];
  v53 = [v55 constraintEqualToAnchor:v54];
  v102[11] = v53;
  v52 = [(UILabel *)v20 leadingAnchor];
  v51 = [v9 leadingAnchor];
  [v52 constraintEqualToAnchor:v51];
  v34 = v76 = v8;
  v102[12] = v34;
  v78 = v20;
  [(UILabel *)v20 trailingAnchor];
  v35 = v80 = v10;
  v36 = [v9 trailingAnchor];
  v37 = [v35 constraintEqualToAnchor:v36];
  v102[13] = v37;
  v38 = [(UILabel *)v20 bottomAnchor];
  v39 = [v9 bottomAnchor];
  v40 = [v38 constraintEqualToAnchor:v39];
  v102[14] = v40;
  v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v102 count:15];
  [v71 activateConstraints:v41];

  v42 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v42 setClipsToBounds:1];
  [v42 _setContinuousCornerRadius:12.0];
  v43 = [MEMORY[0x277D75348] colorWithWhite:0.18 alpha:1.0];
  [v42 setBackgroundColor:v43];

  [(_TVRUIRoleHorizontalCell *)v93 setBackgroundView:v42];
  v44 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v44 setClipsToBounds:1];
  [v44 _setContinuousCornerRadius:12.0];
  v45 = [MEMORY[0x277D75348] colorWithWhite:0.35 alpha:1.0];
  [v44 setBackgroundColor:v45];

  [(_TVRUIRoleHorizontalCell *)v93 setSelectedBackgroundView:v44];
  imageView = v93->_imageView;
  v93->_imageView = v76;
  v47 = v76;

  nameLabel = v93->_nameLabel;
  v93->_nameLabel = v80;
  v49 = v80;

  characterNameLabel = v93->_characterNameLabel;
  v93->_characterNameLabel = v78;

  [(_TVRUIRoleHorizontalCell *)v93 setNeedsLayout];
}

- (void)_updateFallbackImageForRole:(id)a3
{
  v4 = a3;
  v5 = [(_TVRUIRoleHorizontalCell *)self avatarGenerator];

  if (v5)
  {
    v6 = [v4 actorName];
    v7 = [v6 length];

    if (v7)
    {
      objc_initWeak(&location, self);
      v8 = [(_TVRUIRoleHorizontalCell *)self avatarGenerator];
      v9 = [v4 actorName];
      v10 = [v4 canonicalID];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __56___TVRUIRoleHorizontalCell__updateFallbackImageForRole___block_invoke;
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