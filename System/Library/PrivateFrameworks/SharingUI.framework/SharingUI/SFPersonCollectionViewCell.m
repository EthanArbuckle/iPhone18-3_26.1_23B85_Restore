@interface SFPersonCollectionViewCell
+ (CGSize)_cachedPreferredItemSizeForString:(id)a3 viewWidth:(double)a4 sizeCategory:(id)a5;
+ (CGSize)_cachedPreferredItemSizeForViewWidth:(double)a3 sizeCategory:(id)a4;
- (CGSize)calculatedContentSizeForSheetWidth:(double)a3 sizeCategory:(id)a4;
- (SFPersonCollectionViewCell)initWithFrame:(CGRect)a3;
- (SFPersonCollectionViewCellDelegate)delegate;
- (void)_updateForCurrentSizeCategory;
- (void)addObserverOfValuesForKeyPaths:(id)a3 ofObject:(id)a4;
- (void)deactivateHaptics;
- (void)dealloc;
- (void)fireHapticsForState:(int64_t)a3;
- (void)handleKVOUpdateForPerson:(id)a3 keyPath:(id)a4;
- (void)handleKVOUpdateForProgress:(id)a3 keyPath:(id)a4;
- (void)layoutSubviews;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)prepareForReuse;
- (void)prepareHapticsPreWarm:(BOOL)a3;
- (void)removeObserverOfValuesForKeyPaths:(id)a3 ofObject:(id)a4;
- (void)resetTransferState;
- (void)restoreCellStateFromFinalTransferState:(int64_t)a3;
- (void)setCellState:(int64_t)a3 animated:(BOOL)a4 silent:(BOOL)a5;
- (void)setDarkStyleOnLegacyApp:(BOOL)a3;
- (void)setPerson:(id)a3;
- (void)setProgress:(id)a3;
- (void)setSecondLabelText:(id)a3 withTextColor:(id)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)setSelected:(BOOL)a3;
- (void)setupConstraints;
- (void)setupConstraintsYukon;
- (void)traitCollectionDidChange:(id)a3;
- (void)triggerKVOForKeyPaths:(id)a3 ofObject:(id)a4;
- (void)updateNameLabel;
- (void)updatePersonIconView;
- (void)userDidCancel;
- (void)userDidSelect;
@end

@implementation SFPersonCollectionViewCell

+ (CGSize)_cachedPreferredItemSizeForViewWidth:(double)a3 sizeCategory:(id)a4
{
  [a1 _cachedPreferredItemSizeForString:@"Apple\nInc." viewWidth:a4 sizeCategory:a3];
  result.height = v5;
  result.width = v4;
  return result;
}

+ (CGSize)_cachedPreferredItemSizeForString:(id)a3 viewWidth:(double)a4 sizeCategory:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%ld-%@", v7, a4, v8];
  v10 = getCachedPreferredItemSizesByString();
  v11 = [v10 objectForKey:v9];

  if (!v11)
  {
    v12 = __prototypeActivityCell;
    if (!v12)
    {
      v13 = objc_alloc_init(SFPersonCollectionViewCell);
      v14 = __prototypeActivityCell;
      __prototypeActivityCell = v13;

      v12 = v13;
      v15 = [(SFPersonCollectionViewCell *)v12 nameLabel];
      [v15 setAdjustsFontSizeToFitWidth:0];
    }

    v16 = [(SFPersonCollectionViewCell *)v12 nameLabel];
    [v16 setText:v7];

    [(SFPersonCollectionViewCell *)v12 calculatedContentSizeForSheetWidth:v8 sizeCategory:a4];
    v11 = [MEMORY[0x1E696B098] valueWithCGSize:?];
    v17 = getCachedPreferredItemSizesByString();
    [v17 setObject:v11 forKey:v9];
  }

  [v11 CGSizeValue];
  v19 = v18;
  v21 = v20;

  v22 = v19;
  v23 = v21;
  result.height = v23;
  result.width = v22;
  return result;
}

- (SFPersonCollectionViewCell)initWithFrame:(CGRect)a3
{
  v52.receiver = self;
  v52.super_class = SFPersonCollectionViewCell;
  v3 = [(SFPersonCollectionViewCell *)&v52 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    progressKeyPaths = v3->_progressKeyPaths;
    v3->_progressKeyPaths = &unk_1F37F3FA8;

    v6 = objc_alloc_init(SFPersonImageView);
    [(SFPersonImageView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SFPersonImageView *)v6 setContentMode:2];
    v7 = [MEMORY[0x1E69DC888] blackColor];
    v8 = [v7 CGColor];
    v9 = [(SFPersonImageView *)v6 layer];
    [v9 setShadowColor:v8];

    v10 = [(SFPersonImageView *)v6 layer];
    LODWORD(v11) = 1032805417;
    [v10 setShadowOpacity:v11];

    v12 = *MEMORY[0x1E695F060];
    v13 = *(MEMORY[0x1E695F060] + 8);
    v14 = [(SFPersonImageView *)v6 layer];
    [v14 setShadowOffset:{v12, v13}];

    v15 = [(SFPersonImageView *)v6 layer];
    [v15 setShadowRadius:10.0];

    v16 = [(SFPersonImageView *)v6 layer];
    [v16 setShadowPathIsBounds:1];

    [(SFPersonCollectionViewCell *)v4 setImageView:v6];
    v17 = [(SFPersonCollectionViewCell *)v4 contentView];
    [v17 addSubview:v6];

    v18 = [SFCircleProgressView alloc];
    v19 = [(SFCircleProgressView *)v18 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(SFCircleProgressView *)v19 setProgressLineWidth:2.0];
    [(SFCircleProgressView *)v19 setShowProgressTray:1];
    [(SFCircleProgressView *)v19 setAlpha:1.0];
    v20 = [MEMORY[0x1E69DC888] clearColor];
    [(SFCircleProgressView *)v19 setBackgroundColor:v20];

    [(SFCircleProgressView *)v19 setTranslatesAutoresizingMaskIntoConstraints:0];
    v21 = [MEMORY[0x1E69DC938] currentDevice];
    -[SFCircleProgressView setUsesRoundedLineCap:](v19, "setUsesRoundedLineCap:", [v21 userInterfaceIdiom] == 6);

    [(SFPersonCollectionViewCell *)v4 setCircleProgressView:v19];
    v22 = [(SFPersonCollectionViewCell *)v4 contentView];
    [v22 addSubview:v19];

    v23 = [(SFPersonCollectionViewCell *)v4 traitCollection];
    v24 = [v23 preferredContentSizeCategory];
    v25 = createNameLabel(v24);
    [(SFPersonCollectionViewCell *)v4 setNameLabel:v25];

    v26 = [(SFPersonCollectionViewCell *)v4 contentView];
    v27 = [(SFPersonCollectionViewCell *)v4 nameLabel];
    [v26 addSubview:v27];

    v28 = [(SFPersonCollectionViewCell *)v4 traitCollection];
    v29 = [v28 preferredContentSizeCategory];
    v30 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v31 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v30 setTextColor:v31];

    v32 = [v30 _screen];
    v33 = _SFPersonLabelFont();
    [v30 setFont:v33];

    v34 = [MEMORY[0x1E69DC888] clearColor];
    [v30 setBackgroundColor:v34];

    if (UIContentSizeCategoryCompareToCategory(*MEMORY[0x1E69DDC58], v29) == NSOrderedAscending)
    {
      v35 = 4;
    }

    else
    {
      v35 = 1;
    }

    [v30 setTextAlignment:v35];
    [v30 setNumberOfLines:1];
    [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v36) = 0.75;
    [v30 _setHyphenationFactor:v36];
    [(SFPersonCollectionViewCell *)v4 setSecondLabel:v30];

    v37 = [(SFPersonCollectionViewCell *)v4 contentView];
    v38 = [(SFPersonCollectionViewCell *)v4 secondLabel];
    [v37 addSubview:v38];

    v39 = [(SFPersonCollectionViewCell *)v4 traitCollection];
    v40 = [v39 preferredContentSizeCategory];
    v41 = createNameLabel(v40);
    [(SFPersonCollectionViewCell *)v4 setLabelForPositioning:v41];

    v42 = [(SFPersonCollectionViewCell *)v4 labelForPositioning];
    [v42 setAlpha:0.0];

    v43 = [(SFPersonCollectionViewCell *)v4 labelForPositioning];
    [v43 setText:@"Apple\nInc"];

    v44 = [(SFPersonCollectionViewCell *)v4 contentView];
    v45 = [(SFPersonCollectionViewCell *)v4 labelForPositioning];
    [v44 addSubview:v45];

    v46 = [(SFPersonCollectionViewCell *)v4 contentView];
    v47 = [MEMORY[0x1E69DC888] clearColor];
    [v46 setBackgroundColor:v47];

    [v46 setTranslatesAutoresizingMaskIntoConstraints:1];
    [(SFPersonCollectionViewCell *)v4 setupConstraintsYukon];
    [(SFPersonCollectionViewCell *)v4 prepareHapticsPreWarm:0];
    v48 = [MEMORY[0x1E69DC938] currentDevice];
    v49 = [v48 userInterfaceIdiom];

    if (v49 == 6)
    {
      [(SFPersonCollectionViewCell *)v4 _setCornerRadius:12.0];
    }

    v50 = v4;
  }

  return v4;
}

- (void)dealloc
{
  [(SFPersonCollectionViewCell *)self setPerson:0];
  [(SFPersonCollectionViewCell *)self setProgress:0];
  v3.receiver = self;
  v3.super_class = SFPersonCollectionViewCell;
  [(SFPersonCollectionViewCell *)&v3 dealloc];
}

- (void)setupConstraints
{
  v100[9] = *MEMORY[0x1E69E9840];
  v3 = [(SFPersonCollectionViewCell *)self circleProgressView];
  v4 = [(SFPersonCollectionViewCell *)self contentView];
  ChickletSize = getChickletSize();
  v7 = v6;
  v8 = MEMORY[0x1E696ACD8];
  v92 = [(SFPersonCollectionViewCell *)self imageView];
  v89 = [v8 constraintWithItem:v3 attribute:7 relatedBy:0 toItem:v92 attribute:7 multiplier:1.0 constant:10.0];
  v100[0] = v89;
  v9 = MEMORY[0x1E696ACD8];
  v86 = [(SFPersonCollectionViewCell *)self imageView];
  v83 = [v9 constraintWithItem:v3 attribute:8 relatedBy:0 toItem:v86 attribute:8 multiplier:1.0 constant:10.0];
  v100[1] = v83;
  v10 = MEMORY[0x1E696ACD8];
  v82 = [(SFPersonCollectionViewCell *)self imageView];
  v96 = v3;
  v80 = [v10 constraintWithItem:v3 attribute:9 relatedBy:0 toItem:v82 attribute:9 multiplier:1.0 constant:0.0];
  v100[2] = v80;
  v11 = MEMORY[0x1E696ACD8];
  v78 = [(SFPersonCollectionViewCell *)self imageView];
  v12 = [v11 constraintWithItem:v3 attribute:10 relatedBy:0 toItem:v78 attribute:10 multiplier:1.0 constant:0.0];
  v100[3] = v12;
  v13 = [MEMORY[0x1E696ACD8] constraintWithItem:v4 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:0.0];
  cellWidthConstraint = self->_cellWidthConstraint;
  self->_cellWidthConstraint = v13;

  v100[4] = v13;
  v15 = MEMORY[0x1E696ACD8];
  v16 = [(SFPersonCollectionViewCell *)self imageView];
  v17 = [v15 constraintWithItem:v16 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v7];
  v100[5] = v17;
  v18 = MEMORY[0x1E696ACD8];
  v19 = [(SFPersonCollectionViewCell *)self imageView];
  v20 = [v18 constraintWithItem:v19 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v7];
  v100[6] = v20;
  v21 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_nameLabel attribute:6 relatedBy:0 toItem:v4 attribute:6 multiplier:1.0 constant:-0.5];
  v100[7] = v21;
  v22 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_secondLabel attribute:6 relatedBy:0 toItem:v4 attribute:6 multiplier:1.0 constant:-0.5];
  v100[8] = v22;
  v95 = [MEMORY[0x1E695DEC8] arrayWithObjects:v100 count:9];

  v23 = MEMORY[0x1E696ACD8];
  v93 = [(SFPersonCollectionViewCell *)self imageView];
  v24 = v4;
  v90 = [v23 constraintWithItem:v93 attribute:3 relatedBy:0 toItem:v4 attribute:3 multiplier:1.0 constant:0.0];
  v99[0] = v90;
  v25 = MEMORY[0x1E696ACD8];
  v87 = [(SFPersonCollectionViewCell *)self imageView];
  v84 = [v25 constraintWithItem:v87 attribute:9 relatedBy:0 toItem:v4 attribute:9 multiplier:1.0 constant:0.0];
  v99[1] = v84;
  v26 = MEMORY[0x1E696ACD8];
  nameLabel = self->_nameLabel;
  v28 = [(SFPersonCollectionViewCell *)self imageView];
  v29 = [v26 constraintWithItem:nameLabel attribute:12 relatedBy:0 toItem:v28 attribute:4 multiplier:1.0 constant:0.0];
  chickletToTitleSpacingConstraint = self->_chickletToTitleSpacingConstraint;
  self->_chickletToTitleSpacingConstraint = v29;

  v99[2] = v29;
  v31 = [MEMORY[0x1E696ACD8] constraintWithItem:v24 attribute:4 relatedBy:0 toItem:self->_secondLabel attribute:11 multiplier:1.0 constant:0.0];
  v99[3] = v31;
  v32 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_nameLabel attribute:5 relatedBy:0 toItem:v24 attribute:5 multiplier:1.0 constant:0.5];
  v99[4] = v32;
  v33 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_secondLabel attribute:5 relatedBy:0 toItem:v24 attribute:5 multiplier:1.0 constant:0.5];
  v99[5] = v33;
  v34 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_secondLabel attribute:3 relatedBy:0 toItem:self->_nameLabel attribute:12 multiplier:1.0 constant:3.0];
  secondLabelFBConstraint = self->_secondLabelFBConstraint;
  self->_secondLabelFBConstraint = v34;

  v99[6] = v34;
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v99 count:7];
  [(SFPersonCollectionViewCell *)self setRegularConstraints:v36];

  v91 = [(UILabel *)self->_labelForPositioning centerYAnchor];
  v94 = [(SFPersonCollectionViewCell *)self imageView];
  v88 = [v94 centerYAnchor];
  v85 = [v91 constraintEqualToAnchor:v88];
  v98[0] = v85;
  v79 = [(UILabel *)self->_labelForPositioning leadingAnchor];
  v81 = [(SFPersonCollectionViewCell *)self imageView];
  v77 = [v81 trailingAnchor];
  v76 = [v79 constraintEqualToAnchor:v77 constant:10.0];
  v98[1] = v76;
  v74 = [(UILabel *)self->_labelForPositioning trailingAnchor];
  v73 = [v24 trailingAnchor];
  v72 = [v74 constraintEqualToAnchor:v73 constant:-0.5];
  v98[2] = v72;
  v71 = [(UILabel *)self->_secondLabel firstBaselineAnchor];
  v70 = [(UILabel *)self->_labelForPositioning lastBaselineAnchor];
  v69 = [v71 constraintEqualToAnchor:v70];
  v98[3] = v69;
  v68 = [(SFPersonCollectionViewCell *)self imageView];
  v67 = [v68 topAnchor];
  v37 = v24;
  v66 = [v24 topAnchor];
  v65 = [v67 constraintGreaterThanOrEqualToAnchor:v66 constant:5.0];
  v98[4] = v65;
  v64 = [(SFPersonCollectionViewCell *)self imageView];
  v63 = [v64 bottomAnchor];
  v75 = v24;
  v62 = [v24 bottomAnchor];
  v61 = [v63 constraintLessThanOrEqualToAnchor:v62 constant:-5.0];
  v98[5] = v61;
  v59 = [(UILabel *)self->_nameLabel centerYAnchor];
  v60 = [(SFPersonCollectionViewCell *)self imageView];
  v58 = [v60 centerYAnchor];
  v38 = [v59 constraintEqualToAnchor:v58];
  largeTextNameCenterYConstraint = self->_largeTextNameCenterYConstraint;
  self->_largeTextNameCenterYConstraint = v38;

  v98[6] = v38;
  v40 = [(SFPersonCollectionViewCell *)self imageView];
  v41 = [v40 leadingAnchor];
  v42 = [v37 leadingAnchor];
  v43 = [v41 constraintEqualToAnchor:v42 constant:5.0];
  v98[7] = v43;
  v44 = MEMORY[0x1E696ACD8];
  v45 = self->_nameLabel;
  v46 = [(SFPersonCollectionViewCell *)self imageView];
  v47 = [v44 constraintWithItem:v45 attribute:5 relatedBy:0 toItem:v46 attribute:6 multiplier:1.0 constant:10.0];
  v98[8] = v47;
  v48 = MEMORY[0x1E696ACD8];
  secondLabel = self->_secondLabel;
  v50 = [(SFPersonCollectionViewCell *)self imageView];
  v51 = [v48 constraintWithItem:secondLabel attribute:5 relatedBy:0 toItem:v50 attribute:6 multiplier:1.0 constant:10.0];
  v98[9] = v51;
  v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v98 count:10];
  [(SFPersonCollectionViewCell *)self setLargeTextConstraints:v52];

  v53 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_nameLabel attribute:11 relatedBy:0 toItem:self->_nameLabel attribute:12 multiplier:1.0 constant:0.0];
  v97[0] = v53;
  v54 = [(UILabel *)self->_nameLabel firstBaselineAnchor];
  v55 = [(UILabel *)self->_labelForPositioning firstBaselineAnchor];
  v56 = [v54 constraintEqualToAnchor:v55];
  v97[1] = v56;
  v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:v97 count:2];
  [(SFPersonCollectionViewCell *)self setSecondLabelVisibleConstraintsArray:v57];

  [MEMORY[0x1E696ACD8] activateConstraints:v95];
}

- (void)setupConstraintsYukon
{
  v196[16] = *MEMORY[0x1E69E9840];
  v193 = [(SFPersonCollectionViewCell *)self circleProgressView];
  v192 = [(SFPersonCollectionViewCell *)self contentView];
  v3 = [MEMORY[0x1E69DC938] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  v190 = v4;
  if (v4 == 6)
  {
    v5 = 8.0;
    v6 = -8.0;
    v7 = 4.0;
    v8 = 52.0;
    v9 = -8.0;
  }

  else
  {
    v10 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v10 _referenceBounds];
    if (v11 >= 414.0)
    {
      v12 = [MEMORY[0x1E69DC938] currentDevice];
      v13 = [v12 userInterfaceIdiom];

      if ((v13 & 0xFFFFFFFFFFFFFFFBLL) == 1)
      {
        v8 = 62.0;
      }

      else
      {
        v8 = 66.0;
      }
    }

    else
    {
      v8 = 62.0;
    }

    v9 = -5.0;
    v6 = 0.0;
    v7 = 10.0;
    v5 = 0.0;
  }

  v14 = MEMORY[0x1E695DF70];
  v187 = [(SFPersonCollectionViewCell *)self imageView];
  v184 = [v187 widthAnchor];
  v182 = [v184 constraintEqualToConstant:v8];
  v196[0] = v182;
  v180 = [(SFPersonCollectionViewCell *)self imageView];
  v178 = [v180 heightAnchor];
  v176 = [v178 constraintEqualToConstant:v8];
  v196[1] = v176;
  v174 = [(SFPersonCollectionViewCell *)self imageView];
  v172 = [v174 topAnchor];
  v170 = [v192 topAnchor];
  v168 = [v172 constraintEqualToAnchor:v170 constant:v5];
  v196[2] = v168;
  v166 = [(SFPersonCollectionViewCell *)self imageView];
  v164 = [v166 centerXAnchor];
  v162 = [v192 centerXAnchor];
  v160 = [v164 constraintEqualToAnchor:v162];
  v196[3] = v160;
  v158 = [(SFPersonCollectionViewCell *)self imageView];
  v154 = [v158 centerXAnchor];
  v156 = [(SFPersonCollectionViewCell *)self labelForPositioning];
  v152 = [v156 centerXAnchor];
  v150 = [v154 constraintEqualToAnchor:v152];
  v196[4] = v150;
  v148 = [(SFPersonCollectionViewCell *)self imageView];
  v144 = [v148 bottomAnchor];
  v146 = [(SFPersonCollectionViewCell *)self labelForPositioning];
  v142 = [v146 topAnchor];
  v140 = [v144 constraintEqualToAnchor:v142 constant:v9];
  v196[5] = v140;
  v138 = [(SFPersonCollectionViewCell *)self labelForPositioning];
  v136 = [v138 bottomAnchor];
  v134 = [v192 bottomAnchor];
  v132 = [v136 constraintEqualToAnchor:v134 constant:v6];
  v196[6] = v132;
  v130 = [(SFPersonCollectionViewCell *)self nameLabel];
  v126 = [v130 firstBaselineAnchor];
  v128 = [(SFPersonCollectionViewCell *)self labelForPositioning];
  v124 = [v128 firstBaselineAnchor];
  v122 = [v126 constraintEqualToAnchor:v124];
  v196[7] = v122;
  v120 = [(SFPersonCollectionViewCell *)self nameLabel];
  v118 = [v120 widthAnchor];
  v116 = [v192 widthAnchor];
  v114 = [v118 constraintEqualToAnchor:v116 constant:v6];
  v196[8] = v114;
  v112 = [(SFPersonCollectionViewCell *)self secondLabel];
  v108 = [v112 centerXAnchor];
  v110 = [(SFPersonCollectionViewCell *)self labelForPositioning];
  v106 = [v110 centerXAnchor];
  v104 = [v108 constraintEqualToAnchor:v106];
  v196[9] = v104;
  v102 = [(SFPersonCollectionViewCell *)self secondLabel];
  v100 = [v102 widthAnchor];
  v98 = [v192 widthAnchor];
  v96 = [v100 constraintEqualToAnchor:v98 constant:v6];
  v196[10] = v96;
  v94 = [(SFPersonCollectionViewCell *)self secondLabel];
  v90 = [v94 lastBaselineAnchor];
  v92 = [(SFPersonCollectionViewCell *)self labelForPositioning];
  v88 = [v92 lastBaselineAnchor];
  v86 = [v90 constraintEqualToAnchor:v88];
  v196[11] = v86;
  v82 = [v193 widthAnchor];
  v84 = [(SFPersonCollectionViewCell *)self imageView];
  v80 = [v84 widthAnchor];
  v78 = [v82 constraintEqualToAnchor:v80 constant:v7];
  v196[12] = v78;
  v74 = [v193 heightAnchor];
  v76 = [(SFPersonCollectionViewCell *)self imageView];
  v72 = [v76 heightAnchor];
  v70 = [v74 constraintEqualToAnchor:v72 constant:v7];
  v196[13] = v70;
  v68 = [v193 centerXAnchor];
  v15 = [(SFPersonCollectionViewCell *)self imageView];
  v16 = [v15 centerXAnchor];
  v17 = [v68 constraintEqualToAnchor:v16];
  v196[14] = v17;
  v18 = [v193 centerYAnchor];
  v19 = [(SFPersonCollectionViewCell *)self imageView];
  v20 = [v19 centerYAnchor];
  v21 = [v18 constraintEqualToAnchor:v20];
  v196[15] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v196 count:16];
  v23 = [v14 arrayWithArray:v22];

  if (v190 == 6)
  {
    v24 = [(SFPersonCollectionViewCell *)self nameLabel];
    v25 = [v24 centerXAnchor];
    v26 = [(SFPersonCollectionViewCell *)self labelForPositioning];
    v27 = [v26 centerXAnchor];
    v28 = [v25 constraintEqualToAnchor:v27];
    [v23 addObject:v28];
  }

  v191 = v23;
  [(SFPersonCollectionViewCell *)self setRegularConstraints:v23];
  v29 = [(SFPersonCollectionViewCell *)self nameLabel];
  v30 = [v29 centerYAnchor];
  v31 = [(SFPersonCollectionViewCell *)self imageView];
  v32 = [v31 centerYAnchor];
  v33 = [v30 constraintEqualToAnchor:v32];
  [(SFPersonCollectionViewCell *)self setLargeTextNameCenterYConstraint:v33];

  v34 = MEMORY[0x1E695DF70];
  v188 = [(SFPersonCollectionViewCell *)self imageView];
  v185 = [v188 widthAnchor];
  v183 = [v185 constraintEqualToConstant:v8];
  v195[0] = v183;
  v181 = [(SFPersonCollectionViewCell *)self imageView];
  v179 = [v181 heightAnchor];
  v177 = [v179 constraintEqualToConstant:v8];
  v195[1] = v177;
  v175 = [(SFPersonCollectionViewCell *)self imageView];
  v173 = [v175 centerYAnchor];
  v171 = [v192 centerYAnchor];
  v169 = [v173 constraintEqualToAnchor:v171];
  v195[2] = v169;
  v167 = [(SFPersonCollectionViewCell *)self imageView];
  v165 = [v167 leadingAnchor];
  v163 = [v192 leadingAnchor];
  v161 = [v165 constraintEqualToAnchor:v163];
  v195[3] = v161;
  v159 = [(SFPersonCollectionViewCell *)self labelForPositioning];
  v157 = [v159 bottomAnchor];
  v155 = [v192 bottomAnchor];
  v153 = [v157 constraintEqualToAnchor:v155 constant:-8.0];
  v195[4] = v153;
  v151 = [(SFPersonCollectionViewCell *)self labelForPositioning];
  v149 = [v151 topAnchor];
  v147 = [v192 topAnchor];
  v145 = [v149 constraintEqualToAnchor:v147 constant:8.0];
  v195[5] = v145;
  v143 = [(SFPersonCollectionViewCell *)self labelForPositioning];
  v139 = [v143 leadingAnchor];
  v141 = [(SFPersonCollectionViewCell *)self imageView];
  v137 = [v141 trailingAnchor];
  v135 = [v139 constraintEqualToAnchor:v137 constant:13.0];
  v195[6] = v135;
  v133 = [(SFPersonCollectionViewCell *)self labelForPositioning];
  v131 = [v133 trailingAnchor];
  v129 = [v192 trailingAnchor];
  v127 = [v131 constraintEqualToAnchor:v129 constant:8.0];
  v195[7] = v127;
  v125 = [(SFPersonCollectionViewCell *)self nameLabel];
  v121 = [v125 firstBaselineAnchor];
  v123 = [(SFPersonCollectionViewCell *)self labelForPositioning];
  v119 = [v123 firstBaselineAnchor];
  v117 = [v121 constraintEqualToAnchor:v119];
  v195[8] = v117;
  v115 = [(SFPersonCollectionViewCell *)self nameLabel];
  v111 = [v115 leadingAnchor];
  v113 = [(SFPersonCollectionViewCell *)self imageView];
  v109 = [v113 trailingAnchor];
  v107 = [v111 constraintEqualToAnchor:v109 constant:13.0];
  v195[9] = v107;
  v105 = [(SFPersonCollectionViewCell *)self nameLabel];
  v103 = [v105 trailingAnchor];
  v101 = [v192 trailingAnchor];
  v99 = [v103 constraintEqualToAnchor:v101 constant:-8.0];
  v195[10] = v99;
  v95 = [v193 widthAnchor];
  v97 = [(SFPersonCollectionViewCell *)self imageView];
  v93 = [v97 widthAnchor];
  v91 = [v95 constraintEqualToAnchor:v93 constant:v7];
  v195[11] = v91;
  v87 = [v193 heightAnchor];
  v89 = [(SFPersonCollectionViewCell *)self imageView];
  v85 = [v89 heightAnchor];
  v83 = [v87 constraintEqualToAnchor:v85 constant:v7];
  v195[12] = v83;
  v79 = [v193 centerXAnchor];
  v81 = [(SFPersonCollectionViewCell *)self imageView];
  v77 = [v81 centerXAnchor];
  v75 = [v79 constraintEqualToAnchor:v77];
  v195[13] = v75;
  v71 = [v193 centerYAnchor];
  v73 = [(SFPersonCollectionViewCell *)self imageView];
  v69 = [v73 centerYAnchor];
  v67 = [v71 constraintEqualToAnchor:v69];
  v195[14] = v67;
  v66 = [(SFPersonCollectionViewCell *)self secondLabel];
  v64 = [v66 widthAnchor];
  v65 = [(SFPersonCollectionViewCell *)self nameLabel];
  v63 = [v65 widthAnchor];
  v62 = [v64 constraintEqualToAnchor:v63];
  v195[15] = v62;
  v61 = [(SFPersonCollectionViewCell *)self secondLabel];
  v59 = [v61 leadingAnchor];
  v60 = [(SFPersonCollectionViewCell *)self nameLabel];
  v58 = [v60 leadingAnchor];
  v35 = [v59 constraintEqualToAnchor:v58];
  v195[16] = v35;
  v36 = [(SFPersonCollectionViewCell *)self secondLabel];
  v37 = [v36 lastBaselineAnchor];
  v38 = [(SFPersonCollectionViewCell *)self labelForPositioning];
  v39 = [v38 lastBaselineAnchor];
  v40 = [v37 constraintEqualToAnchor:v39];
  v195[17] = v40;
  v41 = [(SFPersonCollectionViewCell *)self largeTextNameCenterYConstraint];
  v195[18] = v41;
  v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v195 count:19];
  v43 = [v34 arrayWithArray:v42];
  [(SFPersonCollectionViewCell *)self setLargeTextConstraints:v43];

  v189 = [(SFPersonCollectionViewCell *)self nameLabel];
  v186 = [v189 lastBaselineAnchor];
  v44 = [(SFPersonCollectionViewCell *)self nameLabel];
  v45 = [v44 firstBaselineAnchor];
  v46 = [v186 constraintEqualToAnchor:v45];
  v194[0] = v46;
  v47 = [(SFPersonCollectionViewCell *)self nameLabel];
  v48 = [v47 firstBaselineAnchor];
  v49 = [(SFPersonCollectionViewCell *)self labelForPositioning];
  v50 = [v49 firstBaselineAnchor];
  v51 = [v48 constraintEqualToAnchor:v50];
  v194[1] = v51;
  v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v194 count:2];
  [(SFPersonCollectionViewCell *)self setSecondLabelVisibleConstraintsArray:v52];

  v53 = [(SFPersonCollectionViewCell *)self traitCollection];
  v54 = [v53 preferredContentSizeCategory];
  v55 = UIContentSizeCategoryCompareToCategory(*MEMORY[0x1E69DDC58], v54);

  v56 = MEMORY[0x1E696ACD8];
  if (v55 == NSOrderedAscending)
  {
    [(SFPersonCollectionViewCell *)self largeTextConstraints];
  }

  else
  {
    [(SFPersonCollectionViewCell *)self regularConstraints];
  }
  v57 = ;
  [v56 activateConstraints:v57];
}

- (void)setDarkStyleOnLegacyApp:(BOOL)a3
{
  self->_darkStyleOnLegacyApp = a3;
  nameLabel = self->_nameLabel;
  v5 = [MEMORY[0x1E69DC888] labelColor];
  [(UILabel *)nameLabel setTextColor:v5];

  v6 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(SFPersonCollectionViewCell *)self setFadedSecondLabelColor:v6];
}

- (void)prepareForReuse
{
  v6.receiver = self;
  v6.super_class = SFPersonCollectionViewCell;
  [(SFPersonCollectionViewCell *)&v6 prepareForReuse];
  [(SFPersonCollectionViewCell *)self deactivateHaptics];
  [(SFPersonCollectionViewCell *)self setPerson:0];
  [(SFPersonCollectionViewCell *)self setProgress:0];
  [(SFPersonCollectionViewCell *)self setCellState:0];
  [(SFPersonCollectionViewCell *)self setSelected:0];
  v3 = [(SFPersonCollectionViewCell *)self nameLabel];
  [v3 setText:0];

  v4 = [(SFPersonCollectionViewCell *)self secondLabel];
  [v4 setText:0];

  v5 = [(SFPersonCollectionViewCell *)self imageView];
  [v5 setImage:0];
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = SFPersonCollectionViewCell;
  [(SFPersonCollectionViewCell *)&v11 layoutSubviews];
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    v3 = [(SFPersonCollectionViewCell *)self contentView];
    [v3 frame];
    v5 = v4;
    v7 = v6;
    v9 = v8;

    v10 = [(SFPersonCollectionViewCell *)self contentView];
    [v10 setFrame:{v5, 0.0, v7, v9}];
  }
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  if ([(SFPersonCollectionViewCell *)self isSelected]!= a3)
  {
    v5 = [(SFPersonCollectionViewCell *)self isHighlighted];
    v7.receiver = self;
    v7.super_class = SFPersonCollectionViewCell;
    [(SFPersonCollectionViewCell *)&v7 setSelected:v3];
    v6 = [(SFPersonCollectionViewCell *)self imageView];
    [v6 setHighlighted:v5];
  }
}

- (void)setPerson:(id)a3
{
  v5 = a3;
  if (self->_person != v5)
  {
    [(SFPersonCollectionViewCell *)self removeObserverOfValuesForKeyPaths:&unk_1F37F3FC0 ofObject:?];
    [(SFPersonCollectionViewCell *)self willChangeValueForKey:@"person"];
    objc_storeStrong(&self->_person, a3);
    [(SFPersonCollectionViewCell *)self didChangeValueForKey:@"person"];
    [(SFPersonCollectionViewCell *)self addObserverOfValuesForKeyPaths:&unk_1F37F3FC0 ofObject:self->_person];
    if (self->_person)
    {
      [(SFPersonCollectionViewCell *)self updatePersonIconView];
      [(SFPersonCollectionViewCell *)self updateNameLabel];
    }
  }
}

- (void)setProgress:(id)a3
{
  v5 = a3;
  if (self->_progress != v5)
  {
    v6 = v5;
    [(SFPersonCollectionViewCell *)self removeObserverOfValuesForKeyPaths:self->_progressKeyPaths ofObject:?];
    objc_storeStrong(&self->_progress, a3);
    [(SFPersonCollectionViewCell *)self addObserverOfValuesForKeyPaths:self->_progressKeyPaths ofObject:self->_progress];
    [(SFPersonCollectionViewCell *)self triggerKVOForKeyPaths:self->_progressKeyPaths ofObject:self->_progress];
    v5 = v6;
  }
}

- (void)setCellState:(int64_t)a3 animated:(BOOL)a4 silent:(BOOL)a5
{
  v66 = *MEMORY[0x1E69E9840];
  cellState = self->_cellState;
  if (cellState == a3)
  {
    return;
  }

  v7 = a4;
  v10 = a3 - 2;
  if (a3 >= 2 && cellState > a3)
  {
    v11 = airdrop_ui_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = self->_cellState;
      if (v12 > 6)
      {
        v13 = @"?";
      }

      else
      {
        v13 = off_1E7EE43E8[v12];
      }

      if (v10 > 4)
      {
        v23 = @"?";
      }

      else
      {
        v23 = off_1E7EE43C0[v10];
      }

      v24 = [(SFAirDropNode *)self->_person displayName];
      *location = 138412803;
      *&location[4] = v13;
      v62 = 2112;
      v63 = v23;
      v64 = 2113;
      v65 = v24;
      _os_log_impl(&dword_1B9E4B000, v11, OS_LOG_TYPE_DEFAULT, "Unsupported cell state transition %@ -> %@ for person %{private}@. Ignoring", location, 0x20u);
    }

    return;
  }

  progress = self->_progress;
  if (!progress || ([(NSProgress *)progress sf_initiator]& 1) != 0)
  {
    v15 = 1;
  }

  else
  {
    if ((a3 - 3) >= 4 && a3)
    {
      return;
    }

    [(SFCircleProgressView *)self->_circleProgressView setAlpha:0.0];
    v15 = 0;
  }

  if (a3 <= 2)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v32 = [(SFPersonCollectionViewCell *)self secondLabel];
        objc_initWeak(location, v32);

        if (!a5)
        {
          [(SFPersonCollectionViewCell *)self fireHapticsForState:1];
        }

        v33 = SFLocalizedStringForKey();
        v34 = [(SFPersonCollectionViewCell *)self fadedSecondLabelColor];
        v59[0] = MEMORY[0x1E69E9820];
        v59[1] = 3221225472;
        v59[2] = __59__SFPersonCollectionViewCell_setCellState_animated_silent___block_invoke;
        v59[3] = &unk_1E7EE4350;
        objc_copyWeak(&v60, location);
        [(SFPersonCollectionViewCell *)self setSecondLabelText:v33 withTextColor:v34 animated:v7 completion:v59];

        [(SFCircleProgressView *)self->_circleProgressView setProgress:v7 animated:0 completion:0.0];
        if (v15)
        {
          [(SFCircleProgressView *)self->_circleProgressView setAlpha:1.0];
        }

        objc_destroyWeak(&v60);
        objc_destroyWeak(location);
      }

      else if (a3 == 2)
      {
        v17 = [(SFPersonCollectionViewCell *)self secondLabel];
        objc_initWeak(location, v17);

        if (!a5)
        {
          [(SFPersonCollectionViewCell *)self fireHapticsForState:2];
        }

        v18 = SFLocalizedStringForKey();
        v19 = [(SFPersonCollectionViewCell *)self fadedSecondLabelColor];
        v57[0] = MEMORY[0x1E69E9820];
        v57[1] = 3221225472;
        v57[2] = __59__SFPersonCollectionViewCell_setCellState_animated_silent___block_invoke_3;
        v57[3] = &unk_1E7EE4350;
        objc_copyWeak(&v58, location);
        [(SFPersonCollectionViewCell *)self setSecondLabelText:v18 withTextColor:v19 animated:v7 completion:v57];

        objc_destroyWeak(&v58);
        objc_destroyWeak(location);
      }

      goto LABEL_46;
    }

    [(SFPersonCollectionViewCell *)self prepareHaptics];
    [(SFPersonCollectionViewCell *)self setSecondLabelText:0 withTextColor:0 animated:v7 completion:0];
    [(SFCircleProgressView *)self->_circleProgressView setProgress:v7 animated:0 completion:0.0];
    circleProgressView = self->_circleProgressView;
    v26 = 0.0;
  }

  else
  {
    if (a3 > 4)
    {
      if (a3 == 5)
      {
        objc_initWeak(location, self);
        v29 = SFLocalizedStringForKey();
        v30 = [MEMORY[0x1E69DC888] systemRedColor];
        [(SFPersonCollectionViewCell *)self setSecondLabelText:v29 withTextColor:v30 animated:v7 completion:0];

        v31 = self->_circleProgressView;
        v49[0] = MEMORY[0x1E69E9820];
        v49[1] = 3221225472;
        v49[2] = __59__SFPersonCollectionViewCell_setCellState_animated_silent___block_invoke_7;
        v49[3] = &unk_1E7EE4378;
        v51 = v7;
        v52 = a5;
        objc_copyWeak(&v50, location);
        [(SFCircleProgressView *)v31 setProgress:v7 animated:v49 completion:0.0];
        [(SFCircleProgressView *)self->_circleProgressView setAlpha:0.0];
        objc_destroyWeak(&v50);
        objc_destroyWeak(location);
      }

      else if (a3 == 6)
      {
        objc_initWeak(location, self);
        v20 = SFLocalizedStringForKey();
        v21 = [MEMORY[0x1E69DC888] systemRedColor];
        [(SFPersonCollectionViewCell *)self setSecondLabelText:v20 withTextColor:v21 animated:v7 completion:0];

        v22 = self->_circleProgressView;
        v42 = MEMORY[0x1E69E9820];
        v43 = 3221225472;
        v44 = __59__SFPersonCollectionViewCell_setCellState_animated_silent___block_invoke_8;
        v45 = &unk_1E7EE4378;
        v47 = v7;
        v48 = a5;
        objc_copyWeak(&v46, location);
        [(SFCircleProgressView *)v22 setProgress:v7 animated:&v42 completion:0.0];
        [(SFCircleProgressView *)self->_circleProgressView setAlpha:0.0, v42, v43, v44, v45];
        objc_destroyWeak(&v46);
        objc_destroyWeak(location);
      }

      goto LABEL_46;
    }

    if (a3 != 3)
    {
      if (v7)
      {
        objc_initWeak(location, self);
        v16 = self->_circleProgressView;
        v53[0] = MEMORY[0x1E69E9820];
        v53[1] = 3221225472;
        v53[2] = __59__SFPersonCollectionViewCell_setCellState_animated_silent___block_invoke_5;
        v53[3] = &unk_1E7EE4378;
        v55 = a5;
        objc_copyWeak(&v54, location);
        v56 = v7;
        [(SFCircleProgressView *)v16 animateProgressCompletedWithCompletion:v53];
        objc_destroyWeak(&v54);
        objc_destroyWeak(location);
      }

      else
      {
        v35 = SFLocalizedStringForKey();
        v36 = [MEMORY[0x1E69DC888] systemBlueColor];
        [(SFPersonCollectionViewCell *)self setSecondLabelText:v35 withTextColor:v36 animated:0 completion:0];

        [(SFCircleProgressView *)self->_circleProgressView setAlpha:0.0];
        [(SFCircleProgressView *)self->_circleProgressView setProgress:1.0];
      }

      goto LABEL_46;
    }

    if (!a5)
    {
      [(SFPersonCollectionViewCell *)self fireHapticsForState:3];
    }

    v27 = SFLocalizedStringForKey();
    v28 = [(SFPersonCollectionViewCell *)self fadedSecondLabelColor];
    [(SFPersonCollectionViewCell *)self setSecondLabelText:v27 withTextColor:v28 animated:v7 completion:0];

    if (!v15)
    {
      goto LABEL_46;
    }

    circleProgressView = self->_circleProgressView;
    v26 = 1.0;
  }

  [(SFCircleProgressView *)circleProgressView setAlpha:v26];
LABEL_46:
  v37 = airdrop_ui_log();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    v38 = self->_cellState;
    if (v38 > 6)
    {
      v39 = @"?";
    }

    else
    {
      v39 = off_1E7EE43E8[v38];
    }

    if (a3 > 6)
    {
      v40 = @"?";
    }

    else
    {
      v40 = off_1E7EE43E8[a3];
    }

    v41 = [(SFAirDropNode *)self->_person displayName];
    *location = 138412803;
    *&location[4] = v39;
    v62 = 2112;
    v63 = v40;
    v64 = 2113;
    v65 = v41;
    _os_log_impl(&dword_1B9E4B000, v37, OS_LOG_TYPE_DEFAULT, "Changing cell state %@ -> %@ for person %{private}@", location, 0x20u);
  }

  self->_cellState = a3;
}

void __59__SFPersonCollectionViewCell_setCellState_animated_silent___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E69DD250];
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __59__SFPersonCollectionViewCell_setCellState_animated_silent___block_invoke_2;
  v2[3] = &unk_1E7EE3688;
  objc_copyWeak(&v3, (a1 + 32));
  [v1 animateWithDuration:24 delay:v2 options:0 animations:0.75 completion:0.0];
  objc_destroyWeak(&v3);
}

void __59__SFPersonCollectionViewCell_setCellState_animated_silent___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setAlpha:0.2];
}

void __59__SFPersonCollectionViewCell_setCellState_animated_silent___block_invoke_3(uint64_t a1)
{
  v1 = MEMORY[0x1E69DD250];
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __59__SFPersonCollectionViewCell_setCellState_animated_silent___block_invoke_4;
  v2[3] = &unk_1E7EE3688;
  objc_copyWeak(&v3, (a1 + 32));
  [v1 animateWithDuration:24 delay:v2 options:0 animations:0.75 completion:0.0];
  objc_destroyWeak(&v3);
}

void __59__SFPersonCollectionViewCell_setCellState_animated_silent___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setAlpha:0.2];
}

void __59__SFPersonCollectionViewCell_setCellState_animated_silent___block_invoke_5(uint64_t a1)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained fireHapticsForState:4];
  }

  v3 = objc_loadWeakRetained((a1 + 32));
  v4 = SFLocalizedStringForKey();
  v5 = [MEMORY[0x1E69DC888] systemBlueColor];
  [v3 setSecondLabelText:v4 withTextColor:v5 animated:*(a1 + 41) completion:0];

  v6 = MEMORY[0x1E69DD250];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__SFPersonCollectionViewCell_setCellState_animated_silent___block_invoke_6;
  v7[3] = &unk_1E7EE3688;
  objc_copyWeak(&v8, (a1 + 32));
  [v6 animateWithDuration:v7 animations:0.5];
  objc_destroyWeak(&v8);
}

void __59__SFPersonCollectionViewCell_setCellState_animated_silent___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained circleProgressView];
  [v1 setAlpha:0.0];
}

void __59__SFPersonCollectionViewCell_setCellState_animated_silent___block_invoke_7(uint64_t a1)
{
  if (*(a1 + 40) == 1 && (*(a1 + 41) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained fireHapticsForState:5];
  }
}

void __59__SFPersonCollectionViewCell_setCellState_animated_silent___block_invoke_8(uint64_t a1)
{
  if (*(a1 + 40) == 1 && (*(a1 + 41) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained fireHapticsForState:6];
  }
}

- (void)restoreCellStateFromFinalTransferState:(int64_t)a3
{
  if ((a3 - 4) <= 2)
  {
    [(SFPersonCollectionViewCell *)self setCellState:qword_1B9EDEB18[a3 - 4]];

    [(SFPersonCollectionViewCell *)self updateNameLabel];
  }
}

- (void)prepareHapticsPreWarm:(BOOL)a3
{
  v3 = a3;
  v5 = airdrop_ui_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SFPersonCollectionViewCell prepareHapticsPreWarm:];
  }

  if (!self->_notificationHaptic)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69DCCF0]);
    notificationHaptic = self->_notificationHaptic;
    self->_notificationHaptic = v6;
  }

  if (!self->_impactHaptic)
  {
    v8 = [objc_alloc(MEMORY[0x1E69DCAE8]) initWithStyle:1];
    impactHaptic = self->_impactHaptic;
    self->_impactHaptic = v8;
  }

  if (self->_selectionHaptic)
  {
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x1E69DCF40]);
    selectionHaptic = self->_selectionHaptic;
    self->_selectionHaptic = v10;

    if (!v3)
    {
      return;
    }
  }

  v12 = airdrop_ui_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [SFPersonCollectionViewCell prepareHapticsPreWarm:];
  }

  [(UINotificationFeedbackGenerator *)self->_notificationHaptic prepare];
  [(UIImpactFeedbackGenerator *)self->_impactHaptic prepare];
  [(UISelectionFeedbackGenerator *)self->_selectionHaptic prepare];
}

- (void)deactivateHaptics
{
  notificationHaptic = self->_notificationHaptic;
  self->_notificationHaptic = 0;

  impactHaptic = self->_impactHaptic;
  self->_impactHaptic = 0;

  selectionHaptic = self->_selectionHaptic;
  self->_selectionHaptic = 0;
}

- (void)fireHapticsForState:(int64_t)a3
{
  if (a3 > 3)
  {
    switch(a3)
    {
      case 4:
        v5 = 0;
        break;
      case 5:
        v5 = 1;
        break;
      case 6:
        v5 = 2;
        break;
      default:
        goto LABEL_13;
    }

    [(SFPersonCollectionViewCell *)self prepareHaptics];
    v8 = airdrop_ui_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [SFPersonCollectionViewCell fireHapticsForState:];
    }

    [(UINotificationFeedbackGenerator *)self->_notificationHaptic notificationOccurred:v5];
    goto LABEL_23;
  }

  switch(a3)
  {
    case 1:
      goto LABEL_5;
    case 2:
      [(SFPersonCollectionViewCell *)self prepareHaptics];
      v7 = airdrop_ui_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [SFPersonCollectionViewCell fireHapticsForState:];
      }

      [(UISelectionFeedbackGenerator *)self->_selectionHaptic selectionChanged];
      goto LABEL_23;
    case 3:
LABEL_5:
      [(SFPersonCollectionViewCell *)self prepareHaptics];
      v4 = airdrop_ui_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        [SFPersonCollectionViewCell fireHapticsForState:];
      }

      [(UIImpactFeedbackGenerator *)self->_impactHaptic impactOccurred];
LABEL_23:
      [(SFPersonCollectionViewCell *)self prepareHaptics];
      return;
  }

LABEL_13:
  v6 = airdrop_ui_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [SFPersonCollectionViewCell fireHapticsForState:];
  }
}

- (void)updatePersonIconView
{
  stateBeingRestored = self->_stateBeingRestored;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __50__SFPersonCollectionViewCell_updatePersonIconView__block_invoke;
  aBlock[3] = &unk_1E7EE3720;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  v5 = v4;
  if (stateBeingRestored)
  {
    (*(v4 + 2))(v4);
  }

  else
  {
    v6 = MEMORY[0x1E69DD250];
    v7 = [(SFPersonCollectionViewCell *)self imageView];
    [v6 transitionWithView:v7 duration:5242880 options:v5 animations:0 completion:0.200000003];
  }
}

void __50__SFPersonCollectionViewCell_updatePersonIconView__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) person];
  v3 = [v2 isClassroom];
  v4 = [*(a1 + 32) imageView];
  [v4 setImageIsSquare:v3];

  v5 = objc_alloc(MEMORY[0x1E69DCAB8]);
  v6 = [*(a1 + 32) person];
  v8 = [v5 initWithCGImage:{objc_msgSend(v6, "displayIcon")}];

  v7 = [*(a1 + 32) imageView];
  [v7 setImage:v8];
}

- (void)updateNameLabel
{
  v35[3] = *MEMORY[0x1E69E9840];
  person = self->_person;
  v4 = [MEMORY[0x1E695DF58] currentLocale];
  v5 = [(SFAirDropNode *)person displayNameForLocale:v4];

  if ((-[SFAirDropNode isMe](self->_person, "isMe") & 1) != 0 || (-[SFAirDropNode isUnknown](self->_person, "isUnknown") & 1) != 0 || (-[SFAirDropNode isClassroom](self->_person, "isClassroom") & 1) != 0 || (-[SFPersonCollectionViewCell traitCollection](self, "traitCollection"), v6 = objc_claimAutoreleasedReturnValue(), [v6 preferredContentSizeCategory], v7 = objc_claimAutoreleasedReturnValue(), v8 = UIContentSizeCategoryCompareToCategory(*MEMORY[0x1E69DDC58], v7), v7, v6, v8 == NSOrderedAscending))
  {
    if (([(SFAirDropNode *)self->_person isMe]& 1) != 0 || [(SFAirDropNode *)self->_person isUnknown])
    {
      v28 = [(SFPersonCollectionViewCell *)self traitCollection];
      v29 = [v28 preferredContentSizeCategory];
      v30 = UIContentSizeCategoryCompareToCategory(*MEMORY[0x1E69DDC58], v29);

      if (v30 != NSOrderedAscending)
      {
        v31 = SFNonBreakingStringFromDeviceName();

        v5 = v31;
      }
    }
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
    [v9 setLineBreakMode:0];
    [v9 setHyphenationFactor:0.0];
    [v9 setLineBreakStrategy:0xFFFFLL];
    [v9 setAlignment:1];
    v34[0] = *MEMORY[0x1E69DB650];
    v10 = [(UILabel *)self->_nameLabel textColor];
    v35[0] = v10;
    v34[1] = *MEMORY[0x1E69DB648];
    v11 = [(UILabel *)self->_nameLabel font];
    v35[1] = v11;
    v34[2] = *MEMORY[0x1E69DB688];
    v12 = [v9 copy];
    v35[2] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:3];

    v14 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v15 = [v5 componentsSeparatedByCharactersInSet:v14];

    if ([v15 count] == 2)
    {
      v16 = [v15 firstObject];
      v17 = [v15 lastObject];
      if ([v16 length] && objc_msgSend(v17, "length"))
      {
        v33 = v17;
        v18 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v16 attributes:v13];
        v19 = [(SFPersonCollectionViewCell *)self nameLabel];
        [v19 frame];
        v32 = v18;
        [v18 boundingRectWithSize:35 options:0 context:{v20, v21}];
        v37 = CGRectIntegral(v36);
        height = v37.size.height;

        v23 = [(SFPersonCollectionViewCell *)self nameLabel];
        v24 = [v23 font];
        [v24 lineHeight];
        *&v25 = v25;
        LODWORD(v18) = llroundf(*&v25);

        v26 = height;
        if (llroundf(v26) / v18 == 1)
        {
          v17 = v33;
          v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n%@", v16, v33];

          v5 = v27;
        }

        else
        {
          v17 = v33;
        }
      }
    }
  }

  [(UILabel *)self->_nameLabel setText:v5];
}

- (void)setSecondLabelText:(id)a3 withTextColor:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  v38[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [(SFPersonCollectionViewCell *)self traitCollection];
  v13 = [v12 preferredContentSizeCategory];
  v14 = UIContentSizeCategoryCompareToCategory(*MEMORY[0x1E69DDC58], v13);

  if ([v9 length])
  {
    if (v14 == NSOrderedAscending)
    {
      v15 = MEMORY[0x1E696ACD8];
      v16 = [(SFPersonCollectionViewCell *)self largeTextNameCenterYConstraint];
      v38[0] = v16;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];
      [v15 deactivateConstraints:v17];
    }

    v18 = MEMORY[0x1E696ACD8];
    v19 = [(SFPersonCollectionViewCell *)self secondLabelVisibleConstraintsArray];
    [v18 activateConstraints:v19];
    v20 = 0;
  }

  else
  {
    if (v14 == NSOrderedAscending)
    {
      v21 = MEMORY[0x1E696ACD8];
      v22 = [(SFPersonCollectionViewCell *)self largeTextNameCenterYConstraint];
      v37 = v22;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
      [v21 activateConstraints:v23];
    }

    v24 = MEMORY[0x1E696ACD8];
    v19 = [(SFPersonCollectionViewCell *)self secondLabelVisibleConstraintsArray];
    [v24 deactivateConstraints:v19];
    v20 = 4;
  }

  v25 = [(SFPersonCollectionViewCell *)self nameLabel];
  [v25 setLineBreakMode:v20];

  v26 = [(SFPersonCollectionViewCell *)self secondLabel];
  v27 = [v26 text];
  if (v9 | v27)
  {
    v28 = v27;
    v29 = [(SFPersonCollectionViewCell *)self secondLabel];
    v30 = [v29 text];
    v31 = [v30 isEqual:v9];

    if ((v31 & 1) == 0)
    {
      v32 = [(SFPersonCollectionViewCell *)self secondLabel];
      v33 = [v32 layer];
      [v33 removeAllAnimations];

      v34 = [(SFPersonCollectionViewCell *)self secondLabel];
      [v34 setAlpha:1.0];

      v35 = [(SFPersonCollectionViewCell *)self secondLabel];
      [v35 setText:v9];

      v36 = [(SFPersonCollectionViewCell *)self secondLabel];
      [v36 setTextColor:v10];

      [(SFPersonCollectionViewCell *)self setNeedsLayout];
      if (v11)
      {
        v11[2](v11, 1);
      }
    }
  }

  else
  {
  }
}

- (void)resetTransferState
{
  [(SFPersonCollectionViewCell *)self setCellState:0 animated:1 silent:1];

  [(SFPersonCollectionViewCell *)self updateNameLabel];
}

- (void)userDidSelect
{
  [(SFPersonCollectionViewCell *)self resetTransferState];

  [(SFPersonCollectionViewCell *)self setCellState:2 animated:1 silent:0];
}

- (void)userDidCancel
{
  if ((self->_cellState | 2) != 6)
  {
    [(NSProgress *)self->_progress cancel];
    [(SFAirDropNode *)self->_person cancelSend];
    [(SFPersonCollectionViewCell *)self setCellState:0 animated:1 silent:1];

    [(SFPersonCollectionViewCell *)self updateNameLabel];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [MEMORY[0x1E696AF00] mainThread];

  if (v13)
  {
    if ([v11 isEqual:self->_person])
    {
      [(SFPersonCollectionViewCell *)self handleKVOUpdateForPerson:self->_person keyPath:v10];
    }

    else if ([v11 isEqual:self->_progress])
    {
      [(SFPersonCollectionViewCell *)self handleKVOUpdateForProgress:self->_progress keyPath:v10];
    }

    else
    {
      v14 = airdrop_ui_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [SFPersonCollectionViewCell observeValueForKeyPath:v10 ofObject:v14 change:? context:?];
      }
    }
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77__SFPersonCollectionViewCell_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_1E7EE43A0;
    block[4] = self;
    v16 = v10;
    v17 = v11;
    v18 = v12;
    v19 = a6;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)addObserverOfValuesForKeyPaths:(id)a3 ofObject:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v6);
          }

          [v7 addObserver:self forKeyPath:*(*(&v12 + 1) + 8 * v11++) options:0 context:0];
        }

        while (v9 != v11);
        v9 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

- (void)removeObserverOfValuesForKeyPaths:(id)a3 ofObject:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v6);
          }

          [v7 removeObserver:self forKeyPath:*(*(&v12 + 1) + 8 * v11++)];
        }

        while (v9 != v11);
        v9 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

- (void)triggerKVOForKeyPaths:(id)a3 ofObject:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v6);
          }

          [(SFPersonCollectionViewCell *)self observeValueForKeyPath:*(*(&v12 + 1) + 8 * v11++) ofObject:v7 change:0 context:0];
        }

        while (v9 != v11);
        v9 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = SFPersonCollectionViewCell;
  v4 = a3;
  [(SFPersonCollectionViewCell *)&v8 traitCollectionDidChange:v4];
  v5 = [(SFPersonCollectionViewCell *)self traitCollection:v8.receiver];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v4 preferredContentSizeCategory];

  if (v6 != v7)
  {
    [(SFPersonCollectionViewCell *)self _updateForCurrentSizeCategory];
  }
}

- (void)_updateForCurrentSizeCategory
{
  v3 = [(SFPersonCollectionViewCell *)self traitCollection];
  rhs = [v3 preferredContentSizeCategory];

  v4 = UIContentSizeCategoryCompareToCategory(*MEMORY[0x1E69DDC58], rhs);
  v5 = [(SFPersonCollectionViewCell *)self _screen];
  v6 = _SFPersonLabelFont();

  v7 = [(SFPersonCollectionViewCell *)self secondLabel];
  [v7 setFont:v6];

  v8 = [(SFPersonCollectionViewCell *)self nameLabel];
  [v8 setFont:v6];

  v9 = [(SFPersonCollectionViewCell *)self labelForPositioning];
  [v9 setFont:v6];

  nameLabel = self->_nameLabel;
  if (v4 == NSOrderedAscending)
  {
    [(UILabel *)nameLabel setTextAlignment:4];
    [(UILabel *)self->_secondLabel setTextAlignment:4];
    v14 = MEMORY[0x1E696ACD8];
    v15 = [(SFPersonCollectionViewCell *)self regularConstraints];
    [v14 deactivateConstraints:v15];

    v13 = MEMORY[0x1E696ACD8];
    [(SFPersonCollectionViewCell *)self largeTextConstraints];
  }

  else
  {
    [(UILabel *)nameLabel setTextAlignment:1];
    [(UILabel *)self->_secondLabel setTextAlignment:1];
    v11 = MEMORY[0x1E696ACD8];
    v12 = [(SFPersonCollectionViewCell *)self largeTextConstraints];
    [v11 deactivateConstraints:v12];

    v13 = MEMORY[0x1E696ACD8];
    [(SFPersonCollectionViewCell *)self regularConstraints];
  }
  v16 = ;
  [v13 activateConstraints:v16];

  [(SFPersonCollectionViewCell *)self setNeedsLayout];
}

- (void)handleKVOUpdateForPerson:(id)a3 keyPath:(id)a4
{
  v5 = a4;
  if (([v5 isEqual:@"displayIcon"] & 1) != 0 || (objc_msgSend(v5, "isEqual:", @"monogram") & 1) != 0 || (objc_msgSend(v5, "isEqual:", @"unknown") & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"me"))
  {
    [(SFPersonCollectionViewCell *)self updatePersonIconView];
  }

  else if (([v5 isEqual:@"displayName"] & 1) != 0 || objc_msgSend(v5, "isEqual:", @"secondaryName"))
  {
    [(SFPersonCollectionViewCell *)self updateNameLabel];
  }
}

- (void)handleKVOUpdateForProgress:(id)a3 keyPath:(id)a4
{
  v5 = a4;
  stateBeingRestored = self->_stateBeingRestored;
  if ([v5 isEqualToString:@"userInfo.sendState"])
  {
    v7 = [(NSProgress *)self->_progress sf_transferState];
    if (v7 <= 2)
    {
      if (v7)
      {
        if (v7 == 1)
        {
          v15 = stateBeingRestored ^ 1;
          v16 = self;
          v17 = 1;
          goto LABEL_26;
        }

        if (v7 != 2)
        {
          goto LABEL_27;
        }
      }

      else
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained personCollectionViewCellDidStartTransfer:self];
      }

      v15 = stateBeingRestored ^ 1;
      v16 = self;
      v17 = 2;
LABEL_26:
      [(SFPersonCollectionViewCell *)v16 setCellState:v17 animated:v15 silent:stateBeingRestored];
      goto LABEL_27;
    }

    if (v7 <= 4)
    {
      if (v7 != 3)
      {
        v8 = airdrop_ui_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          [SFPersonCollectionViewCell handleKVOUpdateForProgress:? keyPath:?];
        }

        v9 = stateBeingRestored ^ 1;
        v10 = self;
        v11 = 5;
LABEL_23:
        [(SFPersonCollectionViewCell *)v10 setCellState:v11 animated:v9 silent:stateBeingRestored];
        [(SFCircleProgressView *)self->_circleProgressView setProgress:stateBeingRestored ^ 1 animated:0 completion:0.0];
        v13 = objc_loadWeakRetained(&self->_delegate);
        [v13 personCollectionViewCellDidTerminateTransfer:self];
        goto LABEL_24;
      }

      v15 = stateBeingRestored ^ 1;
      v16 = self;
      v17 = 3;
      goto LABEL_26;
    }

    if (v7 == 5)
    {
      v18 = airdrop_ui_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [SFPersonCollectionViewCell handleKVOUpdateForProgress:? keyPath:?];
      }

      v9 = stateBeingRestored ^ 1;
      v10 = self;
      v11 = 6;
      goto LABEL_23;
    }

    if (v7 == 6)
    {
      [(SFPersonCollectionViewCell *)self setCellState:4 animated:stateBeingRestored ^ 1 silent:stateBeingRestored];
      v13 = objc_loadWeakRetained(&self->_delegate);
      [v13 personCollectionViewCellDidFinishTransfer:self];
LABEL_24:
    }
  }

  else if ([v5 isEqualToString:@"fractionCompleted"])
  {
    circleProgressView = self->_circleProgressView;
    [(NSProgress *)self->_progress fractionCompleted];
    [(SFCircleProgressView *)circleProgressView setProgress:stateBeingRestored ^ 1 animated:0 completion:?];
  }

LABEL_27:
}

- (CGSize)calculatedContentSizeForSheetWidth:(double)a3 sizeCategory:(id)a4
{
  v5 = a4;
  v6 = [(SFPersonCollectionViewCell *)self _screen];
  v7 = _SFPersonLabelFont();

  ChickletSize = getChickletSize();
  v9 = v7;
  v10 = UIContentSizeCategoryCompareToCategory(v5, *MEMORY[0x1E69DDC60]);

  if (v10 == NSOrderedAscending)
  {
    v13 = 1.0;
  }

  else
  {
    [v9 pointSize];
    v12 = v11 / 11.0;
    if (v12 <= 2.0)
    {
      v13 = v12;
    }

    else
    {
      v13 = 2.0;
    }
  }

  [v9 ascender];
  v14 = [(SFPersonCollectionViewCell *)self nameLabel];
  v15 = [v14 text];
  v16 = v9;
  v17 = sNameLabel;
  if (!sNameLabel)
  {
    v18 = createNameLabel(*MEMORY[0x1E69DDC70]);
    v19 = sNameLabel;
    sNameLabel = v18;

    v17 = sNameLabel;
  }

  [v17 setFont:v16];
  [sNameLabel setText:v15];
  [sNameLabel sizeThatFits:{v13 * ChickletSize + 10.0, 1.79769313e308}];

  [v16 descender];
  v20 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v20 scale];
  UIRectIntegralWithScale();
  v22 = v21;
  v24 = v23;

  v25 = v22;
  v26 = v24;
  result.height = v26;
  result.width = v25;
  return result;
}

- (SFPersonCollectionViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)prepareHapticsPreWarm:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)prepareHapticsPreWarm:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)fireHapticsForState:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)fireHapticsForState:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)fireHapticsForState:.cold.3()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)fireHapticsForState:.cold.4()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)observeValueForKeyPath:(NSObject *)a3 ofObject:change:context:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  OUTLINED_FUNCTION_0_1();
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_1B9E4B000, a3, OS_LOG_TYPE_ERROR, "%@: incorrect object for keypath %@", v7, 0x16u);
}

- (void)handleKVOUpdateForProgress:(id *)a1 keyPath:.cold.1(id *a1)
{
  v1 = [*a1 sf_error];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1B9E4B000, v2, v3, "SFAirDropTransferProgressStateFailed with error: %@", v4, v5, v6, v7, v8);
}

- (void)handleKVOUpdateForProgress:(uint64_t)a1 keyPath:.cold.2(uint64_t a1)
{
  v1 = [*(a1 + 656) displayName];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1B9E4B000, v2, v3, "SFAirDropTransferProgressStateCanceled by: %@", v4, v5, v6, v7, v8);
}

@end