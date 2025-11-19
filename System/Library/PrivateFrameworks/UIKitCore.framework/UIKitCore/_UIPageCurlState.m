@interface _UIPageCurlState
- (BOOL)isCompatibleWithCurlOfType:(int64_t)a3 inDirection:(int64_t)a4;
- (CGPoint)initialLocation;
- (CGPoint)referenceLocation;
- (CGRect)_pageViewFrame;
- (UIView)backPageView;
- (UIView)frontPageView;
- (_UIPageCurlState)initWithPageCurl:(id)a3 andCurlType:(int64_t)a4 fromLocation:(CGPoint)a5 withReferenceLocation:(CGPoint)a6 inDirection:(int64_t)a7 withView:(id)a8 revealingView:(id)a9 completion:(id)a10 finally:(id)a11;
- (int64_t)_effectiveTransitionDirection;
- (void)addBackPageContent;
- (void)addFrontPageContent;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)cleanupWithFinishedState:(BOOL)a3 completedState:(BOOL)a4;
- (void)dealloc;
- (void)finally;
- (void)invalidatePageCurl;
- (void)setCurlState:(int64_t)a3 willComplete:(BOOL)a4;
@end

@implementation _UIPageCurlState

- (_UIPageCurlState)initWithPageCurl:(id)a3 andCurlType:(int64_t)a4 fromLocation:(CGPoint)a5 withReferenceLocation:(CGPoint)a6 inDirection:(int64_t)a7 withView:(id)a8 revealingView:(id)a9 completion:(id)a10 finally:(id)a11
{
  y = a6.y;
  x = a6.x;
  v17 = a5.y;
  v18 = a5.x;
  v33 = a3;
  v22 = a8;
  v23 = a9;
  v24 = a11;
  v34.receiver = self;
  v34.super_class = _UIPageCurlState;
  v25 = [(_UITransitionState *)&v34 initWithTransitionDirection:a7 completion:a10];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_pageCurl, a3);
    v26->_curlType = a4;
    v26->_initialLocation.x = v18;
    v26->_initialLocation.y = v17;
    v26->_referenceLocation.x = x;
    v26->_referenceLocation.y = y;
    objc_storeStrong(&v26->_frontView, a8);
    objc_storeStrong(&v26->_backView, a9);
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
    v30 = [v24 copy];
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
  v3 = [(_UIPageCurlState *)self pageCurl];
  [v3 _pageViewFrame:{-[_UITransitionState transitionDirection](self, "transitionDirection") == 1}];
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
      v8 = [(UIView *)self->_frontPageView layer];
      [(_UIPageCurl *)pageCurl _ensureCurlFilterOnLayer:v8];

      if (self->_backView)
      {
        v9 = [(UIView *)self->_frontPageView layer];
        v10 = [v9 valueForKeyPath:@"filters.curl"];
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
      v8 = [(UIView *)self->_backPageView layer];
      [(_UIPageCurl *)pageCurl _ensureCurlFilterOnLayer:v8];

      v9 = [(UIView *)self->_backPageView layer];
      v10 = [(UIView *)self->_backPageView layer];
      v11 = [(_UIPageCurl *)self->_pageCurl _spineLocation];
      memset(&v19, 0, sizeof(v19));
      CATransform3DMakeScale(&v19, -1.0, 1.0, 1.0);
      if (v11 <= 0x20 && ((1 << v11) & 0x100000104) != 0)
      {
        v20 = v19;
        CATransform3DRotate(&v21, &v20, 3.14159265, 0.0, 0.0, 1.0);
        v19 = v21;
      }

      [v9 setSublayerTransform:&v19];

      v13 = [(UIView *)self->_backPageView layer];
      v14 = [v13 valueForKeyPath:@"filters.curl"];

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
  v9 = [(UIView *)self->_frontPageView superview];
  [(UIView *)frontPageView convertPoint:v9 fromView:v6, v8];
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
  v9 = [(UIView *)self->_backPageView superview];
  [(UIView *)backPageView convertPoint:v9 fromView:v6, v8];
  [(UIView *)backView setCenter:?];
}

- (void)setCurlState:(int64_t)a3 willComplete:(BOOL)a4
{
  curlType = self->_curlType;
  if (curlType == 4 || curlType == 1)
  {
    if (self->_curlState != 1)
    {
LABEL_9:
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:a2 object:self file:@"_UIPageCurl.m" lineNumber:420 description:{@"Inconsistent curl state: current=%ld, updated=%ld", self->_curlState, a3}];
    }
  }

  else if (self->_curlState > a3)
  {
    goto LABEL_9;
  }

  self->_curlState = a3;
  self->_willComplete = a4;
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

- (void)cleanupWithFinishedState:(BOOL)a3 completedState:(BOOL)a4
{
  v5.receiver = self;
  v5.super_class = _UIPageCurlState;
  [(_UITransitionState *)&v5 cleanupWithFinishedState:a3 completedState:a4];
  [(UIView *)self->_frontPageView removeFromSuperview];
  [(UIView *)self->_backPageView removeFromSuperview];
  [(_UIPageCurlState *)self finally];
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v6 = a3;
  v7 = self->_completionCount - 1;
  self->_completionCount = v7;
  if (!v7)
  {
    curlState = self->_curlState;
    if ((curlState | 4) == 5)
    {
      self->_finished = a4;
      v9 = v6;
      [(_UIPageCurl *)self->_pageCurl _pageCurlAnimationDidStop:v6 withState:self];
      v6 = v9;
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

- (BOOL)isCompatibleWithCurlOfType:(int64_t)a3 inDirection:(int64_t)a4
{
  if ([(_UIPageCurlState *)self curlType]!= 1 && [(_UIPageCurlState *)self curlType]!= 4 && [(_UIPageCurlState *)self curlState]!= 5)
  {
    return 0;
  }

  v7 = [(_UIPageCurlState *)self curlType];
  v8 = v7;
  if (a3 <= 2 && v7 < 3 || (result = 0, a3 >= 3) && v8 >= 3)
  {
    v10.receiver = self;
    v10.super_class = _UIPageCurlState;
    return [(_UITransitionState *)&v10 isCompatibleWithTransitionInDirection:a4];
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