@interface GPBMessage
+ (BOOL)resolveClassMethod:(SEL)a3;
+ (BOOL)resolveInstanceMethod:(SEL)a3;
+ (GPBMessage)allocWithZone:(_NSZone *)a3;
+ (id)descriptor;
+ (id)message;
+ (id)parseDelimitedFromCodedInputStream:(id)a3 extensionRegistry:(id)a4 error:(id *)a5;
+ (id)parseFromCodedInputStream:(id)a3 extensionRegistry:(id)a4 error:(id *)a5;
+ (id)parseFromData:(id)a3 extensionRegistry:(id)a4 error:(id *)a5;
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (BOOL)isInitialized;
- (GPBMessage)init;
- (GPBMessage)initWithCodedInputStream:(id)a3 extensionRegistry:(id)a4 error:(id *)a5;
- (GPBMessage)initWithCoder:(id)a3;
- (GPBMessage)initWithData:(id)a3 extensionRegistry:(id)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)data;
- (id)delimitedData;
- (id)descriptor;
- (id)getExtension:(id)a3;
- (unint64_t)hash;
- (unint64_t)serializedSize;
- (void)addExtension:(id)a3 value:(id)a4;
- (void)clearExtension:(id)a3;
- (void)copyFieldsInto:(id)a3 zone:(_NSZone *)a4 descriptor:(id)a5;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)internalClear:(BOOL)a3;
- (void)mergeDelimitedFromCodedInputStream:(id)a3 extensionRegistry:(id)a4;
- (void)mergeFrom:(id)a3;
- (void)mergeFromCodedInputStream:(id)a3 extensionRegistry:(id)a4;
- (void)mergeFromData:(id)a3 extensionRegistry:(id)a4;
- (void)parseMessageSet:(id)a3 extensionRegistry:(id)a4;
- (void)setExtension:(id)a3 index:(unint64_t)a4 value:(id)a5;
- (void)setExtension:(id)a3 value:(id)a4;
- (void)setUnknownFields:(id)a3;
- (void)writeDelimitedToCodedOutputStream:(id)a3;
- (void)writeDelimitedToOutputStream:(id)a3;
- (void)writeExtensionsToCodedOutputStream:(id)a3 range:(GPBExtensionRange)a4 sortedExtensions:(id)a5;
- (void)writeField:(id)a3 toCodedOutputStream:(id)a4;
- (void)writeToCodedOutputStream:(id)a3;
- (void)writeToOutputStream:(id)a3;
@end

@implementation GPBMessage

+ (void)initialize
{
  v3 = objc_opt_class();
  if (objc_opt_class() == v3)
  {
    [a1 descriptor];

    objc_opt_class();
  }

  else if ([a1 superclass] == v3)
  {

    [a1 descriptor];
  }
}

+ (GPBMessage)allocWithZone:(_NSZone *)a3
{
  v5 = *([a1 descriptor] + 6);

  return NSAllocateObject(a1, v5, a3);
}

+ (id)descriptor
{
  result = qword_1004588A0;
  if (!qword_1004588A0)
  {
    qword_1004588A8 = [[GPBFileDescriptor alloc] initWithPackage:@"internal" syntax:2];
    LODWORD(v3) = 0;
    result = [GPBDescriptor allocDescriptorForClass:objc_opt_class() rootClass:0 file:qword_1004588A8 fields:0 fieldCount:0 storageSize:0 flags:v3];
    qword_1004588A0 = result;
  }

  return result;
}

+ (id)message
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (GPBMessage)init
{
  v5.receiver = self;
  v5.super_class = GPBMessage;
  v2 = [(GPBMessage *)&v5 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v2->messageStorage_ = (v2 + class_getInstanceSize(v3));
  }

  return v2;
}

- (GPBMessage)initWithData:(id)a3 extensionRegistry:(id)a4 error:(id *)a5
{
  v8 = [(GPBMessage *)self init];
  v9 = v8;
  if (v8)
  {
    [(GPBMessage *)v8 mergeFromData:a3 extensionRegistry:a4];
    if (a5)
    {
      *a5 = 0;
    }
  }

  return v9;
}

- (GPBMessage)initWithCodedInputStream:(id)a3 extensionRegistry:(id)a4 error:(id *)a5
{
  v8 = [(GPBMessage *)self init];
  v9 = v8;
  if (v8)
  {
    [(GPBMessage *)v8 mergeFromCodedInputStream:a3 extensionRegistry:a4];
    if (a5)
    {
      *a5 = 0;
    }
  }

  return v9;
}

- (void)dealloc
{
  [(GPBMessage *)self internalClear:0];
  if (self->autocreator_)
  {
    sub_10031656C();
  }

  if (atomic_load(&self->readOnlySemaphore_))
  {
    v4 = atomic_load(&self->readOnlySemaphore_);
    dispatch_release(v4);
  }

  v5.receiver = self;
  v5.super_class = GPBMessage;
  [(GPBMessage *)&v5 dealloc];
}

- (void)copyFieldsInto:(id)a3 zone:(_NSZone *)a4 descriptor:(id)a5
{
  v7 = a3;
  memcpy(*(a3 + 8), self->messageStorage_, *(a5 + 6));
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v9 = *(a5 + 1);
  v10 = self;
  v11 = [v9 countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v44;
    v34 = self;
    v35 = v7;
    v36 = v9;
    do
    {
      v14 = 0;
      v37 = v12;
      do
      {
        if (*v44 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v43 + 1) + 8 * v14);
        v16 = v15[1];
        if ((*(v16 + 28) & 0xF02) != 0)
        {
          v17 = GPBGetObjectIvarWithFieldNoAutocreate(v10, *(*(&v43 + 1) + 8 * v14));
          if (!v17)
          {
            goto LABEL_37;
          }

          v18 = v17;
          v19 = v13;
          v20 = *(v15[1] + 30) - 15;
          v21 = [v15 fieldType];
          if (v20 <= 1)
          {
            if (v21 == 1)
            {
              v22 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v18, "count")}];
              v39 = 0u;
              v40 = 0u;
              v41 = 0u;
              v42 = 0u;
              v23 = [v18 countByEnumeratingWithState:&v39 objects:v47 count:16];
              if (v23)
              {
                v24 = v23;
                v25 = *v40;
                do
                {
                  for (i = 0; i != v24; i = i + 1)
                  {
                    if (*v40 != v25)
                    {
                      objc_enumerationMutation(v18);
                    }

                    v27 = [*(*(&v39 + 1) + 8 * i) copyWithZone:a4];
                    [v22 addObject:v27];
                  }

                  v24 = [v18 countByEnumeratingWithState:&v39 objects:v47 count:16];
                }

                while (v24);
                v10 = v34;
                v7 = v35;
              }

              v9 = v36;
              v13 = v19;
              goto LABEL_36;
            }

            v13 = v19;
            if ([v15 mapKeyDataType] == 14)
            {
              v22 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v18, "count")}];
              v38[0] = _NSConcreteStackBlock;
              v38[1] = 3221225472;
              v38[2] = sub_10030ED94;
              v38[3] = &unk_100435068;
              v38[4] = v22;
              v38[5] = a4;
              [v18 enumerateKeysAndObjectsUsingBlock:v38];
LABEL_36:
              v12 = v37;
              v33 = v18;
              GPBSetRetainedObjectIvarWithFieldPrivate(v7, v15, v22);
              goto LABEL_37;
            }

            v32 = [v18 deepCopyWithZone:a4];
LABEL_35:
            v22 = v32;
            goto LABEL_36;
          }

          if (v21 == 1)
          {
            v13 = v19;
            if (*(v15[1] + 30) - 13 > 3)
            {
LABEL_33:
              v32 = [v18 copyWithZone:a4];
              goto LABEL_35;
            }
          }

          else
          {
            v13 = v19;
            if ([v15 mapKeyDataType] != 14 || *(v15[1] + 30) - 13 > 3)
            {
              goto LABEL_33;
            }
          }

          v32 = [v18 mutableCopyWithZone:a4];
          goto LABEL_35;
        }

        v28 = *(v16 + 30);
        if ((v28 - 15) <= 1)
        {
          if (!GPBGetHasIvar(v10, *(v16 + 20), *(v16 + 16)))
          {
            *(v7[8] + *(v15[1] + 24)) = 0;
            goto LABEL_37;
          }

LABEL_27:
          v29 = GPBGetObjectIvarWithFieldNoAutocreate(v10, v15);
          v30 = [v29 copyWithZone:a4];
          v31 = v29;
          GPBSetRetainedObjectIvarWithFieldPrivate(v7, v15, v30);
          goto LABEL_37;
        }

        if ((v28 - 13) <= 3 && GPBGetHasIvar(v10, *(v16 + 20), *(v16 + 16)))
        {
          goto LABEL_27;
        }

LABEL_37:
        v14 = v14 + 1;
      }

      while (v14 != v12);
      v12 = [v9 countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v12);
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [(GPBMessage *)self descriptor];
  v6 = [objc_msgSend(objc_msgSend(v5 "messageClass")];
  [(GPBMessage *)self copyFieldsInto:v6 zone:a3 descriptor:v5];
  v6[1] = [(GPBUnknownFieldSet *)self->unknownFields_ copyWithZone:a3];
  v6[2] = sub_10030EE78(self->extensionMap_, a3);
  return v6;
}

- (void)internalClear:(BOOL)a3
{
  v25 = a3;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v24 = [(GPBMessage *)self descriptor];
  v4 = v24[1];
  v5 = [v4 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v31;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v30 + 1) + 8 * i);
        v10 = v9[1];
        if ((*(v10 + 28) & 0xF02) != 0)
        {
          v11 = GPBGetObjectIvarWithFieldNoAutocreate(self, *(*(&v30 + 1) + 8 * i));
          if (!v11)
          {
            continue;
          }

          v12 = v11;
          if ([v9 fieldType] == 1)
          {
            if (*(v9[1] + 30) - 13 <= 3)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v13 = &OBJC_IVAR___GPBAutocreatedArray__autocreator;
                goto LABEL_24;
              }

LABEL_27:

              continue;
            }

            v13 = &OBJC_IVAR___GPBInt32Array__autocreator;
LABEL_24:
            v16 = *v13;
          }

          else
          {
            if ([v9 mapKeyDataType] == 14 && *(v9[1] + 30) - 13 <= 3)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_27;
              }

              v13 = &OBJC_IVAR___GPBAutocreatedDictionary__autocreator;
              goto LABEL_24;
            }

            v16 = 8;
          }

          v17 = &v12[v16];
          if (*v17 == self)
          {
            *v17 = 0;
          }

          goto LABEL_27;
        }

        v14 = *(v10 + 30);
        if ((v14 - 15) <= 1)
        {
          GPBClearAutocreatedMessageIvarWithField(self, *(*(&v30 + 1) + 8 * i));
          v15 = GPBGetObjectIvarWithFieldNoAutocreate(self, v9);
LABEL_14:

          continue;
        }

        if ((v14 - 13) <= 3 && GPBGetHasIvar(self, *(v10 + 20), *(v10 + 16)))
        {
          v15 = GPBGetObjectIvarWithField(self, v9);
          goto LABEL_14;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v6);
  }

  v18 = [(NSMutableDictionary *)self->autocreatedExtensionMap_ allValues];

  self->autocreatedExtensionMap_ = 0;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v19 = [v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v27;
    do
    {
      for (j = 0; j != v20; j = j + 1)
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v26 + 1) + 8 * j);
        if (*(v23 + 32) != self)
        {
          sub_1003165D8();
        }

        GPBClearMessageAutocreator(v23);
      }

      v20 = [v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v20);
  }

  self->extensionMap_ = 0;
  self->unknownFields_ = 0;
  if (v25)
  {
    bzero(self->messageStorage_, *(v24 + 6));
  }
}

- (BOOL)isInitialized
{
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v3 = *([(GPBMessage *)self descriptor]+ 1);
  v4 = [v3 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v4)
  {
    v5 = *v30;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v30 != v5)
      {
        objc_enumerationMutation(v3);
      }

      v7 = *(*(&v29 + 1) + 8 * v6);
      if ([v7 isRequired] && !GPBGetHasIvar(self, *(v7[1] + 20), *(v7[1] + 16)))
      {
        goto LABEL_36;
      }

      if (*(v7[1] + 30) - 15 > 1)
      {
        goto LABEL_33;
      }

      v8 = [v7 fieldType];
      if (v8 == 1)
      {
        v9 = GPBGetObjectIvarWithFieldNoAutocreate(self, v7);
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v10 = [v9 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v10)
        {
          v11 = *v26;
LABEL_15:
          v12 = 0;
          while (1)
          {
            if (*v26 != v11)
            {
              objc_enumerationMutation(v9);
            }

            if (![*(*(&v25 + 1) + 8 * v12) isInitialized])
            {
              break;
            }

            if (v10 == ++v12)
            {
              v10 = [v9 countByEnumeratingWithState:&v25 objects:v33 count:16];
              if (v10)
              {
                goto LABEL_15;
              }

              goto LABEL_33;
            }
          }

LABEL_36:
          v17 = 0;
          return v17 & 1;
        }

        goto LABEL_33;
      }

      if (v8)
      {
        v13 = [v7 mapKeyDataType] == 14;
        v14 = GPBGetObjectIvarWithFieldNoAutocreate(self, v7);
        if (!v13)
        {
          if (v14 && ![v14 isInitialized])
          {
            goto LABEL_36;
          }

          goto LABEL_33;
        }

        if (v14)
        {
          IsInitializedInternalHelper = GPBDictionaryIsInitializedInternalHelper(v14, v7);
          goto LABEL_29;
        }
      }

      else
      {
        if ([v7 isRequired])
        {
          goto LABEL_28;
        }

        if (([v7 isOptional] & 1) == 0)
        {
          sub_1003166BC(self, v7, a2);
        }

        if (GPBGetHasIvar(self, *(v7[1] + 20), *(v7[1] + 16)))
        {
LABEL_28:
          IsInitializedInternalHelper = [GPBGetMessageMessageField(self v7)];
LABEL_29:
          if ((IsInitializedInternalHelper & 1) == 0)
          {
            goto LABEL_36;
          }
        }
      }

LABEL_33:
      if (++v6 == v4)
      {
        v4 = [v3 countByEnumeratingWithState:&v29 objects:v34 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 1;
  extensionMap = self->extensionMap_;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10030F8EC;
  v20[3] = &unk_100435090;
  v20[4] = &v21;
  [(NSMutableDictionary *)extensionMap enumerateKeysAndObjectsUsingBlock:v20];
  v17 = *(v22 + 24);
  _Block_object_dispose(&v21, 8);
  return v17 & 1;
}

- (id)descriptor
{
  v2 = objc_opt_class();

  return [v2 descriptor];
}

- (id)data
{
  v3 = [NSMutableData dataWithLength:[(GPBMessage *)self serializedSize]];
  v4 = [[GPBCodedOutputStream alloc] initWithData:v3];
  [(GPBMessage *)self writeToCodedOutputStream:v4];

  return v3;
}

- (id)delimitedData
{
  v3 = [(GPBMessage *)self serializedSize];
  v4 = [NSMutableData dataWithLength:GPBComputeRawVarint32SizeForInteger(v3) + v3];
  v5 = [[GPBCodedOutputStream alloc] initWithData:v4];
  [(GPBMessage *)self writeDelimitedToCodedOutputStream:v5];

  return v4;
}

- (void)writeToOutputStream:(id)a3
{
  v4 = [[GPBCodedOutputStream alloc] initWithOutputStream:a3];
  [(GPBMessage *)self writeToCodedOutputStream:v4];
}

- (void)writeToCodedOutputStream:(id)a3
{
  v5 = [(GPBMessage *)self descriptor];
  v6 = v5[1];
  v7 = [v6 count];
  v8 = [v5 extensionRanges];
  v19 = v5;
  v9 = [v5 extensionRangesCount];
  v10 = [-[NSMutableDictionary allKeys](self->extensionMap_ "allKeys")];
  if (v7)
  {
    v11 = 0;
  }

  else
  {
    v11 = v9 == 0;
  }

  if (!v11)
  {
    v12 = v10;
    v13 = 0;
    v14 = 0;
    do
    {
      if (v14 == v7)
      {
        [(GPBMessage *)self writeExtensionsToCodedOutputStream:a3 range:v8[v13] sortedExtensions:v12];
        v14 = v7;
        ++v13;
      }

      else if (v13 == v9 || (v15 = [v6 objectAtIndexedSubscript:v14], v16 = &v8[v13], *(v15[1] + 16) < *v16))
      {
        -[GPBMessage writeField:toCodedOutputStream:](self, "writeField:toCodedOutputStream:", [v6 objectAtIndexedSubscript:v14++], a3);
      }

      else
      {
        ++v13;
        [(GPBMessage *)self writeExtensionsToCodedOutputStream:a3 range:*v16 sortedExtensions:v12];
      }
    }

    while (v14 < v7 || v13 < v9);
  }

  v17 = [v19 isWireFormat];
  unknownFields = self->unknownFields_;
  if (v17)
  {

    [(GPBUnknownFieldSet *)unknownFields writeAsMessageSetTo:a3];
  }

  else
  {

    [(GPBUnknownFieldSet *)unknownFields writeToCodedOutputStream:a3];
  }
}

- (void)writeDelimitedToOutputStream:(id)a3
{
  v4 = [[GPBCodedOutputStream alloc] initWithOutputStream:a3];
  [(GPBMessage *)self writeDelimitedToCodedOutputStream:v4];
}

- (void)writeDelimitedToCodedOutputStream:(id)a3
{
  [a3 writeRawVarintSizeTAs32:{-[GPBMessage serializedSize](self, "serializedSize")}];

  [(GPBMessage *)self writeToCodedOutputStream:a3];
}

- (void)writeField:(id)a3 toCodedOutputStream:(id)a4
{
  v7 = [a3 fieldType];
  if (v7 || GPBGetHasIvar(self, *(*(a3 + 1) + 20), *(*(a3 + 1) + 16)))
  {
    v8 = *(a3 + 1);
    v9 = *(v8 + 16);
    switch(*(v8 + 30))
    {
      case 0:
        if (v7 == 1)
        {
          if ([a3 isPackable])
          {
            v10 = GPBFieldTag(a3);
          }

          else
          {
            v10 = 0;
          }

          v61 = GPBGetObjectIvarWithFieldNoAutocreate(self, a3);

          [a4 writeBoolArray:v9 values:v61 tag:v10];
        }

        else
        {
          if (v7)
          {
            goto LABEL_134;
          }

          v42 = GPBGetMessageBoolField(self, a3);

          [a4 writeBool:v9 value:v42];
        }

        break;
      case 1:
        if (v7 == 1)
        {
          if ([a3 isPackable])
          {
            v22 = GPBFieldTag(a3);
          }

          else
          {
            v22 = 0;
          }

          v62 = GPBGetObjectIvarWithFieldNoAutocreate(self, a3);

          [a4 writeFixed32Array:v9 values:v62 tag:v22];
        }

        else
        {
          if (v7)
          {
            goto LABEL_134;
          }

          v43 = GPBGetMessageUInt32Field(self, a3);

          [a4 writeFixed32:v9 value:{v43, v44}];
        }

        break;
      case 2:
        if (v7 == 1)
        {
          if ([a3 isPackable])
          {
            v18 = GPBFieldTag(a3);
          }

          else
          {
            v18 = 0;
          }

          v58 = GPBGetObjectIvarWithFieldNoAutocreate(self, a3);

          [a4 writeSFixed32Array:v9 values:v58 tag:v18];
        }

        else
        {
          if (v7)
          {
            goto LABEL_134;
          }

          v36 = GPBGetMessageInt32Field(self, a3);

          [a4 writeSFixed32:v9 value:{v36, v37}];
        }

        break;
      case 3:
        if (v7 == 1)
        {
          if ([a3 isPackable])
          {
            v20 = GPBFieldTag(a3);
          }

          else
          {
            v20 = 0;
          }

          v59 = GPBGetObjectIvarWithFieldNoAutocreate(self, a3);

          [a4 writeFloatArray:v9 values:v59 tag:v20];
        }

        else
        {
          if (v7)
          {
            goto LABEL_134;
          }

          GPBGetMessageFloatField(self, a3);

          [a4 writeFloat:v9 value:{v38, v39}];
        }

        break;
      case 4:
        if (v7 == 1)
        {
          if ([a3 isPackable])
          {
            v15 = GPBFieldTag(a3);
          }

          else
          {
            v15 = 0;
          }

          v55 = GPBGetObjectIvarWithFieldNoAutocreate(self, a3);

          [a4 writeFixed64Array:v9 values:v55 tag:v15];
        }

        else
        {
          if (v7)
          {
            goto LABEL_134;
          }

          v30 = GPBGetMessageUInt64Field(self, a3);

          [a4 writeFixed64:v9 value:{v30, v31}];
        }

        break;
      case 5:
        if (v7 == 1)
        {
          if ([a3 isPackable])
          {
            v24 = GPBFieldTag(a3);
          }

          else
          {
            v24 = 0;
          }

          v64 = GPBGetObjectIvarWithFieldNoAutocreate(self, a3);

          [a4 writeSFixed64Array:v9 values:v64 tag:v24];
        }

        else
        {
          if (v7)
          {
            goto LABEL_134;
          }

          v46 = GPBGetMessageInt64Field(self, a3);

          [a4 writeSFixed64:v9 value:{v46, v47}];
        }

        break;
      case 6:
        if (v7 == 1)
        {
          if ([a3 isPackable])
          {
            v25 = GPBFieldTag(a3);
          }

          else
          {
            v25 = 0;
          }

          v65 = GPBGetObjectIvarWithFieldNoAutocreate(self, a3);

          [a4 writeDoubleArray:v9 values:v65 tag:v25];
        }

        else
        {
          if (v7)
          {
            goto LABEL_134;
          }

          GPBGetMessageDoubleField(self, a3);

          [a4 writeDouble:v9 value:{v50, v51}];
        }

        break;
      case 7:
        if (v7 == 1)
        {
          if ([a3 isPackable])
          {
            v21 = GPBFieldTag(a3);
          }

          else
          {
            v21 = 0;
          }

          v60 = GPBGetObjectIvarWithFieldNoAutocreate(self, a3);

          [a4 writeInt32Array:v9 values:v60 tag:v21];
        }

        else
        {
          if (v7)
          {
            goto LABEL_134;
          }

          v40 = GPBGetMessageInt32Field(self, a3);

          [a4 writeInt32:v9 value:{v40, v41}];
        }

        break;
      case 8:
        if (v7 == 1)
        {
          if ([a3 isPackable])
          {
            v27 = GPBFieldTag(a3);
          }

          else
          {
            v27 = 0;
          }

          v67 = GPBGetObjectIvarWithFieldNoAutocreate(self, a3);

          [a4 writeInt64Array:v9 values:v67 tag:v27];
        }

        else
        {
          if (v7)
          {
            goto LABEL_134;
          }

          v68 = GPBGetMessageInt64Field(self, a3);

          [a4 writeInt64:v9 value:{v68, v69}];
        }

        break;
      case 9:
        if (v7 == 1)
        {
          if ([a3 isPackable])
          {
            v17 = GPBFieldTag(a3);
          }

          else
          {
            v17 = 0;
          }

          v57 = GPBGetObjectIvarWithFieldNoAutocreate(self, a3);

          [a4 writeSInt32Array:v9 values:v57 tag:v17];
        }

        else
        {
          if (v7)
          {
            goto LABEL_134;
          }

          v34 = GPBGetMessageInt32Field(self, a3);

          [a4 writeSInt32:v9 value:{v34, v35}];
        }

        break;
      case 0xA:
        if (v7 == 1)
        {
          if ([a3 isPackable])
          {
            v26 = GPBFieldTag(a3);
          }

          else
          {
            v26 = 0;
          }

          v66 = GPBGetObjectIvarWithFieldNoAutocreate(self, a3);

          [a4 writeSInt64Array:v9 values:v66 tag:v26];
        }

        else
        {
          if (v7)
          {
            goto LABEL_134;
          }

          v52 = GPBGetMessageInt64Field(self, a3);

          [a4 writeSInt64:v9 value:{v52, v53}];
        }

        break;
      case 0xB:
        if (v7 == 1)
        {
          if ([a3 isPackable])
          {
            v14 = GPBFieldTag(a3);
          }

          else
          {
            v14 = 0;
          }

          v54 = GPBGetObjectIvarWithFieldNoAutocreate(self, a3);

          [a4 writeUInt32Array:v9 values:v54 tag:v14];
        }

        else
        {
          if (v7)
          {
            goto LABEL_134;
          }

          v28 = GPBGetMessageUInt32Field(self, a3);

          [a4 writeUInt32:v9 value:{v28, v29}];
        }

        break;
      case 0xC:
        if (v7 == 1)
        {
          if ([a3 isPackable])
          {
            v16 = GPBFieldTag(a3);
          }

          else
          {
            v16 = 0;
          }

          v56 = GPBGetObjectIvarWithFieldNoAutocreate(self, a3);

          [a4 writeUInt64Array:v9 values:v56 tag:v16];
        }

        else
        {
          if (v7)
          {
            goto LABEL_134;
          }

          v32 = GPBGetMessageUInt64Field(self, a3);

          [a4 writeUInt64:v9 value:{v32, v33}];
        }

        break;
      case 0xD:
        v12 = GPBGetObjectIvarWithFieldNoAutocreate(self, a3);
        if (v7 == 1)
        {

          [a4 writeBytesArray:v9 values:v12];
        }

        else
        {
          if (v7)
          {
            goto LABEL_120;
          }

          [a4 writeBytes:v9 value:v12];
        }

        break;
      case 0xE:
        v12 = GPBGetObjectIvarWithFieldNoAutocreate(self, a3);
        if (v7 == 1)
        {

          [a4 writeStringArray:v9 values:{v12, v13}];
        }

        else
        {
          if (v7)
          {
            goto LABEL_120;
          }

          [a4 writeString:v9 value:v12];
        }

        break;
      case 0xF:
        v12 = GPBGetObjectIvarWithFieldNoAutocreate(self, a3);
        if (v7 == 1)
        {

          [a4 writeMessageArray:v9 values:{v12, v19}];
        }

        else
        {
          if (v7)
          {
            goto LABEL_120;
          }

          [a4 writeMessage:v9 value:v12];
        }

        break;
      case 0x10:
        v12 = GPBGetObjectIvarWithFieldNoAutocreate(self, a3);
        if (v7 == 1)
        {

          [a4 writeGroupArray:v9 values:{v12, v11}];
        }

        else if (v7)
        {
LABEL_120:
          if ([a3 mapKeyDataType] != 14)
          {
            v49 = v12;
            goto LABEL_135;
          }

          GPBDictionaryWriteToStreamInternalHelper(a4, v12, a3);
        }

        else
        {

          [a4 writeGroup:v9 value:v12];
        }

        break;
      case 0x11:
        if (v7 == 1)
        {
          if ([a3 isPackable])
          {
            v23 = GPBFieldTag(a3);
          }

          else
          {
            v23 = 0;
          }

          v63 = GPBGetObjectIvarWithFieldNoAutocreate(self, a3);

          [a4 writeEnumArray:v9 values:v63 tag:v23];
        }

        else if (v7)
        {
LABEL_134:
          v49 = GPBGetObjectIvarWithFieldNoAutocreate(self, a3);
LABEL_135:

          [v49 writeToCodedOutputStream:a4 asField:{a3, v48}];
        }

        else
        {
          v45 = GPBGetMessageInt32Field(self, a3);

          [a4 writeEnum:v9 value:v45];
        }

        break;
      default:
        return;
    }
  }
}

- (id)getExtension:(id)a3
{
  sub_100310C10(self, a3);
  v5 = [(NSMutableDictionary *)self->extensionMap_ objectForKey:a3];
  if (v5)
  {
    return v5;
  }

  if ([a3 isRepeated])
  {
    return 0;
  }

  if (*(*(a3 + 1) + 44) - 15 < 2)
  {
    GPBPrepareReadOnlySemaphore(self);
    v6 = atomic_load(&self->readOnlySemaphore_);
    dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
    v5 = [(NSMutableDictionary *)self->autocreatedExtensionMap_ objectForKey:a3];
    if (!v5)
    {
      v5 = objc_alloc_init([a3 msgClass]);
      v5[4] = self;
      v5[6] = a3;
      autocreatedExtensionMap = self->autocreatedExtensionMap_;
      if (!autocreatedExtensionMap)
      {
        autocreatedExtensionMap = objc_alloc_init(NSMutableDictionary);
        self->autocreatedExtensionMap_ = autocreatedExtensionMap;
      }

      [(NSMutableDictionary *)autocreatedExtensionMap setObject:v5 forKey:a3];
    }

    v8 = atomic_load(&self->readOnlySemaphore_);
    dispatch_semaphore_signal(v8);
    return v5;
  }

  return [a3 defaultValue];
}

- (void)writeExtensionsToCodedOutputStream:(id)a3 range:(GPBExtensionRange)a4 sortedExtensions:(id)a5
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = [a5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(a5);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        v14 = [v13 fieldNumber];
        if (v14 >= a4.var0)
        {
          if (v14 >= a4.var1)
          {
            return;
          }

          GPBWriteExtensionValueToOutputStream(v13, [(NSMutableDictionary *)self->extensionMap_ objectForKey:v13], a3);
        }
      }

      v10 = [a5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }
}

- (void)setExtension:(id)a3 value:(id)a4
{
  if (a4)
  {
    sub_100310C10(self, a3);
    if ([a3 isRepeated])
    {
      [NSException raise:NSInvalidArgumentException format:@"Must call addExtension() for repeated types."];
    }

    extensionMap = self->extensionMap_;
    if (!extensionMap)
    {
      extensionMap = objc_alloc_init(NSMutableDictionary);
      self->extensionMap_ = extensionMap;
    }

    [(NSMutableDictionary *)extensionMap setObject:a4 forKey:a3];
    if (*(*(a3 + 1) + 44) - 15 <= 1 && ([a3 isRepeated] & 1) == 0)
    {
      v8 = [(NSMutableDictionary *)self->autocreatedExtensionMap_ objectForKey:a3];
      [(NSMutableDictionary *)self->autocreatedExtensionMap_ removeObjectForKey:a3];
      GPBClearMessageAutocreator(v8);
    }

    GPBBecomeVisibleToAutocreator(self);
  }

  else
  {

    [(GPBMessage *)self clearExtension:?];
  }
}

- (void)addExtension:(id)a3 value:(id)a4
{
  sub_100310C10(self, a3);
  if (([a3 isRepeated] & 1) == 0)
  {
    [NSException raise:NSInvalidArgumentException format:@"Must call setExtension() for singular types."];
  }

  extensionMap = self->extensionMap_;
  if (!extensionMap)
  {
    extensionMap = objc_alloc_init(NSMutableDictionary);
    self->extensionMap_ = extensionMap;
  }

  v8 = [(NSMutableDictionary *)extensionMap objectForKey:a3];
  if (!v8)
  {
    v8 = +[NSMutableArray array];
    [(NSMutableDictionary *)self->extensionMap_ setObject:v8 forKey:a3];
  }

  [v8 addObject:a4];

  GPBBecomeVisibleToAutocreator(self);
}

- (void)setExtension:(id)a3 index:(unint64_t)a4 value:(id)a5
{
  sub_100310C10(self, a3);
  if (([a3 isRepeated] & 1) == 0)
  {
    [NSException raise:NSInvalidArgumentException format:@"Must call setExtension() for singular types."];
  }

  extensionMap = self->extensionMap_;
  if (!extensionMap)
  {
    extensionMap = objc_alloc_init(NSMutableDictionary);
    self->extensionMap_ = extensionMap;
  }

  [-[NSMutableDictionary objectForKey:](extensionMap objectForKey:{a3), "replaceObjectAtIndex:withObject:", a4, a5}];

  GPBBecomeVisibleToAutocreator(self);
}

- (void)clearExtension:(id)a3
{
  sub_100310C10(self, a3);
  if ([(NSMutableDictionary *)self->extensionMap_ objectForKey:a3])
  {
    [(NSMutableDictionary *)self->extensionMap_ removeObjectForKey:a3];

    GPBBecomeVisibleToAutocreator(self);
  }
}

- (void)mergeFromData:(id)a3 extensionRegistry:(id)a4
{
  v6 = [[GPBCodedInputStream alloc] initWithData:a3];
  [(GPBMessage *)self mergeFromCodedInputStream:v6 extensionRegistry:a4];
  [(GPBCodedInputStream *)v6 checkLastTagWas:0];
}

- (void)mergeDelimitedFromCodedInputStream:(id)a3 extensionRegistry:(id)a4
{
  if (!GPBCodedInputStreamIsAtEnd(a3 + 1))
  {
    RetainedBytesNoCopy = GPBCodedInputStreamReadRetainedBytesNoCopy(a3 + 1);
    if (RetainedBytesNoCopy)
    {
      v8 = RetainedBytesNoCopy;
      [(GPBMessage *)self mergeFromData:RetainedBytesNoCopy extensionRegistry:a4];
    }
  }
}

+ (id)parseFromData:(id)a3 extensionRegistry:(id)a4 error:(id *)a5
{
  v5 = [[a1 alloc] initWithData:a3 extensionRegistry:a4 error:a5];

  return v5;
}

+ (id)parseFromCodedInputStream:(id)a3 extensionRegistry:(id)a4 error:(id *)a5
{
  v5 = [[a1 alloc] initWithCodedInputStream:a3 extensionRegistry:a4 error:a5];

  return v5;
}

+ (id)parseDelimitedFromCodedInputStream:(id)a3 extensionRegistry:(id)a4 error:(id *)a5
{
  v8 = objc_alloc_init(a1);
  [v8 mergeDelimitedFromCodedInputStream:a3 extensionRegistry:a4];
  if (a5)
  {
    *a5 = 0;
  }

  return v8;
}

- (void)setUnknownFields:(id)a3
{
  unknownFields = self->unknownFields_;
  if (unknownFields != a3)
  {

    self->unknownFields_ = [a3 copy];

    GPBBecomeVisibleToAutocreator(self);
  }
}

- (void)parseMessageSet:(id)a3 extensionRegistry:(id)a4
{
  Tag = GPBCodedInputStreamReadTag(a3 + 8);
  if (Tag)
  {
    v8 = Tag;
    v9 = GPBWireFormatMakeTag(2, 0);
    UInt32 = 0;
    v11 = 0;
    v12 = 0;
    do
    {
      if (v8 == v9)
      {
        UInt32 = GPBCodedInputStreamReadUInt32(a3 + 1);
        if (UInt32)
        {
          v12 = [a4 extensionForDescriptor:-[GPBMessage descriptor](self fieldNumber:{"descriptor"), UInt32}];
        }
      }

      else if (v8 == GPBWireFormatMakeTag(3, 2))
      {
        v11 = GPBCodedInputStreamReadRetainedBytesNoCopy(a3 + 1);
      }

      else if (![a3 skipField:v8])
      {
        break;
      }

      v8 = GPBCodedInputStreamReadTag(a3 + 8);
    }

    while (v8);
  }

  else
  {
    v12 = 0;
    v11 = 0;
    UInt32 = 0;
  }

  [a3 checkLastTagWas:{GPBWireFormatMakeTag(1, 4)}];
  if (v11 && UInt32)
  {
    if (v12)
    {
      v15 = [[GPBCodedInputStream alloc] initWithData:v11];
      GPBExtensionMergeFromInputStream(v12, [v12 isPackable], v15, a4, self);
    }

    else
    {
      v13 = sub_1003115DC(self);
      v14 = [NSData dataWithData:v11];

      [v13 mergeMessageSetMessage:UInt32 data:v14];
    }
  }
}

- (void)mergeFromCodedInputStream:(id)a3 extensionRegistry:(id)a4
{
  v6 = [(GPBMessage *)self descriptor];
  v33 = [objc_msgSend(v6 "file")];
  v7 = v6[1];
  v8 = [v7 count];
  Tag = GPBCodedInputStreamReadTag(a3 + 8);
  if (!Tag)
  {
    return;
  }

  v10 = Tag;
  v11 = 0;
  do
  {
    if (!v8)
    {
LABEL_16:
      if ([(GPBMessage *)self parseUnknownField:a3 extensionRegistry:a4 tag:v10])
      {
        goto LABEL_28;
      }

      return;
    }

    v12 = v8;
    do
    {
      if (v11 >= v8)
      {
        v11 = 0;
      }

      v13 = [v7 objectAtIndexedSubscript:v11];
      if (GPBFieldTag(v13) == v10)
      {
        v15 = [v13 fieldType];
        if (v15 == 1)
        {
          if (![v13 isPackable])
          {
            goto LABEL_27;
          }

LABEL_23:
          sub_100311D60(self, v13, v33, a3);
        }

        else
        {
          if (v15)
          {
            [a3 readMapEntry:GPBGetMessageMapField_0(self extensionRegistry:v13) field:a4 parentMessage:{v13, self}];
            goto LABEL_28;
          }

          v16 = v13[1];
          switch(*(v16 + 30))
          {
            case 0:
              Bool = GPBCodedInputStreamReadBool(a3 + 1);
              GPBSetBoolIvarWithFieldPrivate(self, v13, Bool);
              break;
            case 1:
              Fixed32 = GPBCodedInputStreamReadFixed32(a3 + 1);
              goto LABEL_46;
            case 2:
              SFixed32 = GPBCodedInputStreamReadSFixed32(a3 + 1);
              goto LABEL_43;
            case 3:
              Float = GPBCodedInputStreamReadFloat(a3 + 1);
              GPBSetFloatIvarWithFieldPrivate(self, v13, Float);
              break;
            case 4:
              Fixed64 = GPBCodedInputStreamReadFixed64(a3 + 1);
              goto LABEL_36;
            case 5:
              SFixed64 = GPBCodedInputStreamReadSFixed64(a3 + 1);
              goto LABEL_56;
            case 6:
              Double = GPBCodedInputStreamReadDouble(a3 + 1);
              GPBSetDoubleIvarWithFieldPrivate(self, v13, Double);
              break;
            case 7:
              SFixed32 = GPBCodedInputStreamReadInt32(a3 + 1);
              goto LABEL_43;
            case 8:
              SFixed64 = GPBCodedInputStreamReadInt64(a3 + 1);
              goto LABEL_56;
            case 9:
              SFixed32 = GPBCodedInputStreamReadSInt32(a3 + 1);
LABEL_43:
              v23 = SFixed32;
              v24 = self;
              v25 = v13;
              goto LABEL_44;
            case 0xA:
              SFixed64 = GPBCodedInputStreamReadSInt64(a3 + 1);
LABEL_56:
              GPBSetInt64IvarWithFieldPrivate(self, v13, SFixed64);
              break;
            case 0xB:
              Fixed32 = GPBCodedInputStreamReadUInt32(a3 + 1);
LABEL_46:
              GPBSetUInt32IvarWithFieldPrivate(self, v13, Fixed32);
              break;
            case 0xC:
              Fixed64 = GPBCodedInputStreamReadUInt64(a3 + 8);
LABEL_36:
              GPBSetUInt64IvarWithFieldPrivate(self, v13, Fixed64);
              break;
            case 0xD:
              RetainedBytes = GPBCodedInputStreamReadRetainedBytes(a3 + 1);
              goto LABEL_52;
            case 0xE:
              RetainedBytes = GPBCodedInputStreamReadRetainedString(a3 + 1);
LABEL_52:
              v28 = RetainedBytes;
              v29 = self;
              v30 = v13;
              goto LABEL_60;
            case 0xF:
              if (GPBGetHasIvar(self, *(v16 + 20), *(v16 + 16)))
              {
                [a3 readMessage:GPBGetObjectIvarWithFieldNoAutocreate(self extensionRegistry:{v13), a4}];
                break;
              }

              v32 = objc_alloc_init([v13 msgClass]);
              [a3 readMessage:v32 extensionRegistry:a4];
              goto LABEL_59;
            case 0x10:
              if (GPBGetHasIvar(self, *(v16 + 20), *(v16 + 16)))
              {
                [a3 readGroup:*(v13[1] + 16) message:GPBGetObjectIvarWithFieldNoAutocreate(self extensionRegistry:{v13), a4}];
              }

              else
              {
                v32 = objc_alloc_init([v13 msgClass]);
                [a3 readGroup:*(v13[1] + 16) message:v32 extensionRegistry:a4];
LABEL_59:
                v29 = self;
                v30 = v13;
                v28 = v32;
LABEL_60:
                GPBSetRetainedObjectIvarWithFieldPrivate(v29, v30, v28);
              }

              break;
            case 0x11:
              Enum = GPBCodedInputStreamReadEnum(a3 + 1);
              if (v33 == 3 || [v13 isValidEnumValue:Enum])
              {
                v24 = self;
                v25 = v13;
                v23 = Enum;
LABEL_44:
                GPBSetInt32IvarWithFieldPrivate(v24, v25, v23);
              }

              else
              {
                [sub_1003115DC(self) mergeVarintField:*(v13[1] + 16) value:Enum];
              }

              break;
            default:
              break;
          }
        }

        ++v11;
        goto LABEL_28;
      }

      ++v11;
      --v12;
    }

    while (v12);
    v14 = v8;
    while (1)
    {
      if (v11 >= v8)
      {
        v11 = 0;
      }

      v13 = [v7 objectAtIndexedSubscript:v11];
      if ([v13 fieldType] == 1 && *(v13[1] + 30) - 13 >= 4 && GPBFieldAlternateTag(v13) == v10)
      {
        break;
      }

      ++v11;
      if (!--v14)
      {
        goto LABEL_16;
      }
    }

    if (([v13 isPackable] & 1) == 0)
    {
      goto LABEL_23;
    }

LABEL_27:
    sub_100312010(self, v13, v33, a3, a4);
LABEL_28:
    v10 = GPBCodedInputStreamReadTag(a3 + 8);
  }

  while (v10);
}

- (void)mergeFrom:(id)a3
{
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  if (([v5 isSubclassOfClass:v6] & 1) == 0 && (objc_msgSend(v6, "isSubclassOfClass:", v5) & 1) == 0)
  {
    [NSException raise:NSInvalidArgumentException format:@"Classes must match %@ != %@", v5, v6];
  }

  GPBBecomeVisibleToAutocreator(self);
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v7 = *([objc_opt_class() descriptor] + 1);
  v8 = [v7 countByEnumeratingWithState:&v66 objects:v72 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v67;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v67 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v66 + 1) + 8 * i);
        v13 = [v12 fieldType];
        if (v13 == 1)
        {
          v18 = GPBGetObjectIvarWithFieldNoAutocreate(a3, v12);
          if (v18)
          {
            v19 = v18;
            v20 = *(v12[1] + 30);
            if ((v20 - 13) > 3)
            {
              v26 = GPBGetMessageRepeatedField_0(self, v12);
              if (v20 == 17)
              {
                [v26 addRawValuesFromArray:v19];
              }

              else
              {
                [v26 addValuesFromArray:v19];
              }
            }

            else
            {
              [GPBGetMessageRepeatedField_0(self v12)];
            }
          }
        }

        else if (v13)
        {
          v21 = GPBGetObjectIvarWithFieldNoAutocreate(a3, v12);
          if (!v21)
          {
            continue;
          }

          v22 = v21;
          v23 = [v12 mapKeyDataType];
          v24 = *(v12[1] + 30);
          if (v23 - 13 > 3 || (v24 - 13) > 3)
          {
            v27 = GPBGetMessageMapField_0(self, v12);
            if (v24 == 17)
            {
              [v27 addRawEntriesFromDictionary:v22];
              continue;
            }
          }

          else
          {
            v27 = GPBGetMessageMapField_0(self, v12);
          }

          [v27 addEntriesFromDictionary:v22];
        }

        else
        {
          v14 = v12[1];
          v16 = *(v14 + 16);
          v15 = *(v14 + 20);
          if (GPBGetHasIvar(a3, v15, v16))
          {
            switch(*(v12[1] + 30))
            {
              case 0:
                v32 = GPBGetMessageBoolField(a3, v12);
                GPBSetBoolIvarWithFieldPrivate(self, v12, v32);
                break;
              case 1:
              case 0xB:
                v31 = GPBGetMessageUInt32Field(a3, v12);
                GPBSetUInt32IvarWithFieldPrivate(self, v12, v31);
                break;
              case 2:
              case 7:
              case 9:
              case 0x11:
                v17 = GPBGetMessageInt32Field(a3, v12);
                GPBSetInt32IvarWithFieldPrivate(self, v12, v17);
                break;
              case 3:
                v33 = GPBGetMessageFloatField(a3, v12);
                GPBSetFloatIvarWithFieldPrivate(self, v12, v33);
                break;
              case 4:
              case 0xC:
                v29 = GPBGetMessageUInt64Field(a3, v12);
                GPBSetUInt64IvarWithFieldPrivate(self, v12, v29);
                break;
              case 5:
              case 8:
              case 0xA:
                v28 = GPBGetMessageInt64Field(a3, v12);
                GPBSetInt64IvarWithFieldPrivate(self, v12, v28);
                break;
              case 6:
                v34 = GPBGetMessageDoubleField(a3, v12);
                GPBSetDoubleIvarWithFieldPrivate(self, v12, v34);
                break;
              case 0xD:
              case 0xE:
                v30 = GPBGetObjectIvarWithFieldNoAutocreate(a3, v12);
                GPBSetObjectIvarWithFieldPrivate(self, v12, v30);
                break;
              case 0xF:
              case 0x10:
                obj = GPBGetObjectIvarWithFieldNoAutocreate(a3, v12);
                if (GPBGetHasIvar(self, v15, v16))
                {
                  [GPBGetObjectIvarWithFieldNoAutocreate(self v12)];
                }

                else
                {
                  GPBSetRetainedObjectIvarWithFieldPrivate(self, v12, [obj copy]);
                }

                break;
              default:
                continue;
            }
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v66 objects:v72 count:16];
    }

    while (v9);
  }

  unknownFields = self->unknownFields_;
  v36 = [a3 unknownFields];
  if (unknownFields)
  {
    [(GPBUnknownFieldSet *)unknownFields mergeUnknownFields:v36];
  }

  else
  {
    [(GPBMessage *)self setUnknownFields:v36];
  }

  if ([*(a3 + 2) count])
  {
    if (!self->extensionMap_)
    {
      v52 = *(a3 + 2);
      v53 = NSZoneFromPointer(self);
      self->extensionMap_ = sub_10030EE78(v52, v53);
      return;
    }

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    obja = *(a3 + 2);
    v37 = [obja countByEnumeratingWithState:&v62 objects:v71 count:16];
    if (!v37)
    {
      return;
    }

    v38 = v37;
    v39 = *v63;
    v54 = *v63;
    do
    {
      v40 = 0;
      v55 = v38;
      do
      {
        if (*v63 != v39)
        {
          objc_enumerationMutation(obja);
        }

        v41 = *(*(&v62 + 1) + 8 * v40);
        v42 = [*(a3 + 2) objectForKey:v41];
        v43 = [(NSMutableDictionary *)self->extensionMap_ objectForKey:v41];
        v44 = *(v41[1] + 44) - 15;
        if ([v41 isRepeated])
        {
          if (!v43)
          {
            v43 = objc_alloc_init(NSMutableArray);
            [(NSMutableDictionary *)self->extensionMap_ setObject:v43 forKey:v41];
          }

          if (v44 > 1)
          {
            [v43 addObjectsFromArray:v42];
            goto LABEL_71;
          }

          v60 = 0u;
          v61 = 0u;
          v58 = 0u;
          v59 = 0u;
          v45 = [v42 countByEnumeratingWithState:&v58 objects:v70 count:16];
          if (v45)
          {
            v46 = v45;
            v47 = *v59;
            do
            {
              for (j = 0; j != v46; j = j + 1)
              {
                if (*v59 != v47)
                {
                  objc_enumerationMutation(v42);
                }

                v49 = [*(*(&v58 + 1) + 8 * j) copy];
                [v43 addObject:v49];
              }

              v46 = [v42 countByEnumeratingWithState:&v58 objects:v70 count:16];
            }

            while (v46);
          }
        }

        else
        {
          if (v44 > 1)
          {
            [(NSMutableDictionary *)self->extensionMap_ setObject:v42 forKey:v41];
            goto LABEL_71;
          }

          if (v43)
          {
            [v43 mergeFrom:v42];
          }

          else
          {
            v50 = [v42 copy];
            [(NSMutableDictionary *)self->extensionMap_ setObject:v50 forKey:v41];
          }
        }

        v39 = v54;
        v38 = v55;
        if (([v41 isRepeated] & 1) == 0)
        {
          v51 = [(NSMutableDictionary *)self->autocreatedExtensionMap_ objectForKey:v41];
          [(NSMutableDictionary *)self->autocreatedExtensionMap_ removeObjectForKey:v41];
          GPBClearMessageAutocreator(v51);
        }

LABEL_71:
        v40 = v40 + 1;
      }

      while (v40 != v38);
      v38 = [obja countByEnumeratingWithState:&v62 objects:v71 count:16];
    }

    while (v38);
  }
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    goto LABEL_43;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (v5 = [objc_opt_class() descriptor], objc_msgSend(objc_opt_class(), "descriptor") != v5))
  {
LABEL_4:
    LOBYTE(v6) = 0;
    return v6;
  }

  v30 = *(a3 + 8);
  messageStorage = self->messageStorage_;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v5[1];
  v7 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (!v7)
  {
    goto LABEL_37;
  }

  v8 = v7;
  v9 = *v34;
  do
  {
    v10 = 0;
    do
    {
      if (*v34 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v33 + 1) + 8 * v10);
      v12 = *(v11 + 8);
      if ((*(v12 + 28) & 0xF02) != 0)
      {
        v13 = GPBGetObjectIvarWithFieldNoAutocreate(self, *(*(&v33 + 1) + 8 * v10));
        v14 = GPBGetObjectIvarWithFieldNoAutocreate(a3, v11);
        if (![v13 count] && !objc_msgSend(v14, "count"))
        {
          goto LABEL_29;
        }

        v15 = v13;
        v16 = v14;
        goto LABEL_14;
      }

      v18 = *(v12 + 16);
      v17 = *(v12 + 20);
      HasIvar = GPBGetHasIvar(self, v17, v18);
      v20 = GPBGetHasIvar(a3, v17, v18);
      if (HasIvar)
      {
        v21 = v20 == 0;
      }

      else
      {
        v21 = 1;
      }

      if (v21)
      {
        if (HasIvar != v20)
        {
          goto LABEL_4;
        }

        goto LABEL_29;
      }

      v22 = *(v11 + 8);
      v23 = *(v22 + 30);
      v24 = *(v22 + 24);
      if (v23 <= 0x11)
      {
        v25 = 1 << v23;
        if (((1 << v23) & 0x20A8E) != 0)
        {
          if (*(messageStorage + v24) != *(v30 + v24))
          {
            goto LABEL_4;
          }

          goto LABEL_29;
        }

        if ((v25 & 0x1570) != 0)
        {
          if (*(messageStorage + v24) != *(v30 + v24))
          {
            goto LABEL_4;
          }

          goto LABEL_29;
        }

        if ((v25 & 0x1E000) != 0)
        {
          v15 = *(messageStorage + v24);
          v16 = *(v30 + v24);
LABEL_14:
          if (([v15 isEqual:v16] & 1) == 0)
          {
            goto LABEL_4;
          }

          goto LABEL_29;
        }
      }

      if (!v23)
      {
        v26 = GPBGetHasIvar(self, v24, 0);
        if (v26 != GPBGetHasIvar(a3, v24, 0))
        {
          goto LABEL_4;
        }
      }

LABEL_29:
      v10 = v10 + 1;
    }

    while (v8 != v10);
    v27 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    v8 = v27;
  }

  while (v27);
LABEL_37:
  if (!-[NSMutableDictionary count](self->extensionMap_, "count") && ![*(a3 + 2) count] || (v6 = -[NSMutableDictionary isEqual:](self->extensionMap_, "isEqual:", *(a3 + 2))) != 0)
  {
    if ((v28 = *(a3 + 1), !-[GPBUnknownFieldSet countOfFields](self->unknownFields_, "countOfFields")) && ![v28 countOfFields] || (v6 = -[GPBUnknownFieldSet isEqual:](self->unknownFields_, "isEqual:", v28)) != 0)
    {
LABEL_43:
      LOBYTE(v6) = 1;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [objc_opt_class() descriptor];
  messageStorage = self->messageStorage_;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = *(v3 + 8);
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        v10 = *(v9 + 8);
        if ((*(v10 + 28) & 0xF02) != 0)
        {
          v11 = [GPBGetObjectIvarWithFieldNoAutocreate(self *(*(&v20 + 1) + 8 * i))];
          if (v11)
          {
            v3 = v11 + 361 * v3 + 19 * *(*(v9 + 8) + 16);
          }
        }

        else
        {
          if (!GPBGetHasIvar(self, *(v10 + 20), *(v10 + 16)))
          {
            continue;
          }

          v12 = *(v9 + 8);
          v13 = *(v12 + 30);
          v14 = *(v12 + 24);
          if (v13 > 8)
          {
            if (*(v12 + 30) <= 0xCu)
            {
              if (*(v12 + 30) > 0xAu)
              {
                if (v13 == 11)
                {
LABEL_32:
                  v17 = *(messageStorage + v14);
                }

                else
                {
LABEL_28:
                  v17 = *(messageStorage + v14);
                }

                v3 = v17 + 19 * v3;
                continue;
              }

              if (v13 == 9)
              {
                goto LABEL_32;
              }

              if (v13 == 10)
              {
                goto LABEL_28;
              }
            }

            else
            {
              if (v13 - 13 < 2)
              {
                v16 = [*(messageStorage + v14) hash];
                goto LABEL_30;
              }

              if (v13 - 15 < 2)
              {
                v3 = *(v12 + 16) + 19 * v3;
                v15 = *(messageStorage + v14);
                v16 = [objc_opt_class() descriptor];
LABEL_30:
                v3 = v16 + 19 * v3;
                continue;
              }

              if (v13 == 17)
              {
                goto LABEL_32;
              }
            }
          }

          else if (*(v12 + 30) <= 3u)
          {
            if (v13 - 1 < 3)
            {
              goto LABEL_32;
            }

            if (!*(v12 + 30))
            {
              v3 = 19 * v3 + GPBGetHasIvar(self, v14, 0);
            }
          }

          else
          {
            if (v13 - 4 < 3)
            {
              goto LABEL_28;
            }

            if (v13 == 7)
            {
              goto LABEL_32;
            }

            if (v13 == 8)
            {
              goto LABEL_28;
            }
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  return v3;
}

- (unint64_t)serializedSize
{
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v60 = [objc_opt_class() descriptor];
  v3 = v60[1];
  v4 = 0;
  v5 = [v3 countByEnumeratingWithState:&v102 objects:v111 count:16];
  if (!v5)
  {
    goto LABEL_89;
  }

  v6 = *v103;
  v61 = *v103;
  v62 = v3;
  do
  {
    v7 = 0;
    v63 = v5;
    do
    {
      if (*v103 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v102 + 1) + 8 * v7);
      v9 = [v8 fieldType];
      v10 = v8[1];
      v11 = *(v10 + 30);
      if (v9 == 1)
      {
        v14 = GPBGetObjectIvarWithFieldNoAutocreate(self, v8);
        v15 = [v14 count];
        if (v15)
        {
          v98 = 0;
          v99 = &v98;
          v100 = 0x2020000000;
          v101 = 0;
          switch(v11)
          {
            case 0:
              v97[0] = _NSConcreteStackBlock;
              v97[1] = 3221225472;
              v97[2] = sub_100313F7C;
              v97[3] = &unk_1004350B8;
              v97[4] = &v98;
              [v14 enumerateValuesWithBlock:v97];
              break;
            case 1:
              v96[0] = _NSConcreteStackBlock;
              v96[1] = 3221225472;
              v96[2] = sub_100313FB8;
              v96[3] = &unk_1004350E0;
              v96[4] = &v98;
              [v14 enumerateValuesWithBlock:v96];
              break;
            case 2:
              v95[0] = _NSConcreteStackBlock;
              v95[1] = 3221225472;
              v95[2] = sub_100313FF4;
              v95[3] = &unk_100435108;
              v95[4] = &v98;
              [v14 enumerateValuesWithBlock:v95];
              break;
            case 3:
              v94[0] = _NSConcreteStackBlock;
              v94[1] = 3221225472;
              v94[2] = sub_100314030;
              v94[3] = &unk_100435130;
              v94[4] = &v98;
              [v14 enumerateValuesWithBlock:v94];
              break;
            case 4:
              v93[0] = _NSConcreteStackBlock;
              v93[1] = 3221225472;
              v93[2] = sub_100314068;
              v93[3] = &unk_100435158;
              v93[4] = &v98;
              [v14 enumerateValuesWithBlock:v93];
              break;
            case 5:
              v92[0] = _NSConcreteStackBlock;
              v92[1] = 3221225472;
              v92[2] = sub_1003140A4;
              v92[3] = &unk_100435180;
              v92[4] = &v98;
              [v14 enumerateValuesWithBlock:v92];
              break;
            case 6:
              v91[0] = _NSConcreteStackBlock;
              v91[1] = 3221225472;
              v91[2] = sub_1003140E0;
              v91[3] = &unk_1004351A8;
              v91[4] = &v98;
              [v14 enumerateValuesWithBlock:v91];
              break;
            case 7:
              v90[0] = _NSConcreteStackBlock;
              v90[1] = 3221225472;
              v90[2] = sub_100314118;
              v90[3] = &unk_100435108;
              v90[4] = &v98;
              [v14 enumerateValuesWithBlock:v90];
              break;
            case 8:
              v89[0] = _NSConcreteStackBlock;
              v89[1] = 3221225472;
              v89[2] = sub_100314154;
              v89[3] = &unk_100435180;
              v89[4] = &v98;
              [v14 enumerateValuesWithBlock:v89];
              break;
            case 9:
              v88[0] = _NSConcreteStackBlock;
              v88[1] = 3221225472;
              v88[2] = sub_100314190;
              v88[3] = &unk_100435108;
              v88[4] = &v98;
              [v14 enumerateValuesWithBlock:v88];
              break;
            case 10:
              v87[0] = _NSConcreteStackBlock;
              v87[1] = 3221225472;
              v87[2] = sub_1003141CC;
              v87[3] = &unk_100435180;
              v87[4] = &v98;
              [v14 enumerateValuesWithBlock:v87];
              break;
            case 11:
              v86[0] = _NSConcreteStackBlock;
              v86[1] = 3221225472;
              v86[2] = sub_100314208;
              v86[3] = &unk_1004350E0;
              v86[4] = &v98;
              [v14 enumerateValuesWithBlock:v86];
              break;
            case 12:
              v85[0] = _NSConcreteStackBlock;
              v85[1] = 3221225472;
              v85[2] = sub_100314244;
              v85[3] = &unk_100435158;
              v85[4] = &v98;
              [v14 enumerateValuesWithBlock:v85];
              break;
            case 13:
              v83 = 0u;
              v84 = 0u;
              v81 = 0u;
              v82 = 0u;
              v29 = [v14 countByEnumeratingWithState:&v81 objects:v110 count:16];
              if (v29)
              {
                v30 = *v82;
                do
                {
                  for (i = 0; i != v29; i = i + 1)
                  {
                    if (*v82 != v30)
                    {
                      objc_enumerationMutation(v14);
                    }

                    v32 = GPBComputeBytesSizeNoTag(*(*(&v81 + 1) + 8 * i));
                    v99[3] += v32;
                  }

                  v29 = [v14 countByEnumeratingWithState:&v81 objects:v110 count:16];
                }

                while (v29);
              }

              break;
            case 14:
              v79 = 0u;
              v80 = 0u;
              v77 = 0u;
              v78 = 0u;
              v21 = [v14 countByEnumeratingWithState:&v77 objects:v109 count:16];
              if (v21)
              {
                v22 = *v78;
                do
                {
                  for (j = 0; j != v21; j = j + 1)
                  {
                    if (*v78 != v22)
                    {
                      objc_enumerationMutation(v14);
                    }

                    v24 = GPBComputeStringSizeNoTag(*(*(&v77 + 1) + 8 * j));
                    v99[3] += v24;
                  }

                  v21 = [v14 countByEnumeratingWithState:&v77 objects:v109 count:16];
                }

                while (v21);
              }

              break;
            case 15:
              v75 = 0u;
              v76 = 0u;
              v73 = 0u;
              v74 = 0u;
              v25 = [v14 countByEnumeratingWithState:&v73 objects:v108 count:16];
              if (v25)
              {
                v26 = *v74;
                do
                {
                  for (k = 0; k != v25; k = k + 1)
                  {
                    if (*v74 != v26)
                    {
                      objc_enumerationMutation(v14);
                    }

                    v28 = GPBComputeMessageSizeNoTag(*(*(&v73 + 1) + 8 * k));
                    v99[3] += v28;
                  }

                  v25 = [v14 countByEnumeratingWithState:&v73 objects:v108 count:16];
                }

                while (v25);
              }

              break;
            case 16:
              v71 = 0u;
              v72 = 0u;
              v69 = 0u;
              v70 = 0u;
              v17 = [v14 countByEnumeratingWithState:&v69 objects:v107 count:16];
              if (v17)
              {
                v18 = *v70;
                do
                {
                  for (m = 0; m != v17; m = m + 1)
                  {
                    if (*v70 != v18)
                    {
                      objc_enumerationMutation(v14);
                    }

                    v20 = GPBComputeGroupSizeNoTag(*(*(&v69 + 1) + 8 * m));
                    v99[3] += v20;
                  }

                  v17 = [v14 countByEnumeratingWithState:&v69 objects:v107 count:16];
                }

                while (v17);
              }

              break;
            case 17:
              v68[0] = _NSConcreteStackBlock;
              v68[1] = 3221225472;
              v68[2] = sub_100314280;
              v68[3] = &unk_100435108;
              v68[4] = &v98;
              [v14 enumerateRawValuesWithBlock:v68];
              break;
            default:
              break;
          }

          v33 = v99[3];
          v34 = GPBComputeTagSize(*(v8[1] + 16));
          v35 = [v8 isPackable];
          v36 = v33 + v4;
          v37 = v34 << (v11 == 16);
          v6 = v61;
          if (v35)
          {
            v4 = v37 + v36 + GPBComputeSizeTSizeAsInt32NoTag(v99[3]);
          }

          else
          {
            v4 = v36 + v37 * v15;
          }

          v3 = v62;
          v5 = v63;
          _Block_object_dispose(&v98, 8);
        }
      }

      else if (v9)
      {
        if ((v11 - 13) <= 3 && [v8 mapKeyDataType] == 14)
        {
          v16 = GPBGetObjectIvarWithFieldNoAutocreate(self, v8);
          if (!v16)
          {
            goto LABEL_69;
          }

          v13 = GPBDictionaryComputeSizeInternalHelper(v16, v8);
        }

        else
        {
          v13 = [GPBGetObjectIvarWithFieldNoAutocreate(self v8)];
        }

LABEL_19:
        v4 += v13;
      }

      else if (GPBGetHasIvar(self, *(v10 + 20), *(v10 + 16)))
      {
        v12 = *(v8[1] + 16);
        switch(v11)
        {
          case 0:
            GPBGetMessageBoolField(self, v8);
            v13 = GPBComputeBoolSize(v12);
            goto LABEL_19;
          case 1:
            GPBGetMessageUInt32Field(self, v8);
            v13 = GPBComputeFixed32Size(v12);
            goto LABEL_19;
          case 2:
            GPBGetMessageInt32Field(self, v8);
            v13 = GPBComputeSFixed32Size(v12);
            goto LABEL_19;
          case 3:
            GPBGetMessageFloatField(self, v8);
            v13 = GPBComputeFloatSize(v12);
            goto LABEL_19;
          case 4:
            GPBGetMessageUInt64Field(self, v8);
            v13 = GPBComputeFixed64Size(v12);
            goto LABEL_19;
          case 5:
            GPBGetMessageInt64Field(self, v8);
            v13 = GPBComputeSFixed64Size(v12);
            goto LABEL_19;
          case 6:
            GPBGetMessageDoubleField(self, v8);
            v13 = GPBComputeDoubleSize(v12);
            goto LABEL_19;
          case 7:
            v44 = GPBGetMessageInt32Field(self, v8);
            v13 = GPBComputeInt32Size(v12, v44);
            goto LABEL_19;
          case 8:
            v48 = GPBGetMessageInt64Field(self, v8);
            v13 = GPBComputeInt64Size(v12, v48);
            goto LABEL_19;
          case 9:
            v42 = GPBGetMessageInt32Field(self, v8);
            v13 = GPBComputeSInt32Size(v12, v42);
            goto LABEL_19;
          case 10:
            v47 = GPBGetMessageInt64Field(self, v8);
            v13 = GPBComputeSInt64Size(v12, v47);
            goto LABEL_19;
          case 11:
            v40 = GPBGetMessageUInt32Field(self, v8);
            v13 = GPBComputeUInt32Size(v12, v40);
            goto LABEL_19;
          case 12:
            v41 = GPBGetMessageUInt64Field(self, v8);
            v13 = GPBComputeUInt64Size(v12, v41);
            goto LABEL_19;
          case 13:
            v46 = GPBGetObjectIvarWithFieldNoAutocreate(self, v8);
            v13 = GPBComputeBytesSize(v12, v46);
            goto LABEL_19;
          case 14:
            v39 = GPBGetObjectIvarWithFieldNoAutocreate(self, v8);
            v13 = GPBComputeStringSize(v12, v39);
            goto LABEL_19;
          case 15:
            v43 = GPBGetObjectIvarWithFieldNoAutocreate(self, v8);
            v13 = GPBComputeMessageSize(v12, v43);
            goto LABEL_19;
          case 16:
            v38 = GPBGetObjectIvarWithFieldNoAutocreate(self, v8);
            v13 = GPBComputeGroupSize(v12, v38);
            goto LABEL_19;
          case 17:
            v45 = GPBGetMessageInt32Field(self, v8);
            v13 = GPBComputeEnumSize(v12, v45);
            goto LABEL_19;
          default:
            break;
        }
      }

LABEL_69:
      v7 = v7 + 1;
    }

    while (v7 != v5);
    v49 = [v3 countByEnumeratingWithState:&v102 objects:v111 count:16];
    v5 = v49;
  }

  while (v49);
LABEL_89:
  v50 = [v60 isWireFormat];
  unknownFields = self->unknownFields_;
  if (v50)
  {
    v52 = [(GPBUnknownFieldSet *)unknownFields serializedSizeAsMessageSet];
  }

  else
  {
    v52 = [(GPBUnknownFieldSet *)unknownFields serializedSize];
  }

  v53 = v52;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  extensionMap = self->extensionMap_;
  v55 = [(NSMutableDictionary *)extensionMap countByEnumeratingWithState:&v64 objects:v106 count:16];
  v56 = v53 + v4;
  if (v55)
  {
    v57 = *v65;
    do
    {
      for (n = 0; n != v55; n = n + 1)
      {
        if (*v65 != v57)
        {
          objc_enumerationMutation(extensionMap);
        }

        v56 += GPBComputeExtensionSerializedSizeIncludingTag(*(*(&v64 + 1) + 8 * n), [(NSMutableDictionary *)self->extensionMap_ objectForKey:*(*(&v64 + 1) + 8 * n)]);
      }

      v55 = [(NSMutableDictionary *)extensionMap countByEnumeratingWithState:&v64 objects:v106 count:16];
    }

    while (v55);
  }

  return v56;
}

+ (BOOL)resolveInstanceMethod:(SEL)a3
{
  v4 = a1;
  v5 = [a1 descriptor];
  if (!v5)
  {
    v58.receiver = v4;
    v58.super_class = &OBJC_METACLASS___GPBMessage;
    return objc_msgSendSuper2(&v58, "resolveInstanceMethod:", a3);
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v43 = v5;
  v6 = *(v5 + 1);
  v7 = [v6 countByEnumeratingWithState:&v54 objects:v64 count:16];
  if (!v7)
  {
LABEL_90:
    v45.receiver = v4;
    v45.super_class = &OBJC_METACLASS___GPBMessage;
    return objc_msgSendSuper2(&v45, "resolveInstanceMethod:", a3);
  }

  v8 = v7;
  v9 = *v55;
  v44 = v4;
LABEL_4:
  v10 = 0;
  while (1)
  {
    if (*v55 != v9)
    {
      objc_enumerationMutation(v6);
    }

    v11 = *(*(&v54 + 1) + 8 * v10);
    v12 = v11[1];
    v13 = v11[3];
    if ((v12[3].i16[2] & 0xF02) == 0)
    {
      break;
    }

    if (v13)
    {
      v14 = v11[3];
    }

    if (v13 == a3)
    {
      if ([v11 fieldType] == 1)
      {
        v30 = v49;
        v49[0] = _NSConcreteStackBlock;
        v49[1] = 3221225472;
        v31 = sub_1003155B8;
      }

      else
      {
        v30 = v48;
        v48[0] = _NSConcreteStackBlock;
        v48[1] = 3221225472;
        v31 = sub_100315654;
      }

      v4 = v44;
      v30[2] = v31;
      v30[3] = &unk_100435228;
      v30[4] = v11;
      v32 = imp_implementationWithBlock(v30);
      v33 = "getArray";
      if (!v32)
      {
        goto LABEL_90;
      }

      goto LABEL_52;
    }

    v15 = v11[4];
    if (v15)
    {
      v16 = v11[4];
    }

    if (v15 == a3)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100315714;
      block[3] = &unk_100435248;
      block[4] = v11;
      v32 = imp_implementationWithBlock(block);
      v33 = "setArray:";
      goto LABEL_51;
    }

    v17 = v11[5];
    if (v17)
    {
      v18 = v11[5];
    }

    if (v17 == a3)
    {
      v46[0] = _NSConcreteStackBlock;
      v46[1] = 3221225472;
      v46[2] = sub_100315724;
      v46[3] = &unk_100435268;
      v46[4] = v11;
      v32 = imp_implementationWithBlock(v46);
      v33 = "getArrayCount";
      goto LABEL_51;
    }

LABEL_34:
    if (v8 == ++v10)
    {
      v8 = [v6 countByEnumeratingWithState:&v54 objects:v64 count:16];
      v4 = v44;
      if (v8)
      {
        goto LABEL_4;
      }

      goto LABEL_90;
    }
  }

  if (v13)
  {
    v19 = v11[3];
  }

  if (v13 != a3)
  {
    v20 = v11[4];
    if (v20)
    {
      v21 = v11[4];
    }

    if (v20 == a3)
    {
      v4 = v44;
      switch(v12[3].i8[6])
      {
        case 0:
          v59 = _NSConcreteStackBlock;
          v60 = 3221225472;
          v34 = &selRef_setBool_;
          v35 = &unk_1004351E8;
          v36 = sub_1003163DC;
          goto LABEL_89;
        case 1:
          v59 = _NSConcreteStackBlock;
          v60 = 3221225472;
          v34 = &selRef_setFixed32_;
          v35 = &unk_100435348;
          v36 = sub_1003163EC;
          goto LABEL_89;
        case 2:
          v59 = _NSConcreteStackBlock;
          v60 = 3221225472;
          v34 = &selRef_setSFixed32_;
          v35 = &unk_100435368;
          v36 = sub_1003163FC;
          goto LABEL_89;
        case 3:
          v59 = _NSConcreteStackBlock;
          v60 = 3221225472;
          v34 = &selRef_setFloat_;
          v35 = &unk_100435388;
          v36 = sub_10031640C;
          goto LABEL_89;
        case 4:
          v59 = _NSConcreteStackBlock;
          v60 = 3221225472;
          v34 = &selRef_setFixed64_;
          v35 = &unk_1004353A8;
          v36 = sub_10031641C;
          goto LABEL_89;
        case 5:
          v59 = _NSConcreteStackBlock;
          v60 = 3221225472;
          v34 = &selRef_setSFixed64_;
          v35 = &unk_1004353C8;
          v36 = sub_10031642C;
          goto LABEL_89;
        case 6:
          v59 = _NSConcreteStackBlock;
          v60 = 3221225472;
          v34 = &selRef_setDouble_;
          v35 = &unk_1004353E8;
          v36 = sub_10031643C;
          goto LABEL_89;
        case 7:
          v59 = _NSConcreteStackBlock;
          v60 = 3221225472;
          v34 = &selRef_setInt32_;
          v35 = &unk_100435368;
          v36 = sub_10031644C;
          goto LABEL_89;
        case 8:
          v59 = _NSConcreteStackBlock;
          v60 = 3221225472;
          v34 = &selRef_setInt64_;
          v35 = &unk_1004353C8;
          v36 = sub_10031645C;
          goto LABEL_89;
        case 9:
          v59 = _NSConcreteStackBlock;
          v60 = 3221225472;
          v34 = &selRef_setSInt32_;
          v35 = &unk_100435368;
          v36 = sub_10031646C;
          goto LABEL_89;
        case 0xA:
          v59 = _NSConcreteStackBlock;
          v60 = 3221225472;
          v34 = &selRef_setSInt64_;
          v35 = &unk_1004353C8;
          v36 = sub_10031647C;
          goto LABEL_89;
        case 0xB:
          v59 = _NSConcreteStackBlock;
          v60 = 3221225472;
          v34 = &selRef_setUInt32_;
          v35 = &unk_100435348;
          v36 = sub_10031648C;
          goto LABEL_89;
        case 0xC:
          v59 = _NSConcreteStackBlock;
          v60 = 3221225472;
          v34 = &selRef_setUInt64_;
          v35 = &unk_1004353A8;
          v36 = sub_10031649C;
          goto LABEL_89;
        case 0xD:
          v59 = _NSConcreteStackBlock;
          v60 = 3221225472;
          v34 = &selRef_setBytes_;
          v35 = &unk_100435248;
          v36 = sub_1003164AC;
          goto LABEL_89;
        case 0xE:
          v59 = _NSConcreteStackBlock;
          v60 = 3221225472;
          v34 = &selRef_setString_;
          v35 = &unk_100435248;
          v36 = sub_1003164F4;
          goto LABEL_89;
        case 0xF:
          v59 = _NSConcreteStackBlock;
          v60 = 3221225472;
          v34 = &selRef_setMessage_;
          v35 = &unk_100435248;
          v36 = sub_10031653C;
          goto LABEL_89;
        case 0x10:
          v59 = _NSConcreteStackBlock;
          v60 = 3221225472;
          v34 = &selRef_setGroup_;
          v35 = &unk_100435248;
          v36 = sub_10031654C;
          goto LABEL_89;
        case 0x11:
          v59 = _NSConcreteStackBlock;
          v60 = 3221225472;
          v34 = &selRef_setEnum_;
          v35 = &unk_100435368;
          v36 = sub_10031655C;
          goto LABEL_89;
        default:
          goto LABEL_54;
      }
    }

    v22 = v11[5];
    if (v22)
    {
      v23 = v11[5];
    }

    if (v22 == a3)
    {
      v53[0] = _NSConcreteStackBlock;
      v53[1] = 3221225472;
      v37 = v12[2];
      v53[2] = sub_1003154C0;
      v53[3] = &unk_1004351C8;
      v53[4] = vrev64_s32(v37);
      v32 = imp_implementationWithBlock(v53);
      v33 = "getBool";
    }

    else
    {
      v24 = v11[6];
      if (v24)
      {
        v25 = v11[6];
      }

      if (v24 == a3)
      {
        v52[0] = _NSConcreteStackBlock;
        v52[1] = 3221225472;
        v52[2] = sub_1003154D0;
        v52[3] = &unk_1004351E8;
        v52[4] = v11;
        v32 = imp_implementationWithBlock(v52);
        v33 = "setBool:";
      }

      else
      {
        v26 = v11[2];
        if (!v26)
        {
          goto LABEL_34;
        }

        v27 = *(v26 + 24);
        if (v27)
        {
          v28 = *(v26 + 24);
        }

        if (v27 != a3)
        {
          goto LABEL_34;
        }

        v38 = v12[2].i32[1];
        v50[0] = _NSConcreteStackBlock;
        v50[1] = 3221225472;
        v50[2] = sub_1003155A8;
        v50[3] = &unk_100435208;
        v51 = v38;
        v32 = imp_implementationWithBlock(v50);
        v33 = "getEnum";
      }
    }

LABEL_51:
    v4 = v44;
    if (!v32)
    {
      goto LABEL_90;
    }

    goto LABEL_52;
  }

  v4 = v44;
  switch(v12[3].i8[6])
  {
    case 0:
      v59 = _NSConcreteStackBlock;
      v60 = 3221225472;
      v34 = &selRef_getBool;
      v35 = &unk_100435288;
      v36 = sub_1003162BC;
      break;
    case 1:
      v59 = _NSConcreteStackBlock;
      v60 = 3221225472;
      v34 = &selRef_getFixed32;
      v35 = &unk_1004352A8;
      v36 = sub_1003162CC;
      break;
    case 2:
      v59 = _NSConcreteStackBlock;
      v60 = 3221225472;
      v34 = &selRef_getSFixed32;
      v35 = &unk_1004352C8;
      v36 = sub_1003162DC;
      break;
    case 3:
      v59 = _NSConcreteStackBlock;
      v60 = 3221225472;
      v34 = &selRef_getFloat;
      v35 = &unk_1004352E8;
      v36 = sub_1003162EC;
      break;
    case 4:
      v59 = _NSConcreteStackBlock;
      v60 = 3221225472;
      v34 = &selRef_getFixed64;
      v35 = &unk_100435268;
      v36 = sub_1003162FC;
      break;
    case 5:
      v59 = _NSConcreteStackBlock;
      v60 = 3221225472;
      v34 = &selRef_getSFixed64;
      v35 = &unk_100435308;
      v36 = sub_10031630C;
      break;
    case 6:
      v59 = _NSConcreteStackBlock;
      v60 = 3221225472;
      v34 = &selRef_getDouble;
      v35 = &unk_100435328;
      v36 = sub_10031631C;
      break;
    case 7:
      v59 = _NSConcreteStackBlock;
      v60 = 3221225472;
      v34 = &selRef_getInt32;
      v35 = &unk_1004352C8;
      v36 = sub_10031632C;
      break;
    case 8:
      v59 = _NSConcreteStackBlock;
      v60 = 3221225472;
      v34 = &selRef_getInt64;
      v35 = &unk_100435308;
      v36 = sub_10031633C;
      break;
    case 9:
      v59 = _NSConcreteStackBlock;
      v60 = 3221225472;
      v34 = &selRef_getSInt32;
      v35 = &unk_1004352C8;
      v36 = sub_10031634C;
      break;
    case 0xA:
      v59 = _NSConcreteStackBlock;
      v60 = 3221225472;
      v34 = &selRef_getSInt64;
      v35 = &unk_100435308;
      v36 = sub_10031635C;
      break;
    case 0xB:
      v59 = _NSConcreteStackBlock;
      v60 = 3221225472;
      v34 = &selRef_getUInt32;
      v35 = &unk_1004352A8;
      v36 = sub_10031636C;
      break;
    case 0xC:
      v59 = _NSConcreteStackBlock;
      v60 = 3221225472;
      v34 = &selRef_getUInt64;
      v35 = &unk_100435268;
      v36 = sub_10031637C;
      break;
    case 0xD:
      v59 = _NSConcreteStackBlock;
      v60 = 3221225472;
      v34 = &selRef_getBytes;
      v35 = &unk_100435228;
      v36 = sub_10031638C;
      break;
    case 0xE:
      v59 = _NSConcreteStackBlock;
      v60 = 3221225472;
      v34 = &selRef_getString;
      v35 = &unk_100435228;
      v36 = sub_10031639C;
      break;
    case 0xF:
      v59 = _NSConcreteStackBlock;
      v60 = 3221225472;
      v34 = &selRef_getMessage;
      v35 = &unk_100435228;
      v36 = sub_1003163AC;
      break;
    case 0x10:
      v59 = _NSConcreteStackBlock;
      v60 = 3221225472;
      v34 = &selRef_getGroup;
      v35 = &unk_100435228;
      v36 = sub_1003163BC;
      break;
    case 0x11:
      v59 = _NSConcreteStackBlock;
      v60 = 3221225472;
      v34 = &selRef_getEnum;
      v35 = &unk_1004352C8;
      v36 = sub_1003163CC;
      break;
    default:
LABEL_54:
      v32 = 0;
      v33 = 0;
      goto LABEL_51;
  }

LABEL_89:
  v61 = v36;
  v62 = v35;
  v63 = v11;
  v32 = imp_implementationWithBlock(&v59);
  v33 = *v34;
  if (!v32)
  {
    goto LABEL_90;
  }

LABEL_52:
  v39 = 1;
  v40 = GPBMessageEncodingForSelector(v33, 1);
  v41 = [v43 messageClass];
  if (class_addMethod(v41, a3, v32, v40))
  {
    return v39;
  }

  return GPBClassHasSel(v41, a3);
}

+ (BOOL)resolveClassMethod:(SEL)a3
{
  if (GPBResolveExtensionClassMethod(a1, a3))
  {
    return 1;
  }

  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___GPBMessage;
  return objc_msgSendSuper2(&v6, "resolveClassMethod:", a3);
}

- (GPBMessage)initWithCoder:(id)a3
{
  v4 = [(GPBMessage *)self init];
  if (v4)
  {
    v5 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"GPBData"];
    if ([v5 length])
    {
      [(GPBMessage *)v4 mergeFromData:v5 extensionRegistry:0];
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = [(GPBMessage *)self data];
  if ([v4 length])
  {

    [a3 encodeObject:v4 forKey:@"GPBData"];
  }
}

@end