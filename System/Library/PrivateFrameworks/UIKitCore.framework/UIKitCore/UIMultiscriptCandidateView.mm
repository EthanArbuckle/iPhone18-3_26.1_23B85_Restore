@interface UIMultiscriptCandidateView
- (BOOL)requiresAlternativeCandidatesButton;
- (UIMultiscriptCandidateView)init;
- (void)reloadArrangedSubviews:(id)subviews;
@end

@implementation UIMultiscriptCandidateView

- (UIMultiscriptCandidateView)init
{
  v5.receiver = self;
  v5.super_class = UIMultiscriptCandidateView;
  v2 = [(UIView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(UIStackView *)v2 setLayoutMarginsRelativeArrangement:0];
    [(UIView *)v3 setSemanticContentAttribute:3];
  }

  return v3;
}

- (void)reloadArrangedSubviews:(id)subviews
{
  subviewsCopy = subviews;
  v4 = +[UIKeyboardInputModeController sharedInputModeController];
  currentInputMode = [v4 currentInputMode];

  multiscriptSet = [currentInputMode multiscriptSet];
  multiscriptIndex = [currentInputMode multiscriptIndex];
  if ([multiscriptSet count] < 2)
  {
    v9 = 0;
    if (multiscriptIndex)
    {
      v10 = 1;
      v8 = 0;
      goto LABEL_17;
    }

    v8 = 0;
  }

  else
  {
    if (multiscriptIndex == 1)
    {
      v9 = [multiscriptSet objectAtIndexedSubscript:0];
      v8 = 0;
      goto LABEL_16;
    }

    if (multiscriptIndex)
    {
      v8 = [multiscriptSet objectAtIndexedSubscript:0];
      v9 = 0;
      goto LABEL_16;
    }

    v8 = [multiscriptSet objectAtIndexedSubscript:1];
    if ([multiscriptSet count] < 3)
    {
      v9 = 0;
    }

    else
    {
      v9 = [multiscriptSet objectAtIndexedSubscript:2];
    }
  }

  v11 = +[UIKeyboardImpl activeInstance];
  textInputTraits = [v11 textInputTraits];
  if ([textInputTraits isSecureTextEntry])
  {

LABEL_15:
    v10 = 0;
    goto LABEL_17;
  }

  v13 = +[UIKeyboardImpl activeInstance];
  textInputTraits2 = [v13 textInputTraits];
  keyboardType = [textInputTraits2 keyboardType];

  if (keyboardType == 1)
  {
    goto LABEL_15;
  }

LABEL_16:
  v10 = 1;
LABEL_17:
  requiresAlternativeCandidatesButton = [(UIMultiscriptCandidateView *)self requiresAlternativeCandidatesButton];
  v17 = requiresAlternativeCandidatesButton;
  if (v8)
  {
    v18 = requiresAlternativeCandidatesButton;
  }

  else
  {
    v18 = 0;
  }

  leadingButton = [(UIMultiscriptCandidateView *)self leadingButton];
  [(UIStackView *)self removeArrangedSubview:leadingButton];

  leadingButton2 = [(UIMultiscriptCandidateView *)self leadingButton];
  [leadingButton2 removeFromSuperview];

  trailingButton = [(UIMultiscriptCandidateView *)self trailingButton];
  [(UIStackView *)self removeArrangedSubview:trailingButton];

  trailingButton2 = [(UIMultiscriptCandidateView *)self trailingButton];
  [trailingButton2 removeFromSuperview];

  alternativeCandidatesButton = [(UIMultiscriptCandidateView *)self alternativeCandidatesButton];
  [(UIStackView *)self removeArrangedSubview:alternativeCandidatesButton];

  alternativeCandidatesButton2 = [(UIMultiscriptCandidateView *)self alternativeCandidatesButton];
  [alternativeCandidatesButton2 removeFromSuperview];

  [(UIStackView *)self removeArrangedSubview:subviewsCopy];
  if (!v10)
  {
    [(UIStackView *)self addArrangedSubview:subviewsCopy];
    goto LABEL_29;
  }

  if (v9)
  {
    v25 = _GetButtonForInputMode(v9);
    [(UIMultiscriptCandidateView *)self setLeadingButton:v25];

    leadingButton3 = [(UIMultiscriptCandidateView *)self leadingButton];
    [(UIStackView *)self addArrangedSubview:leadingButton3];
  }

  else if (v18)
  {
    alternativeCandidateAction = [(UIMultiscriptCandidateView *)self alternativeCandidateAction];
    v28 = _GetAlternativeCandidatesButton(alternativeCandidateAction);
    [(UIMultiscriptCandidateView *)self setAlternativeCandidatesButton:v28];

    alternativeCandidatesButton3 = [(UIMultiscriptCandidateView *)self alternativeCandidatesButton];
    [(UIStackView *)self addArrangedSubview:alternativeCandidatesButton3];

    [(UIStackView *)self addArrangedSubview:subviewsCopy];
LABEL_27:
    v30 = _GetButtonForInputMode(v8);
    [(UIMultiscriptCandidateView *)self setTrailingButton:v30];

    trailingButton3 = [(UIMultiscriptCandidateView *)self trailingButton];
LABEL_28:
    v32 = trailingButton3;
    [(UIStackView *)self addArrangedSubview:trailingButton3];

    goto LABEL_29;
  }

  [(UIStackView *)self addArrangedSubview:subviewsCopy];
  if (v8)
  {
    goto LABEL_27;
  }

  if (v17)
  {
    alternativeCandidateAction2 = [(UIMultiscriptCandidateView *)self alternativeCandidateAction];
    v34 = _GetAlternativeCandidatesButton(alternativeCandidateAction2);
    [(UIMultiscriptCandidateView *)self setAlternativeCandidatesButton:v34];

    trailingButton3 = [(UIMultiscriptCandidateView *)self alternativeCandidatesButton];
    goto LABEL_28;
  }

LABEL_29:
}

- (BOOL)requiresAlternativeCandidatesButton
{
  v2 = +[UIKeyboardInputModeController sharedInputModeController];
  currentInputMode = [v2 currentInputMode];

  multiscriptSet = [currentInputMode multiscriptSet];
  multiscriptIndex = [currentInputMode multiscriptIndex];
  v7 = [multiscriptSet count] < 2 || multiscriptIndex != 0;

  return v7;
}

@end