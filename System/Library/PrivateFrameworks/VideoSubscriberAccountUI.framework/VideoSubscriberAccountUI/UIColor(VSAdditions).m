@interface UIColor(VSAdditions)
+ (id)vsa_dynamicColorWithLightStyleColor:()VSAdditions darkStyleColor:;
+ (id)vsa_opacityADarkColor;
+ (id)vsa_opacityADynamicColor;
+ (id)vsa_opacityALightColor;
+ (id)vsa_opacityBDarkColor;
+ (id)vsa_opacityBDynamicColor;
+ (id)vsa_opacityBLightColor;
+ (id)vsa_opacityCDarkColor;
+ (id)vsa_opacityCDynamicColor;
+ (id)vsa_opacityCLightColor;
@end

@implementation UIColor(VSAdditions)

+ (id)vsa_dynamicColorWithLightStyleColor:()VSAdditions darkStyleColor:
{
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x277D75348];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __75__UIColor_VSAdditions__vsa_dynamicColorWithLightStyleColor_darkStyleColor___block_invoke;
  v12[3] = &unk_279E1A748;
  v13 = v6;
  v14 = v5;
  v8 = v5;
  v9 = v6;
  v10 = [v7 colorWithDynamicProvider:v12];

  return v10;
}

+ (id)vsa_opacityADarkColor
{
  if (vsa_opacityADarkColor___once != -1)
  {
    +[UIColor(VSAdditions) vsa_opacityADarkColor];
  }

  v1 = vsa_opacityADarkColor___color;

  return v1;
}

+ (id)vsa_opacityALightColor
{
  if (vsa_opacityALightColor___once != -1)
  {
    +[UIColor(VSAdditions) vsa_opacityALightColor];
  }

  v1 = vsa_opacityALightColor___color;

  return v1;
}

+ (id)vsa_opacityADynamicColor
{
  v2 = [a1 vsa_opacityALightColor];
  v3 = [a1 vsa_opacityADarkColor];
  v4 = [a1 vsa_dynamicColorWithLightStyleColor:v2 darkStyleColor:v3];

  return v4;
}

+ (id)vsa_opacityBDarkColor
{
  if (vsa_opacityBDarkColor___once != -1)
  {
    +[UIColor(VSAdditions) vsa_opacityBDarkColor];
  }

  v1 = vsa_opacityBDarkColor___color;

  return v1;
}

+ (id)vsa_opacityBLightColor
{
  if (vsa_opacityBLightColor___once != -1)
  {
    +[UIColor(VSAdditions) vsa_opacityBLightColor];
  }

  v1 = vsa_opacityBLightColor___color;

  return v1;
}

+ (id)vsa_opacityBDynamicColor
{
  v2 = [a1 vsa_opacityBLightColor];
  v3 = [a1 vsa_opacityBDarkColor];
  v4 = [a1 vsa_dynamicColorWithLightStyleColor:v2 darkStyleColor:v3];

  return v4;
}

+ (id)vsa_opacityCDarkColor
{
  if (vsa_opacityCDarkColor___once != -1)
  {
    +[UIColor(VSAdditions) vsa_opacityCDarkColor];
  }

  v1 = vsa_opacityCDarkColor___color;

  return v1;
}

+ (id)vsa_opacityCLightColor
{
  if (vsa_opacityCLightColor___once[0] != -1)
  {
    +[UIColor(VSAdditions) vsa_opacityCLightColor];
  }

  v1 = vsa_opacityCLightColor___color;

  return v1;
}

+ (id)vsa_opacityCDynamicColor
{
  v2 = [a1 vsa_opacityCLightColor];
  v3 = [a1 vsa_opacityCDarkColor];
  v4 = [a1 vsa_dynamicColorWithLightStyleColor:v2 darkStyleColor:v3];

  return v4;
}

@end