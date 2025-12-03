@interface _UIFindNavigatorViewLayout_iPhone
- (CGRect)preferredVerticalStackViewFrame;
- (CGSize)preferredContentSize;
- (_UIFindNavigatorViewLayout_iPhone)initWithFrame:(CGRect)frame;
- (void)_setAndActivateConstraints;
- (void)addGlassfindAndReplacePlatter;
- (void)layoutSubviews;
- (void)prepareForLayout;
- (void)setReplaceFieldVisible:(BOOL)visible;
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
  topAnchor = [(UIView *)self->_verticalStackView topAnchor];
  topAnchor2 = [(UIView *)self->_findAndReplacePlatter topAnchor];
  v19 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:9.0];
  v22[0] = v19;
  leadingAnchor = [(UIView *)self->_verticalStackView leadingAnchor];
  leadingAnchor2 = [(UIView *)self->_findAndReplacePlatter leadingAnchor];
  v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:9.0];
  v22[1] = v16;
  bottomAnchor = [(UIView *)self->_findAndReplacePlatter bottomAnchor];
  bottomAnchor2 = [(UIView *)self->_verticalStackView bottomAnchor];
  v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v22[2] = v12;
  trailingAnchor = [(UIView *)self->_findAndReplacePlatter trailingAnchor];
  trailingAnchor2 = [(UIView *)self->_verticalStackView trailingAnchor];
  v7 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v22[3] = v7;
  bottomAnchor3 = [(UIView *)self->_replaceStackView bottomAnchor];
  bottomAnchor4 = [(UIView *)self->_findAndReplacePlatter bottomAnchor];
  v10 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v22[4] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:5];
  [v15 activateConstraints:v11];

  [(UIView *)self->_verticalStackView sendSubviewToBack:self->_findAndReplacePlatter];
}

- (_UIFindNavigatorViewLayout_iPhone)initWithFrame:(CGRect)frame
{
  v37.receiver = self;
  v37.super_class = _UIFindNavigatorViewLayout_iPhone;
  v3 = [(UIView *)&v37 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    _inheritedRenderConfig = [(UIView *)v3 _inheritedRenderConfig];
    colorAdaptiveBackground = [_inheritedRenderConfig colorAdaptiveBackground];

    if (colorAdaptiveBackground)
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

    _inheritedRenderConfig2 = [(UIView *)v4 _inheritedRenderConfig];
    colorAdaptiveBackground2 = [_inheritedRenderConfig2 colorAdaptiveBackground];
    v18 = 12.0;
    if (colorAdaptiveBackground2)
    {
      v18 = 9.0;
    }

    [(UIStackView *)v4->_verticalStackView setSpacing:v18];

    [(UIStackView *)v4->_verticalStackView setAxis:1];
    [(UIStackView *)v4->_verticalStackView setDistribution:1];
    _inheritedRenderConfig3 = [(UIView *)v4 _inheritedRenderConfig];
    colorAdaptiveBackground3 = [_inheritedRenderConfig3 colorAdaptiveBackground];

    if (colorAdaptiveBackground3)
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

    _inheritedRenderConfig4 = [(UIView *)v4 _inheritedRenderConfig];
    if ([_inheritedRenderConfig4 colorAdaptiveBackground])
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

    _inheritedRenderConfig5 = [(UIView *)v4 _inheritedRenderConfig];
    if ([_inheritedRenderConfig5 colorAdaptiveBackground])
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

    _inheritedRenderConfig6 = [(UIView *)v4 _inheritedRenderConfig];
    colorAdaptiveBackground4 = [_inheritedRenderConfig6 colorAdaptiveBackground];

    if (colorAdaptiveBackground4)
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
    _inheritedRenderConfig = [(UIView *)self _inheritedRenderConfig];
    colorAdaptiveBackground = [_inheritedRenderConfig colorAdaptiveBackground];

    if (colorAdaptiveBackground)
    {
      v6 = v6 * 1.2;
    }
  }

  superview = [(UIView *)self superview];
  [superview safeAreaInsets];
  v11 = v6 + v10;

  v12 = v4;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)setReplaceFieldVisible:(BOOL)visible
{
  visibleCopy = visible;
  v18.receiver = self;
  v18.super_class = _UIFindNavigatorViewLayout_iPhone;
  [(_UIFindNavigatorViewLayout *)&v18 setReplaceFieldVisible:?];
  replaceStackView = self->_replaceStackView;
  if (visibleCopy)
  {
    [(UIView *)replaceStackView setHidden:0];
    _inheritedRenderConfig = [(UIView *)self _inheritedRenderConfig];
    -[NSLayoutConstraint setActive:](self->_doneSpaceConstraint, "setActive:", [_inheritedRenderConfig colorAdaptiveBackground] ^ 1);

    [(NSLayoutConstraint *)self->_replaceButtonWidthConstraint setActive:1];
    _inheritedRenderConfig2 = [(UIView *)self _inheritedRenderConfig];
    -[UIView setHidden:](self->_nextPrevSpacerView, "setHidden:", [_inheritedRenderConfig2 colorAdaptiveBackground]);

    _inheritedRenderConfig3 = [(UIView *)self _inheritedRenderConfig];
    colorAdaptiveBackground = [_inheritedRenderConfig3 colorAdaptiveBackground];

    if (colorAdaptiveBackground)
    {
      traitCollection = [(UIView *)self traitCollection];
      userInterfaceIdiom = [traitCollection userInterfaceIdiom];

      if (!userInterfaceIdiom)
      {
        v12 = [[_UIViewGlass alloc] initWithVariant:0];
        [(UIView *)self->_findAndReplacePlatter _setBackground:v12];

        v13 = +[UIColor tertiarySystemFillColor];
        p_nextPrevStackView = &self->_nextPrevStackView;
        [(UIStackView *)self->_nextPrevStackView setBackgroundColor:v13];

        v15 = 17.0;
LABEL_7:
        [(UIView *)*p_nextPrevStackView _setCornerRadius:v15];
        [(NSLayoutConstraint *)self->_replaceStackBottomAnchorConstraint setActive:visibleCopy];
        [(NSLayoutConstraint *)self->_verticalStackBottomAnchorConstraint setActive:visibleCopy];
        [(NSLayoutConstraint *)self->_verticalStackLeadingAnchorConstraint setActive:visibleCopy];
        [(NSLayoutConstraint *)self->_verticalStackHeightConstraint setActive:visibleCopy ^ 1];
        [(NSLayoutConstraint *)self->_nextPrevStackTrailingAnchorConstraint setActive:visibleCopy ^ 1];
      }
    }
  }

  else
  {
    [(UIView *)replaceStackView setHidden:1];
    [(NSLayoutConstraint *)self->_doneSpaceConstraint setActive:0];
    [(NSLayoutConstraint *)self->_replaceButtonWidthConstraint setActive:0];
    [(UIView *)self->_nextPrevSpacerView setHidden:1];
    _inheritedRenderConfig4 = [(UIView *)self _inheritedRenderConfig];
    colorAdaptiveBackground2 = [_inheritedRenderConfig4 colorAdaptiveBackground];

    if (colorAdaptiveBackground2)
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
  usesSmallScreenStyle = [(_UIFindNavigatorViewLayout_iPhone *)self usesSmallScreenStyle];
  _inheritedRenderConfig = [(UIView *)self _inheritedRenderConfig];
  colorAdaptiveBackground = [_inheritedRenderConfig colorAdaptiveBackground];

  v6 = MEMORY[0x1E695F058];
  if (colorAdaptiveBackground)
  {
    horizontalStackView = self->_horizontalStackView;
    doneButton = [(_UIFindNavigatorViewLayout *)self doneButton];
    [(UIStackView *)horizontalStackView addArrangedSubview:doneButton];

    v9 = [[UIView alloc] initWithFrame:*v6, v6[1], v6[2], v6[3]];
    horizontalSpacerView = self->_horizontalSpacerView;
    self->_horizontalSpacerView = v9;

    [(UIStackView *)self->_horizontalStackView addArrangedSubview:self->_horizontalSpacerView];
    widthAnchor = [(UIView *)self->_horizontalSpacerView widthAnchor];
    v12 = [widthAnchor constraintEqualToConstant:9.0];
    [v12 setActive:1];

    [(UIStackView *)self->_horizontalStackView addArrangedSubview:self->_verticalStackView];
  }

  else
  {
    findStackView = self->_findStackView;
    doneButton2 = [(_UIFindNavigatorViewLayout *)self doneButton];
    [(UIStackView *)findStackView addArrangedSubview:doneButton2];
  }

  v15 = self->_findStackView;
  searchTextField = [(_UIFindNavigatorViewLayout *)self searchTextField];
  [(UIStackView *)v15 addArrangedSubview:searchTextField];

  nextPrevStackView = self->_nextPrevStackView;
  previousResultButton = [(_UIFindNavigatorViewLayout *)self previousResultButton];
  [(UIStackView *)nextPrevStackView addArrangedSubview:previousResultButton];

  v19 = self->_nextPrevStackView;
  if (usesSmallScreenStyle)
  {
    [(UIStackView *)self->_nextPrevStackView addArrangedSubview:self->_nextPrevSpacerView];
    v20 = self->_nextPrevStackView;
    nextResultButton = [(_UIFindNavigatorViewLayout *)self nextResultButton];
    [(UIStackView *)v20 addArrangedSubview:nextResultButton];

    [(UIView *)self->_nextPrevStackView _setTouchInsets:0.0, -8.0, 0.0, -8.0];
    nextResultButton2 = [(_UIFindNavigatorViewLayout *)self nextResultButton];
    [nextResultButton2 _setTouchInsets:{0.0, -8.0, 0.0, -8.0}];

    previousResultButton2 = [(_UIFindNavigatorViewLayout *)self previousResultButton];
    [previousResultButton2 _setTouchInsets:{0.0, -8.0, 0.0, -8.0}];

    [(UIStackView *)self->_findStackView addArrangedSubview:self->_nextPrevStackView];
    v24 = self->_findStackView;
    v25 = makeSpacerView();
    [(UIStackView *)v24 addArrangedSubview:v25];
  }

  else
  {
    nextResultButton3 = [(_UIFindNavigatorViewLayout *)self nextResultButton];
    [(UIStackView *)v19 addArrangedSubview:nextResultButton3];

    [(UIStackView *)self->_findStackView addArrangedSubview:self->_nextPrevStackView];
  }

  v71 = [[UIView alloc] initWithFrame:*v6, v6[1], v6[2], v6[3]];
  _inheritedRenderConfig2 = [(UIView *)self _inheritedRenderConfig];
  colorAdaptiveBackground2 = [_inheritedRenderConfig2 colorAdaptiveBackground];

  if ((colorAdaptiveBackground2 & 1) == 0)
  {
    [(UIStackView *)self->_replaceStackView addArrangedSubview:v71];
  }

  replaceStackView = self->_replaceStackView;
  replaceTextField = [(_UIFindNavigatorViewLayout *)self replaceTextField];
  [(UIStackView *)replaceStackView addArrangedSubview:replaceTextField];

  v31 = self->_replaceStackView;
  replaceButton = [(_UIFindNavigatorViewLayout *)self replaceButton];
  [(UIStackView *)v31 addArrangedSubview:replaceButton];

  replaceButton2 = [(_UIFindNavigatorViewLayout *)self replaceButton];
  [replaceButton2 setHidden:0];

  replaceTextField2 = [(_UIFindNavigatorViewLayout *)self replaceTextField];
  [replaceTextField2 setHidden:0];

  if (usesSmallScreenStyle)
  {
    v35 = self->_replaceStackView;
    v36 = makeSpacerView();
    [(UIStackView *)v35 addArrangedSubview:v36];
  }

  widthAnchor2 = [(UIView *)v71 widthAnchor];
  doneButton3 = [(_UIFindNavigatorViewLayout *)self doneButton];
  widthAnchor3 = [doneButton3 widthAnchor];
  v40 = [widthAnchor2 constraintEqualToAnchor:widthAnchor3];
  doneSpaceConstraint = self->_doneSpaceConstraint;
  self->_doneSpaceConstraint = v40;

  widthAnchor4 = [(UIView *)self->_nextPrevStackView widthAnchor];
  replaceButton3 = [(_UIFindNavigatorViewLayout *)self replaceButton];
  widthAnchor5 = [replaceButton3 widthAnchor];
  v45 = [widthAnchor4 constraintEqualToAnchor:widthAnchor5];
  replaceButtonWidthConstraint = self->_replaceButtonWidthConstraint;
  self->_replaceButtonWidthConstraint = v45;

  [(_UIFindNavigatorViewLayout_iPhone *)self _setAndActivateConstraints];
  _inheritedRenderConfig3 = [(UIView *)self _inheritedRenderConfig];
  LODWORD(replaceButton3) = [_inheritedRenderConfig3 colorAdaptiveBackground];

  if (replaceButton3)
  {
    v48 = objc_opt_new();
    [v48 setGroupBackdrops:1];
    [(UIView *)self _setBackground:v48];
    [(_UIFindNavigatorViewLayout_iPhone *)self addGlassfindAndReplacePlatter];
    bottomAnchor = [(UIView *)self->_replaceStackView bottomAnchor];
    bottomAnchor2 = [(UIView *)self->_findAndReplacePlatter bottomAnchor];
    v51 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-9.0];
    replaceStackBottomAnchorConstraint = self->_replaceStackBottomAnchorConstraint;
    self->_replaceStackBottomAnchorConstraint = v51;

    bottomAnchor3 = [(UIView *)self->_verticalStackView bottomAnchor];
    bottomAnchor4 = [(UIView *)self->_horizontalStackView bottomAnchor];
    v55 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-9.0];
    verticalStackBottomAnchorConstraint = self->_verticalStackBottomAnchorConstraint;
    self->_verticalStackBottomAnchorConstraint = v55;

    leadingAnchor = [(UIView *)self->_verticalStackView leadingAnchor];
    doneButton4 = [(_UIFindNavigatorViewLayout *)self doneButton];
    trailingAnchor = [doneButton4 trailingAnchor];
    v60 = [leadingAnchor constraintEqualToAnchor:trailingAnchor constant:18.0];
    verticalStackLeadingAnchorConstraint = self->_verticalStackLeadingAnchorConstraint;
    self->_verticalStackLeadingAnchorConstraint = v60;

    heightAnchor = [(UIView *)self->_findStackView heightAnchor];
    doneButton5 = [(_UIFindNavigatorViewLayout *)self doneButton];
    heightAnchor2 = [doneButton5 heightAnchor];
    v65 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
    verticalStackHeightConstraint = self->_verticalStackHeightConstraint;
    self->_verticalStackHeightConstraint = v65;

    trailingAnchor2 = [(UIView *)self->_nextPrevStackView trailingAnchor];
    trailingAnchor3 = [(UIView *)self->_horizontalStackView trailingAnchor];
    v69 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
    nextPrevStackTrailingAnchorConstraint = self->_nextPrevStackTrailingAnchorConstraint;
    self->_nextPrevStackTrailingAnchorConstraint = v69;
  }
}

- (void)_setAndActivateConstraints
{
  v49[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69977A0];
  nextResultButton = [(_UIFindNavigatorViewLayout *)self nextResultButton];
  widthAnchor = [nextResultButton widthAnchor];
  v6 = [widthAnchor constraintEqualToConstant:28.0];
  v49[0] = v6;
  previousResultButton = [(_UIFindNavigatorViewLayout *)self previousResultButton];
  widthAnchor2 = [previousResultButton widthAnchor];
  v9 = [widthAnchor2 constraintEqualToConstant:28.0];
  v49[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
  [v3 activateConstraints:v10];

  _inheritedRenderConfig = [(UIView *)self _inheritedRenderConfig];
  LODWORD(widthAnchor) = [_inheritedRenderConfig colorAdaptiveBackground];

  if (widthAnchor)
  {
    [(UIStackView *)self->_horizontalStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    v35 = MEMORY[0x1E69977A0];
    topAnchor = [(UIView *)self->_horizontalStackView topAnchor];
    topAnchor2 = [(UIView *)self topAnchor];
    v45 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v48[0] = v45;
    leadingAnchor = [(UIView *)self->_horizontalStackView leadingAnchor];
    leadingAnchor2 = [(UIView *)self leadingAnchor];
    v42 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:9.0];
    v48[1] = v42;
    bottomAnchor = [(UIView *)self bottomAnchor];
    bottomAnchor2 = [(UIView *)self->_horizontalStackView bottomAnchor];
    v39 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:9.0];
    v48[2] = v39;
    trailingAnchor = [(UIView *)self trailingAnchor];
    trailingAnchor2 = [(UIView *)self->_horizontalStackView trailingAnchor];
    v36 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:9.0];
    v48[3] = v36;
    leadingAnchor3 = [(UIView *)self->_verticalStackView leadingAnchor];
    trailingAnchor3 = [(UIView *)self->_horizontalSpacerView trailingAnchor];
    v32 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor3];
    v48[4] = v32;
    bottomAnchor3 = [(UIView *)self->_verticalStackView bottomAnchor];
    bottomAnchor4 = [(UIView *)self->_horizontalStackView bottomAnchor];
    v29 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v48[5] = v29;
    trailingAnchor4 = [(UIView *)self->_verticalStackView trailingAnchor];
    trailingAnchor5 = [(UIView *)self->_horizontalStackView trailingAnchor];
    v26 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
    v48[6] = v26;
    doneButton = [(_UIFindNavigatorViewLayout *)self doneButton];
    heightAnchor = [doneButton heightAnchor];
    v23 = [heightAnchor constraintEqualToConstant:48.0];
    v48[7] = v23;
    doneButton2 = [(_UIFindNavigatorViewLayout *)self doneButton];
    widthAnchor3 = [doneButton2 widthAnchor];
    doneButton3 = [(_UIFindNavigatorViewLayout *)self doneButton];
    heightAnchor2 = [doneButton3 heightAnchor];
    v15 = [widthAnchor3 constraintEqualToAnchor:heightAnchor2];
    v48[8] = v15;
    widthAnchor4 = [(UIView *)self->_nextPrevStackView widthAnchor];
    v17 = [widthAnchor4 constraintEqualToConstant:80.0];
    v48[9] = v17;
    replaceButton = [(_UIFindNavigatorViewLayout *)self replaceButton];
    widthAnchor5 = [replaceButton widthAnchor];
    v20 = [widthAnchor5 constraintEqualToConstant:80.0];
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
  _inheritedRenderConfig = [(UIView *)self _inheritedRenderConfig];
  colorAdaptiveBackground = [_inheritedRenderConfig colorAdaptiveBackground];

  if (colorAdaptiveBackground)
  {
    if ([(_UIFindNavigatorViewLayout *)self replaceFieldVisible])
    {
      v5 = 17.0;
    }

    else
    {
      v5 = 23.0;
    }

    searchTextField = [(_UIFindNavigatorViewLayout *)self searchTextField];
    [searchTextField _setCornerRadius:v5];
  }

  _inheritedRenderConfig2 = [(UIView *)self _inheritedRenderConfig];
  colorAdaptiveBackground2 = [_inheritedRenderConfig2 colorAdaptiveBackground];

  if ((colorAdaptiveBackground2 & 1) == 0)
  {
    [(_UIFindNavigatorViewLayout_iPhone *)self preferredVerticalStackViewFrame];
    [(UIView *)self->_verticalStackView setFrame:?];
  }
}

@end