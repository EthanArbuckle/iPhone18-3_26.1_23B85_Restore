@interface _UITextChoiceAccelerationBubble
- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (BOOL)promptWillCollideWithKeyboard:(CGRect)keyboard;
- (BOOL)showingAutocorrectHighlight;
- (BOOL)usingRTLInputMode;
- (CGRect)referenceRect;
- (UIView)parentView;
- (_NSRange)deltaRange;
- (_NSRange)originalSelectedRange;
- (_UITextChoiceAccelerationBubble)initWithFrame:(CGRect)frame;
- (_UITextChoiceAccelerationDictationPromptDelegate)dictationPromptDelegate;
- (id)backgroundImageView;
- (id)dictationHighlightViewForPoint:(CGPoint)point withEvent:(id)event;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)optionForPoint:(CGPoint)point withEvent:(id)event;
- (id)squaredOffBubblePathInRect:(CGRect)rect;
- (id)squaredPathInRect:(CGRect)rect;
- (id)textOptionWithText:(id)text type:(int64_t)type;
- (int)textEffectsVisibilityLevel;
- (void)anchorToTextIfNeeded;
- (void)cancelLightingEffect;
- (void)dismissWithCancel;
- (void)dismissWithCandidate:(id)candidate;
- (void)dismissWithRevert:(id)revert;
- (void)dismissWithText:(id)text;
- (void)endTrackingWithTouch:(id)touch withEvent:(id)event;
- (void)hideForNow;
- (void)layoutSubviews;
- (void)removeAnimated:(BOOL)animated withDuration:(double)duration;
- (void)removeFromSuperview;
- (void)reset;
- (void)showChoices:(BOOL)choices;
- (void)showTextHighlightView:(BOOL)view;
- (void)updateBubbleShapeInRect:(CGRect)rect withCornerRadius:(double)radius forSquaredOffBubble:(BOOL)bubble;
- (void)updateButtonForType:(int64_t)type;
- (void)updateButtonName:(id)name placement:(int64_t)placement originalText:(id)text;
- (void)updateForSingleWord:(id)word textAnchorRect:(id)rect inTextView:(id)view parentView:(id)parentView highlightColor:(id)color;
- (void)updateSelfWithRect:(CGRect)rect;
- (void)updateTextAnchorForParentView:(id)view;
- (void)updateTextBoxHighlightForRect:(id)rect inTextView:(id)view parentView:(id)parentView highlightColor:(id)color;
- (void)updateTextHighlightViewWithColor:(id)color convertedRect:(CGRect)rect;
- (void)updateViewForOptions:(id)options;
- (void)updateWithChoices:(id)choices fromParentView:(id)view referenceTextView:(id)textView presentedFromRect:(id)rect textHighlightColor:(id)color;
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
  contentsView = [(_UITextChoiceAccelerationBubble *)self contentsView];
  arrangedSubviews = [contentsView arrangedSubviews];

  v6 = [arrangedSubviews countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(arrangedSubviews);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        [v10 setLightingEffectEnabled:0 atPosition:&unk_1EFE30898];
        [v10 setState:0];
      }

      v7 = [arrangedSubviews countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  sideButton = [(_UITextChoiceAccelerationBubble *)self sideButton];
  [sideButton setState:0];

  [(_UITextChoiceAccelerationBubble *)self setCandidate:0];
  selectedChoice = self->_selectedChoice;
  self->_selectedChoice = 0;

  selectedCandidateChoice = self->_selectedCandidateChoice;
  self->_selectedCandidateChoice = 0;
}

- (_UITextChoiceAccelerationBubble)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = _UITextChoiceAccelerationBubble;
  v3 = [(UIControl *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_UITextChoiceAccelerationBubble *)v4 setReferenceRect:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
    v5 = +[UIColor clearColor];
    [(UIView *)v4 setBackgroundColor:v5];

    [(UIView *)v4 setClipsToBounds:0];
    [(_UITextChoiceAccelerationBubble *)v4 setNeedsRTLCheck:1];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel_inputModeDidChange_ name:@"UITextInputCurrentInputModeDidChangeNotification" object:0];
  }

  return v4;
}

- (void)updateTextAnchorForParentView:(id)view
{
  v58[2] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  if (viewCopy)
  {
    parentView = [(_UITextChoiceAccelerationBubble *)self parentView];
    v6 = parentView;
    if (parentView != viewCopy)
    {

LABEL_4:
      superview = [(UIView *)self superview];

      if (superview != viewCopy)
      {
        [(_UITextChoiceAccelerationBubble *)self removeFromSuperview];
        [viewCopy addSubview:self];
      }

      [(_UITextChoiceAccelerationBubble *)self setParentView:viewCopy];
      [(_UITextChoiceAccelerationBubble *)self anchorToTextIfNeeded];
      anchorLeading = [(_UITextChoiceAccelerationBubble *)self anchorLeading];
      isActive = [anchorLeading isActive];

      if (isActive)
      {
        v10 = MEMORY[0x1E69977A0];
        anchorLeading2 = [(_UITextChoiceAccelerationBubble *)self anchorLeading];
        v58[0] = anchorLeading2;
        anchorTop = [(_UITextChoiceAccelerationBubble *)self anchorTop];
        v58[1] = anchorTop;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:2];
        [v10 deactivateConstraints:v13];
      }

      textAnchor = [(_UITextChoiceAccelerationBubble *)self textAnchor];
      leftAnchor = [textAnchor leftAnchor];
      leftAnchor2 = [viewCopy leftAnchor];
      v17 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:0.0];
      [(_UITextChoiceAccelerationBubble *)self setAnchorLeading:v17];

      textAnchor2 = [(_UITextChoiceAccelerationBubble *)self textAnchor];
      topAnchor = [textAnchor2 topAnchor];
      topAnchor2 = [viewCopy topAnchor];
      v21 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
      [(_UITextChoiceAccelerationBubble *)self setAnchorTop:v21];

      v22 = MEMORY[0x1E69977A0];
      anchorLeading3 = [(_UITextChoiceAccelerationBubble *)self anchorLeading];
      v57[0] = anchorLeading3;
      anchorTop2 = [(_UITextChoiceAccelerationBubble *)self anchorTop];
      v57[1] = anchorTop2;
      v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:2];
      [v22 activateConstraints:v25];

      boundaryConstraints = [(_UITextChoiceAccelerationBubble *)self boundaryConstraints];

      if (boundaryConstraints)
      {
        v27 = MEMORY[0x1E69977A0];
        boundaryConstraints2 = [(_UITextChoiceAccelerationBubble *)self boundaryConstraints];
        [v27 deactivateConstraints:boundaryConstraints2];
      }

      leftAnchor3 = [(UIView *)self leftAnchor];
      _window = [viewCopy _window];
      leftAnchor4 = [_window leftAnchor];
      v32 = [leftAnchor3 constraintGreaterThanOrEqualToAnchor:leftAnchor4 constant:10.0];
      v56[0] = v32;
      [viewCopy _window];
      v33 = v54 = viewCopy;
      rightAnchor = [v33 rightAnchor];
      rightAnchor2 = [(UIView *)self rightAnchor];
      v36 = [rightAnchor constraintGreaterThanOrEqualToAnchor:rightAnchor2 constant:10.0];
      v56[1] = v36;
      v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:2];
      [(_UITextChoiceAccelerationBubble *)self setBoundaryConstraints:v37];

      viewCopy = v54;
      v38 = MEMORY[0x1E69977A0];
      boundaryConstraints3 = [(_UITextChoiceAccelerationBubble *)self boundaryConstraints];
      [v38 activateConstraints:boundaryConstraints3];
LABEL_11:

      goto LABEL_12;
    }

    anchorLeading4 = [(_UITextChoiceAccelerationBubble *)self anchorLeading];

    if (!anchorLeading4)
    {
      goto LABEL_4;
    }

    anchorLeading5 = [(_UITextChoiceAccelerationBubble *)self anchorLeading];
    if (anchorLeading5)
    {
      v42 = anchorLeading5;
      anchorLeading6 = [(_UITextChoiceAccelerationBubble *)self anchorLeading];
      isActive2 = [anchorLeading6 isActive];

      if ((isActive2 & 1) == 0)
      {
        parentView2 = [(_UITextChoiceAccelerationBubble *)self parentView];

        if (parentView2 == viewCopy)
        {
          superview2 = [(UIView *)self superview];
          parentView3 = [(_UITextChoiceAccelerationBubble *)self parentView];

          if (superview2 != parentView3)
          {
            parentView4 = [(_UITextChoiceAccelerationBubble *)self parentView];
            [parentView4 addSubview:self];
          }

          v49 = MEMORY[0x1E69977A0];
          boundaryConstraints3 = [(_UITextChoiceAccelerationBubble *)self boundaryConstraints];
          anchorLeading7 = [(_UITextChoiceAccelerationBubble *)self anchorLeading];
          v55[0] = anchorLeading7;
          anchorTop3 = [(_UITextChoiceAccelerationBubble *)self anchorTop];
          v55[1] = anchorTop3;
          v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:2];
          v53 = [boundaryConstraints3 arrayByAddingObjectsFromArray:v52];
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
  textAnchor = [(_UITextChoiceAccelerationBubble *)self textAnchor];

  if (!textAnchor)
  {
    v4 = objc_alloc_init(UILayoutGuide);
    [(_UITextChoiceAccelerationBubble *)self setTextAnchor:v4];

    textAnchor2 = [(_UITextChoiceAccelerationBubble *)self textAnchor];
    [(UIView *)self addLayoutGuide:textAnchor2];

    textAnchor3 = [(_UITextChoiceAccelerationBubble *)self textAnchor];
    widthAnchor = [textAnchor3 widthAnchor];
    v8 = [widthAnchor constraintEqualToConstant:0.0];
    [(_UITextChoiceAccelerationBubble *)self setAnchorWidth:v8];

    textAnchor4 = [(_UITextChoiceAccelerationBubble *)self textAnchor];
    heightAnchor = [textAnchor4 heightAnchor];
    v11 = [heightAnchor constraintEqualToConstant:1.0];
    [(_UITextChoiceAccelerationBubble *)self setAnchorHeight:v11];

    v12 = MEMORY[0x1E69977A0];
    anchorHeight = [(_UITextChoiceAccelerationBubble *)self anchorHeight];
    v105[0] = anchorHeight;
    anchorWidth = [(_UITextChoiceAccelerationBubble *)self anchorWidth];
    v105[1] = anchorWidth;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v105 count:2];
    [v12 activateConstraints:v15];
  }

  backgroundView = [(_UITextChoiceAccelerationBubble *)self backgroundView];
  if (!backgroundView || (v17 = backgroundView, [(_UITextChoiceAccelerationBubble *)self contentsView], v18 = objc_claimAutoreleasedReturnValue(), v18, v17, !v18))
  {
    backingScrollView = [(_UITextChoiceAccelerationBubble *)self backingScrollView];
    [backingScrollView removeFromSuperview];

    backgroundView2 = [(_UITextChoiceAccelerationBubble *)self backgroundView];
    [backgroundView2 removeFromSuperview];

    contentsView = [(_UITextChoiceAccelerationBubble *)self contentsView];
    [contentsView removeFromSuperview];

    backgroundImageView = [(_UITextChoiceAccelerationBubble *)self backgroundImageView];
    [(_UITextChoiceAccelerationBubble *)self setBackgroundView:backgroundImageView];

    backgroundView3 = [(_UITextChoiceAccelerationBubble *)self backgroundView];
    [backgroundView3 setTranslatesAutoresizingMaskIntoConstraints:0];

    backgroundView4 = [(_UITextChoiceAccelerationBubble *)self backgroundView];
    [(UIView *)self addSubview:backgroundView4];

    v25 = objc_alloc_init(UIScrollView);
    [(_UITextChoiceAccelerationBubble *)self setBackingScrollView:v25];

    backingScrollView2 = [(_UITextChoiceAccelerationBubble *)self backingScrollView];
    [backingScrollView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    backgroundView5 = [(_UITextChoiceAccelerationBubble *)self backgroundView];
    contentView = [backgroundView5 contentView];
    backingScrollView3 = [(_UITextChoiceAccelerationBubble *)self backingScrollView];
    [contentView addSubview:backingScrollView3];

    v30 = [UIStackView alloc];
    v31 = [(_UITextChoiceAccelerationBubble *)self textOptionWithText:&stru_1EFB14550 type:2];
    v104 = v31;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v104 count:1];
    v33 = [(UIStackView *)v30 initWithArrangedSubviews:v32];
    [(_UITextChoiceAccelerationBubble *)self setContentsView:v33];

    contentsView2 = [(_UITextChoiceAccelerationBubble *)self contentsView];
    [contentsView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    contentsView3 = [(_UITextChoiceAccelerationBubble *)self contentsView];
    [contentsView3 setAxis:0];

    contentsView4 = [(_UITextChoiceAccelerationBubble *)self contentsView];
    [contentsView4 setAlignment:5];

    contentsView5 = [(_UITextChoiceAccelerationBubble *)self contentsView];
    [contentsView5 setSpacing:0.0];

    backingScrollView4 = [(_UITextChoiceAccelerationBubble *)self backingScrollView];
    contentsView6 = [(_UITextChoiceAccelerationBubble *)self contentsView];
    [backingScrollView4 addSubview:contentsView6];

    textAnchor5 = [(_UITextChoiceAccelerationBubble *)self textAnchor];
    leadingAnchor = [textAnchor5 leadingAnchor];
    leadingAnchor2 = [(UIView *)self leadingAnchor];
    v43 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [(_UITextChoiceAccelerationBubble *)self setLeadingSpacing:v43];

    leadingSpacing = [(_UITextChoiceAccelerationBubble *)self leadingSpacing];
    LODWORD(v45) = 1132068864;
    [leadingSpacing setPriority:v45];

    backingScrollView5 = [(_UITextChoiceAccelerationBubble *)self backingScrollView];
    widthAnchor2 = [backingScrollView5 widthAnchor];
    contentsView7 = [(_UITextChoiceAccelerationBubble *)self contentsView];
    widthAnchor3 = [contentsView7 widthAnchor];
    v50 = [widthAnchor2 constraintEqualToAnchor:widthAnchor3 constant:0.0];

    LODWORD(v51) = 1144750080;
    v75 = v50;
    [v50 setPriority:v51];
    v82 = MEMORY[0x1E69977A0];
    backgroundView6 = [(_UITextChoiceAccelerationBubble *)self backgroundView];
    leadingAnchor3 = [backgroundView6 leadingAnchor];
    leadingAnchor4 = [(UIView *)self leadingAnchor];
    v99 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v103[0] = v99;
    trailingAnchor = [(UIView *)self trailingAnchor];
    backgroundView7 = [(_UITextChoiceAccelerationBubble *)self backgroundView];
    trailingAnchor2 = [backgroundView7 trailingAnchor];
    v95 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v103[1] = v95;
    backingScrollView6 = [(_UITextChoiceAccelerationBubble *)self backingScrollView];
    topAnchor = [backingScrollView6 topAnchor];
    backgroundView8 = [(_UITextChoiceAccelerationBubble *)self backgroundView];
    topAnchor2 = [backgroundView8 topAnchor];
    v90 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
    v103[2] = v90;
    backgroundView9 = [(_UITextChoiceAccelerationBubble *)self backgroundView];
    bottomAnchor = [backgroundView9 bottomAnchor];
    backingScrollView7 = [(_UITextChoiceAccelerationBubble *)self backingScrollView];
    bottomAnchor2 = [backingScrollView7 bottomAnchor];
    v85 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.0];
    v103[3] = v85;
    leadingSpacing2 = [(_UITextChoiceAccelerationBubble *)self leadingSpacing];
    v103[4] = leadingSpacing2;
    contentsView8 = [(_UITextChoiceAccelerationBubble *)self contentsView];
    topAnchor3 = [contentsView8 topAnchor];
    backingScrollView8 = [(_UITextChoiceAccelerationBubble *)self backingScrollView];
    contentLayoutGuide = [backingScrollView8 contentLayoutGuide];
    topAnchor4 = [contentLayoutGuide topAnchor];
    v77 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v103[5] = v77;
    contentsView9 = [(_UITextChoiceAccelerationBubble *)self contentsView];
    leadingAnchor5 = [contentsView9 leadingAnchor];
    backingScrollView9 = [(_UITextChoiceAccelerationBubble *)self backingScrollView];
    contentLayoutGuide2 = [backingScrollView9 contentLayoutGuide];
    leadingAnchor6 = [contentLayoutGuide2 leadingAnchor];
    v70 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    v103[6] = v70;
    backingScrollView10 = [(_UITextChoiceAccelerationBubble *)self backingScrollView];
    contentLayoutGuide3 = [backingScrollView10 contentLayoutGuide];
    bottomAnchor3 = [contentLayoutGuide3 bottomAnchor];
    contentsView10 = [(_UITextChoiceAccelerationBubble *)self contentsView];
    bottomAnchor4 = [contentsView10 bottomAnchor];
    v64 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v103[7] = v64;
    backingScrollView11 = [(_UITextChoiceAccelerationBubble *)self backingScrollView];
    contentLayoutGuide4 = [backingScrollView11 contentLayoutGuide];
    trailingAnchor3 = [contentLayoutGuide4 trailingAnchor];
    contentsView11 = [(_UITextChoiceAccelerationBubble *)self contentsView];
    trailingAnchor4 = [contentsView11 trailingAnchor];
    v55 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v103[8] = v55;
    backingScrollView12 = [(_UITextChoiceAccelerationBubble *)self backingScrollView];
    heightAnchor2 = [backingScrollView12 heightAnchor];
    contentsView12 = [(_UITextChoiceAccelerationBubble *)self contentsView];
    heightAnchor3 = [contentsView12 heightAnchor];
    v60 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3];
    v103[9] = v60;
    v103[10] = v50;
    v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:v103 count:11];
    [v82 activateConstraints:v61];
  }
}

- (void)updateSelfWithRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
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
      anchorLeading = [(_UITextChoiceAccelerationBubble *)self anchorLeading];
      [anchorLeading setConstant:x];

      anchorTop = [(_UITextChoiceAccelerationBubble *)self anchorTop];
      [anchorTop setConstant:y];

      anchorWidth = [(_UITextChoiceAccelerationBubble *)self anchorWidth];
      [anchorWidth setConstant:width];

      anchorHeight = [(_UITextChoiceAccelerationBubble *)self anchorHeight];
      [anchorHeight setConstant:height];

      if ([(_UITextChoiceAccelerationBubble *)self promptWillCollideWithKeyboard:x, y, width, height]|| [(_UITextChoiceAccelerationBubble *)self promptStyle]== 3)
      {
        belowTextConstraints = [(_UITextChoiceAccelerationBubble *)self belowTextConstraints];
        firstObject = [belowTextConstraints firstObject];
        isActive = [firstObject isActive];

        if (isActive)
        {
          v15 = MEMORY[0x1E69977A0];
          belowTextConstraints2 = [(_UITextChoiceAccelerationBubble *)self belowTextConstraints];
          [v15 deactivateConstraints:belowTextConstraints2];
        }

        aboveTextConstraints = [(_UITextChoiceAccelerationBubble *)self aboveTextConstraints];

        if (!aboveTextConstraints)
        {
          backgroundView = [(_UITextChoiceAccelerationBubble *)self backgroundView];
          topAnchor = [backgroundView topAnchor];
          topAnchor2 = [(UIView *)self topAnchor];
          v53 = [topAnchor constraintEqualToAnchor:topAnchor2];
          v62[0] = v53;
          textAnchor = [(_UITextChoiceAccelerationBubble *)self textAnchor];
          topAnchor3 = [textAnchor topAnchor];
          backgroundView2 = [(_UITextChoiceAccelerationBubble *)self backgroundView];
          bottomAnchor = [backgroundView2 bottomAnchor];
          v21 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
          v62[1] = v21;
          bottomAnchor2 = [(UIView *)self bottomAnchor];
          textAnchor2 = [(_UITextChoiceAccelerationBubble *)self textAnchor];
          bottomAnchor3 = [textAnchor2 bottomAnchor];
          v25 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
          v62[2] = v25;
          v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:3];
          [(_UITextChoiceAccelerationBubble *)self setAboveTextConstraints:v26];
        }

        aboveTextConstraints2 = [(_UITextChoiceAccelerationBubble *)self aboveTextConstraints];
        firstObject2 = [aboveTextConstraints2 firstObject];
        isActive2 = [firstObject2 isActive];

        if ((isActive2 & 1) == 0)
        {
          v30 = MEMORY[0x1E69977A0];
          aboveTextConstraints3 = [(_UITextChoiceAccelerationBubble *)self aboveTextConstraints];
LABEL_17:
          v50 = aboveTextConstraints3;
          [v30 activateConstraints:aboveTextConstraints3];
        }
      }

      else
      {
        belowTextConstraints3 = [(_UITextChoiceAccelerationBubble *)self belowTextConstraints];

        if (!belowTextConstraints3)
        {
          backgroundView3 = [(_UITextChoiceAccelerationBubble *)self backgroundView];
          topAnchor4 = [backgroundView3 topAnchor];
          textAnchor3 = [(_UITextChoiceAccelerationBubble *)self textAnchor];
          bottomAnchor4 = [textAnchor3 bottomAnchor];
          v52 = [topAnchor4 constraintEqualToAnchor:bottomAnchor4 constant:0.0];
          v61[0] = v52;
          textAnchor4 = [(_UITextChoiceAccelerationBubble *)self textAnchor];
          topAnchor5 = [textAnchor4 topAnchor];
          topAnchor6 = [(UIView *)self topAnchor];
          v36 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
          v61[1] = v36;
          bottomAnchor5 = [(UIView *)self bottomAnchor];
          backgroundView4 = [(_UITextChoiceAccelerationBubble *)self backgroundView];
          bottomAnchor6 = [backgroundView4 bottomAnchor];
          v40 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
          v61[2] = v40;
          v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:3];
          [(_UITextChoiceAccelerationBubble *)self setBelowTextConstraints:v41];
        }

        aboveTextConstraints4 = [(_UITextChoiceAccelerationBubble *)self aboveTextConstraints];
        firstObject3 = [aboveTextConstraints4 firstObject];
        isActive3 = [firstObject3 isActive];

        if (isActive3)
        {
          v45 = MEMORY[0x1E69977A0];
          aboveTextConstraints5 = [(_UITextChoiceAccelerationBubble *)self aboveTextConstraints];
          [v45 deactivateConstraints:aboveTextConstraints5];
        }

        belowTextConstraints4 = [(_UITextChoiceAccelerationBubble *)self belowTextConstraints];
        firstObject4 = [belowTextConstraints4 firstObject];
        isActive4 = [firstObject4 isActive];

        if ((isActive4 & 1) == 0)
        {
          v30 = MEMORY[0x1E69977A0];
          aboveTextConstraints3 = [(_UITextChoiceAccelerationBubble *)self belowTextConstraints];
          goto LABEL_17;
        }
      }
    }
  }
}

- (BOOL)promptWillCollideWithKeyboard:(CGRect)keyboard
{
  height = keyboard.size.height;
  width = keyboard.size.width;
  y = keyboard.origin.y;
  x = keyboard.origin.x;
  backgroundView = [(_UITextChoiceAccelerationBubble *)self backgroundView];
  [backgroundView bounds];
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
  _window = [(UIView *)self _window];
  superview = [(UIView *)self superview];
  [_window convertRect:superview fromView:{x, y, width, v12}];
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

  window = [(UIView *)self window];
  safeAreaLayoutGuide = [window safeAreaLayoutGuide];
  [safeAreaLayoutGuide layoutFrame];
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
  window2 = [(UIView *)self window];
  [window2 safeAreaInsets];
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

- (void)showChoices:(BOOL)choices
{
  choicesCopy = choices;
  backgroundView = [(_UITextChoiceAccelerationBubble *)self backgroundView];
  v6 = backgroundView;
  if (choicesCopy)
  {
    [backgroundView setHidden:0];

    contentsView = [(_UITextChoiceAccelerationBubble *)self contentsView];
    [contentsView setHidden:0];

    backgroundMaskLayer = [(_UITextChoiceAccelerationBubble *)self backgroundMaskLayer];
    [backgroundMaskLayer setHidden:0];

    _inheritedRenderConfig = [(UIView *)self _inheritedRenderConfig];
    colorAdaptiveBackground = [_inheritedRenderConfig colorAdaptiveBackground];

    if (colorAdaptiveBackground)
    {
      return;
    }

    v11 = +[UIColor systemBlackColor];
    cgColor = [v11 cgColor];
    layer = [(UIView *)self layer];
    [layer setShadowColor:cgColor];

    layer2 = [(UIView *)self layer];
    [layer2 setShadowRadius:9.0];

    layer3 = [(UIView *)self layer];
    [layer3 setShadowOffset:{0.0, 3.0}];

    v16 = 0.25;
  }

  else
  {
    [backgroundView setHidden:1];

    contentsView2 = [(_UITextChoiceAccelerationBubble *)self contentsView];
    [contentsView2 setHidden:1];

    backgroundMaskLayer2 = [(_UITextChoiceAccelerationBubble *)self backgroundMaskLayer];
    [backgroundMaskLayer2 setHidden:1];

    _inheritedRenderConfig2 = [(UIView *)self _inheritedRenderConfig];
    colorAdaptiveBackground2 = [_inheritedRenderConfig2 colorAdaptiveBackground];

    v16 = 0.0;
    if (colorAdaptiveBackground2)
    {
      return;
    }
  }

  layer4 = [(UIView *)self layer];
  *&v21 = v16;
  [layer4 setShadowOpacity:v21];
}

- (void)updateForSingleWord:(id)word textAnchorRect:(id)rect inTextView:(id)view parentView:(id)parentView highlightColor:(id)color
{
  v41[1] = *MEMORY[0x1E69E9840];
  wordCopy = word;
  viewCopy = view;
  parentViewCopy = parentView;
  colorCopy = color;
  rectCopy = rect;
  if (-[_UITextChoiceAccelerationBubble needsRTLCheck](self, "needsRTLCheck") || (-[_UITextChoiceAccelerationBubble parentView](self, "parentView"), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v17 isEqual:parentViewCopy], v17, (v18 & 1) == 0))
  {
    usingRTLInputMode = [(_UITextChoiceAccelerationBubble *)self usingRTLInputMode];
    traitOverrides = [(UIView *)self traitOverrides];
    [traitOverrides setLayoutDirection:usingRTLInputMode];

    [(_UITextChoiceAccelerationBubble *)self setNeedsRTLCheck:0];
  }

  [(_UITextChoiceAccelerationBubble *)self updateTextAnchorForParentView:parentViewCopy];
  [rectCopy rect];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  if (!+[UIKeyboard isKeyboardProcess])
  {
    [parentViewCopy convertRect:viewCopy fromView:{v22, v24, v26, v28}];
    v22 = v29;
    v24 = v30;
    v26 = v31;
    v28 = v32;
  }

  [(_UITextChoiceAccelerationBubble *)self updateTextHighlightViewWithColor:colorCopy convertedRect:v22, v24, v26, v28];
  contentsView = [(_UITextChoiceAccelerationBubble *)self contentsView];
  arrangedSubviews = [contentsView arrangedSubviews];
  v35 = [arrangedSubviews count];

  if (v35 == 1)
  {
    contentsView2 = [(_UITextChoiceAccelerationBubble *)self contentsView];
    arrangedSubviews2 = [contentsView2 arrangedSubviews];
    v38 = [arrangedSubviews2 objectAtIndex:0];

    [v38 updateText:wordCopy type:3];
  }

  else
  {
    v41[0] = wordCopy;
    v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:1];
    v40 = _candidatesChoicesFromTextChoices(v39, 0);
    [(_UITextChoiceAccelerationBubble *)self updateViewForOptions:v40];
  }
}

- (void)updateTextBoxHighlightForRect:(id)rect inTextView:(id)view parentView:(id)parentView highlightColor:(id)color
{
  viewCopy = view;
  parentViewCopy = parentView;
  colorCopy = color;
  rectCopy = rect;
  [(_UITextChoiceAccelerationBubble *)self updateTextAnchorForParentView:parentViewCopy];
  [rectCopy rect];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  if (!+[UIKeyboard isKeyboardProcess])
  {
    [parentViewCopy convertRect:viewCopy fromView:{v14, v16, v18, v20}];
    v14 = v21;
    v16 = v22;
    v18 = v23;
    v20 = v24;
  }

  [(_UITextChoiceAccelerationBubble *)self updateTextHighlightViewWithColor:colorCopy convertedRect:v14, v16, v18, v20];
}

- (void)updateTextHighlightViewWithColor:(id)color convertedRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  colorCopy = color;
  [(_UITextChoiceAccelerationBubble *)self updateSelfWithRect:x, y, width, height];
  [(_UITextChoiceAccelerationBubble *)self showTextHighlightView:1];
  [(UIView *)self setAlpha:1.0];
  textHighlightView = [(_UITextChoiceAccelerationBubble *)self textHighlightView];
  [textHighlightView setBackgroundColor:colorCopy];
}

- (void)hideForNow
{
  textHighlightView = [(_UITextChoiceAccelerationBubble *)self textHighlightView];
  isHidden = [textHighlightView isHidden];

  if ((isHidden & 1) == 0)
  {
    [(_UITextChoiceAccelerationBubble *)self showTextHighlightView:0];

    [(UIView *)self setAlpha:0.0];
  }
}

- (void)updateWithChoices:(id)choices fromParentView:(id)view referenceTextView:(id)textView presentedFromRect:(id)rect textHighlightColor:(id)color
{
  viewCopy = view;
  textViewCopy = textView;
  rectCopy = rect;
  colorCopy = color;
  choicesCopy = choices;
  firstObject = [choicesCopy firstObject];
  label = [firstObject label];

  LODWORD(firstObject) = [label _isNaturallyRTL];
  usingRTLInputMode = [(_UITextChoiceAccelerationBubble *)self usingRTLInputMode];
  traitOverrides = [(UIView *)self traitOverrides];
  [traitOverrides setLayoutDirection:firstObject];

  [(_UITextChoiceAccelerationBubble *)self setNeedsRTLCheck:firstObject ^ usingRTLInputMode];
  [(_UITextChoiceAccelerationBubble *)self updateTextAnchorForParentView:viewCopy];
  [(UIView *)self setAlpha:1.0];
  [(_UITextChoiceAccelerationBubble *)self showChoices:1];
  [(_UITextChoiceAccelerationBubble *)self showTextHighlightView:colorCopy != 0];
  if (colorCopy)
  {
    v20 = [colorCopy colorWithAlphaComponent:0.2];
    textHighlightView = [(_UITextChoiceAccelerationBubble *)self textHighlightView];
    [textHighlightView setBackgroundColor:colorCopy];

    [(_UITextChoiceAccelerationBubble *)self setOptionalTintColor:colorCopy];
    dictationGlowEffect = [(_UITextChoiceAccelerationBubble *)self dictationGlowEffect];
    [dictationGlowEffect setTintColor:v20];

    dictationGlowEffect2 = [(_UITextChoiceAccelerationBubble *)self dictationGlowEffect];
    [dictationGlowEffect2 setPulsing:1];
  }

  [rectCopy rect];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  if (!+[UIKeyboard isKeyboardProcess])
  {
    [viewCopy convertRect:textViewCopy fromView:{v25, v27, v29, v31}];
    v25 = v32;
    v27 = v33;
    v29 = v34;
    v31 = v35;
  }

  [(_UITextChoiceAccelerationBubble *)self updateSelfWithRect:v25, v27, v29, v31];
  [(_UITextChoiceAccelerationBubble *)self setShouldRejectCandidate:0];
  [(_UITextChoiceAccelerationBubble *)self updateViewForOptions:choicesCopy];

  [(UIView *)self layoutIfNeeded];
  textHighlightView2 = [(_UITextChoiceAccelerationBubble *)self textHighlightView];
  [textHighlightView2 bounds];
  v38 = v37 / 4.75;
  dictationGlowEffect3 = [(_UITextChoiceAccelerationBubble *)self dictationGlowEffect];
  [dictationGlowEffect3 setBlurRadius:v38];
}

- (void)updateViewForOptions:(id)options
{
  optionsCopy = options;
  contentsView = [(_UITextChoiceAccelerationBubble *)self contentsView];
  arrangedSubviews = [contentsView arrangedSubviews];
  firstObject = [arrangedSubviews firstObject];

  firstObject2 = [optionsCopy firstObject];
  v48 = firstObject2;
  v49 = firstObject;
  if ([firstObject2 slotID])
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

    else if (_candidateSourceIsSmartReply(firstObject2))
    {
      v9 = 7;
    }

    else if ([optionsCopy count] >= 2)
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
  v10 = [optionsCopy count];
  contentsView2 = [(_UITextChoiceAccelerationBubble *)self contentsView];
  arrangedSubviews2 = [contentsView2 arrangedSubviews];
  v13 = [arrangedSubviews2 count];

  if (v10 >= v13)
  {
    if ([optionsCopy count])
    {
      v29 = 0;
      do
      {
        v30 = [optionsCopy objectAtIndexedSubscript:v29];
        label = [v30 label];
        v32 = v9;
        if (v9 == 2)
        {
          if (v51[2](v51, label))
          {
            v32 = 4;
          }

          else
          {
            v32 = 2;
          }
        }

        contentsView3 = [(_UITextChoiceAccelerationBubble *)self contentsView];
        arrangedSubviews3 = [contentsView3 arrangedSubviews];
        v35 = [arrangedSubviews3 count];

        if (v29 >= v35)
        {
          v38 = objc_alloc_init(_UITextOption);
          contentsView4 = [(_UITextChoiceAccelerationBubble *)self contentsView];
          [contentsView4 addArrangedSubview:v38];
        }

        else
        {
          contentsView4 = [(_UITextChoiceAccelerationBubble *)self contentsView];
          arrangedSubviews4 = [contentsView4 arrangedSubviews];
          v38 = [arrangedSubviews4 objectAtIndex:v29];
        }

        [(_UITextChoiceAccelerationBubble *)self secureCandidateHeight];
        [(_UITextOption *)v38 updateSourceCandidate:v30 secureCandidateHeight:?];
        [(_UITextOption *)v38 updateText:label type:v32];
        -[_UITextOption showSeparator:](v38, "showSeparator:", v29 < [optionsCopy count] - 1);
        [(_UITextOption *)v38 setLightingEffectEnabled:v32 == 7 atPosition:v29];

        ++v29;
      }

      while (v29 < [optionsCopy count]);
    }
  }

  else
  {
    contentsView5 = [(_UITextChoiceAccelerationBubble *)self contentsView];
    arrangedSubviews5 = [contentsView5 arrangedSubviews];
    v16 = [arrangedSubviews5 count];
    v50 = v16 - [optionsCopy count];

    if ([optionsCopy count])
    {
      v17 = 0;
      do
      {
        contentsView6 = [(_UITextChoiceAccelerationBubble *)self contentsView];
        arrangedSubviews6 = [contentsView6 arrangedSubviews];
        v20 = [arrangedSubviews6 objectAtIndex:v17];

        v21 = [optionsCopy objectAtIndexedSubscript:v17];
        label2 = [v21 label];
        v23 = v9;
        if (v9 == 2)
        {
          if (v51[2](v51, label2))
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
          contentsView7 = [(_UITextChoiceAccelerationBubble *)self contentsView];
          [contentsView7 addArrangedSubview:v20];
        }

        [(_UITextChoiceAccelerationBubble *)self secureCandidateHeight];
        [(_UITextOption *)v20 updateSourceCandidate:v21 secureCandidateHeight:?];
        [(_UITextOption *)v20 updateText:label2 type:v23];
        -[_UITextOption showSeparator:](v20, "showSeparator:", v17 < [optionsCopy count] - 1);
        [(_UITextOption *)v20 setLightingEffectEnabled:v23 == 7 atPosition:v17];

        ++v17;
      }

      while (v17 < [optionsCopy count]);
    }

    if (v50 >= 1)
    {
      v25 = v50 + 1;
      do
      {
        contentsView8 = [(_UITextChoiceAccelerationBubble *)self contentsView];
        arrangedSubviews7 = [contentsView8 arrangedSubviews];
        lastObject = [arrangedSubviews7 lastObject];
        [lastObject removeFromSuperview];

        --v25;
      }

      while (v25 > 1);
    }
  }

  backingScrollView = [(_UITextChoiceAccelerationBubble *)self backingScrollView];
  [backingScrollView setContentOffset:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];

  contentsView9 = [(_UITextChoiceAccelerationBubble *)self contentsView];
  arrangedSubviews8 = [contentsView9 arrangedSubviews];
  firstObject3 = [arrangedSubviews8 firstObject];

  viewForLastBaselineLayout = [firstObject3 viewForLastBaselineLayout];

  if (viewForLastBaselineLayout)
  {
    [firstObject3 leadingSpace];
    v45 = v44;
    leadingSpacing = [(_UITextChoiceAccelerationBubble *)self leadingSpacing];
    [leadingSpacing setConstant:v45];
  }

  contentsView10 = [(_UITextChoiceAccelerationBubble *)self contentsView];
  [contentsView10 layoutIfNeeded];
}

- (void)updateButtonName:(id)name placement:(int64_t)placement originalText:(id)text
{
  v132[2] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  textCopy = text;
  if (placement > 1)
  {
    if (placement == 2)
    {
      sideButton = [(_UITextChoiceAccelerationBubble *)self sideButton];

      if (sideButton)
      {
        sideButton2 = [(_UITextChoiceAccelerationBubble *)self sideButton];
        [sideButton2 updateText:nameCopy type:{-[_UITextChoiceAccelerationBubble buttonType](self, "buttonType")}];
      }

      else
      {
        buttonType = [(_UITextChoiceAccelerationBubble *)self buttonType];
        if (buttonType == 2)
        {
          v61 = 1;
        }

        else
        {
          v61 = buttonType;
        }

        v62 = [[_UITextOption alloc] initWithTitle:nameCopy type:v61];
        [(_UITextChoiceAccelerationBubble *)self setSideButton:v62];

        sideButton3 = [(_UITextChoiceAccelerationBubble *)self sideButton];
        [sideButton3 setTranslatesAutoresizingMaskIntoConstraints:0];

        sideButton2 = [(_UITextChoiceAccelerationBubble *)self backgroundView];
        contentView = [sideButton2 contentView];
        sideButton4 = [(_UITextChoiceAccelerationBubble *)self sideButton];
        [contentView addSubview:sideButton4];
      }

      v124 = textCopy;
      v125 = nameCopy;

      buttonConstraints = [(_UITextChoiceAccelerationBubble *)self buttonConstraints];

      if (buttonConstraints)
      {
        v67 = MEMORY[0x1E69977A0];
        buttonConstraints2 = [(_UITextChoiceAccelerationBubble *)self buttonConstraints];
        [v67 deactivateConstraints:buttonConstraints2];
      }

      sideButton5 = [(_UITextChoiceAccelerationBubble *)self sideButton];
      centerYAnchor = [sideButton5 centerYAnchor];
      contentsView = [(_UITextChoiceAccelerationBubble *)self contentsView];
      centerYAnchor2 = [contentsView centerYAnchor];
      v119 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      v130[0] = v119;
      sideButton6 = [(_UITextChoiceAccelerationBubble *)self sideButton];
      leadingAnchor = [sideButton6 leadingAnchor];
      backgroundView = [(_UITextChoiceAccelerationBubble *)self backgroundView];
      leadingAnchor2 = [backgroundView leadingAnchor];
      v126 = [leadingAnchor constraintEqualToAnchor:4.0 constant:?];
      v130[1] = v126;
      backingScrollView = [(_UITextChoiceAccelerationBubble *)self backingScrollView];
      leadingAnchor3 = [backingScrollView leadingAnchor];
      sideButton7 = [(_UITextChoiceAccelerationBubble *)self sideButton];
      trailingAnchor = [sideButton7 trailingAnchor];
      v72 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:0.0];
      v130[2] = v72;
      trailingAnchor2 = [(UIView *)self trailingAnchor];
      backingScrollView2 = [(_UITextChoiceAccelerationBubble *)self backingScrollView];
      trailingAnchor3 = [backingScrollView2 trailingAnchor];
      v76 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
      v130[3] = v76;
      v77 = [MEMORY[0x1E695DEC8] arrayWithObjects:v130 count:4];
      [(_UITextChoiceAccelerationBubble *)self setButtonConstraints:v77];

      backingScrollView4 = leadingAnchor;
      leadingAnchor5 = contentsView;

      leadingAnchor4 = centerYAnchor;
      backingScrollView3 = sideButton5;

      trailingAnchor4 = sideButton6;
      backgroundView3 = v119;

      v25 = centerYAnchor2;
      goto LABEL_44;
    }

    if (placement == 3)
    {
      sideButton8 = [(_UITextChoiceAccelerationBubble *)self sideButton];

      if (sideButton8)
      {
        sideButton9 = [(_UITextChoiceAccelerationBubble *)self sideButton];
        [sideButton9 updateText:nameCopy type:{-[_UITextChoiceAccelerationBubble buttonType](self, "buttonType")}];
      }

      else
      {
        buttonType2 = [(_UITextChoiceAccelerationBubble *)self buttonType];
        buttonType3 = [(_UITextChoiceAccelerationBubble *)self buttonType];
        v56 = [_UITextOption alloc];
        v57 = v56;
        if (buttonType3 == 5)
        {
          optionalTintColor = [(_UITextChoiceAccelerationBubble *)self optionalTintColor];
          v59 = [(_UITextOption *)v57 initWithTitle:nameCopy type:buttonType2 optionalTintColor:optionalTintColor];
          [(_UITextChoiceAccelerationBubble *)self setSideButton:v59];
        }

        else
        {
          optionalTintColor = [(_UITextOption *)v56 initWithTitle:nameCopy type:buttonType2];
          [(_UITextChoiceAccelerationBubble *)self setSideButton:optionalTintColor];
        }

        sideButton10 = [(_UITextChoiceAccelerationBubble *)self sideButton];
        [sideButton10 setTranslatesAutoresizingMaskIntoConstraints:0];

        sideButton9 = [(_UITextChoiceAccelerationBubble *)self backgroundView];
        contentView2 = [sideButton9 contentView];
        sideButton11 = [(_UITextChoiceAccelerationBubble *)self sideButton];
        [contentView2 addSubview:sideButton11];
      }

      v124 = textCopy;
      v125 = nameCopy;

      buttonConstraints3 = [(_UITextChoiceAccelerationBubble *)self buttonConstraints];

      if (buttonConstraints3)
      {
        v82 = MEMORY[0x1E69977A0];
        buttonConstraints4 = [(_UITextChoiceAccelerationBubble *)self buttonConstraints];
        [v82 deactivateConstraints:buttonConstraints4];
      }

      sideButton12 = [(_UITextChoiceAccelerationBubble *)self sideButton];
      centerXAnchor = [sideButton12 centerXAnchor];
      textHighlightView = [(_UITextChoiceAccelerationBubble *)self textHighlightView];
      centerXAnchor2 = [textHighlightView centerXAnchor];
      v120 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      v129[0] = v120;
      sideButton13 = [(_UITextChoiceAccelerationBubble *)self sideButton];
      topAnchor = [sideButton13 topAnchor];
      backgroundView = [(_UITextChoiceAccelerationBubble *)self backgroundView];
      leadingAnchor2 = [backgroundView topAnchor];
      v126 = [topAnchor constraintEqualToAnchor:?];
      v129[1] = v126;
      backingScrollView = [(_UITextChoiceAccelerationBubble *)self backgroundView];
      bottomAnchor = [backingScrollView bottomAnchor];
      sideButton14 = [(_UITextChoiceAccelerationBubble *)self sideButton];
      bottomAnchor2 = [sideButton14 bottomAnchor];
      v86 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v129[2] = v86;
      backgroundView2 = [(_UITextChoiceAccelerationBubble *)self backgroundView];
      widthAnchor = [backgroundView2 widthAnchor];
      sideButton15 = [(_UITextChoiceAccelerationBubble *)self sideButton];
      widthAnchor2 = [sideButton15 widthAnchor];
      v91 = [widthAnchor constraintGreaterThanOrEqualToAnchor:widthAnchor2];
      v129[3] = v91;
      v92 = [MEMORY[0x1E695DEC8] arrayWithObjects:v129 count:4];
      [(_UITextChoiceAccelerationBubble *)self setButtonConstraints:v92];

      leadingAnchor5 = textHighlightView;
      leadingAnchor4 = centerXAnchor;

      backingScrollView3 = sideButton12;
      backingScrollView4 = topAnchor;

      trailingAnchor4 = sideButton13;
      backgroundView3 = v120;

      v25 = centerXAnchor2;
      v53 = bottomAnchor;
      goto LABEL_43;
    }
  }

  else
  {
    if (!placement)
    {
      sideButton16 = [(_UITextChoiceAccelerationBubble *)self sideButton];
      superview = [sideButton16 superview];

      if (superview)
      {
        v16 = MEMORY[0x1E69977A0];
        buttonConstraints5 = [(_UITextChoiceAccelerationBubble *)self buttonConstraints];
        [v16 deactivateConstraints:buttonConstraints5];

        sideButton17 = [(_UITextChoiceAccelerationBubble *)self sideButton];
        [sideButton17 removeFromSuperview];
      }

      [(_UITextChoiceAccelerationBubble *)self setSideButton:0];
      buttonConstraints6 = [(_UITextChoiceAccelerationBubble *)self buttonConstraints];

      if (buttonConstraints6)
      {
        v20 = MEMORY[0x1E69977A0];
        buttonConstraints7 = [(_UITextChoiceAccelerationBubble *)self buttonConstraints];
        [v20 deactivateConstraints:buttonConstraints7];
      }

      backingScrollView3 = [(_UITextChoiceAccelerationBubble *)self backingScrollView];
      leadingAnchor4 = [backingScrollView3 leadingAnchor];
      leadingAnchor5 = [(UIView *)self leadingAnchor];
      v25 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
      v132[0] = v25;
      backgroundView3 = [(_UITextChoiceAccelerationBubble *)self backgroundView];
      trailingAnchor4 = [backgroundView3 trailingAnchor];
      backingScrollView4 = [(_UITextChoiceAccelerationBubble *)self backingScrollView];
      backgroundView = [backingScrollView4 trailingAnchor];
      leadingAnchor2 = [trailingAnchor4 constraintEqualToAnchor:?];
      v132[1] = leadingAnchor2;
      v126 = [MEMORY[0x1E695DEC8] arrayWithObjects:v132 count:2];
      [(_UITextChoiceAccelerationBubble *)self setButtonConstraints:?];
      goto LABEL_45;
    }

    if (placement == 1)
    {
      sideButton18 = [(_UITextChoiceAccelerationBubble *)self sideButton];

      if (sideButton18)
      {
        sideButton19 = [(_UITextChoiceAccelerationBubble *)self sideButton];
        [sideButton19 updateText:nameCopy type:{-[_UITextChoiceAccelerationBubble buttonType](self, "buttonType")}];
      }

      else
      {
        buttonType4 = [(_UITextChoiceAccelerationBubble *)self buttonType];
        if (buttonType4 == 2)
        {
          v32 = 1;
        }

        else
        {
          v32 = buttonType4;
        }

        v33 = [[_UITextOption alloc] initWithTitle:nameCopy type:v32];
        [(_UITextChoiceAccelerationBubble *)self setSideButton:v33];

        sideButton20 = [(_UITextChoiceAccelerationBubble *)self sideButton];
        [sideButton20 setTranslatesAutoresizingMaskIntoConstraints:0];

        sideButton19 = [(_UITextChoiceAccelerationBubble *)self backgroundView];
        contentView3 = [sideButton19 contentView];
        sideButton21 = [(_UITextChoiceAccelerationBubble *)self sideButton];
        [contentView3 addSubview:sideButton21];
      }

      if (![(_UITextChoiceAccelerationBubble *)self buttonType])
      {
        replacement = [(_UITextChoiceAccelerationBubble *)self replacement];
        if ([replacement isAutofillDoubleLineUI])
        {
          v38 = -12.0;
        }

        else
        {
          v38 = 0.0;
        }

        sideButton22 = [(_UITextChoiceAccelerationBubble *)self sideButton];
        symbolImageViewYConstraint = [sideButton22 symbolImageViewYConstraint];
        [symbolImageViewYConstraint setConstant:v38];
      }

      v124 = textCopy;
      v125 = nameCopy;
      buttonConstraints8 = [(_UITextChoiceAccelerationBubble *)self buttonConstraints];

      if (buttonConstraints8)
      {
        v42 = MEMORY[0x1E69977A0];
        buttonConstraints9 = [(_UITextChoiceAccelerationBubble *)self buttonConstraints];
        [v42 deactivateConstraints:buttonConstraints9];
      }

      sideButton23 = [(_UITextChoiceAccelerationBubble *)self sideButton];
      topAnchor2 = [sideButton23 topAnchor];
      backgroundView4 = [(_UITextChoiceAccelerationBubble *)self backgroundView];
      topAnchor3 = [backgroundView4 topAnchor];
      v118 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
      v131[0] = v118;
      backgroundView5 = [(_UITextChoiceAccelerationBubble *)self backgroundView];
      bottomAnchor3 = [backgroundView5 bottomAnchor];
      backgroundView = [(_UITextChoiceAccelerationBubble *)self sideButton];
      leadingAnchor2 = [backgroundView bottomAnchor];
      v126 = [bottomAnchor3 constraintEqualToAnchor:?];
      v131[1] = v126;
      backingScrollView = [(_UITextChoiceAccelerationBubble *)self backgroundView];
      trailingAnchor5 = [backingScrollView trailingAnchor];
      sideButton24 = [(_UITextChoiceAccelerationBubble *)self sideButton];
      trailingAnchor6 = [sideButton24 trailingAnchor];
      v97 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:4.0];
      v131[2] = v97;
      backingScrollView5 = [(_UITextChoiceAccelerationBubble *)self backingScrollView];
      leadingAnchor6 = [backingScrollView5 leadingAnchor];
      leadingAnchor7 = [(UIView *)self leadingAnchor];
      v46 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
      v131[3] = v46;
      sideButton25 = [(_UITextChoiceAccelerationBubble *)self sideButton];
      leadingAnchor8 = [sideButton25 leadingAnchor];
      backingScrollView6 = [(_UITextChoiceAccelerationBubble *)self backingScrollView];
      trailingAnchor7 = [backingScrollView6 trailingAnchor];
      v51 = [leadingAnchor8 constraintEqualToAnchor:trailingAnchor7 constant:0.0];
      v131[4] = v51;
      v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v131 count:5];
      [(_UITextChoiceAccelerationBubble *)self setButtonConstraints:v52];

      leadingAnchor5 = backgroundView4;
      leadingAnchor4 = topAnchor2;

      backingScrollView3 = sideButton23;
      v25 = topAnchor3;

      backingScrollView4 = bottomAnchor3;
      trailingAnchor4 = backgroundView5;

      backgroundView3 = v118;
      v53 = trailingAnchor5;
LABEL_43:

LABEL_44:
      textCopy = v124;
      nameCopy = v125;
LABEL_45:

      v93 = MEMORY[0x1E69977A0];
      buttonConstraints10 = [(_UITextChoiceAccelerationBubble *)self buttonConstraints];
      [v93 activateConstraints:buttonConstraints10];
    }
  }

  sideButton26 = [(_UITextChoiceAccelerationBubble *)self sideButton];
  [sideButton26 setOriginalText:textCopy];
}

- (void)updateButtonForType:(int64_t)type
{
  if ((type - 1) > 4)
  {
    v3 = 2;
  }

  else
  {
    v3 = qword_18A67B7C0[type - 1];
  }

  [(_UITextChoiceAccelerationBubble *)self setButtonType:v3];
}

- (void)layoutSubviews
{
  v19.receiver = self;
  v19.super_class = _UITextChoiceAccelerationBubble;
  [(UIView *)&v19 layoutSubviews];
  contentsView = [(_UITextChoiceAccelerationBubble *)self contentsView];
  arrangedSubviews = [contentsView arrangedSubviews];
  if ([arrangedSubviews count] == 1)
  {
    replacement = [(_UITextChoiceAccelerationBubble *)self replacement];
    v6 = _replacementSourceIsSmartReply(replacement) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  _inheritedRenderConfig = [(UIView *)self _inheritedRenderConfig];
  colorAdaptiveBackground = [_inheritedRenderConfig colorAdaptiveBackground];

  if (colorAdaptiveBackground)
  {
    backgroundView = [(_UITextChoiceAccelerationBubble *)self backgroundView];
    [backgroundView bounds];

    backgroundView2 = [(_UITextChoiceAccelerationBubble *)self backgroundView];
    [backgroundView2 bounds];
    [_UITextChoiceAccelerationBubble updateBubbleShapeInRect:"updateBubbleShapeInRect:withCornerRadius:forSquaredOffBubble:" withCornerRadius:0 forSquaredOffBubble:?];
  }

  else
  {
    replacement2 = [(_UITextChoiceAccelerationBubble *)self replacement];
    isAutofillDoubleLineUI = [replacement2 isAutofillDoubleLineUI];

    backgroundView3 = [(_UITextChoiceAccelerationBubble *)self backgroundView];
    [backgroundView3 bounds];
    if (isAutofillDoubleLineUI)
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

    backgroundView2 = v14;

    cGPath = [backgroundView2 CGPath];
    backgroundMaskLayer = [(_UITextChoiceAccelerationBubble *)self backgroundMaskLayer];
    [backgroundMaskLayer setShadowPath:cGPath];

    cGPath2 = [backgroundView2 CGPath];
    backgroundMaskLayer2 = [(_UITextChoiceAccelerationBubble *)self backgroundMaskLayer];
    [backgroundMaskLayer2 setPath:cGPath2];
  }
}

- (BOOL)usingRTLInputMode
{
  v2 = +[UIKeyboardInputModeController sharedInputModeController];
  currentInputMode = [v2 currentInputMode];
  isDefaultRightToLeft = [currentInputMode isDefaultRightToLeft];

  return isDefaultRightToLeft;
}

- (id)textOptionWithText:(id)text type:(int64_t)type
{
  textCopy = text;
  v6 = [[_UITextOption alloc] initWithTitle:textCopy type:type];

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
    _inheritedRenderConfig = [(UIView *)self _inheritedRenderConfig];
    colorAdaptiveBackground = [_inheritedRenderConfig colorAdaptiveBackground];

    v6 = [UIVisualEffectView alloc];
    if (colorAdaptiveBackground)
    {
      [(_UITextChoiceAccelerationBubble *)self referenceRect];
      v3 = [(UIVisualEffectView *)v6 initWithFrame:?];
      v7 = [[_UIViewGlass alloc] initWithVariant:0];
      [(UIView *)v3 _setBackground:v7];

      layer = [(UIView *)v3 layer];
      [layer setCornerRadius:6.5];

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
      backgroundMaskLayer = [(_UITextChoiceAccelerationBubble *)self backgroundMaskLayer];
      layer2 = [(UIView *)v3 layer];
      [layer2 setMask:backgroundMaskLayer];
    }
  }

  return v3;
}

- (id)squaredPathInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
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

- (id)squaredOffBubblePathInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v7 = rect.size.height * 0.5;
  v32 = rect.origin.x + rect.size.height * 0.5;
  traitCollection = [(UIView *)self traitCollection];
  layoutDirection = [traitCollection layoutDirection];

  v10 = x;
  v11 = y;
  v12 = width;
  v13 = height;
  if (layoutDirection == 1)
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

- (void)updateBubbleShapeInRect:(CGRect)rect withCornerRadius:(double)radius forSquaredOffBubble:(BOOL)bubble
{
  radiusCopy = radius;
  if (bubble)
  {
    v7 = rect.size.height * 0.5;
    traitCollection = [(UIView *)self traitCollection];
    layoutDirection = [traitCollection layoutDirection];

    if (layoutDirection == 1)
    {
      radiusCopy2 = radiusCopy;
    }

    else
    {
      radiusCopy2 = v7;
    }

    if (layoutDirection == 1)
    {
      radiusCopy = v7;
    }
  }

  else
  {
    radiusCopy2 = radius;
  }

  backgroundView = [(_UITextChoiceAccelerationBubble *)self backgroundView];
  layer = [backgroundView layer];
  *v13 = radiusCopy;
  *&v13[1] = radiusCopy;
  *&v13[2] = radiusCopy2;
  *&v13[3] = radiusCopy2;
  *&v13[4] = radiusCopy2;
  *&v13[5] = radiusCopy2;
  *&v13[6] = radiusCopy;
  *&v13[7] = radiusCopy;
  [layer setCornerRadii:v13];
}

- (void)showTextHighlightView:(BOOL)view
{
  viewCopy = view;
  v41[4] = *MEMORY[0x1E69E9840];
  if (!view)
  {
    goto LABEL_10;
  }

  textHighlightView = [(_UITextChoiceAccelerationBubble *)self textHighlightView];

  if (textHighlightView)
  {
    goto LABEL_10;
  }

  v6 = objc_alloc_init(UIView);
  [(_UITextChoiceAccelerationBubble *)self setTextHighlightView:v6];

  textHighlightView2 = [(_UITextChoiceAccelerationBubble *)self textHighlightView];
  [textHighlightView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  textHighlightView3 = [(_UITextChoiceAccelerationBubble *)self textHighlightView];
  [(UIView *)self addSubview:textHighlightView3];

  if ([(_UITextChoiceAccelerationBubble *)self promptStyle]== 3)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = 2.0;
  }

  v31 = MEMORY[0x1E69977A0];
  textAnchor = [(_UITextChoiceAccelerationBubble *)self textAnchor];
  topAnchor = [textAnchor topAnchor];
  textHighlightView4 = [(_UITextChoiceAccelerationBubble *)self textHighlightView];
  topAnchor2 = [textHighlightView4 topAnchor];
  v36 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v9];
  v41[0] = v36;
  textAnchor2 = [(_UITextChoiceAccelerationBubble *)self textAnchor];
  leadingAnchor = [textAnchor2 leadingAnchor];
  textHighlightView5 = [(_UITextChoiceAccelerationBubble *)self textHighlightView];
  leadingAnchor2 = [textHighlightView5 leadingAnchor];
  v30 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v9];
  v41[1] = v30;
  textHighlightView6 = [(_UITextChoiceAccelerationBubble *)self textHighlightView];
  bottomAnchor = [textHighlightView6 bottomAnchor];
  textAnchor3 = [(_UITextChoiceAccelerationBubble *)self textAnchor];
  bottomAnchor2 = [textAnchor3 bottomAnchor];
  v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v41[2] = v11;
  textHighlightView7 = [(_UITextChoiceAccelerationBubble *)self textHighlightView];
  trailingAnchor = [textHighlightView7 trailingAnchor];
  textAnchor4 = [(_UITextChoiceAccelerationBubble *)self textAnchor];
  trailingAnchor2 = [textAnchor4 trailingAnchor];
  v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:v9];
  v41[3] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:4];
  [v31 activateConstraints:v17];

  textHighlightView8 = [(_UITextChoiceAccelerationBubble *)self textHighlightView];
  [(UIView *)self sendSubviewToBack:textHighlightView8];

  textHighlightView9 = [(_UITextChoiceAccelerationBubble *)self textHighlightView];
  [textHighlightView9 setHidden:0];

  dictationGlowEffect = [(_UITextChoiceAccelerationBubble *)self dictationGlowEffect];
  if (!dictationGlowEffect)
  {
    if ([(_UITextChoiceAccelerationBubble *)self promptStyle]!= 3)
    {
      goto LABEL_10;
    }

    v21 = [UIDictationGlowEffect alloc];
    dictationGlowEffect = [(_UITextChoiceAccelerationBubble *)self textHighlightView];
    v22 = [(UIDictationGlowEffect *)v21 initWithView:dictationGlowEffect];
    [(_UITextChoiceAccelerationBubble *)self setDictationGlowEffect:v22];
  }

LABEL_10:
  textHighlightView10 = [(_UITextChoiceAccelerationBubble *)self textHighlightView];
  isHidden = [textHighlightView10 isHidden];

  if (isHidden == viewCopy)
  {
    textHighlightView11 = [(_UITextChoiceAccelerationBubble *)self textHighlightView];
    [(UIView *)self sendSubviewToBack:textHighlightView11];

    textHighlightView12 = [(_UITextChoiceAccelerationBubble *)self textHighlightView];
    [textHighlightView12 setHidden:viewCopy ^ 1u];
  }
}

- (BOOL)showingAutocorrectHighlight
{
  if ([(_UITextChoiceAccelerationBubble *)self promptStyle]== 3)
  {
    return 0;
  }

  textHighlightView = [(_UITextChoiceAccelerationBubble *)self textHighlightView];
  if (textHighlightView)
  {
    textHighlightView2 = [(_UITextChoiceAccelerationBubble *)self textHighlightView];
    superview = [textHighlightView2 superview];
    if (superview)
    {
      textHighlightView3 = [(_UITextChoiceAccelerationBubble *)self textHighlightView];
      if ([textHighlightView3 isHidden])
      {
        v3 = 0;
      }

      else
      {
        textHighlightView4 = [(_UITextChoiceAccelerationBubble *)self textHighlightView];
        [textHighlightView4 alpha];
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

- (id)optionForPoint:(CGPoint)point withEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = _UITextChoiceAccelerationBubble;
  v4 = [(UIControl *)&v7 hitTest:event withEvent:point.x, point.y];
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

- (id)dictationHighlightViewForPoint:(CGPoint)point withEvent:(id)event
{
  v12.receiver = self;
  v12.super_class = _UITextChoiceAccelerationBubble;
  v5 = [(UIControl *)&v12 hitTest:event withEvent:point.x, point.y];
  textHighlightView = [(_UITextChoiceAccelerationBubble *)self textHighlightView];
  if (([v5 isEqual:textHighlightView] & 1) != 0 && (-[_UITextChoiceAccelerationBubble dictationGlowEffect](self, "dictationGlowEffect"), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
    promptStyle = [(_UITextChoiceAccelerationBubble *)self promptStyle];

    if (promptStyle == 3)
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

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  if ([(_UITextChoiceAccelerationBubble *)self pointInside:eventCopy withEvent:x, y])
  {
    selfCopy = self;
  }

  else
  {
    v19.receiver = self;
    v19.super_class = _UITextChoiceAccelerationBubble;
    selfCopy = [(UIControl *)&v19 hitTest:eventCopy withEvent:x, y];
    if (selfCopy != self)
    {
LABEL_7:
      selfCopy = selfCopy;
      v17 = selfCopy;
      goto LABEL_8;
    }
  }

  dictationPromptDelegate = [(_UITextChoiceAccelerationBubble *)self dictationPromptDelegate];
  if (!dictationPromptDelegate)
  {
    goto LABEL_7;
  }

  v10 = dictationPromptDelegate;
  promptStyle = [(_UITextChoiceAccelerationBubble *)self promptStyle];

  if (promptStyle != 3)
  {
    goto LABEL_7;
  }

  [(UIView *)self convertPoint:0 toView:x, y];
  v13 = v12;
  v15 = v14;
  dictationPromptDelegate2 = [(_UITextChoiceAccelerationBubble *)self dictationPromptDelegate];
  v17 = [dictationPromptDelegate2 nearestDictationPromptForPoint:eventCopy withEvent:{v13, v15}];

  if (!v17)
  {
    goto LABEL_7;
  }

LABEL_8:

  return v17;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  backgroundView = [(_UITextChoiceAccelerationBubble *)self backgroundView];
  [(UIView *)self convertPoint:backgroundView toView:x, y];
  v9 = v8;
  v11 = v10;

  backgroundView2 = [(_UITextChoiceAccelerationBubble *)self backgroundView];
  [backgroundView2 frame];
  v28 = CGRectInset(v27, -15.0, -30.0);
  v13 = v28.origin.x;
  v14 = v28.origin.y;
  width = v28.size.width;
  height = v28.size.height;

  textHighlightView = [(_UITextChoiceAccelerationBubble *)self textHighlightView];
  [(UIView *)self convertPoint:textHighlightView toView:x, y];
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

  textHighlightView2 = [(_UITextChoiceAccelerationBubble *)self textHighlightView];
  [textHighlightView2 bounds];
  v26.x = v19;
  v26.y = v21;
  v24 = CGRectContainsPoint(v30, v26);

  return v24;
}

- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event
{
  touchCopy = touch;
  eventCopy = event;
  [touchCopy locationInView:self];
  v8 = [(_UITextChoiceAccelerationBubble *)self dictationHighlightViewForPoint:eventCopy withEvent:?];
  if (v8 || [(_UITextChoiceAccelerationBubble *)self promptStyle]== 3)
  {
    v9 = 1;
  }

  else
  {
    [touchCopy locationInView:self];
    v11 = [(_UITextChoiceAccelerationBubble *)self optionForPoint:eventCopy withEvent:?];
    v12 = v11;
    v9 = v11 != 0;
    if (v11)
    {
      [v11 setState:4];
      if (![v12 type] || objc_msgSend(v12, "type") == 1)
      {
        contentsView = [(_UITextChoiceAccelerationBubble *)self contentsView];
        arrangedSubviews = [contentsView arrangedSubviews];
        firstObject = [arrangedSubviews firstObject];

        [firstObject setState:4];
      }

      if ([v12 type] == 3)
      {
        sideButton = [(_UITextChoiceAccelerationBubble *)self sideButton];
        [sideButton setState:4];
      }
    }
  }

  return v9;
}

- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event
{
  v40 = *MEMORY[0x1E69E9840];
  touchCopy = touch;
  eventCopy = event;
  [touchCopy locationInView:self];
  v8 = [(_UITextChoiceAccelerationBubble *)self optionForPoint:eventCopy withEvent:?];
  [touchCopy locationInView:self];
  v9 = [(_UITextChoiceAccelerationBubble *)self dictationHighlightViewForPoint:eventCopy withEvent:?];
  v10 = v9;
  if (v8)
  {
    if (![v8 state])
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      contentsView = [(_UITextChoiceAccelerationBubble *)self contentsView];
      arrangedSubviews = [contentsView arrangedSubviews];

      v13 = [arrangedSubviews countByEnumeratingWithState:&v34 objects:v39 count:16];
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
              objc_enumerationMutation(arrangedSubviews);
            }

            v17 = *(*(&v34 + 1) + 8 * i);
            if (([v17 isEqual:v8] & 1) == 0)
            {
              [v17 setState:0];
            }
          }

          v14 = [arrangedSubviews countByEnumeratingWithState:&v34 objects:v39 count:16];
        }

        while (v14);
      }

      sideButton = [(_UITextChoiceAccelerationBubble *)self sideButton];
      v19 = [v8 isEqual:sideButton];

      if ((v19 & 1) == 0)
      {
        sideButton2 = [(_UITextChoiceAccelerationBubble *)self sideButton];
        [sideButton2 setState:0];
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

  sideButton3 = [(_UITextChoiceAccelerationBubble *)self sideButton];
  [sideButton3 setState:0];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  contentsView2 = [(_UITextChoiceAccelerationBubble *)self contentsView];
  arrangedSubviews2 = [contentsView2 arrangedSubviews];

  v26 = [arrangedSubviews2 countByEnumeratingWithState:&v30 objects:v38 count:16];
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
          objc_enumerationMutation(arrangedSubviews2);
        }

        [*(*(&v30 + 1) + 8 * j) setState:0];
      }

      v27 = [arrangedSubviews2 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v27);
  }

  v21 = 0;
LABEL_17:

  return v21;
}

- (void)endTrackingWithTouch:(id)touch withEvent:(id)event
{
  v40 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  [touch locationInView:self];
  v8 = v7;
  v10 = v9;
  if ([(_UITextChoiceAccelerationBubble *)self pointInside:eventCopy withEvent:?])
  {
    v11 = [(_UITextChoiceAccelerationBubble *)self optionForPoint:0 withEvent:v8, v10];
    arrangedSubviews3 = v11;
    if (v11)
    {
      [v11 setState:4];
      if (![arrangedSubviews3 type])
      {
        contentsView = [(_UITextChoiceAccelerationBubble *)self contentsView];
        arrangedSubviews = [contentsView arrangedSubviews];
        firstObject = [arrangedSubviews firstObject];

        [firstObject setState:4];
        [(_UITextChoiceAccelerationBubble *)self dismissWithCancel];
        goto LABEL_16;
      }

      if ([arrangedSubviews3 type] == 1)
      {
        contentsView2 = [(_UITextChoiceAccelerationBubble *)self contentsView];
        arrangedSubviews2 = [contentsView2 arrangedSubviews];
        firstObject = [arrangedSubviews2 firstObject];

        [firstObject setState:4];
        sideButton = [(_UITextChoiceAccelerationBubble *)self sideButton];
        originalText = [sideButton originalText];
        [(_UITextChoiceAccelerationBubble *)self dismissWithRevert:originalText];

LABEL_16:
        goto LABEL_29;
      }

      if ([arrangedSubviews3 type] == 6 || objc_msgSend(arrangedSubviews3, "type") == 8)
      {
        _authenticationMessage = [eventCopy _authenticationMessage];
        [(_UITextChoiceAccelerationBubble *)self setAuthenticationMessage:_authenticationMessage];

        sourceCandidate = [arrangedSubviews3 sourceCandidate];
        selectedCandidateChoice = self->_selectedCandidateChoice;
        self->_selectedCandidateChoice = sourceCandidate;

        [(UIControl *)self sendActionsForControlEvents:64];
        [(_UITextChoiceAccelerationBubble *)self removeAnimated:1];
      }

      else
      {
        if ([arrangedSubviews3 type] == 7 && (objc_msgSend(arrangedSubviews3, "sourceCandidate"), v29 = objc_claimAutoreleasedReturnValue(), v29, v29))
        {
          sideButton2 = [(_UITextChoiceAccelerationBubble *)self sideButton];
          [sideButton2 setState:4];

          sourceCandidate2 = [arrangedSubviews3 sourceCandidate];
          [(_UITextChoiceAccelerationBubble *)self dismissWithCandidate:sourceCandidate2];
        }

        else
        {
          sourceCandidate2 = [arrangedSubviews3 textToUse];
          candidate = [(_UITextChoiceAccelerationBubble *)self candidate];
          input = [candidate input];

          sideButton3 = [(_UITextChoiceAccelerationBubble *)self sideButton];
          [sideButton3 setState:4];

          if (sourceCandidate2 && [sourceCandidate2 isEqualToString:input])
          {
            [(_UITextChoiceAccelerationBubble *)self dismissWithRevert:sourceCandidate2];
          }

          else
          {
            [(_UITextChoiceAccelerationBubble *)self dismissWithText:sourceCandidate2];
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
    sideButton4 = [(_UITextChoiceAccelerationBubble *)self sideButton];
    [sideButton4 setState:0];

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    contentsView3 = [(_UITextChoiceAccelerationBubble *)self contentsView];
    arrangedSubviews3 = [contentsView3 arrangedSubviews];

    v20 = [arrangedSubviews3 countByEnumeratingWithState:&v35 objects:v39 count:16];
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
            objc_enumerationMutation(arrangedSubviews3);
          }

          [*(*(&v35 + 1) + 8 * i) setState:0];
        }

        v21 = [arrangedSubviews3 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v21);
    }
  }

LABEL_29:
}

- (void)removeFromSuperview
{
  v12[2] = *MEMORY[0x1E69E9840];
  anchorLeading = [(_UITextChoiceAccelerationBubble *)self anchorLeading];

  if (anchorLeading)
  {
    v4 = MEMORY[0x1E69977A0];
    anchorLeading2 = [(_UITextChoiceAccelerationBubble *)self anchorLeading];
    v12[0] = anchorLeading2;
    anchorTop = [(_UITextChoiceAccelerationBubble *)self anchorTop];
    v12[1] = anchorTop;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
    [v4 deactivateConstraints:v7];

    [(_UITextChoiceAccelerationBubble *)self setReferenceRect:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  }

  boundaryConstraints = [(_UITextChoiceAccelerationBubble *)self boundaryConstraints];

  if (boundaryConstraints)
  {
    v9 = MEMORY[0x1E69977A0];
    boundaryConstraints2 = [(_UITextChoiceAccelerationBubble *)self boundaryConstraints];
    [v9 deactivateConstraints:boundaryConstraints2];
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
  contentsView = [(_UITextChoiceAccelerationBubble *)self contentsView];
  arrangedSubviews = [contentsView arrangedSubviews];

  v4 = [arrangedSubviews countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(arrangedSubviews);
        }

        [*(*(&v8 + 1) + 8 * v7++) setLightingEffectEnabled:0 atPosition:&unk_1EFE30898];
      }

      while (v5 != v7);
      v5 = [arrangedSubviews countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)removeAnimated:(BOOL)animated withDuration:(double)duration
{
  if (!self->_isDismissing)
  {
    animatedCopy = animated;
    self->_isDismissing = 1;
    [(_UITextChoiceAccelerationBubble *)self cancelLightingEffect];
    if (animatedCopy)
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
      [UIView animateWithDuration:v8 animations:v7 completion:duration];
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
  sideButton = [(_UITextChoiceAccelerationBubble *)self sideButton];
  textToUse = [sideButton textToUse];
  [(_UITextChoiceAccelerationBubble *)self dismissWithText:textToUse];
}

- (void)dismissWithRevert:(id)revert
{
  revertCopy = revert;
  [(_UITextChoiceAccelerationBubble *)self setShouldRejectCandidate:1];
  [(_UITextChoiceAccelerationBubble *)self dismissWithText:revertCopy];
}

- (void)dismissWithCandidate:(id)candidate
{
  candidateCopy = candidate;
  promptStyle = [(_UITextChoiceAccelerationBubble *)self promptStyle];
  if (candidateCopy)
  {
    candidate = [candidateCopy candidate];
    selectedChoice = self->_selectedChoice;
    self->_selectedChoice = candidate;

    objc_storeStrong(&self->_selectedCandidateChoice, candidate);
  }

  else if (promptStyle != 3)
  {
    [(UIControl *)self cancelTrackingWithEvent:0];
  }

  [(_UITextChoiceAccelerationBubble *)self removeAnimated:1];
}

- (void)dismissWithText:(id)text
{
  textCopy = text;
  promptStyle = [(_UITextChoiceAccelerationBubble *)self promptStyle];
  if (textCopy)
  {
    objc_storeStrong(&self->_selectedChoice, text);
    selectedCandidateChoice = self->_selectedCandidateChoice;
    self->_selectedCandidateChoice = 0;
  }

  else if (promptStyle != 3)
  {
    [(UIControl *)self cancelTrackingWithEvent:0];
  }

  [(_UITextChoiceAccelerationBubble *)self removeAnimated:[(_UITextChoiceAccelerationBubble *)self promptStyle]!= 3];
}

- (int)textEffectsVisibilityLevel
{
  superview = [(UIView *)self superview];
  textEffectsVisibilityLevel = [superview textEffectsVisibilityLevel];

  if (textEffectsVisibilityLevel <= 8)
  {
    return 8;
  }

  else
  {
    return textEffectsVisibilityLevel;
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