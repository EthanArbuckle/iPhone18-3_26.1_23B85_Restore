@interface _UITextChoiceAccelerationBubble
- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (BOOL)promptWillCollideWithKeyboard:(CGRect)a3;
- (BOOL)showingAutocorrectHighlight;
- (BOOL)usingRTLInputMode;
- (CGRect)referenceRect;
- (UIView)parentView;
- (_NSRange)deltaRange;
- (_NSRange)originalSelectedRange;
- (_UITextChoiceAccelerationBubble)initWithFrame:(CGRect)a3;
- (_UITextChoiceAccelerationDictationPromptDelegate)dictationPromptDelegate;
- (id)backgroundImageView;
- (id)dictationHighlightViewForPoint:(CGPoint)a3 withEvent:(id)a4;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)optionForPoint:(CGPoint)a3 withEvent:(id)a4;
- (id)squaredOffBubblePathInRect:(CGRect)a3;
- (id)squaredPathInRect:(CGRect)a3;
- (id)textOptionWithText:(id)a3 type:(int64_t)a4;
- (int)textEffectsVisibilityLevel;
- (void)anchorToTextIfNeeded;
- (void)cancelLightingEffect;
- (void)dismissWithCancel;
- (void)dismissWithCandidate:(id)a3;
- (void)dismissWithRevert:(id)a3;
- (void)dismissWithText:(id)a3;
- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (void)hideForNow;
- (void)layoutSubviews;
- (void)removeAnimated:(BOOL)a3 withDuration:(double)a4;
- (void)removeFromSuperview;
- (void)reset;
- (void)showChoices:(BOOL)a3;
- (void)showTextHighlightView:(BOOL)a3;
- (void)updateBubbleShapeInRect:(CGRect)a3 withCornerRadius:(double)a4 forSquaredOffBubble:(BOOL)a5;
- (void)updateButtonForType:(int64_t)a3;
- (void)updateButtonName:(id)a3 placement:(int64_t)a4 originalText:(id)a5;
- (void)updateForSingleWord:(id)a3 textAnchorRect:(id)a4 inTextView:(id)a5 parentView:(id)a6 highlightColor:(id)a7;
- (void)updateSelfWithRect:(CGRect)a3;
- (void)updateTextAnchorForParentView:(id)a3;
- (void)updateTextBoxHighlightForRect:(id)a3 inTextView:(id)a4 parentView:(id)a5 highlightColor:(id)a6;
- (void)updateTextHighlightViewWithColor:(id)a3 convertedRect:(CGRect)a4;
- (void)updateViewForOptions:(id)a3;
- (void)updateWithChoices:(id)a3 fromParentView:(id)a4 referenceTextView:(id)a5 presentedFromRect:(id)a6 textHighlightColor:(id)a7;
@end

@implementation _UITextChoiceAccelerationBubble

- (void)reset
{
  v19 = *MEMORY[0x1E69E9840];
  [(UIView *)self alpha];
  if (v3 == 0.0)
  {
    [(_UITextChoiceAccelerationBubble *)self removeFromSuperview];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(_UITextChoiceAccelerationBubble *)self contentsView];
  v5 = [v4 arrangedSubviews];

  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        [v10 setLightingEffectEnabled:0 atPosition:&unk_1EFE30898];
        [v10 setState:0];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = [(_UITextChoiceAccelerationBubble *)self sideButton];
  [v11 setState:0];

  [(_UITextChoiceAccelerationBubble *)self setCandidate:0];
  selectedChoice = self->_selectedChoice;
  self->_selectedChoice = 0;

  selectedCandidateChoice = self->_selectedCandidateChoice;
  self->_selectedCandidateChoice = 0;
}

- (_UITextChoiceAccelerationBubble)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = _UITextChoiceAccelerationBubble;
  v3 = [(UIControl *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_UITextChoiceAccelerationBubble *)v4 setReferenceRect:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
    v5 = +[UIColor clearColor];
    [(UIView *)v4 setBackgroundColor:v5];

    [(UIView *)v4 setClipsToBounds:0];
    [(_UITextChoiceAccelerationBubble *)v4 setNeedsRTLCheck:1];
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 addObserver:v4 selector:sel_inputModeDidChange_ name:@"UITextInputCurrentInputModeDidChangeNotification" object:0];
  }

  return v4;
}

- (void)updateTextAnchorForParentView:(id)a3
{
  v58[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [(_UITextChoiceAccelerationBubble *)self parentView];
    v6 = v5;
    if (v5 != v4)
    {

LABEL_4:
      v7 = [(UIView *)self superview];

      if (v7 != v4)
      {
        [(_UITextChoiceAccelerationBubble *)self removeFromSuperview];
        [v4 addSubview:self];
      }

      [(_UITextChoiceAccelerationBubble *)self setParentView:v4];
      [(_UITextChoiceAccelerationBubble *)self anchorToTextIfNeeded];
      v8 = [(_UITextChoiceAccelerationBubble *)self anchorLeading];
      v9 = [v8 isActive];

      if (v9)
      {
        v10 = MEMORY[0x1E69977A0];
        v11 = [(_UITextChoiceAccelerationBubble *)self anchorLeading];
        v58[0] = v11;
        v12 = [(_UITextChoiceAccelerationBubble *)self anchorTop];
        v58[1] = v12;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:2];
        [v10 deactivateConstraints:v13];
      }

      v14 = [(_UITextChoiceAccelerationBubble *)self textAnchor];
      v15 = [v14 leftAnchor];
      v16 = [v4 leftAnchor];
      v17 = [v15 constraintEqualToAnchor:v16 constant:0.0];
      [(_UITextChoiceAccelerationBubble *)self setAnchorLeading:v17];

      v18 = [(_UITextChoiceAccelerationBubble *)self textAnchor];
      v19 = [v18 topAnchor];
      v20 = [v4 topAnchor];
      v21 = [v19 constraintEqualToAnchor:v20 constant:0.0];
      [(_UITextChoiceAccelerationBubble *)self setAnchorTop:v21];

      v22 = MEMORY[0x1E69977A0];
      v23 = [(_UITextChoiceAccelerationBubble *)self anchorLeading];
      v57[0] = v23;
      v24 = [(_UITextChoiceAccelerationBubble *)self anchorTop];
      v57[1] = v24;
      v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:2];
      [v22 activateConstraints:v25];

      v26 = [(_UITextChoiceAccelerationBubble *)self boundaryConstraints];

      if (v26)
      {
        v27 = MEMORY[0x1E69977A0];
        v28 = [(_UITextChoiceAccelerationBubble *)self boundaryConstraints];
        [v27 deactivateConstraints:v28];
      }

      v29 = [(UIView *)self leftAnchor];
      v30 = [v4 _window];
      v31 = [v30 leftAnchor];
      v32 = [v29 constraintGreaterThanOrEqualToAnchor:v31 constant:10.0];
      v56[0] = v32;
      [v4 _window];
      v33 = v54 = v4;
      v34 = [v33 rightAnchor];
      v35 = [(UIView *)self rightAnchor];
      v36 = [v34 constraintGreaterThanOrEqualToAnchor:v35 constant:10.0];
      v56[1] = v36;
      v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:2];
      [(_UITextChoiceAccelerationBubble *)self setBoundaryConstraints:v37];

      v4 = v54;
      v38 = MEMORY[0x1E69977A0];
      v39 = [(_UITextChoiceAccelerationBubble *)self boundaryConstraints];
      [v38 activateConstraints:v39];
LABEL_11:

      goto LABEL_12;
    }

    v40 = [(_UITextChoiceAccelerationBubble *)self anchorLeading];

    if (!v40)
    {
      goto LABEL_4;
    }

    v41 = [(_UITextChoiceAccelerationBubble *)self anchorLeading];
    if (v41)
    {
      v42 = v41;
      v43 = [(_UITextChoiceAccelerationBubble *)self anchorLeading];
      v44 = [v43 isActive];

      if ((v44 & 1) == 0)
      {
        v45 = [(_UITextChoiceAccelerationBubble *)self parentView];

        if (v45 == v4)
        {
          v46 = [(UIView *)self superview];
          v47 = [(_UITextChoiceAccelerationBubble *)self parentView];

          if (v46 != v47)
          {
            v48 = [(_UITextChoiceAccelerationBubble *)self parentView];
            [v48 addSubview:self];
          }

          v49 = MEMORY[0x1E69977A0];
          v39 = [(_UITextChoiceAccelerationBubble *)self boundaryConstraints];
          v50 = [(_UITextChoiceAccelerationBubble *)self anchorLeading];
          v55[0] = v50;
          v51 = [(_UITextChoiceAccelerationBubble *)self anchorTop];
          v55[1] = v51;
          v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:2];
          v53 = [v39 arrayByAddingObjectsFromArray:v52];
          [v49 activateConstraints:v53];

          goto LABEL_11;
        }
      }
    }
  }

LABEL_12:
}

- (void)anchorToTextIfNeeded
{
  v105[2] = *MEMORY[0x1E69E9840];
  v3 = [(_UITextChoiceAccelerationBubble *)self textAnchor];

  if (!v3)
  {
    v4 = objc_alloc_init(UILayoutGuide);
    [(_UITextChoiceAccelerationBubble *)self setTextAnchor:v4];

    v5 = [(_UITextChoiceAccelerationBubble *)self textAnchor];
    [(UIView *)self addLayoutGuide:v5];

    v6 = [(_UITextChoiceAccelerationBubble *)self textAnchor];
    v7 = [v6 widthAnchor];
    v8 = [v7 constraintEqualToConstant:0.0];
    [(_UITextChoiceAccelerationBubble *)self setAnchorWidth:v8];

    v9 = [(_UITextChoiceAccelerationBubble *)self textAnchor];
    v10 = [v9 heightAnchor];
    v11 = [v10 constraintEqualToConstant:1.0];
    [(_UITextChoiceAccelerationBubble *)self setAnchorHeight:v11];

    v12 = MEMORY[0x1E69977A0];
    v13 = [(_UITextChoiceAccelerationBubble *)self anchorHeight];
    v105[0] = v13;
    v14 = [(_UITextChoiceAccelerationBubble *)self anchorWidth];
    v105[1] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v105 count:2];
    [v12 activateConstraints:v15];
  }

  v16 = [(_UITextChoiceAccelerationBubble *)self backgroundView];
  if (!v16 || (v17 = v16, [(_UITextChoiceAccelerationBubble *)self contentsView], v18 = objc_claimAutoreleasedReturnValue(), v18, v17, !v18))
  {
    v19 = [(_UITextChoiceAccelerationBubble *)self backingScrollView];
    [v19 removeFromSuperview];

    v20 = [(_UITextChoiceAccelerationBubble *)self backgroundView];
    [v20 removeFromSuperview];

    v21 = [(_UITextChoiceAccelerationBubble *)self contentsView];
    [v21 removeFromSuperview];

    v22 = [(_UITextChoiceAccelerationBubble *)self backgroundImageView];
    [(_UITextChoiceAccelerationBubble *)self setBackgroundView:v22];

    v23 = [(_UITextChoiceAccelerationBubble *)self backgroundView];
    [v23 setTranslatesAutoresizingMaskIntoConstraints:0];

    v24 = [(_UITextChoiceAccelerationBubble *)self backgroundView];
    [(UIView *)self addSubview:v24];

    v25 = objc_alloc_init(UIScrollView);
    [(_UITextChoiceAccelerationBubble *)self setBackingScrollView:v25];

    v26 = [(_UITextChoiceAccelerationBubble *)self backingScrollView];
    [v26 setTranslatesAutoresizingMaskIntoConstraints:0];

    v27 = [(_UITextChoiceAccelerationBubble *)self backgroundView];
    v28 = [v27 contentView];
    v29 = [(_UITextChoiceAccelerationBubble *)self backingScrollView];
    [v28 addSubview:v29];

    v30 = [UIStackView alloc];
    v31 = [(_UITextChoiceAccelerationBubble *)self textOptionWithText:&stru_1EFB14550 type:2];
    v104 = v31;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v104 count:1];
    v33 = [(UIStackView *)v30 initWithArrangedSubviews:v32];
    [(_UITextChoiceAccelerationBubble *)self setContentsView:v33];

    v34 = [(_UITextChoiceAccelerationBubble *)self contentsView];
    [v34 setTranslatesAutoresizingMaskIntoConstraints:0];

    v35 = [(_UITextChoiceAccelerationBubble *)self contentsView];
    [v35 setAxis:0];

    v36 = [(_UITextChoiceAccelerationBubble *)self contentsView];
    [v36 setAlignment:5];

    v37 = [(_UITextChoiceAccelerationBubble *)self contentsView];
    [v37 setSpacing:0.0];

    v38 = [(_UITextChoiceAccelerationBubble *)self backingScrollView];
    v39 = [(_UITextChoiceAccelerationBubble *)self contentsView];
    [v38 addSubview:v39];

    v40 = [(_UITextChoiceAccelerationBubble *)self textAnchor];
    v41 = [v40 leadingAnchor];
    v42 = [(UIView *)self leadingAnchor];
    v43 = [v41 constraintEqualToAnchor:v42];
    [(_UITextChoiceAccelerationBubble *)self setLeadingSpacing:v43];

    v44 = [(_UITextChoiceAccelerationBubble *)self leadingSpacing];
    LODWORD(v45) = 1132068864;
    [v44 setPriority:v45];

    v46 = [(_UITextChoiceAccelerationBubble *)self backingScrollView];
    v47 = [v46 widthAnchor];
    v48 = [(_UITextChoiceAccelerationBubble *)self contentsView];
    v49 = [v48 widthAnchor];
    v50 = [v47 constraintEqualToAnchor:v49 constant:0.0];

    LODWORD(v51) = 1144750080;
    v75 = v50;
    [v50 setPriority:v51];
    v82 = MEMORY[0x1E69977A0];
    v102 = [(_UITextChoiceAccelerationBubble *)self backgroundView];
    v101 = [v102 leadingAnchor];
    v100 = [(UIView *)self leadingAnchor];
    v99 = [v101 constraintEqualToAnchor:v100];
    v103[0] = v99;
    v97 = [(UIView *)self trailingAnchor];
    v98 = [(_UITextChoiceAccelerationBubble *)self backgroundView];
    v96 = [v98 trailingAnchor];
    v95 = [v97 constraintEqualToAnchor:v96];
    v103[1] = v95;
    v94 = [(_UITextChoiceAccelerationBubble *)self backingScrollView];
    v92 = [v94 topAnchor];
    v93 = [(_UITextChoiceAccelerationBubble *)self backgroundView];
    v91 = [v93 topAnchor];
    v90 = [v92 constraintEqualToAnchor:v91 constant:0.0];
    v103[2] = v90;
    v89 = [(_UITextChoiceAccelerationBubble *)self backgroundView];
    v87 = [v89 bottomAnchor];
    v88 = [(_UITextChoiceAccelerationBubble *)self backingScrollView];
    v86 = [v88 bottomAnchor];
    v85 = [v87 constraintEqualToAnchor:v86 constant:0.0];
    v103[3] = v85;
    v84 = [(_UITextChoiceAccelerationBubble *)self leadingSpacing];
    v103[4] = v84;
    v83 = [(_UITextChoiceAccelerationBubble *)self contentsView];
    v80 = [v83 topAnchor];
    v81 = [(_UITextChoiceAccelerationBubble *)self backingScrollView];
    v79 = [v81 contentLayoutGuide];
    v78 = [v79 topAnchor];
    v77 = [v80 constraintEqualToAnchor:v78];
    v103[5] = v77;
    v76 = [(_UITextChoiceAccelerationBubble *)self contentsView];
    v73 = [v76 leadingAnchor];
    v74 = [(_UITextChoiceAccelerationBubble *)self backingScrollView];
    v72 = [v74 contentLayoutGuide];
    v71 = [v72 leadingAnchor];
    v70 = [v73 constraintEqualToAnchor:v71];
    v103[6] = v70;
    v69 = [(_UITextChoiceAccelerationBubble *)self backingScrollView];
    v68 = [v69 contentLayoutGuide];
    v66 = [v68 bottomAnchor];
    v67 = [(_UITextChoiceAccelerationBubble *)self contentsView];
    v65 = [v67 bottomAnchor];
    v64 = [v66 constraintEqualToAnchor:v65];
    v103[7] = v64;
    v63 = [(_UITextChoiceAccelerationBubble *)self backingScrollView];
    v62 = [v63 contentLayoutGuide];
    v52 = [v62 trailingAnchor];
    v53 = [(_UITextChoiceAccelerationBubble *)self contentsView];
    v54 = [v53 trailingAnchor];
    v55 = [v52 constraintEqualToAnchor:v54];
    v103[8] = v55;
    v56 = [(_UITextChoiceAccelerationBubble *)self backingScrollView];
    v57 = [v56 heightAnchor];
    v58 = [(_UITextChoiceAccelerationBubble *)self contentsView];
    v59 = [v58 heightAnchor];
    v60 = [v57 constraintEqualToAnchor:v59];
    v103[9] = v60;
    v103[10] = v50;
    v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:v103 count:11];
    [v82 activateConstraints:v61];
  }
}

- (void)updateSelfWithRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v62[3] = *MEMORY[0x1E69E9840];
  [(_UITextChoiceAccelerationBubble *)self referenceRect];
  v65.origin.x = x;
  v65.origin.y = y;
  v65.size.width = width;
  v65.size.height = height;
  if (!CGRectEqualToRect(v63, v65))
  {
    v64.origin.x = x;
    v64.origin.y = y;
    v64.size.width = width;
    v64.size.height = height;
    if (!CGRectIsNull(v64))
    {
      [(_UITextChoiceAccelerationBubble *)self setReferenceRect:x, y, width, height];
      [(_UITextChoiceAccelerationBubble *)self anchorToTextIfNeeded];
      v8 = [(_UITextChoiceAccelerationBubble *)self anchorLeading];
      [v8 setConstant:x];

      v9 = [(_UITextChoiceAccelerationBubble *)self anchorTop];
      [v9 setConstant:y];

      v10 = [(_UITextChoiceAccelerationBubble *)self anchorWidth];
      [v10 setConstant:width];

      v11 = [(_UITextChoiceAccelerationBubble *)self anchorHeight];
      [v11 setConstant:height];

      if ([(_UITextChoiceAccelerationBubble *)self promptWillCollideWithKeyboard:x, y, width, height]|| [(_UITextChoiceAccelerationBubble *)self promptStyle]== 3)
      {
        v12 = [(_UITextChoiceAccelerationBubble *)self belowTextConstraints];
        v13 = [v12 firstObject];
        v14 = [v13 isActive];

        if (v14)
        {
          v15 = MEMORY[0x1E69977A0];
          v16 = [(_UITextChoiceAccelerationBubble *)self belowTextConstraints];
          [v15 deactivateConstraints:v16];
        }

        v17 = [(_UITextChoiceAccelerationBubble *)self aboveTextConstraints];

        if (!v17)
        {
          v59 = [(_UITextChoiceAccelerationBubble *)self backgroundView];
          v57 = [v59 topAnchor];
          v55 = [(UIView *)self topAnchor];
          v53 = [v57 constraintEqualToAnchor:v55];
          v62[0] = v53;
          v51 = [(_UITextChoiceAccelerationBubble *)self textAnchor];
          v18 = [v51 topAnchor];
          v19 = [(_UITextChoiceAccelerationBubble *)self backgroundView];
          v20 = [v19 bottomAnchor];
          v21 = [v18 constraintEqualToAnchor:v20];
          v62[1] = v21;
          v22 = [(UIView *)self bottomAnchor];
          v23 = [(_UITextChoiceAccelerationBubble *)self textAnchor];
          v24 = [v23 bottomAnchor];
          v25 = [v22 constraintEqualToAnchor:v24];
          v62[2] = v25;
          v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:3];
          [(_UITextChoiceAccelerationBubble *)self setAboveTextConstraints:v26];
        }

        v27 = [(_UITextChoiceAccelerationBubble *)self aboveTextConstraints];
        v28 = [v27 firstObject];
        v29 = [v28 isActive];

        if ((v29 & 1) == 0)
        {
          v30 = MEMORY[0x1E69977A0];
          v31 = [(_UITextChoiceAccelerationBubble *)self aboveTextConstraints];
LABEL_17:
          v50 = v31;
          [v30 activateConstraints:v31];
        }
      }

      else
      {
        v32 = [(_UITextChoiceAccelerationBubble *)self belowTextConstraints];

        if (!v32)
        {
          v60 = [(_UITextChoiceAccelerationBubble *)self backgroundView];
          v56 = [v60 topAnchor];
          v58 = [(_UITextChoiceAccelerationBubble *)self textAnchor];
          v54 = [v58 bottomAnchor];
          v52 = [v56 constraintEqualToAnchor:v54 constant:0.0];
          v61[0] = v52;
          v33 = [(_UITextChoiceAccelerationBubble *)self textAnchor];
          v34 = [v33 topAnchor];
          v35 = [(UIView *)self topAnchor];
          v36 = [v34 constraintEqualToAnchor:v35];
          v61[1] = v36;
          v37 = [(UIView *)self bottomAnchor];
          v38 = [(_UITextChoiceAccelerationBubble *)self backgroundView];
          v39 = [v38 bottomAnchor];
          v40 = [v37 constraintEqualToAnchor:v39];
          v61[2] = v40;
          v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:3];
          [(_UITextChoiceAccelerationBubble *)self setBelowTextConstraints:v41];
        }

        v42 = [(_UITextChoiceAccelerationBubble *)self aboveTextConstraints];
        v43 = [v42 firstObject];
        v44 = [v43 isActive];

        if (v44)
        {
          v45 = MEMORY[0x1E69977A0];
          v46 = [(_UITextChoiceAccelerationBubble *)self aboveTextConstraints];
          [v45 deactivateConstraints:v46];
        }

        v47 = [(_UITextChoiceAccelerationBubble *)self belowTextConstraints];
        v48 = [v47 firstObject];
        v49 = [v48 isActive];

        if ((v49 & 1) == 0)
        {
          v30 = MEMORY[0x1E69977A0];
          v31 = [(_UITextChoiceAccelerationBubble *)self belowTextConstraints];
          goto LABEL_17;
        }
      }
    }
  }
}

- (BOOL)promptWillCollideWithKeyboard:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(_UITextChoiceAccelerationBubble *)self backgroundView];
  [v8 bounds];
  v10 = v9;

  if (v10 >= height)
  {
    v11 = v10;
  }

  else
  {
    v11 = height;
  }

  v12 = height + v11;
  v13 = [(UIView *)self _window];
  v14 = [(UIView *)self superview];
  [v13 convertRect:v14 fromView:{x, y, width, v12}];
  v54 = v16;
  v55 = v15;
  v52 = v18;
  v53 = v17;

  v19 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  [v19 visibleFrameInView:self];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v57.origin.x = x;
  v57.origin.y = y;
  v57.size.width = width;
  v57.size.height = v12;
  v60.origin.x = v21;
  v60.origin.y = v23;
  v60.size.width = v25;
  v60.size.height = v27;
  if (CGRectIntersectsRect(v57, v60))
  {
    return 1;
  }

  v29 = [(UIView *)self window];
  v30 = [v29 safeAreaLayoutGuide];
  [v30 layoutFrame];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;

  v58.origin.x = v32;
  v58.origin.y = v34;
  v58.size.width = v36;
  v58.size.height = v38;
  MinX = CGRectGetMinX(v58);
  v59.origin.x = v32;
  v59.origin.y = v34;
  v59.size.width = v36;
  v59.size.height = v38;
  MaxY = CGRectGetMaxY(v59);
  v41 = [(UIView *)self window];
  [v41 safeAreaInsets];
  v43 = v42;

  v45 = v54;
  v44 = v55;
  v47 = v52;
  v46 = v53;
  v48 = MinX;
  v49 = MaxY;
  v50 = v36;
  v51 = v43;

  return CGRectIntersectsRect(*&v44, *&v48);
}

- (void)showChoices:(BOOL)a3
{
  v3 = a3;
  v5 = [(_UITextChoiceAccelerationBubble *)self backgroundView];
  v6 = v5;
  if (v3)
  {
    [v5 setHidden:0];

    v7 = [(_UITextChoiceAccelerationBubble *)self contentsView];
    [v7 setHidden:0];

    v8 = [(_UITextChoiceAccelerationBubble *)self backgroundMaskLayer];
    [v8 setHidden:0];

    v9 = [(UIView *)self _inheritedRenderConfig];
    v10 = [v9 colorAdaptiveBackground];

    if (v10)
    {
      return;
    }

    v11 = +[UIColor systemBlackColor];
    v12 = [v11 cgColor];
    v13 = [(UIView *)self layer];
    [v13 setShadowColor:v12];

    v14 = [(UIView *)self layer];
    [v14 setShadowRadius:9.0];

    v15 = [(UIView *)self layer];
    [v15 setShadowOffset:{0.0, 3.0}];

    v16 = 0.25;
  }

  else
  {
    [v5 setHidden:1];

    v17 = [(_UITextChoiceAccelerationBubble *)self contentsView];
    [v17 setHidden:1];

    v18 = [(_UITextChoiceAccelerationBubble *)self backgroundMaskLayer];
    [v18 setHidden:1];

    v19 = [(UIView *)self _inheritedRenderConfig];
    v20 = [v19 colorAdaptiveBackground];

    v16 = 0.0;
    if (v20)
    {
      return;
    }
  }

  v22 = [(UIView *)self layer];
  *&v21 = v16;
  [v22 setShadowOpacity:v21];
}

- (void)updateForSingleWord:(id)a3 textAnchorRect:(id)a4 inTextView:(id)a5 parentView:(id)a6 highlightColor:(id)a7
{
  v41[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = a4;
  if (-[_UITextChoiceAccelerationBubble needsRTLCheck](self, "needsRTLCheck") || (-[_UITextChoiceAccelerationBubble parentView](self, "parentView"), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v17 isEqual:v14], v17, (v18 & 1) == 0))
  {
    v19 = [(_UITextChoiceAccelerationBubble *)self usingRTLInputMode];
    v20 = [(UIView *)self traitOverrides];
    [v20 setLayoutDirection:v19];

    [(_UITextChoiceAccelerationBubble *)self setNeedsRTLCheck:0];
  }

  [(_UITextChoiceAccelerationBubble *)self updateTextAnchorForParentView:v14];
  [v16 rect];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  if (!+[UIKeyboard isKeyboardProcess])
  {
    [v14 convertRect:v13 fromView:{v22, v24, v26, v28}];
    v22 = v29;
    v24 = v30;
    v26 = v31;
    v28 = v32;
  }

  [(_UITextChoiceAccelerationBubble *)self updateTextHighlightViewWithColor:v15 convertedRect:v22, v24, v26, v28];
  v33 = [(_UITextChoiceAccelerationBubble *)self contentsView];
  v34 = [v33 arrangedSubviews];
  v35 = [v34 count];

  if (v35 == 1)
  {
    v36 = [(_UITextChoiceAccelerationBubble *)self contentsView];
    v37 = [v36 arrangedSubviews];
    v38 = [v37 objectAtIndex:0];

    [v38 updateText:v12 type:3];
  }

  else
  {
    v41[0] = v12;
    v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:1];
    v40 = _candidatesChoicesFromTextChoices(v39, 0);
    [(_UITextChoiceAccelerationBubble *)self updateViewForOptions:v40];
  }
}

- (void)updateTextBoxHighlightForRect:(id)a3 inTextView:(id)a4 parentView:(id)a5 highlightColor:(id)a6
{
  v25 = a4;
  v10 = a5;
  v11 = a6;
  v12 = a3;
  [(_UITextChoiceAccelerationBubble *)self updateTextAnchorForParentView:v10];
  [v12 rect];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  if (!+[UIKeyboard isKeyboardProcess])
  {
    [v10 convertRect:v25 fromView:{v14, v16, v18, v20}];
    v14 = v21;
    v16 = v22;
    v18 = v23;
    v20 = v24;
  }

  [(_UITextChoiceAccelerationBubble *)self updateTextHighlightViewWithColor:v11 convertedRect:v14, v16, v18, v20];
}

- (void)updateTextHighlightViewWithColor:(id)a3 convertedRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  [(_UITextChoiceAccelerationBubble *)self updateSelfWithRect:x, y, width, height];
  [(_UITextChoiceAccelerationBubble *)self showTextHighlightView:1];
  [(UIView *)self setAlpha:1.0];
  v10 = [(_UITextChoiceAccelerationBubble *)self textHighlightView];
  [v10 setBackgroundColor:v9];
}

- (void)hideForNow
{
  v3 = [(_UITextChoiceAccelerationBubble *)self textHighlightView];
  v4 = [v3 isHidden];

  if ((v4 & 1) == 0)
  {
    [(_UITextChoiceAccelerationBubble *)self showTextHighlightView:0];

    [(UIView *)self setAlpha:0.0];
  }
}

- (void)updateWithChoices:(id)a3 fromParentView:(id)a4 referenceTextView:(id)a5 presentedFromRect:(id)a6 textHighlightColor:(id)a7
{
  v40 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = a3;
  v16 = [v15 firstObject];
  v17 = [v16 label];

  LODWORD(v16) = [v17 _isNaturallyRTL];
  v18 = [(_UITextChoiceAccelerationBubble *)self usingRTLInputMode];
  v19 = [(UIView *)self traitOverrides];
  [v19 setLayoutDirection:v16];

  [(_UITextChoiceAccelerationBubble *)self setNeedsRTLCheck:v16 ^ v18];
  [(_UITextChoiceAccelerationBubble *)self updateTextAnchorForParentView:v40];
  [(UIView *)self setAlpha:1.0];
  [(_UITextChoiceAccelerationBubble *)self showChoices:1];
  [(_UITextChoiceAccelerationBubble *)self showTextHighlightView:v14 != 0];
  if (v14)
  {
    v20 = [v14 colorWithAlphaComponent:0.2];
    v21 = [(_UITextChoiceAccelerationBubble *)self textHighlightView];
    [v21 setBackgroundColor:v14];

    [(_UITextChoiceAccelerationBubble *)self setOptionalTintColor:v14];
    v22 = [(_UITextChoiceAccelerationBubble *)self dictationGlowEffect];
    [v22 setTintColor:v20];

    v23 = [(_UITextChoiceAccelerationBubble *)self dictationGlowEffect];
    [v23 setPulsing:1];
  }

  [v13 rect];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  if (!+[UIKeyboard isKeyboardProcess])
  {
    [v40 convertRect:v12 fromView:{v25, v27, v29, v31}];
    v25 = v32;
    v27 = v33;
    v29 = v34;
    v31 = v35;
  }

  [(_UITextChoiceAccelerationBubble *)self updateSelfWithRect:v25, v27, v29, v31];
  [(_UITextChoiceAccelerationBubble *)self setShouldRejectCandidate:0];
  [(_UITextChoiceAccelerationBubble *)self updateViewForOptions:v15];

  [(UIView *)self layoutIfNeeded];
  v36 = [(_UITextChoiceAccelerationBubble *)self textHighlightView];
  [v36 bounds];
  v38 = v37 / 4.75;
  v39 = [(_UITextChoiceAccelerationBubble *)self dictationGlowEffect];
  [v39 setBlurRadius:v38];
}

- (void)updateViewForOptions:(id)a3
{
  v4 = a3;
  v5 = [(_UITextChoiceAccelerationBubble *)self contentsView];
  v6 = [v5 arrangedSubviews];
  v7 = [v6 firstObject];

  v8 = [v4 firstObject];
  v48 = v8;
  v49 = v7;
  if ([v8 slotID])
  {
    v9 = 6;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = 8;
    }

    else if (_candidateSourceIsSmartReply(v8))
    {
      v9 = 7;
    }

    else if ([v4 count] >= 2)
    {
      v9 = 2;
    }

    else
    {
      v9 = 3;
    }
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56___UITextChoiceAccelerationBubble_updateViewForOptions___block_invoke;
  aBlock[3] = &unk_1E70FD9A0;
  aBlock[4] = self;
  v51 = _Block_copy(aBlock);
  v10 = [v4 count];
  v11 = [(_UITextChoiceAccelerationBubble *)self contentsView];
  v12 = [v11 arrangedSubviews];
  v13 = [v12 count];

  if (v10 >= v13)
  {
    if ([v4 count])
    {
      v29 = 0;
      do
      {
        v30 = [v4 objectAtIndexedSubscript:v29];
        v31 = [v30 label];
        v32 = v9;
        if (v9 == 2)
        {
          if (v51[2](v51, v31))
          {
            v32 = 4;
          }

          else
          {
            v32 = 2;
          }
        }

        v33 = [(_UITextChoiceAccelerationBubble *)self contentsView];
        v34 = [v33 arrangedSubviews];
        v35 = [v34 count];

        if (v29 >= v35)
        {
          v38 = objc_alloc_init(_UITextOption);
          v36 = [(_UITextChoiceAccelerationBubble *)self contentsView];
          [v36 addArrangedSubview:v38];
        }

        else
        {
          v36 = [(_UITextChoiceAccelerationBubble *)self contentsView];
          v37 = [v36 arrangedSubviews];
          v38 = [v37 objectAtIndex:v29];
        }

        [(_UITextChoiceAccelerationBubble *)self secureCandidateHeight];
        [(_UITextOption *)v38 updateSourceCandidate:v30 secureCandidateHeight:?];
        [(_UITextOption *)v38 updateText:v31 type:v32];
        -[_UITextOption showSeparator:](v38, "showSeparator:", v29 < [v4 count] - 1);
        [(_UITextOption *)v38 setLightingEffectEnabled:v32 == 7 atPosition:v29];

        ++v29;
      }

      while (v29 < [v4 count]);
    }
  }

  else
  {
    v14 = [(_UITextChoiceAccelerationBubble *)self contentsView];
    v15 = [v14 arrangedSubviews];
    v16 = [v15 count];
    v50 = v16 - [v4 count];

    if ([v4 count])
    {
      v17 = 0;
      do
      {
        v18 = [(_UITextChoiceAccelerationBubble *)self contentsView];
        v19 = [v18 arrangedSubviews];
        v20 = [v19 objectAtIndex:v17];

        v21 = [v4 objectAtIndexedSubscript:v17];
        v22 = [v21 label];
        v23 = v9;
        if (v9 == 2)
        {
          if (v51[2](v51, v22))
          {
            v23 = 4;
          }

          else
          {
            v23 = 2;
          }
        }

        if (!v20)
        {
          v20 = objc_alloc_init(_UITextOption);
          v24 = [(_UITextChoiceAccelerationBubble *)self contentsView];
          [v24 addArrangedSubview:v20];
        }

        [(_UITextChoiceAccelerationBubble *)self secureCandidateHeight];
        [(_UITextOption *)v20 updateSourceCandidate:v21 secureCandidateHeight:?];
        [(_UITextOption *)v20 updateText:v22 type:v23];
        -[_UITextOption showSeparator:](v20, "showSeparator:", v17 < [v4 count] - 1);
        [(_UITextOption *)v20 setLightingEffectEnabled:v23 == 7 atPosition:v17];

        ++v17;
      }

      while (v17 < [v4 count]);
    }

    if (v50 >= 1)
    {
      v25 = v50 + 1;
      do
      {
        v26 = [(_UITextChoiceAccelerationBubble *)self contentsView];
        v27 = [v26 arrangedSubviews];
        v28 = [v27 lastObject];
        [v28 removeFromSuperview];

        --v25;
      }

      while (v25 > 1);
    }
  }

  v39 = [(_UITextChoiceAccelerationBubble *)self backingScrollView];
  [v39 setContentOffset:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];

  v40 = [(_UITextChoiceAccelerationBubble *)self contentsView];
  v41 = [v40 arrangedSubviews];
  v42 = [v41 firstObject];

  v43 = [v42 viewForLastBaselineLayout];

  if (v43)
  {
    [v42 leadingSpace];
    v45 = v44;
    v46 = [(_UITextChoiceAccelerationBubble *)self leadingSpacing];
    [v46 setConstant:v45];
  }

  v47 = [(_UITextChoiceAccelerationBubble *)self contentsView];
  [v47 layoutIfNeeded];
}

- (void)updateButtonName:(id)a3 placement:(int64_t)a4 originalText:(id)a5
{
  v132[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v29 = [(_UITextChoiceAccelerationBubble *)self sideButton];

      if (v29)
      {
        v30 = [(_UITextChoiceAccelerationBubble *)self sideButton];
        [v30 updateText:v8 type:{-[_UITextChoiceAccelerationBubble buttonType](self, "buttonType")}];
      }

      else
      {
        v60 = [(_UITextChoiceAccelerationBubble *)self buttonType];
        if (v60 == 2)
        {
          v61 = 1;
        }

        else
        {
          v61 = v60;
        }

        v62 = [[_UITextOption alloc] initWithTitle:v8 type:v61];
        [(_UITextChoiceAccelerationBubble *)self setSideButton:v62];

        v63 = [(_UITextChoiceAccelerationBubble *)self sideButton];
        [v63 setTranslatesAutoresizingMaskIntoConstraints:0];

        v30 = [(_UITextChoiceAccelerationBubble *)self backgroundView];
        v64 = [v30 contentView];
        v65 = [(_UITextChoiceAccelerationBubble *)self sideButton];
        [v64 addSubview:v65];
      }

      v124 = v9;
      v125 = v8;

      v66 = [(_UITextChoiceAccelerationBubble *)self buttonConstraints];

      if (v66)
      {
        v67 = MEMORY[0x1E69977A0];
        v68 = [(_UITextChoiceAccelerationBubble *)self buttonConstraints];
        [v67 deactivateConstraints:v68];
      }

      v122 = [(_UITextChoiceAccelerationBubble *)self sideButton];
      v110 = [v122 centerYAnchor];
      v107 = [(_UITextChoiceAccelerationBubble *)self contentsView];
      v116 = [v107 centerYAnchor];
      v119 = [v110 constraintEqualToAnchor:v116];
      v130[0] = v119;
      v113 = [(_UITextChoiceAccelerationBubble *)self sideButton];
      v104 = [v113 leadingAnchor];
      v128 = [(_UITextChoiceAccelerationBubble *)self backgroundView];
      v127 = [v128 leadingAnchor];
      v126 = [v104 constraintEqualToAnchor:4.0 constant:?];
      v130[1] = v126;
      v102 = [(_UITextChoiceAccelerationBubble *)self backingScrollView];
      v69 = [v102 leadingAnchor];
      v70 = [(_UITextChoiceAccelerationBubble *)self sideButton];
      v71 = [v70 trailingAnchor];
      v72 = [v69 constraintEqualToAnchor:v71 constant:0.0];
      v130[2] = v72;
      v73 = [(UIView *)self trailingAnchor];
      v74 = [(_UITextChoiceAccelerationBubble *)self backingScrollView];
      v75 = [v74 trailingAnchor];
      v76 = [v73 constraintEqualToAnchor:v75];
      v130[3] = v76;
      v77 = [MEMORY[0x1E695DEC8] arrayWithObjects:v130 count:4];
      [(_UITextChoiceAccelerationBubble *)self setButtonConstraints:v77];

      v28 = v104;
      v24 = v107;

      v23 = v110;
      v22 = v122;

      v27 = v113;
      v26 = v119;

      v25 = v116;
      goto LABEL_44;
    }

    if (a4 == 3)
    {
      v12 = [(_UITextChoiceAccelerationBubble *)self sideButton];

      if (v12)
      {
        v13 = [(_UITextChoiceAccelerationBubble *)self sideButton];
        [v13 updateText:v8 type:{-[_UITextChoiceAccelerationBubble buttonType](self, "buttonType")}];
      }

      else
      {
        v54 = [(_UITextChoiceAccelerationBubble *)self buttonType];
        v55 = [(_UITextChoiceAccelerationBubble *)self buttonType];
        v56 = [_UITextOption alloc];
        v57 = v56;
        if (v55 == 5)
        {
          v58 = [(_UITextChoiceAccelerationBubble *)self optionalTintColor];
          v59 = [(_UITextOption *)v57 initWithTitle:v8 type:v54 optionalTintColor:v58];
          [(_UITextChoiceAccelerationBubble *)self setSideButton:v59];
        }

        else
        {
          v58 = [(_UITextOption *)v56 initWithTitle:v8 type:v54];
          [(_UITextChoiceAccelerationBubble *)self setSideButton:v58];
        }

        v78 = [(_UITextChoiceAccelerationBubble *)self sideButton];
        [v78 setTranslatesAutoresizingMaskIntoConstraints:0];

        v13 = [(_UITextChoiceAccelerationBubble *)self backgroundView];
        v79 = [v13 contentView];
        v80 = [(_UITextChoiceAccelerationBubble *)self sideButton];
        [v79 addSubview:v80];
      }

      v124 = v9;
      v125 = v8;

      v81 = [(_UITextChoiceAccelerationBubble *)self buttonConstraints];

      if (v81)
      {
        v82 = MEMORY[0x1E69977A0];
        v83 = [(_UITextChoiceAccelerationBubble *)self buttonConstraints];
        [v82 deactivateConstraints:v83];
      }

      v123 = [(_UITextChoiceAccelerationBubble *)self sideButton];
      v111 = [v123 centerXAnchor];
      v108 = [(_UITextChoiceAccelerationBubble *)self textHighlightView];
      v117 = [v108 centerXAnchor];
      v120 = [v111 constraintEqualToAnchor:v117];
      v129[0] = v120;
      v114 = [(_UITextChoiceAccelerationBubble *)self sideButton];
      v105 = [v114 topAnchor];
      v128 = [(_UITextChoiceAccelerationBubble *)self backgroundView];
      v127 = [v128 topAnchor];
      v126 = [v105 constraintEqualToAnchor:?];
      v129[1] = v126;
      v102 = [(_UITextChoiceAccelerationBubble *)self backgroundView];
      v101 = [v102 bottomAnchor];
      v84 = [(_UITextChoiceAccelerationBubble *)self sideButton];
      v85 = [v84 bottomAnchor];
      v86 = [v101 constraintEqualToAnchor:v85];
      v129[2] = v86;
      v87 = [(_UITextChoiceAccelerationBubble *)self backgroundView];
      v88 = [v87 widthAnchor];
      v89 = [(_UITextChoiceAccelerationBubble *)self sideButton];
      v90 = [v89 widthAnchor];
      v91 = [v88 constraintGreaterThanOrEqualToAnchor:v90];
      v129[3] = v91;
      v92 = [MEMORY[0x1E695DEC8] arrayWithObjects:v129 count:4];
      [(_UITextChoiceAccelerationBubble *)self setButtonConstraints:v92];

      v24 = v108;
      v23 = v111;

      v22 = v123;
      v28 = v105;

      v27 = v114;
      v26 = v120;

      v25 = v117;
      v53 = v101;
      goto LABEL_43;
    }
  }

  else
  {
    if (!a4)
    {
      v14 = [(_UITextChoiceAccelerationBubble *)self sideButton];
      v15 = [v14 superview];

      if (v15)
      {
        v16 = MEMORY[0x1E69977A0];
        v17 = [(_UITextChoiceAccelerationBubble *)self buttonConstraints];
        [v16 deactivateConstraints:v17];

        v18 = [(_UITextChoiceAccelerationBubble *)self sideButton];
        [v18 removeFromSuperview];
      }

      [(_UITextChoiceAccelerationBubble *)self setSideButton:0];
      v19 = [(_UITextChoiceAccelerationBubble *)self buttonConstraints];

      if (v19)
      {
        v20 = MEMORY[0x1E69977A0];
        v21 = [(_UITextChoiceAccelerationBubble *)self buttonConstraints];
        [v20 deactivateConstraints:v21];
      }

      v22 = [(_UITextChoiceAccelerationBubble *)self backingScrollView];
      v23 = [v22 leadingAnchor];
      v24 = [(UIView *)self leadingAnchor];
      v25 = [v23 constraintEqualToAnchor:v24];
      v132[0] = v25;
      v26 = [(_UITextChoiceAccelerationBubble *)self backgroundView];
      v27 = [v26 trailingAnchor];
      v28 = [(_UITextChoiceAccelerationBubble *)self backingScrollView];
      v128 = [v28 trailingAnchor];
      v127 = [v27 constraintEqualToAnchor:?];
      v132[1] = v127;
      v126 = [MEMORY[0x1E695DEC8] arrayWithObjects:v132 count:2];
      [(_UITextChoiceAccelerationBubble *)self setButtonConstraints:?];
      goto LABEL_45;
    }

    if (a4 == 1)
    {
      v10 = [(_UITextChoiceAccelerationBubble *)self sideButton];

      if (v10)
      {
        v11 = [(_UITextChoiceAccelerationBubble *)self sideButton];
        [v11 updateText:v8 type:{-[_UITextChoiceAccelerationBubble buttonType](self, "buttonType")}];
      }

      else
      {
        v31 = [(_UITextChoiceAccelerationBubble *)self buttonType];
        if (v31 == 2)
        {
          v32 = 1;
        }

        else
        {
          v32 = v31;
        }

        v33 = [[_UITextOption alloc] initWithTitle:v8 type:v32];
        [(_UITextChoiceAccelerationBubble *)self setSideButton:v33];

        v34 = [(_UITextChoiceAccelerationBubble *)self sideButton];
        [v34 setTranslatesAutoresizingMaskIntoConstraints:0];

        v11 = [(_UITextChoiceAccelerationBubble *)self backgroundView];
        v35 = [v11 contentView];
        v36 = [(_UITextChoiceAccelerationBubble *)self sideButton];
        [v35 addSubview:v36];
      }

      if (![(_UITextChoiceAccelerationBubble *)self buttonType])
      {
        v37 = [(_UITextChoiceAccelerationBubble *)self replacement];
        if ([v37 isAutofillDoubleLineUI])
        {
          v38 = -12.0;
        }

        else
        {
          v38 = 0.0;
        }

        v39 = [(_UITextChoiceAccelerationBubble *)self sideButton];
        v40 = [v39 symbolImageViewYConstraint];
        [v40 setConstant:v38];
      }

      v124 = v9;
      v125 = v8;
      v41 = [(_UITextChoiceAccelerationBubble *)self buttonConstraints];

      if (v41)
      {
        v42 = MEMORY[0x1E69977A0];
        v43 = [(_UITextChoiceAccelerationBubble *)self buttonConstraints];
        [v42 deactivateConstraints:v43];
      }

      v121 = [(_UITextChoiceAccelerationBubble *)self sideButton];
      v109 = [v121 topAnchor];
      v106 = [(_UITextChoiceAccelerationBubble *)self backgroundView];
      v115 = [v106 topAnchor];
      v118 = [v109 constraintEqualToAnchor:v115];
      v131[0] = v118;
      v112 = [(_UITextChoiceAccelerationBubble *)self backgroundView];
      v103 = [v112 bottomAnchor];
      v128 = [(_UITextChoiceAccelerationBubble *)self sideButton];
      v127 = [v128 bottomAnchor];
      v126 = [v103 constraintEqualToAnchor:?];
      v131[1] = v126;
      v102 = [(_UITextChoiceAccelerationBubble *)self backgroundView];
      v99 = [v102 trailingAnchor];
      v100 = [(_UITextChoiceAccelerationBubble *)self sideButton];
      v98 = [v100 trailingAnchor];
      v97 = [v99 constraintEqualToAnchor:v98 constant:4.0];
      v131[2] = v97;
      v96 = [(_UITextChoiceAccelerationBubble *)self backingScrollView];
      v44 = [v96 leadingAnchor];
      v45 = [(UIView *)self leadingAnchor];
      v46 = [v44 constraintEqualToAnchor:v45];
      v131[3] = v46;
      v47 = [(_UITextChoiceAccelerationBubble *)self sideButton];
      v48 = [v47 leadingAnchor];
      v49 = [(_UITextChoiceAccelerationBubble *)self backingScrollView];
      v50 = [v49 trailingAnchor];
      v51 = [v48 constraintEqualToAnchor:v50 constant:0.0];
      v131[4] = v51;
      v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v131 count:5];
      [(_UITextChoiceAccelerationBubble *)self setButtonConstraints:v52];

      v24 = v106;
      v23 = v109;

      v22 = v121;
      v25 = v115;

      v28 = v103;
      v27 = v112;

      v26 = v118;
      v53 = v99;
LABEL_43:

LABEL_44:
      v9 = v124;
      v8 = v125;
LABEL_45:

      v93 = MEMORY[0x1E69977A0];
      v94 = [(_UITextChoiceAccelerationBubble *)self buttonConstraints];
      [v93 activateConstraints:v94];
    }
  }

  v95 = [(_UITextChoiceAccelerationBubble *)self sideButton];
  [v95 setOriginalText:v9];
}

- (void)updateButtonForType:(int64_t)a3
{
  if ((a3 - 1) > 4)
  {
    v3 = 2;
  }

  else
  {
    v3 = qword_18A67B7C0[a3 - 1];
  }

  [(_UITextChoiceAccelerationBubble *)self setButtonType:v3];
}

- (void)layoutSubviews
{
  v19.receiver = self;
  v19.super_class = _UITextChoiceAccelerationBubble;
  [(UIView *)&v19 layoutSubviews];
  v3 = [(_UITextChoiceAccelerationBubble *)self contentsView];
  v4 = [v3 arrangedSubviews];
  if ([v4 count] == 1)
  {
    v5 = [(_UITextChoiceAccelerationBubble *)self replacement];
    v6 = _replacementSourceIsSmartReply(v5) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(UIView *)self _inheritedRenderConfig];
  v8 = [v7 colorAdaptiveBackground];

  if (v8)
  {
    v9 = [(_UITextChoiceAccelerationBubble *)self backgroundView];
    [v9 bounds];

    v10 = [(_UITextChoiceAccelerationBubble *)self backgroundView];
    [v10 bounds];
    [_UITextChoiceAccelerationBubble updateBubbleShapeInRect:"updateBubbleShapeInRect:withCornerRadius:forSquaredOffBubble:" withCornerRadius:0 forSquaredOffBubble:?];
  }

  else
  {
    v11 = [(_UITextChoiceAccelerationBubble *)self replacement];
    v12 = [v11 isAutofillDoubleLineUI];

    v13 = [(_UITextChoiceAccelerationBubble *)self backgroundView];
    [v13 bounds];
    if (v12)
    {
      v14 = [(_UITextChoiceAccelerationBubble *)self squaredPathInRect:?];
    }

    else
    {
      if (v6)
      {
        [(_UITextChoiceAccelerationBubble *)self squaredOffBubblePathInRect:?];
      }

      else
      {
        [(_UITextChoiceAccelerationBubble *)self bubblePathInRect:?];
      }
      v14 = ;
    }

    v10 = v14;

    v15 = [v10 CGPath];
    v16 = [(_UITextChoiceAccelerationBubble *)self backgroundMaskLayer];
    [v16 setShadowPath:v15];

    v17 = [v10 CGPath];
    v18 = [(_UITextChoiceAccelerationBubble *)self backgroundMaskLayer];
    [v18 setPath:v17];
  }
}

- (BOOL)usingRTLInputMode
{
  v2 = +[UIKeyboardInputModeController sharedInputModeController];
  v3 = [v2 currentInputMode];
  v4 = [v3 isDefaultRightToLeft];

  return v4;
}

- (id)textOptionWithText:(id)a3 type:(int64_t)a4
{
  v5 = a3;
  v6 = [[_UITextOption alloc] initWithTitle:v5 type:a4];

  return v6;
}

- (id)backgroundImageView
{
  if ([(_UITextChoiceAccelerationBubble *)self promptStyle]== 3)
  {
    v3 = [[UIVisualEffectView alloc] initWithEffect:0];
  }

  else
  {
    v4 = [(UIView *)self _inheritedRenderConfig];
    v5 = [v4 colorAdaptiveBackground];

    v6 = [UIVisualEffectView alloc];
    if (v5)
    {
      [(_UITextChoiceAccelerationBubble *)self referenceRect];
      v3 = [(UIVisualEffectView *)v6 initWithFrame:?];
      v7 = [[_UIViewGlass alloc] initWithVariant:0];
      [(UIView *)v3 _setBackground:v7];

      v8 = [(UIView *)v3 layer];
      [v8 setCornerRadius:6.5];

      [(UIView *)v3 setClipsToBounds:1];
    }

    else
    {
      v9 = [UIBlurEffect effectWithStyle:9];
      v3 = [(UIVisualEffectView *)v6 initWithEffect:v9];

      v10 = objc_opt_new();
      v11 = +[UIColor systemBackgroundColor];
      [v10 setFillColor:{objc_msgSend(v11, "CGColor")}];

      [(_UITextChoiceAccelerationBubble *)self referenceRect];
      v12 = [(_UITextChoiceAccelerationBubble *)self bubblePathInRect:?];
      [v10 setPath:{objc_msgSend(v12, "CGPath")}];

      [(_UITextChoiceAccelerationBubble *)self setBackgroundMaskLayer:v10];
      v13 = [(_UITextChoiceAccelerationBubble *)self backgroundMaskLayer];
      v14 = [(UIView *)v3 layer];
      [v14 setMask:v13];
    }
  }

  return v3;
}

- (id)squaredPathInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = +[UIBezierPath bezierPath];
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  v8 = CGRectGetMinX(v27) + 6.5;
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  [v7 moveToPoint:{v8, CGRectGetMinY(v28)}];
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  v9 = CGRectGetMaxX(v29) + -6.5;
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  [v7 addLineToPoint:{v9, CGRectGetMinY(v30)}];
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  MaxX = CGRectGetMaxX(v31);
  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  v11 = CGRectGetMinY(v32) + 6.5;
  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = width;
  v33.size.height = height;
  v12 = CGRectGetMaxX(v33);
  v34.origin.x = x;
  v34.origin.y = y;
  v34.size.width = width;
  v34.size.height = height;
  [v7 addQuadCurveToPoint:MaxX controlPoint:{v11, v12, CGRectGetMinY(v34)}];
  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = height;
  v13 = CGRectGetMaxX(v35);
  v36.origin.x = x;
  v36.origin.y = y;
  v36.size.width = width;
  v36.size.height = height;
  [v7 addLineToPoint:{v13, CGRectGetMaxY(v36) + -6.5}];
  v37.origin.x = x;
  v37.origin.y = y;
  v37.size.width = width;
  v37.size.height = height;
  v14 = CGRectGetMaxX(v37) + -6.5;
  v38.origin.x = x;
  v38.origin.y = y;
  v38.size.width = width;
  v38.size.height = height;
  MaxY = CGRectGetMaxY(v38);
  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = width;
  v39.size.height = height;
  v16 = CGRectGetMaxX(v39);
  v40.origin.x = x;
  v40.origin.y = y;
  v40.size.width = width;
  v40.size.height = height;
  [v7 addQuadCurveToPoint:v14 controlPoint:{MaxY, v16, CGRectGetMaxY(v40)}];
  v41.origin.x = x;
  v41.origin.y = y;
  v41.size.width = width;
  v41.size.height = height;
  v17 = CGRectGetMinX(v41) + 6.5;
  v42.origin.x = x;
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = height;
  [v7 addLineToPoint:{v17, CGRectGetMaxY(v42)}];
  v43.origin.x = x;
  v43.origin.y = y;
  v43.size.width = width;
  v43.size.height = height;
  MinX = CGRectGetMinX(v43);
  v44.origin.x = x;
  v44.origin.y = y;
  v44.size.width = width;
  v44.size.height = height;
  v19 = CGRectGetMaxY(v44) + -6.5;
  v45.origin.x = x;
  v45.origin.y = y;
  v45.size.width = width;
  v45.size.height = height;
  v20 = CGRectGetMinX(v45);
  v46.origin.x = x;
  v46.origin.y = y;
  v46.size.width = width;
  v46.size.height = height;
  [v7 addQuadCurveToPoint:MinX controlPoint:{v19, v20, CGRectGetMaxY(v46)}];
  v47.origin.x = x;
  v47.origin.y = y;
  v47.size.width = width;
  v47.size.height = height;
  v21 = CGRectGetMinX(v47);
  v48.origin.x = x;
  v48.origin.y = y;
  v48.size.width = width;
  v48.size.height = height;
  [v7 addLineToPoint:{v21, CGRectGetMinY(v48) + 6.5}];
  v49.origin.x = x;
  v49.origin.y = y;
  v49.size.width = width;
  v49.size.height = height;
  v22 = CGRectGetMinX(v49) + 6.5;
  v50.origin.x = x;
  v50.origin.y = y;
  v50.size.width = width;
  v50.size.height = height;
  MinY = CGRectGetMinY(v50);
  v51.origin.x = x;
  v51.origin.y = y;
  v51.size.width = width;
  v51.size.height = height;
  v24 = CGRectGetMinX(v51);
  v52.origin.x = x;
  v52.origin.y = y;
  v52.size.width = width;
  v52.size.height = height;
  [v7 addQuadCurveToPoint:v22 controlPoint:{MinY, v24, CGRectGetMinY(v52)}];

  return v7;
}

- (id)squaredOffBubblePathInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = a3.size.height * 0.5;
  v32 = a3.origin.x + a3.size.height * 0.5;
  v8 = [(UIView *)self traitCollection];
  v9 = [v8 layoutDirection];

  v10 = x;
  v11 = y;
  v12 = width;
  v13 = height;
  if (v9 == 1)
  {
    v29 = v7 + CGRectGetMinX(*&v10);
    v34.origin.x = x;
    v34.origin.y = y;
    v34.size.width = width;
    v34.size.height = height;
    v31 = v7 + CGRectGetMinX(v34);
    v35.origin.x = x;
    v35.origin.y = y;
    v35.size.width = width;
    v35.size.height = height;
    MaxY = CGRectGetMaxY(v35);
    v36.origin.x = x;
    v36.origin.y = y;
    v36.size.width = width;
    v36.size.height = height;
    v23 = CGRectGetMaxX(v36) + -6.5;
    v37.origin.x = x;
    v37.origin.y = y;
    v37.size.width = width;
    v37.size.height = height;
    v14 = CGRectGetMaxY(v37);
    v38.origin.x = x;
    v38.origin.y = y;
    v38.size.width = width;
    v38.size.height = height;
    MaxX = CGRectGetMaxX(v38);
    v39.origin.x = x;
    v39.origin.y = y;
    v39.size.width = width;
    v39.size.height = height;
    v22 = CGRectGetMaxY(v39) + -6.5;
    v40.origin.x = x;
    v40.origin.y = y;
    v40.size.width = width;
    v40.size.height = height;
    v21 = CGRectGetMaxX(v40);
    v41.origin.x = x;
    v41.origin.y = y;
    v41.size.width = width;
    v41.size.height = height;
    v27 = CGRectGetMaxX(v41) + -6.5;
    v15 = +[UIBezierPath bezierPath];
    [v15 moveToPoint:{v32, y}];
    [v15 addArcWithCenter:0 radius:v29 startAngle:y + v7 endAngle:v7 clockwise:{4.71238898, 1.57079633}];
    [v15 addLineToPoint:{v31, MaxY}];
    [v15 addLineToPoint:{v23, v14}];
    v42.origin.x = x;
    v42.origin.y = y;
    v42.size.width = width;
    v42.size.height = height;
    v16 = CGRectGetMaxX(v42) + 6.5;
    v43.origin.x = x;
    v43.origin.y = y;
    v43.size.width = width;
    v43.size.height = height;
    [v15 addQuadCurveToPoint:MaxX controlPoint:{v22, v16, CGRectGetMaxY(v43)}];
    [v15 addLineToPoint:{v21, y + 6.5}];
    v44.origin.x = x;
    v44.origin.y = y;
    v44.size.width = width;
    v44.size.height = height;
    v17 = CGRectGetMaxX(v44) + 6.5;
    v45.origin.x = x;
    v45.origin.y = y;
    v45.size.width = width;
    v45.size.height = height;
    [v15 addQuadCurveToPoint:v27 controlPoint:{y, v17, CGRectGetMinY(v45)}];
  }

  else
  {
    v30 = CGRectGetMaxX(*&v10) - v7;
    v46.origin.x = x;
    v46.origin.y = y;
    v46.size.width = width;
    v46.size.height = height;
    v28 = CGRectGetMaxX(v46) - v7;
    v47.origin.x = x;
    v47.origin.y = y;
    v47.size.width = width;
    v47.size.height = height;
    CGRectGetMaxX(v47);
    v48.origin.x = x;
    v48.origin.y = y;
    v48.size.width = width;
    v48.size.height = height;
    CGRectGetMaxY(v48);
    v49.origin.x = x;
    v49.origin.y = y;
    v49.size.width = width;
    v49.size.height = height;
    v18 = CGRectGetMaxY(v49);
    v50.origin.x = x;
    v50.origin.y = y;
    v50.size.width = width;
    v50.size.height = height;
    v26 = CGRectGetMaxY(v50) + -6.5;
    v15 = +[UIBezierPath bezierPath];
    [v15 moveToPoint:{v32, y}];
    [v15 addLineToPoint:{v30, y}];
    [v15 addArcWithCenter:1 radius:v28 startAngle:y + v7 endAngle:v7 clockwise:{4.71238898, 1.57079633}];
    [v15 addLineToPoint:{x + 6.5, v18}];
    v51.origin.x = x;
    v51.origin.y = y;
    v51.size.width = width;
    v51.size.height = height;
    MinX = CGRectGetMinX(v51);
    v52.origin.x = x;
    v52.origin.y = y;
    v52.size.width = width;
    v52.size.height = height;
    [v15 addQuadCurveToPoint:x controlPoint:{v26, MinX, CGRectGetMaxY(v52)}];
    [v15 addLineToPoint:{x, y + 6.5}];
    [v15 addQuadCurveToPoint:x + 6.5 controlPoint:{y, x, y}];
  }

  [v15 addLineToPoint:{v32, y}];

  return v15;
}

- (void)updateBubbleShapeInRect:(CGRect)a3 withCornerRadius:(double)a4 forSquaredOffBubble:(BOOL)a5
{
  v5 = a4;
  if (a5)
  {
    v7 = a3.size.height * 0.5;
    v8 = [(UIView *)self traitCollection];
    v9 = [v8 layoutDirection];

    if (v9 == 1)
    {
      v10 = v5;
    }

    else
    {
      v10 = v7;
    }

    if (v9 == 1)
    {
      v5 = v7;
    }
  }

  else
  {
    v10 = a4;
  }

  v11 = [(_UITextChoiceAccelerationBubble *)self backgroundView];
  v12 = [v11 layer];
  *v13 = v5;
  *&v13[1] = v5;
  *&v13[2] = v10;
  *&v13[3] = v10;
  *&v13[4] = v10;
  *&v13[5] = v10;
  *&v13[6] = v5;
  *&v13[7] = v5;
  [v12 setCornerRadii:v13];
}

- (void)showTextHighlightView:(BOOL)a3
{
  v3 = a3;
  v41[4] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    goto LABEL_10;
  }

  v5 = [(_UITextChoiceAccelerationBubble *)self textHighlightView];

  if (v5)
  {
    goto LABEL_10;
  }

  v6 = objc_alloc_init(UIView);
  [(_UITextChoiceAccelerationBubble *)self setTextHighlightView:v6];

  v7 = [(_UITextChoiceAccelerationBubble *)self textHighlightView];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v8 = [(_UITextChoiceAccelerationBubble *)self textHighlightView];
  [(UIView *)self addSubview:v8];

  if ([(_UITextChoiceAccelerationBubble *)self promptStyle]== 3)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = 2.0;
  }

  v31 = MEMORY[0x1E69977A0];
  v40 = [(_UITextChoiceAccelerationBubble *)self textAnchor];
  v38 = [v40 topAnchor];
  v39 = [(_UITextChoiceAccelerationBubble *)self textHighlightView];
  v37 = [v39 topAnchor];
  v36 = [v38 constraintEqualToAnchor:v37 constant:v9];
  v41[0] = v36;
  v35 = [(_UITextChoiceAccelerationBubble *)self textAnchor];
  v33 = [v35 leadingAnchor];
  v34 = [(_UITextChoiceAccelerationBubble *)self textHighlightView];
  v32 = [v34 leadingAnchor];
  v30 = [v33 constraintEqualToAnchor:v32 constant:v9];
  v41[1] = v30;
  v29 = [(_UITextChoiceAccelerationBubble *)self textHighlightView];
  v27 = [v29 bottomAnchor];
  v28 = [(_UITextChoiceAccelerationBubble *)self textAnchor];
  v10 = [v28 bottomAnchor];
  v11 = [v27 constraintEqualToAnchor:v10];
  v41[2] = v11;
  v12 = [(_UITextChoiceAccelerationBubble *)self textHighlightView];
  v13 = [v12 trailingAnchor];
  v14 = [(_UITextChoiceAccelerationBubble *)self textAnchor];
  v15 = [v14 trailingAnchor];
  v16 = [v13 constraintEqualToAnchor:v15 constant:v9];
  v41[3] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:4];
  [v31 activateConstraints:v17];

  v18 = [(_UITextChoiceAccelerationBubble *)self textHighlightView];
  [(UIView *)self sendSubviewToBack:v18];

  v19 = [(_UITextChoiceAccelerationBubble *)self textHighlightView];
  [v19 setHidden:0];

  v20 = [(_UITextChoiceAccelerationBubble *)self dictationGlowEffect];
  if (!v20)
  {
    if ([(_UITextChoiceAccelerationBubble *)self promptStyle]!= 3)
    {
      goto LABEL_10;
    }

    v21 = [UIDictationGlowEffect alloc];
    v20 = [(_UITextChoiceAccelerationBubble *)self textHighlightView];
    v22 = [(UIDictationGlowEffect *)v21 initWithView:v20];
    [(_UITextChoiceAccelerationBubble *)self setDictationGlowEffect:v22];
  }

LABEL_10:
  v23 = [(_UITextChoiceAccelerationBubble *)self textHighlightView];
  v24 = [v23 isHidden];

  if (v24 == v3)
  {
    v25 = [(_UITextChoiceAccelerationBubble *)self textHighlightView];
    [(UIView *)self sendSubviewToBack:v25];

    v26 = [(_UITextChoiceAccelerationBubble *)self textHighlightView];
    [v26 setHidden:v3 ^ 1u];
  }
}

- (BOOL)showingAutocorrectHighlight
{
  if ([(_UITextChoiceAccelerationBubble *)self promptStyle]== 3)
  {
    return 0;
  }

  v4 = [(_UITextChoiceAccelerationBubble *)self textHighlightView];
  if (v4)
  {
    v5 = [(_UITextChoiceAccelerationBubble *)self textHighlightView];
    v6 = [v5 superview];
    if (v6)
    {
      v7 = [(_UITextChoiceAccelerationBubble *)self textHighlightView];
      if ([v7 isHidden])
      {
        v3 = 0;
      }

      else
      {
        v8 = [(_UITextChoiceAccelerationBubble *)self textHighlightView];
        [v8 alpha];
        v3 = v9 > 0.0;
      }
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)optionForPoint:(CGPoint)a3 withEvent:(id)a4
{
  v7.receiver = self;
  v7.super_class = _UITextChoiceAccelerationBubble;
  v4 = [(UIControl *)&v7 hitTest:a4 withEvent:a3.x, a3.y];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)dictationHighlightViewForPoint:(CGPoint)a3 withEvent:(id)a4
{
  v12.receiver = self;
  v12.super_class = _UITextChoiceAccelerationBubble;
  v5 = [(UIControl *)&v12 hitTest:a4 withEvent:a3.x, a3.y];
  v6 = [(_UITextChoiceAccelerationBubble *)self textHighlightView];
  if (([v5 isEqual:v6] & 1) != 0 && (-[_UITextChoiceAccelerationBubble dictationGlowEffect](self, "dictationGlowEffect"), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
    v9 = [(_UITextChoiceAccelerationBubble *)self promptStyle];

    if (v9 == 3)
    {
      v10 = v5;
      goto LABEL_7;
    }
  }

  else
  {
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if ([(_UITextChoiceAccelerationBubble *)self pointInside:v7 withEvent:x, y])
  {
    v8 = self;
  }

  else
  {
    v19.receiver = self;
    v19.super_class = _UITextChoiceAccelerationBubble;
    v8 = [(UIControl *)&v19 hitTest:v7 withEvent:x, y];
    if (v8 != self)
    {
LABEL_7:
      v8 = v8;
      v17 = v8;
      goto LABEL_8;
    }
  }

  v9 = [(_UITextChoiceAccelerationBubble *)self dictationPromptDelegate];
  if (!v9)
  {
    goto LABEL_7;
  }

  v10 = v9;
  v11 = [(_UITextChoiceAccelerationBubble *)self promptStyle];

  if (v11 != 3)
  {
    goto LABEL_7;
  }

  [(UIView *)self convertPoint:0 toView:x, y];
  v13 = v12;
  v15 = v14;
  v16 = [(_UITextChoiceAccelerationBubble *)self dictationPromptDelegate];
  v17 = [v16 nearestDictationPromptForPoint:v7 withEvent:{v13, v15}];

  if (!v17)
  {
    goto LABEL_7;
  }

LABEL_8:

  return v17;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = [(_UITextChoiceAccelerationBubble *)self backgroundView];
  [(UIView *)self convertPoint:v7 toView:x, y];
  v9 = v8;
  v11 = v10;

  v12 = [(_UITextChoiceAccelerationBubble *)self backgroundView];
  [v12 frame];
  v28 = CGRectInset(v27, -15.0, -30.0);
  v13 = v28.origin.x;
  v14 = v28.origin.y;
  width = v28.size.width;
  height = v28.size.height;

  v17 = [(_UITextChoiceAccelerationBubble *)self textHighlightView];
  [(UIView *)self convertPoint:v17 toView:x, y];
  v19 = v18;
  v21 = v20;

  v29.origin.x = v13;
  v29.origin.y = v14;
  v29.size.width = width;
  v29.size.height = height;
  v25.x = v9;
  v25.y = v11;
  if (CGRectContainsPoint(v29, v25))
  {
    return 1;
  }

  v23 = [(_UITextChoiceAccelerationBubble *)self textHighlightView];
  [v23 bounds];
  v26.x = v19;
  v26.y = v21;
  v24 = CGRectContainsPoint(v30, v26);

  return v24;
}

- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v6 locationInView:self];
  v8 = [(_UITextChoiceAccelerationBubble *)self dictationHighlightViewForPoint:v7 withEvent:?];
  if (v8 || [(_UITextChoiceAccelerationBubble *)self promptStyle]== 3)
  {
    v9 = 1;
  }

  else
  {
    [v6 locationInView:self];
    v11 = [(_UITextChoiceAccelerationBubble *)self optionForPoint:v7 withEvent:?];
    v12 = v11;
    v9 = v11 != 0;
    if (v11)
    {
      [v11 setState:4];
      if (![v12 type] || objc_msgSend(v12, "type") == 1)
      {
        v13 = [(_UITextChoiceAccelerationBubble *)self contentsView];
        v14 = [v13 arrangedSubviews];
        v15 = [v14 firstObject];

        [v15 setState:4];
      }

      if ([v12 type] == 3)
      {
        v16 = [(_UITextChoiceAccelerationBubble *)self sideButton];
        [v16 setState:4];
      }
    }
  }

  return v9;
}

- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [v6 locationInView:self];
  v8 = [(_UITextChoiceAccelerationBubble *)self optionForPoint:v7 withEvent:?];
  [v6 locationInView:self];
  v9 = [(_UITextChoiceAccelerationBubble *)self dictationHighlightViewForPoint:v7 withEvent:?];
  v10 = v9;
  if (v8)
  {
    if (![v8 state])
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v11 = [(_UITextChoiceAccelerationBubble *)self contentsView];
      v12 = [v11 arrangedSubviews];

      v13 = [v12 countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v35;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v35 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v34 + 1) + 8 * i);
            if (([v17 isEqual:v8] & 1) == 0)
            {
              [v17 setState:0];
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v34 objects:v39 count:16];
        }

        while (v14);
      }

      v18 = [(_UITextChoiceAccelerationBubble *)self sideButton];
      v19 = [v8 isEqual:v18];

      if ((v19 & 1) == 0)
      {
        v20 = [(_UITextChoiceAccelerationBubble *)self sideButton];
        [v20 setState:0];
      }

      [v8 setState:4];
    }

    goto LABEL_16;
  }

  if (v9)
  {
LABEL_16:
    v21 = 1;
    goto LABEL_17;
  }

  v23 = [(_UITextChoiceAccelerationBubble *)self sideButton];
  [v23 setState:0];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v24 = [(_UITextChoiceAccelerationBubble *)self contentsView];
  v25 = [v24 arrangedSubviews];

  v26 = [v25 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v31;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v31 != v28)
        {
          objc_enumerationMutation(v25);
        }

        [*(*(&v30 + 1) + 8 * j) setState:0];
      }

      v27 = [v25 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v27);
  }

  v21 = 0;
LABEL_17:

  return v21;
}

- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a4;
  [a3 locationInView:self];
  v8 = v7;
  v10 = v9;
  if ([(_UITextChoiceAccelerationBubble *)self pointInside:v6 withEvent:?])
  {
    v11 = [(_UITextChoiceAccelerationBubble *)self optionForPoint:0 withEvent:v8, v10];
    v12 = v11;
    if (v11)
    {
      [v11 setState:4];
      if (![v12 type])
      {
        v24 = [(_UITextChoiceAccelerationBubble *)self contentsView];
        v25 = [v24 arrangedSubviews];
        v15 = [v25 firstObject];

        [v15 setState:4];
        [(_UITextChoiceAccelerationBubble *)self dismissWithCancel];
        goto LABEL_16;
      }

      if ([v12 type] == 1)
      {
        v13 = [(_UITextChoiceAccelerationBubble *)self contentsView];
        v14 = [v13 arrangedSubviews];
        v15 = [v14 firstObject];

        [v15 setState:4];
        v16 = [(_UITextChoiceAccelerationBubble *)self sideButton];
        v17 = [v16 originalText];
        [(_UITextChoiceAccelerationBubble *)self dismissWithRevert:v17];

LABEL_16:
        goto LABEL_29;
      }

      if ([v12 type] == 6 || objc_msgSend(v12, "type") == 8)
      {
        v26 = [v6 _authenticationMessage];
        [(_UITextChoiceAccelerationBubble *)self setAuthenticationMessage:v26];

        v27 = [v12 sourceCandidate];
        selectedCandidateChoice = self->_selectedCandidateChoice;
        self->_selectedCandidateChoice = v27;

        [(UIControl *)self sendActionsForControlEvents:64];
        [(_UITextChoiceAccelerationBubble *)self removeAnimated:1];
      }

      else
      {
        if ([v12 type] == 7 && (objc_msgSend(v12, "sourceCandidate"), v29 = objc_claimAutoreleasedReturnValue(), v29, v29))
        {
          v30 = [(_UITextChoiceAccelerationBubble *)self sideButton];
          [v30 setState:4];

          v31 = [v12 sourceCandidate];
          [(_UITextChoiceAccelerationBubble *)self dismissWithCandidate:v31];
        }

        else
        {
          v31 = [v12 textToUse];
          v32 = [(_UITextChoiceAccelerationBubble *)self candidate];
          v33 = [v32 input];

          v34 = [(_UITextChoiceAccelerationBubble *)self sideButton];
          [v34 setState:4];

          if (v31 && [v31 isEqualToString:v33])
          {
            [(_UITextChoiceAccelerationBubble *)self dismissWithRevert:v31];
          }

          else
          {
            [(_UITextChoiceAccelerationBubble *)self dismissWithText:v31];
          }
        }
      }
    }

    else
    {
      [(_UITextChoiceAccelerationBubble *)self dismissWithText:0];
    }
  }

  else
  {
    v18 = [(_UITextChoiceAccelerationBubble *)self sideButton];
    [v18 setState:0];

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v19 = [(_UITextChoiceAccelerationBubble *)self contentsView];
    v12 = [v19 arrangedSubviews];

    v20 = [v12 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v36;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v36 != v22)
          {
            objc_enumerationMutation(v12);
          }

          [*(*(&v35 + 1) + 8 * i) setState:0];
        }

        v21 = [v12 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v21);
    }
  }

LABEL_29:
}

- (void)removeFromSuperview
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = [(_UITextChoiceAccelerationBubble *)self anchorLeading];

  if (v3)
  {
    v4 = MEMORY[0x1E69977A0];
    v5 = [(_UITextChoiceAccelerationBubble *)self anchorLeading];
    v12[0] = v5;
    v6 = [(_UITextChoiceAccelerationBubble *)self anchorTop];
    v12[1] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
    [v4 deactivateConstraints:v7];

    [(_UITextChoiceAccelerationBubble *)self setReferenceRect:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  }

  v8 = [(_UITextChoiceAccelerationBubble *)self boundaryConstraints];

  if (v8)
  {
    v9 = MEMORY[0x1E69977A0];
    v10 = [(_UITextChoiceAccelerationBubble *)self boundaryConstraints];
    [v9 deactivateConstraints:v10];
  }

  v11.receiver = self;
  v11.super_class = _UITextChoiceAccelerationBubble;
  [(UIView *)&v11 removeFromSuperview];
}

- (void)cancelLightingEffect
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(_UITextChoiceAccelerationBubble *)self contentsView];
  v3 = [v2 arrangedSubviews];

  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) setLightingEffectEnabled:0 atPosition:&unk_1EFE30898];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)removeAnimated:(BOOL)a3 withDuration:(double)a4
{
  if (!self->_isDismissing)
  {
    v5 = a3;
    self->_isDismissing = 1;
    [(_UITextChoiceAccelerationBubble *)self cancelLightingEffect];
    if (v5)
    {
      v7[4] = self;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __63___UITextChoiceAccelerationBubble_removeAnimated_withDuration___block_invoke;
      v8[3] = &unk_1E70F3590;
      v8[4] = self;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __63___UITextChoiceAccelerationBubble_removeAnimated_withDuration___block_invoke_2;
      v7[3] = &unk_1E70F5AC0;
      [UIView animateWithDuration:v8 animations:v7 completion:a4];
    }

    else
    {
      [(UIView *)self setAlpha:0.0];
      [(_UITextChoiceAccelerationBubble *)self reset];
      self->_isDismissing = 0;
    }
  }
}

- (void)dismissWithCancel
{
  [(_UITextChoiceAccelerationBubble *)self setShouldRejectCandidate:1];
  v4 = [(_UITextChoiceAccelerationBubble *)self sideButton];
  v3 = [v4 textToUse];
  [(_UITextChoiceAccelerationBubble *)self dismissWithText:v3];
}

- (void)dismissWithRevert:(id)a3
{
  v4 = a3;
  [(_UITextChoiceAccelerationBubble *)self setShouldRejectCandidate:1];
  [(_UITextChoiceAccelerationBubble *)self dismissWithText:v4];
}

- (void)dismissWithCandidate:(id)a3
{
  v8 = a3;
  v5 = [(_UITextChoiceAccelerationBubble *)self promptStyle];
  if (v8)
  {
    v6 = [v8 candidate];
    selectedChoice = self->_selectedChoice;
    self->_selectedChoice = v6;

    objc_storeStrong(&self->_selectedCandidateChoice, a3);
  }

  else if (v5 != 3)
  {
    [(UIControl *)self cancelTrackingWithEvent:0];
  }

  [(_UITextChoiceAccelerationBubble *)self removeAnimated:1];
}

- (void)dismissWithText:(id)a3
{
  v7 = a3;
  v5 = [(_UITextChoiceAccelerationBubble *)self promptStyle];
  if (v7)
  {
    objc_storeStrong(&self->_selectedChoice, a3);
    selectedCandidateChoice = self->_selectedCandidateChoice;
    self->_selectedCandidateChoice = 0;
  }

  else if (v5 != 3)
  {
    [(UIControl *)self cancelTrackingWithEvent:0];
  }

  [(_UITextChoiceAccelerationBubble *)self removeAnimated:[(_UITextChoiceAccelerationBubble *)self promptStyle]!= 3];
}

- (int)textEffectsVisibilityLevel
{
  v2 = [(UIView *)self superview];
  v3 = [v2 textEffectsVisibilityLevel];

  if (v3 <= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

- (_UITextChoiceAccelerationDictationPromptDelegate)dictationPromptDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_dictationPromptDelegate);

  return WeakRetained;
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

- (UIView)parentView
{
  WeakRetained = objc_loadWeakRetained(&self->_parentView);

  return WeakRetained;
}

- (_NSRange)deltaRange
{
  p_deltaRange = &self->_deltaRange;
  location = self->_deltaRange.location;
  length = p_deltaRange->length;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)originalSelectedRange
{
  p_originalSelectedRange = &self->_originalSelectedRange;
  location = self->_originalSelectedRange.location;
  length = p_originalSelectedRange->length;
  result.length = length;
  result.location = location;
  return result;
}

@end