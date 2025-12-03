@interface GPBRootObject
+ (BOOL)resolveClassMethod:(SEL)method;
+ (void)globallyRegisterExtension:(id)extension;
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

  v3 = [self superclass];
  if (v3 == objc_opt_class())
  {
    [self extensionRegistry];
  }
}

+ (void)globallyRegisterExtension:(id)extension
{
  singletonNameC = [extension singletonNameC];
  dispatch_semaphore_wait(qword_100458900, 0xFFFFFFFFFFFFFFFFLL);
  CFDictionarySetValue(qword_1004588F8, singletonNameC, extension);
  v5 = qword_100458900;

  dispatch_semaphore_signal(v5);
}

+ (BOOL)resolveClassMethod:(SEL)method
{
  if (GPBResolveExtensionClassMethod(self, method))
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___GPBRootObject;
  return objc_msgSendSuper2(&v6, "resolveClassMethod:", method);
}

@end