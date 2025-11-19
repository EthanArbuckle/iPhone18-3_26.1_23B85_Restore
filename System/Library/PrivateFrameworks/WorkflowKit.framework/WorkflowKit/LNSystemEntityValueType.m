@interface LNSystemEntityValueType
@end

@implementation LNSystemEntityValueType

BOOL __83__LNSystemEntityValueType_ContentItem__wf_contentItemClassWithAppBundleIdentifier___block_invoke(uint64_t a1, void *a2, const char *a3, id block)
{
  v7 = imp_implementationWithBlock(block);
  ClassMethod = class_getClassMethod(*(a1 + 32), a3);
  TypeEncoding = method_getTypeEncoding(ClassMethod);
  Class = object_getClass(a2);

  return class_addMethod(Class, a3, v7, TypeEncoding);
}

@end