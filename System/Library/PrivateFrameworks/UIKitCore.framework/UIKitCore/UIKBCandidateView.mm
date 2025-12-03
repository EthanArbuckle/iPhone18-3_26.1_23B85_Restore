@interface UIKBCandidateView
- (BOOL)isTenKey;
- (UIKBCandidateView)initWithFrame:(CGRect)frame keyplane:(id)keyplane key:(id)key;
- (id)candidateList;
- (void)clearCandidateKey;
- (void)dealloc;
- (void)displayLayer:(id)layer;
- (void)updateCandidateKey;
- (void)updateForKeyplane:(id)keyplane key:(id)key;
@end

@implementation UIKBCandidateView

- (UIKBCandidateView)initWithFrame:(CGRect)frame keyplane:(id)keyplane key:(id)key
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  keyplaneCopy = keyplane;
  v17.receiver = self;
  v17.super_class = UIKBCandidateView;
  height = [(UIKBKeyView *)&v17 initWithFrame:keyplaneCopy keyplane:key key:x, y, width, height];
  v13 = height;
  if (height)
  {
    [(UIView *)height setEnabled:1];
    [(UIView *)v13 setOpaque:0];
    -[UIKBCandidateView setVisualStyling:](v13, "setVisualStyling:", [keyplaneCopy visualStyling]);
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

- (void)updateForKeyplane:(id)keyplane key:(id)key
{
  [(UIKBCandidateView *)self clearCandidateKey:keyplane];

  [(UIKBCandidateView *)self updateCandidateKey];
}

- (void)displayLayer:(id)layer
{
  layerCopy = layer;
  if ([(UIKBCandidateView *)self isTenKey])
  {
    screenTraits = [(UIKBKeyView *)self screenTraits];
    if ([screenTraits idiom] == 1)
    {
LABEL_9:

      goto LABEL_10;
    }

    screenTraits2 = [(UIKBKeyView *)self screenTraits];
    if ([screenTraits2 idiom] == 24)
    {
LABEL_8:

      goto LABEL_9;
    }

    screenTraits3 = [(UIKBKeyView *)self screenTraits];
    if ([screenTraits3 idiom] == 25)
    {
LABEL_7:

      goto LABEL_8;
    }

    screenTraits4 = [(UIKBKeyView *)self screenTraits];
    if ([screenTraits4 idiom] == 26)
    {

      goto LABEL_7;
    }

    screenTraits5 = [(UIKBKeyView *)self screenTraits];
    idiom = [screenTraits5 idiom];

    if (idiom != 23)
    {
      v11.receiver = self;
      v11.super_class = UIKBCandidateView;
      [(UIKBKeyView *)&v11 displayLayer:layerCopy];
    }
  }

LABEL_10:
}

- (id)candidateList
{
  v2 = +[UIKeyboardImpl activeInstance];
  candidateController = [v2 candidateController];

  return candidateController;
}

- (BOOL)isTenKey
{
  v2 = [(UIKBKeyView *)self key];
  rendering = [v2 rendering];

  return (rendering < 0x23) & (0x600000002uLL >> rendering);
}

- (void)updateCandidateKey
{
  factory = [(UIKBKeyView *)self factory];
  v4 = [(UIKBKeyView *)self key];
  keyplane = [(UIKBKeyView *)self keyplane];
  v55 = [factory traitsForKey:v4 onKeyplane:keyplane];

  geometry = [v55 geometry];
  [geometry roundRectRadius];
  v8 = v7;

  geometry2 = [v55 geometry];
  roundRectCorners = [geometry2 roundRectCorners];

  geometry3 = [v55 geometry];
  [geometry3 frame];
  MinY = CGRectGetMinY(v57);
  geometry4 = [v55 geometry];
  [geometry4 paddedFrame];
  v14 = MinY - CGRectGetMinY(v58);

  geometry5 = [v55 geometry];
  [geometry5 frame];
  MaxX = CGRectGetMaxX(v59);
  geometry6 = [v55 geometry];
  [geometry6 paddedFrame];
  v18 = MaxX - CGRectGetMaxX(v60);

  geometry7 = [v55 geometry];
  [geometry7 frame];
  MaxY = CGRectGetMaxY(v61);
  geometry8 = [v55 geometry];
  [geometry8 paddedFrame];
  v22 = MaxY - CGRectGetMaxY(v62);

  geometry9 = [v55 geometry];
  [geometry9 frame];
  MinX = CGRectGetMinX(v63);
  geometry10 = [v55 geometry];
  [geometry10 paddedFrame];
  v26 = MinX - CGRectGetMinX(v64);

  v27 = +[UIKeyboardImpl activeInstance];
  candidateController = [v27 candidateController];

  [(UIView *)self bounds];
  v30 = v29 - v26;
  v32 = v31 - (v18 - v26);
  v34 = v33 - v14;
  v36 = v35 - (v22 - v14);
  candidateKey = [(UIKBCandidateView *)self candidateKey];

  if (!candidateKey)
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

    configuration = [(__objc2_class *)*v39 configuration];

    v42 = [candidateController newCandidateKeyWithFrame:configuration configuration:{v30, v34, v32, v36}];
    [(UIKBCandidateView *)self setCandidateKey:v42];
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

  candidateKey6 = [(UIKBCandidateView *)self candidateKey];
  [candidateKey6 setFrame:{v30, v34, v32, v36}];

  candidateKey7 = [(UIKBCandidateView *)self candidateKey];
  [candidateKey7 setAutoresizingMask:18];

  candidateKey8 = [(UIKBCandidateView *)self candidateKey];
  [candidateKey8 _setContinuousCornerRadius:v8];

  candidateKey9 = [(UIKBCandidateView *)self candidateKey];
  layer = [candidateKey9 layer];
  [layer setMaskedCorners:roundRectCorners & 0xF];

  candidateKey10 = [(UIKBCandidateView *)self candidateKey];
  layer2 = [candidateKey10 layer];
  [layer2 setMasksToBounds:1];

  [candidateController setActiveCandidateViewType:1];
  [candidateController updateStates];
}

- (void)clearCandidateKey
{
  v3 = +[UIKeyboardImpl activeInstance];
  candidateController = [v3 candidateController];

  candidateKey = [candidateController candidateKey];
  superview = [candidateKey superview];

  if (superview == self)
  {
    candidateKey2 = [candidateController candidateKey];
    [candidateKey2 removeFromSuperview];
  }
}

@end