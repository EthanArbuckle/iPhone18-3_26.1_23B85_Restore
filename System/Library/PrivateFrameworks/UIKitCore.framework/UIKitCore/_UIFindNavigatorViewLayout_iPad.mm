@interface _UIFindNavigatorViewLayout_iPad
- (_UIFindNavigatorViewLayout_iPad)initWithFrame:(CGRect)frame;
- (double)preferredWidth;
- (id)preferredOpaqueBackgroundColor;
- (void)_setAndActivateConstraints;
- (void)layoutSubviews;
- (void)prepareForLayout;
- (void)setReplaceFieldVisible:(BOOL)visible;
@end

@implementation _UIFindNavigatorViewLayout_iPad

- (id)preferredOpaqueBackgroundColor
{
  _inheritedRenderConfig = [(UIView *)self _inheritedRenderConfig];
  if ([_inheritedRenderConfig colorAdaptiveBackground])
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

- (_UIFindNavigatorViewLayout_iPad)initWithFrame:(CGRect)frame
{
  v27.receiver = self;
  v27.super_class = _UIFindNavigatorViewLayout_iPad;
  v3 = [(UIView *)&v27 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    _inheritedRenderConfig2 = [(UIView *)v4 _inheritedRenderConfig];
    colorAdaptiveBackground2 = [_inheritedRenderConfig2 colorAdaptiveBackground];

    if (colorAdaptiveBackground2)
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
    _inheritedRenderConfig3 = [(UIView *)v4 _inheritedRenderConfig];
    colorAdaptiveBackground3 = [_inheritedRenderConfig3 colorAdaptiveBackground];

    if (colorAdaptiveBackground3)
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
  doneButton = [(_UIFindNavigatorViewLayout *)self doneButton];
  [(UIStackView *)contentStackView addArrangedSubview:doneButton];

  textFieldsStackView = self->_textFieldsStackView;
  searchTextField = [(_UIFindNavigatorViewLayout *)self searchTextField];
  [(UIStackView *)textFieldsStackView addArrangedSubview:searchTextField];

  v7 = self->_textFieldsStackView;
  replaceTextField = [(_UIFindNavigatorViewLayout *)self replaceTextField];
  [(UIStackView *)v7 addArrangedSubview:replaceTextField];

  [(UIStackView *)self->_contentStackView addArrangedSubview:self->_textFieldsStackView];
  v9 = self->_contentStackView;
  replaceButton = [(_UIFindNavigatorViewLayout *)self replaceButton];
  [(UIStackView *)v9 addArrangedSubview:replaceButton];

  _inheritedRenderConfig = [(UIView *)self _inheritedRenderConfig];
  LODWORD(replaceButton) = [_inheritedRenderConfig colorAdaptiveBackground];

  if (replaceButton)
  {
    nextPrevStackView = self->_nextPrevStackView;
    previousResultButton = [(_UIFindNavigatorViewLayout *)self previousResultButton];
    [(UIStackView *)nextPrevStackView addArrangedSubview:previousResultButton];

    v14 = self->_nextPrevStackView;
    nextResultButton = [(_UIFindNavigatorViewLayout *)self nextResultButton];
    [(UIStackView *)v14 addArrangedSubview:nextResultButton];

    [(UIStackView *)self->_contentStackView addArrangedSubview:self->_nextPrevStackView];
  }

  else
  {
    v16 = self->_contentStackView;
    previousResultButton2 = [(_UIFindNavigatorViewLayout *)self previousResultButton];
    [(UIStackView *)v16 addArrangedSubview:previousResultButton2];

    v18 = self->_contentStackView;
    nextResultButton2 = [(_UIFindNavigatorViewLayout *)self nextResultButton];
    [(UIStackView *)v18 addArrangedSubview:nextResultButton2];
  }

  [(_UIFindNavigatorViewLayout_iPad *)self _setAndActivateConstraints];
}

- (void)_setAndActivateConstraints
{
  v39[2] = *MEMORY[0x1E69E9840];
  v36 = MEMORY[0x1E69977A0];
  nextResultButton = [(_UIFindNavigatorViewLayout *)self nextResultButton];
  widthAnchor = [nextResultButton widthAnchor];
  heightAnchor = [(UIView *)self->_contentStackView heightAnchor];
  v6 = [widthAnchor constraintEqualToAnchor:heightAnchor];
  v39[0] = v6;
  previousResultButton = [(_UIFindNavigatorViewLayout *)self previousResultButton];
  widthAnchor2 = [previousResultButton widthAnchor];
  heightAnchor2 = [(UIView *)self->_contentStackView heightAnchor];
  v10 = [widthAnchor2 constraintEqualToAnchor:heightAnchor2];
  v39[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:2];
  [v36 activateConstraints:v11];

  _inheritedRenderConfig = [(UIView *)self _inheritedRenderConfig];
  LODWORD(widthAnchor) = [_inheritedRenderConfig colorAdaptiveBackground];

  if (widthAnchor)
  {
    [(UIStackView *)self->_contentStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    v28 = MEMORY[0x1E69977A0];
    bottomAnchor = [(UIView *)self bottomAnchor];
    bottomAnchor2 = [(UIView *)self->_contentStackView bottomAnchor];
    v34 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:8.0];
    v38[0] = v34;
    doneButton = [(_UIFindNavigatorViewLayout *)self doneButton];
    heightAnchor3 = [doneButton heightAnchor];
    heightAnchor4 = [(UIView *)self->_contentStackView heightAnchor];
    v30 = [heightAnchor3 constraintEqualToAnchor:heightAnchor4];
    v38[1] = v30;
    doneButton2 = [(_UIFindNavigatorViewLayout *)self doneButton];
    widthAnchor3 = [doneButton2 widthAnchor];
    doneButton3 = [(_UIFindNavigatorViewLayout *)self doneButton];
    heightAnchor5 = [doneButton3 heightAnchor];
    v24 = [widthAnchor3 constraintEqualToAnchor:heightAnchor5];
    v38[2] = v24;
    widthAnchor4 = [(UIView *)self->_contentStackView widthAnchor];
    [(_UIFindNavigatorViewLayout_iPad *)self preferredWidth];
    v13 = [widthAnchor4 constraintEqualToConstant:?];
    v38[3] = v13;
    centerXAnchor = [(UIView *)self->_contentStackView centerXAnchor];
    centerXAnchor2 = [(UIView *)self centerXAnchor];
    v16 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v38[4] = v16;
    widthAnchor5 = [(UIView *)self->_nextPrevStackView widthAnchor];
    v18 = [widthAnchor5 constraintEqualToConstant:86.0];
    v38[5] = v18;
    replaceButton = [(_UIFindNavigatorViewLayout *)self replaceButton];
    widthAnchor6 = [replaceButton widthAnchor];
    v21 = [widthAnchor6 constraintEqualToConstant:86.0];
    v38[6] = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:7];
    [v28 activateConstraints:v22];
  }
}

- (double)preferredWidth
{
  v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  systemInputAssistantViewController = [v3 systemInputAssistantViewController];
  traitCollection = [(UIView *)self traitCollection];
  [systemInputAssistantViewController _centerViewWidthForTraitCollection:traitCollection];
  v7 = v6;

  mainScreen = [objc_opt_self() mainScreen];
  [mainScreen bounds];
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

- (void)setReplaceFieldVisible:(BOOL)visible
{
  visibleCopy = visible;
  v7.receiver = self;
  v7.super_class = _UIFindNavigatorViewLayout_iPad;
  [(_UIFindNavigatorViewLayout *)&v7 setReplaceFieldVisible:?];
  replaceButton = [(_UIFindNavigatorViewLayout *)self replaceButton];
  [replaceButton setHidden:!visibleCopy];

  replaceTextField = [(_UIFindNavigatorViewLayout *)self replaceTextField];
  [replaceTextField setHidden:!visibleCopy];
}

- (void)layoutSubviews
{
  v31.receiver = self;
  v31.super_class = _UIFindNavigatorViewLayout_iPad;
  [(UIView *)&v31 layoutSubviews];
  v3 = 0.0;
  if (![(_UIFindNavigatorViewLayout *)self assistantBarStyle])
  {
    _inheritedRenderConfig = [(UIView *)self _inheritedRenderConfig];
    colorAdaptiveBackground = [_inheritedRenderConfig colorAdaptiveBackground];

    if (colorAdaptiveBackground)
    {
      v3 = 0.0;
    }

    else
    {
      v3 = 3.0;
    }
  }

  _inheritedRenderConfig2 = [(UIView *)self _inheritedRenderConfig];
  colorAdaptiveBackground2 = [_inheritedRenderConfig2 colorAdaptiveBackground];

  if (colorAdaptiveBackground2)
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