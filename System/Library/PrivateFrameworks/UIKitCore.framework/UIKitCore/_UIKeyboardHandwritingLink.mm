@interface _UIKeyboardHandwritingLink
- (BOOL)becomeFirstResponder;
- (BOOL)isDeleteCandidate:(id)candidate;
- (BOOL)resignFirstResponder;
- (BOOL)shouldRestoreResponder;
- (_UIKeyboardHandwritingLink)init;
- (id)currentCandidate;
- (id)nextResponder;
- (void)dealloc;
- (void)reloadInputViews;
- (void)sendStrokes:(id)strokes;
- (void)setCandidates:(id)candidates inlineText:(id)text inlineRect:(CGRect)rect maxX:(double)x layout:(BOOL)layout;
@end

@implementation _UIKeyboardHandwritingLink

- (_UIKeyboardHandwritingLink)init
{
  v9.receiver = self;
  v9.super_class = _UIKeyboardHandwritingLink;
  v2 = [(_UIKeyboardHandwritingLink *)&v9 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __34___UIKeyboardHandwritingLink_init__block_invoke;
    v6[3] = &unk_1E70F3D28;
    objc_copyWeak(&v7, &location);
    v4 = [defaultCenter addObserverForName:@"UIApplicationWillEnterForegroundNotification" object:0 queue:0 usingBlock:v6];

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[UIKeyboardImpl activeInstance];
  candidateList = [v3 candidateList];

  if (candidateList == self)
  {
    v5 = +[UIKeyboardImpl activeInstance];
    [v5 setCandidateList:0];
  }

  v6.receiver = self;
  v6.super_class = _UIKeyboardHandwritingLink;
  [(UIResponder *)&v6 dealloc];
}

- (void)reloadInputViews
{
  v5.receiver = self;
  v5.super_class = _UIKeyboardHandwritingLink;
  [(UIResponder *)&v5 reloadInputViews];
  if ([(UIResponder *)self isFirstResponder])
  {
    v3 = +[UIKeyboardImpl activeInstance];
    [v3 setInputMode:@"intl_HWR" userInitiated:0];

    v4 = +[UIKeyboardImpl activeInstance];
    [v4 setCandidateList:self];
  }
}

- (BOOL)becomeFirstResponder
{
  if ([(UIResponder *)self isFirstResponder])
  {
    return 1;
  }

  keyWindow = [UIApp keyWindow];
  objc_storeWeak(&self->_fallbackResponder, keyWindow);

  WeakRetained = objc_loadWeakRetained(&self->_fallbackResponder);
  firstResponder = [WeakRetained firstResponder];
  objc_storeWeak(&self->_previousResponder, firstResponder);

  v7.receiver = self;
  v7.super_class = _UIKeyboardHandwritingLink;
  if ([(UIResponder *)&v7 becomeFirstResponder])
  {
    return 1;
  }

  objc_storeWeak(&self->_previousResponder, 0);
  objc_storeWeak(&self->_fallbackResponder, 0);
  return 0;
}

- (BOOL)shouldRestoreResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_previousResponder);
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_previousResponder);
    inputView = [v4 inputView];
    if (inputView)
    {
      v6 = 1;
    }

    else
    {
      v7 = objc_loadWeakRetained(&self->_previousResponder);
      inputAccessoryView = [v7 inputAccessoryView];
      v6 = inputAccessoryView != 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)resignFirstResponder
{
  v9.receiver = self;
  v9.super_class = _UIKeyboardHandwritingLink;
  resignFirstResponder = [(UIResponder *)&v9 resignFirstResponder];
  if (resignFirstResponder)
  {
    if ([(_UIKeyboardHandwritingLink *)self shouldRestoreResponder])
    {
      WeakRetained = objc_loadWeakRetained(&self->_previousResponder);
      [WeakRetained becomeFirstResponder];
    }

    v5 = +[UIKeyboardImpl activeInstance];
    candidateList = [v5 candidateList];

    if (candidateList == self)
    {
      v7 = +[UIKeyboardImpl activeInstance];
      [v7 setCandidateList:0];
    }

    objc_storeWeak(&self->_previousResponder, 0);
    objc_storeWeak(&self->_fallbackResponder, 0);
  }

  return resignFirstResponder;
}

- (id)nextResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_previousResponder);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
  }

  else
  {
    v5 = objc_loadWeakRetained(&self->_fallbackResponder);
  }

  v6 = v5;

  return v6;
}

- (void)sendStrokes:(id)strokes
{
  strokesCopy = strokes;
  if (![(UIResponder *)self isFirstResponder])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Not first responder, can't handle %@", strokesCopy}];
  }

  v4 = +[UIKeyboardImpl activeInstance];
  [v4 addInputObject:strokesCopy];
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
  candidates = [candidatesCopy candidates];
  firstObject = [candidates firstObject];
  v11 = [(_UIKeyboardHandwritingLink *)self isDeleteCandidate:firstObject];

  if (v11)
  {
    if (self->_justDeleted)
    {
      [(_UIKeyboardHandwritingLink *)self setCandidateSet:0];
    }

    else
    {
      array = [MEMORY[0x1E695DF70] array];
      candidateSet = [(_UIKeyboardHandwritingLink *)self candidateSet];
      candidates2 = [candidateSet candidates];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __78___UIKeyboardHandwritingLink_setCandidates_inlineText_inlineRect_maxX_layout___block_invoke;
      v16[3] = &unk_1E7117AF0;
      v17 = array;
      v15 = array;
      [candidates2 enumerateObjectsUsingBlock:v16];

      self->_justDeleted = 1;
    }
  }

  else
  {
    [(_UIKeyboardHandwritingLink *)self setCandidateSet:candidatesCopy];
    self->_justDeleted = 0;
  }

  [(_UIKeyboardHandwritingLink *)self candidatesUpdated];
}

- (id)currentCandidate
{
  if (self->_selectedIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 = 0;
  }

  else
  {
    candidateSet = [(_UIKeyboardHandwritingLink *)self candidateSet];
    candidates = [candidateSet candidates];
    v6 = [candidates objectAtIndex:self->_selectedIndex];

    if ([(_UIKeyboardHandwritingLink *)self isDeleteCandidate:v6])
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