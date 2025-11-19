@interface _UIFindNavigatorViewLayout_Mac
- (CGSize)preferredContentSize;
- (_UIFindNavigatorViewLayout_Mac)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)prepareForLayout;
- (void)setReplaceFieldVisible:(BOOL)a3;
@end

@implementation _UIFindNavigatorViewLayout_Mac

- (_UIFindNavigatorViewLayout_Mac)initWithFrame:(CGRect)a3
{
  v22.receiver = self;
  v22.super_class = _UIFindNavigatorViewLayout_Mac;
  v3 = [(UIView *)&v22 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [UIStackView alloc];
    v5 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    v7 = *(MEMORY[0x1E695F058] + 16);
    v8 = *(MEMORY[0x1E695F058] + 24);
    v9 = [(UIStackView *)v4 initWithFrame:*MEMORY[0x1E695F058], v6, v7, v8];
    verticalStackView = v3->_verticalStackView;
    v3->_verticalStackView = v9;

    [(UIStackView *)v3->_verticalStackView setSpacing:12.0];
    [(UIStackView *)v3->_verticalStackView setAxis:1];
    [(UIStackView *)v3->_verticalStackView setDistribution:1];
    [(UIView *)v3 addSubview:v3->_verticalStackView];
    v11 = [[UIStackView alloc] initWithFrame:v5, v6, v7, v8];
    findStackView = v3->_findStackView;
    v3->_findStackView = v11;

    [(UIStackView *)v3->_findStackView setSpacing:12.0];
    [(UIStackView *)v3->_findStackView setAxis:0];
    [(UIStackView *)v3->_findStackView setAlignment:3];
    [(UIStackView *)v3->_verticalStackView addArrangedSubview:v3->_findStackView];
    v13 = [[UIStackView alloc] initWithFrame:v5, v6, v7, v8];
    replaceStackView = v3->_replaceStackView;
    v3->_replaceStackView = v13;

    [(UIStackView *)v3->_replaceStackView setSpacing:12.0];
    [(UIStackView *)v3->_replaceStackView setAxis:0];
    [(UIStackView *)v3->_verticalStackView addArrangedSubview:v3->_replaceStackView];
    v15 = [[UIStackView alloc] initWithFrame:v5, v6, v7, v8];
    firstLineControlsStackView = v3->_firstLineControlsStackView;
    v3->_firstLineControlsStackView = v15;

    [(UIStackView *)v3->_firstLineControlsStackView setSpacing:12.0];
    v17 = [[UIStackView alloc] initWithFrame:v5, v6, v7, v8];
    secondLineControlsStackView = v3->_secondLineControlsStackView;
    v3->_secondLineControlsStackView = v17;

    [(UIStackView *)v3->_secondLineControlsStackView setSpacing:12.0];
    v19 = makeSpacerView();
    doneButtonSpacer = v3->_doneButtonSpacer;
    v3->_doneButtonSpacer = v19;
  }

  return v3;
}

- (CGSize)preferredContentSize
{
  v3 = [(_UIFindNavigatorViewLayout *)self searchTextField];
  [v3 intrinsicContentSize];
  v5 = v4;

  v6 = [(_UIFindNavigatorViewLayout *)self replaceFieldVisible];
  v7 = v5 + v5 + 12.0;
  if (!v6)
  {
    v7 = v5;
  }

  v8 = v7 + 8.0;
  v9 = -1.0;
  result.height = v8;
  result.width = v9;
  return result;
}

- (void)prepareForLayout
{
  v47 = *MEMORY[0x1E69E9840];
  findStackView = self->_findStackView;
  v4 = [(_UIFindNavigatorViewLayout *)self searchTextField];
  [(UIStackView *)findStackView addArrangedSubview:v4];

  [(UIStackView *)self->_findStackView addArrangedSubview:self->_firstLineControlsStackView];
  [(UIView *)self->_doneButtonSpacer setHidden:1];
  firstLineControlsStackView = self->_firstLineControlsStackView;
  v6 = [(_UIFindNavigatorViewLayout_Mac *)self nextPreviousSegmentedControl];
  [(UIStackView *)firstLineControlsStackView addArrangedSubview:v6];

  v7 = self->_firstLineControlsStackView;
  v8 = [(_UIFindNavigatorViewLayout *)self doneButton];
  [(UIStackView *)v7 addArrangedSubview:v8];

  [(UIStackView *)self->_firstLineControlsStackView addArrangedSubview:self->_doneButtonSpacer];
  v9 = self->_firstLineControlsStackView;
  v10 = [(_UIFindNavigatorViewLayout_Mac *)self replaceToggleSwitch];
  [(UIStackView *)v9 addArrangedSubview:v10];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v11 = [(UIStackView *)self->_firstLineControlsStackView arrangedSubviews];
  v12 = [v11 countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v12)
  {
    v14 = v12;
    v15 = *v42;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v42 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v41 + 1) + 8 * i);
        if (v17 != self->_doneButtonSpacer)
        {
          LODWORD(v13) = 1148846080;
          [(UIView *)v17 setContentHuggingPriority:0 forAxis:v13];
        }
      }

      v14 = [v11 countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v14);
  }

  replaceStackView = self->_replaceStackView;
  v19 = [(_UIFindNavigatorViewLayout *)self replaceTextField];
  [(UIStackView *)replaceStackView addArrangedSubview:v19];

  [(UIStackView *)self->_replaceStackView addArrangedSubview:self->_secondLineControlsStackView];
  v20 = [(_UIFindNavigatorViewLayout *)self doneButton];
  LODWORD(v21) = 1148846080;
  [v20 setContentCompressionResistancePriority:0 forAxis:v21];

  v22 = [(_UIFindNavigatorViewLayout_Mac *)self replaceReplaceAllSegmentedControl];
  LODWORD(v23) = 1148846080;
  [v22 setContentCompressionResistancePriority:0 forAxis:v23];

  secondLineControlsStackView = self->_secondLineControlsStackView;
  v25 = [(_UIFindNavigatorViewLayout_Mac *)self replaceReplaceAllSegmentedControl];
  [(UIStackView *)secondLineControlsStackView addArrangedSubview:v25];

  LODWORD(v26) = 1148846080;
  [(UIView *)self->_secondLineControlsStackView setContentHuggingPriority:0 forAxis:v26];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v27 = [(UIStackView *)self->_secondLineControlsStackView arrangedSubviews];
  v28 = [v27 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v28)
  {
    v30 = v28;
    v31 = *v38;
    do
    {
      for (j = 0; j != v30; ++j)
      {
        if (*v38 != v31)
        {
          objc_enumerationMutation(v27);
        }

        LODWORD(v29) = 1148846080;
        [*(*(&v37 + 1) + 8 * j) setContentHuggingPriority:0 forAxis:v29];
      }

      v30 = [v27 countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v30);
  }

  v33 = [(UIView *)self->_secondLineControlsStackView widthAnchor];
  v34 = [(UIView *)self->_firstLineControlsStackView widthAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];
  lineEqualWidthsConstraint = self->_lineEqualWidthsConstraint;
  self->_lineEqualWidthsConstraint = v35;
}

- (void)setReplaceFieldVisible:(BOOL)a3
{
  v3 = a3;
  v10.receiver = self;
  v10.super_class = _UIFindNavigatorViewLayout_Mac;
  [(_UIFindNavigatorViewLayout *)&v10 setReplaceFieldVisible:?];
  [(UIView *)self->_replaceStackView setHidden:v3 ^ 1];
  [(UIView *)self->_doneButtonSpacer setHidden:v3 ^ 1];
  [(NSLayoutConstraint *)self->_lineEqualWidthsConstraint setActive:v3];
  [(UISwitch *)self->_replaceToggleSwitch setOn:v3];
  if (!v3)
  {
    v7 = [(UIStackView *)self->_firstLineControlsStackView arrangedSubviews];
    v8 = [v7 indexOfObject:self->_doneButtonSpacer];

    firstLineControlsStackView = self->_firstLineControlsStackView;
    v6 = [(_UIFindNavigatorViewLayout *)self doneButton];
    [(UIStackView *)firstLineControlsStackView insertArrangedSubview:v6 atIndex:v8 - 1];
  }

  else
  {
    secondLineControlsStackView = self->_secondLineControlsStackView;
    v6 = [(_UIFindNavigatorViewLayout *)self doneButton];
    [(UIStackView *)secondLineControlsStackView addArrangedSubview:v6];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = _UIFindNavigatorViewLayout_Mac;
  [(UIView *)&v3 layoutSubviews];
  [(UIView *)self bounds];
  [(UIView *)self->_verticalStackView setFrame:?];
}

@end