@interface SXComponentAnimationHandler
- (BOOL)isEqual:(id)equal;
- (SXComponentAnimationHandler)initWithComponent:(id)component withAnimation:(id)animation;
- (double)factorForVisibileBounds:(CGRect)bounds andAbsoluteComponentRect:(CGRect)rect;
- (void)finishAnimation;
- (void)prepareAnimation;
- (void)setState:(int64_t)state;
- (void)updateAnimationWithFactor:(double)factor;
@end

@implementation SXComponentAnimationHandler

- (SXComponentAnimationHandler)initWithComponent:(id)component withAnimation:(id)animation
{
  componentCopy = component;
  animationCopy = animation;
  v12.receiver = self;
  v12.super_class = SXComponentAnimationHandler;
  v9 = [(SXComponentAnimationHandler *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_component, component);
    objc_storeStrong(&v10->_animation, animation);
    v10->_state = 1;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  component = [equalCopy component];
  component2 = [(SXComponentAnimationHandler *)self component];
  if (component == component2)
  {
    animation = [equalCopy animation];
    animation2 = [(SXComponentAnimationHandler *)self animation];
    v7 = animation == animation2;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)prepareAnimation
{
  component = [(SXComponentAnimationHandler *)self component];
  animation = [(SXComponentAnimationHandler *)self animation];
  [component animationDidStart:animation];
}

- (double)factorForVisibileBounds:(CGRect)bounds andAbsoluteComponentRect:(CGRect)rect
{
  width = rect.size.width;
  height = rect.size.height;
  y = rect.origin.y;
  x = rect.origin.x;
  v6 = bounds.size.height;
  v7 = bounds.size.width;
  v8 = bounds.origin.y;
  v9 = bounds.origin.x;
  MinY = CGRectGetMinY(bounds);
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

- (void)updateAnimationWithFactor:(double)factor
{
  self->_factor = factor;
  if ([(SXComponentAnimationHandler *)self state]!= 2)
  {

    [(SXComponentAnimationHandler *)self setState:2];
  }
}

- (void)finishAnimation
{
  [(SXComponentAnimationHandler *)self setState:4];
  component = [(SXComponentAnimationHandler *)self component];
  animation = [(SXComponentAnimationHandler *)self animation];
  [component animationDidFinish:animation];
}

- (void)setState:(int64_t)state
{
  if (state == 2)
  {
    component = [(SXComponentAnimationHandler *)self component];
    animation = [(SXComponentAnimationHandler *)self animation];
    [component animationDidStart:animation];
  }

  self->_state = state;
}

@end