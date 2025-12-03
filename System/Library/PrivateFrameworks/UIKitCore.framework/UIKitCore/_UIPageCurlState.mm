@interface _UIPageCurlState
- (BOOL)isCompatibleWithCurlOfType:(int64_t)type inDirection:(int64_t)direction;
- (CGPoint)initialLocation;
- (CGPoint)referenceLocation;
- (CGRect)_pageViewFrame;
- (UIView)backPageView;
- (UIView)frontPageView;
- (_UIPageCurlState)initWithPageCurl:(id)curl andCurlType:(int64_t)type fromLocation:(CGPoint)location withReferenceLocation:(CGPoint)referenceLocation inDirection:(int64_t)direction withView:(id)view revealingView:(id)revealingView completion:(id)self0 finally:(id)self1;
- (int64_t)_effectiveTransitionDirection;
- (void)addBackPageContent;
- (void)addFrontPageContent;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)cleanupWithFinishedState:(BOOL)state completedState:(BOOL)completedState;
- (void)dealloc;
- (void)finally;
- (void)invalidatePageCurl;
- (void)setCurlState:(int64_t)state willComplete:(BOOL)complete;
@end

@implementation _UIPageCurlState

- (_UIPageCurlState)initWithPageCurl:(id)curl andCurlType:(int64_t)type fromLocation:(CGPoint)location withReferenceLocation:(CGPoint)referenceLocation inDirection:(int64_t)direction withView:(id)view revealingView:(id)revealingView completion:(id)self0 finally:(id)self1
{
  y = referenceLocation.y;
  x = referenceLocation.x;
  v17 = location.y;
  v18 = location.x;
  curlCopy = curl;
  viewCopy = view;
  revealingViewCopy = revealingView;
  finallyCopy = finally;
  v34.receiver = self;
  v34.super_class = _UIPageCurlState;
  v25 = [(_UITransitionState *)&v34 initWithTransitionDirection:direction completion:completion];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_pageCurl, curl);
    v26->_curlType = type;
    v26->_initialLocation.x = v18;
    v26->_initialLocation.y = v17;
    v26->_referenceLocation.x = x;
    v26->_referenceLocation.y = y;
    objc_storeStrong(&v26->_frontView, view);
    objc_storeStrong(&v26->_backView, revealingView);
    curlType = v26->_curlType;
    if (curlType == 4 || curlType == 1)
    {
      v29 = 1;
    }

    else
    {
      v29 = 2;
    }

    v26->_curlState = v29;
    v26->_willComplete = 1;
    v30 = [finallyCopy copy];
    finally = v26->_finally;
    v26->_finally = v30;
  }

  return v26;
}

- (void)dealloc
{
  [(_UIPageCurlState *)self finally];
  v3.receiver = self;
  v3.super_class = _UIPageCurlState;
  [(_UIPageCurlState *)&v3 dealloc];
}

- (void)invalidatePageCurl
{
  pageCurl = self->_pageCurl;
  self->_pageCurl = 0;
}

- (CGRect)_pageViewFrame
{
  pageCurl = [(_UIPageCurlState *)self pageCurl];
  [pageCurl _pageViewFrame:{-[_UITransitionState transitionDirection](self, "transitionDirection") == 1}];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (UIView)frontPageView
{
  if (self->_frontView)
  {
    frontPageView = self->_frontPageView;
    if (frontPageView)
    {
      [(_UIPageCurlState *)self _pageViewFrame];
      [(UIView *)frontPageView setFrame:?];
    }

    else
    {
      v4 = [UIView alloc];
      [(_UIPageCurlState *)self _pageViewFrame];
      v5 = [(UIView *)v4 initWithFrame:?];
      v6 = self->_frontPageView;
      self->_frontPageView = v5;

      pageCurl = self->_pageCurl;
      layer = [(UIView *)self->_frontPageView layer];
      [(_UIPageCurl *)pageCurl _ensureCurlFilterOnLayer:layer];

      if (self->_backView)
      {
        layer2 = [(UIView *)self->_frontPageView layer];
        v10 = [layer2 valueForKeyPath:@"filters.curl"];
        v11 = [MEMORY[0x1E696AD98] numberWithBool:0];
        [v10 setValue:v11 forKey:@"inputBackEnabled"];
      }
    }
  }

  v12 = self->_frontPageView;

  return v12;
}

- (UIView)backPageView
{
  if (self->_backView)
  {
    backPageView = self->_backPageView;
    if (backPageView)
    {
      [(_UIPageCurlState *)self _pageViewFrame];
      [(UIView *)backPageView setFrame:?];
    }

    else
    {
      v4 = [UIView alloc];
      [(_UIPageCurlState *)self _pageViewFrame];
      v5 = [(UIView *)v4 initWithFrame:?];
      v6 = self->_backPageView;
      self->_backPageView = v5;

      pageCurl = self->_pageCurl;
      layer = [(UIView *)self->_backPageView layer];
      [(_UIPageCurl *)pageCurl _ensureCurlFilterOnLayer:layer];

      layer2 = [(UIView *)self->_backPageView layer];
      layer3 = [(UIView *)self->_backPageView layer];
      _spineLocation = [(_UIPageCurl *)self->_pageCurl _spineLocation];
      memset(&v19, 0, sizeof(v19));
      CATransform3DMakeScale(&v19, -1.0, 1.0, 1.0);
      if (_spineLocation <= 0x20 && ((1 << _spineLocation) & 0x100000104) != 0)
      {
        v20 = v19;
        CATransform3DRotate(&v21, &v20, 3.14159265, 0.0, 0.0, 1.0);
        v19 = v21;
      }

      [layer2 setSublayerTransform:&v19];

      layer4 = [(UIView *)self->_backPageView layer];
      v14 = [layer4 valueForKeyPath:@"filters.curl"];

      v15 = [MEMORY[0x1E696AD98] numberWithBool:0];
      [v14 setValue:v15 forKey:@"inputFrontEnabled"];

      v16 = [UIColor colorWithWhite:1.0 alpha:0.0];
      [v14 setValue:objc_msgSend(v16 forKey:{"CGColor"), @"inputBackColor0"}];
    }
  }

  v17 = self->_backPageView;

  return v17;
}

- (void)addFrontPageContent
{
  [(UIView *)self->_frontPageView addSubview:self->_frontView];
  frontView = self->_frontView;
  frontPageView = self->_frontPageView;
  [(UIView *)frontPageView center];
  v6 = v5;
  v8 = v7;
  superview = [(UIView *)self->_frontPageView superview];
  [(UIView *)frontPageView convertPoint:superview fromView:v6, v8];
  [(UIView *)frontView setCenter:?];
}

- (void)addBackPageContent
{
  [(UIView *)self->_backPageView addSubview:self->_backView];
  backView = self->_backView;
  backPageView = self->_backPageView;
  [(UIView *)backPageView center];
  v6 = v5;
  v8 = v7;
  superview = [(UIView *)self->_backPageView superview];
  [(UIView *)backPageView convertPoint:superview fromView:v6, v8];
  [(UIView *)backView setCenter:?];
}

- (void)setCurlState:(int64_t)state willComplete:(BOOL)complete
{
  curlType = self->_curlType;
  if (curlType == 4 || curlType == 1)
  {
    if (self->_curlState != 1)
    {
LABEL_9:
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UIPageCurl.m" lineNumber:420 description:{@"Inconsistent curl state: current=%ld, updated=%ld", self->_curlState, state}];
    }
  }

  else if (self->_curlState > state)
  {
    goto LABEL_9;
  }

  self->_curlState = state;
  self->_willComplete = complete;
}

- (void)finally
{
  finally = self->_finally;
  if (finally)
  {
    finally[2](finally, a2);
    finally = self->_finally;
  }

  self->_finally = 0;
}

- (void)cleanupWithFinishedState:(BOOL)state completedState:(BOOL)completedState
{
  v5.receiver = self;
  v5.super_class = _UIPageCurlState;
  [(_UITransitionState *)&v5 cleanupWithFinishedState:state completedState:completedState];
  [(UIView *)self->_frontPageView removeFromSuperview];
  [(UIView *)self->_backPageView removeFromSuperview];
  [(_UIPageCurlState *)self finally];
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  stopCopy = stop;
  v7 = self->_completionCount - 1;
  self->_completionCount = v7;
  if (!v7)
  {
    curlState = self->_curlState;
    if ((curlState | 4) == 5)
    {
      self->_finished = finished;
      v9 = stopCopy;
      [(_UIPageCurl *)self->_pageCurl _pageCurlAnimationDidStop:stopCopy withState:self];
      stopCopy = v9;
    }

    else if (curlState >= 3)
    {
      self->_curlState = 4;
    }
  }
}

- (int64_t)_effectiveTransitionDirection
{
  willComplete = self->_willComplete;
  result = [(_UITransitionState *)self transitionDirection];
  if (!willComplete)
  {
    return result == 0;
  }

  return result;
}

- (BOOL)isCompatibleWithCurlOfType:(int64_t)type inDirection:(int64_t)direction
{
  if ([(_UIPageCurlState *)self curlType]!= 1 && [(_UIPageCurlState *)self curlType]!= 4 && [(_UIPageCurlState *)self curlState]!= 5)
  {
    return 0;
  }

  curlType = [(_UIPageCurlState *)self curlType];
  v8 = curlType;
  if (type <= 2 && curlType < 3 || (result = 0, type >= 3) && v8 >= 3)
  {
    v10.receiver = self;
    v10.super_class = _UIPageCurlState;
    return [(_UITransitionState *)&v10 isCompatibleWithTransitionInDirection:direction];
  }

  return result;
}

- (CGPoint)initialLocation
{
  x = self->_initialLocation.x;
  y = self->_initialLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)referenceLocation
{
  x = self->_referenceLocation.x;
  y = self->_referenceLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

@end