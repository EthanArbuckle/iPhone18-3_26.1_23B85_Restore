@interface SXComponentAnimationController
- (CGRect)convertRectForComponent:(id)a3;
- (SXComponentAnimationController)initWithViewport:(id)a3;
- (id)animatingHandlerForComponent:(id)a3;
- (id)registeredHandlerForComponent:(id)a3;
- (void)displayLinkTick:(id)a3;
- (void)finishAnimationHandlerAnimated:(id)a3;
- (void)registerComponentView:(id)a3 animation:(id)a4;
- (void)startOrStopDisplayLink;
- (void)startUpdatingAnimationForComponentView:(id)a3;
- (void)stopUpdatingAnimationForComponentView:(id)a3 finishAnimation:(BOOL)a4;
- (void)unregisterComponentView:(id)a3;
- (void)updateVisibleBounds:(CGRect)a3;
- (void)updateVisibleBoundsIfNeeded;
@end

@implementation SXComponentAnimationController

- (SXComponentAnimationController)initWithViewport:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = SXComponentAnimationController;
  v6 = [(SXComponentAnimationController *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewport, a3);
    v8 = [MEMORY[0x1E695DFA8] set];
    registeredComponents = v7->_registeredComponents;
    v7->_registeredComponents = v8;

    v10 = [MEMORY[0x1E695DFA8] set];
    animatingComponents = v7->_animatingComponents;
    v7->_animatingComponents = v10;

    [(SXViewport *)v7->_viewport addViewportChangeListener:v7 forOptions:30];
  }

  return v7;
}

- (void)registerComponentView:(id)a3 animation:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [v6 handlerClass];
  v8 = [(SXComponentAnimationController *)self animatingHandlerForComponent:v10];
  if (!v8)
  {
    v8 = [[v7 alloc] initWithComponent:v10 withAnimation:v6];
  }

  v9 = [(SXComponentAnimationController *)self registeredComponents];
  [v9 addObject:v8];

  if ([v8 state] == 4 && (objc_msgSend(v8, "animationShouldRepeat") & 1) != 0 || objc_msgSend(v8, "state") != 3 && objc_msgSend(v8, "state") != 4)
  {
    [v8 prepareAnimation];
  }

  [(SXComponentAnimationController *)self updateVisibleBoundsIfNeeded];
}

- (void)unregisterComponentView:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(SXComponentAnimationController *)self registeredComponents];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v15 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v14 + 1) + 8 * v9);
      v11 = [v10 component];

      if (v11 == v4)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

    v12 = v10;

    if (!v12)
    {
      goto LABEL_13;
    }

    v13 = [(SXComponentAnimationController *)self registeredComponents];
    [v13 removeObject:v12];

    v5 = v12;
  }

LABEL_12:

LABEL_13:
}

- (void)startUpdatingAnimationForComponentView:(id)a3
{
  v6 = [(SXComponentAnimationController *)self registeredHandlerForComponent:a3];
  if (v6)
  {
    v4 = [(SXComponentAnimationController *)self animatingComponents];
    if (([v4 containsObject:v6] & 1) == 0)
    {
      v5 = [v6 state];

      if (v5 == 4)
      {
        goto LABEL_6;
      }

      v4 = [(SXComponentAnimationController *)self animatingComponents];
      [v4 addObject:v6];
    }
  }

LABEL_6:
  [(SXComponentAnimationController *)self updateVisibleBoundsIfNeeded];
}

- (void)stopUpdatingAnimationForComponentView:(id)a3 finishAnimation:(BOOL)a4
{
  v4 = a4;
  v12 = a3;
  v6 = [(SXComponentAnimationController *)self animatingHandlerForComponent:?];
  v7 = v6;
  if (v4 && !v6)
  {
    v7 = [(SXComponentAnimationController *)self registeredHandlerForComponent:v12];
  }

  if (v7)
  {
    if ([v7 state] != 4)
    {
      v8 = [v7 animationShouldRepeat];
      if ((v8 & 1) != 0 || v4)
      {
        if (v8)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v9 = [v7 animation];
        if ([v9 userControllable])
        {

          goto LABEL_12;
        }

        v11 = [v7 state];

        if (v11 == 1)
        {
          goto LABEL_12;
        }
      }

      [v7 finishAnimation];
    }

LABEL_12:
    v10 = [(SXComponentAnimationController *)self animatingComponents];
    [v10 removeObject:v7];
  }
}

- (void)updateVisibleBoundsIfNeeded
{
  v6 = [(SXComponentAnimationController *)self viewport];
  if ([v6 isPopulated])
  {
    v3 = [(SXComponentAnimationController *)self viewport];
    if ([v3 appearState] == 2)
    {
    }

    else
    {
      v4 = [(SXComponentAnimationController *)self viewport];
      v5 = [v4 appearState];

      if (v5 != 1)
      {
        return;
      }
    }

    v6 = [(SXComponentAnimationController *)self viewport];
    [v6 dynamicBounds];
    [(SXComponentAnimationController *)self updateVisibleBounds:?];
  }
}

- (void)updateVisibleBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v66 = *MEMORY[0x1E69E9840];
  MinY = CGRectGetMinY(a3);
  v59 = x;
  v60 = y;
  v67.origin.x = x;
  v67.origin.y = y;
  v9 = width;
  v67.size.width = width;
  v10 = height;
  v67.size.height = height;
  v11 = CGRectGetHeight(v67);
  v12 = [(SXComponentAnimationController *)self viewport];
  [v12 dynamicBounds];
  v58 = CGRectGetMinY(v68);
  v13 = [(SXComponentAnimationController *)self viewport];
  [v13 documentSize];
  v15 = v14;
  v16 = [(SXComponentAnimationController *)self viewport];
  [v16 bounds];
  v18 = v17;

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v19 = [(SXComponentAnimationController *)self animatingComponents];
  v20 = [v19 countByEnumeratingWithState:&v61 objects:v65 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = MinY + v11;
    v57 = v15 - v18;
    v23 = *v62;
    do
    {
      v24 = 0;
      do
      {
        if (*v62 != v23)
        {
          objc_enumerationMutation(v19);
        }

        v25 = *(*(&v61 + 1) + 8 * v24);
        v26 = [v25 componentViewToAnimate];
        [(SXComponentAnimationController *)self convertRectForComponent:v26];
        v28 = v27;
        v30 = v29;
        v32 = v31;
        v34 = v33;

        v69.origin.x = v59;
        v69.origin.y = v60;
        v69.size.width = v9;
        v69.size.height = v10;
        v35 = CGRectGetHeight(v69);
        [v25 screenHeightStartOffset];
        v37 = v22 - v35 * v36;
        v70.origin.x = v28;
        v70.origin.y = v30;
        v70.size.width = v32;
        v70.size.height = v34;
        if (v37 < CGRectGetMinY(v70) || [v25 state] == 4 || objc_msgSend(v25, "state") == 3)
        {
          if ([v25 state] == 1)
          {
            v71.origin.x = v28;
            v71.origin.y = v30;
            v71.size.width = v32;
            v71.size.height = v34;
            MaxY = CGRectGetMaxY(v71);
            v39 = [(SXComponentAnimationController *)self viewport];
            [v39 documentSize];
            v41 = v40;
            v42 = [(SXComponentAnimationController *)self viewport];
            [v42 bounds];
            v44 = v43;
            [v25 screenHeightStartOffset];
            v46 = v41 - v44 * v45;

            if (MaxY > v46)
            {
LABEL_11:
              [v25 startAnimation];
            }
          }
        }

        else
        {
          v47 = [v25 animation];
          v48 = [v47 userControllable];

          if (!v48)
          {
            v53 = [(SXComponentAnimationController *)self viewport];
            v54 = [v53 appearState];

            if (v54 == 2)
            {
              goto LABEL_11;
            }

            goto LABEL_22;
          }

          v49 = [(SXComponentAnimationController *)self animationHandlersToFinish];
          v50 = [v49 containsObject:v25];

          if (v50)
          {
            goto LABEL_12;
          }

          if (v58 < v57 || ([v25 shouldFinishAtEndOfScrollView] & 1) == 0) && (objc_msgSend(v25, "factorForVisibileBounds:andAbsoluteComponentRect:", v59, v60, v9, v10, v28, v30, v32, v34), v51 != 1.0) || (v52 = objc_msgSend(v25, "animationShouldRepeat"), v51 = 1.0, (v52))
          {
            [v25 updateAnimationWithFactor:v51];
            goto LABEL_12;
          }

          [v25 factor];
          if (v55 >= 0.95)
          {
            [v25 updateAnimationWithFactor:1.0];
LABEL_22:
            [v25 finishAnimation];
            goto LABEL_12;
          }

          [(SXComponentAnimationController *)self finishAnimationHandlerAnimated:v25];
        }

LABEL_12:
        ++v24;
      }

      while (v21 != v24);
      v56 = [v19 countByEnumeratingWithState:&v61 objects:v65 count:16];
      v21 = v56;
    }

    while (v56);
  }
}

- (CGRect)convertRectForComponent:(id)a3
{
  v4 = a3;
  [v4 center];
  v6 = v5;
  [v4 bounds];
  v8 = v6 - v7 * 0.5;
  [v4 center];
  v10 = v9;
  [v4 bounds];
  v12 = v10 - v11 * 0.5;
  [v4 bounds];
  v14 = v13;
  [v4 bounds];
  v16 = v15;
  v17 = [(SXComponentAnimationController *)self viewport];
  v18 = [v4 superview];

  [v17 convertRect:v18 fromView:{v8, v12, v14, v16}];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v27 = v20;
  v28 = v22;
  v29 = v24;
  v30 = v26;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

- (id)registeredHandlerForComponent:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(SXComponentAnimationController *)self registeredComponents];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [v9 component];

        if (v10 == v4)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)animatingHandlerForComponent:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(SXComponentAnimationController *)self registeredComponents];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [v9 component];

        if (v10 == v4)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)finishAnimationHandlerAnimated:(id)a3
{
  v7 = a3;
  v4 = [(SXComponentAnimationController *)self animationHandlersToFinish];

  if (v4)
  {
    animationHandlersToFinish = [(SXComponentAnimationController *)self animationHandlersToFinish];
    [animationHandlersToFinish addObject:v7];
  }

  else
  {
    v6 = [MEMORY[0x1E695DFA8] setWithObject:v7];
    animationHandlersToFinish = self->_animationHandlersToFinish;
    self->_animationHandlersToFinish = v6;
  }

  [(SXComponentAnimationController *)self startOrStopDisplayLink];
}

- (void)startOrStopDisplayLink
{
  v3 = [(SXComponentAnimationController *)self displayLink];
  if (v3)
  {
  }

  else
  {
    v8 = [(SXComponentAnimationController *)self animationHandlersToFinish];
    v9 = [v8 count];

    if (v9)
    {
      v10 = [MEMORY[0x1E6979330] displayLinkWithTarget:self selector:sel_displayLinkTick_];
      displayLink = self->_displayLink;
      self->_displayLink = v10;

      v15 = [(SXComponentAnimationController *)self displayLink];
      v12 = [MEMORY[0x1E695DFD0] currentRunLoop];
      [(CADisplayLink *)v15 addToRunLoop:v12 forMode:*MEMORY[0x1E695DA28]];

      v13 = v15;
      goto LABEL_9;
    }
  }

  v4 = [(SXComponentAnimationController *)self displayLink];
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v6 = [(SXComponentAnimationController *)self animationHandlersToFinish];
  v7 = [v6 count];

  if (v7)
  {
    return;
  }

  v14 = [(SXComponentAnimationController *)self displayLink];
  [v14 invalidate];

  v13 = self->_displayLink;
  self->_displayLink = 0;
LABEL_9:
}

- (void)displayLinkTick:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  [a3 duration];
  v5 = v4;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [(SXComponentAnimationController *)self animationHandlersToFinish];
  v7 = [v6 copy];

  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = v5 + v5;
    v12 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        [v14 factor];
        if (v15 >= 1.0)
        {
          v18 = [(SXComponentAnimationController *)self animationHandlersToFinish];
          [v18 removeObject:v14];

          [v14 updateAnimationWithFactor:1.0];
          [v14 finishAnimation];
          v10 = 1;
        }

        else
        {
          [v14 factor];
          v17 = v11 + v16;
          if (v17 > 1.0)
          {
            v17 = 1.0;
          }

          [v14 updateAnimationWithFactor:v17];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);

    if (v10)
    {
      [(SXComponentAnimationController *)self startOrStopDisplayLink];
    }
  }

  else
  {
  }
}

@end