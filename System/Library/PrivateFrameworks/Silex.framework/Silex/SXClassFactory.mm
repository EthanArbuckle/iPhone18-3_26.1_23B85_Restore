@interface SXClassFactory
+ (Class)classForBaseClass:(Class)a3 type:(id)a4;
+ (id)valueClassBlockForBaseClass:(Class)a3;
+ (void)initialize;
+ (void)registerClass:(Class)a3 type:(id)a4 baseClass:(Class)a5;
+ (void)startTesting;
+ (void)stopTesting;
@end

@implementation SXClassFactory

+ (void)initialize
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = __registeredClasses;
  __registeredClasses = v2;

  +[SXJSONActionClassRegister registerClasses];
  +[SXAdditionClassRegister registerClasses];
  +[SXComponentAnimationClassRegister registerClasses];
  +[SXComponentBehaviorClassRegister registerClasses];
  +[SXComponentStyleClassRegister registerClasses];
  +[SXDataFormatClassRegister registerClasses];

  +[SXResourceClassRegister registerClasses];
}

+ (void)registerClass:(Class)a3 type:(id)a4 baseClass:(Class)a5
{
  v8 = a4;
  v7 = [__registeredClasses objectForKey:a5];
  if (!v7)
  {
    v7 = [MEMORY[0x1E695DF90] dictionary];
    [__registeredClasses setObject:v7 forKey:a5];
  }

  [v7 setObject:a3 forKey:v8];
}

+ (id)valueClassBlockForBaseClass:(Class)a3
{
  v4 = [__registeredClasses objectForKey:?];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__SXClassFactory_valueClassBlockForBaseClass___block_invoke;
  v8[3] = &unk_1E84FFB70;
  v9 = v4;
  v10 = a3;
  v5 = v4;
  v6 = MEMORY[0x1DA716BE0](v8);

  return v6;
}

void *__46__SXClassFactory_valueClassBlockForBaseClass___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectForKey:a2];
  v4 = v3;
  if (!v3)
  {
    v4 = *(a1 + 40);
  }

  v5 = v4;

  return v4;
}

+ (Class)classForBaseClass:(Class)a3 type:(id)a4
{
  v5 = __registeredClasses;
  v6 = a4;
  v7 = [v5 objectForKey:a3];
  v8 = [v7 objectForKey:v6];

  if (v8)
  {
    a3 = v8;
  }

  v9 = a3;

  return a3;
}

+ (void)startTesting
{
  objc_storeStrong(&__registeredClassesWhileTesting, __registeredClasses);
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = __registeredClasses;
  __registeredClasses = v2;

  MEMORY[0x1EEE66BB8](v2, v3);
}

+ (void)stopTesting
{
  objc_storeStrong(&__registeredClasses, __registeredClassesWhileTesting);
  v2 = __registeredClassesWhileTesting;
  __registeredClassesWhileTesting = 0;
}

@end