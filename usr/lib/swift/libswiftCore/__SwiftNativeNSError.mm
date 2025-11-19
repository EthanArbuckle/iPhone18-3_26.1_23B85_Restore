@interface __SwiftNativeNSError
+ (id)allocWithZone:(_NSZone *)a3;
- (BOOL)isEqual:(id)a3;
- (Class)classForCoder;
- (id)description;
- (void)dealloc;
@end

@implementation __SwiftNativeNSError

+ (id)allocWithZone:(_NSZone *)a3
{
  qword_1EA79DC90 = "__SwiftNativeNSError cannot be instantiated";
  __break(1u);
  return result;
}

- (void)dealloc
{
  Class = swift::_swift_getClass(self, a2);
  if (qword_1ED426570 != -1)
  {
    v7 = Class;
    [(__SwiftNativeNSError *)Class dealloc];
    Class = v7;
  }

  if (Class == getSwiftNativeNSErrorClass(void)::$_0::operator() const(void)::TheLazy)
  {
    isa = self[1].super.super.isa;
    ObjCClassMetadata = isa;
  }

  else
  {
    v4 = objc_opt_class();
    ObjCClassMetadata = swift_getObjCClassMetadata(v4);
    isa = self[1].super.super.isa;
  }

  (*(*(ObjCClassMetadata - 8) + 8))((&self[1].super._userInfo + *(*(isa - 1) + 80)) & ~*(*(isa - 1) + 80));
  v8.receiver = self;
  v8.super_class = __SwiftNativeNSError;
  [(__SwiftNativeNSError *)&v8 dealloc];
}

- (id)description
{
  isa = self[1].super.super.isa;
  v4 = *(*(isa - 1) + 80);
  v5 = &self[1].super._userInfo + v4;
  BufferIn = swift::TargetMetadata<swift::InProcess>::allocateBufferIn(isa, v9);
  (*(*(self[1].super.super.isa - 1) + 16))(BufferIn, v5 & ~v4);
  Description = swift::getDescription(BufferIn, isa);
  swift::TargetMetadata<swift::InProcess>::deallocateBufferIn(isa, v9);
  return Description;
}

- (Class)classForCoder
{
  if (qword_1ED426560 != -1)
  {
    [(__SwiftNativeNSError *)self classForCoder];
  }

  return swift::getNSErrorClass(void)::$_0::operator() const(void)::TheLazy;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  v21 = v3;
  v22 = v4;
  if (a3)
  {
    Class = swift::_swift_getClass(a3, a2);
    if (qword_1ED426570 != -1)
    {
      v17 = Class;
      [(__SwiftNativeNSError *)Class dealloc];
      Class = v17;
    }

    if (Class == getSwiftNativeNSErrorClass(void)::$_0::operator() const(void)::TheLazy)
    {
      HashableBaseType = swift::SwiftError::getHashableBaseType(self, v8);
      if (HashableBaseType && (v13 = HashableBaseType, swift::SwiftError::getHashableBaseType(a3, v12) == HashableBaseType))
      {
        HashableConformance = swift::SwiftError::getHashableConformance(self, v14);
        if (HashableConformance)
        {
          v16 = *(*(self[1].super.super.isa - 1) + 80);
          isEqual_indirect = _swift_stdlib_Hashable_isEqual_indirect((&self[1].super._userInfo + v16) & ~v16, (a3 + *(*(*(a3 + 5) - 8) + 80) + 72) & ~*(*(*(a3 + 5) - 8) + 80), v13, HashableConformance);
        }

        else
        {
          isEqual_indirect = [(__SwiftNativeNSError *)&v18 isEqual:a3, self, __SwiftNativeNSError, v19.receiver, v19.super_class, v20.receiver, v20.super_class];
        }
      }

      else
      {
        isEqual_indirect = [(__SwiftNativeNSError *)&v19 isEqual:a3, v18.receiver, v18.super_class, self, __SwiftNativeNSError, v20.receiver, v20.super_class];
      }
    }

    else
    {
      isEqual_indirect = [(__SwiftNativeNSError *)&v20 isEqual:a3, v18.receiver, v18.super_class, v19.receiver, v19.super_class, self, __SwiftNativeNSError];
    }
  }

  else
  {
    isEqual_indirect = 0;
  }

  return isEqual_indirect & 1;
}

@end