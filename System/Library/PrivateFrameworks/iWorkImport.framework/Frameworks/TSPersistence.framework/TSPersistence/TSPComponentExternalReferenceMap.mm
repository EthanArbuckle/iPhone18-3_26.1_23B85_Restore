@interface TSPComponentExternalReferenceMap
- (ComponentExternalReferenceInfo)externalReferenceInfoForObjectIdentifier:(int64_t)a3;
- (TSPComponentExternalReferenceMap)initWithComponentExternalReferenceMap:(id)a3;
- (TSPComponentExternalReferenceMap)initWithMapSize:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initFromMessage:(const void *)a3;
- (void)addExternalReferenceToObjectIdentifier:(int64_t)a3 componentIdentifier:(int64_t)a4 isWeak:(BOOL)a5 componentIsVersioned:(BOOL)a6;
- (void)appendReferencesFromMessage:(const void *)a3 componentIsVersioned:(BOOL)a4;
- (void)dealloc;
- (void)enumerateExternalReferences:(id)a3;
- (void)saveToMessage:(void *)a3;
@end

@implementation TSPComponentExternalReferenceMap

- (TSPComponentExternalReferenceMap)initWithMapSize:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = TSPComponentExternalReferenceMap;
  result = [(TSPComponentExternalReferenceMap *)&v5 init];
  if (a3)
  {
    if (result)
    {
      operator new();
    }
  }

  return result;
}

- (id)initFromMessage:(const void *)a3
{
  v4 = *(a3 + 20);
  v5 = *(a3 + 56) + v4;
  v6 = objc_msgSend_initWithMapSize_(self, a2, *(a3 + 56) + v4);
  v8 = v6;
  if (v6)
  {
    v9 = v5 < 1;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    objc_msgSend_appendReferencesFromMessage_componentIsVersioned_(v6, v7, a3 + 72, 0);
    objc_msgSend_appendReferencesFromMessage_componentIsVersioned_(v8, v10, a3 + 216, 1);
  }

  return v8;
}

- (void)appendReferencesFromMessage:(const void *)a3 componentIsVersioned:(BOOL)a4
{
  if (!self->_map)
  {
    TSUSetCrashReporterInfo();
    v16 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSPComponentExternalReferenceMap appendReferencesFromMessage:componentIsVersioned:]", "[TSPComponentExternalReferenceMap appendReferencesFromMessage:componentIsVersioned:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPComponentExternalReferenceMap.mm", 42, "_map");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPComponentExternalReferenceMap.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v21, v18, v20, 42, 1, "invalid nil value for '%{public}s'", "_map");

    TSUCrashBreakpoint();
    abort();
  }

  v4 = *(a3 + 2);
  if (v4)
  {
    v5 = (v4 + 8);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a3 + 2);
  if (v6)
  {
    v9 = 8 * v6;
    do
    {
      v10 = *v5;
      v11 = *(*v5 + 24);
      v12 = v11;
      if ((*(*v5 + 16) & 2) != 0)
      {
        v12 = *(v10 + 32);
      }

      v22[0] = v12;
      v13 = *(v10 + 40);
      map = self->_map;
      v22[2] = v22;
      v15 = sub_276AB5C84(map, v22);
      v15[3] = v11;
      *(v15 + 32) = v13;
      *(v15 + 33) = a4;
      ++v5;
      v9 -= 8;
    }

    while (v9);
  }
}

- (TSPComponentExternalReferenceMap)initWithComponentExternalReferenceMap:(id)a3
{
  v4 = a3;
  v6 = objc_msgSend_initWithMapSize_(self, v5, 0);
  v7 = v6;
  if (v6)
  {
    if (*(v6 + 8))
    {
      TSUSetCrashReporterInfo();
      v9 = MEMORY[0x277D81150];
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSPComponentExternalReferenceMap initWithComponentExternalReferenceMap:]", "[TSPComponentExternalReferenceMap initWithComponentExternalReferenceMap:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPComponentExternalReferenceMap.mm", 61);
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPComponentExternalReferenceMap.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v11, v13, 61, 1, "Map shouldn't have been initialized yet.");

      TSUCrashBreakpoint();
      abort();
    }

    if (v4 && v4[1])
    {
      operator new();
    }
  }

  return v7;
}

- (void)dealloc
{
  map = self->_map;
  if (map)
  {
    v4 = sub_2769BB184(map);
    MEMORY[0x277C9F670](v4, 0x10A0C408EF24B1CLL);
  }

  v5.receiver = self;
  v5.super_class = TSPComponentExternalReferenceMap;
  [(TSPComponentExternalReferenceMap *)&v5 dealloc];
}

- (void)saveToMessage:(void *)a3
{
  map = self->_map;
  if (map)
  {
    for (i = map[2]; i; i = *i)
    {
      v6 = i[2];
      if (*(i + 33) == 1)
      {
        v7 = *(a3 + 29);
        if (!v7)
        {
          v9 = *(a3 + 57);
          goto LABEL_14;
        }

        v8 = *(a3 + 56);
        v9 = *v7;
        if (v8 >= *v7)
        {
          if (v9 == *(a3 + 57))
          {
LABEL_14:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a3 + 54, v9 + 1);
            v7 = *(a3 + 29);
            v9 = *v7;
          }

          *v7 = v9 + 1;
          v14 = sub_2769F5108(*(a3 + 27));
          v15 = *(a3 + 56);
          v16 = *(a3 + 29) + 8 * v15;
          *(a3 + 56) = v15 + 1;
          goto LABEL_19;
        }

        v10 = &v7[2 * v8];
        *(a3 + 56) = v8 + 1;
      }

      else
      {
        v11 = *(a3 + 11);
        if (!v11)
        {
          v13 = *(a3 + 21);
          goto LABEL_17;
        }

        v12 = *(a3 + 20);
        v13 = *v11;
        if (v12 >= *v11)
        {
          if (v13 == *(a3 + 21))
          {
LABEL_17:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a3 + 18, v13 + 1);
            v11 = *(a3 + 11);
            v13 = *v11;
          }

          *v11 = v13 + 1;
          v14 = sub_2769F5108(*(a3 + 9));
          v17 = *(a3 + 20);
          v16 = *(a3 + 11) + 8 * v17;
          *(a3 + 20) = v17 + 1;
LABEL_19:
          *(v16 + 8) = v14;
          goto LABEL_20;
        }

        v10 = &v11[2 * v12];
        *(a3 + 20) = v12 + 1;
      }

      v14 = *(v10 + 1);
LABEL_20:
      v18 = i[3];
      v19 = *(v14 + 16);
      v20 = v19 | 1;
      *(v14 + 16) = v19 | 1;
      *(v14 + 24) = v18;
      if (v18 != v6)
      {
        v20 = v19 | 3;
        *(v14 + 16) = v19 | 3;
        *(v14 + 32) = v6;
      }

      if (*(i + 32) == 1)
      {
        *(v14 + 16) = v20 | 4;
        *(v14 + 40) = 1;
      }
    }
  }
}

- (void)enumerateExternalReferences:(id)a3
{
  v4 = a3;
  if (v4)
  {
    map = self->_map;
    if (map)
    {
      v7 = 0;
      v6 = map + 16;
      do
      {
        v6 = *v6;
        if (!v6)
        {
          break;
        }

        (*(v4 + 2))(v4, v6[2], v6 + 3, &v7);
      }

      while ((v7 & 1) == 0);
    }
  }
}

- (ComponentExternalReferenceInfo)externalReferenceInfoForObjectIdentifier:(int64_t)a3
{
  v6 = a3;
  map = self->_map;
  if (map && (map = sub_2769ABC64(map, &v6)) != 0)
  {
    v4 = map;
    map = map[3];
    v5 = v4[4];
  }

  else
  {
    v5 = 0;
  }

  result.var1 = v5;
  result.var2 = BYTE1(v5);
  result.var0 = map;
  return result;
}

- (void)addExternalReferenceToObjectIdentifier:(int64_t)a3 componentIdentifier:(int64_t)a4 isWeak:(BOOL)a5 componentIsVersioned:(BOOL)a6
{
  v11[0] = a3;
  map = self->_map;
  if (!map)
  {
    operator new();
  }

  v11[2] = v11;
  v10 = sub_276AB5C84(map, v11);
  v10[3] = a4;
  *(v10 + 32) = a5;
  *(v10 + 33) = a6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);

  return MEMORY[0x2821F9670](v7, sel_initWithComponentExternalReferenceMap_, self);
}

@end