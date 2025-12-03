@interface PSPointerSceneSettingsExtension
+ (id)valueForUndefinedSetting:(id)setting;
- (CGAffineTransform)rootWindowTransform;
- (void)rootWindowTransform:(CGAffineTransform *)transform;
@end

@implementation PSPointerSceneSettingsExtension

+ (id)valueForUndefinedSetting:(id)setting
{
  if ([setting matchesProperty:sel_rootWindowTransform])
  {
    v3 = [MEMORY[0x277CCAE60] valueWithBytes:MEMORY[0x277CBF2C0] objCType:"{CGAffineTransform=dddddd}"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CGAffineTransform)rootWindowTransform
{
  v4 = [(PSPointerSceneSettingsExtension *)self valueForProperty:a3 expectedClass:objc_opt_class()];
  *&retstr->a = 0u;
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  if (v4)
  {
    v7 = v4;
    v5 = v4;
    if (!strcmp([v7 objCType], "{CGAffineTransform=dddddd}"))
    {
      [v7 getValue:retstr size:48];
    }
  }

  return MEMORY[0x2821F96F8]();
}

- (void)rootWindowTransform:(CGAffineTransform *)transform
{
  v5 = [MEMORY[0x277CCAE60] valueWithBytes:transform objCType:"{CGAffineTransform=dddddd}"];
  [(PSPointerSceneSettingsExtension *)self setValue:v5 forProperty:a2];
}

@end