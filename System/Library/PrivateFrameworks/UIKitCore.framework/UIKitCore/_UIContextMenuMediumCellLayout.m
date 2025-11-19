@interface _UIContextMenuMediumCellLayout
- (BOOL)_hasTitle;
- (UIShape)contentShape;
- (_UIContextMenuCellContentView)contentView;
- (_UIContextMenuMediumCellLayout)initWithContentView:(id)a3;
- (id)_currentPlatformMetrics;
- (id)preferredIconFontUsingBoldFont:(BOOL)a3;
- (void)installConstraints;
- (void)removeConstraints;
- (void)updateConstraints;
@end

@implementation _UIContextMenuMediumCellLayout

- (_UIContextMenuMediumCellLayout)initWithContentView:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _UIContextMenuMediumCellLayout;
  v5 = [(_UIContextMenuMediumCellLayout *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(_UIContextMenuMediumCellLayout *)v5 setContentView:v4];
    v7 = [MEMORY[0x1E695DF70] array];
    [(_UIContextMenuMediumCellLayout *)v6 setManagedConstraints:v7];
  }

  return v6;
}

- (id)preferredIconFontUsingBoldFont:(BOOL)a3
{
  v3 = a3;
  v5 = [(_UIContextMenuMediumCellLayout *)self _currentPlatformMetrics];
  if ([(_UIContextMenuMediumCellLayout *)self _hasTitle])
  {
    [v5 mediumItemIconTextStyle];
  }

  else
  {
    [v5 mediumItemIconTextStyleWithoutTitle];
  }
  v6 = ;
  if (v3)
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  v8 = [off_1E70ECC18 _preferredFontForTextStyle:v6 addingSymbolicTraits:v7];

  return v8;
}

- (UIShape)contentShape
{
  v2 = [(_UIContextMenuMediumCellLayout *)self _currentPlatformMetrics];
  v3 = [v2 mediumItemContentShape];

  return v3;
}

- (void)installConstraints
{
  [(_UIContextMenuMediumCellLayout *)self removeConstraints];
  v66 = [(_UIContextMenuMediumCellLayout *)self _currentPlatformMetrics];
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(_UIContextMenuMediumCellLayout *)self _hasTitle];
  v5 = [(_UIContextMenuMediumCellLayout *)self contentView];
  v6 = [v5 labelStackView];
  v7 = [v5 iconView];
  v8 = [v5 titleLabel];
  [v8 setTextAlignment:1];
  v9 = [v66 mediumItemTitleFont];
  [v8 setFont:v9];

  LODWORD(v10) = 1148846080;
  [v8 setContentHuggingPriority:1 forAxis:v10];
  if (v7)
  {
    [v5 addSubview:v7];
    v11 = [v7 centerXAnchor];
    v12 = [v5 centerXAnchor];
    [v11 constraintEqualToAnchor:v12];
    v13 = v7;
    v14 = v6;
    v16 = v15 = v8;
    [v3 addObject:v16];

    v8 = v15;
    v6 = v14;
    v7 = v13;
  }

  if (v8)
  {
    [v5 addSubview:v6];
    v17 = [(_UIContextMenuMediumCellLayout *)self contentView];
    [v17 traitCollection];
    v65 = v4;
    v18 = v7;
    v20 = v19 = v8;
    v21 = _UIContextMenuGetPlatformMetrics([v20 userInterfaceIdiom]);

    v22 = [v6 leadingAnchor];
    v23 = [v5 leadingAnchor];
    [v21 mediumItemMinimumHorizontalMargin];
    v24 = [v22 constraintEqualToAnchor:v23 constant:?];
    [v3 addObject:v24];

    v25 = [v5 trailingAnchor];
    v26 = [v6 trailingAnchor];
    [v21 mediumItemMinimumHorizontalMargin];
    v27 = [v25 constraintEqualToAnchor:v26 constant:?];
    [v3 addObject:v27];

    v8 = v19;
    v7 = v18;
    v4 = v65;
  }

  v28 = !v4;
  if (!v7)
  {
    v28 = 1;
  }

  if ((v28 & 1) == 0)
  {
    v29 = [v7 centerYAnchor];
    v30 = [v5 topAnchor];
LABEL_11:
    v31 = v30;
    v32 = [v29 constraintEqualToAnchor:v30];
    [(_UIContextMenuMediumCellLayout *)self setPrimaryViewCenterYConstraint:v32];

    v33 = [v6 firstBaselineAnchor];
    v34 = [v5 topAnchor];
    v35 = [v33 constraintEqualToAnchor:v34];
    [(_UIContextMenuMediumCellLayout *)self setTopConstraint:v35];

    v36 = [v5 bottomAnchor];
    v37 = [v6 lastBaselineAnchor];
    v38 = [v36 constraintEqualToAnchor:v37];
    [(_UIContextMenuMediumCellLayout *)self setBottomConstraint:v38];

    v39 = [v5 bottomAnchor];
    v40 = v6;
LABEL_12:
    v41 = [v40 lastBaselineAnchor];
    v42 = [v39 constraintGreaterThanOrEqualToAnchor:v41];
    [(_UIContextMenuMediumCellLayout *)self setFittingBottomConstraint:v42];

    v43 = [(_UIContextMenuMediumCellLayout *)self topConstraint];
    LODWORD(v44) = 1144750080;
    [v43 setPriority:v44];

    v45 = [(_UIContextMenuMediumCellLayout *)self bottomConstraint];
    LODWORD(v46) = 1144733696;
    [v45 setPriority:v46];

    v47 = [(_UIContextMenuMediumCellLayout *)self primaryViewCenterYConstraint];
    [v3 addObject:v47];

    v48 = [(_UIContextMenuMediumCellLayout *)self topConstraint];
    [v3 addObject:v48];

    v49 = [(_UIContextMenuMediumCellLayout *)self bottomConstraint];
    [v3 addObject:v49];

    v50 = [(_UIContextMenuMediumCellLayout *)self fittingBottomConstraint];
    [v3 addObject:v50];

    goto LABEL_13;
  }

  if (v4)
  {
    v29 = [v6 centerYAnchor];
    v30 = [v5 centerYAnchor];
    goto LABEL_11;
  }

  if (v7)
  {
    v56 = [v7 centerYAnchor];
    v57 = [v5 centerYAnchor];
    v58 = [v56 constraintEqualToAnchor:v57];
    [(_UIContextMenuMediumCellLayout *)self setPrimaryViewCenterYConstraint:v58];

    v59 = [v7 topAnchor];
    v60 = [v5 topAnchor];
    v61 = [v59 constraintGreaterThanOrEqualToAnchor:v60];
    [(_UIContextMenuMediumCellLayout *)self setTopConstraint:v61];

    v62 = [v5 bottomAnchor];
    v63 = [v7 lastBaselineAnchor];
    v64 = [v62 constraintEqualToAnchor:v63];
    [(_UIContextMenuMediumCellLayout *)self setBottomConstraint:v64];

    v39 = [v5 bottomAnchor];
    v40 = v7;
    goto LABEL_12;
  }

LABEL_13:
  v51 = [v5 heightAnchor];
  v52 = [v51 constraintGreaterThanOrEqualToConstant:0.0];
  [(_UIContextMenuMediumCellLayout *)self setMinimumHeightConstraint:v52];

  v53 = [(_UIContextMenuMediumCellLayout *)self minimumHeightConstraint];
  LODWORD(v54) = 1148829696;
  [v53 setPriority:v54];

  v55 = [(_UIContextMenuMediumCellLayout *)self minimumHeightConstraint];
  [v3 addObject:v55];

  [MEMORY[0x1E69977A0] activateConstraints:v3];
  [(_UIContextMenuMediumCellLayout *)self setManagedConstraints:v3];
}

- (void)updateConstraints
{
  v32 = [(_UIContextMenuMediumCellLayout *)self contentView];
  v3 = [(_UIContextMenuMediumCellLayout *)self _currentPlatformMetrics];
  v4 = [v32 traitCollection];
  v5 = _UIContextMenuGetPlatformMetrics([v4 userInterfaceIdiom]);
  v6 = [v5 titleFont];
  v7 = [v6 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v4];

  LODWORD(v4) = [(_UIContextMenuMediumCellLayout *)self _hasTitle];
  [v3 mediumItemLastBaselineToBottom];
  [v7 _scaledValueForValue:?];
  if (v4)
  {
    v8 = [v32 iconView];

    [v3 mediumItemTopToFirstBaseline];
    v10 = v9;
    if (v8)
    {
      [v3 mediumItemBaselineToBaseline];
      [v7 _scaledValueForValue:v10 + v11];
    }

    else
    {
      [v7 _scaledValueForValue:v9];
    }
  }

  UIRoundToViewScale(v32);
  v13 = v12;
  v14 = [(_UIContextMenuMediumCellLayout *)self primaryViewCenterYConstraint];
  [v14 setConstant:v13];

  UIRoundToViewScale(v32);
  v16 = v15;
  v17 = [(_UIContextMenuMediumCellLayout *)self topConstraint];
  [v17 setConstant:v16];

  UIRoundToViewScale(v32);
  v19 = v18;
  v20 = [(_UIContextMenuMediumCellLayout *)self bottomConstraint];
  [v20 setConstant:v19];

  UIRoundToViewScale(v32);
  v22 = v21;
  v23 = [(_UIContextMenuMediumCellLayout *)self fittingBottomConstraint];
  [v23 setConstant:v22];

  [v3 mediumItemTopToFirstBaseline];
  v25 = v24;
  [v3 mediumItemBaselineToBaseline];
  v27 = v25 + v26;
  [v3 mediumItemLastBaselineToBottom];
  [v7 _scaledValueForValue:v27 + v28];
  v30 = v29;
  v31 = [(_UIContextMenuMediumCellLayout *)self minimumHeightConstraint];
  [v31 setConstant:v30];
}

- (void)removeConstraints
{
  v3 = MEMORY[0x1E69977A0];
  v4 = [(_UIContextMenuMediumCellLayout *)self managedConstraints];
  [v3 deactivateConstraints:v4];

  managedConstraints = self->_managedConstraints;
  self->_managedConstraints = 0;
}

- (BOOL)_hasTitle
{
  v2 = [(_UIContextMenuMediumCellLayout *)self contentView];
  v3 = [v2 titleLabel];
  v4 = [v3 text];
  v5 = [v4 length] != 0;

  return v5;
}

- (id)_currentPlatformMetrics
{
  v2 = [(_UIContextMenuMediumCellLayout *)self contentView];
  v3 = [v2 traitCollection];
  v4 = _UIContextMenuGetPlatformMetrics([v3 userInterfaceIdiom]);

  return v4;
}

- (_UIContextMenuCellContentView)contentView
{
  WeakRetained = objc_loadWeakRetained(&self->_contentView);

  return WeakRetained;
}

@end