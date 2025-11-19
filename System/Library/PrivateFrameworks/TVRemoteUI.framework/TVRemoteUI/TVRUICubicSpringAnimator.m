@interface TVRUICubicSpringAnimator
+ (id)standardSpringAnimator;
- (id)_basicAnimationForView:(id)a3 withKeyPath:(id)a4;
@end

@implementation TVRUICubicSpringAnimator

+ (id)standardSpringAnimator
{
  v2 = objc_alloc(objc_opt_class());
  v3 = +[TVRUICubicSpringTimingParameters standardTimingParameters];
  v4 = [v2 initWithDuration:v3 timingParameters:0.0];

  return v4;
}

- (id)_basicAnimationForView:(id)a3 withKeyPath:(id)a4
{
  v10.receiver = self;
  v10.super_class = TVRUICubicSpringAnimator;
  v5 = [(UIViewPropertyAnimator *)&v10 _basicAnimationForView:a3 withKeyPath:a4];
  v6 = [(UIViewPropertyAnimator *)self timingParameters];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 springCubicTimingParameters];
    v8 = [v7 _mediaTimingFunction];

    [v5 setTimingFunction:v8];
  }

  return v5;
}

@end