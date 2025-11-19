@interface _UITargetedProxy
+ (id)proxyWithTarget:(id)a3;
- (id)description;
- (id)methodSignatureForSelector:(SEL)a3;
@end

@implementation _UITargetedProxy

+ (id)proxyWithTarget:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"target must not be nil"];
  }

  v5 = [a1 alloc];
  [v5 _setTarget:v4];

  return v5;
}

- (id)methodSignatureForSelector:(SEL)a3
{
  Superclass = objc_opt_class();
  do
  {
    InstanceMethod = class_getInstanceMethod(Superclass, a3);
    if (InstanceMethod)
    {
      v7 = [MEMORY[0x1E695DF68] signatureWithObjCTypes:method_getTypeEncoding(InstanceMethod)];
      goto LABEL_8;
    }

    Superclass = class_getSuperclass(Superclass);
  }

  while (Superclass);
  objc_opt_class();
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([objc_opt_class() instanceMethodSignatureForSelector:a3], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v7 = [self->__target methodSignatureForSelector:a3];
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