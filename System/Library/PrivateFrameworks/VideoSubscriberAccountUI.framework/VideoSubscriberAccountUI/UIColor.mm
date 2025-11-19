@interface UIColor
@end

@implementation UIColor

id __75__UIColor_VSAdditions__vsa_dynamicColorWithLightStyleColor_darkStyleColor___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 userInterfaceStyle];
  v4 = 40;
  if (v3 == 2)
  {
    v4 = 32;
  }

  v5 = *(a1 + v4);

  return v5;
}

uint64_t __45__UIColor_VSAdditions__vsa_opacityADarkColor__block_invoke()
{
  vsa_opacityADarkColor___color = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:1.0];

  return MEMORY[0x2821F96F8]();
}

uint64_t __46__UIColor_VSAdditions__vsa_opacityALightColor__block_invoke()
{
  vsa_opacityALightColor___color = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:1.0];

  return MEMORY[0x2821F96F8]();
}

uint64_t __45__UIColor_VSAdditions__vsa_opacityBDarkColor__block_invoke()
{
  vsa_opacityBDarkColor___color = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.5];

  return MEMORY[0x2821F96F8]();
}

uint64_t __46__UIColor_VSAdditions__vsa_opacityBLightColor__block_invoke()
{
  vsa_opacityBLightColor___color = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];

  return MEMORY[0x2821F96F8]();
}

uint64_t __45__UIColor_VSAdditions__vsa_opacityCDarkColor__block_invoke()
{
  vsa_opacityCDarkColor___color = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.3];

  return MEMORY[0x2821F96F8]();
}

uint64_t __46__UIColor_VSAdditions__vsa_opacityCLightColor__block_invoke()
{
  vsa_opacityCLightColor___color = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.4];

  return MEMORY[0x2821F96F8]();
}

@end