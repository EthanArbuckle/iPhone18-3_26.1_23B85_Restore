@interface VMUFieldInfo
- (BOOL)isEqual:(id)equal;
- (NSString)typedDescription;
- (VMUClassInfo)destinationLayout;
- (VMUFieldInfo)initWithSerializer:(id)serializer classMap:(id)map version:(unsigned int)version returnedDestinationLayoutClassInfoIndex:(unsigned int *)index error:(id *)error;
- (id)description;
- (id)descriptionOfFieldValueInObjectMemory:(void *)memory scanner:(id)scanner;
- (id)getLeafFieldAtOffset:(unsigned int)offset leafOffset:(unsigned int *)leafOffset;
- (id)mutableCopy;
- (unsigned)bitfieldWidth;
- (void)_setFlags:(unsigned int)flags;
- (void)_setIvarName:(id)name;
- (void)_setSize:(unsigned int)size;
- (void)dealloc;
- (void)enumerateSublayoutsForSize:(int)size parentOffset:(unsigned int)offset remotePointerSize:(uint64_t)pointerSize withBlock:;
- (void)initializeSubFieldArray;
- (void)serializeWithClassMap:(id)map simpleSerializer:(id)serializer version:(unsigned int)version;
- (void)setDestinationLayout:(id)layout;
- (void)setTypeName:(id)name;
@end

@implementation VMUFieldInfo

- (void)initializeSubFieldArray
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  subFieldArray = self->_subFieldArray;
  self->_subFieldArray = v3;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && self->_offset == *(equal + 7) && self->_scanType == *(equal + 6) && self->_flags == *(equal + 11) && self->_size == *(equal + 8) && self->_scannable == *(equal + 9) && self->_stride == *(equal + 10))
    {
      ivarName = self->_ivarName;
      if (ivarName == *(equal + 1) || (v6 = [(NSString *)ivarName isEqualToString:?]) != 0)
      {
        typeName = self->_typeName;
        if (typeName == *(equal + 2) || (v6 = [(NSString *)typeName isEqualToString:?]) != 0)
        {
          destinationLayout = self->_destinationLayout;
          if (destinationLayout == *(equal + 6) || (v6 = [(VMUClassInfo *)destinationLayout isEqual:?]) != 0)
          {
            subFieldArray = self->_subFieldArray;
            if (subFieldArray == *(equal + 7) || (v6 = [(NSMutableArray *)subFieldArray isEqual:?]) != 0)
            {
              possibleEnumPayloadFieldArray = self->_possibleEnumPayloadFieldArray;
              if (possibleEnumPayloadFieldArray == *(equal + 8) || (v6 = [(NSArray *)possibleEnumPayloadFieldArray isEqual:?]) != 0)
              {
                LOBYTE(v6) = 1;
              }
            }
          }
        }
      }
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  return v6;
}

- (NSString)typedDescription
{
  typeName = self->_typeName;
  if (typeName)
  {
    v4 = descriptionForTypeEncoding([(NSString *)typeName UTF8String], [(NSString *)self->_ivarName UTF8String]);
  }

  else
  {
    v4 = self->_ivarName;
  }

  return v4;
}

- (id)mutableCopy
{
  v3 = [VMUMutableFieldInfo alloc];
  subFieldArray = self->_subFieldArray;
  LODWORD(v7) = self->_stride;
  v5 = [(VMUFieldInfo *)v3 initWithName:self->_ivarName type:0 kind:0 scan:self->_scanType offset:self->_offset size:self->_size stride:v7 subFieldArray:subFieldArray swiftTyperef:self->_swiftTyperef];
  [v5 setTypeName:self->_typeName];
  [v5 setDestinationLayout:self->_destinationLayout];
  [v5 setScannableSize:self->_scannable];
  [v5 setFlags:self->_flags];
  objc_storeStrong(v5 + 8, self->_possibleEnumPayloadFieldArray);
  return v5;
}

- (void)dealloc
{
  swiftTyperef = self->_swiftTyperef;
  if (swiftTyperef)
  {
    free(swiftTyperef);
    self->_swiftTyperef = 0;
  }

  v4.receiver = self;
  v4.super_class = VMUFieldInfo;
  [(VMUFieldInfo *)&v4 dealloc];
}

- (VMUFieldInfo)initWithSerializer:(id)serializer classMap:(id)map version:(unsigned int)version returnedDestinationLayoutClassInfoIndex:(unsigned int *)index error:(id *)error
{
  v35[3] = *MEMORY[0x1E69E9840];
  serializerCopy = serializer;
  mapCopy = map;
  v34.receiver = self;
  v34.super_class = VMUFieldInfo;
  v14 = [(VMUFieldInfo *)&v34 init];
  if (!v14)
  {
    goto LABEL_31;
  }

  v33 = 0;
  if (!error)
  {
    error = &v33;
  }

  v15 = [serializerCopy _deserializeValues:2 error:error];
  if (*error)
  {
    goto LABEL_9;
  }

  v14->_offset = *v15;
  v14->_size = v15[1];
  if (*error)
  {
    goto LABEL_9;
  }

  v35[0] = &v14->_scanType;
  v35[1] = &v14->_flags;
  v35[2] = &v14->_scannable;
  v16 = [serializerCopy _deserializeValues:3 error:error];
  v17 = *error;
  if (*error)
  {
    goto LABEL_9;
  }

  do
  {
    *v35[v17] = *(v16 + 4 * v17);
    v17 = v17 + 1;
  }

  while (v17 != 3);
  if (*error)
  {
    goto LABEL_9;
  }

  if (version >= 4)
  {
    v19 = [serializerCopy _deserializeValues:1 error:error];
    if (*error)
    {
      goto LABEL_9;
    }

    v14->_stride = *v19;
    if (*error)
    {
      goto LABEL_9;
    }
  }

  v20 = [serializerCopy deserialize32WithError:error];
  if (*error)
  {
    goto LABEL_9;
  }

  if (index)
  {
    *index = v20;
  }

  v21 = [serializerCopy copyDeserializedStringWithError:error];
  ivarName = v14->_ivarName;
  v14->_ivarName = v21;

  if (*error)
  {
    goto LABEL_9;
  }

  v23 = [serializerCopy copyDeserializedStringWithError:error];
  typeName = v14->_typeName;
  v14->_typeName = v23;

  if (*error)
  {
    goto LABEL_9;
  }

  if (version < 4)
  {
LABEL_31:
    v18 = v14;
    goto LABEL_32;
  }

  v25 = [serializerCopy deserialize32WithError:error];
  if (!*error)
  {
    v26 = v25;
    if (v25)
    {
      v27 = objc_opt_new();
      do
      {
        v28 = [serializerCopy deserialize32WithError:error];
        if (*error)
        {

          goto LABEL_9;
        }

        v29 = [mapCopy fieldInfoForIndex:v28];
        if (v29)
        {
          [v27 addObject:v29];
        }

        else
        {
          NSLog(&cfstr_BadFieldIndexI.isa);
        }

        --v26;
      }

      while (v26);
      if ([v27 count])
      {
        v30 = v27;
      }

      else
      {
        v30 = 0;
      }

      objc_storeStrong(&v14->_subFieldArray, v30);
    }

    goto LABEL_31;
  }

LABEL_9:
  v18 = 0;
LABEL_32:

  v31 = *MEMORY[0x1E69E9840];
  return v18;
}

- (void)serializeWithClassMap:(id)map simpleSerializer:(id)serializer version:(unsigned int)version
{
  v23[1] = *MEMORY[0x1E69E9840];
  mapCopy = map;
  serializerCopy = serializer;
  v23[0] = *&self->_offset;
  [serializerCopy _serializeValues:v23 count:2];
  flags = self->_flags;
  v22[0] = self->_scanType;
  v22[1] = flags;
  v22[2] = self->_scannable;
  [serializerCopy _serializeValues:v22 count:3];
  stride = self->_stride;
  [serializerCopy _serializeValues:&stride count:1];
  [serializerCopy serialize32:{objc_msgSend(mapCopy, "indexForClassInfo:", self->_destinationLayout)}];
  [serializerCopy serializeString:self->_ivarName];
  [serializerCopy serializeString:self->_typeName];
  [serializerCopy serialize32:{-[NSMutableArray count](self->_subFieldArray, "count")}];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = self->_subFieldArray;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [serializerCopy serialize32:{objc_msgSend(mapCopy, "indexForFieldInfo:", *(*(&v16 + 1) + 8 * v14++), v16)}];
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v12);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id)getLeafFieldAtOffset:(unsigned int)offset leafOffset:(unsigned int *)leafOffset
{
  v25 = *MEMORY[0x1E69E9840];
  subFieldArray = self->_subFieldArray;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = subFieldArray;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v21 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v20 + 1) + 8 * v12);
      offset = [v13 offset];
      if ([v13 size] + offset > offset)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }
    }

    if (offset > offset)
    {
      goto LABEL_11;
    }

    v18 = v13;

    if (v18)
    {
      v24[0] = 0;
      selfCopy = [v18 getLeafFieldAtOffset:offset - objc_msgSend(v18 leafOffset:{"offset"), v24}];
      if (leafOffset)
      {
        offset2 = [v18 offset];
        *leafOffset = v24[0] + offset2;
      }

      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

  if (leafOffset)
  {
    *leafOffset = 0;
  }

  selfCopy = self;
LABEL_15:
  v16 = *MEMORY[0x1E69E9840];

  return selfCopy;
}

void __55__VMUFieldInfo__fullIvarNameAtOffset_leafOffset_depth___block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{@"_guts", @"_object", @"_otherBits", @"_rawValue", @"rawValue", @"_value", @"_variantBuffer", @"_storage", @"_buffer", @"object", @"some", @"native", 0}];
  v1 = _fullIvarNameAtOffset_leafOffset_depth__internalPartialIvarNames;
  _fullIvarNameAtOffset_leafOffset_depth__internalPartialIvarNames = v0;
}

- (void)_setIvarName:(id)name
{
  if (self->_ivarName != name)
  {
    v5 = [name copy];
    ivarName = self->_ivarName;
    self->_ivarName = v5;
  }
}

- (void)setTypeName:(id)name
{
  if (self->_typeName != name)
  {
    v5 = [name copy];
    typeName = self->_typeName;
    self->_typeName = v5;
  }
}

- (void)_setSize:(unsigned int)size
{
  scannable = self->_scannable;
  if (scannable >= size)
  {
    scannable = size;
  }

  self->_size = size;
  self->_scannable = scannable;
}

- (void)_setFlags:(unsigned int)flags
{
  self->_flags = flags;
  if ((flags & 2) != 0)
  {
    v5 = +[VMUClassInfo _genericBlockByrefInfo];
    destinationLayout = self->_destinationLayout;
    self->_destinationLayout = v5;
  }
}

- (unsigned)bitfieldWidth
{
  typeName = self->_typeName;
  if (typeName)
  {
    uTF8String = [(NSString *)typeName UTF8String];
    if (*uTF8String == 98)
    {
      LODWORD(typeName) = strtol((uTF8String + 1), 0, 10);
    }

    else
    {
      LODWORD(typeName) = 0;
    }
  }

  return typeName;
}

- (void)setDestinationLayout:(id)layout
{
  layoutCopy = layout;
  destinationLayout = self->_destinationLayout;
  p_destinationLayout = &self->_destinationLayout;
  if (destinationLayout != layoutCopy)
  {
    v8 = layoutCopy;
    objc_storeStrong(p_destinationLayout, layout);
    layoutCopy = v8;
  }
}

- (VMUClassInfo)destinationLayout
{
  if ((self->_flags & 2) != 0)
  {
    v2 = +[VMUClassInfo _genericBlockByrefInfo];
  }

  else
  {
    v2 = self->_destinationLayout;
  }

  return v2;
}

- (id)descriptionOfFieldValueInObjectMemory:(void *)memory scanner:(id)scanner
{
  offset = self->_offset;
  typeName = self->_typeName;
  scannerCopy = scanner;
  v9 = descriptionOfValueAtAddressWithTypeEncoding(memory + offset, [(NSString *)typeName UTF8String], self->_size, scannerCopy);

  return v9;
}

- (id)description
{
  destinationLayout = self->_destinationLayout;
  if (destinationLayout)
  {
    className = [(VMUClassInfo *)destinationLayout className];
  }

  else
  {
    className = &stru_1F461F9C8;
  }

  v10.receiver = self;
  v10.super_class = VMUFieldInfo;
  v5 = [(VMUFieldInfo *)&v10 description];
  offset = [(VMUFieldInfo *)self offset];
  typedDescription = [(VMUFieldInfo *)self typedDescription];
  v8 = [v5 stringByAppendingFormat:@"%+3d %@ size %u (%s)  %@", offset, typedDescription, -[VMUFieldInfo size](self, "size"), VMUScanTypeScanDescription(-[VMUFieldInfo scanType](self, "scanType")), className];

  return v8;
}

- (void)enumerateSublayoutsForSize:(int)size parentOffset:(unsigned int)offset remotePointerSize:(uint64_t)pointerSize withBlock:
{
  v36 = *MEMORY[0x1E69E9840];
  if (self)
  {
    if ((v7 = *(self + 56)) != 0 && [v7 count] || *(self + 48))
    {
      v8 = *(self + 28) + size;
      v25 = offset + v8 - 1;
      v9 = v25 & -offset;
      v27 = v8;
      v10 = v8 + *(self + 36);
      if (v10 >= a2)
      {
        v10 = a2;
      }

      v11 = v9 + offset;
      for (i = v10; v11 <= i; v11 = v11 + offset)
      {
        v13 = *(self + 56);
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v14 = v13;
        v15 = [v14 countByEnumeratingWithState:&v31 objects:v35 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = v9 - v27;
          v18 = *v32;
LABEL_11:
          v19 = 0;
          while (1)
          {
            if (*v32 != v18)
            {
              objc_enumerationMutation(v14);
            }

            v20 = *(*(&v31 + 1) + 8 * v19);
            offset = [v20 offset];
            if ([v20 size] + offset > v17)
            {
              break;
            }

            if (v16 == ++v19)
            {
              v16 = [v14 countByEnumeratingWithState:&v31 objects:v35 count:16];
              if (v16)
              {
                goto LABEL_11;
              }

              goto LABEL_19;
            }
          }

          if (offset > v17)
          {
            goto LABEL_19;
          }

          v22 = v20;

          if (v22)
          {
            [(VMUFieldInfo *)v22 enumerateSublayoutsForSize:a2 parentOffset:v27 remotePointerSize:offset withBlock:pointerSize];
            offset2 = [v22 offset];
            v11 = (v25 + offset2 + [v22 size]) & -offset;

            goto LABEL_23;
          }
        }

        else
        {
LABEL_19:
        }

        v23 = *(self + 48);
        if (v23)
        {
          (*(pointerSize + 16))(pointerSize, v23, v9, *(self + 24));
        }

LABEL_23:
        v9 = v11;
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

@end