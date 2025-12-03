@interface UIAutocorrectBubbleContainer
- (BOOL)isViewAnimating;
- (CGRect)referenceRect;
- (UIAutocorrectBubbleContainer)init;
- (id)createTypedTextViewWithTypedText:(id)text;
- (void)animateAutocorrectionAccepted;
- (void)dismissAutocorrectBubble;
- (void)performReset;
- (void)reset;
- (void)updateBubbleWithAutocorrectionText:(id)text referenceRect:(CGRect)rect;
- (void)updateFakeTextSelectionHighlightForRect:(CGRect)rect;
- (void)updateSelfWithRect:(CGRect)rect;
- (void)updateWithAutocorrectionText:(id)text typedText:(id)typedText referenceTextView:(id)view referenceRect:(CGRect)rect;
@end

@implementation UIAutocorrectBubbleContainer

- (UIAutocorrectBubbleContainer)init
{
  v5.receiver = self;
  v5.super_class = UIAutocorrectBubbleContainer;
  v2 = [(UIView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(UIView *)v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIAutocorrectBubbleContainer *)v3 setReferenceRect:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
  }

  return v3;
}

- (void)updateWithAutocorrectionText:(id)text typedText:(id)typedText referenceTextView:(id)view referenceRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  textCopy = text;
  [(UIAutocorrectBubbleContainer *)self setTypedText:typedText];
  [(UIAutocorrectBubbleContainer *)self updateFakeTextSelectionHighlightForRect:x, y, width, height];
  [(UIAutocorrectBubbleContainer *)self updateBubbleWithAutocorrectionText:textCopy referenceRect:x, y, width, height];

  [(UIAutocorrectBubbleContainer *)self updateSelfWithRect:x, y, width, height];

  [(UIView *)self layoutIfNeeded];
}

- (void)updateFakeTextSelectionHighlightForRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  v41[4] = *MEMORY[0x1E69E9840];
  v6 = [(UIAutocorrectBubbleContainer *)self fakeTextSelectionHighlight:rect.origin.x];

  if (!v6)
  {
    v7 = objc_alloc_init(UIView);
    [(UIAutocorrectBubbleContainer *)self setFakeTextSelectionHighlight:v7];

    fakeTextSelectionHighlight = [(UIAutocorrectBubbleContainer *)self fakeTextSelectionHighlight];
    [fakeTextSelectionHighlight setTranslatesAutoresizingMaskIntoConstraints:0];

    fakeTextSelectionHighlight2 = [(UIAutocorrectBubbleContainer *)self fakeTextSelectionHighlight];
    layer = [fakeTextSelectionHighlight2 layer];
    [layer setCornerRadius:2.0];

    fakeTextSelectionHighlight3 = [(UIAutocorrectBubbleContainer *)self fakeTextSelectionHighlight];
    layer2 = [fakeTextSelectionHighlight3 layer];
    [layer2 setMaskedCorners:3];

    v13 = +[UIColor systemBlueColor];
    v14 = [v13 colorWithAlphaComponent:0.349999994];
    fakeTextSelectionHighlight4 = [(UIAutocorrectBubbleContainer *)self fakeTextSelectionHighlight];
    [fakeTextSelectionHighlight4 setBackgroundColor:v14];
  }

  fakeTextSelectionHighlight5 = [(UIAutocorrectBubbleContainer *)self fakeTextSelectionHighlight];
  superview = [fakeTextSelectionHighlight5 superview];

  if (superview != self)
  {
    fakeTextSelectionHighlight6 = [(UIAutocorrectBubbleContainer *)self fakeTextSelectionHighlight];
    [(UIView *)self addSubview:fakeTextSelectionHighlight6];

    fakeTextSelectionHighlight7 = [(UIAutocorrectBubbleContainer *)self fakeTextSelectionHighlight];
    widthAnchor = [fakeTextSelectionHighlight7 widthAnchor];
    v21 = [widthAnchor constraintEqualToConstant:0.0];
    [(UIAutocorrectBubbleContainer *)self setHighlightWidthConstraint:v21];

    v36 = MEMORY[0x1E69977A0];
    highlightWidthConstraint = [(UIAutocorrectBubbleContainer *)self highlightWidthConstraint];
    v41[0] = highlightWidthConstraint;
    fakeTextSelectionHighlight8 = [(UIAutocorrectBubbleContainer *)self fakeTextSelectionHighlight];
    leadingAnchor = [fakeTextSelectionHighlight8 leadingAnchor];
    leadingAnchor2 = [(UIView *)self leadingAnchor];
    v22 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v41[1] = v22;
    fakeTextSelectionHighlight9 = [(UIAutocorrectBubbleContainer *)self fakeTextSelectionHighlight];
    topAnchor = [fakeTextSelectionHighlight9 topAnchor];
    topAnchor2 = [(UIView *)self topAnchor];
    v26 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v41[2] = v26;
    fakeTextSelectionHighlight10 = [(UIAutocorrectBubbleContainer *)self fakeTextSelectionHighlight];
    heightAnchor = [fakeTextSelectionHighlight10 heightAnchor];
    v29 = [heightAnchor constraintEqualToConstant:height];
    v41[3] = v29;
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:4];
    [v36 activateConstraints:v30];

    fakeTextSelectionHighlight11 = [(UIAutocorrectBubbleContainer *)self fakeTextSelectionHighlight];
    [(UIView *)self bringSubviewToFront:fakeTextSelectionHighlight11];
  }

  highlightWidthConstraint2 = [(UIAutocorrectBubbleContainer *)self highlightWidthConstraint];
  [highlightWidthConstraint2 constant];
  v34 = v33;

  if (v34 != width)
  {
    highlightWidthConstraint3 = [(UIAutocorrectBubbleContainer *)self highlightWidthConstraint];
    [highlightWidthConstraint3 setConstant:width];
  }
}

- (void)updateBubbleWithAutocorrectionText:(id)text referenceRect:(CGRect)rect
{
  height = rect.size.height;
  v29[2] = *MEMORY[0x1E69E9840];
  textCopy = text;
  bubble = [(UIAutocorrectBubbleContainer *)self bubble];

  if (!bubble)
  {
    v8 = objc_alloc_init(UIAutocorrectBubble);
    [(UIAutocorrectBubbleContainer *)self setBubble:v8];

    v9 = [[UITapGestureRecognizer alloc] initWithTarget:self action:sel_didTapAutocorrectionBubble];
    bubble2 = [(UIAutocorrectBubbleContainer *)self bubble];
    [bubble2 addGestureRecognizer:v9];
  }

  subviews = [(UIView *)self subviews];
  bubble3 = [(UIAutocorrectBubbleContainer *)self bubble];
  v13 = [subviews containsObject:bubble3];

  if ((v13 & 1) == 0)
  {
    bubble4 = [(UIAutocorrectBubbleContainer *)self bubble];
    [(UIView *)self addSubview:bubble4];

    bubble5 = [(UIAutocorrectBubbleContainer *)self bubble];
    [(UIView *)self bringSubviewToFront:bubble5];

    bubble6 = [(UIAutocorrectBubbleContainer *)self bubble];
    [bubble6 setTranslatesAutoresizingMaskIntoConstraints:0];

    bubble7 = [(UIAutocorrectBubbleContainer *)self bubble];
    topAnchor = [bubble7 topAnchor];
    topAnchor2 = [(UIView *)self topAnchor];
    v20 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:height];
    [(UIAutocorrectBubbleContainer *)self setBubbleTopConstraint:v20];

    v21 = MEMORY[0x1E69977A0];
    bubbleTopConstraint = [(UIAutocorrectBubbleContainer *)self bubbleTopConstraint];
    v29[0] = bubbleTopConstraint;
    bubble8 = [(UIAutocorrectBubbleContainer *)self bubble];
    leadingAnchor = [bubble8 leadingAnchor];
    leadingAnchor2 = [(UIView *)self leadingAnchor];
    v26 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:0.0];
    v29[1] = v26;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
    [v21 activateConstraints:v27];
  }

  bubble9 = [(UIAutocorrectBubbleContainer *)self bubble];
  [bubble9 updateWithAutocorrectionText:textCopy];
}

- (void)updateSelfWithRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v39[4] = *MEMORY[0x1E69E9840];
  [(UIAutocorrectBubbleContainer *)self referenceRect];
  v41.origin.x = x;
  v41.origin.y = y;
  v41.size.width = width;
  v41.size.height = height;
  if (!CGRectEqualToRect(v40, v41))
  {
    xConstraint = [(UIAutocorrectBubbleContainer *)self xConstraint];
    if (!xConstraint)
    {
      goto LABEL_9;
    }

    v9 = xConstraint;
    yConstraint = [(UIAutocorrectBubbleContainer *)self yConstraint];
    if (yConstraint)
    {
      v11 = yConstraint;
      widthConstraint = [(UIAutocorrectBubbleContainer *)self widthConstraint];
      if (widthConstraint)
      {
        v13 = widthConstraint;
        heightConstraint = [(UIAutocorrectBubbleContainer *)self heightConstraint];

        if (heightConstraint)
        {
LABEL_13:
          xConstraint2 = [(UIAutocorrectBubbleContainer *)self xConstraint];
          [xConstraint2 setConstant:x];

          yConstraint2 = [(UIAutocorrectBubbleContainer *)self yConstraint];
          [yConstraint2 setConstant:y];

          [(UIAutocorrectBubbleContainer *)self setReferenceRect:x, y, width, height];
          return;
        }

LABEL_9:
        widthAnchor = [(UIView *)self widthAnchor];
        bubble = [(UIAutocorrectBubbleContainer *)self bubble];
        widthAnchor2 = [bubble widthAnchor];
        v18 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
        [(UIAutocorrectBubbleContainer *)self setWidthConstraint:v18];

        heightAnchor = [(UIView *)self heightAnchor];
        v20 = [heightAnchor constraintEqualToConstant:height + 19.0];
        [(UIAutocorrectBubbleContainer *)self setHeightConstraint:v20];

        leftAnchor = [(UIView *)self leftAnchor];
        superview = [(UIView *)self superview];
        leftAnchor2 = [superview leftAnchor];
        v24 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:x];
        [(UIAutocorrectBubbleContainer *)self setXConstraint:v24];

        superview2 = [(UIView *)self superview];
        objc_opt_class();
        LOBYTE(superview) = objc_opt_isKindOfClass();

        if (superview)
        {
          superview3 = [(UIView *)self superview];
          topAnchor = [(UIView *)self topAnchor];
          contentLayoutGuide = [superview3 contentLayoutGuide];
          topAnchor2 = [contentLayoutGuide topAnchor];
          v30 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:y];
          [(UIAutocorrectBubbleContainer *)self setYConstraint:v30];
        }

        else
        {
          superview3 = [(UIView *)self topAnchor];
          topAnchor = [(UIView *)self superview];
          contentLayoutGuide = [topAnchor topAnchor];
          topAnchor2 = [superview3 constraintEqualToAnchor:contentLayoutGuide constant:y];
          [(UIAutocorrectBubbleContainer *)self setYConstraint:topAnchor2];
        }

        v31 = MEMORY[0x1E69977A0];
        widthConstraint2 = [(UIAutocorrectBubbleContainer *)self widthConstraint];
        v39[0] = widthConstraint2;
        heightConstraint2 = [(UIAutocorrectBubbleContainer *)self heightConstraint];
        v39[1] = heightConstraint2;
        xConstraint3 = [(UIAutocorrectBubbleContainer *)self xConstraint];
        v39[2] = xConstraint3;
        yConstraint3 = [(UIAutocorrectBubbleContainer *)self yConstraint];
        v39[3] = yConstraint3;
        v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:4];
        [v31 activateConstraints:v36];

        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }
}

- (id)createTypedTextViewWithTypedText:(id)text
{
  v26[3] = *MEMORY[0x1E69E9840];
  textCopy = text;
  v5 = objc_alloc_init(UITextView);
  [(UITextView *)v5 setText:textCopy];

  v6 = +[UIColor whiteColor];
  [(UITextView *)v5 setTextColor:v6];

  v7 = +[UIColor blackColor];
  [(UIScrollView *)v5 setBackgroundColor:v7];

  [(UITextView *)v5 setTextContainerInset:0.0, 0.0, 0.0, 0.0];
  textContainer = [(UITextView *)v5 textContainer];
  [textContainer setLineFragmentPadding:0.0];

  v9 = [off_1E70ECC18 systemFontOfSize:16.0 weight:*off_1E70ECD28];
  [(UITextView *)v5 setFont:v9];

  [(UIView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)v5 setAlpha:1.0];
  [(UIView *)self addSubview:v5];
  bubble = [(UIAutocorrectBubbleContainer *)self bubble];
  [(UIView *)self insertSubview:v5 belowSubview:bubble];

  v23 = MEMORY[0x1E69977A0];
  widthAnchor = [(UIView *)v5 widthAnchor];
  fakeTextSelectionHighlight = [(UIAutocorrectBubbleContainer *)self fakeTextSelectionHighlight];
  [fakeTextSelectionHighlight frame];
  v12 = [widthAnchor constraintEqualToConstant:v11];
  v26[0] = v12;
  heightAnchor = [(UIView *)v5 heightAnchor];
  fakeTextSelectionHighlight2 = [(UIAutocorrectBubbleContainer *)self fakeTextSelectionHighlight];
  [fakeTextSelectionHighlight2 frame];
  v16 = [heightAnchor constraintLessThanOrEqualToConstant:v15];
  v26[1] = v16;
  leadingAnchor = [(UIView *)v5 leadingAnchor];
  leadingAnchor2 = [(UIView *)self leadingAnchor];
  v19 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v26[2] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:3];
  [v23 activateConstraints:v20];

  [(UIAutocorrectBubbleContainer *)self setTypedTextAnimationPlaceholder:v5];
  typedTextAnimationPlaceholder = [(UIAutocorrectBubbleContainer *)self typedTextAnimationPlaceholder];

  return typedTextAnimationPlaceholder;
}

- (void)dismissAutocorrectBubble
{
  v3 = +[UIKeyboardImpl activeInstance];
  [v3 fadeAutocorrectPrompt];

  [(UIAutocorrectBubbleContainer *)self performReset];
}

- (void)animateAutocorrectionAccepted
{
  typedText = [(UIAutocorrectBubbleContainer *)self typedText];
  v4 = [(UIAutocorrectBubbleContainer *)self createTypedTextViewWithTypedText:typedText];

  [(UIView *)self layoutIfNeeded];
  v5[4] = self;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__UIAutocorrectBubbleContainer_animateAutocorrectionAccepted__block_invoke;
  v6[3] = &unk_1E70F3590;
  v6[4] = self;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61__UIAutocorrectBubbleContainer_animateAutocorrectionAccepted__block_invoke_5;
  v5[3] = &unk_1E70F5AC0;
  [UIView animateKeyframesWithDuration:0 delay:v6 options:v5 animations:0.5 completion:0.0];
}

uint64_t __61__UIAutocorrectBubbleContainer_animateAutocorrectionAccepted__block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61__UIAutocorrectBubbleContainer_animateAutocorrectionAccepted__block_invoke_2;
  v5[3] = &unk_1E70F3590;
  v5[4] = *(a1 + 32);
  [UIView addKeyframeWithRelativeStartTime:v5 relativeDuration:0.0 animations:0.0];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __61__UIAutocorrectBubbleContainer_animateAutocorrectionAccepted__block_invoke_3;
  v4[3] = &unk_1E70F3590;
  v4[4] = *(a1 + 32);
  [UIView addKeyframeWithRelativeStartTime:v4 relativeDuration:0.0 animations:0.5];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __61__UIAutocorrectBubbleContainer_animateAutocorrectionAccepted__block_invoke_4;
  v3[3] = &unk_1E70F3590;
  v3[4] = *(a1 + 32);
  return [UIView addKeyframeWithRelativeStartTime:v3 relativeDuration:0.75 animations:0.25];
}

void __61__UIAutocorrectBubbleContainer_animateAutocorrectionAccepted__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) fakeTextSelectionHighlight];
  [v1 setAlpha:0.0];
}

uint64_t __61__UIAutocorrectBubbleContainer_animateAutocorrectionAccepted__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) bubbleTopConstraint];
  [v2 setConstant:1.0];

  v3 = *(a1 + 32);

  return [v3 layoutIfNeeded];
}

void __61__UIAutocorrectBubbleContainer_animateAutocorrectionAccepted__block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) typedTextAnimationPlaceholder];
  [v2 setAlpha:0.0];

  v3 = [*(a1 + 32) bubble];
  [v3 setAlpha:0.0];
}

- (void)reset
{
  if (![(UIAutocorrectBubbleContainer *)self isViewAnimating])
  {

    [(UIAutocorrectBubbleContainer *)self performReset];
  }
}

- (BOOL)isViewAnimating
{
  bubble = [(UIAutocorrectBubbleContainer *)self bubble];
  layer = [bubble layer];
  animationKeys = [layer animationKeys];
  v5 = [animationKeys count] != 0;

  return v5;
}

- (void)performReset
{
  [(UIAutocorrectBubbleContainer *)self setBubbleTopConstraint:0];
  [(UIAutocorrectBubbleContainer *)self setHighlightWidthConstraint:0];
  [(UIAutocorrectBubbleContainer *)self setWidthConstraint:0];
  [(UIAutocorrectBubbleContainer *)self setHeightConstraint:0];
  [(UIAutocorrectBubbleContainer *)self setXConstraint:0];
  [(UIAutocorrectBubbleContainer *)self setYConstraint:0];
  [(UIAutocorrectBubbleContainer *)self setReferenceRect:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
  fakeTextSelectionHighlight = [(UIAutocorrectBubbleContainer *)self fakeTextSelectionHighlight];
  [fakeTextSelectionHighlight removeFromSuperview];

  bubble = [(UIAutocorrectBubbleContainer *)self bubble];
  [bubble removeFromSuperview];

  [(UIAutocorrectBubbleContainer *)self setFakeTextSelectionHighlight:0];
  [(UIAutocorrectBubbleContainer *)self setBubble:0];
  typedTextAnimationPlaceholder = [(UIAutocorrectBubbleContainer *)self typedTextAnimationPlaceholder];
  [typedTextAnimationPlaceholder removeFromSuperview];

  [(UIAutocorrectBubbleContainer *)self setTypedTextAnimationPlaceholder:0];

  [(UIView *)self removeFromSuperview];
}

- (CGRect)referenceRect
{
  x = self->_referenceRect.origin.x;
  y = self->_referenceRect.origin.y;
  width = self->_referenceRect.size.width;
  height = self->_referenceRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end