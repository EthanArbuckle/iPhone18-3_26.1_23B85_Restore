@interface _UITargetedProxy
+ (id)proxyWithTarget:(id)target;
- (id)description;
- (id)methodSignatureForSelector:(SEL)selector;
@end

@implementation _UITargetedProxy

+ (id)proxyWithTarget:(id)target
{
  targetCopy = target;
  if (!targetCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"target must not be nil"];
  }

  v5 = [self alloc];
  [v5 _setTarget:targetCopy];

  return v5;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  Superclass = objc_opt_class();
  do
  {
    InstanceMethod = class_getInstanceMethod(Superclass, selector);
    if (InstanceMethod)
    {
      v7 = [MEMORY[0x1E695DF68] signatureWithObjCTypes:method_getTypeEncoding(InstanceMethod)];
      goto LABEL_8;
    }

    Superclass = class_getSuperclass(Superclass);
  }

  while (Superclass);
  objc_opt_class();
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([objc_opt_class() instanceMethodSignatureForSelector:selector], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v7 = [self->__target methodSignatureForSelector:selector];
  }

LABEL_8:

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p target: %@>", v5, self, self->__target];;

  return v6;
}

@end