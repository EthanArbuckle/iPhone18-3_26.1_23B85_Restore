@interface _UIFindNavigatorViewLayout_Mac
- (CGSize)preferredContentSize;
- (_UIFindNavigatorViewLayout_Mac)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)prepareForLayout;
- (void)setReplaceFieldVisible:(BOOL)visible;
@end

@implementation _UIFindNavigatorViewLayout_Mac

- (_UIFindNavigatorViewLayout_Mac)initWithFrame:(CGRect)frame
{
  v22.receiver = self;
  v22.super_class = _UIFindNavigatorViewLayout_Mac;
  v3 = [(UIView *)&v22 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  searchTextField = [(_UIFindNavigatorViewLayout *)self searchTextField];
  [searchTextField intrinsicContentSize];
  v5 = v4;

  replaceFieldVisible = [(_UIFindNavigatorViewLayout *)self replaceFieldVisible];
  v7 = v5 + v5 + 12.0;
  if (!replaceFieldVisible)
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
  searchTextField = [(_UIFindNavigatorViewLayout *)self searchTextField];
  [(UIStackView *)findStackView addArrangedSubview:searchTextField];

  [(UIStackView *)self->_findStackView addArrangedSubview:self->_firstLineControlsStackView];
  [(UIView *)self->_doneButtonSpacer setHidden:1];
  firstLineControlsStackView = self->_firstLineControlsStackView;
  nextPreviousSegmentedControl = [(_UIFindNavigatorViewLayout_Mac *)self nextPreviousSegmentedControl];
  [(UIStackView *)firstLineControlsStackView addArrangedSubview:nextPreviousSegmentedControl];

  v7 = self->_firstLineControlsStackView;
  doneButton = [(_UIFindNavigatorViewLayout *)self doneButton];
  [(UIStackView *)v7 addArrangedSubview:doneButton];

  [(UIStackView *)self->_firstLineControlsStackView addArrangedSubview:self->_doneButtonSpacer];
  v9 = self->_firstLineControlsStackView;
  replaceToggleSwitch = [(_UIFindNavigatorViewLayout_Mac *)self replaceToggleSwitch];
  [(UIStackView *)v9 addArrangedSubview:replaceToggleSwitch];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  arrangedSubviews = [(UIStackView *)self->_firstLineControlsStackView arrangedSubviews];
  v12 = [arrangedSubviews countByEnumeratingWithState:&v41 objects:v46 count:16];
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
          objc_enumerationMutation(arrangedSubviews);
        }

        v17 = *(*(&v41 + 1) + 8 * i);
        if (v17 != self->_doneButtonSpacer)
        {
          LODWORD(v13) = 1148846080;
          [(UIView *)v17 setContentHuggingPriority:0 forAxis:v13];
        }
      }

      v14 = [arrangedSubviews countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v14);
  }

  replaceStackView = self->_replaceStackView;
  replaceTextField = [(_UIFindNavigatorViewLayout *)self replaceTextField];
  [(UIStackView *)replaceStackView addArrangedSubview:replaceTextField];

  [(UIStackView *)self->_replaceStackView addArrangedSubview:self->_secondLineControlsStackView];
  doneButton2 = [(_UIFindNavigatorViewLayout *)self doneButton];
  LODWORD(v21) = 1148846080;
  [doneButton2 setContentCompressionResistancePriority:0 forAxis:v21];

  replaceReplaceAllSegmentedControl = [(_UIFindNavigatorViewLayout_Mac *)self replaceReplaceAllSegmentedControl];
  LODWORD(v23) = 1148846080;
  [replaceReplaceAllSegmentedControl setContentCompressionResistancePriority:0 forAxis:v23];

  secondLineControlsStackView = self->_secondLineControlsStackView;
  replaceReplaceAllSegmentedControl2 = [(_UIFindNavigatorViewLayout_Mac *)self replaceReplaceAllSegmentedControl];
  [(UIStackView *)secondLineControlsStackView addArrangedSubview:replaceReplaceAllSegmentedControl2];

  LODWORD(v26) = 1148846080;
  [(UIView *)self->_secondLineControlsStackView setContentHuggingPriority:0 forAxis:v26];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  arrangedSubviews2 = [(UIStackView *)self->_secondLineControlsStackView arrangedSubviews];
  v28 = [arrangedSubviews2 countByEnumeratingWithState:&v37 objects:v45 count:16];
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
          objc_enumerationMutation(arrangedSubviews2);
        }

        LODWORD(v29) = 1148846080;
        [*(*(&v37 + 1) + 8 * j) setContentHuggingPriority:0 forAxis:v29];
      }

      v30 = [arrangedSubviews2 countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v30);
  }

  widthAnchor = [(UIView *)self->_secondLineControlsStackView widthAnchor];
  widthAnchor2 = [(UIView *)self->_firstLineControlsStackView widthAnchor];
  v35 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  lineEqualWidthsConstraint = self->_lineEqualWidthsConstraint;
  self->_lineEqualWidthsConstraint = v35;
}

- (void)setReplaceFieldVisible:(BOOL)visible
{
  visibleCopy = visible;
  v10.receiver = self;
  v10.super_class = _UIFindNavigatorViewLayout_Mac;
  [(_UIFindNavigatorViewLayout *)&v10 setReplaceFieldVisible:?];
  [(UIView *)self->_replaceStackView setHidden:visibleCopy ^ 1];
  [(UIView *)self->_doneButtonSpacer setHidden:visibleCopy ^ 1];
  [(NSLayoutConstraint *)self->_lineEqualWidthsConstraint setActive:visibleCopy];
  [(UISwitch *)self->_replaceToggleSwitch setOn:visibleCopy];
  if (!visibleCopy)
  {
    arrangedSubviews = [(UIStackView *)self->_firstLineControlsStackView arrangedSubviews];
    v8 = [arrangedSubviews indexOfObject:self->_doneButtonSpacer];

    firstLineControlsStackView = self->_firstLineControlsStackView;
    doneButton = [(_UIFindNavigatorViewLayout *)self doneButton];
    [(UIStackView *)firstLineControlsStackView insertArrangedSubview:doneButton atIndex:v8 - 1];
  }

  else
  {
    secondLineControlsStackView = self->_secondLineControlsStackView;
    doneButton = [(_UIFindNavigatorViewLayout *)self doneButton];
    [(UIStackView *)secondLineControlsStackView addArrangedSubview:doneButton];
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