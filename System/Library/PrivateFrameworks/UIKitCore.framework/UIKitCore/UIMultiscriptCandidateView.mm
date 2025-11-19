@interface UIMultiscriptCandidateView
- (BOOL)requiresAlternativeCandidatesButton;
- (UIMultiscriptCandidateView)init;
- (void)reloadArrangedSubviews:(id)a3;
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

- (void)reloadArrangedSubviews:(id)a3
{
  v35 = a3;
  v4 = +[UIKeyboardInputModeController sharedInputModeController];
  v5 = [v4 currentInputMode];

  v6 = [v5 multiscriptSet];
  v7 = [v5 multiscriptIndex];
  if ([v6 count] < 2)
  {
    v9 = 0;
    if (v7)
    {
      v10 = 1;
      v8 = 0;
      goto LABEL_17;
    }

    v8 = 0;
  }

  else
  {
    if (v7 == 1)
    {
      v9 = [v6 objectAtIndexedSubscript:0];
      v8 = 0;
      goto LABEL_16;
    }

    if (v7)
    {
      v8 = [v6 objectAtIndexedSubscript:0];
      v9 = 0;
      goto LABEL_16;
    }

    v8 = [v6 objectAtIndexedSubscript:1];
    if ([v6 count] < 3)
    {
      v9 = 0;
    }

    else
    {
      v9 = [v6 objectAtIndexedSubscript:2];
    }
  }

  v11 = +[UIKeyboardImpl activeInstance];
  v12 = [v11 textInputTraits];
  if ([v12 isSecureTextEntry])
  {

LABEL_15:
    v10 = 0;
    goto LABEL_17;
  }

  v13 = +[UIKeyboardImpl activeInstance];
  v14 = [v13 textInputTraits];
  v15 = [v14 keyboardType];

  if (v15 == 1)
  {
    goto LABEL_15;
  }

LABEL_16:
  v10 = 1;
LABEL_17:
  v16 = [(UIMultiscriptCandidateView *)self requiresAlternativeCandidatesButton];
  v17 = v16;
  if (v8)
  {
    v18 = v16;
  }

  else
  {
    v18 = 0;
  }

  v19 = [(UIMultiscriptCandidateView *)self leadingButton];
  [(UIStackView *)self removeArrangedSubview:v19];

  v20 = [(UIMultiscriptCandidateView *)self leadingButton];
  [v20 removeFromSuperview];

  v21 = [(UIMultiscriptCandidateView *)self trailingButton];
  [(UIStackView *)self removeArrangedSubview:v21];

  v22 = [(UIMultiscriptCandidateView *)self trailingButton];
  [v22 removeFromSuperview];

  v23 = [(UIMultiscriptCandidateView *)self alternativeCandidatesButton];
  [(UIStackView *)self removeArrangedSubview:v23];

  v24 = [(UIMultiscriptCandidateView *)self alternativeCandidatesButton];
  [v24 removeFromSuperview];

  [(UIStackView *)self removeArrangedSubview:v35];
  if (!v10)
  {
    [(UIStackView *)self addArrangedSubview:v35];
    goto LABEL_29;
  }

  if (v9)
  {
    v25 = _GetButtonForInputMode(v9);
    [(UIMultiscriptCandidateView *)self setLeadingButton:v25];

    v26 = [(UIMultiscriptCandidateView *)self leadingButton];
    [(UIStackView *)self addArrangedSubview:v26];
  }

  else if (v18)
  {
    v27 = [(UIMultiscriptCandidateView *)self alternativeCandidateAction];
    v28 = _GetAlternativeCandidatesButton(v27);
    [(UIMultiscriptCandidateView *)self setAlternativeCandidatesButton:v28];

    v29 = [(UIMultiscriptCandidateView *)self alternativeCandidatesButton];
    [(UIStackView *)self addArrangedSubview:v29];

    [(UIStackView *)self addArrangedSubview:v35];
LABEL_27:
    v30 = _GetButtonForInputMode(v8);
    [(UIMultiscriptCandidateView *)self setTrailingButton:v30];

    v31 = [(UIMultiscriptCandidateView *)self trailingButton];
LABEL_28:
    v32 = v31;
    [(UIStackView *)self addArrangedSubview:v31];

    goto LABEL_29;
  }

  [(UIStackView *)self addArrangedSubview:v35];
  if (v8)
  {
    goto LABEL_27;
  }

  if (v17)
  {
    v33 = [(UIMultiscriptCandidateView *)self alternativeCandidateAction];
    v34 = _GetAlternativeCandidatesButton(v33);
    [(UIMultiscriptCandidateView *)self setAlternativeCandidatesButton:v34];

    v31 = [(UIMultiscriptCandidateView *)self alternativeCandidatesButton];
    goto LABEL_28;
  }

LABEL_29:
}

- (BOOL)requiresAlternativeCandidatesButton
{
  v2 = +[UIKeyboardInputModeController sharedInputModeController];
  v3 = [v2 currentInputMode];

  v4 = [v3 multiscriptSet];
  v5 = [v3 multiscriptIndex];
  v7 = [v4 count] < 2 || v5 != 0;

  return v7;
}

@end