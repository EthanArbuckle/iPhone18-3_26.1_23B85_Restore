@interface _SwiftObject
+ (BOOL)conformsToProtocol:(id)protocol;
+ (BOOL)isSubclassOfClass:(Class)class;
+ (Class)superclass;
+ (id)alloc;
+ (id)allocWithZone:(_NSZone *)zone;
+ (id)debugDescription;
+ (id)description;
+ (void)methodForSelector:(SEL)selector;
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)isEqual:(id)equal;
- (BOOL)isKindOfClass:(Class)class;
- (Class)superclass;
- (NSString)debugDescription;
- (NSString)description;
- (_NSZone)zone;
- (id)_copyDescription;
- (unint64_t)hash;
- (void)_noteAssociatedObjects;
- (void)_setWeaklyReferenced;
- (void)doesNotRecognizeSelector:(SEL)selector;
- (void)methodForSelector:(SEL)selector;
@end

@implementation _SwiftObject

+ (id)allocWithZone:(_NSZone *)zone
{
  InstanceSize = class_getInstanceSize(self);

  return swift_allocObject(self, InstanceSize, 0xFuLL);
}

+ (id)alloc
{
  InstanceSize = class_getInstanceSize(self);

  return swift_allocObject(self, InstanceSize, 0xFuLL);
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

- (Class)superclass
{
  if (*((self->isa & 0x7FFFFFFFFFFFF8) + 8))
  {
    return *((self->isa & 0x7FFFFFFFFFFFF8) + 8);
  }

  else
  {
    return 0;
  }
}

- (_NSZone)zone
{
  result = malloc_zone_from_ptr(self);
  if (!result)
  {

    return malloc_default_zone();
  }

  return result;
}

- (void)doesNotRecognizeSelector:(SEL)selector
{
  v4 = (self->isa & 0x7FFFFFFFFFFFF8);
  isMetaClass = class_isMetaClass(v4);
  Name = class_getName(v4);
  v10 = sel_getName(selector);
  v8 = 45;
  if (isMetaClass)
  {
    v8 = 43;
  }

  swift::fatalError(0, "Unrecognized selector %c[%s %s]\n", v6, v7, v8, Name, v10);
}

- (void)_setWeaklyReferenced
{
  isa = self[1].isa;
  if ((isa & 0x8000000000000001) == 1)
  {
    v3 = self[1].isa;
    atomic_compare_exchange_strong_explicit(&self[1], &v3, isa & 0x7FFFFFFFFFFFFFFELL, memory_order_relaxed, memory_order_relaxed);
    if (v3 != isa)
    {
      v4 = v3;
      do
      {
        atomic_compare_exchange_strong_explicit(&self[1], &v4, v3 & 0xFFFFFFFFFFFFFFFELL, memory_order_relaxed, memory_order_relaxed);
        v5 = v4 == v3;
        v3 = v4;
      }

      while (!v5);
    }
  }
}

- (void)_noteAssociatedObjects
{
  isa = self[1].isa;
  if ((isa & 0x8000000000000001) == 1)
  {
    v3 = self[1].isa;
    atomic_compare_exchange_strong_explicit(&self[1], &v3, isa & 0x7FFFFFFFFFFFFFFELL, memory_order_relaxed, memory_order_relaxed);
    if (v3 != isa)
    {
      v4 = v3;
      do
      {
        atomic_compare_exchange_strong_explicit(&self[1], &v4, v3 & 0xFFFFFFFFFFFFFFFELL, memory_order_relaxed, memory_order_relaxed);
        v5 = v4 == v3;
        v3 = v4;
      }

      while (!v5);
    }
  }
}

- (BOOL)isKindOfClass:(Class)class
{
  v3 = (self->isa & 0x7FFFFFFFFFFFF8);
  result = v3 != 0;
  if (v3 != class && v3 != 0)
  {
    v6 = v3;
    while (1)
    {
      v7 = *(v6 + 1);
      if (!v7)
      {
        break;
      }

      v6 = *(v6 + 1);
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

+ (BOOL)isSubclassOfClass:(Class)class
{
  selfCopy = self;
  result = self != 0;
  if (selfCopy != class && selfCopy)
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
      if (v5 == class || v5 == 0)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

+ (void)methodForSelector:(SEL)selector
{
  Class = object_getClass(self);

  return class_getMethodImplementation(Class, selector);
}

- (void)methodForSelector:(SEL)selector
{
  Class = object_getClass(self);

  return class_getMethodImplementation(Class, selector);
}

- (BOOL)conformsToProtocol:(id)protocol
{
  if (!protocol || (self->isa & 0x7FFFFFFFFFFFF8) == 0)
  {
    return 0;
  }

  Superclass = (self->isa & 0x7FFFFFFFFFFFF8);
  do
  {
    v5 = class_conformsToProtocol(Superclass, protocol);
    if (v5)
    {
      break;
    }

    Superclass = class_getSuperclass(Superclass);
  }

  while (Superclass);
  return v5;
}

+ (BOOL)conformsToProtocol:(id)protocol
{
  v3 = 0;
  if (protocol)
  {
    Superclass = self;
    if (self)
    {
      do
      {
        v3 = class_conformsToProtocol(Superclass, protocol);
        if (v3)
        {
          break;
        }

        Superclass = class_getSuperclass(Superclass);
      }

      while (Superclass);
    }
  }

  return v3;
}

- (unint64_t)hash
{
  selfCopy = self;
  selfCopy2 = self;
  if (!swift::runtime::bincompat::useLegacySwiftObjCHashing(self))
  {
    v3 = (selfCopy->isa & 0x7FFFFFFFFFFFF8);
    v4 = swift_conformsToProtocolCommon(v3, &protocol descriptor for Hashable);
    if (v4)
    {
      return _swift_stdlib_Hashable_hashValue_indirect(&selfCopy2, v3, v4);
    }

    else if (swift_conformsToProtocolCommon(v3, &protocol descriptor for Equatable))
    {
      v11 = objc_opt_class();
      os_unfair_lock_lock(&[_TtCs12_SwiftObject hash]::warnedLock);
      if (qword_1EA79EB60 != -1)
      {
        [_SwiftObject hash];
      }

      std::__hash_table<objc_class *,std::hash<objc_class *>,std::equal_to<objc_class *>,std::allocator<objc_class *>>::__emplace_unique_key_args<objc_class *,objc_class * const&>([_TtCs12_SwiftObject hash]::warned, &v11);
      if (v5)
      {
        v6 = objc_opt_class();
        Name = class_getName(v6);
      }

      os_unfair_lock_unlock(&[_TtCs12_SwiftObject hash]::warnedLock);
      return 1;
    }
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  selfCopy = self;
  if (self == equal)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    if (!equal)
    {
      goto LABEL_12;
    }

    v5 = swift::runtime::bincompat::useLegacySwiftObjCHashing(self);
    LOBYTE(v6) = 0;
    if ((v5 & 1) == 0 && (equal & 0x8000000000000000) == 0)
    {
      v7 = (self->isa & 0x7FFFFFFFFFFFF8);
      v6 = swift_conformsToProtocolCommon(v7, &protocol descriptor for Equatable);
      if (v6)
      {
        v8 = v6;
        if (*v6)
        {
          v9 = *v6;
        }

        else
        {
          v9 = 0;
        }

        ConformingSuperclass = swift::findConformingSuperclass(v7, v9);
        if (_swift_class_isSubclass(*equal & 0x7FFFFFFFFFFFF8, ConformingSuperclass))
        {
          LOBYTE(v6) = _swift_stdlib_Equatable_isEqual_indirect(&selfCopy, &equalCopy, ConformingSuperclass, v8);
          return v6 & 1;
        }

LABEL_12:
        LOBYTE(v6) = 0;
      }
    }
  }

  return v6 & 1;
}

- (NSString)description
{
  selfCopy = self;
  self;
  v3 = (self->isa & 0x7FFFFFFFFFFFF8);
  Description = swift_stdlib_getDescription(&selfCopy, v3);
  (*(*(v3 - 1) + 1))(&selfCopy, v3);
  return Description;
}

- (NSString)debugDescription
{
  selfCopy = self;
  self;
  v3 = (self->isa & 0x7FFFFFFFFFFFF8);
  Description = swift_stdlib_getDescription(&selfCopy, v3);
  (*(*(v3 - 1) + 1))(&selfCopy, v3);
  return Description;
}

+ (id)description
{
  Name = class_getName(self);
  v3 = strlen(Name);
  v4 = swift_stdlib_NSStringFromUTF8(Name, v3);

  return v4;
}

+ (id)debugDescription
{
  Name = class_getName(self);
  v3 = strlen(Name);
  v4 = swift_stdlib_NSStringFromUTF8(Name, v3);

  return v4;
}

- (id)_copyDescription
{
  v2 = [(_SwiftObject *)self description];

  return v2;
}

@end