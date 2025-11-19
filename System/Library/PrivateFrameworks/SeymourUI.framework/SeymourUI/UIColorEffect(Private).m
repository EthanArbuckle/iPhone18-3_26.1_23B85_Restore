@interface UIColorEffect(Private)
+ (id)sessionColorEffectDark;
+ (id)sessionColorEffectLight;
@end

@implementation UIColorEffect(Private)

+ (id)sessionColorEffectDark
{
  v3[0] = xmmword_20C14BFB0;
  v3[1] = xmmword_20C14BFC0;
  v3[2] = xmmword_20C14BFD0;
  v3[3] = xmmword_20C14BFE0;
  v3[4] = xmmword_20C14BFF0;
  v1 = [a1 _colorEffectCAMatrix:v3];

  return v1;
}

+ (id)sessionColorEffectLight
{
  v3[0] = xmmword_20C14C000;
  v3[1] = xmmword_20C14C010;
  v3[2] = xmmword_20C14C020;
  v4 = 1060864002;
  v6 = 0;
  v5 = 0;
  v7 = 0;
  v8 = 1065353216;
  v1 = [a1 _colorEffectCAMatrix:v3];

  return v1;
}

@end