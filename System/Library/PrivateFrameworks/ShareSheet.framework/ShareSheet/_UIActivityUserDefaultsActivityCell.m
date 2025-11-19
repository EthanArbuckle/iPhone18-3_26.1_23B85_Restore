@interface _UIActivityUserDefaultsActivityCell
+ (id)bodyShortFont;
- (_UIActivityUserDefaultsActivityCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_updateImageDarkening;
- (void)layoutMarginsDidChange;
- (void)prepareForReuse;
- (void)setActivityProxy:(id)a3;
- (void)setDisabled:(BOOL)a3;
@end

@implementation _UIActivityUserDefaultsActivityCell

- (_UIActivityUserDefaultsActivityCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v98.receiver = self;
  v98.super_class = _UIActivityUserDefaultsActivityCell;
  v4 = [(_UIActivityUserDefaultsActivityCell *)&v98 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v6 = [MEMORY[0x1E69DC888] clearColor];
    [v5 setBackgroundColor:v6];

    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v5 setLineBreakMode:4];
    [v5 setAlpha:0.0];
    v7 = [objc_opt_class() bodyShortFont];
    [v5 setFont:v7];

    [(_UIActivityUserDefaultsActivityCell *)v4 setActivityTitleLabel:v5];
    v8 = [(_UIActivityUserDefaultsActivityCell *)v4 activityTitleLabel];
    [v8 setAccessibilityIdentifier:@"activityTitleLabel"];

    v9 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    [v9 setContentMode:1];
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_UIActivityUserDefaultsActivityCell *)v4 setActivityImageView:v9];
    v10 = [(_UIActivityUserDefaultsActivityCell *)v4 activityImageView];
    [v10 setAccessibilityIdentifier:@"activityImageView"];

    v97 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [v97 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_UIActivityUserDefaultsActivityCell *)v4 setActivityImageSlotView:v97];
    v96 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [v96 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_UIActivityUserDefaultsActivityCell *)v4 setActivityTitleView:v96];
    v11 = [(_UIActivityUserDefaultsActivityCell *)v4 contentView];
    [v11 setClipsToBounds:1];
    [v11 setAccessibilityIdentifier:@"activityCell"];
    v12 = [(_UIActivityUserDefaultsActivityCell *)v4 activityTitleLabel];
    [v11 addSubview:v12];

    v13 = [(_UIActivityUserDefaultsActivityCell *)v4 activityImageView];
    [v11 addSubview:v13];

    v14 = [(_UIActivityUserDefaultsActivityCell *)v4 activityImageSlotView];
    [v11 addSubview:v14];

    v15 = [(_UIActivityUserDefaultsActivityCell *)v4 activityTitleView];
    [v11 addSubview:v15];

    v16 = [MEMORY[0x1E695DF70] array];
    v17 = [(_UIActivityUserDefaultsActivityCell *)v4 activityImageView];
    v18 = [v17 leadingAnchor];
    v19 = [v11 leadingAnchor];
    v20 = [v18 constraintEqualToAnchor:v19 constant:17.0];
    [v16 addObject:v20];

    v21 = [(_UIActivityUserDefaultsActivityCell *)v4 activityTitleLabel];
    v22 = [v21 topAnchor];
    v23 = [v11 topAnchor];
    v24 = [v22 constraintEqualToAnchor:v23 constant:15.0];
    [v16 addObject:v24];

    v25 = [v11 bottomAnchor];
    v26 = [(_UIActivityUserDefaultsActivityCell *)v4 activityTitleLabel];
    v27 = [v26 bottomAnchor];
    v28 = [v25 constraintEqualToAnchor:v27 constant:15.0];
    [v16 addObject:v28];

    v29 = [(_UIActivityUserDefaultsActivityCell *)v4 activityTitleLabel];
    v30 = [v29 leadingAnchor];
    v31 = [(_UIActivityUserDefaultsActivityCell *)v4 activityImageView];
    v32 = [v31 trailingAnchor];
    v33 = [v30 constraintEqualToAnchor:v32 constant:14.0];
    [(_UIActivityUserDefaultsActivityCell *)v4 setLabelLeadingConstraint:v33];

    v34 = [(_UIActivityUserDefaultsActivityCell *)v4 labelLeadingConstraint];
    [v16 addObject:v34];

    v35 = [(_UIActivityUserDefaultsActivityCell *)v4 activityTitleLabel];
    v36 = [v35 trailingAnchor];
    v37 = [v11 trailingAnchor];
    v38 = [v36 constraintEqualToAnchor:v37 constant:-15.0];
    [v16 addObject:v38];

    v39 = [(_UIActivityUserDefaultsActivityCell *)v4 activityImageView];
    v40 = [v39 centerYAnchor];
    v41 = [v11 centerYAnchor];
    v42 = [v40 constraintEqualToAnchor:v41];
    [v16 addObject:v42];

    v43 = [(_UIActivityUserDefaultsActivityCell *)v4 activityImageView];
    v44 = [v43 widthAnchor];
    v45 = [v44 constraintEqualToConstant:29.0];
    [(_UIActivityUserDefaultsActivityCell *)v4 setImageViewWidthConstraint:v45];

    v46 = [(_UIActivityUserDefaultsActivityCell *)v4 imageViewWidthConstraint];
    [v16 addObject:v46];

    v47 = [(_UIActivityUserDefaultsActivityCell *)v4 activityImageView];
    v48 = [v47 heightAnchor];
    v49 = [v48 constraintEqualToConstant:29.0];
    [v16 addObject:v49];

    v50 = [(_UIActivityUserDefaultsActivityCell *)v4 activityImageSlotView];
    v51 = [v50 widthAnchor];
    v52 = [(_UIActivityUserDefaultsActivityCell *)v4 activityImageView];
    v53 = [v52 widthAnchor];
    v54 = [v51 constraintEqualToAnchor:v53];
    [v16 addObject:v54];

    v55 = [(_UIActivityUserDefaultsActivityCell *)v4 activityImageSlotView];
    v56 = [v55 heightAnchor];
    v57 = [(_UIActivityUserDefaultsActivityCell *)v4 activityImageView];
    v58 = [v57 heightAnchor];
    v59 = [v56 constraintEqualToAnchor:v58];
    [v16 addObject:v59];

    v60 = [(_UIActivityUserDefaultsActivityCell *)v4 activityImageSlotView];
    v61 = [v60 centerXAnchor];
    v62 = [(_UIActivityUserDefaultsActivityCell *)v4 activityImageView];
    v63 = [v62 centerXAnchor];
    v64 = [v61 constraintEqualToAnchor:v63];
    [v16 addObject:v64];

    v65 = [(_UIActivityUserDefaultsActivityCell *)v4 activityImageSlotView];
    v66 = [v65 centerYAnchor];
    v67 = [(_UIActivityUserDefaultsActivityCell *)v4 activityImageView];
    v68 = [v67 centerYAnchor];
    v69 = [v66 constraintEqualToAnchor:v68];
    [v16 addObject:v69];

    v70 = [(_UIActivityUserDefaultsActivityCell *)v4 activityTitleView];
    v71 = [v70 widthAnchor];
    v72 = [(_UIActivityUserDefaultsActivityCell *)v4 activityTitleLabel];
    v73 = [v72 widthAnchor];
    v74 = [v71 constraintEqualToAnchor:v73];
    [v16 addObject:v74];

    v75 = [(_UIActivityUserDefaultsActivityCell *)v4 activityTitleView];
    v76 = [v75 heightAnchor];
    v77 = [(_UIActivityUserDefaultsActivityCell *)v4 activityTitleLabel];
    v78 = [v77 heightAnchor];
    v79 = [v76 constraintEqualToAnchor:v78];
    [v16 addObject:v79];

    v80 = [(_UIActivityUserDefaultsActivityCell *)v4 activityTitleView];
    v81 = [v80 centerYAnchor];
    v82 = [(_UIActivityUserDefaultsActivityCell *)v4 activityTitleLabel];
    v83 = [v82 centerYAnchor];
    v84 = [v81 constraintEqualToAnchor:v83];
    [v16 addObject:v84];

    v85 = [(_UIActivityUserDefaultsActivityCell *)v4 activityTitleView];
    v86 = [v85 centerXAnchor];
    v87 = [(_UIActivityUserDefaultsActivityCell *)v4 activityTitleLabel];
    v88 = [v87 centerXAnchor];
    v89 = [v86 constraintEqualToAnchor:v88];
    [v16 addObject:v89];

    v90 = [(_UIActivityUserDefaultsActivityCell *)v4 activityTitleLabel];
    v91 = [v90 heightAnchor];
    v92 = [v91 constraintGreaterThanOrEqualToConstant:0.0];
    titleLabelHeightAnchor = v4->_titleLabelHeightAnchor;
    v4->_titleLabelHeightAnchor = v92;

    [(NSLayoutConstraint *)v4->_titleLabelHeightAnchor setActive:0];
    [v16 addObject:v4->_titleLabelHeightAnchor];
    [MEMORY[0x1E696ACD8] activateConstraints:v16];
    v94 = v4;
  }

  return v4;
}

+ (id)bodyShortFont
{
  v2 = MEMORY[0x1E69DB878];
  v3 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8] addingSymbolicTraits:0x8000 options:0];
  v4 = [v2 fontWithDescriptor:v3 size:0.0];

  return v4;
}

- (void)setActivityProxy:(id)a3
{
  v12 = a3;
  objc_storeStrong(&self->_activityProxy, a3);
  titleLabelHeightAnchor = self->_titleLabelHeightAnchor;
  if (v12)
  {
    [(NSLayoutConstraint *)titleLabelHeightAnchor constant];
    v7 = v6;
    v8 = [v12 activityTitle];
    [v8 slotTextHeight];
    v10 = v9 / _ShareSheetDeviceScreenScale();

    [(NSLayoutConstraint *)self->_titleLabelHeightAnchor setConstant:v10];
    [(NSLayoutConstraint *)self->_titleLabelHeightAnchor setActive:1];
    if (vabdd_f64(v7, v10) < 0.00000011920929)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v11 = [(NSLayoutConstraint *)titleLabelHeightAnchor isActive];
  [(NSLayoutConstraint *)self->_titleLabelHeightAnchor setActive:0];
  if (v11)
  {
LABEL_3:
    [(_UIActivityUserDefaultsActivityCell *)self setNeedsLayout];
  }

LABEL_4:
}

- (void)prepareForReuse
{
  v9.receiver = self;
  v9.super_class = _UIActivityUserDefaultsActivityCell;
  [(_UIActivityUserDefaultsActivityCell *)&v9 prepareForReuse];
  v3 = [(_UIActivityUserDefaultsActivityCell *)self activityImageSlotView];
  v4 = [v3 layer];
  [v4 setContents:0];

  v5 = [(_UIActivityUserDefaultsActivityCell *)self activityTitleView];
  v6 = [v5 layer];
  [v6 setContents:0];

  v7 = [(_UIActivityUserDefaultsActivityCell *)self activityTitleLabel];
  [v7 setText:0];

  v8 = [(_UIActivityUserDefaultsActivityCell *)self activityImageView];
  [v8 setImage:0];

  [(_UIActivityUserDefaultsActivityCell *)self setActivityProxy:0];
  [(_UIActivityUserDefaultsActivityCell *)self setDisabled:0];
}

- (void)setDisabled:(BOOL)a3
{
  if (self->_disabled != a3)
  {
    self->_disabled = a3;
    [(_UIActivityUserDefaultsActivityCell *)self _updateImageDarkening];
  }
}

- (void)_updateImageDarkening
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = [(_UIActivityUserDefaultsActivityCell *)self activityImageSlotView];
  v4 = [v3 layer];
  v5 = [v4 contents];

  v6 = [(_UIActivityUserDefaultsActivityCell *)self activityImageSlotView];
  v7 = [v6 layer];
  [v7 setContents:v5];

  if (([(_UIActivityUserDefaultsActivityCell *)self isHighlighted]& 1) != 0 || [(_UIActivityUserDefaultsActivityCell *)self isDisabled])
  {
    v6 = [MEMORY[0x1E69DC888] grayColor];
    v8 = [v6 CGColor];
    v9 = 1;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = [(_UIActivityUserDefaultsActivityCell *)self activityImageSlotView];
  v11 = [v10 layer];
  [v11 setContentsMultiplyColor:v8];

  if (v9)
  {
  }

  if (([(_UIActivityUserDefaultsActivityCell *)self isHighlighted]& 1) != 0 || [(_UIActivityUserDefaultsActivityCell *)self isDisabled])
  {
    v12 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CB0]];
    v13 = [MEMORY[0x1E69DC888] colorWithWhite:0.5 alpha:1.0];
    [v12 setValue:objc_msgSend(v13 forKey:{"CGColor"), @"inputColor"}];

    v17[0] = v12;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  }

  else
  {
    v14 = 0;
  }

  v15 = [(_UIActivityUserDefaultsActivityCell *)self activityImageView];
  v16 = [v15 layer];
  [v16 setFilters:v14];
}

- (void)layoutMarginsDidChange
{
  v3.receiver = self;
  v3.super_class = _UIActivityUserDefaultsActivityCell;
  [(_UIActivityUserDefaultsActivityCell *)&v3 layoutMarginsDidChange];
  if (_ShareSheetSolariumEnabled())
  {
    [(_UIActivityUserDefaultsActivityCell *)self directionalLayoutMargins];
    [(_UIActivityUserDefaultsActivityCell *)self setSeparatorInset:0.0, 60.0, 0.0];
  }
}

@end