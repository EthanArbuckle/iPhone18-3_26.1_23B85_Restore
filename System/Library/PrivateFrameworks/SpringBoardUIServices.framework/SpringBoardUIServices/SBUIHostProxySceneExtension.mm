@interface SBUIHostProxySceneExtension
+ (id)clientComponents;
+ (id)clientSettingsExtensions;
+ (id)hostComponents;
@end

@implementation SBUIHostProxySceneExtension

+ (id)clientSettingsExtensions
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

+ (id)hostComponents
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

+ (id)clientComponents
{
  v4[1] = *MEMORY[0x1E69E9840];
  v2 = NSClassFromString(&cfstr_Sbhostproxycli.isa);
  if (v2)
  {
    v4[0] = v2;
    v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  }

  return v2;
}

@end