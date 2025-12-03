@interface SXClassFactory
+ (Class)classForBaseClass:(Class)class type:(id)type;
+ (id)valueClassBlockForBaseClass:(Class)class;
+ (void)initialize;
+ (void)registerClass:(Class)class type:(id)type baseClass:(Class)baseClass;
+ (void)startTesting;
+ (void)stopTesting;
@end

@implementation SXClassFactory

+ (void)initialize
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v3 = __registeredClasses;
  __registeredClasses = dictionary;

  +[SXJSONActionClassRegister registerClasses];
  +[SXAdditionClassRegister registerClasses];
  +[SXComponentAnimationClassRegister registerClasses];
  +[SXComponentBehaviorClassRegister registerClasses];
  +[SXComponentStyleClassRegister registerClasses];
  +[SXDataFormatClassRegister registerClasses];

  +[SXResourceClassRegister registerClasses];
}

+ (void)registerClass:(Class)class type:(id)type baseClass:(Class)baseClass
{
  typeCopy = type;
  dictionary = [__registeredClasses objectForKey:baseClass];
  if (!dictionary)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [__registeredClasses setObject:dictionary forKey:baseClass];
  }

  [dictionary setObject:class forKey:typeCopy];
}

+ (id)valueClassBlockForBaseClass:(Class)class
{
  v4 = [__registeredClasses objectForKey:?];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__SXClassFactory_valueClassBlockForBaseClass___block_invoke;
  v8[3] = &unk_1E84FFB70;
  v9 = v4;
  classCopy = class;
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

+ (Class)classForBaseClass:(Class)class type:(id)type
{
  v5 = __registeredClasses;
  typeCopy = type;
  v7 = [v5 objectForKey:class];
  v8 = [v7 objectForKey:typeCopy];

  if (v8)
  {
    class = v8;
  }

  classCopy = class;

  return class;
}

+ (void)startTesting
{
  objc_storeStrong(&__registeredClassesWhileTesting, __registeredClasses);
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v3 = __registeredClasses;
  __registeredClasses = dictionary;

  MEMORY[0x1EEE66BB8](dictionary, v3);
}

+ (void)stopTesting
{
  objc_storeStrong(&__registeredClasses, __registeredClassesWhileTesting);
  v2 = __registeredClassesWhileTesting;
  __registeredClassesWhileTesting = 0;
}

@end