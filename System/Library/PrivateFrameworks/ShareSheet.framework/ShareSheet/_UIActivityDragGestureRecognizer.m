@interface _UIActivityDragGestureRecognizer
- (UIEdgeInsets)draggingInsets;
- (_UIActivityDragGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (int)autoscrollDirectionsForPoint:(CGPoint)a3 inView:(id)a4;
- (void)beginAutoscrollAndUpdateDirectionIfNeeded;
- (void)cancelAutoscroll;
- (void)reset;
- (void)setState:(int64_t)a3;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
- (void)updateAutoscroll:(id)a3;
@end

@implementation _UIActivityDragGestureRecognizer

- (_UIActivityDragGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v7.receiver = self;
  v7.super_class = _UIActivityDragGestureRecognizer;
  v4 = [(_UIActivityDragGestureRecognizer *)&v7 initWithTarget:a3 action:a4];
  v5 = v4;
  if (v4)
  {
    [(_UIActivityDragGestureRecognizer *)v4 setDraggingInsets:0.0, 22.0, 0.0, 22.0];
  }

  return v5;
}

- (void)setState:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = _UIActivityDragGestureRecognizer;
  [(_UIActivityDragGestureRecognizer *)&v7 setState:?];
  if (a3 == 2)
  {
    [(_UIActivityDragGestureRecognizer *)self beginAutoscrollAndUpdateDirectionIfNeeded];
    v5 = [(_UIActivityDragGestureRecognizer *)self autoscroll];
    [(_UIActivityDragGestureRecognizer *)self updateAutoscroll:v5];
  }

  else
  {
    if (a3 != 1)
    {
      return;
    }

    v5 = [(_UIActivityDragGestureRecognizer *)self view];
    v6 = [v5 _enclosingScrollableScrollerIncludingSelf];
    [(_UIActivityDragGestureRecognizer *)self setTargetScrollView:v6];
  }
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = _UIActivityDragGestureRecognizer;
  [(_UIActivityDragGestureRecognizer *)&v3 reset];
  [(_UIActivityDragGestureRecognizer *)self cancelAutoscroll];
  [(_UIActivityDragGestureRecognizer *)self setAutoscroll:0];
  [(_UIActivityDragGestureRecognizer *)self setTargetScrollView:0];
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = _UIActivityDragGestureRecognizer;
  [(_UIActivityDragGestureRecognizer *)&v5 touchesMoved:a3 withEvent:a4];
  if ([(_UIActivityDragGestureRecognizer *)self state]== 2)
  {
    [(_UIActivityDragGestureRecognizer *)self setState:2];
  }
}

- (void)updateAutoscroll:(id)a3
{
  v31 = a3;
  v4 = [(_UIActivityDragGestureRecognizer *)self targetScrollView];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_18;
  }

  [v4 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [v5 contentOffset];
  v15 = v14;
  v17 = v16;
  v18 = [(_UIActivityDragGestureRecognizer *)self autoscroll];
  v19 = [v18 directions];

  Width = 0.0;
  v21 = v19 & 0xFFFFFFFE;
  if (v15 > 0.0)
  {
    v21 = v19;
  }

  else
  {
    Width = v15;
  }

  if (v19)
  {
    v22 = Width;
  }

  else
  {
    v22 = v15;
  }

  if (v19)
  {
    v23 = v21;
  }

  else
  {
    v23 = v19;
  }

  if ((v23 & 2) == 0)
  {
    goto LABEL_14;
  }

  [v5 contentSize];
  v25 = v24;
  v33.origin.x = v7;
  v33.origin.y = v9;
  v33.size.width = v11;
  v33.size.height = v13;
  Width = CGRectGetWidth(v33);
  v26 = v25 - Width;
  if (v22 >= v25 - Width)
  {
    v23 &= ~2u;
LABEL_14:
    v26 = v22;
    if (!v23)
    {
      [(_UIActivityDragGestureRecognizer *)self cancelAutoscroll];
      goto LABEL_18;
    }
  }

  if ([v31 count] <= 1)
  {
    UIDistanceBetweenPoints();
    v28 = v27 / 333.333333;
    [v5 _contentOffsetAnimationDuration];
    v30 = v29;
    [v5 _setContentOffsetAnimationDuration:v28];
    [v5 setContentOffset:1 animated:{v26, v17}];
    [v5 _setContentOffsetAnimationDuration:v30];
  }

LABEL_18:
}

- (void)beginAutoscrollAndUpdateDirectionIfNeeded
{
  v6 = [(_UIActivityDragGestureRecognizer *)self autoscroll];
  if (!v6)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69DC6E0]);
    [(_UIActivityDragGestureRecognizer *)self setAutoscroll:?];
  }

  v3 = [(_UIActivityDragGestureRecognizer *)self targetScrollView];
  if (v3)
  {
    [(_UIActivityDragGestureRecognizer *)self locationInView:v3];
    [v3 _setAutoscrolling:{objc_msgSend(v6, "startAutoscroll:scrollContainer:point:directions:repeatInterval:", self, v3, -[_UIActivityDragGestureRecognizer autoscrollDirectionsForPoint:inView:](self, "autoscrollDirectionsForPoint:inView:", v3), v4, v5, 0.2)}];
    if ([v3 _isAutoscrolling])
    {
      [v3 _addScrollViewScrollObserver:self];
    }
  }
}

- (void)cancelAutoscroll
{
  v3 = [(_UIActivityDragGestureRecognizer *)self targetScrollView];
  [v3 _removeScrollViewScrollObserver:self];

  v4 = [(_UIActivityDragGestureRecognizer *)self targetScrollView];
  [v4 _setAutoscrolling:0];

  v5 = [(_UIActivityDragGestureRecognizer *)self autoscroll];
  [v5 invalidate];
}

- (int)autoscrollDirectionsForPoint:(CGPoint)a3 inView:(id)a4
{
  if (!a4)
  {
    return 0;
  }

  y = a3.y;
  x = a3.x;
  [a4 bounds];
  v7 = v23.origin.x;
  v8 = v23.origin.y;
  width = v23.size.width;
  height = v23.size.height;
  MinX = CGRectGetMinX(v23);
  [(_UIActivityDragGestureRecognizer *)self draggingInsets];
  v13 = MinX + v12;
  v24.origin.x = v7;
  v24.origin.y = v8;
  v24.size.width = width;
  v24.size.height = height;
  MaxX = CGRectGetMaxX(v24);
  [(_UIActivityDragGestureRecognizer *)self draggingInsets];
  if (x > v13)
  {
    v16 = 2;
  }

  else
  {
    v16 = 3;
  }

  if (x >= MaxX - v15)
  {
    v17 = v16;
  }

  else
  {
    v17 = x <= v13;
  }

  v25.origin.x = v7;
  v25.origin.y = v8;
  v25.size.width = width;
  v25.size.height = height;
  MinY = CGRectGetMinY(v25);
  [(_UIActivityDragGestureRecognizer *)self draggingInsets];
  if (y <= MinY + v19)
  {
    v17 |= 4u;
  }

  v26.origin.x = v7;
  v26.origin.y = v8;
  v26.size.width = width;
  v26.size.height = height;
  MaxY = CGRectGetMaxY(v26);
  [(_UIActivityDragGestureRecognizer *)self draggingInsets];
  if (y >= MaxY - v21)
  {
    return v17 | 8;
  }

  else
  {
    return v17;
  }
}

- (UIEdgeInsets)draggingInsets
{
  top = self->_draggingInsets.top;
  left = self->_draggingInsets.left;
  bottom = self->_draggingInsets.bottom;
  right = self->_draggingInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end