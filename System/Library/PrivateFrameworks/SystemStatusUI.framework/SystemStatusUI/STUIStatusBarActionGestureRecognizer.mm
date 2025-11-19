@interface STUIStatusBarActionGestureRecognizer
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)pressesCancelled:(id)a3 withEvent:(id)a4;
- (void)pressesEnded:(id)a3 withEvent:(id)a4;
- (void)setHighlighted:(BOOL)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation STUIStatusBarActionGestureRecognizer

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  [(STUIStatusBarActionGestureRecognizer *)self setHighlighted:1, a4];

  [(STUIStatusBarActionGestureRecognizer *)self setState:1];
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v10 = a3;
  v6 = a4;
  if ([v10 count] < 2)
  {
    v7 = [v10 anyObject];
    v8 = [(STUIStatusBarActionGestureRecognizer *)self view];
    v9 = [(STUIStatusBarActionGestureRecognizer *)self view];
    [v7 locationInView:v9];
    -[STUIStatusBarActionGestureRecognizer setHighlighted:](self, "setHighlighted:", [v8 pointInside:v6 withEvent:?]);
  }

  else
  {
    [(STUIStatusBarActionGestureRecognizer *)self setHighlighted:0];
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  if ([(STUIStatusBarActionGestureRecognizer *)self highlighted:a3])
  {
    v5 = 3;
  }

  else
  {
    v5 = 5;
  }

  [(STUIStatusBarActionGestureRecognizer *)self setState:v5];
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  [(STUIStatusBarActionGestureRecognizer *)self setHighlighted:0, a4];

  [(STUIStatusBarActionGestureRecognizer *)self setState:4];
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = a3;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v10 + 1) + 8 * i) type] == 4)
        {
          [(STUIStatusBarActionGestureRecognizer *)self setHighlighted:1];
          [(STUIStatusBarActionGestureRecognizer *)self setState:1];
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)pressesEnded:(id)a3 withEvent:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = a3;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v11 + 1) + 8 * i) type] == 4)
        {
          if ([(STUIStatusBarActionGestureRecognizer *)self highlighted])
          {
            v10 = 3;
          }

          else
          {
            v10 = 5;
          }

          [(STUIStatusBarActionGestureRecognizer *)self setState:v10];
          goto LABEL_14;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:
}

- (void)pressesCancelled:(id)a3 withEvent:(id)a4
{
  [(STUIStatusBarActionGestureRecognizer *)self setHighlighted:0, a4];

  [(STUIStatusBarActionGestureRecognizer *)self setState:4];
}

- (void)setHighlighted:(BOOL)a3
{
  if (self->_highlighted != a3)
  {
    self->_highlighted = a3;
    if ([(STUIStatusBarActionGestureRecognizer *)self state]>= 1)
    {

      [(STUIStatusBarActionGestureRecognizer *)self setState:2];
    }
  }
}

@end