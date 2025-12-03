@interface IMAccessibilitySafeCategory
+ (void)_addCategoryMethod:(objc_method *)method toClass:(Class)class isClass:(BOOL)isClass;
+ (void)installCategoryOnClassNamed:(id)named;
@end

@implementation IMAccessibilitySafeCategory

+ (void)installCategoryOnClassNamed:(id)named
{
  namedCopy = named;
  v5 = NSClassFromString(namedCopy);
  if (!v5)
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = NSStringFromClass(self);
    namedCopy = [v11 stringWithFormat:@"UIAccessibility Error installing %@ on %@.  %@ does not exist in runtime.", v12, namedCopy, namedCopy];

    goto LABEL_21;
  }

  v6 = v5;
  outCount = 0;
  v7 = class_copyMethodList(self, &outCount);
  v8 = v7;
  if (v7 && outCount)
  {
    for (i = 0; i < outCount; ++i)
    {
      v10 = v8[i];
      if (!v10)
      {
        break;
      }

      [self _addCategoryMethod:v10 toClass:v6 isClass:0];
    }
  }

  else if (!v7)
  {
    goto LABEL_11;
  }

  free(v8);
LABEL_11:
  Class = object_getClass(self);
  v15 = class_copyMethodList(Class, &outCount);
  v16 = v15;
  if (v15 && outCount)
  {
    for (j = 0; j < outCount; ++j)
    {
      v18 = v16[j];
      if (!v18)
      {
        break;
      }

      if (method_getName(v18) != sel_load)
      {
        [self _addCategoryMethod:v16[j] toClass:object_getClass(v6) isClass:1];
      }
    }

    goto LABEL_20;
  }

  if (v15)
  {
LABEL_20:
    free(v16);
  }

LABEL_21:
}

+ (void)_addCategoryMethod:(objc_method *)method toClass:(Class)class isClass:(BOOL)isClass
{
  isClassCopy = isClass;
  Name = method_getName(method);
  InstanceMethod = class_getInstanceMethod(class, Name);
  v11 = InstanceMethod;
  if (InstanceMethod)
  {
    Implementation = method_getImplementation(InstanceMethod);
  }

  else
  {
    Implementation = 0;
  }

  v13 = method_getImplementation(method);
  TypeEncoding = method_getTypeEncoding(method);
  if (!class_addMethod(class, Name, v13, TypeEncoding))
  {
    v15 = method_getImplementation(method);
    method_setImplementation(v11, v15);
  }

  if (v11)
  {
    if (Implementation)
    {
      Superclass = class_getSuperclass(self);
      if (Superclass)
      {
        Class = Superclass;
        v18 = class_getSuperclass(Superclass);
        if (v18 == objc_opt_class())
        {
          if (isClassCopy)
          {
            Class = object_getClass(Class);
          }

          v19 = method_getTypeEncoding(v11);
          if (!class_addMethod(Class, Name, Implementation, v19))
          {
            v20 = MEMORY[0x277CCACA8];
            if (isClassCopy)
            {
              v21 = @"+";
            }

            else
            {
              v21 = @"-";
            }

            v22 = NSStringFromClass(class);
            v23 = NSStringFromSelector(Name);
            v24 = [v20 stringWithFormat:@"UIAccessibility Error adding %@[%@ %@]", v21, v22, v23];
          }
        }
      }
    }
  }
}

@end