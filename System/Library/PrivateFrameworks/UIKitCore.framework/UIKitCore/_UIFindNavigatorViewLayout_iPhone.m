@interface _UIFindNavigatorViewLayout_iPhone
- (CGRect)preferredVerticalStackViewFrame;
- (CGSize)preferredContentSize;
- (_UIFindNavigatorViewLayout_iPhone)initWithFrame:(CGRect)a3;
- (void)_setAndActivateConstraints;
- (void)addGlassfindAndReplacePlatter;
- (void)layoutSubviews;
- (void)prepareForLayout;
- (void)setReplaceFieldVisible:(BOOL)a3;
@end

@implementation _UIFindNavigatorViewLayout_iPhone

- (void)addGlassfindAndReplacePlatter
{
  v22[5] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(UIView);
  findAndReplacePlatter = self->_findAndReplacePlatter;
  self->_findAndReplacePlatter = v3;

  [(UIView *)self->_findAndReplacePlatter setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_findAndReplacePlatter _setBackground:0];
  [(UIView *)self->_findAndReplacePlatter _setCornerRadius:30.0];
  [(UIView *)self->_verticalStackView addSubview:self->_findAndReplacePlatter];
  v15 = MEMORY[0x1E69977A0];
  v21 = [(UIView *)self->_verticalStackView topAnchor];
  v20 = [(UIView *)self->_findAndReplacePlatter topAnchor];
  v19 = [v21 constraintEqualToAnchor:v20 constant:9.0];
  v22[0] = v19;
  v18 = [(UIView *)self->_verticalStackView leadingAnchor];
  v17 = [(UIView *)self->_findAndReplacePlatter leadingAnchor];
  v16 = [v18 constraintEqualToAnchor:v17 constant:9.0];
  v22[1] = v16;
  v14 = [(UIView *)self->_findAndReplacePlatter bottomAnchor];
  v13 = [(UIView *)self->_verticalStackView bottomAnchor];
  v12 = [v14 constraintEqualToAnchor:v13];
  v22[2] = v12;
  v5 = [(UIView *)self->_findAndReplacePlatter trailingAnchor];
  v6 = [(UIView *)self->_verticalStackView trailingAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  v22[3] = v7;
  v8 = [(UIView *)self->_replaceStackView bottomAnchor];
  v9 = [(UIView *)self->_findAndReplacePlatter bottomAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  v22[4] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:5];
  [v15 activateConstraints:v11];

  [(UIView *)self->_verticalStackView sendSubviewToBack:self->_findAndReplacePlatter];
}

- (_UIFindNavigatorViewLayout_iPhone)initWithFrame:(CGRect)a3
{
  v37.receiver = self;
  v37.super_class = _UIFindNavigatorViewLayout_iPhone;
  v3 = [(UIView *)&v37 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(UIView *)v3 _inheritedRenderConfig];
    v6 = [v5 colorAdaptiveBackground];

    if (v6)
    {
      v7 = [UIStackView alloc];
      v8 = *MEMORY[0x1E695F058];
      v9 = *(MEMORY[0x1E695F058] + 8);
      v10 = *(MEMORY[0x1E695F058] + 16);
      v11 = *(MEMORY[0x1E695F058] + 24);
      v12 = [(UIStackView *)v7 initWithFrame:*MEMORY[0x1E695F058], v9, v10, v11];
      horizontalStackView = v4->_horizontalStackView;
      v4->_horizontalStackView = v12;

      [(UIStackView *)v4->_horizontalStackView setAxis:0];
      [(UIStackView *)v4->_horizontalStackView setAlignment:4];
      [(UIStackView *)v4->_horizontalStackView setDistribution:2];
      [(UIView *)v4 addSubview:v4->_horizontalStackView];
    }

    else
    {
      v8 = *MEMORY[0x1E695F058];
      v9 = *(MEMORY[0x1E695F058] + 8);
      v10 = *(MEMORY[0x1E695F058] + 16);
      v11 = *(MEMORY[0x1E695F058] + 24);
    }

    v14 = [[UIStackView alloc] initWithFrame:v8, v9, v10, v11];
    verticalStackView = v4->_verticalStackView;
    v4->_verticalStackView = v14;

    v16 = [(UIView *)v4 _inheritedRenderConfig];
    v17 = [v16 colorAdaptiveBackground];
    v18 = 12.0;
    if (v17)
    {
      v18 = 9.0;
    }

    [(UIStackView *)v4->_verticalStackView setSpacing:v18];

    [(UIStackView *)v4->_verticalStackView setAxis:1];
    [(UIStackView *)v4->_verticalStackView setDistribution:1];
    v19 = [(UIView *)v4 _inheritedRenderConfig];
    v20 = [v19 colorAdaptiveBackground];

    if (v20)
    {
      [(UIStackView *)v4->_horizontalStackView addArrangedSubview:v4->_verticalStackView];
    }

    else
    {
      [(UIView *)v4 addSubview:v4->_verticalStackView];
    }

    v21 = [[UIStackView alloc] initWithFrame:v8, v9, v10, v11];
    findStackView = v4->_findStackView;
    v4->_findStackView = v21;

    v23 = [(UIView *)v4 _inheritedRenderConfig];
    if ([v23 colorAdaptiveBackground])
    {
      v24 = 9.0;
    }

    else
    {
      v24 = 12.0;
    }

    [(UIStackView *)v4->_findStackView setSpacing:v24];

    [(UIStackView *)v4->_findStackView setAxis:0];
    [(UIStackView *)v4->_verticalStackView addArrangedSubview:v4->_findStackView];
    v25 = [[UIStackView alloc] initWithFrame:v8, v9, v10, v11];
    replaceStackView = v4->_replaceStackView;
    v4->_replaceStackView = v25;

    v27 = [(UIView *)v4 _inheritedRenderConfig];
    if ([v27 colorAdaptiveBackground])
    {
      v28 = 9.0;
    }

    else
    {
      v28 = 12.0;
    }

    [(UIStackView *)v4->_replaceStackView setSpacing:v28];

    [(UIStackView *)v4->_replaceStackView setAxis:0];
    [(UIStackView *)v4->_verticalStackView addArrangedSubview:v4->_replaceStackView];
    v29 = [[UIStackView alloc] initWithFrame:v8, v9, v10, v11];
    nextPrevStackView = v4->_nextPrevStackView;
    v4->_nextPrevStackView = v29;

    v31 = [(UIView *)v4 _inheritedRenderConfig];
    v32 = [v31 colorAdaptiveBackground];

    if (v32)
    {
      v33 = [[_UIViewGlass alloc] initWithVariant:0];
      [(UIView *)v4->_nextPrevStackView _setBackground:v33];

      [(UIStackView *)v4->_nextPrevStackView setDistribution:1];
    }

    else
    {
      [(UIView *)v4->_nextPrevStackView _setBackground:0];
      [(UIStackView *)v4->_nextPrevStackView setSpacing:12.0];
      v34 = makeSpacerView();
      nextPrevSpacerView = v4->_nextPrevSpacerView;
      v4->_nextPrevSpacerView = v34;

      [(UIView *)v4->_nextPrevSpacerView setHidden:1];
    }
  }

  return v4;
}

- (CGSize)preferredContentSize
{
  v14.receiver = self;
  v14.super_class = _UIFindNavigatorViewLayout_iPhone;
  [(_UIFindNavigatorViewLayout *)&v14 preferredContentSize];
  v4 = v3;
  v6 = v5;
  if ([(_UIFindNavigatorViewLayout *)self replaceFieldVisible])
  {
    v6 = v6 + v6;
  }

  else
  {
    v7 = [(UIView *)self _inheritedRenderConfig];
    v8 = [v7 colorAdaptiveBackground];

    if (v8)
    {
      v6 = v6 * 1.2;
    }
  }

  v9 = [(UIView *)self superview];
  [v9 safeAreaInsets];
  v11 = v6 + v10;

  v12 = v4;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)setReplaceFieldVisible:(BOOL)a3
{
  v3 = a3;
  v18.receiver = self;
  v18.super_class = _UIFindNavigatorViewLayout_iPhone;
  [(_UIFindNavigatorViewLayout *)&v18 setReplaceFieldVisible:?];
  replaceStackView = self->_replaceStackView;
  if (v3)
  {
    [(UIView *)replaceStackView setHidden:0];
    v6 = [(UIView *)self _inheritedRenderConfig];
    -[NSLayoutConstraint setActive:](self->_doneSpaceConstraint, "setActive:", [v6 colorAdaptiveBackground] ^ 1);

    [(NSLayoutConstraint *)self->_replaceButtonWidthConstraint setActive:1];
    v7 = [(UIView *)self _inheritedRenderConfig];
    -[UIView setHidden:](self->_nextPrevSpacerView, "setHidden:", [v7 colorAdaptiveBackground]);

    v8 = [(UIView *)self _inheritedRenderConfig];
    v9 = [v8 colorAdaptiveBackground];

    if (v9)
    {
      v10 = [(UIView *)self traitCollection];
      v11 = [v10 userInterfaceIdiom];

      if (!v11)
      {
        v12 = [[_UIViewGlass alloc] initWithVariant:0];
        [(UIView *)self->_findAndReplacePlatter _setBackground:v12];

        v13 = +[UIColor tertiarySystemFillColor];
        p_nextPrevStackView = &self->_nextPrevStackView;
        [(UIStackView *)self->_nextPrevStackView setBackgroundColor:v13];

        v15 = 17.0;
LABEL_7:
        [(UIView *)*p_nextPrevStackView _setCornerRadius:v15];
        [(NSLayoutConstraint *)self->_replaceStackBottomAnchorConstraint setActive:v3];
        [(NSLayoutConstraint *)self->_verticalStackBottomAnchorConstraint setActive:v3];
        [(NSLayoutConstraint *)self->_verticalStackLeadingAnchorConstraint setActive:v3];
        [(NSLayoutConstraint *)self->_verticalStackHeightConstraint setActive:v3 ^ 1];
        [(NSLayoutConstraint *)self->_nextPrevStackTrailingAnchorConstraint setActive:v3 ^ 1];
      }
    }
  }

  else
  {
    [(UIView *)replaceStackView setHidden:1];
    [(NSLayoutConstraint *)self->_doneSpaceConstraint setActive:0];
    [(NSLayoutConstraint *)self->_replaceButtonWidthConstraint setActive:0];
    [(UIView *)self->_nextPrevSpacerView setHidden:1];
    v16 = [(UIView *)self _inheritedRenderConfig];
    v17 = [v16 colorAdaptiveBackground];

    if (v17)
    {
      [(UIView *)self->_findAndReplacePlatter _setBackground:0];
      p_nextPrevStackView = &self->_nextPrevStackView;
      [(UIStackView *)self->_nextPrevStackView setBackgroundColor:0];
      v15 = 23.0;
      goto LABEL_7;
    }
  }

  [(UIView *)self setNeedsLayout];
}

- (void)prepareForLayout
{
  v3 = [(_UIFindNavigatorViewLayout_iPhone *)self usesSmallScreenStyle];
  v4 = [(UIView *)self _inheritedRenderConfig];
  v5 = [v4 colorAdaptiveBackground];

  v6 = MEMORY[0x1E695F058];
  if (v5)
  {
    horizontalStackView = self->_horizontalStackView;
    v8 = [(_UIFindNavigatorViewLayout *)self doneButton];
    [(UIStackView *)horizontalStackView addArrangedSubview:v8];

    v9 = [[UIView alloc] initWithFrame:*v6, v6[1], v6[2], v6[3]];
    horizontalSpacerView = self->_horizontalSpacerView;
    self->_horizontalSpacerView = v9;

    [(UIStackView *)self->_horizontalStackView addArrangedSubview:self->_horizontalSpacerView];
    v11 = [(UIView *)self->_horizontalSpacerView widthAnchor];
    v12 = [v11 constraintEqualToConstant:9.0];
    [v12 setActive:1];

    [(UIStackView *)self->_horizontalStackView addArrangedSubview:self->_verticalStackView];
  }

  else
  {
    findStackView = self->_findStackView;
    v14 = [(_UIFindNavigatorViewLayout *)self doneButton];
    [(UIStackView *)findStackView addArrangedSubview:v14];
  }

  v15 = self->_findStackView;
  v16 = [(_UIFindNavigatorViewLayout *)self searchTextField];
  [(UIStackView *)v15 addArrangedSubview:v16];

  nextPrevStackView = self->_nextPrevStackView;
  v18 = [(_UIFindNavigatorViewLayout *)self previousResultButton];
  [(UIStackView *)nextPrevStackView addArrangedSubview:v18];

  v19 = self->_nextPrevStackView;
  if (v3)
  {
    [(UIStackView *)self->_nextPrevStackView addArrangedSubview:self->_nextPrevSpacerView];
    v20 = self->_nextPrevStackView;
    v21 = [(_UIFindNavigatorViewLayout *)self nextResultButton];
    [(UIStackView *)v20 addArrangedSubview:v21];

    [(UIView *)self->_nextPrevStackView _setTouchInsets:0.0, -8.0, 0.0, -8.0];
    v22 = [(_UIFindNavigatorViewLayout *)self nextResultButton];
    [v22 _setTouchInsets:{0.0, -8.0, 0.0, -8.0}];

    v23 = [(_UIFindNavigatorViewLayout *)self previousResultButton];
    [v23 _setTouchInsets:{0.0, -8.0, 0.0, -8.0}];

    [(UIStackView *)self->_findStackView addArrangedSubview:self->_nextPrevStackView];
    v24 = self->_findStackView;
    v25 = makeSpacerView();
    [(UIStackView *)v24 addArrangedSubview:v25];
  }

  else
  {
    v26 = [(_UIFindNavigatorViewLayout *)self nextResultButton];
    [(UIStackView *)v19 addArrangedSubview:v26];

    [(UIStackView *)self->_findStackView addArrangedSubview:self->_nextPrevStackView];
  }

  v71 = [[UIView alloc] initWithFrame:*v6, v6[1], v6[2], v6[3]];
  v27 = [(UIView *)self _inheritedRenderConfig];
  v28 = [v27 colorAdaptiveBackground];

  if ((v28 & 1) == 0)
  {
    [(UIStackView *)self->_replaceStackView addArrangedSubview:v71];
  }

  replaceStackView = self->_replaceStackView;
  v30 = [(_UIFindNavigatorViewLayout *)self replaceTextField];
  [(UIStackView *)replaceStackView addArrangedSubview:v30];

  v31 = self->_replaceStackView;
  v32 = [(_UIFindNavigatorViewLayout *)self replaceButton];
  [(UIStackView *)v31 addArrangedSubview:v32];

  v33 = [(_UIFindNavigatorViewLayout *)self replaceButton];
  [v33 setHidden:0];

  v34 = [(_UIFindNavigatorViewLayout *)self replaceTextField];
  [v34 setHidden:0];

  if (v3)
  {
    v35 = self->_replaceStackView;
    v36 = makeSpacerView();
    [(UIStackView *)v35 addArrangedSubview:v36];
  }

  v37 = [(UIView *)v71 widthAnchor];
  v38 = [(_UIFindNavigatorViewLayout *)self doneButton];
  v39 = [v38 widthAnchor];
  v40 = [v37 constraintEqualToAnchor:v39];
  doneSpaceConstraint = self->_doneSpaceConstraint;
  self->_doneSpaceConstraint = v40;

  v42 = [(UIView *)self->_nextPrevStackView widthAnchor];
  v43 = [(_UIFindNavigatorViewLayout *)self replaceButton];
  v44 = [v43 widthAnchor];
  v45 = [v42 constraintEqualToAnchor:v44];
  replaceButtonWidthConstraint = self->_replaceButtonWidthConstraint;
  self->_replaceButtonWidthConstraint = v45;

  [(_UIFindNavigatorViewLayout_iPhone *)self _setAndActivateConstraints];
  v47 = [(UIView *)self _inheritedRenderConfig];
  LODWORD(v43) = [v47 colorAdaptiveBackground];

  if (v43)
  {
    v48 = objc_opt_new();
    [v48 setGroupBackdrops:1];
    [(UIView *)self _setBackground:v48];
    [(_UIFindNavigatorViewLayout_iPhone *)self addGlassfindAndReplacePlatter];
    v49 = [(UIView *)self->_replaceStackView bottomAnchor];
    v50 = [(UIView *)self->_findAndReplacePlatter bottomAnchor];
    v51 = [v49 constraintEqualToAnchor:v50 constant:-9.0];
    replaceStackBottomAnchorConstraint = self->_replaceStackBottomAnchorConstraint;
    self->_replaceStackBottomAnchorConstraint = v51;

    v53 = [(UIView *)self->_verticalStackView bottomAnchor];
    v54 = [(UIView *)self->_horizontalStackView bottomAnchor];
    v55 = [v53 constraintEqualToAnchor:v54 constant:-9.0];
    verticalStackBottomAnchorConstraint = self->_verticalStackBottomAnchorConstraint;
    self->_verticalStackBottomAnchorConstraint = v55;

    v57 = [(UIView *)self->_verticalStackView leadingAnchor];
    v58 = [(_UIFindNavigatorViewLayout *)self doneButton];
    v59 = [v58 trailingAnchor];
    v60 = [v57 constraintEqualToAnchor:v59 constant:18.0];
    verticalStackLeadingAnchorConstraint = self->_verticalStackLeadingAnchorConstraint;
    self->_verticalStackLeadingAnchorConstraint = v60;

    v62 = [(UIView *)self->_findStackView heightAnchor];
    v63 = [(_UIFindNavigatorViewLayout *)self doneButton];
    v64 = [v63 heightAnchor];
    v65 = [v62 constraintEqualToAnchor:v64];
    verticalStackHeightConstraint = self->_verticalStackHeightConstraint;
    self->_verticalStackHeightConstraint = v65;

    v67 = [(UIView *)self->_nextPrevStackView trailingAnchor];
    v68 = [(UIView *)self->_horizontalStackView trailingAnchor];
    v69 = [v67 constraintEqualToAnchor:v68];
    nextPrevStackTrailingAnchorConstraint = self->_nextPrevStackTrailingAnchorConstraint;
    self->_nextPrevStackTrailingAnchorConstraint = v69;
  }
}

- (void)_setAndActivateConstraints
{
  v49[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69977A0];
  v4 = [(_UIFindNavigatorViewLayout *)self nextResultButton];
  v5 = [v4 widthAnchor];
  v6 = [v5 constraintEqualToConstant:28.0];
  v49[0] = v6;
  v7 = [(_UIFindNavigatorViewLayout *)self previousResultButton];
  v8 = [v7 widthAnchor];
  v9 = [v8 constraintEqualToConstant:28.0];
  v49[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
  [v3 activateConstraints:v10];

  v11 = [(UIView *)self _inheritedRenderConfig];
  LODWORD(v5) = [v11 colorAdaptiveBackground];

  if (v5)
  {
    [(UIStackView *)self->_horizontalStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    v35 = MEMORY[0x1E69977A0];
    v47 = [(UIView *)self->_horizontalStackView topAnchor];
    v46 = [(UIView *)self topAnchor];
    v45 = [v47 constraintEqualToAnchor:v46];
    v48[0] = v45;
    v44 = [(UIView *)self->_horizontalStackView leadingAnchor];
    v43 = [(UIView *)self leadingAnchor];
    v42 = [v44 constraintEqualToAnchor:v43 constant:9.0];
    v48[1] = v42;
    v41 = [(UIView *)self bottomAnchor];
    v40 = [(UIView *)self->_horizontalStackView bottomAnchor];
    v39 = [v41 constraintEqualToAnchor:v40 constant:9.0];
    v48[2] = v39;
    v38 = [(UIView *)self trailingAnchor];
    v37 = [(UIView *)self->_horizontalStackView trailingAnchor];
    v36 = [v38 constraintEqualToAnchor:v37 constant:9.0];
    v48[3] = v36;
    v34 = [(UIView *)self->_verticalStackView leadingAnchor];
    v33 = [(UIView *)self->_horizontalSpacerView trailingAnchor];
    v32 = [v34 constraintEqualToAnchor:v33];
    v48[4] = v32;
    v31 = [(UIView *)self->_verticalStackView bottomAnchor];
    v30 = [(UIView *)self->_horizontalStackView bottomAnchor];
    v29 = [v31 constraintEqualToAnchor:v30];
    v48[5] = v29;
    v28 = [(UIView *)self->_verticalStackView trailingAnchor];
    v27 = [(UIView *)self->_horizontalStackView trailingAnchor];
    v26 = [v28 constraintEqualToAnchor:v27];
    v48[6] = v26;
    v25 = [(_UIFindNavigatorViewLayout *)self doneButton];
    v24 = [v25 heightAnchor];
    v23 = [v24 constraintEqualToConstant:48.0];
    v48[7] = v23;
    v22 = [(_UIFindNavigatorViewLayout *)self doneButton];
    v12 = [v22 widthAnchor];
    v13 = [(_UIFindNavigatorViewLayout *)self doneButton];
    v14 = [v13 heightAnchor];
    v15 = [v12 constraintEqualToAnchor:v14];
    v48[8] = v15;
    v16 = [(UIView *)self->_nextPrevStackView widthAnchor];
    v17 = [v16 constraintEqualToConstant:80.0];
    v48[9] = v17;
    v18 = [(_UIFindNavigatorViewLayout *)self replaceButton];
    v19 = [v18 widthAnchor];
    v20 = [v19 constraintEqualToConstant:80.0];
    v48[10] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:11];
    [v35 activateConstraints:v21];
  }
}

- (CGRect)preferredVerticalStackViewFrame
{
  [(UIView *)self safeAreaInsets];
  v4 = v3 + 2.0;
  [(UIView *)self bounds];
  v7 = v6 + 0.0;
  v9 = v8 + 3.0;
  v11 = v10 - (v4 + 3.0);
  result.size.height = v11;
  result.size.width = v5;
  result.origin.y = v9;
  result.origin.x = v7;
  return result;
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = _UIFindNavigatorViewLayout_iPhone;
  [(UIView *)&v9 layoutSubviews];
  v3 = [(UIView *)self _inheritedRenderConfig];
  v4 = [v3 colorAdaptiveBackground];

  if (v4)
  {
    if ([(_UIFindNavigatorViewLayout *)self replaceFieldVisible])
    {
      v5 = 17.0;
    }

    else
    {
      v5 = 23.0;
    }

    v6 = [(_UIFindNavigatorViewLayout *)self searchTextField];
    [v6 _setCornerRadius:v5];
  }

  v7 = [(UIView *)self _inheritedRenderConfig];
  v8 = [v7 colorAdaptiveBackground];

  if ((v8 & 1) == 0)
  {
    [(_UIFindNavigatorViewLayout_iPhone *)self preferredVerticalStackViewFrame];
    [(UIView *)self->_verticalStackView setFrame:?];
  }
}

@end