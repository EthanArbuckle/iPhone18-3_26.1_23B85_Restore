@interface _UIPreviewPresentationAnimator
- (CADisplayLink)displayLink;
- (_UIPreviewPresentationAnimator)initWithDuration:(double)a3 advanceBlock:(id)a4;
- (void)_advanceFromDisplayLink:(id)a3;
- (void)stopAnimation;
@end

@implementation _UIPreviewPresentationAnimator

- (_UIPreviewPresentationAnimator)initWithDuration:(double)a3 advanceBlock:(id)a4
{
  v6 = a4;
  v14.receiver = self;
  v14.super_class = _UIPreviewPresentationAnimator;
  v7 = [(_UIPreviewPresentationAnimator *)&v14 init];
  v8 = v7;
  if (v7)
  {
    [(_UIPreviewPresentationAnimator *)v7 setStartMediaTime:1.79769313e308];
    [(_UIPreviewPresentationAnimator *)v8 setDuration:a3];
    v9 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EA0]];
    [(_UIPreviewPresentationAnimator *)v8 setMediaTimingFunction:v9];

    [(_UIPreviewPresentationAnimator *)v8 setAdvanceBlock:v6];
    v10 = [MEMORY[0x1E6979330] displayLinkWithTarget:v8 selector:sel__advanceFromDisplayLink_];
    v11 = [MEMORY[0x1E695DFD0] mainRunLoop];
    [v10 addToRunLoop:v11 forMode:*MEMORY[0x1E695DA28]];

    [(_UIPreviewPresentationAnimator *)v8 setDisplayLink:v10];
    v12 = v8;
  }

  return v8;
}

- (void)stopAnimation
{
  v3 = [(_UIPreviewPresentationAnimator *)self displayLink];
  [v3 invalidate];

  [(_UIPreviewPresentationAnimator *)self setDisplayLink:0];

  [(_UIPreviewPresentationAnimator *)self setAdvanceBlock:0];
}

- (void)_advanceFromDisplayLink:(id)a3
{
  v4 = CACurrentMediaTime();
  [(_UIPreviewPresentationAnimator *)self startMediaTime];
  v6 = v5;
  if (v5 == 1.79769313e308)
  {
    [(_UIPreviewPresentationAnimator *)self setStartMediaTime:v4];
    v6 = v4;
  }

  [(_UIPreviewPresentationAnimator *)self duration];
  v8 = v4 - v6;
  if (v4 - v6 >= v7)
  {
    v8 = v7;
  }

  v9 = v8 / v7;
  v10 = [(_UIPreviewPresentationAnimator *)self mediaTimingFunction];
  *&v11 = v9;
  [v10 _solveForInput:v11];
  *&v9 = v12;
  v13 = v12;

  v14 = [(_UIPreviewPresentationAnimator *)self advanceBlock];
  v14[2](v13);

  if (*&v9 >= 1.0)
  {

    [(_UIPreviewPresentationAnimator *)self stopAnimation];
  }
}

- (CADisplayLink)displayLink
{
  WeakRetained = objc_loadWeakRetained(&self->_displayLink);

  return WeakRetained;
}

@end