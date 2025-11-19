@interface __SwiftValue
+ (id)allocWithZone:(_NSZone *)a3;
- (BOOL)isEqual:(id)a3;
- (id)_swiftTypeName;
- (id)debugDescription;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation __SwiftValue

+ (id)allocWithZone:(_NSZone *)a3
{
  qword_1EA79DC90 = "__SwiftValue cannot be instantiated";
  __break(1u);
  return result;
}

- (void)dealloc
{
  v3 = *(self[1].super.isa - 1);
  v4 = *(v3 + 80) & 0xF8;
  (*(v3 + 8))(self + ((v4 + 39) & ~(v4 | 7)));
  objc_destructInstance(self);

  self;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  if (a3)
  {
    if (qword_1ED4265F8 != -1)
    {
      v13 = a3;
      swift::bridgeAnythingToSwiftValueObject(self);
      a3 = v13;
    }

    v4 = a3;
    if (objc_opt_isKindOfClass())
    {
      HashableConformance = SwiftValueHeader::getHashableConformance(&self[1]);
      if (HashableConformance)
      {
        v6 = HashableConformance;
        HashableBaseType = SwiftValueHeader::getHashableBaseType(&self[1]);
        if (HashableBaseType)
        {
          v8 = HashableBaseType;
          if (HashableBaseType == SwiftValueHeader::getHashableBaseType(v4 + 1))
          {
            LOBYTE(EquatableConformance) = _swift_stdlib_Hashable_isEqual_indirect(self + (((*(*(self[1].super.isa - 1) + 80) & 0xF8) + 39) & ~(*(*(self[1].super.isa - 1) + 80) & 0xF8) & 0x1F8), v4 + (((*(*(v4[1] - 8) + 80) & 0xF8) + 39) & ~(*(*(v4[1] - 8) + 80) & 0xF8) & 0x1F8), v8, v6);
            return EquatableConformance & 1;
          }
        }
      }

      EquatableConformance = SwiftValueHeader::getEquatableConformance(&self[1]);
      if (!EquatableConformance)
      {
        return EquatableConformance & 1;
      }

      v10 = EquatableConformance;
      EquatableConformance = SwiftValueHeader::getEquatableBaseType(&self[1]);
      if (!EquatableConformance)
      {
        return EquatableConformance & 1;
      }

      v11 = EquatableConformance;
      if (EquatableConformance == SwiftValueHeader::getEquatableBaseType(v4 + 1))
      {
        LOBYTE(EquatableConformance) = _swift_stdlib_Equatable_isEqual_indirect(self + (((*(*(self[1].super.isa - 1) + 80) & 0xF8) + 39) & ~(*(*(self[1].super.isa - 1) + 80) & 0xF8) & 0x1F8), v4 + (((*(*(v4[1] - 8) + 80) & 0xF8) + 39) & ~(*(*(v4[1] - 8) + 80) & 0xF8) & 0x1F8), v11, v10);
        return EquatableConformance & 1;
      }
    }

    LOBYTE(EquatableConformance) = 0;
    return EquatableConformance & 1;
  }

  return 0;
}

- (unint64_t)hash
{
  v2 = self;
  HashableConformance = SwiftValueHeader::getHashableConformance(&self[1]);
  if (HashableConformance)
  {
    v4 = HashableConformance;
    isa = v2[1].super.isa;
    v6 = v2 + (((*(*(isa - 8) + 80) & 0xF8) + 39) & ~(*(*(isa - 8) + 80) & 0xF8) & 0x1F8);

    return _swift_stdlib_Hashable_hashValue_indirect(v6, isa, v4);
  }

  else
  {
    if (SwiftValueHeader::getEquatableConformance(&v2[1]))
    {
      v12 = v2[1].super.isa;
      os_unfair_lock_lock(&[__SwiftValue hash]::warnedLock);
      if (qword_1EA79EBC0 != -1)
      {
        [__SwiftValue hash];
      }

      std::__hash_table<swift::TargetMethodDescriptor<swift::InProcess> const*,std::hash<swift::TargetMethodDescriptor<swift::InProcess> const*>,std::equal_to<swift::TargetMethodDescriptor<swift::InProcess> const*>,std::allocator<swift::TargetMethodDescriptor<swift::InProcess> const*>>::__emplace_unique_key_args<swift::TargetMethodDescriptor<swift::InProcess> const*,swift::TargetMethodDescriptor<swift::InProcess> const*>([__SwiftValue hash]::warned, &v12);
      if (v8)
      {
        TypeName = swift_getTypeName(v12, 1);
      }

      os_unfair_lock_unlock(&[__SwiftValue hash]::warnedLock);
      return 1;
    }

    return v2;
  }
}

- (id)description
{
  isa = self[1].super.isa;
  v4 = ((*(*(isa - 1) + 20) & 0xF8) + 39) & ~(*(*(isa - 1) + 20) & 0xF8u) & 0x1F8;
  BufferIn = swift::TargetMetadata<swift::InProcess>::allocateBufferIn(isa, v8);
  (*(*(isa - 1) + 2))(BufferIn, self + v4, isa);
  Description = swift::getDescription(BufferIn, isa);
  swift::TargetMetadata<swift::InProcess>::deallocateBufferIn(isa, v8);
  return Description;
}

- (id)debugDescription
{
  isa = self[1].super.isa;
  v4 = ((*(*(isa - 1) + 20) & 0xF8) + 39) & ~(*(*(isa - 1) + 20) & 0xF8u) & 0x1F8;
  BufferIn = swift::TargetMetadata<swift::InProcess>::allocateBufferIn(isa, v8);
  (*(*(isa - 1) + 2))(BufferIn, self + v4, isa);
  Description = swift::getDescription(BufferIn, isa);
  swift::TargetMetadata<swift::InProcess>::deallocateBufferIn(isa, v8);
  return Description;
}

- (id)_swiftTypeName
{
  TypeName = swift_getTypeName(self[1].super.isa, 1);
  v4 = swift_stdlib_NSStringFromUTF8(TypeName, v3);

  return v4;
}

@end