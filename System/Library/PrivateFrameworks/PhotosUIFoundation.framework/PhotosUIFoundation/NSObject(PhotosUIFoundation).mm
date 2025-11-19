@interface NSObject(PhotosUIFoundation)
+ (void)px_enumeratePropertiesUsingBlock:()PhotosUIFoundation;
+ (void)px_swizzleClassMethod:()PhotosUIFoundation withMethod:;
+ (void)px_swizzleMethod:()PhotosUIFoundation withMethod:;
+ (void)px_swizzleOnceAsSubclassOfClass:()PhotosUIFoundation context:usingBlock:;
@end

@implementation NSObject(PhotosUIFoundation)

+ (void)px_enumeratePropertiesUsingBlock:()PhotosUIFoundation
{
  v4 = a3;
  outCount = 0;
  v5 = class_copyPropertyList(a1, &outCount);
  if (v5)
  {
    v6 = v5;
    if (outCount)
    {
      for (i = 0; i < outCount; ++i)
      {
        v8 = v6[i];
        v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:property_getName(v8)];
        v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:property_getAttributes(v8)];
        v11 = [MEMORY[0x1E696AE88] scannerWithString:v10];
        if ([v11 scanString:@"T@" intoString:0])
        {
          v17 = 0;
          v12 = [v11 scanUpToString:@"" intoString:&v17];
          v13 = v17;
          v14 = v13;
          if (v12)
          {
            v15 = NSClassFromString(v13);
          }

          else
          {
            v15 = 0;
          }
        }

        else
        {
          v15 = 0;
          v14 = 0;
        }

        v16 = [v10 componentsSeparatedByString:{@", "}];
        v4[2](v4, v9, v15, [v16 containsObject:@"R"]);
      }
    }

    free(v6);
  }
}

+ (void)px_swizzleOnceAsSubclassOfClass:()PhotosUIFoundation context:usingBlock:
{
  v18 = a5;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:a1 file:@"NSObject+PhotosUIFoundation.m" lineNumber:43 description:@"not on the main thread"];
  }

  if ((PFIsPhotosAppAnyPlatform() & 1) == 0 && (PFIsPhotosPicker() & 1) == 0 && (PFIsCamera() & 1) == 0)
  {
    if (a1 == a3)
    {
      v17 = [MEMORY[0x1E696AAA8] currentHandler];
      [v17 handleFailureInMethod:a2 object:a1 file:@"NSObject+PhotosUIFoundation.m" lineNumber:50 description:{@"%@ is already the root class", a1}];
    }

    v9 = a1;
    while ([v9 superclass] != a3)
    {
      v9 = [v9 superclass];
      if (!v9)
      {
        v10 = [MEMORY[0x1E696AAA8] currentHandler];
        [v10 handleFailureInMethod:a2 object:a1 file:@"NSObject+PhotosUIFoundation.m" lineNumber:55 description:{@"%@ isn't a descendant of %@", a1, a3}];

        abort();
      }
    }

    a3 = v9;
  }

  v11 = [MEMORY[0x1E696B098] valueWithPointer:a4];
  v12 = px_swizzleOnceAsSubclassOfClass_context_usingBlock__preparedClassesByContext;
  if (!px_swizzleOnceAsSubclassOfClass_context_usingBlock__preparedClassesByContext)
  {
    v13 = [MEMORY[0x1E695DF90] dictionary];
    v14 = px_swizzleOnceAsSubclassOfClass_context_usingBlock__preparedClassesByContext;
    px_swizzleOnceAsSubclassOfClass_context_usingBlock__preparedClassesByContext = v13;

    v12 = px_swizzleOnceAsSubclassOfClass_context_usingBlock__preparedClassesByContext;
  }

  v15 = [v12 objectForKeyedSubscript:v11];
  if (!v15)
  {
    v15 = [MEMORY[0x1E695DFA8] set];
    [px_swizzleOnceAsSubclassOfClass_context_usingBlock__preparedClassesByContext setObject:v15 forKeyedSubscript:v11];
  }

  if (([v15 containsObject:a3] & 1) == 0)
  {
    [v15 addObject:a3];
    (v18)[2](v18, a3);
  }
}

+ (void)px_swizzleClassMethod:()PhotosUIFoundation withMethod:
{
  ClassMethod = class_getClassMethod(a1, name);
  v8 = class_getClassMethod(a1, a4);
  Class = object_getClass(a1);
  Implementation = method_getImplementation(v8);
  TypeEncoding = method_getTypeEncoding(v8);
  if (class_addMethod(Class, name, Implementation, TypeEncoding))
  {
    v12 = method_getImplementation(ClassMethod);
    v13 = method_getTypeEncoding(ClassMethod);

    class_replaceMethod(Class, a4, v12, v13);
  }

  else
  {

    method_exchangeImplementations(ClassMethod, v8);
  }
}

+ (void)px_swizzleMethod:()PhotosUIFoundation withMethod:
{
  InstanceMethod = class_getInstanceMethod(a1, name);
  v8 = class_getInstanceMethod(a1, a4);
  MethodImplementation = class_getMethodImplementation(a1, name);
  TypeEncoding = method_getTypeEncoding(InstanceMethod);
  if (class_addMethod(a1, name, MethodImplementation, TypeEncoding))
  {
    InstanceMethod = class_getInstanceMethod(a1, name);
  }

  v11 = class_getMethodImplementation(a1, a4);
  v12 = method_getTypeEncoding(v8);
  if (class_addMethod(a1, a4, v11, v12))
  {
    v8 = class_getInstanceMethod(a1, a4);
  }

  method_exchangeImplementations(InstanceMethod, v8);
}

@end