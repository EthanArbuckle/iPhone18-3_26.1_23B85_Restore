@interface MTUIFocusedTouchGestureRecognizer
- (MTUIFocusedTouchGestureRecognizer)initWithFocusedView:(id)a3 touchAllowance:(UIEdgeInsets)a4;
- (UIEdgeInsets)touchAllowance;
- (void)reset;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation MTUIFocusedTouchGestureRecognizer

- (MTUIFocusedTouchGestureRecognizer)initWithFocusedView:(id)a3 touchAllowance:(UIEdgeInsets)a4
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  v10 = a3;
  if (v10)
  {
    v15.receiver = self;
    v15.super_class = MTUIFocusedTouchGestureRecognizer;
    v11 = [(MTUIFocusedTouchGestureRecognizer *)&v15 initWithTarget:0 action:0];
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_focusedView, a3);
      v12->_touchAllowance.top = top;
      v12->_touchAllowance.left = left;
      v12->_touchAllowance.bottom = bottom;
      v12->_touchAllowance.right = right;
    }

    self = v12;
    v13 = self;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)reset
{
  activeTouches = self->_activeTouches;
  self->_activeTouches = 0;

  self->_didTouchOutside = 0;
  v4.receiver = self;
  v4.super_class = MTUIFocusedTouchGestureRecognizer;
  [(MTUIFocusedTouchGestureRecognizer *)&v4 reset];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (self->_didTouchOutside)
  {
    goto LABEL_27;
  }

  v32 = v7;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v9 = [v6 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v38;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v38 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v37 + 1) + 8 * i);
        [v14 locationInView:self->_focusedView];
        v16 = v15;
        v18 = v17;
        [(UIView *)self->_focusedView bounds];
        left = self->_touchAllowance.left;
        v45.origin.x = v20 + left;
        v45.origin.y = v21 + self->_touchAllowance.top;
        v45.size.width = v22 - (left + self->_touchAllowance.right);
        v45.size.height = v23 - (self->_touchAllowance.top + self->_touchAllowance.bottom);
        v44.x = v16;
        v44.y = v18;
        if (CGRectContainsPoint(v45, v44))
        {
          if (!v11)
          {
            v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
          }

          [v11 addObject:v14];
        }

        else
        {
          self->_didTouchOutside = 1;
        }
      }

      v10 = [v6 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  if (self->_didTouchOutside)
  {
    [(MTUIFocusedTouchGestureRecognizer *)self setState:1];
    v8 = v32;
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v24 = v11;
    v25 = [v24 countByEnumeratingWithState:&v33 objects:v41 count:16];
    v8 = v32;
    if (v25)
    {
      v26 = v25;
      v27 = *v34;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v34 != v27)
          {
            objc_enumerationMutation(v24);
          }

          [(MTUIFocusedTouchGestureRecognizer *)self ignoreTouch:*(*(&v33 + 1) + 8 * j) forEvent:v32];
        }

        v26 = [v24 countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v26);
    }
  }

  if (self->_didTouchOutside)
  {
LABEL_27:
    activeTouches = self->_activeTouches;
    if (activeTouches)
    {
      [(NSMutableSet *)activeTouches unionSet:v6];
    }

    else
    {
      v30 = [objc_alloc(MEMORY[0x277CBEB58]) initWithSet:v6];
      v31 = self->_activeTouches;
      self->_activeTouches = v30;
    }
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  [(NSMutableSet *)self->_activeTouches minusSet:a3, a4];
  if (![(NSMutableSet *)self->_activeTouches count])
  {
    if (self->_didTouchOutside)
    {
      v5 = 3;
    }

    else
    {
      v5 = 5;
    }

    [(MTUIFocusedTouchGestureRecognizer *)self setState:v5];
    activeTouches = self->_activeTouches;
    self->_activeTouches = 0;
  }
}

- (UIEdgeInsets)touchAllowance
{
  top = self->_touchAllowance.top;
  left = self->_touchAllowance.left;
  bottom = self->_touchAllowance.bottom;
  right = self->_touchAllowance.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end