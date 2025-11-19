@interface SXTextTangierApplicationDelegate
+ (void)setup;
@end

@implementation SXTextTangierApplicationDelegate

+ (void)setup
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__SXTextTangierApplicationDelegate_setup__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (setup_onceToken != -1)
  {
    dispatch_once(&setup_onceToken, block);
  }
}

void __41__SXTextTangierApplicationDelegate_setup__block_invoke()
{
  v0 = objc_alloc_init(objc_opt_class());
  v1 = __applicationDelegate;
  __applicationDelegate = v0;

  [MEMORY[0x1E69D5698] setSurrogateDelegate:__applicationDelegate];
  v2 = [MEMORY[0x1E696AF00] currentThread];
  v3 = [v2 threadDictionary];
  v4 = *MEMORY[0x1E696A238];
  v5 = [v3 valueForKey:*MEMORY[0x1E696A238]];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = objc_alloc_init(MEMORY[0x1E696AAA8]);
    v7 = [MEMORY[0x1E696AF00] currentThread];
    v8 = [v7 threadDictionary];
    [v8 setValue:v9 forKey:v4];
  }
}

@end