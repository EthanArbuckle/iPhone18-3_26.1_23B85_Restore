@interface _UITypeSelectKeyPressGestureRecognizer
- (BOOL)_shouldReceiveEvent:(id)a3;
- (BOOL)_shouldReceivePress:(id)a3;
- (NSMutableString)inputString;
- (_UITypeSelectKeyPressGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)pressesCancelled:(id)a3 withEvent:(id)a4;
- (void)pressesChanged:(id)a3 withEvent:(id)a4;
- (void)pressesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation _UITypeSelectKeyPressGestureRecognizer

- (_UITypeSelectKeyPressGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v7.receiver = self;
  v7.super_class = _UITypeSelectKeyPressGestureRecognizer;
  v4 = [(UIGestureRecognizer *)&v7 initWithTarget:a3 action:a4];
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

- (BOOL)_shouldReceiveEvent:(id)a3
{
  v3 = a3;
  v4 = [v3 type] == 3 || objc_msgSend(v3, "type") == 4;

  return v4;
}

- (BOOL)_shouldReceivePress:(id)a3
{
  v4 = a3;
  v5 = [(UIGestureRecognizer *)self view];
  v6 = v5;
  if (!v5 || ([v5 firstResponder], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "_requiresKeyboardWhenFirstResponder"), v7, (v8 & 1) != 0) || (objc_msgSend(v4, "key"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "modifierFlags") & 0x940000, v9, v10))
  {
    v11 = 0;
  }

  else
  {
    v13 = [v4 key];
    v14 = [v13 keyCode];
    if (v14 - 4 < 0x24 || v14 <= 0x37 && ((1 << v14) & 0x80500000000000) != 0)
    {
      v11 = 1;
    }

    else
    {

      v13 = [v4 key];
      if ([v13 keyCode] == 42)
      {
        v15 = [(_UITypeSelectKeyPressGestureRecognizer *)self inputString];
        v11 = [v15 length] != 0;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  return v11;
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  v49 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v42 = a4;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (!v7)
  {
    goto LABEL_29;
  }

  v8 = v7;
  v9 = *v45;
  v41 = v6;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v45 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v44 + 1) + 8 * i);
      v12 = [v11 key];
      v13 = [v12 keyCode];
      if (v13 - 4 < 0x24 || (v13 <= 0x37 ? (v14 = ((1 << v13) & 0x80500000000000) == 0) : (v14 = 1), !v14))
      {

        inputString = self->_inputString;
        if (inputString)
        {
          v12 = [v11 key];
          v16 = [v12 characters];
          [(NSMutableString *)inputString appendString:v16];
          goto LABEL_22;
        }

        v17 = [(_UITypeSelectKeyPressGestureRecognizer *)self programmaticInput];

        if (v17)
        {
          v18 = MEMORY[0x1E696AD60];
          v12 = [v11 key];
          v16 = [v12 characters];
          v19 = [v18 stringWithString:v16];
          v20 = self->_inputString;
          self->_inputString = v19;

          goto LABEL_22;
        }

        v12 = [UIApp _currentKeyboardShortcutInvocationForKeyboardEvent:v42];
        v21 = [v12 keyboardShortcutLeaf];
        if (!v21)
        {
          goto LABEL_20;
        }

        v22 = v21;
        v23 = [v12 keyboardShortcutLeaf];
        if (!_UIMenuLeafIsLikelyToConflictWithTextInput(v23))
        {

LABEL_20:
          v25 = [v11 key];
          v26 = [v25 keyCode] & 0xFFFFFFFFFFFFFFFBLL;

          if (v26 == 40)
          {
            goto LABEL_23;
          }

          v27 = MEMORY[0x1E696AD60];
          v16 = [v11 key];
          v28 = [v16 characters];
          v29 = [v27 stringWithString:v28];
          v30 = self->_inputString;
          self->_inputString = v29;

          v6 = v41;
LABEL_22:

          goto LABEL_23;
        }

        v24 = [v12 keyboardShortcutLeaf];
        v40 = [v24 _wantsPriorityOverSystemBehavior:1];

        v6 = v41;
        if ((v40 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

LABEL_23:

      v31 = [(_UITypeSelectKeyPressGestureRecognizer *)self inputString];
      if ([v31 length])
      {
        v32 = [v11 key];
        v33 = [v32 keyCode];

        if (v33 == 42)
        {
          v34 = [(_UITypeSelectKeyPressGestureRecognizer *)self inputString];
          v35 = [v34 length] - 1;

          [(NSMutableString *)self->_inputString deleteCharactersInRange:v35, 1];
        }
      }

      else
      {
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v44 objects:v48 count:16];
  }

  while (v8);
LABEL_29:
  v43.receiver = self;
  v43.super_class = _UITypeSelectKeyPressGestureRecognizer;
  [(UIGestureRecognizer *)&v43 pressesBegan:v6 withEvent:v42];
  presses = self->_presses;
  if (presses)
  {
    [(NSMutableSet *)presses unionSet:v6];
  }

  else
  {
    v37 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:v6];
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

- (void)pressesChanged:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = _UITypeSelectKeyPressGestureRecognizer;
  [(UIGestureRecognizer *)&v5 pressesChanged:a3 withEvent:a4];
  if ([(UIGestureRecognizer *)self state]== UIGestureRecognizerStateBegan)
  {
    [(UIGestureRecognizer *)self setState:2];
  }
}

- (void)pressesEnded:(id)a3 withEvent:(id)a4
{
  v8.receiver = self;
  v8.super_class = _UITypeSelectKeyPressGestureRecognizer;
  v6 = a3;
  [(UIGestureRecognizer *)&v8 pressesEnded:v6 withEvent:a4];
  [(NSMutableSet *)self->_presses minusSet:v6, v8.receiver, v8.super_class];

  if (![(NSMutableSet *)self->_presses count])
  {
    presses = self->_presses;
    self->_presses = 0;

    [(UIGestureRecognizer *)self setState:3];
  }
}

- (void)pressesCancelled:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = _UITypeSelectKeyPressGestureRecognizer;
  [(UIGestureRecognizer *)&v5 pressesCancelled:a3 withEvent:a4];
  [(UIGestureRecognizer *)self setState:4];
}

@end