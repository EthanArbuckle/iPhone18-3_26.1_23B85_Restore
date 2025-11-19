@interface _UIMagicHeadCollectionViewCell
- (void)_setupConstraints;
- (void)_updateMHForCurrentSizeCategory;
- (void)configureLayoutIfNeeded:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateDarkening;
@end

@implementation _UIMagicHeadCollectionViewCell

- (void)configureLayoutIfNeeded:(id)a3
{
  v16.receiver = self;
  v16.super_class = _UIMagicHeadCollectionViewCell;
  v4 = a3;
  [(UIAirDropGroupActivityCell *)&v16 configureLayoutIfNeeded:v4];
  v5 = [v4 deviceClass];

  v6 = &regularHeight_0;
  if ((v5 & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    v6 = &compactHeight;
  }

  if (v5 == 3)
  {
    v6 = &regularHeight5_8Rounded_0;
  }

  layout_0 = v6;
  v7 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [(_UIMagicHeadCollectionViewCell *)self setMagicHeadView:v7];

  v8 = [(_UIMagicHeadCollectionViewCell *)self magicHeadView];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

  v9 = [(_UIMagicHeadCollectionViewCell *)self magicHeadView];
  [v9 setAlpha:1.0];

  v10 = [(_UIMagicHeadCollectionViewCell *)self magicHeadView];
  [v10 setAccessibilityIdentifier:@"magicHeadView"];

  v11 = [(_UIMagicHeadCollectionViewCell *)self contentView];
  v12 = [(_UIMagicHeadCollectionViewCell *)self magicHeadView];
  [v11 addSubview:v12];

  v13 = [(_UIMagicHeadCollectionViewCell *)self contentView];
  v14 = [(UIAirDropGroupActivityCell *)self transportSlotView];
  [v13 bringSubviewToFront:v14];

  v15 = [(_UIMagicHeadCollectionViewCell *)self contentView];
  [v15 setAccessibilityIdentifier:@"magicHeadCell.contentView"];

  [(_UIMagicHeadCollectionViewCell *)self _setupConstraints];
}

- (void)_setupConstraints
{
  v43[2] = *MEMORY[0x1E69E9840];
  v40 = [(_UIMagicHeadCollectionViewCell *)self contentView];
  v3 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v3 _referenceBounds];
  if (v4 >= 414.0)
  {
    v6 = [MEMORY[0x1E69DC938] currentDevice];
    v7 = [v6 userInterfaceIdiom];

    if ((v7 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v5 = 80.0;
    }

    else
    {
      v5 = 84.0;
    }
  }

  else
  {
    v5 = 80.0;
  }

  v8 = MEMORY[0x1E695DF70];
  v9 = [(_UIMagicHeadCollectionViewCell *)self magicHeadView];
  v10 = [v9 widthAnchor];
  v11 = [v10 constraintEqualToConstant:v5];
  v43[0] = v11;
  v12 = [(_UIMagicHeadCollectionViewCell *)self magicHeadView];
  v13 = [v12 heightAnchor];
  v14 = [v13 constraintEqualToConstant:v5];
  v43[1] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:2];
  v39 = [v8 arrayWithArray:v15];

  v16 = [(_UIMagicHeadCollectionViewCell *)self traitCollection];
  v17 = [v16 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v17);

  v37 = [(_UIMagicHeadCollectionViewCell *)self magicHeadView];
  v18 = [v37 centerYAnchor];
  v19 = [v40 centerYAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];
  v42[0] = v20;
  v21 = [(_UIMagicHeadCollectionViewCell *)self magicHeadView];
  v22 = [v21 centerXAnchor];
  v23 = [(UIAirDropGroupActivityCell *)self imageSlotView];
  v24 = [v23 centerXAnchor];
  v25 = [v22 constraintEqualToAnchor:v24];
  v42[1] = v25;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:2];
  [(_UIMagicHeadCollectionViewCell *)self setLargeTextMHConstraints:v26];

  v27 = [(_UIMagicHeadCollectionViewCell *)self magicHeadView];
  v28 = [v27 topAnchor];
  v29 = [v40 topAnchor];
  v30 = [v28 constraintEqualToAnchor:v29 constant:*layout_0 + -9.0];
  v41[0] = v30;
  v31 = [(_UIMagicHeadCollectionViewCell *)self magicHeadView];
  v32 = [v31 centerXAnchor];
  v33 = [v40 centerXAnchor];
  v34 = [v32 constraintEqualToAnchor:v33];
  v41[1] = v34;
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:2];
  [(_UIMagicHeadCollectionViewCell *)self setRegularMHConstraints:v35];

  if (IsAccessibilityCategory)
  {
    [(_UIMagicHeadCollectionViewCell *)self largeTextMHConstraints];
  }

  else
  {
    [(_UIMagicHeadCollectionViewCell *)self regularMHConstraints];
  }
  v36 = ;
  [v39 addObjectsFromArray:v36];

  [MEMORY[0x1E696ACD8] activateConstraints:v39];
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = _UIMagicHeadCollectionViewCell;
  v4 = a3;
  [(UIAirDropGroupActivityCell *)&v8 traitCollectionDidChange:v4];
  v5 = [(_UIMagicHeadCollectionViewCell *)self traitCollection:v8.receiver];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v4 preferredContentSizeCategory];

  if (v6 != v7)
  {
    [(_UIMagicHeadCollectionViewCell *)self _updateMHForCurrentSizeCategory];
  }
}

- (void)_updateMHForCurrentSizeCategory
{
  v3 = [(_UIMagicHeadCollectionViewCell *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v4);

  v6 = MEMORY[0x1E696ACD8];
  if (IsAccessibilityCategory)
  {
    v7 = [(_UIMagicHeadCollectionViewCell *)self regularMHConstraints];
    [v6 deactivateConstraints:v7];

    v8 = MEMORY[0x1E696ACD8];
    [(_UIMagicHeadCollectionViewCell *)self largeTextMHConstraints];
  }

  else
  {
    v9 = [(_UIMagicHeadCollectionViewCell *)self largeTextMHConstraints];
    [v6 deactivateConstraints:v9];

    v8 = MEMORY[0x1E696ACD8];
    [(_UIMagicHeadCollectionViewCell *)self regularMHConstraints];
  }
  v10 = ;
  [v8 activateConstraints:v10];

  [(_UIMagicHeadCollectionViewCell *)self layoutIfNeeded];
}

- (void)updateDarkening
{
  v3 = [(UIAirDropGroupActivityCell *)self imageSlotView];
  v4 = [v3 layer];
  v31 = [v4 contents];

  v5 = [(UIAirDropGroupActivityCell *)self titleSlotView];
  v6 = [v5 layer];
  v7 = [v6 contents];

  v8 = [(UIAirDropGroupActivityCell *)self transportSlotView];
  v9 = [v8 layer];
  v10 = [v9 contents];

  v11 = [(UIAirDropGroupActivityCell *)self imageSlotView];
  v12 = [v11 layer];
  [v12 setContents:v31];

  v13 = [(UIAirDropGroupActivityCell *)self titleSlotView];
  v14 = [v13 layer];
  [v14 setContents:v7];

  v15 = [(UIAirDropGroupActivityCell *)self transportSlotView];
  v16 = [v15 layer];
  [v16 setContents:v10];

  if (([(_UIMagicHeadCollectionViewCell *)self isHighlighted]& 1) != 0 || [(UIAirDropGroupActivityCell *)self isDisabled])
  {
    v15 = [MEMORY[0x1E69DC888] grayColor];
    v17 = [v15 CGColor];
    v18 = 1;
  }

  else
  {
    v18 = 0;
    v17 = 0;
  }

  v19 = [(UIAirDropGroupActivityCell *)self imageSlotView];
  v20 = [v19 layer];
  [v20 setContentsMultiplyColor:v17];

  if (v18)
  {
  }

  if (([(_UIMagicHeadCollectionViewCell *)self isHighlighted]& 1) != 0 || [(UIAirDropGroupActivityCell *)self isDisabled])
  {
    v15 = [MEMORY[0x1E69DC888] grayColor];
    v21 = [v15 CGColor];
    v22 = 1;
  }

  else
  {
    v22 = 0;
    v21 = 0;
  }

  v23 = [(UIAirDropGroupActivityCell *)self transportSlotView];
  v24 = [v23 layer];
  [v24 setContentsMultiplyColor:v21];

  if (v22)
  {
  }

  if (([(_UIMagicHeadCollectionViewCell *)self isHighlighted]& 1) != 0 || [(UIAirDropGroupActivityCell *)self isDisabled])
  {
    v15 = [MEMORY[0x1E69DC888] grayColor];
    v25 = [v15 CGColor];
    v26 = 1;
  }

  else
  {
    v26 = 0;
    v25 = 0;
  }

  v27 = [(_UIMagicHeadCollectionViewCell *)self magicHeadWheelView];
  v28 = [v27 selectedHead];
  v29 = [v28 imageSlotView];
  v30 = [v29 layer];
  [v30 setContentsMultiplyColor:v25];

  if (v26)
  {
  }
}

@end