@interface GPBRootObject
+ (BOOL)resolveClassMethod:(SEL)a3;
+ (void)globallyRegisterExtension:(id)a3;
+ (void)initialize;
@end

@implementation GPBRootObject

+ (void)initialize
{
  if (!qword_1004588F8)
  {
    qword_100458900 = dispatch_semaphore_create(1);
    v4 = off_100435CD0;
    qword_1004588F8 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &v4, &kCFTypeDictionaryValueCallBacks);
    qword_100458908 = objc_alloc_init(GPBExtensionRegistry);
  }

  v3 = [a1 superclass];
  if (v3 == objc_opt_class())
  {
    [a1 extensionRegistry];
  }
}

+ (void)globallyRegisterExtension:(id)a3
{
  v4 = [a3 singletonNameC];
  dispatch_semaphore_wait(qword_100458900, 0xFFFFFFFFFFFFFFFFLL);
  CFDictionarySetValue(qword_1004588F8, v4, a3);
  v5 = qword_100458900;

  dispatch_semaphore_signal(v5);
}

+ (BOOL)resolveClassMethod:(SEL)a3
{
  if (GPBResolveExtensionClassMethod(a1, a3))
  {
    return 1;
  }

  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___GPBRootObject;
  return objc_msgSendSuper2(&v6, "resolveClassMethod:", a3);
}

@end