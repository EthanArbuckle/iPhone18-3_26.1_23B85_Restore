@interface BKMousePointerCAAnimationDriver
- (BKMousePointerCAAnimationDriver)initWithRelativeTranslation:(CGPoint)a3 animationSettings:(id)a4;
- (CGPoint)currentTranslation;
- (void)applyForTime:(double)a3;
@end

@implementation BKMousePointerCAAnimationDriver

- (CGPoint)currentTranslation
{
  x = self->_currentTranslation.x;
  y = self->_currentTranslation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)applyForTime:(double)a3
{
  self->_elapsedTime = a3;
  [(CABasicAnimation *)self->_animation applyForTime:self->_valueDictionary presentationObject:0 modelObject:?];
  v6 = [(NSMutableDictionary *)self->_valueDictionary objectForKey:@"value"];
  [v6 bs_CGPointValue];
  self->_currentTranslation.x = v4;
  self->_currentTranslation.y = v5;
}

- (BKMousePointerCAAnimationDriver)initWithRelativeTranslation:(CGPoint)a3 animationSettings:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v22.receiver = self;
  v22.super_class = BKMousePointerCAAnimationDriver;
  v8 = [(BKMousePointerAnimationDriver *)&v22 initWithRelativeTranslation:x, y];
  if (v8)
  {
    v9 = [v7 copy];
    animationSettings = v8->_animationSettings;
    v8->_animationSettings = v9;

    v11 = +[NSMutableDictionary dictionary];
    valueDictionary = v8->_valueDictionary;
    v8->_valueDictionary = v11;

    if ([(BSAnimationSettings *)v8->_animationSettings isSpringAnimation])
    {
      v13 = objc_alloc_init(CASpringAnimation);
      [(BSAnimationSettings *)v8->_animationSettings applyToCAAnimation:v13];
      [(CABasicAnimation *)v13 settlingDuration];
      v8->_duration = v14;
      [(CABasicAnimation *)v13 setDuration:?];
      animation = v8->_animation;
      v8->_animation = v13;
    }

    else
    {
      v16 = objc_alloc_init(CABasicAnimation);
      v17 = v8->_animation;
      v8->_animation = v16;

      [(BSAnimationSettings *)v8->_animationSettings applyToCAAnimation:v8->_animation];
      [(BSAnimationSettings *)v8->_animationSettings duration];
      v8->_duration = v18;
    }

    [(CABasicAnimation *)v8->_animation setBeginTime:0.0];
    [(CABasicAnimation *)v8->_animation setKeyPath:@"value"];
    [(CABasicAnimation *)v8->_animation setRemovedOnCompletion:0];
    [(CABasicAnimation *)v8->_animation setFillMode:kCAFillModeBoth];
    v19 = [NSValue bs_valueWithCGPoint:CGPointZero.x, CGPointZero.y];
    [(CABasicAnimation *)v8->_animation setFromValue:v19];

    v20 = [NSValue bs_valueWithCGPoint:x, y];
    [(CABasicAnimation *)v8->_animation setToValue:v20];
  }

  return v8;
}

@end