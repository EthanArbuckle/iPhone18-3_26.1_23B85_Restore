@interface VMUObjectIdentifierDriverKitSupport
- (VMUObjectIdentifierDriverKitSupport)initWithObjectIdentifier:(id)a3;
- (id)_fieldsFromStructureLayout:(id *)a3 withOffset:(unint64_t)a4;
- (id)_fieldsOfLegacyOSObject:(id)a3;
- (id)_fieldsOfLocalDriverKitOSObject:(id)a3;
- (id)_fieldsOfOSObject:(id)a3 startOffset:(unint64_t)a4;
- (id)_fieldsOfRemoteDriverKitOSObject:(id)a3;
- (id)_labelForDriverKitOSClassLoadInformation:(void *)a3 length:(unint64_t)a4 remoteAddress:(unint64_t)a5;
- (id)_labelForDriverKitOSMetaClass:(void *)a3 length:(unint64_t)a4 remoteAddress:(unint64_t)a5;
- (id)classInfoForDriverKitMemory:(void *)a3 length:(unint64_t)a4 atOffset:(unint64_t)a5 translatedIsa:(unint64_t)a6 symbol:(_CSTypeRef)a7 remoteAddress:(unint64_t)a8;
- (id)classInfoForDriverKitOSClassScan;
- (id)classInfoForDriverKitOSMetaClass;
- (id)classInfoForDriverKitOSMetaClassPrivate;
- (id)driverKitClassInfoForMemory:(void *)a3 length:(unint64_t)a4 remoteAddress:(unint64_t)a5;
- (id)labelForDriverKitMemory:(void *)a3 length:(unint64_t)a4 remoteAddress:(unint64_t)a5 class:(id)a6;
- (void)dealloc;
@end

@implementation VMUObjectIdentifierDriverKitSupport

- (VMUObjectIdentifierDriverKitSupport)initWithObjectIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 taskIsDriverKit])
  {
    v23.receiver = self;
    v23.super_class = VMUObjectIdentifierDriverKitSupport;
    v5 = [(VMUObjectIdentifierDriverKitSupport *)&v23 init];
    v6 = v5;
    if (v5)
    {
      objc_storeWeak(&v5->_objectIdentifier, v4);
      v7 = [v4 scanner];
      v6->_task = [v7 task];

      [v4 symbolicator];
      SymbolOwnerWithNameAtTime = CSSymbolicatorGetSymbolOwnerWithNameAtTime();
      v10 = v9;
      v11 = [v4 memoryReader];
      StructureLayoutDescription = getStructureLayoutDescription(SymbolOwnerWithNameAtTime, v10, "gOSMetaClassBasePrivateLayout", v11);

      v13 = [v4 memoryReader];
      v14 = getStructureLayoutDescription(SymbolOwnerWithNameAtTime, v10, "gOSMetaClassBaseRemotePrivateLayout", v13);

      if (StructureLayoutDescription)
      {
        v6->_vtableOffsetOfLocalDriverKitOSObject = *(StructureLayoutDescription + 24);
        v15 = [(VMUObjectIdentifierDriverKitSupport *)v6 _fieldsFromStructureLayout:StructureLayoutDescription withOffset:0];
        privateFieldsOfLocalDriverKitOSObject = v6->_privateFieldsOfLocalDriverKitOSObject;
        v6->_privateFieldsOfLocalDriverKitOSObject = v15;

        if (v14)
        {
          v6->_vtableOffsetOfRemoteDriverKitOSObject = *(StructureLayoutDescription + 24) + *(v14 + 24);
          v17 = [(VMUObjectIdentifierDriverKitSupport *)v6 _fieldsFromStructureLayout:v14 withOffset:0];
          v18 = [(VMUObjectIdentifierDriverKitSupport *)v6 _fieldsFromStructureLayout:StructureLayoutDescription withOffset:*(v14 + 24)];
          [(NSArray *)v17 addObjectsFromArray:v18];

          privateFieldsOfRemoteDriverKitOSObject = v6->_privateFieldsOfRemoteDriverKitOSObject;
          v6->_privateFieldsOfRemoteDriverKitOSObject = v17;
        }
      }

      else
      {
        v6->_vtableOffsetOfLegacyOSObject = 88;
      }

      v6->_vtableOffsetsCount = 3;
      v21 = malloc_type_malloc(0x18uLL, 0x100004000313F17uLL);
      v6->_vtableOffsets = v21;
      *v21 = v6->_vtableOffsetOfRemoteDriverKitOSObject;
      v21[1] = v6->_vtableOffsetOfLocalDriverKitOSObject;
      v21[2] = v6->_vtableOffsetOfLegacyOSObject;
    }

    self = v6;
    v20 = self;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (void)dealloc
{
  vtableOffsets = self->_vtableOffsets;
  if (vtableOffsets)
  {
    free(vtableOffsets);
  }

  v4.receiver = self;
  v4.super_class = VMUObjectIdentifierDriverKitSupport;
  [(VMUObjectIdentifierDriverKitSupport *)&v4 dealloc];
}

- (id)_fieldsFromStructureLayout:(id *)a3 withOffset:(unint64_t)a4
{
  v4 = a4;
  v7 = objc_opt_new();
  var4 = a3->var4;
  if (var4)
  {
    p_var3 = &a3->var5[0].var3;
    do
    {
      v10 = task_peek_string(self->_task, *(p_var3 - 3));
      v11 = task_peek_string(self->_task, *(p_var3 - 2));
      v12 = [VMUMutableFieldInfo alloc];
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10];
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v11];
      v15 = *(p_var3 - 2);
      v16 = *p_var3;
      p_var3 += 5;
      v17 = [(VMUFieldInfo *)v12 initWithName:v13 type:v14 scan:1 offset:(v15 + v4) size:v16];

      [v7 addObject:v17];
      --var4;
    }

    while (var4);
  }

  return v7;
}

- (id)_fieldsOfLegacyOSObject:(id)a3
{
  v30[19] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 pointerSize];
  v29 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:@"server" type:@"^{IOUserServer_IVars}" scan:1 offset:0 size:v4];
  v27 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:@"objectRefsListEntryNext" type:@"^v" scan:4 offset:8 size:v4];
  v26 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:@"objectRefsListEntryPrev" type:@"^v" scan:4 offset:16 size:v4];
  v28 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:@"objectRef" type:@"Q" scan:0 offset:24 size:8];
  v24 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:@"flags" type:@"Q" scan:0 offset:32 size:8];
  v23 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:@"sendRights" type:@"L" scan:0 offset:40 size:4];
  v25 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:@"remoteQueueCount" type:@"L" scan:0 offset:44 size:4];
  v22 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:@"remoteMethodsCount" type:@"L" scan:0 offset:48 size:4];
  v21 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:@"remoteQueues" type:@"^Q" scan:1 offset:56 size:v4];
  v20 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:@"remoteMethods" type:@"^Q" scan:1 offset:64 size:v4];
  v19 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:@"queueAlloc" type:@"L" scan:0 offset:72 size:4];
  v5 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:@"queueArray" type:@"^@IODispatchQueue" scan:1 offset:80 size:v4];
  v18 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:@"vtable" type:@"^" scan:0 offset:88 size:v4];
  v17 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:@"refcount" type:@"l" scan:0 offset:96 size:4];
  v6 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:@"reserved" type:@"l" scan:0 offset:100 size:4];
  v16 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:@"meta" type:@"@" scan:1 offset:104 size:v4];
  v7 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:@"metaClassPrivate" type:@"^{OSMetaClassPrivate}" scan:1 offset:112 size:v4];
  v15 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:@"retainCount" type:@"i" scan:0 offset:120 size:4];
  v8 = MEMORY[0x1E696AEC0];
  v9 = [v3 className];

  v10 = [v8 stringWithFormat:@"^{%@_IVars}", v9];

  v11 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:@"ivars" type:v10 scan:1 offset:128 size:v4];
  v30[0] = v29;
  v30[1] = v27;
  v30[2] = v26;
  v30[3] = v28;
  v30[4] = v24;
  v30[5] = v23;
  v30[6] = v25;
  v30[7] = v22;
  v30[8] = v21;
  v30[9] = v20;
  v30[10] = v19;
  v30[11] = v5;
  v30[12] = v18;
  v30[13] = v17;
  v30[14] = v6;
  v30[15] = v16;
  v30[16] = v7;
  v30[17] = v15;
  v30[18] = v11;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:19];

  v12 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)_fieldsOfOSObject:(id)a3 startOffset:(unint64_t)a4
{
  v20[7] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 pointerSize];
  v19 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:@"vtable" type:@"^" scan:0 offset:a4 size:v6];
  v18 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:@"refcount" type:@"l" scan:0 offset:(a4 + 8) size:4];
  v7 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:@"reserved" type:@"l" scan:0 offset:(a4 + 12) size:4];
  v8 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:@"meta" type:@"@" scan:1 offset:(a4 + 16) size:v6];
  v9 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:@"metaClassPrivate" type:@"^{OSMetaClassPrivate}" scan:1 offset:(a4 + 24) size:v6];
  v10 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:@"extra" type:@"i" scan:0 offset:(a4 + 32) size:4];
  v11 = MEMORY[0x1E696AEC0];
  v12 = [v5 displayName];

  v13 = [v11 stringWithFormat:@"^{%@_IVars}", v12];

  v14 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:@"ivars" type:v13 scan:1 offset:(a4 + 40) size:v6];
  v20[0] = v19;
  v20[1] = v18;
  v20[2] = v7;
  v20[3] = v8;
  v20[4] = v9;
  v20[5] = v10;
  v20[6] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:7];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)_fieldsOfRemoteDriverKitOSObject:(id)a3
{
  vtableOffsetOfRemoteDriverKitOSObject = self->_vtableOffsetOfRemoteDriverKitOSObject;
  v6 = self->_privateFieldsOfRemoteDriverKitOSObject;
  v7 = [(VMUObjectIdentifierDriverKitSupport *)self _fieldsOfOSObject:a3 startOffset:vtableOffsetOfRemoteDriverKitOSObject];
  v8 = [(NSArray *)v6 arrayByAddingObjectsFromArray:v7];

  return v8;
}

- (id)_fieldsOfLocalDriverKitOSObject:(id)a3
{
  vtableOffsetOfLocalDriverKitOSObject = self->_vtableOffsetOfLocalDriverKitOSObject;
  v6 = self->_privateFieldsOfLocalDriverKitOSObject;
  v7 = [(VMUObjectIdentifierDriverKitSupport *)self _fieldsOfOSObject:a3 startOffset:vtableOffsetOfLocalDriverKitOSObject];
  v8 = [(NSArray *)v6 arrayByAddingObjectsFromArray:v7];

  return v8;
}

- (id)classInfoForDriverKitOSClassScan
{
  WeakRetained = objc_loadWeakRetained(&self->_objectIdentifier);
  v3 = [WeakRetained classInfoWithNonobjectType:@"struct OSClassScan" binaryPath:@"DriverKit"];

  return v3;
}

- (id)classInfoForDriverKitOSMetaClassPrivate
{
  WeakRetained = objc_loadWeakRetained(&self->_objectIdentifier);
  v3 = [WeakRetained classInfoWithNonobjectType:@"struct OSMetaClassPrivate" binaryPath:@"DriverKit"];

  return v3;
}

- (id)classInfoForDriverKitOSMetaClass
{
  WeakRetained = objc_loadWeakRetained(&self->_objectIdentifier);
  v3 = [WeakRetained classInfoWithNonobjectType:@"OSMetaClass" binaryPath:@"DriverKit"];

  return v3;
}

- (id)classInfoForDriverKitMemory:(void *)a3 length:(unint64_t)a4 atOffset:(unint64_t)a5 translatedIsa:(unint64_t)a6 symbol:(_CSTypeRef)a7 remoteAddress:(unint64_t)a8
{
  opaque_2 = a7._opaque_2;
  opaque_1 = a7._opaque_1;
  __s1 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_objectIdentifier);
  v15 = [WeakRetained _isaPointerRefersToVTable:a6 remoteAddress:a8 symbol:opaque_1 symbolNameOut:{opaque_2, &__s1}];

  if (!__s1)
  {
LABEL_6:
    v17 = 0;
    goto LABEL_23;
  }

  if (!v15)
  {
    if (!a5 && strstr(__s1, "_Class"))
    {
      if (a4 < 0x28)
      {
        [(VMUObjectIdentifierDriverKitSupport *)self classInfoForDriverKitOSClassScan];
      }

      else
      {
        [(VMUObjectIdentifierDriverKitSupport *)self classInfoForDriverKitOSMetaClassPrivate];
      }
      v17 = ;
      goto LABEL_23;
    }

    goto LABEL_6;
  }

  v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:__s1 + 11];
  if ([v16 hasSuffix:@"MetaClass"])
  {
    v17 = [(VMUObjectIdentifierDriverKitSupport *)self classInfoForDriverKitOSMetaClass];
  }

  else
  {
    if (a5)
    {
      CSSymbolGetSymbolOwner();
      v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:CSSymbolOwnerGetPath()];
      v17 = [(VMUClassInfo *)VMUMutableClassInfo classInfoWithClassName:v16 binaryPath:v18 type:128];

      if (self->_vtableOffsetOfRemoteDriverKitOSObject == a5)
      {
        v19 = [(VMUObjectIdentifierDriverKitSupport *)self _fieldsOfRemoteDriverKitOSObject:v17];
      }

      else if (self->_vtableOffsetOfLocalDriverKitOSObject == a5)
      {
        v19 = [(VMUObjectIdentifierDriverKitSupport *)self _fieldsOfLocalDriverKitOSObject:v17];
      }

      else
      {
        if (self->_vtableOffsetOfLegacyOSObject != a5)
        {
          goto LABEL_22;
        }

        v19 = [(VMUObjectIdentifierDriverKitSupport *)self _fieldsOfLegacyOSObject:v17];
      }

      v20 = v19;
      if (v19)
      {
        [v17 setFields:v19];
      }

      goto LABEL_22;
    }

    v17 = 0;
  }

LABEL_22:

LABEL_23:

  return v17;
}

- (id)driverKitClassInfoForMemory:(void *)a3 length:(unint64_t)a4 remoteAddress:(unint64_t)a5
{
  vtableOffsetsCount = self->_vtableOffsetsCount;
  if (vtableOffsetsCount)
  {
    for (i = 0; i < vtableOffsetsCount; ++i)
    {
      v11 = self->_vtableOffsets[i];
      if (v11 + 8 <= a4)
      {
        WeakRetained = objc_loadWeakRetained(&self->_objectIdentifier);
        v13 = [WeakRetained _classInfoForMemory:a3 length:a4 atOffset:v11 remoteAddress:a5];

        if (v13)
        {
          goto LABEL_8;
        }

        vtableOffsetsCount = self->_vtableOffsetsCount;
      }
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (id)_labelForDriverKitOSClassLoadInformation:(void *)a3 length:(unint64_t)a4 remoteAddress:(unint64_t)a5
{
  if (HIDWORD(*a3))
  {
    v5 = (*a3 & 7) == 0;
    *a3;
  }

  else
  {
    v5 = 0;
  }

  if (v5 && (WeakRetained = objc_loadWeakRetained(&self->_objectIdentifier), [WeakRetained symbolicator], CSSymbolicatorGetSymbolWithAddressAtTime(), WeakRetained, (CSIsNull() & 1) == 0))
  {
    Name = CSSymbolGetName();
    if (Name)
    {
      Name = [MEMORY[0x1E696AEC0] stringWithUTF8String:Name];
    }
  }

  else
  {
    Name = 0;
  }

  return Name;
}

- (id)_labelForDriverKitOSMetaClass:(void *)a3 length:(unint64_t)a4 remoteAddress:(unint64_t)a5
{
  if (self->_vtableOffsetsCount)
  {
    v9 = 0;
    while (1)
    {
      v10 = *(a3 + self->_vtableOffsets[v9]);
      WeakRetained = objc_loadWeakRetained(&self->_objectIdentifier);
      v12 = [WeakRetained translateIsaPointer:v10];

      if (HIDWORD(v12) && (v12 & 7) == 0)
      {
        v14 = objc_loadWeakRetained(&self->_objectIdentifier);
        [v14 symbolicator];
        SymbolWithAddressAtTime = CSSymbolicatorGetSymbolWithAddressAtTime();
        v17 = v16;

        if ((CSIsNull() & 1) == 0)
        {
          v22 = 0;
          v18 = objc_loadWeakRetained(&self->_objectIdentifier);
          v19 = [v18 _isaPointerRefersToVTable:v12 remoteAddress:a5 symbol:SymbolWithAddressAtTime symbolNameOut:{v17, &v22}];

          if (v19)
          {
            break;
          }
        }
      }

      if (++v9 >= self->_vtableOffsetsCount)
      {
        v20 = 0;
        goto LABEL_16;
      }
    }

    v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v22 + 11];
LABEL_16:
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)labelForDriverKitMemory:(void *)a3 length:(unint64_t)a4 remoteAddress:(unint64_t)a5 class:(id)a6
{
  v10 = a6;
  v11 = [v10 className];
  if ([v11 isEqualToString:@"struct OSClassScan"])
  {

LABEL_4:
    v14 = [(VMUObjectIdentifierDriverKitSupport *)self _labelForDriverKitOSClassLoadInformation:a3 length:a4 remoteAddress:a5];
LABEL_5:
    v15 = v14;
    goto LABEL_6;
  }

  v12 = [v10 className];
  v13 = [v12 isEqualToString:@"struct OSMetaClassPrivate"];

  if (v13)
  {
    goto LABEL_4;
  }

  v17 = [v10 className];
  v18 = [v17 isEqualToString:@"OSMetaClass"];

  if (v18)
  {
    v14 = [(VMUObjectIdentifierDriverKitSupport *)self _labelForDriverKitOSMetaClass:a3 length:a4 remoteAddress:a5];
    goto LABEL_5;
  }

  v15 = 0;
LABEL_6:

  return v15;
}

@end