@interface MRAnimationContext
- (void)applyToMathExpression:(id)expression atTime:(double)time;
@end

@implementation MRAnimationContext

- (void)applyToMathExpression:(id)expression atTime:(double)time
{
  animationPath = self->animationPath;
  if (animationPath)
  {
    speed = animationPath->speed;
    *&speed = speed;
    [expression setValue:@"_speed" forVariable:speed];
    v9 = time - self->animationPath->time;
    *&v9 = v9;
    [expression setValue:@"_deltaTime" forVariable:v9];
    value = self->animationPath->value;
    *&value = value;
    [expression setValue:@"_value" forVariable:value];
  }

  param1 = self->param1;
  if (param1)
  {
    v12 = *param1;
    *&v12 = *param1;
    [expression setValue:@"param1" forVariable:v12];
  }

  param2 = self->param2;
  if (param2)
  {
    v14 = *param2;
    *&v14 = *param2;
    [expression setValue:@"param2" forVariable:v14];
  }

  if (self->state)
  {

    [expression setVariableValues:time];
  }
}

@end