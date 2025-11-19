@interface VMUFieldInfo
- (BOOL)isEqual:(id)a3;
- (NSString)typedDescription;
- (VMUClassInfo)destinationLayout;
- (VMUFieldInfo)initWithSerializer:(id)a3 classMap:(id)a4 version:(unsigned int)a5 returnedDestinationLayoutClassInfoIndex:(unsigned int *)a6 error:(id *)a7;
- (id)description;
- (id)descriptionOfFieldValueInObjectMemory:(void *)a3 scanner:(id)a4;
- (id)getLeafFieldAtOffset:(unsigned int)a3 leafOffset:(unsigned int *)a4;
- (id)mutableCopy;
- (unsigned)bitfieldWidth;
- (void)_setFlags:(unsigned int)a3;
- (void)_setIvarName:(id)a3;
- (void)_setSize:(unsigned int)a3;
- (void)dealloc;
- (void)enumerateSublayoutsForSize:(int)a3 parentOffset:(unsigned int)a4 remotePointerSize:(uint64_t)a5 withBlock:;
- (void)initializeSubFieldArray;
- (void)serializeWithClassMap:(id)a3 simpleSerializer:(id)a4 version:(unsigned int)a5;
- (void)setDestinationLayout:(id)a3;
- (void)setTypeName:(id)a3;
@end

@implementation VMUFieldInfo

- (void)initializeSubFieldArray
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  subFieldArray = self->_subFieldArray;
  self->_subFieldArray = v3;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && self->_offset == *(a3 + 7) && self->_scanType == *(a3 + 6) && self->_flags == *(a3 + 11) && self->_size == *(a3 + 8) && self->_scannable == *(a3 + 9) && self->_stride == *(a3 + 10))
    {
      ivarName = self->_ivarName;
      if (ivarName == *(a3 + 1) || (v6 = [(NSString *)ivarName isEqualToString:?]) != 0)
      {
        typeName = self->_typeName;
        if (typeName == *(a3 + 2) || (v6 = [(NSString *)typeName isEqualToString:?]) != 0)
        {
          destinationLayout = self->_destinationLayout;
          if (destinationLayout == *(a3 + 6) || (v6 = [(VMUClassInfo *)destinationLayout isEqual:?]) != 0)
          {
            subFieldArray = self->_subFieldArray;
            if (subFieldArray == *(a3 + 7) || (v6 = [(NSMutableArray *)subFieldArray isEqual:?]) != 0)
            {
              possibleEnumPayloadFieldArray = self->_possibleEnumPayloadFieldArray;
              if (possibleEnumPayloadFieldArray == *(a3 + 8) || (v6 = [(NSArray *)possibleEnumPayloadFieldArray isEqual:?]) != 0)
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

- (VMUFieldInfo)initWithSerializer:(id)a3 classMap:(id)a4 version:(unsigned int)a5 returnedDestinationLayoutClassInfoIndex:(unsigned int *)a6 error:(id *)a7
{
  v35[3] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v34.receiver = self;
  v34.super_class = VMUFieldInfo;
  v14 = [(VMUFieldInfo *)&v34 init];
  if (!v14)
  {
    goto LABEL_31;
  }

  v33 = 0;
  if (!a7)
  {
    a7 = &v33;
  }

  v15 = [v12 _deserializeValues:2 error:a7];
  if (*a7)
  {
    goto LABEL_9;
  }

  v14->_offset = *v15;
  v14->_size = v15[1];
  if (*a7)
  {
    goto LABEL_9;
  }

  v35[0] = &v14->_scanType;
  v35[1] = &v14->_flags;
  v35[2] = &v14->_scannable;
  v16 = [v12 _deserializeValues:3 error:a7];
  v17 = *a7;
  if (*a7)
  {
    goto LABEL_9;
  }

  do
  {
    *v35[v17] = *(v16 + 4 * v17);
    v17 = v17 + 1;
  }

  while (v17 != 3);
  if (*a7)
  {
    goto LABEL_9;
  }

  if (a5 >= 4)
  {
    v19 = [v12 _deserializeValues:1 error:a7];
    if (*a7)
    {
      goto LABEL_9;
    }

    v14->_stride = *v19;
    if (*a7)
    {
      goto LABEL_9;
    }
  }

  v20 = [v12 deserialize32WithError:a7];
  if (*a7)
  {
    goto LABEL_9;
  }

  if (a6)
  {
    *a6 = v20;
  }

  v21 = [v12 copyDeserializedStringWithError:a7];
  ivarName = v14->_ivarName;
  v14->_ivarName = v21;

  if (*a7)
  {
    goto LABEL_9;
  }

  v23 = [v12 copyDeserializedStringWithError:a7];
  typeName = v14->_typeName;
  v14->_typeName = v23;

  if (*a7)
  {
    goto LABEL_9;
  }

  if (a5 < 4)
  {
LABEL_31:
    v18 = v14;
    goto LABEL_32;
  }

  v25 = [v12 deserialize32WithError:a7];
  if (!*a7)
  {
    v26 = v25;
    if (v25)
    {
      v27 = objc_opt_new();
      do
      {
        v28 = [v12 deserialize32WithError:a7];
        if (*a7)
        {

          goto LABEL_9;
        }

        v29 = [v13 fieldInfoForIndex:v28];
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

- (void)serializeWithClassMap:(id)a3 simpleSerializer:(id)a4 version:(unsigned int)a5
{
  v23[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v23[0] = *&self->_offset;
  [v8 _serializeValues:v23 count:2];
  flags = self->_flags;
  v22[0] = self->_scanType;
  v22[1] = flags;
  v22[2] = self->_scannable;
  [v8 _serializeValues:v22 count:3];
  stride = self->_stride;
  [v8 _serializeValues:&stride count:1];
  [v8 serialize32:{objc_msgSend(v7, "indexForClassInfo:", self->_destinationLayout)}];
  [v8 serializeString:self->_ivarName];
  [v8 serializeString:self->_typeName];
  [v8 serialize32:{-[NSMutableArray count](self->_subFieldArray, "count")}];
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

        [v8 serialize32:{objc_msgSend(v7, "indexForFieldInfo:", *(*(&v16 + 1) + 8 * v14++), v16)}];
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v12);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id)getLeafFieldAtOffset:(unsigned int)a3 leafOffset:(unsigned int *)a4
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
      v14 = [v13 offset];
      if ([v13 size] + v14 > a3)
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

    if (v14 > a3)
    {
      goto LABEL_11;
    }

    v18 = v13;

    if (v18)
    {
      v24[0] = 0;
      v15 = [v18 getLeafFieldAtOffset:a3 - objc_msgSend(v18 leafOffset:{"offset"), v24}];
      if (a4)
      {
        v19 = [v18 offset];
        *a4 = v24[0] + v19;
      }

      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

  if (a4)
  {
    *a4 = 0;
  }

  v15 = self;
LABEL_15:
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

void __55__VMUFieldInfo__fullIvarNameAtOffset_leafOffset_depth___block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{@"_guts", @"_object", @"_otherBits", @"_rawValue", @"rawValue", @"_value", @"_variantBuffer", @"_storage", @"_buffer", @"object", @"some", @"native", 0}];
  v1 = _fullIvarNameAtOffset_leafOffset_depth__internalPartialIvarNames;
  _fullIvarNameAtOffset_leafOffset_depth__internalPartialIvarNames = v0;
}

- (void)_setIvarName:(id)a3
{
  if (self->_ivarName != a3)
  {
    v5 = [a3 copy];
    ivarName = self->_ivarName;
    self->_ivarName = v5;
  }
}

- (void)setTypeName:(id)a3
{
  if (self->_typeName != a3)
  {
    v5 = [a3 copy];
    typeName = self->_typeName;
    self->_typeName = v5;
  }
}

- (void)_setSize:(unsigned int)a3
{
  scannable = self->_scannable;
  if (scannable >= a3)
  {
    scannable = a3;
  }

  self->_size = a3;
  self->_scannable = scannable;
}

- (void)_setFlags:(unsigned int)a3
{
  self->_flags = a3;
  if ((a3 & 2) != 0)
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
    v3 = [(NSString *)typeName UTF8String];
    if (*v3 == 98)
    {
      LODWORD(typeName) = strtol((v3 + 1), 0, 10);
    }

    else
    {
      LODWORD(typeName) = 0;
    }
  }

  return typeName;
}

- (void)setDestinationLayout:(id)a3
{
  v5 = a3;
  destinationLayout = self->_destinationLayout;
  p_destinationLayout = &self->_destinationLayout;
  if (destinationLayout != v5)
  {
    v8 = v5;
    objc_storeStrong(p_destinationLayout, a3);
    v5 = v8;
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

- (id)descriptionOfFieldValueInObjectMemory:(void *)a3 scanner:(id)a4
{
  offset = self->_offset;
  typeName = self->_typeName;
  v8 = a4;
  v9 = descriptionOfValueAtAddressWithTypeEncoding(a3 + offset, [(NSString *)typeName UTF8String], self->_size, v8);

  return v9;
}

- (id)description
{
  destinationLayout = self->_destinationLayout;
  if (destinationLayout)
  {
    v4 = [(VMUClassInfo *)destinationLayout className];
  }

  else
  {
    v4 = &stru_1F461F9C8;
  }

  v10.receiver = self;
  v10.super_class = VMUFieldInfo;
  v5 = [(VMUFieldInfo *)&v10 description];
  v6 = [(VMUFieldInfo *)self offset];
  v7 = [(VMUFieldInfo *)self typedDescription];
  v8 = [v5 stringByAppendingFormat:@"%+3d %@ size %u (%s)  %@", v6, v7, -[VMUFieldInfo size](self, "size"), VMUScanTypeScanDescription(-[VMUFieldInfo scanType](self, "scanType")), v4];

  return v8;
}

- (void)enumerateSublayoutsForSize:(int)a3 parentOffset:(unsigned int)a4 remotePointerSize:(uint64_t)a5 withBlock:
{
  v36 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if ((v7 = *(a1 + 56)) != 0 && [v7 count] || *(a1 + 48))
    {
      v8 = *(a1 + 28) + a3;
      v25 = a4 + v8 - 1;
      v9 = v25 & -a4;
      v27 = v8;
      v10 = v8 + *(a1 + 36);
      if (v10 >= a2)
      {
        v10 = a2;
      }

      v11 = v9 + a4;
      for (i = v10; v11 <= i; v11 = v11 + a4)
      {
        v13 = *(a1 + 56);
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
            v21 = [v20 offset];
            if ([v20 size] + v21 > v17)
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

          if (v21 > v17)
          {
            goto LABEL_19;
          }

          v22 = v20;

          if (v22)
          {
            [(VMUFieldInfo *)v22 enumerateSublayoutsForSize:a2 parentOffset:v27 remotePointerSize:a4 withBlock:a5];
            v24 = [v22 offset];
            v11 = (v25 + v24 + [v22 size]) & -a4;

            goto LABEL_23;
          }
        }

        else
        {
LABEL_19:
        }

        v23 = *(a1 + 48);
        if (v23)
        {
          (*(a5 + 16))(a5, v23, v9, *(a1 + 24));
        }

LABEL_23:
        v9 = v11;
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

@end