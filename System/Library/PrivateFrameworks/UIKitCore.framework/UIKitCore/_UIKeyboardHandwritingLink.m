@interface _UIKeyboardHandwritingLink
- (BOOL)becomeFirstResponder;
- (BOOL)isDeleteCandidate:(id)a3;
- (BOOL)resignFirstResponder;
- (BOOL)shouldRestoreResponder;
- (_UIKeyboardHandwritingLink)init;
- (id)currentCandidate;
- (id)nextResponder;
- (void)dealloc;
- (void)reloadInputViews;
- (void)sendStrokes:(id)a3;
- (void)setCandidates:(id)a3 inlineText:(id)a4 inlineRect:(CGRect)a5 maxX:(double)a6 layout:(BOOL)a7;
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
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __34___UIKeyboardHandwritingLink_init__block_invoke;
    v6[3] = &unk_1E70F3D28;
    objc_copyWeak(&v7, &location);
    v4 = [v3 addObserverForName:@"UIApplicationWillEnterForegroundNotification" object:0 queue:0 usingBlock:v6];

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[UIKeyboardImpl activeInstance];
  v4 = [v3 candidateList];

  if (v4 == self)
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

  v3 = [UIApp keyWindow];
  objc_storeWeak(&self->_fallbackResponder, v3);

  WeakRetained = objc_loadWeakRetained(&self->_fallbackResponder);
  v5 = [WeakRetained firstResponder];
  objc_storeWeak(&self->_previousResponder, v5);

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
    v5 = [v4 inputView];
    if (v5)
    {
      v6 = 1;
    }

    else
    {
      v7 = objc_loadWeakRetained(&self->_previousResponder);
      v8 = [v7 inputAccessoryView];
      v6 = v8 != 0;
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
  v3 = [(UIResponder *)&v9 resignFirstResponder];
  if (v3)
  {
    if ([(_UIKeyboardHandwritingLink *)self shouldRestoreResponder])
    {
      WeakRetained = objc_loadWeakRetained(&self->_previousResponder);
      [WeakRetained becomeFirstResponder];
    }

    v5 = +[UIKeyboardImpl activeInstance];
    v6 = [v5 candidateList];

    if (v6 == self)
    {
      v7 = +[UIKeyboardImpl activeInstance];
      [v7 setCandidateList:0];
    }

    objc_storeWeak(&self->_previousResponder, 0);
    objc_storeWeak(&self->_fallbackResponder, 0);
  }

  return v3;
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

- (void)sendStrokes:(id)a3
{
  v5 = a3;
  if (![(UIResponder *)self isFirstResponder])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Not first responder, can't handle %@", v5}];
  }

  v4 = +[UIKeyboardImpl activeInstance];
  [v4 addInputObject:v5];
}

- (BOOL)isDeleteCandidate:(id)a3
{
  v3 = [a3 candidate];
  v4 = [v3 isEqualToString:@"DELETE"];

  return v4;
}

- (void)setCandidates:(id)a3 inlineText:(id)a4 inlineRect:(CGRect)a5 maxX:(double)a6 layout:(BOOL)a7
{
  v8 = a3;
  self->_selectedIndex = 0x7FFFFFFFFFFFFFFFLL;
  v9 = [v8 candidates];
  v10 = [v9 firstObject];
  v11 = [(_UIKeyboardHandwritingLink *)self isDeleteCandidate:v10];

  if (v11)
  {
    if (self->_justDeleted)
    {
      [(_UIKeyboardHandwritingLink *)self setCandidateSet:0];
    }

    else
    {
      v12 = [MEMORY[0x1E695DF70] array];
      v13 = [(_UIKeyboardHandwritingLink *)self candidateSet];
      v14 = [v13 candidates];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __78___UIKeyboardHandwritingLink_setCandidates_inlineText_inlineRect_maxX_layout___block_invoke;
      v16[3] = &unk_1E7117AF0;
      v17 = v12;
      v15 = v12;
      [v14 enumerateObjectsUsingBlock:v16];

      self->_justDeleted = 1;
    }
  }

  else
  {
    [(_UIKeyboardHandwritingLink *)self setCandidateSet:v8];
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
    v4 = [(_UIKeyboardHandwritingLink *)self candidateSet];
    v5 = [v4 candidates];
    v6 = [v5 objectAtIndex:self->_selectedIndex];

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