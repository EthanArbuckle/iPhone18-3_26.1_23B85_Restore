@interface _UIFindNavigatorViewLayout_iPad
- (_UIFindNavigatorViewLayout_iPad)initWithFrame:(CGRect)a3;
- (double)preferredWidth;
- (id)preferredOpaqueBackgroundColor;
- (void)_setAndActivateConstraints;
- (void)layoutSubviews;
- (void)prepareForLayout;
- (void)setReplaceFieldVisible:(BOOL)a3;
@end

@implementation _UIFindNavigatorViewLayout_iPad

- (id)preferredOpaqueBackgroundColor
{
  v2 = [(UIView *)self _inheritedRenderConfig];
  if ([v2 colorAdaptiveBackground])
  {
    +[UIColor clearColor];
  }

  else
  {
    +[UIColor systemBackgroundColor];
  }
  v3 = ;

  return v3;
}

- (_UIFindNavigatorViewLayout_iPad)initWithFrame:(CGRect)a3
{
  v27.receiver = self;
  v27.super_class = _UIFindNavigatorViewLayout_iPad;
  v3 = [(UIView *)&v27 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
      containerStackView = v4->_containerStackView;
      v4->_containerStackView = v12;

      [(UIStackView *)v4->_containerStackView setDistribution:1];
      [(UIStackView *)v4->_containerStackView setAxis:1];
      [(UIStackView *)v4->_containerStackView setAlignment:3];
    }

    else
    {
      v8 = *MEMORY[0x1E695F058];
      v9 = *(MEMORY[0x1E695F058] + 8);
      v10 = *(MEMORY[0x1E695F058] + 16);
      v11 = *(MEMORY[0x1E695F058] + 24);
    }

    v14 = [[UIStackView alloc] initWithFrame:v8, v9, v10, v11];
    p_contentStackView = &v4->_contentStackView;
    contentStackView = v4->_contentStackView;
    v4->_contentStackView = v14;

    [(UIStackView *)v4->_contentStackView setSpacing:8.0];
    [(UIStackView *)v4->_contentStackView setAxis:0];
    v17 = [(UIView *)v4 _inheritedRenderConfig];
    v18 = [v17 colorAdaptiveBackground];

    if (v18)
    {
      [(UIView *)v4->_containerStackView addSubview:*p_contentStackView];
      p_contentStackView = &v4->_containerStackView;
    }

    [(UIView *)v4 addSubview:*p_contentStackView];
    v19 = [[UIStackView alloc] initWithFrame:v8, v9, v10, v11];
    textFieldsStackView = v4->_textFieldsStackView;
    v4->_textFieldsStackView = v19;

    [(UIStackView *)v4->_textFieldsStackView setSpacing:8.0];
    [(UIStackView *)v4->_textFieldsStackView setAxis:0];
    [(UIStackView *)v4->_textFieldsStackView setDistribution:1];
    v21 = [(UIView *)v4 _inheritedRenderConfig];
    v22 = [v21 colorAdaptiveBackground];

    if (v22)
    {
      v23 = [[UIStackView alloc] initWithFrame:v8, v9, v10, v11];
      nextPrevStackView = v4->_nextPrevStackView;
      v4->_nextPrevStackView = v23;

      v25 = [[_UIViewGlass alloc] initWithVariant:0];
      [(UIView *)v4->_nextPrevStackView _setBackground:v25];

      [(UIStackView *)v4->_nextPrevStackView setDistribution:1];
      [(UIView *)v4->_nextPrevStackView _setCornerRadius:21.0];
    }
  }

  return v4;
}

- (void)prepareForLayout
{
  contentStackView = self->_contentStackView;
  v4 = [(_UIFindNavigatorViewLayout *)self doneButton];
  [(UIStackView *)contentStackView addArrangedSubview:v4];

  textFieldsStackView = self->_textFieldsStackView;
  v6 = [(_UIFindNavigatorViewLayout *)self searchTextField];
  [(UIStackView *)textFieldsStackView addArrangedSubview:v6];

  v7 = self->_textFieldsStackView;
  v8 = [(_UIFindNavigatorViewLayout *)self replaceTextField];
  [(UIStackView *)v7 addArrangedSubview:v8];

  [(UIStackView *)self->_contentStackView addArrangedSubview:self->_textFieldsStackView];
  v9 = self->_contentStackView;
  v10 = [(_UIFindNavigatorViewLayout *)self replaceButton];
  [(UIStackView *)v9 addArrangedSubview:v10];

  v11 = [(UIView *)self _inheritedRenderConfig];
  LODWORD(v10) = [v11 colorAdaptiveBackground];

  if (v10)
  {
    nextPrevStackView = self->_nextPrevStackView;
    v13 = [(_UIFindNavigatorViewLayout *)self previousResultButton];
    [(UIStackView *)nextPrevStackView addArrangedSubview:v13];

    v14 = self->_nextPrevStackView;
    v15 = [(_UIFindNavigatorViewLayout *)self nextResultButton];
    [(UIStackView *)v14 addArrangedSubview:v15];

    [(UIStackView *)self->_contentStackView addArrangedSubview:self->_nextPrevStackView];
  }

  else
  {
    v16 = self->_contentStackView;
    v17 = [(_UIFindNavigatorViewLayout *)self previousResultButton];
    [(UIStackView *)v16 addArrangedSubview:v17];

    v18 = self->_contentStackView;
    v19 = [(_UIFindNavigatorViewLayout *)self nextResultButton];
    [(UIStackView *)v18 addArrangedSubview:v19];
  }

  [(_UIFindNavigatorViewLayout_iPad *)self _setAndActivateConstraints];
}

- (void)_setAndActivateConstraints
{
  v39[2] = *MEMORY[0x1E69E9840];
  v36 = MEMORY[0x1E69977A0];
  v3 = [(_UIFindNavigatorViewLayout *)self nextResultButton];
  v4 = [v3 widthAnchor];
  v5 = [(UIView *)self->_contentStackView heightAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];
  v39[0] = v6;
  v7 = [(_UIFindNavigatorViewLayout *)self previousResultButton];
  v8 = [v7 widthAnchor];
  v9 = [(UIView *)self->_contentStackView heightAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  v39[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:2];
  [v36 activateConstraints:v11];

  v12 = [(UIView *)self _inheritedRenderConfig];
  LODWORD(v4) = [v12 colorAdaptiveBackground];

  if (v4)
  {
    [(UIStackView *)self->_contentStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    v28 = MEMORY[0x1E69977A0];
    v37 = [(UIView *)self bottomAnchor];
    v35 = [(UIView *)self->_contentStackView bottomAnchor];
    v34 = [v37 constraintEqualToAnchor:v35 constant:8.0];
    v38[0] = v34;
    v33 = [(_UIFindNavigatorViewLayout *)self doneButton];
    v32 = [v33 heightAnchor];
    v31 = [(UIView *)self->_contentStackView heightAnchor];
    v30 = [v32 constraintEqualToAnchor:v31];
    v38[1] = v30;
    v29 = [(_UIFindNavigatorViewLayout *)self doneButton];
    v26 = [v29 widthAnchor];
    v27 = [(_UIFindNavigatorViewLayout *)self doneButton];
    v25 = [v27 heightAnchor];
    v24 = [v26 constraintEqualToAnchor:v25];
    v38[2] = v24;
    v23 = [(UIView *)self->_contentStackView widthAnchor];
    [(_UIFindNavigatorViewLayout_iPad *)self preferredWidth];
    v13 = [v23 constraintEqualToConstant:?];
    v38[3] = v13;
    v14 = [(UIView *)self->_contentStackView centerXAnchor];
    v15 = [(UIView *)self centerXAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    v38[4] = v16;
    v17 = [(UIView *)self->_nextPrevStackView widthAnchor];
    v18 = [v17 constraintEqualToConstant:86.0];
    v38[5] = v18;
    v19 = [(_UIFindNavigatorViewLayout *)self replaceButton];
    v20 = [v19 widthAnchor];
    v21 = [v20 constraintEqualToConstant:86.0];
    v38[6] = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:7];
    [v28 activateConstraints:v22];
  }
}

- (double)preferredWidth
{
  v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v4 = [v3 systemInputAssistantViewController];
  v5 = [(UIView *)self traitCollection];
  [v4 _centerViewWidthForTraitCollection:v5];
  v7 = v6;

  v8 = [objc_opt_self() mainScreen];
  [v8 bounds];
  v10 = v9 * 0.5;

  if (v7 >= v10)
  {
    result = v7;
  }

  else
  {
    result = v10;
  }

  if (result < 600.0)
  {
    return result + 200.0;
  }

  return result;
}

- (void)setReplaceFieldVisible:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = _UIFindNavigatorViewLayout_iPad;
  [(_UIFindNavigatorViewLayout *)&v7 setReplaceFieldVisible:?];
  v5 = [(_UIFindNavigatorViewLayout *)self replaceButton];
  [v5 setHidden:!v3];

  v6 = [(_UIFindNavigatorViewLayout *)self replaceTextField];
  [v6 setHidden:!v3];
}

- (void)layoutSubviews
{
  v31.receiver = self;
  v31.super_class = _UIFindNavigatorViewLayout_iPad;
  [(UIView *)&v31 layoutSubviews];
  v3 = 0.0;
  if (![(_UIFindNavigatorViewLayout *)self assistantBarStyle])
  {
    v4 = [(UIView *)self _inheritedRenderConfig];
    v5 = [v4 colorAdaptiveBackground];

    if (v5)
    {
      v3 = 0.0;
    }

    else
    {
      v3 = 3.0;
    }
  }

  v6 = [(UIView *)self _inheritedRenderConfig];
  v7 = [v6 colorAdaptiveBackground];

  if (v7)
  {
    [(UIView *)self bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    [(UIView *)self safeAreaInsets];
    v17 = v16;
    [(UIView *)self safeAreaInsets];
    v19 = v3 + v3;
    [(UIView *)self->_containerStackView setFrame:v9 + v18, v3 + v11, v13 - (v17 + v18), v15 - (v3 + v3)];
  }

  else
  {
    v19 = v3 + v3;
  }

  [(UIView *)self bounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  [(UIView *)self safeAreaInsets];
  v29 = v28;
  [(UIView *)self safeAreaInsets];
  [(UIView *)self->_contentStackView setFrame:v21 + v30, v3 + v23, v25 - (v29 + v30), v27 - v19];
}

@end