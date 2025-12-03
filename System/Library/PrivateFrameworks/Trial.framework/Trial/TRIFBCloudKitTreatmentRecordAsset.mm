@interface TRIFBCloudKitTreatmentRecordAsset
- (BOOL)hasCkIndex;
- (BOOL)isEqual:(id)equal;
- (BOOL)verifyUTF8Fields;
- (NSData)treatmentIdAsData;
- (NSString)treatmentId;
- (TRIFBCloudKitTreatmentRecordAsset)initWithBufRef:(id)ref cppPointer:(const CloudKitTreatmentRecordAsset *)pointer;
- (const)treatmentIdAsCString;
- (id)deepCopyUsingBufferBuilder:(id)builder;
- (id)deepCopyUsingBufferBuilder:(id)builder changes:(id)changes;
- (id)initVerifiedRootObjectFromData:(id)data requireUTF8:(BOOL)f8 maxDepth:(unsigned int)depth maxTables:(unsigned int)tables;
- (unint64_t)hash;
- (unsigned)assetIndex;
- (unsigned)container;
@end

@implementation TRIFBCloudKitTreatmentRecordAsset

- (unsigned)container
{
  ptr = self->_ptr;
  v3 = &ptr[-*ptr->var0];
  if (*v3->var0 >= 5u && (v4 = *v3[4].var0) != 0)
  {
    return ptr[v4].var0[0];
  }

  else
  {
    return 0;
  }
}

- (BOOL)hasCkIndex
{
  ptr = self->_ptr;
  v3 = &ptr[-*ptr->var0];
  return *v3->var0 >= 0xBu && (v4 = *v3[10].var0) != 0 && ptr[v4].var0[0] != 0;
}

- (NSString)treatmentId
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:401 description:{@"Invalid parameter not satisfying: %@", @"fbs"}];

    v7 = 0;
  }

  v9 = NSStringFromSelector(a2);
  v10 = makeNSString(v9, self->_br, &v7[4]);

  return v10;
}

- (BOOL)verifyUTF8Fields
{
  ptr = self->_ptr;
  v3 = &ptr[-*ptr->var0];
  if (*v3->var0 < 7u)
  {
    return 1;
  }

  v4 = *v3[6].var0;
  if (!v4)
  {
    return 1;
  }

  v5 = *ptr[v4].var0;
  return AFBIsValidUTF8();
}

- (const)treatmentIdAsCString
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:407 description:{@"Invalid parameter not satisfying: %@", @"fbs"}];

    v7 = 0;
  }

  return &v7[4];
}

- (NSData)treatmentIdAsData
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:413 description:{@"Invalid parameter not satisfying: %@", @"fbs"}];

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

- (unsigned)assetIndex
{
  ptr = self->_ptr;
  v3 = &ptr[-*ptr->var0];
  if (*v3->var0 >= 9u && (v4 = *v3[8].var0) != 0)
  {
    return *ptr[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (id)deepCopyUsingBufferBuilder:(id)builder
{
  v3 = [(TRIFBCloudKitTreatmentRecordAsset *)self deepCopyUsingBufferBuilder:builder changes:0];

  return v3;
}

- (id)deepCopyUsingBufferBuilder:(id)builder changes:(id)changes
{
  builderCopy = builder;
  changesCopy = changes;
  if (!builderCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:444 description:{@"Invalid parameter not satisfying: %@", @"bufferBuilder"}];
  }

  v9 = objc_autoreleasePoolPush();
  if (!changesCopy)
  {
    goto LABEL_6;
  }

  if (changesCopy[10] == 1)
  {
    v12 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:*(changesCopy + 3)];
  }

  else
  {
    if (!changesCopy[10])
    {
LABEL_6:
      v10 = objc_autoreleasePoolPush();
      treatmentIdAsCString = [(TRIFBCloudKitTreatmentRecordAsset *)self treatmentIdAsCString];
      if (treatmentIdAsCString)
      {
        v12 = [builderCopy createStringWithCString:treatmentIdAsCString];
      }

      else
      {
        v12 = 0;
      }

      objc_autoreleasePoolPop(v10);
      goto LABEL_12;
    }

    v12 = 0;
  }

LABEL_12:
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __72__TRIFBCloudKitTreatmentRecordAsset_deepCopyUsingBufferBuilder_changes___block_invoke;
  v18[3] = &unk_27885E748;
  v13 = changesCopy;
  v19 = v13;
  selfCopy = self;
  v21 = v12;
  v14 = v12;
  v15 = [builderCopy trifbCreateCloudKitTreatmentRecordAssetUsingBlock:v18];

  objc_autoreleasePoolPop(v9);

  return v15;
}

void __72__TRIFBCloudKitTreatmentRecordAsset_deepCopyUsingBufferBuilder_changes___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = *(a1 + 32);
  if (!v3)
  {
    goto LABEL_4;
  }

  if (*(v3 + 8) == 1)
  {
    v4 = *(v3 + 9);
    goto LABEL_6;
  }

  if (!*(v3 + 8))
  {
LABEL_4:
    v4 = [*(a1 + 40) container];
LABEL_6:
    [v8 setContainer:v4];
  }

  if (*(a1 + 48))
  {
    [v8 setTreatmentId:?];
  }

  v5 = *(a1 + 32);
  if (!v5)
  {
    goto LABEL_12;
  }

  if (*(v5 + 16) == 1)
  {
    v6 = *(v5 + 20);
LABEL_14:
    [v8 setAssetIndex:v6];
    v5 = *(a1 + 32);
    if (!v5)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (!*(v5 + 16))
  {
LABEL_12:
    v6 = [*(a1 + 40) assetIndex];
    goto LABEL_14;
  }

LABEL_15:
  if (*(v5 + 24) == 1)
  {
    v7 = *(v5 + 25);
    goto LABEL_19;
  }

  if (*(v5 + 24))
  {
    goto LABEL_20;
  }

LABEL_17:
  v7 = [*(a1 + 40) hasCkIndex];
LABEL_19:
  [v8 setHasCkIndex:v7 & 1];
LABEL_20:
}

- (TRIFBCloudKitTreatmentRecordAsset)initWithBufRef:(id)ref cppPointer:(const CloudKitTreatmentRecordAsset *)pointer
{
  refCopy = ref;
  v11.receiver = self;
  v11.super_class = TRIFBCloudKitTreatmentRecordAsset;
  v8 = [(TRIFBCloudKitTreatmentRecordAsset *)&v11 init];
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

  if (v14 >= 5 && ((v15 = *v13->var0, v15 >= 1) ? (v16 = v14 - 1 >= v15) : (v16 = 0), v16 && CloudKitTreatmentRecordAsset::Verify(&v13[v15], &v23)))
  {
    v17 = *v13->var0;
    v18 = objc_alloc(MEMORY[0x277CED178]);
    v19 = [v18 initWithData:{dataCopy, v23, v24, v25, v26, v27, v28}];
    self = [(TRIFBCloudKitTreatmentRecordAsset *)self initWithBufRef:v19 cppPointer:&v13[v17]];

    selfCopy2 = self;
    if (f8)
    {
      if ([(TRIFBCloudKitTreatmentRecordAsset *)self verifyUTF8Fields])
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
  container = [(TRIFBCloudKitTreatmentRecordAsset *)self container];
  treatmentId = [(TRIFBCloudKitTreatmentRecordAsset *)self treatmentId];
  v6 = [treatmentId hash] + 37 * container;

  v7 = 37 * (37 * v6 + [(TRIFBCloudKitTreatmentRecordAsset *)self assetIndex]);
  v8 = v7 + [(TRIFBCloudKitTreatmentRecordAsset *)self hasCkIndex];
  objc_autoreleasePoolPop(v3);
  return v8;
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
      container = [(TRIFBCloudKitTreatmentRecordAsset *)self container];
      if (container != [v6 container])
      {
        goto LABEL_10;
      }

      treatmentId = [(TRIFBCloudKitTreatmentRecordAsset *)self treatmentId];
      treatmentId2 = [v6 treatmentId];
      if (treatmentId | treatmentId2)
      {
        v11 = [treatmentId isEqual:treatmentId2];

        if (!v11)
        {
          goto LABEL_10;
        }
      }

      assetIndex = [(TRIFBCloudKitTreatmentRecordAsset *)self assetIndex];
      if (assetIndex == [v6 assetIndex])
      {
        hasCkIndex = [(TRIFBCloudKitTreatmentRecordAsset *)self hasCkIndex];
        v14 = hasCkIndex ^ [v6 hasCkIndex] ^ 1;
      }

      else
      {
LABEL_10:
        LOBYTE(v14) = 0;
      }

      objc_autoreleasePoolPop(v7);
    }

    else
    {
      LOBYTE(v14) = 0;
    }
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  return v14;
}

@end