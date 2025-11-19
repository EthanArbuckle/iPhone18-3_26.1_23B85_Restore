@interface UIAutoscroll
- (BOOL)startAutoscroll:(id)a3 scrollContainer:(id)a4 point:(CGPoint)a5 directions:(int)a6 repeatInterval:(double)a7;
- (CGPoint)point;
- (id)target;
- (void)dealloc;
- (void)invalidate;
- (void)timerFired:(id)a3;
@end

@implementation UIAutoscroll

- (void)dealloc
{
  [(UIAutoscroll *)self invalidate];
  v3.receiver = self;
  v3.super_class = UIAutoscroll;
  [(UIAutoscroll *)&v3 dealloc];
}

- (BOOL)startAutoscroll:(id)a3 scrollContainer:(id)a4 point:(CGPoint)a5 directions:(int)a6 repeatInterval:(double)a7
{
  v8 = *&a6;
  y = a5.y;
  x = a5.x;
  v13 = a3;
  v14 = a4;
  v15 = [(UIAutoscroll *)self scrollContainer];
  [(UIAutoscroll *)self point];
  [v15 convertPoint:0 toView:?];
  v17 = v16;
  v19 = v18;

  [v14 convertPoint:0 toView:{x, y}];
  if (!self->m_timer)
  {
    goto LABEL_10;
  }

  v22 = v20;
  v23 = v21;
  v24 = [(UIAutoscroll *)self target];
  if (v24 != v13)
  {
LABEL_9:

    goto LABEL_10;
  }

  v25 = [(UIAutoscroll *)self scrollContainer];
  if (v25 != v14 || sqrt((v22 - v17) * (v22 - v17) + (v23 - v19) * (v23 - v19)) >= 70.0 || [(UIAutoscroll *)self directions]!= v8)
  {

    goto LABEL_9;
  }

  [(UIAutoscroll *)self repeatInterval];
  v27 = v26;

  if (v27 == a7)
  {
    [(UIAutoscroll *)self setPoint:x, y];
    v28 = 1;
    goto LABEL_13;
  }

LABEL_10:
  if ((objc_opt_respondsToSelector() & 1) == 0 || [(UIAutoscroll *)self disabled])
  {
    goto LABEL_12;
  }

  if (objc_opt_respondsToSelector())
  {
    v30 = [v14 shouldAutoscroll];
    if (!v14 || (v30 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (!v14)
  {
LABEL_12:
    [(UIAutoscroll *)self invalidate];
    v28 = 0;
    goto LABEL_13;
  }

  if (!v8 || a7 == 0.0)
  {
    goto LABEL_12;
  }

  v31 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceNow:0.0];
  m_timer = self->m_timer;
  if (m_timer)
  {
    [(NSTimer *)m_timer setFireDate:v31];
  }

  else
  {
    v33 = [objc_alloc(MEMORY[0x1E695DFF0]) initWithFireDate:v31 interval:self target:sel_timerFired_ selector:0 userInfo:1 repeats:a7];
    v34 = self->m_timer;
    self->m_timer = v33;

    v35 = [MEMORY[0x1E695DFD0] currentRunLoop];
    [v35 addTimer:self->m_timer forMode:*MEMORY[0x1E695D918]];
  }

  if ([(UIAutoscroll *)self directions]!= v8)
  {
    [(UIAutoscroll *)self setCount:0];
  }

  [(UIAutoscroll *)self setTarget:v13];
  [(UIAutoscroll *)self setScrollContainer:v14];
  [(UIAutoscroll *)self setPoint:x, y];
  [(UIAutoscroll *)self setDirections:v8];
  [(UIAutoscroll *)self setRepeatInterval:a7];
  v28 = 1;
  [(UIAutoscroll *)self setActive:1];

LABEL_13:
  return v28;
}

- (void)invalidate
{
  if (pthread_main_np())
  {
    m_timer = self->m_timer;
    if (m_timer)
    {
      self->m_timer = 0;
      v5 = m_timer;

      [(NSTimer *)v5 invalidate];
    }

    [(UIAutoscroll *)self setTarget:0];
    [(UIAutoscroll *)self setPoint:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
    [(UIAutoscroll *)self setScrollContainer:0];
    [(UIAutoscroll *)self setDirections:0];
    [(UIAutoscroll *)self setRepeatInterval:0.0];
    [(UIAutoscroll *)self setActive:0];

    [(UIAutoscroll *)self setCount:0];
  }

  else
  {

    [(UIAutoscroll *)self performSelectorOnMainThread:a2 withObject:0 waitUntilDone:0];
  }
}

- (void)timerFired:(id)a3
{
  v4 = [(UIAutoscroll *)self target];
  if (v4)
  {
    [(UIAutoscroll *)self setCount:[(UIAutoscroll *)self count]+ 1];
    [v4 updateAutoscroll:self];
  }

  else
  {
    [(UIAutoscroll *)self invalidate];
  }
}

- (CGPoint)point
{
  x = self->m_point.x;
  y = self->m_point.y;
  result.y = y;
  result.x = x;
  return result;
}

- (id)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

@end