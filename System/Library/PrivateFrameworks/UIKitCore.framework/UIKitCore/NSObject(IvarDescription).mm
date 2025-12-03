@interface NSObject(IvarDescription)
- (void)__ivarDescriptionForClass:()IvarDescription;
- (void)__methodDescriptionForClass:()IvarDescription;
- (void)__propertyDescriptionForClass:()IvarDescription;
- (void)_ivarDescription;
- (void)_methodDescription;
- (void)_propertyDescription;
- (void)_shortMethodDescription;
@end

@implementation NSObject(IvarDescription)

- (void)__ivarDescriptionForClass:()IvarDescription
{
  string = [MEMORY[0x1E696AD60] string];
  [string appendFormat:@"\nin %@:", a3];
  outCount = 0;
  v6 = class_copyIvarList(a3, &outCount);
  if (outCount)
  {
    for (i = 0; i < outCount; ++i)
    {
      TypeEncoding = ivar_getTypeEncoding(v6[i]);
      Name = ivar_getName(v6[i]);
      Offset = ivar_getOffset(v6[i]);
      [string appendFormat:@"\n\t%s (%@): ", Name, _UIDebugObjectTypeDescription(TypeEncoding)];
      if (*TypeEncoding == 35)
      {
        if (!i && objc_opt_class() == a3)
        {
          v12 = MEMORY[0x1E696AEC0];
          Class = object_getClass(self);
          Ivar = [v12 stringWithFormat:@"%@ (isa, %p)", Class, object_getIvar(self, *v6)];
        }

        else
        {
          Ivar = object_getIvar(self, v6[i]);
        }
      }

      else
      {
        Ivar = _UIDebugIvarValue(&self[Offset], TypeEncoding, 0);
      }

      [string appendFormat:@"%@", Ivar];
    }
  }

  free(v6);
  return string;
}

- (void)_ivarDescription
{
  string = [MEMORY[0x1E696AD60] string];
  v3 = objc_autoreleasePoolPush();
  [string appendFormat:@"%@:", (objc_msgSend(MEMORY[0x1E69E58C0], "instanceMethodForSelector:", sel_description))(self, sel_description)];
  v4 = objc_opt_class();
  if (v4)
  {
    v5 = v4;
    do
    {
      [string appendString:{objc_msgSend(self, "__ivarDescriptionForClass:", v5)}];
      v5 = [v5 superclass];
    }

    while (v5);
  }

  objc_autoreleasePoolPop(v3);
  return string;
}

- (void)__propertyDescriptionForClass:()IvarDescription
{
  string = [MEMORY[0x1E696AD60] string];
  [string appendFormat:@"\n\nin %@:", a3];
  outCount = 0;
  v5 = class_copyPropertyList(a3, &outCount);
  if (outCount)
  {
    [string appendString:@"\n\tProperties:"];
    if (outCount)
    {
        ;
      }
    }
  }

  free(v5);
  [string appendString:@"\n"];
  return string;
}

- (void)_propertyDescription
{
  string = [MEMORY[0x1E696AD60] string];
  [string appendFormat:@"%@:", (objc_msgSend(MEMORY[0x1E69E58C0], "instanceMethodForSelector:", sel_description))(self, sel_description)];
  v3 = objc_opt_class();
  if (v3)
  {
    v4 = v3;
    do
    {
      [string appendString:{objc_msgSend(self, "__propertyDescriptionForClass:", v4)}];
      v4 = [v4 superclass];
    }

    while (v4);
  }

  return string;
}

- (void)__methodDescriptionForClass:()IvarDescription
{
  string = [MEMORY[0x1E696AD60] string];
  [string appendFormat:@"\nin %@:", a3];
  outCount = 0;
  Name = class_getName(a3);
  MetaClass = objc_getMetaClass(Name);
  v7 = class_copyMethodList(MetaClass, &outCount);
  if (outCount)
  {
    [string appendString:@"\n\tClass Methods:"];
    if (outCount)
    {
        ;
      }
    }
  }

  free(v7);
  v15 = 0;
  v9 = class_copyPropertyList(a3, &v15);
  if (v15)
  {
    [string appendString:@"\n\tProperties:"];
    if (v15)
    {
        ;
      }
    }
  }

  free(v9);
  v14 = 0;
  v11 = class_copyMethodList(a3, &v14);
  if (v14)
  {
    [string appendString:@"\n\tInstance Methods:"];
    if (v14)
    {
        ;
      }
    }
  }

  free(v11);
  return string;
}

- (void)_methodDescription
{
  string = [MEMORY[0x1E696AD60] string];
  [string appendFormat:@"%@:", (objc_msgSend(MEMORY[0x1E69E58C0], "instanceMethodForSelector:", sel_description))(self, sel_description)];
  v3 = objc_opt_class();
  if (v3)
  {
    v4 = v3;
    do
    {
      [string appendString:{objc_msgSend(self, "__methodDescriptionForClass:", v4)}];
      v4 = [v4 superclass];
    }

    while (v4);
  }

  return string;
}

- (void)_shortMethodDescription
{
  string = [MEMORY[0x1E696AD60] string];
  [string appendFormat:@"%@:", (objc_msgSend(MEMORY[0x1E69E58C0], "instanceMethodForSelector:", sel_description))(self, sel_description)];
  v3 = objc_opt_class();
  while (v3)
  {
    [string appendString:{objc_msgSend(self, "__methodDescriptionForClass:", v3)}];
    v3 = [v3 superclass];
    v4 = [MEMORY[0x1E696AAE8] bundleForClass:v3];
    if (v4 != [MEMORY[0x1E696AAE8] mainBundle])
    {
      [string appendFormat:@"\n(%@ ...)", v3];
      return string;
    }
  }

  return string;
}

@end