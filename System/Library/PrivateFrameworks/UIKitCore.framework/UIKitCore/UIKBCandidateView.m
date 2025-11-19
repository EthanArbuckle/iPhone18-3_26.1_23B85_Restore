@interface UIKBCandidateView
- (BOOL)isTenKey;
- (UIKBCandidateView)initWithFrame:(CGRect)a3 keyplane:(id)a4 key:(id)a5;
- (id)candidateList;
- (void)clearCandidateKey;
- (void)dealloc;
- (void)displayLayer:(id)a3;
- (void)updateCandidateKey;
- (void)updateForKeyplane:(id)a3 key:(id)a4;
@end

@implementation UIKBCandidateView

- (UIKBCandidateView)initWithFrame:(CGRect)a3 keyplane:(id)a4 key:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a4;
  v17.receiver = self;
  v17.super_class = UIKBCandidateView;
  v12 = [(UIKBKeyView *)&v17 initWithFrame:v11 keyplane:a5 key:x, y, width, height];
  v13 = v12;
  if (v12)
  {
    [(UIView *)v12 setEnabled:1];
    [(UIView *)v13 setOpaque:0];
    -[UIKBCandidateView setVisualStyling:](v13, "setVisualStyling:", [v11 visualStyling]);
    if ([(UIKBCandidateView *)v13 isTenKey])
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __48__UIKBCandidateView_initWithFrame_keyplane_key___block_invoke;
      v15[3] = &unk_1E70F3590;
      v16 = v13;
      [UIView performWithoutAnimation:v15];
    }
  }

  return v13;
}

- (void)dealloc
{
  [(UIKBCandidateView *)self clearCandidateKey];
  v3.receiver = self;
  v3.super_class = UIKBCandidateView;
  [(UIKBKeyView *)&v3 dealloc];
}

- (void)updateForKeyplane:(id)a3 key:(id)a4
{
  [(UIKBCandidateView *)self clearCandidateKey:a3];

  [(UIKBCandidateView *)self updateCandidateKey];
}

- (void)displayLayer:(id)a3
{
  v4 = a3;
  if ([(UIKBCandidateView *)self isTenKey])
  {
    v5 = [(UIKBKeyView *)self screenTraits];
    if ([v5 idiom] == 1)
    {
LABEL_9:

      goto LABEL_10;
    }

    v6 = [(UIKBKeyView *)self screenTraits];
    if ([v6 idiom] == 24)
    {
LABEL_8:

      goto LABEL_9;
    }

    v7 = [(UIKBKeyView *)self screenTraits];
    if ([v7 idiom] == 25)
    {
LABEL_7:

      goto LABEL_8;
    }

    v8 = [(UIKBKeyView *)self screenTraits];
    if ([v8 idiom] == 26)
    {

      goto LABEL_7;
    }

    v9 = [(UIKBKeyView *)self screenTraits];
    v10 = [v9 idiom];

    if (v10 != 23)
    {
      v11.receiver = self;
      v11.super_class = UIKBCandidateView;
      [(UIKBKeyView *)&v11 displayLayer:v4];
    }
  }

LABEL_10:
}

- (id)candidateList
{
  v2 = +[UIKeyboardImpl activeInstance];
  v3 = [v2 candidateController];

  return v3;
}

- (BOOL)isTenKey
{
  v2 = [(UIKBKeyView *)self key];
  v3 = [v2 rendering];

  return (v3 < 0x23) & (0x600000002uLL >> v3);
}

- (void)updateCandidateKey
{
  v3 = [(UIKBKeyView *)self factory];
  v4 = [(UIKBKeyView *)self key];
  v5 = [(UIKBKeyView *)self keyplane];
  v55 = [v3 traitsForKey:v4 onKeyplane:v5];

  v6 = [v55 geometry];
  [v6 roundRectRadius];
  v8 = v7;

  v9 = [v55 geometry];
  v10 = [v9 roundRectCorners];

  v11 = [v55 geometry];
  [v11 frame];
  MinY = CGRectGetMinY(v57);
  v13 = [v55 geometry];
  [v13 paddedFrame];
  v14 = MinY - CGRectGetMinY(v58);

  v15 = [v55 geometry];
  [v15 frame];
  MaxX = CGRectGetMaxX(v59);
  v17 = [v55 geometry];
  [v17 paddedFrame];
  v18 = MaxX - CGRectGetMaxX(v60);

  v19 = [v55 geometry];
  [v19 frame];
  MaxY = CGRectGetMaxY(v61);
  v21 = [v55 geometry];
  [v21 paddedFrame];
  v22 = MaxY - CGRectGetMaxY(v62);

  v23 = [v55 geometry];
  [v23 frame];
  MinX = CGRectGetMinX(v63);
  v25 = [v55 geometry];
  [v25 paddedFrame];
  v26 = MinX - CGRectGetMinX(v64);

  v27 = +[UIKeyboardImpl activeInstance];
  v28 = [v27 candidateController];

  [(UIView *)self bounds];
  v30 = v29 - v26;
  v32 = v31 - (v18 - v26);
  v34 = v33 - v14;
  v36 = v35 - (v22 - v14);
  v37 = [(UIKBCandidateView *)self candidateKey];

  if (!v37)
  {
    if (([(UIKBCandidateView *)self visualStyling]& 0x3F) == 1 && ([(UIKBCandidateView *)self visualStyling]& 0x80) != 0)
    {
      v38 = +[UIKeyboardCandidateViewConfigurationTenKeyPadSplit configuration];
    }

    else
    {
      v38 = 0;
    }

    if (([(UIKBCandidateView *)self visualStyling]& 0x3F) == 3)
    {
      [(UIView *)self frame];
      v39 = off_1E70E9F10;
      if (v40 > 84.0)
      {
        v39 = off_1E70E9FD8;
      }
    }

    else
    {
      v39 = off_1E70E9FD0;
    }

    v41 = [(__objc2_class *)*v39 configuration];

    v42 = [v28 newCandidateKeyWithFrame:v41 configuration:{v30, v34, v32, v36}];
    [(UIKBCandidateView *)self setCandidateKey:v42];
  }

  v43 = [(UIKBCandidateView *)self candidateKey];
  v44 = [v43 superview];

  if (v44 != self)
  {
    v45 = [(UIKBCandidateView *)self candidateKey];
    [v45 removeFromSuperview];

    v46 = [(UIKBCandidateView *)self candidateKey];
    [v46 setHidden:0];

    v47 = [(UIKBCandidateView *)self candidateKey];
    [(UIView *)self addSubview:v47];
  }

  v48 = [(UIKBCandidateView *)self candidateKey];
  [v48 setFrame:{v30, v34, v32, v36}];

  v49 = [(UIKBCandidateView *)self candidateKey];
  [v49 setAutoresizingMask:18];

  v50 = [(UIKBCandidateView *)self candidateKey];
  [v50 _setContinuousCornerRadius:v8];

  v51 = [(UIKBCandidateView *)self candidateKey];
  v52 = [v51 layer];
  [v52 setMaskedCorners:v10 & 0xF];

  v53 = [(UIKBCandidateView *)self candidateKey];
  v54 = [v53 layer];
  [v54 setMasksToBounds:1];

  [v28 setActiveCandidateViewType:1];
  [v28 updateStates];
}

- (void)clearCandidateKey
{
  v3 = +[UIKeyboardImpl activeInstance];
  v7 = [v3 candidateController];

  v4 = [v7 candidateKey];
  v5 = [v4 superview];

  if (v5 == self)
  {
    v6 = [v7 candidateKey];
    [v6 removeFromSuperview];
  }
}

@end