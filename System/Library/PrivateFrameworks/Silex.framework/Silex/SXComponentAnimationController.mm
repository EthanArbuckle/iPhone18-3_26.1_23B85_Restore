@interface SXComponentAnimationController
- (CGRect)convertRectForComponent:(id)component;
- (SXComponentAnimationController)initWithViewport:(id)viewport;
- (id)animatingHandlerForComponent:(id)component;
- (id)registeredHandlerForComponent:(id)component;
- (void)displayLinkTick:(id)tick;
- (void)finishAnimationHandlerAnimated:(id)animated;
- (void)registerComponentView:(id)view animation:(id)animation;
- (void)startOrStopDisplayLink;
- (void)startUpdatingAnimationForComponentView:(id)view;
- (void)stopUpdatingAnimationForComponentView:(id)view finishAnimation:(BOOL)animation;
- (void)unregisterComponentView:(id)view;
- (void)updateVisibleBounds:(CGRect)bounds;
- (void)updateVisibleBoundsIfNeeded;
@end

@implementation SXComponentAnimationController

- (SXComponentAnimationController)initWithViewport:(id)viewport
{
  viewportCopy = viewport;
  v13.receiver = self;
  v13.super_class = SXComponentAnimationController;
  v6 = [(SXComponentAnimationController *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewport, viewport);
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

- (void)registerComponentView:(id)view animation:(id)animation
{
  viewCopy = view;
  animationCopy = animation;
  handlerClass = [animationCopy handlerClass];
  v8 = [(SXComponentAnimationController *)self animatingHandlerForComponent:viewCopy];
  if (!v8)
  {
    v8 = [[handlerClass alloc] initWithComponent:viewCopy withAnimation:animationCopy];
  }

  registeredComponents = [(SXComponentAnimationController *)self registeredComponents];
  [registeredComponents addObject:v8];

  if ([v8 state] == 4 && (objc_msgSend(v8, "animationShouldRepeat") & 1) != 0 || objc_msgSend(v8, "state") != 3 && objc_msgSend(v8, "state") != 4)
  {
    [v8 prepareAnimation];
  }

  [(SXComponentAnimationController *)self updateVisibleBoundsIfNeeded];
}

- (void)unregisterComponentView:(id)view
{
  v19 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  registeredComponents = [(SXComponentAnimationController *)self registeredComponents];
  v6 = [registeredComponents countByEnumeratingWithState:&v14 objects:v18 count:16];
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
        objc_enumerationMutation(registeredComponents);
      }

      v10 = *(*(&v14 + 1) + 8 * v9);
      component = [v10 component];

      if (component == viewCopy)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [registeredComponents countByEnumeratingWithState:&v14 objects:v18 count:16];
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

    registeredComponents2 = [(SXComponentAnimationController *)self registeredComponents];
    [registeredComponents2 removeObject:v12];

    registeredComponents = v12;
  }

LABEL_12:

LABEL_13:
}

- (void)startUpdatingAnimationForComponentView:(id)view
{
  v6 = [(SXComponentAnimationController *)self registeredHandlerForComponent:view];
  if (v6)
  {
    animatingComponents = [(SXComponentAnimationController *)self animatingComponents];
    if (([animatingComponents containsObject:v6] & 1) == 0)
    {
      state = [v6 state];

      if (state == 4)
      {
        goto LABEL_6;
      }

      animatingComponents = [(SXComponentAnimationController *)self animatingComponents];
      [animatingComponents addObject:v6];
    }
  }

LABEL_6:
  [(SXComponentAnimationController *)self updateVisibleBoundsIfNeeded];
}

- (void)stopUpdatingAnimationForComponentView:(id)view finishAnimation:(BOOL)animation
{
  animationCopy = animation;
  viewCopy = view;
  v6 = [(SXComponentAnimationController *)self animatingHandlerForComponent:?];
  v7 = v6;
  if (animationCopy && !v6)
  {
    v7 = [(SXComponentAnimationController *)self registeredHandlerForComponent:viewCopy];
  }

  if (v7)
  {
    if ([v7 state] != 4)
    {
      animationShouldRepeat = [v7 animationShouldRepeat];
      if ((animationShouldRepeat & 1) != 0 || animationCopy)
      {
        if (animationShouldRepeat)
        {
          goto LABEL_12;
        }
      }

      else
      {
        animation = [v7 animation];
        if ([animation userControllable])
        {

          goto LABEL_12;
        }

        state = [v7 state];

        if (state == 1)
        {
          goto LABEL_12;
        }
      }

      [v7 finishAnimation];
    }

LABEL_12:
    animatingComponents = [(SXComponentAnimationController *)self animatingComponents];
    [animatingComponents removeObject:v7];
  }
}

- (void)updateVisibleBoundsIfNeeded
{
  viewport = [(SXComponentAnimationController *)self viewport];
  if ([viewport isPopulated])
  {
    viewport2 = [(SXComponentAnimationController *)self viewport];
    if ([viewport2 appearState] == 2)
    {
    }

    else
    {
      viewport3 = [(SXComponentAnimationController *)self viewport];
      appearState = [viewport3 appearState];

      if (appearState != 1)
      {
        return;
      }
    }

    viewport = [(SXComponentAnimationController *)self viewport];
    [viewport dynamicBounds];
    [(SXComponentAnimationController *)self updateVisibleBounds:?];
  }
}

- (void)updateVisibleBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v66 = *MEMORY[0x1E69E9840];
  MinY = CGRectGetMinY(bounds);
  v59 = x;
  v60 = y;
  v67.origin.x = x;
  v67.origin.y = y;
  v9 = width;
  v67.size.width = width;
  v10 = height;
  v67.size.height = height;
  v11 = CGRectGetHeight(v67);
  viewport = [(SXComponentAnimationController *)self viewport];
  [viewport dynamicBounds];
  v58 = CGRectGetMinY(v68);
  viewport2 = [(SXComponentAnimationController *)self viewport];
  [viewport2 documentSize];
  v15 = v14;
  viewport3 = [(SXComponentAnimationController *)self viewport];
  [viewport3 bounds];
  v18 = v17;

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  animatingComponents = [(SXComponentAnimationController *)self animatingComponents];
  v20 = [animatingComponents countByEnumeratingWithState:&v61 objects:v65 count:16];
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
          objc_enumerationMutation(animatingComponents);
        }

        v25 = *(*(&v61 + 1) + 8 * v24);
        componentViewToAnimate = [v25 componentViewToAnimate];
        [(SXComponentAnimationController *)self convertRectForComponent:componentViewToAnimate];
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
            viewport4 = [(SXComponentAnimationController *)self viewport];
            [viewport4 documentSize];
            v41 = v40;
            viewport5 = [(SXComponentAnimationController *)self viewport];
            [viewport5 bounds];
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
          animation = [v25 animation];
          userControllable = [animation userControllable];

          if (!userControllable)
          {
            viewport6 = [(SXComponentAnimationController *)self viewport];
            appearState = [viewport6 appearState];

            if (appearState == 2)
            {
              goto LABEL_11;
            }

            goto LABEL_22;
          }

          animationHandlersToFinish = [(SXComponentAnimationController *)self animationHandlersToFinish];
          v50 = [animationHandlersToFinish containsObject:v25];

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
      v56 = [animatingComponents countByEnumeratingWithState:&v61 objects:v65 count:16];
      v21 = v56;
    }

    while (v56);
  }
}

- (CGRect)convertRectForComponent:(id)component
{
  componentCopy = component;
  [componentCopy center];
  v6 = v5;
  [componentCopy bounds];
  v8 = v6 - v7 * 0.5;
  [componentCopy center];
  v10 = v9;
  [componentCopy bounds];
  v12 = v10 - v11 * 0.5;
  [componentCopy bounds];
  v14 = v13;
  [componentCopy bounds];
  v16 = v15;
  viewport = [(SXComponentAnimationController *)self viewport];
  superview = [componentCopy superview];

  [viewport convertRect:superview fromView:{v8, v12, v14, v16}];
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

- (id)registeredHandlerForComponent:(id)component
{
  v17 = *MEMORY[0x1E69E9840];
  componentCopy = component;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  registeredComponents = [(SXComponentAnimationController *)self registeredComponents];
  v6 = [registeredComponents countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(registeredComponents);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        component = [v9 component];

        if (component == componentCopy)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [registeredComponents countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (id)animatingHandlerForComponent:(id)component
{
  v17 = *MEMORY[0x1E69E9840];
  componentCopy = component;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  registeredComponents = [(SXComponentAnimationController *)self registeredComponents];
  v6 = [registeredComponents countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(registeredComponents);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        component = [v9 component];

        if (component == componentCopy)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [registeredComponents countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (void)finishAnimationHandlerAnimated:(id)animated
{
  animatedCopy = animated;
  animationHandlersToFinish = [(SXComponentAnimationController *)self animationHandlersToFinish];

  if (animationHandlersToFinish)
  {
    animationHandlersToFinish = [(SXComponentAnimationController *)self animationHandlersToFinish];
    [animationHandlersToFinish addObject:animatedCopy];
  }

  else
  {
    v6 = [MEMORY[0x1E695DFA8] setWithObject:animatedCopy];
    animationHandlersToFinish = self->_animationHandlersToFinish;
    self->_animationHandlersToFinish = v6;
  }

  [(SXComponentAnimationController *)self startOrStopDisplayLink];
}

- (void)startOrStopDisplayLink
{
  displayLink = [(SXComponentAnimationController *)self displayLink];
  if (displayLink)
  {
  }

  else
  {
    animationHandlersToFinish = [(SXComponentAnimationController *)self animationHandlersToFinish];
    v9 = [animationHandlersToFinish count];

    if (v9)
    {
      v10 = [MEMORY[0x1E6979330] displayLinkWithTarget:self selector:sel_displayLinkTick_];
      displayLink = self->_displayLink;
      self->_displayLink = v10;

      displayLink2 = [(SXComponentAnimationController *)self displayLink];
      currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
      [(CADisplayLink *)displayLink2 addToRunLoop:currentRunLoop forMode:*MEMORY[0x1E695DA28]];

      v13 = displayLink2;
      goto LABEL_9;
    }
  }

  displayLink3 = [(SXComponentAnimationController *)self displayLink];
  if (!displayLink3)
  {
    return;
  }

  v5 = displayLink3;
  animationHandlersToFinish2 = [(SXComponentAnimationController *)self animationHandlersToFinish];
  v7 = [animationHandlersToFinish2 count];

  if (v7)
  {
    return;
  }

  displayLink4 = [(SXComponentAnimationController *)self displayLink];
  [displayLink4 invalidate];

  v13 = self->_displayLink;
  self->_displayLink = 0;
LABEL_9:
}

- (void)displayLinkTick:(id)tick
{
  v24 = *MEMORY[0x1E69E9840];
  [tick duration];
  v5 = v4;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  animationHandlersToFinish = [(SXComponentAnimationController *)self animationHandlersToFinish];
  v7 = [animationHandlersToFinish copy];

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
          animationHandlersToFinish2 = [(SXComponentAnimationController *)self animationHandlersToFinish];
          [animationHandlersToFinish2 removeObject:v14];

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