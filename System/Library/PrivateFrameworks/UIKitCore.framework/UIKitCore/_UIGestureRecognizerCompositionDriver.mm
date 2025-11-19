@interface _UIGestureRecognizerCompositionDriver
- (BOOL)shouldReceiveComponent:(id)a3 withEvent:(id)a4;
- (BOOL)shouldReceiveEvent:(id)a3;
- (NSString)description;
- (void)_gestureRecognizerDriver:(id)a3 didUpdateState:(int64_t)a4 previousState:(int64_t)a5;
- (void)fail;
- (void)reset;
- (void)setContext:(id)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
- (void)transformChangedWithEvent:(id)a3;
@end

@implementation _UIGestureRecognizerCompositionDriver

- (void)_gestureRecognizerDriver:(id)a3 didUpdateState:(int64_t)a4 previousState:(int64_t)a5
{
  v6 = [(NSArray *)self->_drivers objectAtIndexedSubscript:0, a4, a5];
  v7 = [v6 state];

  if ([(NSArray *)self->_drivers count]>= 2)
  {
    v8 = 1;
    do
    {
      stateCombiner = self->_stateCombiner;
      v10 = [(NSArray *)self->_drivers objectAtIndexedSubscript:v8];
      v7 = stateCombiner(v7, [v10 state]);

      ++v8;
    }

    while (v8 < [(NSArray *)self->_drivers count]);
  }

  [(_UIGestureRecognizerDriver *)self _setState:v7 notifyDelegate:1];
}

- (void)setContext:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = _UIGestureRecognizerCompositionDriver;
  [(_UIGestureRecognizerDriver *)&v14 setContext:?];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_drivers;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) setContext:{a3, v10}];
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)reset
{
  v14 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = _UIGestureRecognizerCompositionDriver;
  [(_UIGestureRecognizerDriver *)&v12 reset];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = self->_drivers;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
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

        [*(*(&v8 + 1) + 8 * v7++) reset];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)fail
{
  v14 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = _UIGestureRecognizerCompositionDriver;
  [(_UIGestureRecognizerDriver *)&v12 fail];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = self->_drivers;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
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

        [*(*(&v8 + 1) + 8 * v7++) fail];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_drivers;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10++) touchesBegan:a3 withEvent:{a4, v11}];
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_drivers;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10++) touchesMoved:a3 withEvent:{a4, v11}];
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_drivers;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10++) touchesEnded:a3 withEvent:{a4, v11}];
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_drivers;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10++) touchesCancelled:a3 withEvent:{a4, v11}];
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)transformChangedWithEvent:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_drivers;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) transformChangedWithEvent:{a3, v9}];
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (BOOL)shouldReceiveEvent:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_drivers;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8++) shouldReceiveEvent:{a3, v10}];
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return 0;
}

- (BOOL)shouldReceiveComponent:(id)a3 withEvent:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_drivers;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v9 |= [*(*(&v13 + 1) + 8 * i) shouldReceiveComponent:a3 withEvent:{a4, v13}];
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

- (NSString)description
{
  v17 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = _UIGestureRecognizerCompositionDriver;
  v3 = [(_UIGestureRecognizerDriver *)&v15 description];
  v4 = [v3 mutableCopy];

  if ([v4 length])
  {
    [v4 deleteCharactersInRange:{objc_msgSend(v4, "length") - 1, 1}];
    [v4 appendString:@"; children=["];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = self->_drivers;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [v4 appendFormat:@"\n  %@", *(*(&v11 + 1) + 8 * i)];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
      }

      while (v7);
    }

    [v4 appendString:@"\n]>"];
  }

  return v4;
}

@end