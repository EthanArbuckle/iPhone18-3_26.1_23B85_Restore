@interface _UIFocusMovementDirectionalPressGestureRecognizer
- (id)_filterPressesByPressSource:(id)source;
- (unint64_t)focusHeadingForPresses:(id)presses;
- (void)configureDefaults;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)pressesCancelled:(id)cancelled withEvent:(id)event;
- (void)pressesChanged:(id)changed withEvent:(id)event;
- (void)pressesEnded:(id)ended withEvent:(id)event;
- (void)reset;
@end

@implementation _UIFocusMovementDirectionalPressGestureRecognizer

- (void)configureDefaults
{
  [(UIGestureRecognizer *)self setAllowedPressTypes:&unk_1EFE2D960];

  [(_UIFocusMovementPressGestureRecognizer *)self setShouldRepeat:1];
}

- (unint64_t)focusHeadingForPresses:(id)presses
{
  lastObject = [presses lastObject];
  v4 = lastObject;
  if (!lastObject)
  {
    goto LABEL_11;
  }

  type = [lastObject type];
  v6 = 1;
  if (type > 2)
  {
    if (type == 3)
    {
      v6 = 8;
      goto LABEL_12;
    }

    if (type != 30)
    {
      if (type != 31)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if (type)
  {
    if (type != 1)
    {
      if (type == 2)
      {
        v6 = 4;
        goto LABEL_12;
      }

LABEL_11:
      v6 = 0;
      goto LABEL_12;
    }

LABEL_10:
    v6 = 2;
  }

LABEL_12:

  return v6;
}

- (id)_filterPressesByPressSource:(id)source
{
  v21 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  pressSource = [(_UIFocusMovementDirectionalPressGestureRecognizer *)self pressSource];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = sourceCopy;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if ([v12 _source] != pressSource)
        {
          if (!v9)
          {
            v9 = [v6 mutableCopy];
          }

          [v9 removeObject:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = v6;
  }

  v14 = v13;

  return v13;
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  v33 = *MEMORY[0x1E69E9840];
  beganCopy = began;
  eventCopy = event;
  v8 = [beganCopy mutableCopy];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = beganCopy;
  v10 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v28;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v27 + 1) + 8 * i);
        if ([v14 _isAnalogStickPress])
        {
          [(UIGestureRecognizer *)self ignorePress:v14 forEvent:eventCopy];
          [v8 removeObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v11);
  }

  if ([v8 count] && (*&self->_flags & 1) == 0)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v15 = v8;
    v16 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v24;
      while (2)
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v24 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v23 + 1) + 8 * j);
          if ([v20 _source])
          {
            -[_UIFocusMovementDirectionalPressGestureRecognizer setPressSource:](self, "setPressSource:", [v20 _source]);
            goto LABEL_22;
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

LABEL_22:

    *&self->_flags |= 1u;
  }

  v21 = [(_UIFocusMovementDirectionalPressGestureRecognizer *)self _filterPressesByPressSource:v8];
  v22.receiver = self;
  v22.super_class = _UIFocusMovementDirectionalPressGestureRecognizer;
  [(_UIFocusMovementPressGestureRecognizer *)&v22 pressesBegan:v21 withEvent:eventCopy];
}

- (void)pressesChanged:(id)changed withEvent:(id)event
{
  eventCopy = event;
  v7 = [(_UIFocusMovementDirectionalPressGestureRecognizer *)self _filterPressesByPressSource:changed];
  v8.receiver = self;
  v8.super_class = _UIFocusMovementDirectionalPressGestureRecognizer;
  [(_UIFocusMovementPressGestureRecognizer *)&v8 pressesChanged:v7 withEvent:eventCopy];
}

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  eventCopy = event;
  v7 = [(_UIFocusMovementDirectionalPressGestureRecognizer *)self _filterPressesByPressSource:ended];
  v8.receiver = self;
  v8.super_class = _UIFocusMovementDirectionalPressGestureRecognizer;
  [(_UIFocusMovementPressGestureRecognizer *)&v8 pressesEnded:v7 withEvent:eventCopy];
}

- (void)pressesCancelled:(id)cancelled withEvent:(id)event
{
  eventCopy = event;
  v7 = [(_UIFocusMovementDirectionalPressGestureRecognizer *)self _filterPressesByPressSource:cancelled];
  v8.receiver = self;
  v8.super_class = _UIFocusMovementDirectionalPressGestureRecognizer;
  [(_UIFocusMovementPressGestureRecognizer *)&v8 pressesCancelled:v7 withEvent:eventCopy];
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = _UIFocusMovementDirectionalPressGestureRecognizer;
  [(_UIFocusMovementPressGestureRecognizer *)&v3 reset];
  [(_UIFocusMovementDirectionalPressGestureRecognizer *)self setPressSource:0];
  *&self->_flags &= ~1u;
}

@end