@interface _UITypeSelectKeyPressGestureRecognizer
- (BOOL)_shouldReceiveEvent:(id)event;
- (BOOL)_shouldReceivePress:(id)press;
- (NSMutableString)inputString;
- (_UITypeSelectKeyPressGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)pressesCancelled:(id)cancelled withEvent:(id)event;
- (void)pressesChanged:(id)changed withEvent:(id)event;
- (void)pressesEnded:(id)ended withEvent:(id)event;
@end

@implementation _UITypeSelectKeyPressGestureRecognizer

- (_UITypeSelectKeyPressGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v7.receiver = self;
  v7.super_class = _UITypeSelectKeyPressGestureRecognizer;
  v4 = [(UIGestureRecognizer *)&v7 initWithTarget:target action:action];
  v5 = v4;
  if (v4)
  {
    [(UIGestureRecognizer *)v4 setAllowedTouchTypes:MEMORY[0x1E695E0F0]];
    [(UIGestureRecognizer *)v5 setDelaysTouchesBegan:0];
    [(UIGestureRecognizer *)v5 setDelaysTouchesEnded:0];
    [(UIGestureRecognizer *)v5 setCancelsTouchesInView:0];
  }

  return v5;
}

- (NSMutableString)inputString
{
  v2 = [(NSMutableString *)self->_inputString copy];

  return v2;
}

- (BOOL)_shouldReceiveEvent:(id)event
{
  eventCopy = event;
  v4 = [eventCopy type] == 3 || objc_msgSend(eventCopy, "type") == 4;

  return v4;
}

- (BOOL)_shouldReceivePress:(id)press
{
  pressCopy = press;
  view = [(UIGestureRecognizer *)self view];
  v6 = view;
  if (!view || ([view firstResponder], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "_requiresKeyboardWhenFirstResponder"), v7, (v8 & 1) != 0) || (objc_msgSend(pressCopy, "key"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "modifierFlags") & 0x940000, v9, v10))
  {
    v11 = 0;
  }

  else
  {
    v13 = [pressCopy key];
    keyCode = [v13 keyCode];
    if (keyCode - 4 < 0x24 || keyCode <= 0x37 && ((1 << keyCode) & 0x80500000000000) != 0)
    {
      v11 = 1;
    }

    else
    {

      v13 = [pressCopy key];
      if ([v13 keyCode] == 42)
      {
        inputString = [(_UITypeSelectKeyPressGestureRecognizer *)self inputString];
        v11 = [inputString length] != 0;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  return v11;
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  v49 = *MEMORY[0x1E69E9840];
  beganCopy = began;
  eventCopy = event;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v7 = [beganCopy countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (!v7)
  {
    goto LABEL_29;
  }

  v8 = v7;
  v9 = *v45;
  v41 = beganCopy;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v45 != v9)
      {
        objc_enumerationMutation(beganCopy);
      }

      v11 = *(*(&v44 + 1) + 8 * i);
      v12 = [v11 key];
      keyCode = [v12 keyCode];
      if (keyCode - 4 < 0x24 || (keyCode <= 0x37 ? (v14 = ((1 << keyCode) & 0x80500000000000) == 0) : (v14 = 1), !v14))
      {

        inputString = self->_inputString;
        if (inputString)
        {
          v12 = [v11 key];
          characters = [v12 characters];
          [(NSMutableString *)inputString appendString:characters];
          goto LABEL_22;
        }

        programmaticInput = [(_UITypeSelectKeyPressGestureRecognizer *)self programmaticInput];

        if (programmaticInput)
        {
          v18 = MEMORY[0x1E696AD60];
          v12 = [v11 key];
          characters = [v12 characters];
          v19 = [v18 stringWithString:characters];
          v20 = self->_inputString;
          self->_inputString = v19;

          goto LABEL_22;
        }

        v12 = [UIApp _currentKeyboardShortcutInvocationForKeyboardEvent:eventCopy];
        keyboardShortcutLeaf = [v12 keyboardShortcutLeaf];
        if (!keyboardShortcutLeaf)
        {
          goto LABEL_20;
        }

        v22 = keyboardShortcutLeaf;
        keyboardShortcutLeaf2 = [v12 keyboardShortcutLeaf];
        if (!_UIMenuLeafIsLikelyToConflictWithTextInput(keyboardShortcutLeaf2))
        {

LABEL_20:
          v25 = [v11 key];
          v26 = [v25 keyCode] & 0xFFFFFFFFFFFFFFFBLL;

          if (v26 == 40)
          {
            goto LABEL_23;
          }

          v27 = MEMORY[0x1E696AD60];
          characters = [v11 key];
          v16Characters = [characters characters];
          v29 = [v27 stringWithString:v16Characters];
          v30 = self->_inputString;
          self->_inputString = v29;

          beganCopy = v41;
LABEL_22:

          goto LABEL_23;
        }

        keyboardShortcutLeaf3 = [v12 keyboardShortcutLeaf];
        v40 = [keyboardShortcutLeaf3 _wantsPriorityOverSystemBehavior:1];

        beganCopy = v41;
        if ((v40 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

LABEL_23:

      inputString = [(_UITypeSelectKeyPressGestureRecognizer *)self inputString];
      if ([inputString length])
      {
        v32 = [v11 key];
        keyCode2 = [v32 keyCode];

        if (keyCode2 == 42)
        {
          inputString2 = [(_UITypeSelectKeyPressGestureRecognizer *)self inputString];
          v35 = [inputString2 length] - 1;

          [(NSMutableString *)self->_inputString deleteCharactersInRange:v35, 1];
        }
      }

      else
      {
      }
    }

    v8 = [beganCopy countByEnumeratingWithState:&v44 objects:v48 count:16];
  }

  while (v8);
LABEL_29:
  v43.receiver = self;
  v43.super_class = _UITypeSelectKeyPressGestureRecognizer;
  [(UIGestureRecognizer *)&v43 pressesBegan:beganCopy withEvent:eventCopy];
  presses = self->_presses;
  if (presses)
  {
    [(NSMutableSet *)presses unionSet:beganCopy];
  }

  else
  {
    v37 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:beganCopy];
    v38 = self->_presses;
    self->_presses = v37;
  }

  if ([(UIGestureRecognizer *)self state])
  {
    if ([(UIGestureRecognizer *)self state]>= UIGestureRecognizerStateBegan && [(UIGestureRecognizer *)self state]<= UIGestureRecognizerStateChanged)
    {
      v39 = 2;
      goto LABEL_37;
    }
  }

  else
  {
    v39 = 1;
LABEL_37:
    [(UIGestureRecognizer *)self setState:v39];
  }
}

- (void)pressesChanged:(id)changed withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = _UITypeSelectKeyPressGestureRecognizer;
  [(UIGestureRecognizer *)&v5 pressesChanged:changed withEvent:event];
  if ([(UIGestureRecognizer *)self state]== UIGestureRecognizerStateBegan)
  {
    [(UIGestureRecognizer *)self setState:2];
  }
}

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  v8.receiver = self;
  v8.super_class = _UITypeSelectKeyPressGestureRecognizer;
  endedCopy = ended;
  [(UIGestureRecognizer *)&v8 pressesEnded:endedCopy withEvent:event];
  [(NSMutableSet *)self->_presses minusSet:endedCopy, v8.receiver, v8.super_class];

  if (![(NSMutableSet *)self->_presses count])
  {
    presses = self->_presses;
    self->_presses = 0;

    [(UIGestureRecognizer *)self setState:3];
  }
}

- (void)pressesCancelled:(id)cancelled withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = _UITypeSelectKeyPressGestureRecognizer;
  [(UIGestureRecognizer *)&v5 pressesCancelled:cancelled withEvent:event];
  [(UIGestureRecognizer *)self setState:4];
}

@end