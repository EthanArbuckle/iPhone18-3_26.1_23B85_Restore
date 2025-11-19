@interface UIActivityActionGroupCell
- (NSDirectionalEdgeInsets)_preferredSeparatorInsetsForProposedInsets:(NSDirectionalEdgeInsets)a3;
- (UIActivityActionGroupCell)initWithFrame:(CGRect)a3;
- (id)badgeView;
- (id)statusImageView;
- (id)subtitleLabel;
- (void)_updateBadgeWithText:(id)a3 textColor:(id)a4 backgroundColor:(id)a5;
- (void)_updateContentTintColor;
- (void)_updateImageView;
- (void)_updateStatusImageView;
- (void)_updateSubtitleLabel;
- (void)_updateTitleHeight;
- (void)_updateTitleView;
- (void)prepareForReuse;
- (void)setContentTintColor:(id)a3;
- (void)setDisabled:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setImage:(id)a3;
- (void)setImageSlotID:(unsigned int)a3;
- (void)setPlatterTextHeight:(double)a3;
- (void)setSelected:(BOOL)a3;
- (void)setStatusImage:(id)a3;
- (void)setStatusImageTintColor:(id)a3;
- (void)setSubtitle:(id)a3;
- (void)setTitle:(id)a3;
- (void)setTitleSlotID:(unsigned int)a3;
@end

@implementation UIActivityActionGroupCell

- (UIActivityActionGroupCell)initWithFrame:(CGRect)a3
{
  v160.receiver = self;
  v160.super_class = UIActivityActionGroupCell;
  v3 = [(UIActivityActionCell *)&v160 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(_UIActivityActionCellTitleLabel);
    v5 = [MEMORY[0x1E69DC888] clearColor];
    [(_UIActivityActionCellTitleLabel *)v4 setBackgroundColor:v5];

    [(_UIActivityActionCellTitleLabel *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_UIActivityActionCellTitleLabel *)v4 setLineBreakMode:4];
    [(_UIActivityActionCellTitleLabel *)v4 setAlpha:0.0];
    [(_UIActivityActionCellTitleLabel *)v4 setAccessibilityIdentifier:@"titleLabel"];
    [(UIActivityActionGroupCell *)v3 setTitleLabel:v4];
    v6 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    [v6 setContentMode:4];
    [v6 setAccessibilityIdentifier:@"activityImageView"];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v159 = v6;
    [(UIActivityActionGroupCell *)v3 setActivityImageView:v6];
    v7 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    v158 = v7;
    [(UIActivityActionGroupCell *)v3 setActivitySlotView:v7];
    v8 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    v157 = v8;
    [(UIActivityActionGroupCell *)v3 setTitleSlotView:v8];
    v9 = objc_alloc_init(MEMORY[0x1E69DCF90]);
    [v9 setAxis:1];
    [v9 setSpacing:-2.0];
    [v9 setAccessibilityIdentifier:@"titleStackView"];
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    v156 = v9;
    [(UIActivityActionGroupCell *)v3 setTitleStackView:v9];
    v10 = objc_alloc_init(MEMORY[0x1E69DCF90]);
    [v10 setAlignment:3];
    [v10 setSpacing:8.0];
    [v10 setAccessibilityIdentifier:@"imageStackView"];
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    v155 = v10;
    [(UIActivityActionGroupCell *)v3 setImageStackView:v10];
    v11 = [(UIActivityActionGroupCell *)v3 contentView];
    v12 = MEMORY[0x1E69DB878];
    v13 = *MEMORY[0x1E69DDCF8];
    v14 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8] addingSymbolicTraits:0x8000 options:0];
    v15 = [v12 fontWithDescriptor:v14 size:0.0];

    v16 = [(UIActivityActionGroupCell *)v3 traitCollection];
    v17 = [v16 preferredContentSizeCategory];

    [(UIActivityActionGroupCell *)v3 _legacyIconSizeForContentSizeCategory:v17];
    v19 = v18;
    v153 = v17;
    if (UIContentSizeCategoryIsAccessibilityCategory(v17))
    {
      v20 = MEMORY[0x1E69DB880];
      v21 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:{*MEMORY[0x1E69DDC40], v17}];
      v22 = [v20 preferredFontDescriptorWithTextStyle:v13 compatibleWithTraitCollection:v21];

      v23 = [v22 fontDescriptorWithSymbolicTraits:0x8000];

      v24 = [MEMORY[0x1E69DB878] fontWithDescriptor:v23 size:0.0];

      v15 = v24;
    }

    v25 = [(UIActivityActionGroupCell *)v3 titleStackView];
    v26 = [(UIActivityActionGroupCell *)v3 titleLabel];
    [v25 addArrangedSubview:v26];

    v27 = [(UIActivityActionGroupCell *)v3 imageStackView];
    v28 = [(UIActivityActionGroupCell *)v3 activityImageView];
    [v27 addArrangedSubview:v28];

    v29 = [(UIActivityActionGroupCell *)v3 titleStackView];
    [v11 addSubview:v29];

    v30 = [(UIActivityActionGroupCell *)v3 imageStackView];
    [v11 addSubview:v30];

    v31 = [(UIActivityActionGroupCell *)v3 activitySlotView];
    [v11 addSubview:v31];

    v32 = [(UIActivityActionGroupCell *)v3 titleSlotView];
    [v11 addSubview:v32];

    v33 = [MEMORY[0x1E695DF70] array];
    v34 = [v11 heightAnchor];
    v35 = [(UIActivityActionGroupCell *)v3 titleLabel];
    v36 = [v35 heightAnchor];
    v37 = [v34 constraintGreaterThanOrEqualToAnchor:v36 constant:30.0];
    [v33 addObject:v37];

    v38 = [(UIActivityActionGroupCell *)v3 titleSlotView];
    v39 = [v38 widthAnchor];
    v40 = [(UIActivityActionGroupCell *)v3 titleLabel];
    v41 = [v40 widthAnchor];
    v42 = [v39 constraintEqualToAnchor:v41];
    [v33 addObject:v42];

    v43 = [(UIActivityActionGroupCell *)v3 titleSlotView];
    v44 = [v43 heightAnchor];
    v45 = [(UIActivityActionGroupCell *)v3 titleLabel];
    v46 = [v45 heightAnchor];
    v47 = [v44 constraintEqualToAnchor:v46];
    [v33 addObject:v47];

    v48 = [(UIActivityActionGroupCell *)v3 titleSlotView];
    v49 = [v48 centerYAnchor];
    v50 = [(UIActivityActionGroupCell *)v3 titleLabel];
    v51 = [v50 centerYAnchor];
    v52 = [v49 constraintEqualToAnchor:v51];
    [v33 addObject:v52];

    v53 = [(UIActivityActionGroupCell *)v3 titleSlotView];
    v54 = [v53 centerXAnchor];
    v55 = [(UIActivityActionGroupCell *)v3 titleLabel];
    v56 = [v55 centerXAnchor];
    v57 = [v54 constraintEqualToAnchor:v56];
    [v33 addObject:v57];

    v58 = [(UIActivityActionGroupCell *)v3 imageStackView];
    v59 = [v58 heightAnchor];
    v60 = [v59 constraintEqualToConstant:v19];
    [v33 addObject:v60];

    v61 = [(UIActivityActionGroupCell *)v3 activityImageView];
    v62 = [v61 widthAnchor];
    v63 = [v62 constraintEqualToConstant:v19];
    [v33 addObject:v63];

    v64 = [(UIActivityActionGroupCell *)v3 activityImageView];
    v65 = [v64 heightAnchor];
    v66 = [v65 constraintEqualToConstant:v19];
    [v33 addObject:v66];

    v67 = [(UIActivityActionGroupCell *)v3 activitySlotView];
    v68 = [v67 centerXAnchor];
    v69 = [(UIActivityActionGroupCell *)v3 activityImageView];
    v70 = [v69 centerXAnchor];
    v71 = [v68 constraintEqualToAnchor:v70];
    [v33 addObject:v71];

    v72 = [(UIActivityActionGroupCell *)v3 activitySlotView];
    v73 = [v72 centerYAnchor];
    v74 = [v11 centerYAnchor];
    v75 = [v73 constraintEqualToAnchor:v74];
    [v33 addObject:v75];

    v76 = [(UIActivityActionGroupCell *)v3 activitySlotView];
    v77 = [v76 widthAnchor];
    v78 = [v77 constraintEqualToConstant:v19];
    [v33 addObject:v78];

    v79 = [(UIActivityActionGroupCell *)v3 activitySlotView];
    v80 = [v79 heightAnchor];
    v81 = [v80 constraintEqualToConstant:v19];
    [v33 addObject:v81];

    if (_ShareSheetSolariumEnabled())
    {
      v82 = [(UIActivityActionGroupCell *)v3 imageStackView];
      v83 = [v82 leadingAnchor];
      v84 = [v11 layoutMarginsGuide];
      v85 = [v84 leadingAnchor];
      v86 = [v83 constraintEqualToAnchor:v85];
      [v33 addObject:v86];

      v87 = [(UIActivityActionGroupCell *)v3 imageStackView];
      v88 = [v87 centerYAnchor];
      v89 = [v11 centerYAnchor];
      v90 = [v88 constraintEqualToAnchor:v89];
      [v33 addObject:v90];

      v91 = [(UIActivityActionGroupCell *)v3 titleStackView];
      v92 = [v91 leadingAnchor];
      v93 = [(UIActivityActionGroupCell *)v3 imageStackView];
      v94 = [v93 trailingAnchor];
      v95 = [v92 constraintEqualToAnchor:v94 constant:8.0];
      [v33 addObject:v95];

      v96 = [(UIActivityActionGroupCell *)v3 titleStackView];
      v97 = [v96 topAnchor];
      v98 = [v11 topAnchor];
      v99 = [v97 constraintGreaterThanOrEqualToAnchor:v98 constant:4.0];
      [v33 addObject:v99];

      v100 = [v11 bottomAnchor];
      v101 = [(UIActivityActionGroupCell *)v3 titleStackView];
      v102 = [v101 bottomAnchor];
      v103 = [v100 constraintGreaterThanOrEqualToAnchor:v102 constant:4.0];
      [v33 addObject:v103];

      v104 = [(UIActivityActionGroupCell *)v3 titleStackView];
      v105 = [v104 centerYAnchor];
      v106 = [v11 centerYAnchor];
      v107 = [v105 constraintEqualToAnchor:v106];
      [v33 addObject:v107];

      v108 = [(UIActivityActionGroupCell *)v3 titleStackView];
      v109 = [v108 trailingAnchor];
      v110 = [v11 layoutMarginsGuide];
      v111 = [v110 trailingAnchor];
      v112 = [v109 constraintEqualToAnchor:v111];
      [v33 addObject:v112];
    }

    else
    {
      v113 = [(UIActivityActionGroupCell *)v3 titleStackView];
      v114 = [v113 leadingAnchor];
      v115 = [v11 layoutMarginsGuide];
      v116 = [v115 leadingAnchor];
      v117 = [v114 constraintEqualToAnchor:v116];
      [v33 addObject:v117];

      v118 = [(UIActivityActionGroupCell *)v3 titleStackView];
      v119 = [v118 topAnchor];
      v120 = [v11 topAnchor];
      v121 = [v119 constraintGreaterThanOrEqualToAnchor:v120 constant:4.0];
      [v33 addObject:v121];

      v122 = [v11 bottomAnchor];
      v123 = [(UIActivityActionGroupCell *)v3 titleStackView];
      v124 = [v123 bottomAnchor];
      v125 = [v122 constraintGreaterThanOrEqualToAnchor:v124 constant:4.0];
      [v33 addObject:v125];

      v126 = [(UIActivityActionGroupCell *)v3 titleStackView];
      v127 = [v126 centerYAnchor];
      v128 = [v11 centerYAnchor];
      v129 = [v127 constraintEqualToAnchor:v128];
      [v33 addObject:v129];

      v130 = [(UIActivityActionGroupCell *)v3 imageStackView];
      v131 = [v130 leadingAnchor];
      v132 = [(UIActivityActionGroupCell *)v3 titleStackView];
      v133 = [v132 trailingAnchor];
      v134 = [v131 constraintEqualToAnchor:v133 constant:16.0];
      [v33 addObject:v134];

      v135 = [v11 trailingAnchor];
      v136 = [(UIActivityActionGroupCell *)v3 imageStackView];
      v137 = [v136 trailingAnchor];
      [v15 lineHeight];
      v139 = [v135 constraintEqualToAnchor:v137 constant:v138 + 6.0 + v19 * -0.5];
      [v33 addObject:v139];

      v140 = [(UIActivityActionGroupCell *)v3 imageStackView];
      v141 = [v140 centerYAnchor];
      v142 = [v11 centerYAnchor];
      v143 = [v141 constraintEqualToAnchor:v142];
      [v33 addObject:v143];

      v108 = [v11 trailingAnchor];
      v109 = [(UIActivityActionGroupCell *)v3 activitySlotView];
      v110 = [v109 centerXAnchor];
      [v15 lineHeight];
      v111 = [v108 constraintEqualToAnchor:v110 constant:v144 + 6.0];
      [v33 addObject:v111];
    }

    v145 = [(UIActivityActionGroupCell *)v3 titleLabel];
    v146 = [v145 heightAnchor];
    v147 = [v146 constraintGreaterThanOrEqualToConstant:0.0];
    titleLabelHeightAnchor = v3->_titleLabelHeightAnchor;
    v3->_titleLabelHeightAnchor = v147;

    [(NSLayoutConstraint *)v3->_titleLabelHeightAnchor setActive:0];
    [v33 addObject:v3->_titleLabelHeightAnchor];
    v149 = [v11 heightAnchor];
    v150 = [v149 constraintEqualToConstant:0.0];

    LODWORD(v151) = 1132068864;
    [v150 setPriority:v151];
    [v33 addObject:v150];
    [MEMORY[0x1E696ACD8] activateConstraints:v33];
  }

  return v3;
}

- (NSDirectionalEdgeInsets)_preferredSeparatorInsetsForProposedInsets:(NSDirectionalEdgeInsets)a3
{
  trailing = a3.trailing;
  bottom = a3.bottom;
  leading = a3.leading;
  top = a3.top;
  if (_ShareSheetSolariumEnabled())
  {
    [(UIActivityActionGroupCell *)self layoutIfNeeded];
    v8 = [(UIActivityActionGroupCell *)self traitCollection];
    v9 = [v8 layoutDirection];

    if (v9 == 1)
    {
      [(UIActivityActionGroupCell *)self bounds];
      Width = CGRectGetWidth(v16);
      v11 = [(UIActivityActionGroupCell *)self titleStackView];
      [v11 frame];
      leading = Width - CGRectGetMaxX(v17);
    }

    else
    {
      v11 = [(UIActivityActionGroupCell *)self titleStackView];
      [v11 frame];
      leading = CGRectGetMinX(v18);
    }
  }

  v12 = top;
  v13 = leading;
  v14 = bottom;
  v15 = trailing;
  result.trailing = v15;
  result.bottom = v14;
  result.leading = v13;
  result.top = v12;
  return result;
}

- (id)subtitleLabel
{
  v3 = [(UIActivityActionGroupCell *)self subtitleLabelIfLoaded];

  if (!v3)
  {
    v4 = objc_alloc_init(_UIActivityActionCellTitleLabel);
    [(_UIActivityActionCellTitleLabel *)v4 setTextStyle:*MEMORY[0x1E69DDD80]];
    v5 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(_UIActivityActionCellTitleLabel *)v4 setTextColor:v5];

    v6 = [MEMORY[0x1E69DC888] clearColor];
    [(_UIActivityActionCellTitleLabel *)v4 setBackgroundColor:v6];

    [(_UIActivityActionCellTitleLabel *)v4 setLineBreakMode:4];
    [(_UIActivityActionCellTitleLabel *)v4 setAlpha:0.0];
    [(_UIActivityActionCellTitleLabel *)v4 setHidden:1];
    [(UIStackView *)self->_titleStackView addArrangedSubview:v4];
    [(UIActivityActionGroupCell *)self setSubtitleLabelIfLoaded:v4];
  }

  return [(UIActivityActionGroupCell *)self subtitleLabelIfLoaded];
}

- (id)badgeView
{
  v3 = [(UIActivityActionGroupCell *)self badgeViewIfLoaded];

  if (!v3)
  {
    v4 = objc_alloc_init(_UIActivityActionCellBadgeView);
    [(_UIActivityActionCellBadgeView *)v4 setAlpha:0.0];
    [(_UIActivityActionCellBadgeView *)v4 setHidden:1];
    v5 = [(UIActivityActionGroupCell *)self imageStackView];
    [v5 insertArrangedSubview:v4 atIndex:0];

    [(UIActivityActionGroupCell *)self setBadgeViewIfLoaded:v4];
  }

  return [(UIActivityActionGroupCell *)self badgeViewIfLoaded];
}

- (id)statusImageView
{
  v3 = [(UIActivityActionGroupCell *)self statusImageViewIfLoaded];

  if (!v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    v5 = [MEMORY[0x1E69DCAD8] configurationWithScale:1];
    [v4 setPreferredSymbolConfiguration:v5];

    [v4 setContentMode:4];
    [v4 setAlpha:0.0];
    [v4 setHidden:1];
    LODWORD(v6) = 1144766464;
    [v4 setContentHuggingPriority:0 forAxis:v6];
    v7 = [(UIActivityActionGroupCell *)self imageStackView];
    v8 = [(UIActivityActionGroupCell *)self badgeViewIfLoaded];
    [v7 insertArrangedSubview:v4 atIndex:v8 != 0];

    [(UIActivityActionGroupCell *)self setStatusImageViewIfLoaded:v4];
  }

  return [(UIActivityActionGroupCell *)self statusImageViewIfLoaded];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = UIActivityActionGroupCell;
  [(UIActivityActionCell *)&v4 prepareForReuse];
  v3 = [(UIActivityActionGroupCell *)self imageStackView];
  [v3 setNeedsLayout];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIActivityActionGroupCell *)self activitySlotView];
  v6 = [v5 layer];
  v7 = [v6 contents];

  v8 = [(UIActivityActionGroupCell *)self titleSlotView];
  v9 = [v8 layer];
  v10 = [v9 contents];

  v15.receiver = self;
  v15.super_class = UIActivityActionGroupCell;
  [(UIActivityActionCell *)&v15 setHighlighted:v3];
  v11 = [(UIActivityActionGroupCell *)self activitySlotView];
  v12 = [v11 layer];
  [v12 setContents:v7];

  v13 = [(UIActivityActionGroupCell *)self titleSlotView];
  v14 = [v13 layer];
  [v14 setContents:v10];
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIActivityActionGroupCell *)self activitySlotView];
  v6 = [v5 layer];
  v7 = [v6 contents];

  v8 = [(UIActivityActionGroupCell *)self titleSlotView];
  v9 = [v8 layer];
  v10 = [v9 contents];

  v15.receiver = self;
  v15.super_class = UIActivityActionGroupCell;
  [(UIActivityActionGroupCell *)&v15 setSelected:v3];
  v11 = [(UIActivityActionGroupCell *)self activitySlotView];
  v12 = [v11 layer];
  [v12 setContents:v7];

  v13 = [(UIActivityActionGroupCell *)self titleSlotView];
  v14 = [v13 layer];
  [v14 setContents:v10];
}

- (void)setDisabled:(BOOL)a3
{
  v3 = a3;
  v10.receiver = self;
  v10.super_class = UIActivityActionGroupCell;
  [(UIActivityActionCell *)&v10 setDisabled:?];
  if (v3)
  {
    v5 = 0.4;
  }

  else
  {
    v5 = 1.0;
  }

  v6 = [(UIActivityActionGroupCell *)self titleStackView];
  [v6 setAlpha:v5];

  v7 = [(UIActivityActionGroupCell *)self imageStackView];
  [v7 setAlpha:v5];

  v8 = [(UIActivityActionGroupCell *)self activitySlotView];
  [v8 setAlpha:v5];

  v9 = [(UIActivityActionGroupCell *)self titleSlotView];
  [v9 setAlpha:v5];
}

- (void)setTitle:(id)a3
{
  v5 = a3;
  title = self->_title;
  v9 = v5;
  v7 = title;
  if (v7 == v9)
  {

    goto LABEL_8;
  }

  if ((v9 != 0) == (v7 == 0))
  {

    goto LABEL_7;
  }

  v8 = [(NSString *)v9 isEqual:v7];

  if ((v8 & 1) == 0)
  {
LABEL_7:
    objc_storeStrong(&self->_title, a3);
    [(UIActivityActionGroupCell *)self _updateTitleView];
  }

LABEL_8:
}

- (void)setSubtitle:(id)a3
{
  v5 = a3;
  subtitle = self->_subtitle;
  v9 = v5;
  v7 = subtitle;
  if (v7 == v9)
  {

    goto LABEL_8;
  }

  if ((v9 != 0) == (v7 == 0))
  {

    goto LABEL_7;
  }

  v8 = [(NSString *)v9 isEqual:v7];

  if ((v8 & 1) == 0)
  {
LABEL_7:
    objc_storeStrong(&self->_subtitle, a3);
    [(UIActivityActionGroupCell *)self _updateSubtitleLabel];
  }

LABEL_8:
}

- (void)setImage:(id)a3
{
  v5 = a3;
  if (self->_image != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_image, a3);
    [(UIActivityActionGroupCell *)self _updateImageView];
    v5 = v6;
  }
}

- (void)setStatusImage:(id)a3
{
  v5 = a3;
  if (self->_statusImage != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_statusImage, a3);
    [(UIActivityActionGroupCell *)self _updateStatusImageView];
    v5 = v6;
  }
}

- (void)setStatusImageTintColor:(id)a3
{
  v5 = a3;
  if (self->_statusImageTintColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_statusImageTintColor, a3);
    [(UIActivityActionGroupCell *)self _updateStatusImageView];
    v5 = v6;
  }
}

- (void)setImageSlotID:(unsigned int)a3
{
  if (self->_imageSlotID != a3)
  {
    self->_imageSlotID = a3;
    [(UIActivityActionGroupCell *)self _updateImageView];
  }
}

- (void)setTitleSlotID:(unsigned int)a3
{
  if (self->_titleSlotID != a3)
  {
    self->_titleSlotID = a3;
    [(UIActivityActionGroupCell *)self _updateTitleView];
  }
}

- (void)setPlatterTextHeight:(double)a3
{
  if (self->_platterTextHeight != a3)
  {
    self->_platterTextHeight = a3;
    [(UIActivityActionGroupCell *)self _updateTitleHeight];
  }
}

- (void)setContentTintColor:(id)a3
{
  v5 = a3;
  if (self->_contentTintColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_contentTintColor, a3);
    [(UIActivityActionGroupCell *)self _updateContentTintColor];
    v5 = v6;
  }
}

- (void)_updateContentTintColor
{
  v3 = [(UIActivityActionGroupCell *)self contentTintColor];
  v4 = [(UIActivityActionGroupCell *)self titleLabel];
  [v4 setTextColor:v3];

  v5 = [(UIActivityActionGroupCell *)self contentTintColor];
  v6 = [(UIActivityActionGroupCell *)self activityImageView];
  [v6 setTintColor:v5];

  v11 = [(UIActivityActionGroupCell *)self contentTintColor];
  v7 = v11;
  v8 = [v11 CGColor];
  v9 = [(UIActivityActionGroupCell *)self activitySlotView];
  v10 = [v9 layer];
  [v10 setContentsMultiplyColor:v8];
}

- (void)_updateSubtitleLabel
{
  v3 = [(UIActivityActionGroupCell *)self subtitle];
  v4 = [v3 length];

  v5 = [(UIActivityActionGroupCell *)self subtitle];
  v6 = [(UIActivityActionGroupCell *)self subtitleLabel];
  [v6 setText:v5];

  v7 = v4 == 0;
  if (v4)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = 0.0;
  }

  v9 = [(UIActivityActionGroupCell *)self subtitleLabel];
  [v9 setAlpha:v8];

  v10 = [(UIActivityActionGroupCell *)self subtitleLabel];
  [v10 setHidden:v7];
}

- (void)_updateBadgeWithText:(id)a3 textColor:(id)a4 backgroundColor:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 length];
  v12 = [(UIActivityActionGroupCell *)self badgeView];
  v13 = [v12 titleLabel];
  [v13 setText:v10];

  v14 = [(UIActivityActionGroupCell *)self badgeView];
  v15 = [v14 titleLabel];
  [v15 setTextColor:v9];

  v16 = [(UIActivityActionGroupCell *)self badgeView];
  [v16 setBackgroundColor:v8];

  v17 = v11 == 0;
  if (v11)
  {
    v18 = 1.0;
  }

  else
  {
    v18 = 0.0;
  }

  v19 = [(UIActivityActionGroupCell *)self badgeView];
  [v19 setAlpha:v18];

  v20 = [(UIActivityActionGroupCell *)self badgeView];
  [v20 setHidden:v17];
}

- (void)_updateImageView
{
  v3 = [(UIActivityActionGroupCell *)self image];

  v4 = [(UIActivityActionGroupCell *)self image];
  v5 = [(UIActivityActionGroupCell *)self activityImageView];
  [v5 setImage:v4];

  if (v3)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = 0.0;
  }

  v7 = [(UIActivityActionGroupCell *)self activityImageView];
  [v7 setAlpha:v6];

  v8 = [(UIActivityActionGroupCell *)self imageSlotID];
  if (v8)
  {
    v9 = [MEMORY[0x1E6979320] objectForSlot:{-[UIActivityActionGroupCell imageSlotID](self, "imageSlotID")}];
    v10 = *MEMORY[0x1E6979DE0];
    v11 = [(UIActivityActionGroupCell *)self activitySlotView];
    v12 = [v11 layer];
    [v12 setContentsGravity:v10];

    v13 = [(UIActivityActionGroupCell *)self activitySlotView];
    v14 = [v13 layer];
    [v14 setContents:v9];
  }

  else
  {
    v9 = [(UIActivityActionGroupCell *)self activitySlotView];
    v13 = [v9 layer];
    [v13 setContents:0];
  }

  if (v8)
  {
    v15 = 1.0;
  }

  else
  {
    v15 = 0.0;
  }

  v16 = [(UIActivityActionGroupCell *)self activitySlotView];
  [v16 setAlpha:v15];
}

- (void)_updateStatusImageView
{
  v3 = [(UIActivityActionGroupCell *)self statusImage];

  v4 = [(UIActivityActionGroupCell *)self statusImage];
  v5 = [(UIActivityActionGroupCell *)self statusImageView];
  [v5 setImage:v4];

  v6 = v3 == 0;
  v7 = v3 == 0;
  if (v6)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = 1.0;
  }

  v9 = [(UIActivityActionGroupCell *)self statusImageView];
  [v9 setAlpha:v8];

  v10 = [(UIActivityActionGroupCell *)self statusImageView];
  [v10 setHidden:v7];

  v12 = [(UIActivityActionGroupCell *)self statusImageTintColor];
  v11 = [(UIActivityActionGroupCell *)self statusImageView];
  [v11 setTintColor:v12];
}

- (void)_updateTitleView
{
  v3 = [(UIActivityActionGroupCell *)self title];
  v4 = [v3 length];

  v5 = [(UIActivityActionGroupCell *)self title];
  v6 = [(UIActivityActionGroupCell *)self titleLabel];
  [v6 setText:v5];

  if (v4)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  v8 = [(UIActivityActionGroupCell *)self titleLabel];
  [v8 setAlpha:v7];

  v9 = [(UIActivityActionGroupCell *)self titleSlotID];
  if (v9)
  {
    v10 = [(UIActivityActionGroupCell *)self traitCollection];
    v11 = [v10 layoutDirection];

    v12 = MEMORY[0x1E6979DF8];
    if (v11 != 1)
    {
      v12 = MEMORY[0x1E6979DD8];
    }

    v13 = MEMORY[0x1E6979320];
    v14 = *v12;
    v15 = [v13 objectForSlot:{-[UIActivityActionGroupCell titleSlotID](self, "titleSlotID")}];
    v16 = _ShareSheetDeviceScreenScale();
    v17 = [(UIActivityActionGroupCell *)self titleSlotView];
    v18 = [v17 layer];
    [v18 setContentsScale:v16];

    v19 = _ShareSheetDeviceScreenScale();
    v20 = [(UIActivityActionGroupCell *)self titleSlotView];
    v21 = [v20 layer];
    [v21 setRasterizationScale:v19];

    v22 = [(UIActivityActionGroupCell *)self titleSlotView];
    v23 = [v22 layer];
    [v23 setContentsGravity:v14];

    v24 = [(UIActivityActionGroupCell *)self titleSlotView];
    v25 = [v24 layer];
    [v25 setContents:v15];
  }

  else
  {
    v15 = [(UIActivityActionGroupCell *)self titleSlotView];
    v24 = [v15 layer];
    [v24 setContents:0];
  }

  if (v9)
  {
    v26 = 1.0;
  }

  else
  {
    v26 = 0.0;
  }

  v27 = [(UIActivityActionGroupCell *)self titleSlotView];
  [v27 setAlpha:v26];
}

- (void)_updateTitleHeight
{
  [(NSLayoutConstraint *)self->_titleLabelHeightAnchor constant];
  v4 = v3;
  [(UIActivityActionGroupCell *)self platterTextHeight];
  v6 = v5 / _ShareSheetDeviceScreenScale();
  [(NSLayoutConstraint *)self->_titleLabelHeightAnchor setConstant:v6];
  [(NSLayoutConstraint *)self->_titleLabelHeightAnchor setActive:v6 > 0.0];
  if (vabdd_f64(v4, v6) >= 0.00000011920929)
  {

    [(UIActivityActionGroupCell *)self setNeedsLayout];
  }
}

@end