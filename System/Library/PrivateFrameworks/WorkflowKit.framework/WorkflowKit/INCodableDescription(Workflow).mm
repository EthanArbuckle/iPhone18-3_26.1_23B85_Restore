@interface INCodableDescription(Workflow)
- (Class)wf_contentItemClassForCustomObjectWithNamespace:()Workflow;
@end

@implementation INCodableDescription(Workflow)

- (Class)wf_contentItemClassForCustomObjectWithNamespace:()Workflow
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = MEMORY[0x1E696AEC0];
  v7 = NSStringFromClass(v5);
  v8 = [a1 typeName];
  v9 = [v6 stringWithFormat:@"%@_%@_%@", v7, v4, v8];

  v10 = NSClassFromString(v9);
  if (v10)
  {
    v11 = v10;
LABEL_3:
    v12 = v11;
    goto LABEL_6;
  }

  os_unfair_lock_lock(&classRegistrationLock);
  ClassPair = objc_allocateClassPair(v5, [(NSString *)v9 cStringUsingEncoding:4], 0);
  if (!ClassPair)
  {
    os_unfair_lock_unlock(&classRegistrationLock);
    v11 = NSClassFromString(v9);
    goto LABEL_3;
  }

  v14 = ClassPair;
  v15 = a1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __82__INCodableDescription_Workflow__wf_contentItemClassForCustomObjectWithNamespace___block_invoke;
  aBlock[3] = &unk_1E8372EC0;
  v25 = v15;
  v16 = v15;
  v17 = _Block_copy(aBlock);
  v18 = imp_implementationWithBlock(v17);

  ClassMethod = class_getClassMethod(v5, sel_codableDescription);
  TypeEncoding = method_getTypeEncoding(ClassMethod);
  Class = object_getClass(v14);
  class_addMethod(Class, sel_codableDescription, v18, TypeEncoding);
  objc_registerClassPair(v14);
  os_unfair_lock_unlock(&classRegistrationLock);
  v22 = [(objc_class *)v14 properties];
  v12 = v14;

LABEL_6:

  return v12;
}

@end