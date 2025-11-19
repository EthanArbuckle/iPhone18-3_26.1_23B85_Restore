@interface _UIPercentDrivenInteractionEffect
- (_UIPercentDrivenInteractionEffect)initWithProgressBlock:(id)a3;
- (void)interaction:(id)a3 didChangeWithContext:(id)a4;
@end

@implementation _UIPercentDrivenInteractionEffect

- (_UIPercentDrivenInteractionEffect)initWithProgressBlock:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _UIPercentDrivenInteractionEffect;
  v5 = [(_UIPercentDrivenInteractionEffect *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(_UIPercentDrivenInteractionEffect *)v5 setProgressBlock:v4];
  }

  return v6;
}

- (void)interaction:(id)a3 didChangeWithContext:(id)a4
{
  v5 = a4;
  v6 = [(_UIPercentDrivenInteractionEffect *)self progressBlock];
  v6[2](v6, v5);
}

@end