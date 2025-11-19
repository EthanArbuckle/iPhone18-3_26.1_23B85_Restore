@interface LNCodableValueType
@end

@implementation LNCodableValueType

BOOL __54__LNCodableValueType_ContentItem__wf_contentItemClass__block_invoke(uint64_t a1, void *a2, const char *a3, id block)
{
  v7 = imp_implementationWithBlock(block);
  ClassMethod = class_getClassMethod(*(a1 + 32), a3);
  TypeEncoding = method_getTypeEncoding(ClassMethod);
  Class = object_getClass(a2);

  return class_addMethod(Class, a3, v7, TypeEncoding);
}

@end