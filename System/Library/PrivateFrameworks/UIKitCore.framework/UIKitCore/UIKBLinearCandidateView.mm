@interface UIKBLinearCandidateView
- (unint64_t)focusableVariantCount;
- (void)refreshSelectedCandidateAnimated:(BOOL)a3;
- (void)updateCandidateKey;
@end

@implementation UIKBLinearCandidateView

- (void)updateCandidateKey
{
  v3 = +[UIKeyboardImpl activeInstance];
  v30 = [v3 candidateController];

  v4 = [(UIKBCandidateView *)self candidateKey];

  if (!v4)
  {
    [(UIView *)self bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [(UIKBLinearCandidateView *)self getConfiguration];
    v14 = [v30 newCandidateKeyWithFrame:v13 configuration:{v6, v8, v10, v12}];
    [(UIKBCandidateView *)self setCandidateKey:v14];
  }

  v15 = [(UIKBCandidateView *)self candidateKey];
  v16 = [v15 superview];

  if (v16 != self)
  {
    v17 = [(UIKBCandidateView *)self candidateKey];
    [v17 removeFromSuperview];

    v18 = [(UIKBCandidateView *)self candidateKey];
    [v18 setHidden:0];

    v19 = [(UIKBCandidateView *)self candidateKey];
    [(UIView *)self addSubview:v19];
  }

  [(UIView *)self bounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = [(UIKBCandidateView *)self candidateKey];
  [v28 setFrame:{v21, v23, v25, v27}];

  v29 = [(UIKBCandidateView *)self candidateKey];
  [v29 setAutoresizingMask:18];

  [v30 setActiveCandidateViewType:1];
}

- (void)refreshSelectedCandidateAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = +[UIKeyboardImpl activeInstance];
  v7 = [v5 candidateController];

  v6 = [(UIKBKeyView *)self key];
  [v7 showCandidateAtIndex:objc_msgSend(v6 animated:"selectedVariantIndex") scrollPosition:{v3, 16}];
}

- (unint64_t)focusableVariantCount
{
  v2 = +[UIKeyboardImpl activeInstance];
  v3 = [v2 candidateController];

  v4 = [v3 candidates];
  v5 = [v4 candidates];
  v6 = [v5 count];

  return v6;
}

@end