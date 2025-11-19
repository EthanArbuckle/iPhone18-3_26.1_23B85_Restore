@interface NSObject
+ (BOOL)conformsToProtocol:(Protocol *)protocol;
+ (BOOL)isAncestorOfObject:(id)a3;
+ (BOOL)isKindOfClass:(Class)a3;
+ (BOOL)isSubclassOfClass:(Class)aClass;
+ (Class)superclass;
+ (IMP)instanceMethodForSelector:(SEL)aSelector;
+ (NSObject)new;
+ (id)performSelector:(SEL)a3;
+ (id)performSelector:(SEL)a3 withObject:(id)a4;
+ (id)performSelector:(SEL)a3 withObject:(id)a4 withObject:(id)a5;
+ (void)doesNotRecognizeSelector:(SEL)a3;
+ (void)forwardInvocation:(id)a3;
+ (void)methodForSelector:(SEL)a3;
- (BOOL)_isDeallocating;
- (BOOL)conformsToProtocol:(id)a3;
- (BOOL)isKindOfClass:(Class)a3;
- (BOOL)respondsToSelector:(SEL)a3;
- (Class)superclass;
- (IMP)methodForSelector:(SEL)aSelector;
- (id)performSelector:(SEL)a3;
- (id)performSelector:(SEL)a3 withObject:(id)a4;
- (id)performSelector:(SEL)a3 withObject:(id)a4 withObject:(id)a5;
- (void)doesNotRecognizeSelector:(SEL)aSelector;
- (void)forwardInvocation:(NSInvocation *)anInvocation;
@end

@implementation NSObject

- (BOOL)_isDeallocating
{
  if ((self & 0x8000000000000000) != 0)
  {
    return 0;
  }

  if (self->isa)
  {
    return self->isa >> 55 == 0;
  }

  return objc_object::sidetable_isDeallocating(self);
}

+ (Class)superclass
{
  if (*(a1 + 1))
  {
    return *(a1 + 1);
  }

  else
  {
    return 0;
  }
}

+ (NSObject)new
{
  if ((*((*a1 & 0xFFFFFFFF8) + 0x1E) & 0x4000) != 0)
  {
    v2 = _objc_rootAllocWithZone(a1);
  }

  else
  {
    v2 = [a1 alloc];
  }

  return [v2 init];
}

- (Class)superclass
{
  v2 = *([self class]+ 1);
  if (v2)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

+ (void)forwardInvocation:(id)a3
{
  if (a3)
  {
    a3 = [a3 selector];
  }

  [a1 doesNotRecognizeSelector:a3];
}

+ (id)performSelector:(SEL)a3 withObject:(id)a4 withObject:(id)a5
{
  if (!a3)
  {
    [a1 doesNotRecognizeSelector:?];
  }

  return [a1 a3];
}

+ (id)performSelector:(SEL)a3 withObject:(id)a4
{
  if (!a3)
  {
    [a1 doesNotRecognizeSelector:?];
  }

  return [a1 a3];
}

+ (id)performSelector:(SEL)a3
{
  if (!a3)
  {
    [a1 doesNotRecognizeSelector:?];
  }

  return [a1 a3];
}

+ (void)doesNotRecognizeSelector:(SEL)a3
{
  Name = class_getName(a1);
  v9 = "<null selector>";
  if (a3)
  {
    v9 = a3;
  }

  _objc_fatal("+[%s %s]: unrecognized selector sent to instance %p", v6, v7, v8, Name, v9, a1);
}

+ (void)methodForSelector:(SEL)a3
{
  v3 = a1;
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    [a1 doesNotRecognizeSelector:?];
    a1 = v3;
    v4 = 0;
  }

  return object_getMethodImplementation(a1, v4);
}

+ (IMP)instanceMethodForSelector:(SEL)aSelector
{
  if (aSelector)
  {

    return class_getMethodImplementation(a1, aSelector);
  }

  else
  {
    [a1 doesNotRecognizeSelector:{v3, v4}];
    return 0;
  }
}

+ (BOOL)conformsToProtocol:(Protocol *)protocol
{
  result = 0;
  if (protocol && a1)
  {
    while (1)
    {
      result = class_conformsToProtocol(a1, protocol);
      if (result || !*(a1 + 1))
      {
        break;
      }

      a1 = *(a1 + 1);
    }
  }

  return result;
}

+ (BOOL)isAncestorOfObject:(id)a3
{
  v4 = [a3 class];
  result = v4 != 0;
  if (v4 != a1 && v4 != 0)
  {
    while (1)
    {
      v7 = v4[1];
      if (!v7)
      {
        break;
      }

      v4 = v4[1];
      result = v7 != 0;
      if (v7 == a1 || v7 == 0)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

+ (BOOL)isSubclassOfClass:(Class)aClass
{
  v3 = a1;
  result = a1 != 0;
  if (v3 != aClass && v3)
  {
    while (1)
    {
      v5 = v3[1];
      if (!v5)
      {
        break;
      }

      v3 = v3[1];
      result = v5 != 0;
      if (v5 == aClass || v5 == 0)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

+ (BOOL)isKindOfClass:(Class)a3
{
  v3 = (*a1 & 0xFFFFFFFF8);
  result = v3 != 0;
  if (v3 != a3 && v3 != 0)
  {
    while (1)
    {
      v6 = v3[1];
      if (!v6)
      {
        break;
      }

      v3 = v3[1];
      result = v6 != 0;
      if (v6 == a3 || v6 == 0)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

- (void)forwardInvocation:(NSInvocation *)anInvocation
{
  if (anInvocation)
  {
    anInvocation = [(NSInvocation *)anInvocation selector];
  }

  [self doesNotRecognizeSelector:anInvocation];
}

- (id)performSelector:(SEL)a3 withObject:(id)a4 withObject:(id)a5
{
  if (!a3)
  {
    [self doesNotRecognizeSelector:?];
  }

  return [self a3];
}

- (id)performSelector:(SEL)a3 withObject:(id)a4
{
  if (!a3)
  {
    [self doesNotRecognizeSelector:?];
  }

  return [self a3];
}

- (id)performSelector:(SEL)a3
{
  if (!a3)
  {
    [self doesNotRecognizeSelector:?];
  }

  return [self a3];
}

- (void)doesNotRecognizeSelector:(SEL)aSelector
{
  ClassName = object_getClassName(self);
  v9 = "<null selector>";
  if (aSelector)
  {
    v9 = aSelector;
  }

  _objc_fatal("[%s %s]: unrecognized selector sent to instance %p", v6, v7, v8, ClassName, v9, self);
}

- (IMP)methodForSelector:(SEL)aSelector
{
  v3 = self;
  if (aSelector)
  {
    v4 = aSelector;
  }

  else
  {
    [self doesNotRecognizeSelector:?];
    self = v3;
    v4 = 0;
  }

  return object_getMethodImplementation(self, v4);
}

- (BOOL)conformsToProtocol:(id)a3
{
  if (a3)
  {
    v4 = [self class];
    if (v4)
    {
      for (i = v4; ; i = *(i + 1))
      {
        LOBYTE(v4) = class_conformsToProtocol(i, a3);
        if ((v4 & 1) != 0 || !*(i + 1))
        {
          break;
        }
      }
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v5 = [self class];

  return class_respondsToSelector_inst(self, a3, v5);
}

- (BOOL)isKindOfClass:(Class)a3
{
  v4 = [self class];
  result = v4 != 0;
  if (v4 != a3 && v4 != 0)
  {
    while (1)
    {
      v7 = *(v4 + 1);
      if (!v7)
      {
        break;
      }

      v4 = *(v4 + 1);
      result = v7 != 0;
      if (v7 == a3 || v7 == 0)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

@end