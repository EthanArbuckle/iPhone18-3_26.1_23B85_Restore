@interface STUIStatusBarActionGestureRecognizer
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)pressesCancelled:(id)cancelled withEvent:(id)event;
- (void)pressesEnded:(id)ended withEvent:(id)event;
- (void)setHighlighted:(BOOL)highlighted;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation STUIStatusBarActionGestureRecognizer

- (void)touchesBegan:(id)began withEvent:(id)event
{
  [(STUIStatusBarActionGestureRecognizer *)self setHighlighted:1, event];

  [(STUIStatusBarActionGestureRecognizer *)self setState:1];
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  movedCopy = moved;
  eventCopy = event;
  if ([movedCopy count] < 2)
  {
    anyObject = [movedCopy anyObject];
    view = [(STUIStatusBarActionGestureRecognizer *)self view];
    view2 = [(STUIStatusBarActionGestureRecognizer *)self view];
    [anyObject locationInView:view2];
    -[STUIStatusBarActionGestureRecognizer setHighlighted:](self, "setHighlighted:", [view pointInside:eventCopy withEvent:?]);
  }

  else
  {
    [(STUIStatusBarActionGestureRecognizer *)self setHighlighted:0];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  if ([(STUIStatusBarActionGestureRecognizer *)self highlighted:ended])
  {
    v5 = 3;
  }

  else
  {
    v5 = 5;
  }

  [(STUIStatusBarActionGestureRecognizer *)self setState:v5];
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  [(STUIStatusBarActionGestureRecognizer *)self setHighlighted:0, event];

  [(STUIStatusBarActionGestureRecognizer *)self setState:4];
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  beganCopy = began;
  v6 = [beganCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(beganCopy);
        }

        if ([*(*(&v10 + 1) + 8 * i) type] == 4)
        {
          [(STUIStatusBarActionGestureRecognizer *)self setHighlighted:1];
          [(STUIStatusBarActionGestureRecognizer *)self setState:1];
          goto LABEL_11;
        }
      }

      v7 = [beganCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  endedCopy = ended;
  v6 = [endedCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(endedCopy);
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

      v7 = [endedCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:
}

- (void)pressesCancelled:(id)cancelled withEvent:(id)event
{
  [(STUIStatusBarActionGestureRecognizer *)self setHighlighted:0, event];

  [(STUIStatusBarActionGestureRecognizer *)self setState:4];
}

- (void)setHighlighted:(BOOL)highlighted
{
  if (self->_highlighted != highlighted)
  {
    self->_highlighted = highlighted;
    if ([(STUIStatusBarActionGestureRecognizer *)self state]>= 1)
    {

      [(STUIStatusBarActionGestureRecognizer *)self setState:2];
    }
  }
}

@end