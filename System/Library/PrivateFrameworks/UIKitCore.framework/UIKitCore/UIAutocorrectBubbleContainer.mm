@interface UIAutocorrectBubbleContainer
- (BOOL)isViewAnimating;
- (CGRect)referenceRect;
- (UIAutocorrectBubbleContainer)init;
- (id)createTypedTextViewWithTypedText:(id)a3;
- (void)animateAutocorrectionAccepted;
- (void)dismissAutocorrectBubble;
- (void)performReset;
- (void)reset;
- (void)updateBubbleWithAutocorrectionText:(id)a3 referenceRect:(CGRect)a4;
- (void)updateFakeTextSelectionHighlightForRect:(CGRect)a3;
- (void)updateSelfWithRect:(CGRect)a3;
- (void)updateWithAutocorrectionText:(id)a3 typedText:(id)a4 referenceTextView:(id)a5 referenceRect:(CGRect)a6;
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

- (void)updateWithAutocorrectionText:(id)a3 typedText:(id)a4 referenceTextView:(id)a5 referenceRect:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v12 = a3;
  [(UIAutocorrectBubbleContainer *)self setTypedText:a4];
  [(UIAutocorrectBubbleContainer *)self updateFakeTextSelectionHighlightForRect:x, y, width, height];
  [(UIAutocorrectBubbleContainer *)self updateBubbleWithAutocorrectionText:v12 referenceRect:x, y, width, height];

  [(UIAutocorrectBubbleContainer *)self updateSelfWithRect:x, y, width, height];

  [(UIView *)self layoutIfNeeded];
}

- (void)updateFakeTextSelectionHighlightForRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v41[4] = *MEMORY[0x1E69E9840];
  v6 = [(UIAutocorrectBubbleContainer *)self fakeTextSelectionHighlight:a3.origin.x];

  if (!v6)
  {
    v7 = objc_alloc_init(UIView);
    [(UIAutocorrectBubbleContainer *)self setFakeTextSelectionHighlight:v7];

    v8 = [(UIAutocorrectBubbleContainer *)self fakeTextSelectionHighlight];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

    v9 = [(UIAutocorrectBubbleContainer *)self fakeTextSelectionHighlight];
    v10 = [v9 layer];
    [v10 setCornerRadius:2.0];

    v11 = [(UIAutocorrectBubbleContainer *)self fakeTextSelectionHighlight];
    v12 = [v11 layer];
    [v12 setMaskedCorners:3];

    v13 = +[UIColor systemBlueColor];
    v14 = [v13 colorWithAlphaComponent:0.349999994];
    v15 = [(UIAutocorrectBubbleContainer *)self fakeTextSelectionHighlight];
    [v15 setBackgroundColor:v14];
  }

  v16 = [(UIAutocorrectBubbleContainer *)self fakeTextSelectionHighlight];
  v17 = [v16 superview];

  if (v17 != self)
  {
    v18 = [(UIAutocorrectBubbleContainer *)self fakeTextSelectionHighlight];
    [(UIView *)self addSubview:v18];

    v19 = [(UIAutocorrectBubbleContainer *)self fakeTextSelectionHighlight];
    v20 = [v19 widthAnchor];
    v21 = [v20 constraintEqualToConstant:0.0];
    [(UIAutocorrectBubbleContainer *)self setHighlightWidthConstraint:v21];

    v36 = MEMORY[0x1E69977A0];
    v40 = [(UIAutocorrectBubbleContainer *)self highlightWidthConstraint];
    v41[0] = v40;
    v39 = [(UIAutocorrectBubbleContainer *)self fakeTextSelectionHighlight];
    v38 = [v39 leadingAnchor];
    v37 = [(UIView *)self leadingAnchor];
    v22 = [v38 constraintEqualToAnchor:v37];
    v41[1] = v22;
    v23 = [(UIAutocorrectBubbleContainer *)self fakeTextSelectionHighlight];
    v24 = [v23 topAnchor];
    v25 = [(UIView *)self topAnchor];
    v26 = [v24 constraintEqualToAnchor:v25];
    v41[2] = v26;
    v27 = [(UIAutocorrectBubbleContainer *)self fakeTextSelectionHighlight];
    v28 = [v27 heightAnchor];
    v29 = [v28 constraintEqualToConstant:height];
    v41[3] = v29;
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:4];
    [v36 activateConstraints:v30];

    v31 = [(UIAutocorrectBubbleContainer *)self fakeTextSelectionHighlight];
    [(UIView *)self bringSubviewToFront:v31];
  }

  v32 = [(UIAutocorrectBubbleContainer *)self highlightWidthConstraint];
  [v32 constant];
  v34 = v33;

  if (v34 != width)
  {
    v35 = [(UIAutocorrectBubbleContainer *)self highlightWidthConstraint];
    [v35 setConstant:width];
  }
}

- (void)updateBubbleWithAutocorrectionText:(id)a3 referenceRect:(CGRect)a4
{
  height = a4.size.height;
  v29[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(UIAutocorrectBubbleContainer *)self bubble];

  if (!v7)
  {
    v8 = objc_alloc_init(UIAutocorrectBubble);
    [(UIAutocorrectBubbleContainer *)self setBubble:v8];

    v9 = [[UITapGestureRecognizer alloc] initWithTarget:self action:sel_didTapAutocorrectionBubble];
    v10 = [(UIAutocorrectBubbleContainer *)self bubble];
    [v10 addGestureRecognizer:v9];
  }

  v11 = [(UIView *)self subviews];
  v12 = [(UIAutocorrectBubbleContainer *)self bubble];
  v13 = [v11 containsObject:v12];

  if ((v13 & 1) == 0)
  {
    v14 = [(UIAutocorrectBubbleContainer *)self bubble];
    [(UIView *)self addSubview:v14];

    v15 = [(UIAutocorrectBubbleContainer *)self bubble];
    [(UIView *)self bringSubviewToFront:v15];

    v16 = [(UIAutocorrectBubbleContainer *)self bubble];
    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];

    v17 = [(UIAutocorrectBubbleContainer *)self bubble];
    v18 = [v17 topAnchor];
    v19 = [(UIView *)self topAnchor];
    v20 = [v18 constraintEqualToAnchor:v19 constant:height];
    [(UIAutocorrectBubbleContainer *)self setBubbleTopConstraint:v20];

    v21 = MEMORY[0x1E69977A0];
    v22 = [(UIAutocorrectBubbleContainer *)self bubbleTopConstraint];
    v29[0] = v22;
    v23 = [(UIAutocorrectBubbleContainer *)self bubble];
    v24 = [v23 leadingAnchor];
    v25 = [(UIView *)self leadingAnchor];
    v26 = [v24 constraintEqualToAnchor:v25 constant:0.0];
    v29[1] = v26;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
    [v21 activateConstraints:v27];
  }

  v28 = [(UIAutocorrectBubbleContainer *)self bubble];
  [v28 updateWithAutocorrectionText:v6];
}

- (void)updateSelfWithRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v39[4] = *MEMORY[0x1E69E9840];
  [(UIAutocorrectBubbleContainer *)self referenceRect];
  v41.origin.x = x;
  v41.origin.y = y;
  v41.size.width = width;
  v41.size.height = height;
  if (!CGRectEqualToRect(v40, v41))
  {
    v8 = [(UIAutocorrectBubbleContainer *)self xConstraint];
    if (!v8)
    {
      goto LABEL_9;
    }

    v9 = v8;
    v10 = [(UIAutocorrectBubbleContainer *)self yConstraint];
    if (v10)
    {
      v11 = v10;
      v12 = [(UIAutocorrectBubbleContainer *)self widthConstraint];
      if (v12)
      {
        v13 = v12;
        v14 = [(UIAutocorrectBubbleContainer *)self heightConstraint];

        if (v14)
        {
LABEL_13:
          v37 = [(UIAutocorrectBubbleContainer *)self xConstraint];
          [v37 setConstant:x];

          v38 = [(UIAutocorrectBubbleContainer *)self yConstraint];
          [v38 setConstant:y];

          [(UIAutocorrectBubbleContainer *)self setReferenceRect:x, y, width, height];
          return;
        }

LABEL_9:
        v15 = [(UIView *)self widthAnchor];
        v16 = [(UIAutocorrectBubbleContainer *)self bubble];
        v17 = [v16 widthAnchor];
        v18 = [v15 constraintEqualToAnchor:v17];
        [(UIAutocorrectBubbleContainer *)self setWidthConstraint:v18];

        v19 = [(UIView *)self heightAnchor];
        v20 = [v19 constraintEqualToConstant:height + 19.0];
        [(UIAutocorrectBubbleContainer *)self setHeightConstraint:v20];

        v21 = [(UIView *)self leftAnchor];
        v22 = [(UIView *)self superview];
        v23 = [v22 leftAnchor];
        v24 = [v21 constraintEqualToAnchor:v23 constant:x];
        [(UIAutocorrectBubbleContainer *)self setXConstraint:v24];

        v25 = [(UIView *)self superview];
        objc_opt_class();
        LOBYTE(v22) = objc_opt_isKindOfClass();

        if (v22)
        {
          v26 = [(UIView *)self superview];
          v27 = [(UIView *)self topAnchor];
          v28 = [v26 contentLayoutGuide];
          v29 = [v28 topAnchor];
          v30 = [v27 constraintEqualToAnchor:v29 constant:y];
          [(UIAutocorrectBubbleContainer *)self setYConstraint:v30];
        }

        else
        {
          v26 = [(UIView *)self topAnchor];
          v27 = [(UIView *)self superview];
          v28 = [v27 topAnchor];
          v29 = [v26 constraintEqualToAnchor:v28 constant:y];
          [(UIAutocorrectBubbleContainer *)self setYConstraint:v29];
        }

        v31 = MEMORY[0x1E69977A0];
        v32 = [(UIAutocorrectBubbleContainer *)self widthConstraint];
        v39[0] = v32;
        v33 = [(UIAutocorrectBubbleContainer *)self heightConstraint];
        v39[1] = v33;
        v34 = [(UIAutocorrectBubbleContainer *)self xConstraint];
        v39[2] = v34;
        v35 = [(UIAutocorrectBubbleContainer *)self yConstraint];
        v39[3] = v35;
        v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:4];
        [v31 activateConstraints:v36];

        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }
}

- (id)createTypedTextViewWithTypedText:(id)a3
{
  v26[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(UITextView);
  [(UITextView *)v5 setText:v4];

  v6 = +[UIColor whiteColor];
  [(UITextView *)v5 setTextColor:v6];

  v7 = +[UIColor blackColor];
  [(UIScrollView *)v5 setBackgroundColor:v7];

  [(UITextView *)v5 setTextContainerInset:0.0, 0.0, 0.0, 0.0];
  v8 = [(UITextView *)v5 textContainer];
  [v8 setLineFragmentPadding:0.0];

  v9 = [off_1E70ECC18 systemFontOfSize:16.0 weight:*off_1E70ECD28];
  [(UITextView *)v5 setFont:v9];

  [(UIView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)v5 setAlpha:1.0];
  [(UIView *)self addSubview:v5];
  v10 = [(UIAutocorrectBubbleContainer *)self bubble];
  [(UIView *)self insertSubview:v5 belowSubview:v10];

  v23 = MEMORY[0x1E69977A0];
  v24 = [(UIView *)v5 widthAnchor];
  v25 = [(UIAutocorrectBubbleContainer *)self fakeTextSelectionHighlight];
  [v25 frame];
  v12 = [v24 constraintEqualToConstant:v11];
  v26[0] = v12;
  v13 = [(UIView *)v5 heightAnchor];
  v14 = [(UIAutocorrectBubbleContainer *)self fakeTextSelectionHighlight];
  [v14 frame];
  v16 = [v13 constraintLessThanOrEqualToConstant:v15];
  v26[1] = v16;
  v17 = [(UIView *)v5 leadingAnchor];
  v18 = [(UIView *)self leadingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];
  v26[2] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:3];
  [v23 activateConstraints:v20];

  [(UIAutocorrectBubbleContainer *)self setTypedTextAnimationPlaceholder:v5];
  v21 = [(UIAutocorrectBubbleContainer *)self typedTextAnimationPlaceholder];

  return v21;
}

- (void)dismissAutocorrectBubble
{
  v3 = +[UIKeyboardImpl activeInstance];
  [v3 fadeAutocorrectPrompt];

  [(UIAutocorrectBubbleContainer *)self performReset];
}

- (void)animateAutocorrectionAccepted
{
  v3 = [(UIAutocorrectBubbleContainer *)self typedText];
  v4 = [(UIAutocorrectBubbleContainer *)self createTypedTextViewWithTypedText:v3];

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
  v2 = [(UIAutocorrectBubbleContainer *)self bubble];
  v3 = [v2 layer];
  v4 = [v3 animationKeys];
  v5 = [v4 count] != 0;

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
  v3 = [(UIAutocorrectBubbleContainer *)self fakeTextSelectionHighlight];
  [v3 removeFromSuperview];

  v4 = [(UIAutocorrectBubbleContainer *)self bubble];
  [v4 removeFromSuperview];

  [(UIAutocorrectBubbleContainer *)self setFakeTextSelectionHighlight:0];
  [(UIAutocorrectBubbleContainer *)self setBubble:0];
  v5 = [(UIAutocorrectBubbleContainer *)self typedTextAnimationPlaceholder];
  [v5 removeFromSuperview];

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