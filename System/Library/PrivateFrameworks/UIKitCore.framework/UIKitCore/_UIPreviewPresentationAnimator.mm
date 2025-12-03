@interface _UIPreviewPresentationAnimator
- (CADisplayLink)displayLink;
- (_UIPreviewPresentationAnimator)initWithDuration:(double)duration advanceBlock:(id)block;
- (void)_advanceFromDisplayLink:(id)link;
- (void)stopAnimation;
@end

@implementation _UIPreviewPresentationAnimator

- (_UIPreviewPresentationAnimator)initWithDuration:(double)duration advanceBlock:(id)block
{
  blockCopy = block;
  v14.receiver = self;
  v14.super_class = _UIPreviewPresentationAnimator;
  v7 = [(_UIPreviewPresentationAnimator *)&v14 init];
  v8 = v7;
  if (v7)
  {
    [(_UIPreviewPresentationAnimator *)v7 setStartMediaTime:1.79769313e308];
    [(_UIPreviewPresentationAnimator *)v8 setDuration:duration];
    v9 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EA0]];
    [(_UIPreviewPresentationAnimator *)v8 setMediaTimingFunction:v9];

    [(_UIPreviewPresentationAnimator *)v8 setAdvanceBlock:blockCopy];
    v10 = [MEMORY[0x1E6979330] displayLinkWithTarget:v8 selector:sel__advanceFromDisplayLink_];
    mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
    [v10 addToRunLoop:mainRunLoop forMode:*MEMORY[0x1E695DA28]];

    [(_UIPreviewPresentationAnimator *)v8 setDisplayLink:v10];
    v12 = v8;
  }

  return v8;
}

- (void)stopAnimation
{
  displayLink = [(_UIPreviewPresentationAnimator *)self displayLink];
  [displayLink invalidate];

  [(_UIPreviewPresentationAnimator *)self setDisplayLink:0];

  [(_UIPreviewPresentationAnimator *)self setAdvanceBlock:0];
}

- (void)_advanceFromDisplayLink:(id)link
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
  mediaTimingFunction = [(_UIPreviewPresentationAnimator *)self mediaTimingFunction];
  *&v11 = v9;
  [mediaTimingFunction _solveForInput:v11];
  *&v9 = v12;
  v13 = v12;

  advanceBlock = [(_UIPreviewPresentationAnimator *)self advanceBlock];
  advanceBlock[2](v13);

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