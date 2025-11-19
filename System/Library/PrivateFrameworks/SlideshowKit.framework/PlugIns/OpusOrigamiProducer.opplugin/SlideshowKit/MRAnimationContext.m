@interface MRAnimationContext
- (void)applyToMathExpression:(id)a3 atTime:(double)a4;
@end

@implementation MRAnimationContext

- (void)applyToMathExpression:(id)a3 atTime:(double)a4
{
  animationPath = self->animationPath;
  if (animationPath)
  {
    speed = animationPath->speed;
    *&speed = speed;
    [a3 setValue:@"_speed" forVariable:speed];
    v9 = a4 - self->animationPath->time;
    *&v9 = v9;
    [a3 setValue:@"_deltaTime" forVariable:v9];
    value = self->animationPath->value;
    *&value = value;
    [a3 setValue:@"_value" forVariable:value];
  }

  param1 = self->param1;
  if (param1)
  {
    v12 = *param1;
    *&v12 = *param1;
    [a3 setValue:@"param1" forVariable:v12];
  }

  param2 = self->param2;
  if (param2)
  {
    v14 = *param2;
    *&v14 = *param2;
    [a3 setValue:@"param2" forVariable:v14];
  }

  if (self->state)
  {

    [a3 setVariableValues:a4];
  }
}

@end