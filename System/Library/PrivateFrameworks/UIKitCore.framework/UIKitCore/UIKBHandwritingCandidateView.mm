@interface UIKBHandwritingCandidateView
+ (double)shadowYForBounds:(CGRect)bounds shadowHeight:(double)height;
- (UIKBHandwritingCandidateView)initWithFrame:(CGRect)frame keyplane:(id)keyplane key:(id)key;
- (void)updateCandidateKey;
- (void)updateForKeyplane:(id)keyplane key:(id)key;
@end

@implementation UIKBHandwritingCandidateView

- (UIKBHandwritingCandidateView)initWithFrame:(CGRect)frame keyplane:(id)keyplane key:(id)key
{
  v10.receiver = self;
  v10.super_class = UIKBHandwritingCandidateView;
  v5 = [(UIKBCandidateView *)&v10 initWithFrame:keyplane keyplane:key key:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __59__UIKBHandwritingCandidateView_initWithFrame_keyplane_key___block_invoke;
    v8[3] = &unk_1E70F3590;
    v9 = v5;
    [UIView performWithoutAnimation:v8];
  }

  return v6;
}

+ (double)shadowYForBounds:(CGRect)bounds shadowHeight:(double)height
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  MinY = CGRectGetMinY(bounds);
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  return MinY + (CGRectGetHeight(v11) - height) * 0.5;
}

- (void)updateForKeyplane:(id)keyplane key:(id)key
{
  [(UIKBCandidateView *)self clearCandidateKey:keyplane];

  [(UIKBHandwritingCandidateView *)self updateCandidateKey];
}

- (void)updateCandidateKey
{
  factory = [(UIKBKeyView *)self factory];
  v4 = [(UIKBKeyView *)self key];
  keyplane = [(UIKBKeyView *)self keyplane];
  v35 = [factory traitsForKey:v4 onKeyplane:keyplane];

  geometry = [v35 geometry];
  [geometry frame];
  geometry2 = [v35 geometry];
  [geometry2 paddedFrame];
  CGRectGetMinY(v38);

  geometry3 = [v35 geometry];
  [geometry3 frame];
  geometry4 = [v35 geometry];
  [geometry4 paddedFrame];
  CGRectGetMaxX(v40);

  geometry5 = [v35 geometry];
  [geometry5 frame];
  geometry6 = [v35 geometry];
  [geometry6 paddedFrame];
  CGRectGetMaxY(v42);

  geometry7 = [v35 geometry];
  [geometry7 frame];
  geometry8 = [v35 geometry];
  [geometry8 paddedFrame];
  CGRectGetMinX(v44);

  v14 = +[UIKeyboardImpl activeInstance];
  candidateController = [v14 candidateController];

  candidateKey = [(UIKBCandidateView *)self candidateKey];

  if (!candidateKey)
  {
    if (([(UIKBCandidateView *)self visualStyling]& 0x3F) == 1 || ([(UIKBCandidateView *)self visualStyling]& 0x3F) == 0x18 || ([(UIKBCandidateView *)self visualStyling]& 0x3F) == 0x19)
    {
      v17 = off_1E70E9F20;
    }

    else
    {
      v17 = off_1E70E9F20;
      if (([(UIKBCandidateView *)self visualStyling]& 0x3F) != 0x1A && ([(UIKBCandidateView *)self visualStyling]& 0x3F) != 0x17)
      {
        v17 = off_1E70E9F18;
      }
    }

    configuration = [(__objc2_class *)*v17 configuration];
    [(UIView *)self bounds];
    v19 = [candidateController newCandidateKeyWithFrame:configuration configuration:?];
    [(UIKBCandidateView *)self setCandidateKey:v19];
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
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  candidateKey6 = [(UIKBCandidateView *)self candidateKey];
  [candidateKey6 setFrame:{v26, v28, v30, v32}];

  candidateKey7 = [(UIKBCandidateView *)self candidateKey];
  [candidateKey7 setAutoresizingMask:18];

  [candidateController setActiveCandidateViewType:1];
}

@end