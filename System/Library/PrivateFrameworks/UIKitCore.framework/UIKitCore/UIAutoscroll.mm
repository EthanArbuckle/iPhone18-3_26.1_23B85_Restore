@interface UIAutoscroll
- (BOOL)startAutoscroll:(id)autoscroll scrollContainer:(id)container point:(CGPoint)point directions:(int)directions repeatInterval:(double)interval;
- (CGPoint)point;
- (id)target;
- (void)dealloc;
- (void)invalidate;
- (void)timerFired:(id)fired;
@end

@implementation UIAutoscroll

- (void)dealloc
{
  [(UIAutoscroll *)self invalidate];
  v3.receiver = self;
  v3.super_class = UIAutoscroll;
  [(UIAutoscroll *)&v3 dealloc];
}

- (BOOL)startAutoscroll:(id)autoscroll scrollContainer:(id)container point:(CGPoint)point directions:(int)directions repeatInterval:(double)interval
{
  v8 = *&directions;
  y = point.y;
  x = point.x;
  autoscrollCopy = autoscroll;
  containerCopy = container;
  scrollContainer = [(UIAutoscroll *)self scrollContainer];
  [(UIAutoscroll *)self point];
  [scrollContainer convertPoint:0 toView:?];
  v17 = v16;
  v19 = v18;

  [containerCopy convertPoint:0 toView:{x, y}];
  if (!self->m_timer)
  {
    goto LABEL_10;
  }

  v22 = v20;
  v23 = v21;
  target = [(UIAutoscroll *)self target];
  if (target != autoscrollCopy)
  {
LABEL_9:

    goto LABEL_10;
  }

  scrollContainer2 = [(UIAutoscroll *)self scrollContainer];
  if (scrollContainer2 != containerCopy || sqrt((v22 - v17) * (v22 - v17) + (v23 - v19) * (v23 - v19)) >= 70.0 || [(UIAutoscroll *)self directions]!= v8)
  {

    goto LABEL_9;
  }

  [(UIAutoscroll *)self repeatInterval];
  v27 = v26;

  if (v27 == interval)
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
    shouldAutoscroll = [containerCopy shouldAutoscroll];
    if (!containerCopy || (shouldAutoscroll & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (!containerCopy)
  {
LABEL_12:
    [(UIAutoscroll *)self invalidate];
    v28 = 0;
    goto LABEL_13;
  }

  if (!v8 || interval == 0.0)
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
    v33 = [objc_alloc(MEMORY[0x1E695DFF0]) initWithFireDate:v31 interval:self target:sel_timerFired_ selector:0 userInfo:1 repeats:interval];
    v34 = self->m_timer;
    self->m_timer = v33;

    currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
    [currentRunLoop addTimer:self->m_timer forMode:*MEMORY[0x1E695D918]];
  }

  if ([(UIAutoscroll *)self directions]!= v8)
  {
    [(UIAutoscroll *)self setCount:0];
  }

  [(UIAutoscroll *)self setTarget:autoscrollCopy];
  [(UIAutoscroll *)self setScrollContainer:containerCopy];
  [(UIAutoscroll *)self setPoint:x, y];
  [(UIAutoscroll *)self setDirections:v8];
  [(UIAutoscroll *)self setRepeatInterval:interval];
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

- (void)timerFired:(id)fired
{
  target = [(UIAutoscroll *)self target];
  if (target)
  {
    [(UIAutoscroll *)self setCount:[(UIAutoscroll *)self count]+ 1];
    [target updateAutoscroll:self];
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