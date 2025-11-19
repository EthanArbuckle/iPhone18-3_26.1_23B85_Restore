@interface SXComponentAnimationHandler
- (BOOL)isEqual:(id)a3;
- (SXComponentAnimationHandler)initWithComponent:(id)a3 withAnimation:(id)a4;
- (double)factorForVisibileBounds:(CGRect)a3 andAbsoluteComponentRect:(CGRect)a4;
- (void)finishAnimation;
- (void)prepareAnimation;
- (void)setState:(int64_t)a3;
- (void)updateAnimationWithFactor:(double)a3;
@end

@implementation SXComponentAnimationHandler

- (SXComponentAnimationHandler)initWithComponent:(id)a3 withAnimation:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SXComponentAnimationHandler;
  v9 = [(SXComponentAnimationHandler *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_component, a3);
    objc_storeStrong(&v10->_animation, a4);
    v10->_state = 1;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [v4 component];
  v6 = [(SXComponentAnimationHandler *)self component];
  if (v5 == v6)
  {
    v8 = [v4 animation];
    v9 = [(SXComponentAnimationHandler *)self animation];
    v7 = v8 == v9;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)prepareAnimation
{
  v4 = [(SXComponentAnimationHandler *)self component];
  v3 = [(SXComponentAnimationHandler *)self animation];
  [v4 animationDidStart:v3];
}

- (double)factorForVisibileBounds:(CGRect)a3 andAbsoluteComponentRect:(CGRect)a4
{
  width = a4.size.width;
  height = a4.size.height;
  y = a4.origin.y;
  x = a4.origin.x;
  v6 = a3.size.height;
  v7 = a3.size.width;
  v8 = a3.origin.y;
  v9 = a3.origin.x;
  MinY = CGRectGetMinY(a3);
  v17.origin.x = v9;
  v17.origin.y = v8;
  v17.size.width = v7;
  v17.size.height = v6;
  v11 = MinY + CGRectGetHeight(v17) * 0.75;
  v18.origin.x = v9;
  v18.origin.y = v8;
  v18.size.width = v7;
  v18.size.height = v6;
  v12 = CGRectGetMinY(v18);
  v19.origin.x = v9;
  v19.origin.y = v8;
  v19.size.width = v7;
  v19.size.height = v6;
  v13 = v12 + CGRectGetHeight(v19) * 0.25;
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  return fmin(fmax(1.0 - (CGRectGetMinY(v20) - v13) / (v11 - v13), 0.0), 1.0);
}

- (void)updateAnimationWithFactor:(double)a3
{
  self->_factor = a3;
  if ([(SXComponentAnimationHandler *)self state]!= 2)
  {

    [(SXComponentAnimationHandler *)self setState:2];
  }
}

- (void)finishAnimation
{
  [(SXComponentAnimationHandler *)self setState:4];
  v4 = [(SXComponentAnimationHandler *)self component];
  v3 = [(SXComponentAnimationHandler *)self animation];
  [v4 animationDidFinish:v3];
}

- (void)setState:(int64_t)a3
{
  if (a3 == 2)
  {
    v5 = [(SXComponentAnimationHandler *)self component];
    v6 = [(SXComponentAnimationHandler *)self animation];
    [v5 animationDidStart:v6];
  }

  self->_state = a3;
}

@end