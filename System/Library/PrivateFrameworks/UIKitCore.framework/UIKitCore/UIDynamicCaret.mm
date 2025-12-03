@interface UIDynamicCaret
- (BOOL)isActive;
- (BOOL)isDeleteCandidate:(id)candidate;
- (UIDynamicCaret)initWithFrame:(CGRect)frame;
- (id)backgroundImage;
- (id)currentCandidate;
- (void)alternativeTappedAtIndex:(int64_t)index;
- (void)didMoveToSuperview;
- (void)displayAlternatives:(BOOL)alternatives;
- (void)layoutSubviews;
- (void)setCandidates:(id)candidates inlineText:(id)text inlineRect:(CGRect)rect maxX:(double)x layout:(BOOL)layout;
- (void)setDocumentHasContent:(BOOL)content;
- (void)setFrame:(CGRect)frame;
- (void)setIsActive:(BOOL)active;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation UIDynamicCaret

- (UIDynamicCaret)initWithFrame:(CGRect)frame
{
  v21.receiver = self;
  v21.super_class = UIDynamicCaret;
  v3 = [(UIImageView *)&v21 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 setOpaque:0];
    [(UIView *)v4 setMultipleTouchEnabled:0];
    [(UIView *)v4 setUserInteractionEnabled:1];
    v4->_selectedIndex = 0x7FFFFFFFFFFFFFFFLL;
    v5 = [_UIDynamicCaretInput alloc];
    v6 = *MEMORY[0x1E695F058];
    v7 = *(MEMORY[0x1E695F058] + 8);
    v8 = *(MEMORY[0x1E695F058] + 16);
    v9 = *(MEMORY[0x1E695F058] + 24);
    v10 = [(_UIDynamicCaretInput *)v5 initWithFrame:*MEMORY[0x1E695F058], v7, v8, v9];
    [(UIDynamicCaret *)v4 setInputView:v10];

    v11 = [[_UIDynamicCaretAlternatives alloc] initWithFrame:v6, v7, v8, v9];
    [(UIDynamicCaret *)v4 setAlternativesView:v11];

    v12 = [[_UIDynamicCaretNoContentView alloc] initWithImage:0];
    [(UIDynamicCaret *)v4 setNoContentView:v12];

    v13 = [[_UIDynamicCaretHelpLabel alloc] initWithImage:0];
    [(UIDynamicCaret *)v4 setHelpLabel:v13];

    inputView = [(UIDynamicCaret *)v4 inputView];
    [(UIView *)v4 addSubview:inputView];

    alternativesView = [(UIDynamicCaret *)v4 alternativesView];
    [(UIView *)v4 addSubview:alternativesView];

    noContentView = [(UIDynamicCaret *)v4 noContentView];
    [(UIView *)v4 addSubview:noContentView];

    helpLabel = [(UIDynamicCaret *)v4 helpLabel];
    [(UIView *)v4 addSubview:helpLabel];

    [(UIDynamicCaret *)v4 displayAlternatives:0];
    noContentView2 = [(UIDynamicCaret *)v4 noContentView];
    [noContentView2 setAlpha:0.0];

    helpLabel2 = [(UIDynamicCaret *)v4 helpLabel];
    [helpLabel2 setAlpha:0.0];
  }

  return v4;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = UIDynamicCaret;
  [(UIImageView *)&v12 layoutSubviews];
  helpLabel = [(UIDynamicCaret *)self helpLabel];
  [helpLabel sizeToFit];

  helpLabel2 = [(UIDynamicCaret *)self helpLabel];
  [helpLabel2 frame];
  v6 = v5;
  v8 = v7;

  [(UIView *)self frame];
  v10 = v9;
  helpLabel3 = [(UIDynamicCaret *)self helpLabel];
  [helpLabel3 setFrame:{0.0, v10, v6, v8}];
}

- (void)displayAlternatives:(BOOL)alternatives
{
  alternativesCopy = alternatives;
  inputView = [(UIDynamicCaret *)self inputView];
  [inputView setHidden:alternativesCopy];

  alternativesView = [(UIDynamicCaret *)self alternativesView];
  [alternativesView setHidden:alternativesCopy ^ 1];
}

- (id)backgroundImage
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__UIDynamicCaret_backgroundImage__block_invoke;
  block[3] = &unk_1E70F3590;
  block[4] = self;
  if (qword_1ED49AA18 != -1)
  {
    dispatch_once(&qword_1ED49AA18, block);
  }

  return _MergedGlobals_11_11;
}

void __33__UIDynamicCaret_backgroundImage__block_invoke(uint64_t a1)
{
  [*(a1 + 32) contentScaleFactor];
  _UIGraphicsBeginImageContextWithOptions(0, 0, 80.0, 40.0, v1);
  v2 = [UIColor colorWithWhite:0.07 alpha:1.0];
  [v2 set];

  v3 = [UIBezierPath bezierPathWithRoundedRect:3 byRoundingCorners:0.0 cornerRadii:0.0, 80.0, 40.0, 20.0, 20.0];
  [v3 fill];

  v6 = _UIGraphicsGetImageFromCurrentImageContext(0);
  UIGraphicsEndImageContext();
  v4 = [v6 resizableImageWithCapInsets:{39.0, 40.0, 0.0, 40.0}];
  v5 = _MergedGlobals_11_11;
  _MergedGlobals_11_11 = v4;
}

- (void)didMoveToSuperview
{
  window = [(UIView *)self window];

  if (window)
  {
    [(UIDynamicCaret *)self setIsActive:1];
    image = [(UIImageView *)self image];

    if (!image)
    {
      backgroundImage = [(UIDynamicCaret *)self backgroundImage];
      [(UIImageView *)self setImage:backgroundImage];
    }
  }
}

- (BOOL)isActive
{
  v2 = UIKeyboardGetCurrentInputMode();
  v3 = [v2 isEqualToString:@"intl_HWR"];

  return v3;
}

- (void)setIsActive:(BOOL)active
{
  if (active)
  {
    v3 = +[UIWindow _applicationKeyWindow];
    firstResponder = [v3 firstResponder];

    if ([firstResponder _requiresKeyboardWhenFirstResponder])
    {
      v4 = +[UIKeyboardImpl sharedInstance];
      [v4 setDelegate:firstResponder];
    }

    v5 = +[UIKeyboardImpl sharedInstance];
    [v5 setInputMode:@"intl_HWR" userInitiated:0];
  }
}

- (void)setDocumentHasContent:(BOOL)content
{
  if (content)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = 1.0;
  }

  noContentView = [(UIDynamicCaret *)self noContentView];
  [noContentView setAlpha:v4];

  helpLabel = [(UIDynamicCaret *)self helpLabel];
  [helpLabel setAlpha:v4];
}

- (void)setFrame:(CGRect)frame
{
  v3.receiver = self;
  v3.super_class = UIDynamicCaret;
  [(UIImageView *)&v3 setFrame:frame.origin.x, frame.origin.y, frame.size.height];
}

- (void)alternativeTappedAtIndex:(int64_t)index
{
  self->_selectedIndex = index;
  [(UIKeyboardCandidateListDelegate *)self->_candidateListDelegate candidateListAcceptCandidate:self];
  self->_selectedIndex = 0x7FFFFFFFFFFFFFFFLL;
  [(UIDynamicCaret *)self displayAlternatives:0];
  self->_justDeleted = 0;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v5 = UIApp;
  beganCopy = began;
  [v5 _disableTouchCoalescingWithCount:{objc_msgSend(beganCopy, "count")}];
  anyObject = [beganCopy anyObject];

  [anyObject locationInView:self];
  v9 = v8;
  v11 = v10;

  inputView = [(UIDynamicCaret *)self inputView];
  LODWORD(beganCopy) = [inputView isHidden];

  if (beganCopy)
  {
    alternativesView = [(UIDynamicCaret *)self alternativesView];
    self->_selectedIndex = [alternativesView indexOfButtonForPoint:{v9, v11}];

    alternativesView2 = [(UIDynamicCaret *)self alternativesView];
    [alternativesView2 highlightButtonAtIndex:self->_selectedIndex];
  }

  else
  {
    alternativesView2 = [(UIDynamicCaret *)self inputView];
    [alternativesView2 startTouchAtPoint:{v9, v11}];
  }

  [(UIDynamicCaret *)self setDocumentHasContent:1];
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  anyObject = [moved anyObject];
  [anyObject locationInView:self];
  v6 = v5;
  v8 = v7;
  inputView = [(UIDynamicCaret *)self inputView];
  isInking = [inputView isInking];

  if (isInking)
  {
    inputView2 = [(UIDynamicCaret *)self inputView];
    [inputView2 addTouchAtPoint:{v6, v8}];
  }

  else
  {
    [anyObject previousLocationInView:self];
    if (sqrt((v6 - v12) * (v6 - v12) + (v8 - v13) * (v8 - v13)) > 1.0)
    {
      self->_selectedIndex = 0x7FFFFFFFFFFFFFFFLL;
      inputView3 = [(UIDynamicCaret *)self inputView];
      [inputView3 startTouchAtPoint:{v6, v8}];

      [(UIDynamicCaret *)self displayAlternatives:0];
    }
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  eventCopy = event;
  if (eventCopy)
  {
    [UIApp _enableTouchCoalescingWithCount:{objc_msgSend(endedCopy, "count")}];
  }

  anyObject = [endedCopy anyObject];
  [anyObject locationInView:self];
  v9 = v8;
  v11 = v10;

  inputView = [(UIDynamicCaret *)self inputView];
  isInking = [inputView isInking];

  if (isInking)
  {
    inputView2 = [(UIDynamicCaret *)self inputView];
    [inputView2 endTouchAtPoint:{v9, v11}];
  }

  else
  {
    [(UIDynamicCaret *)self alternativeTappedAtIndex:self->_selectedIndex];
  }
}

- (BOOL)isDeleteCandidate:(id)candidate
{
  candidate = [candidate candidate];
  v4 = [candidate isEqualToString:@"DELETE"];

  return v4;
}

- (void)setCandidates:(id)candidates inlineText:(id)text inlineRect:(CGRect)rect maxX:(double)x layout:(BOOL)layout
{
  candidatesCopy = candidates;
  self->_selectedIndex = 0x7FFFFFFFFFFFFFFFLL;
  candidateSet = [(UIDynamicCaret *)self candidateSet];
  candidates = [candidateSet candidates];
  firstObject = [candidates firstObject];
  candidate = [firstObject candidate];

  candidates2 = [candidatesCopy candidates];
  firstObject2 = [candidates2 firstObject];
  LODWORD(firstObject) = [(UIDynamicCaret *)self isDeleteCandidate:firstObject2];

  if (firstObject)
  {
    if (self->_justDeleted)
    {
      [(UIDynamicCaret *)self setCandidateSet:0];
    }

    else
    {
      array = [MEMORY[0x1E695DF70] array];
      candidateSet2 = [(UIDynamicCaret *)self candidateSet];
      candidates3 = [candidateSet2 candidates];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __66__UIDynamicCaret_setCandidates_inlineText_inlineRect_maxX_layout___block_invoke;
      v20[3] = &unk_1E7117AF0;
      v18 = array;
      v21 = v18;
      [candidates3 enumerateObjectsUsingBlock:v20];

      alternativesView = [(UIDynamicCaret *)self alternativesView];
      [alternativesView setButtonLabels:v18];

      if ([candidate length])
      {
        [(UIDynamicCaret *)self displayAlternatives:1];
      }

      self->_justDeleted = 1;
    }
  }

  else
  {
    [(UIDynamicCaret *)self setCandidateSet:candidatesCopy];
    [(UIDynamicCaret *)self displayAlternatives:0];
    self->_justDeleted = 0;
  }
}

void __66__UIDynamicCaret_setCandidates_inlineText_inlineRect_maxX_layout___block_invoke(uint64_t a1, void *a2, unint64_t a3, BOOL *a4)
{
  v6 = *(a1 + 32);
  v7 = [a2 candidate];
  [v6 addObject:v7];

  *a4 = a3 > 3;
}

- (id)currentCandidate
{
  if (self->_selectedIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 = 0;
  }

  else
  {
    candidateSet = [(UIDynamicCaret *)self candidateSet];
    candidates = [candidateSet candidates];
    v6 = [candidates objectAtIndex:self->_selectedIndex];

    if ([(UIDynamicCaret *)self isDeleteCandidate:v6])
    {
      v2 = 0;
    }

    else
    {
      v2 = v6;
    }
  }

  return v2;
}

@end