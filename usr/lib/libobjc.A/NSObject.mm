@interface NSObject
+ (BOOL)conformsToProtocol:(Protocol *)protocol;
+ (BOOL)isAncestorOfObject:(id)object;
+ (BOOL)isKindOfClass:(Class)class;
+ (BOOL)isSubclassOfClass:(Class)aClass;
+ (Class)superclass;
+ (IMP)instanceMethodForSelector:(SEL)aSelector;
+ (NSObject)new;
+ (id)performSelector:(SEL)selector;
+ (id)performSelector:(SEL)selector withObject:(id)object;
+ (id)performSelector:(SEL)selector withObject:(id)object withObject:(id)withObject;
+ (void)doesNotRecognizeSelector:(SEL)selector;
+ (void)forwardInvocation:(id)invocation;
+ (void)methodForSelector:(SEL)selector;
- (BOOL)_isDeallocating;
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)isKindOfClass:(Class)class;
- (BOOL)respondsToSelector:(SEL)selector;
- (Class)superclass;
- (IMP)methodForSelector:(SEL)aSelector;
- (id)performSelector:(SEL)selector;
- (id)performSelector:(SEL)selector withObject:(id)object;
- (id)performSelector:(SEL)selector withObject:(id)object withObject:(id)withObject;
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
  if (*(self + 1))
  {
    return *(self + 1);
  }

  else
  {
    return 0;
  }
}

+ (NSObject)new
{
  if ((*((*self & 0xFFFFFFFF8) + 0x1E) & 0x4000) != 0)
  {
    v2 = _objc_rootAllocWithZone(self);
  }

  else
  {
    v2 = [self alloc];
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

+ (void)forwardInvocation:(id)invocation
{
  if (invocation)
  {
    invocation = [invocation selector];
  }

  [self doesNotRecognizeSelector:invocation];
}

+ (id)performSelector:(SEL)selector withObject:(id)object withObject:(id)withObject
{
  if (!selector)
  {
    [self doesNotRecognizeSelector:?];
  }

  return [self selector];
}

+ (id)performSelector:(SEL)selector withObject:(id)object
{
  if (!selector)
  {
    [self doesNotRecognizeSelector:?];
  }

  return [self selector];
}

+ (id)performSelector:(SEL)selector
{
  if (!selector)
  {
    [self doesNotRecognizeSelector:?];
  }

  return [self selector];
}

+ (void)doesNotRecognizeSelector:(SEL)selector
{
  Name = class_getName(self);
  selectorCopy = "<null selector>";
  if (selector)
  {
    selectorCopy = selector;
  }

  _objc_fatal("+[%s %s]: unrecognized selector sent to instance %p", v6, v7, v8, Name, selectorCopy, self);
}

+ (void)methodForSelector:(SEL)selector
{
  selfCopy = self;
  if (selector)
  {
    selectorCopy = selector;
  }

  else
  {
    [self doesNotRecognizeSelector:?];
    self = selfCopy;
    selectorCopy = 0;
  }

  return object_getMethodImplementation(self, selectorCopy);
}

+ (IMP)instanceMethodForSelector:(SEL)aSelector
{
  if (aSelector)
  {

    return class_getMethodImplementation(self, aSelector);
  }

  else
  {
    [self doesNotRecognizeSelector:{v3, v4}];
    return 0;
  }
}

+ (BOOL)conformsToProtocol:(Protocol *)protocol
{
  result = 0;
  if (protocol && self)
  {
    while (1)
    {
      result = class_conformsToProtocol(self, protocol);
      if (result || !*(self + 1))
      {
        break;
      }

      self = *(self + 1);
    }
  }

  return result;
}

+ (BOOL)isAncestorOfObject:(id)object
{
  v4 = [object class];
  result = v4 != 0;
  if (v4 != self && v4 != 0)
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
      if (v7 == self || v7 == 0)
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
  selfCopy = self;
  result = self != 0;
  if (selfCopy != aClass && selfCopy)
  {
    while (1)
    {
      v5 = selfCopy[1];
      if (!v5)
      {
        break;
      }

      selfCopy = selfCopy[1];
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

+ (BOOL)isKindOfClass:(Class)class
{
  v3 = (*self & 0xFFFFFFFF8);
  result = v3 != 0;
  if (v3 != class && v3 != 0)
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
      if (v6 == class || v6 == 0)
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

- (id)performSelector:(SEL)selector withObject:(id)object withObject:(id)withObject
{
  if (!selector)
  {
    [self doesNotRecognizeSelector:?];
  }

  return [self selector];
}

- (id)performSelector:(SEL)selector withObject:(id)object
{
  if (!selector)
  {
    [self doesNotRecognizeSelector:?];
  }

  return [self selector];
}

- (id)performSelector:(SEL)selector
{
  if (!selector)
  {
    [self doesNotRecognizeSelector:?];
  }

  return [self selector];
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
  selfCopy = self;
  if (aSelector)
  {
    v4 = aSelector;
  }

  else
  {
    [self doesNotRecognizeSelector:?];
    self = selfCopy;
    v4 = 0;
  }

  return object_getMethodImplementation(self, v4);
}

- (BOOL)conformsToProtocol:(id)protocol
{
  if (protocol)
  {
    v4 = [self class];
    if (v4)
    {
      for (i = v4; ; i = *(i + 1))
      {
        LOBYTE(v4) = class_conformsToProtocol(i, protocol);
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

- (BOOL)respondsToSelector:(SEL)selector
{
  v5 = [self class];

  return class_respondsToSelector_inst(self, selector, v5);
}

- (BOOL)isKindOfClass:(Class)class
{
  v4 = [self class];
  result = v4 != 0;
  if (v4 != class && v4 != 0)
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
      if (v7 == class || v7 == 0)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

@end