@interface UIKBLinearCandidateView
- (unint64_t)focusableVariantCount;
- (void)refreshSelectedCandidateAnimated:(BOOL)animated;
- (void)updateCandidateKey;
@end

@implementation UIKBLinearCandidateView

- (void)updateCandidateKey
{
  v3 = +[UIKeyboardImpl activeInstance];
  candidateController = [v3 candidateController];

  candidateKey = [(UIKBCandidateView *)self candidateKey];

  if (!candidateKey)
  {
    [(UIView *)self bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    getConfiguration = [(UIKBLinearCandidateView *)self getConfiguration];
    v14 = [candidateController newCandidateKeyWithFrame:getConfiguration configuration:{v6, v8, v10, v12}];
    [(UIKBCandidateView *)self setCandidateKey:v14];
  }

  candidateKey2 = [(UIKBCandidateView *)self candidateKey];
  superview = [candidateKey2 superview];

  if (superview != self)
  {
    candidateKey3 = [(UIKBCandidateView *)self candidateKey];
    [candidateKey3 removeFromSuperview];

    candidateKey4 = [(UIKBCandidateView *)self candidateKey];
    [candidateKey4 setHidden:0];

    candidateKey5 = [(UIKBCandidateView *)self candidateKey];
    [(UIView *)self addSubview:candidateKey5];
  }

  [(UIView *)self bounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  candidateKey6 = [(UIKBCandidateView *)self candidateKey];
  [candidateKey6 setFrame:{v21, v23, v25, v27}];

  candidateKey7 = [(UIKBCandidateView *)self candidateKey];
  [candidateKey7 setAutoresizingMask:18];

  [candidateController setActiveCandidateViewType:1];
}

- (void)refreshSelectedCandidateAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = +[UIKeyboardImpl activeInstance];
  candidateController = [v5 candidateController];

  v6 = [(UIKBKeyView *)self key];
  [candidateController showCandidateAtIndex:objc_msgSend(v6 animated:"selectedVariantIndex") scrollPosition:{animatedCopy, 16}];
}

- (unint64_t)focusableVariantCount
{
  v2 = +[UIKeyboardImpl activeInstance];
  candidateController = [v2 candidateController];

  candidates = [candidateController candidates];
  v4Candidates = [candidates candidates];
  v6 = [v4Candidates count];

  return v6;
}

@end