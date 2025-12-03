@interface TRIFBFactorMetadataKeyValue
- (BOOL)isEqual:(id)equal;
- (BOOL)verifyUTF8Fields;
- (NSData)keyAsData;
- (NSData)valAsData;
- (NSString)key;
- (NSString)val;
- (TRIFBFactorMetadataKeyValue)initWithBufRef:(id)ref cppPointer:(const FactorMetadataKeyValue *)pointer;
- (const)keyAsCString;
- (const)valAsCString;
- (id)deepCopyUsingBufferBuilder:(id)builder;
- (id)deepCopyUsingBufferBuilder:(id)builder changes:(id)changes;
- (id)initVerifiedRootObjectFromData:(id)data requireUTF8:(BOOL)f8 maxDepth:(unsigned int)depth maxTables:(unsigned int)tables;
- (unint64_t)hash;
@end

@implementation TRIFBFactorMetadataKeyValue

- (BOOL)verifyUTF8Fields
{
  ptr = self->_ptr;
  v3 = *ptr->var0;
  v4 = *ptr[-v3].var0;
  if (v4 < 5)
  {
    goto LABEL_11;
  }

  if (*ptr[-v3 + 4].var0)
  {
    v6 = &ptr[*ptr[-v3 + 4].var0];
    v7 = &v6[*v6->var0];
    valid = AFBIsValidUTF8();
    if (!valid)
    {
      return valid;
    }

    ptr = self->_ptr;
    v9 = *ptr->var0;
    v10 = -v9;
    v4 = *ptr[-v9].var0;
  }

  else
  {
    v10 = -v3;
  }

  if (v4 < 7 || !*ptr[v10 + 6].var0)
  {
LABEL_11:
    LOBYTE(valid) = 1;
    return valid;
  }

  v11 = &ptr[*ptr[v10 + 6].var0];
  v12 = &v11[*v11->var0 + 4];

  LOBYTE(valid) = AFBIsValidUTF8();
  return valid;
}

- (NSString)val
{
  ptr = self->_ptr;
  v5 = &ptr[-*ptr->var0];
  if (*v5->var0 >= 7u && (v6 = *v5[6].var0) != 0)
  {
    v7 = &ptr[v6 + *ptr[v6].var0];
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:2672 description:{@"Invalid parameter not satisfying: %@", @"fbs"}];

    v7 = 0;
  }

  v9 = NSStringFromSelector(a2);
  v10 = makeNSString(v9, self->_br, &v7[4]);

  return v10;
}

- (NSString)key
{
  ptr = self->_ptr;
  v5 = &ptr[-*ptr->var0];
  if (*v5->var0 >= 5u && (v6 = *v5[4].var0) != 0)
  {
    v7 = &ptr[v6 + *ptr[v6].var0];
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:2651 description:{@"Invalid parameter not satisfying: %@", @"fbs"}];

    v7 = 0;
  }

  v9 = NSStringFromSelector(a2);
  v10 = makeNSString(v9, self->_br, &v7[4]);

  return v10;
}

- (const)keyAsCString
{
  ptr = self->_ptr;
  v5 = &ptr[-*ptr->var0];
  if (*v5->var0 >= 5u && (v6 = *v5[4].var0) != 0)
  {
    v7 = &ptr[v6 + *ptr[v6].var0];
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:2657 description:{@"Invalid parameter not satisfying: %@", @"fbs"}];

    v7 = 0;
  }

  return &v7[4];
}

- (NSData)keyAsData
{
  ptr = self->_ptr;
  v5 = &ptr[-*ptr->var0];
  if (*v5->var0 >= 5u && (v6 = *v5[4].var0) != 0)
  {
    var0 = ptr[v6 + *ptr[v6].var0].var0;
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:2663 description:{@"Invalid parameter not satisfying: %@", @"fbs"}];

    var0 = 0;
  }

  v9 = objc_autoreleasePoolPush();
  data = [(AFBBufRef *)self->_br data];
  v11 = var0 - [data bytes];

  data2 = [(AFBBufRef *)self->_br data];
  v13 = [data2 subdataWithRange:{v11 + 4, *var0}];

  objc_autoreleasePoolPop(v9);

  return v13;
}

- (const)valAsCString
{
  ptr = self->_ptr;
  v5 = &ptr[-*ptr->var0];
  if (*v5->var0 >= 7u && (v6 = *v5[6].var0) != 0)
  {
    v7 = &ptr[v6 + *ptr[v6].var0];
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:2678 description:{@"Invalid parameter not satisfying: %@", @"fbs"}];

    v7 = 0;
  }

  return &v7[4];
}

- (NSData)valAsData
{
  ptr = self->_ptr;
  v5 = &ptr[-*ptr->var0];
  if (*v5->var0 >= 7u && (v6 = *v5[6].var0) != 0)
  {
    var0 = ptr[v6 + *ptr[v6].var0].var0;
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:2684 description:{@"Invalid parameter not satisfying: %@", @"fbs"}];

    var0 = 0;
  }

  v9 = objc_autoreleasePoolPush();
  data = [(AFBBufRef *)self->_br data];
  v11 = var0 - [data bytes];

  data2 = [(AFBBufRef *)self->_br data];
  v13 = [data2 subdataWithRange:{v11 + 4, *var0}];

  objc_autoreleasePoolPop(v9);

  return v13;
}

- (id)deepCopyUsingBufferBuilder:(id)builder
{
  v3 = [(TRIFBFactorMetadataKeyValue *)self deepCopyUsingBufferBuilder:builder changes:0];

  return v3;
}

- (id)deepCopyUsingBufferBuilder:(id)builder changes:(id)changes
{
  builderCopy = builder;
  changesCopy = changes;
  if (!builderCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:2697 description:{@"Invalid parameter not satisfying: %@", @"bufferBuilder"}];
  }

  v9 = objc_autoreleasePoolPush();
  if (!changesCopy)
  {
    goto LABEL_6;
  }

  if (changesCopy[8] == 1)
  {
    v12 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:*(changesCopy + 3)];
    goto LABEL_13;
  }

  if (changesCopy[8])
  {
    v12 = 0;
  }

  else
  {
LABEL_6:
    v10 = objc_autoreleasePoolPush();
    keyAsCString = [(TRIFBFactorMetadataKeyValue *)self keyAsCString];
    if (keyAsCString)
    {
      v12 = [builderCopy createStringWithCString:keyAsCString];
    }

    else
    {
      v12 = 0;
    }

    objc_autoreleasePoolPop(v10);
    if (!changesCopy)
    {
      goto LABEL_15;
    }
  }

LABEL_13:
  if (changesCopy[16] == 1)
  {
    v15 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:*(changesCopy + 5)];
  }

  else
  {
    if (!changesCopy[16])
    {
LABEL_15:
      v13 = objc_autoreleasePoolPush();
      valAsCString = [(TRIFBFactorMetadataKeyValue *)self valAsCString];
      if (valAsCString)
      {
        v15 = [builderCopy createStringWithCString:valAsCString];
      }

      else
      {
        v15 = 0;
      }

      objc_autoreleasePoolPop(v13);
      goto LABEL_21;
    }

    v15 = 0;
  }

LABEL_21:
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __66__TRIFBFactorMetadataKeyValue_deepCopyUsingBufferBuilder_changes___block_invoke;
  v21[3] = &unk_27885E800;
  v16 = v12;
  v22 = v16;
  v23 = v15;
  v17 = v15;
  v18 = [builderCopy trifbCreateFactorMetadataKeyValueUsingBlock:v21];

  objc_autoreleasePoolPop(v9);

  return v18;
}

void __66__TRIFBFactorMetadataKeyValue_deepCopyUsingBufferBuilder_changes___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    [v3 setKey:?];
  }

  if (*(a1 + 40))
  {
    [v3 setVal:?];
  }
}

- (TRIFBFactorMetadataKeyValue)initWithBufRef:(id)ref cppPointer:(const FactorMetadataKeyValue *)pointer
{
  refCopy = ref;
  v11.receiver = self;
  v11.super_class = TRIFBFactorMetadataKeyValue;
  v8 = [(TRIFBFactorMetadataKeyValue *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_br, ref);
    v9->_ptr = pointer;
  }

  return v9;
}

- (id)initVerifiedRootObjectFromData:(id)data requireUTF8:(BOOL)f8 maxDepth:(unsigned int)depth maxTables:(unsigned int)tables
{
  dataCopy = data;
  v11 = objc_autoreleasePoolPush();
  bytes = [dataCopy bytes];
  if (bytes)
  {
    v13 = bytes;
  }

  else
  {
    v13 = &emptyCArrayStorage;
  }

  v14 = [dataCopy length];
  v23 = v13;
  v24 = v14;
  LODWORD(v25) = 0;
  HIDWORD(v25) = depth;
  LODWORD(v26) = 0;
  HIDWORD(v26) = tables;
  v27 = 0;
  LOBYTE(v28) = 1;
  if (v14 >= 0x7FFFFFFF)
  {
    __assert_rtn("Verifier", "flatbuffers.h", 2285, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
  }

  if (v14 >= 5 && ((v15 = *v13->var0, v15 >= 1) ? (v16 = v14 - 1 >= v15) : (v16 = 0), v16 && FactorMetadataKeyValue::Verify(&v13[v15], &v23)))
  {
    v17 = *v13->var0;
    v18 = objc_alloc(MEMORY[0x277CED178]);
    v19 = [v18 initWithData:{dataCopy, v23, v24, v25, v26, v27, v28}];
    self = [(TRIFBFactorMetadataKeyValue *)self initWithBufRef:v19 cppPointer:&v13[v17]];

    selfCopy2 = self;
    if (f8)
    {
      if ([(TRIFBFactorMetadataKeyValue *)self verifyUTF8Fields])
      {
        selfCopy2 = self;
      }

      else
      {
        selfCopy2 = 0;
      }
    }

    v21 = selfCopy2;
  }

  else
  {
    v21 = 0;
  }

  objc_autoreleasePoolPop(v11);

  return v21;
}

- (unint64_t)hash
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(TRIFBFactorMetadataKeyValue *)self key];
  v5 = [v4 hash];

  v6 = [(TRIFBFactorMetadataKeyValue *)self val];
  v7 = [v6 hash] + 37 * v5;

  objc_autoreleasePoolPop(v3);
  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy)
  {
    v6 = equalCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = objc_autoreleasePoolPush();
      v8 = [(TRIFBFactorMetadataKeyValue *)self key];
      v9 = [v6 key];
      if (v8 | v9 && (v10 = [v8 isEqual:v9], v9, v8, !v10))
      {
        v13 = 0;
      }

      else
      {
        v11 = [(TRIFBFactorMetadataKeyValue *)self val];
        v12 = [v6 val];
        if (v11 | v12)
        {
          v13 = [v11 isEqual:v12];
        }

        else
        {
          v13 = 1;
        }
      }

      objc_autoreleasePoolPop(v7);
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end