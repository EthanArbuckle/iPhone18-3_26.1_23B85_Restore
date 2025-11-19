@interface TRIFBCloudKitTreatmentRecordAsset
- (BOOL)hasCkIndex;
- (BOOL)isEqual:(id)a3;
- (BOOL)verifyUTF8Fields;
- (NSData)treatmentIdAsData;
- (NSString)treatmentId;
- (TRIFBCloudKitTreatmentRecordAsset)initWithBufRef:(id)a3 cppPointer:(const CloudKitTreatmentRecordAsset *)a4;
- (const)treatmentIdAsCString;
- (id)deepCopyUsingBufferBuilder:(id)a3;
- (id)deepCopyUsingBufferBuilder:(id)a3 changes:(id)a4;
- (id)initVerifiedRootObjectFromData:(id)a3 requireUTF8:(BOOL)a4 maxDepth:(unsigned int)a5 maxTables:(unsigned int)a6;
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
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:401 description:{@"Invalid parameter not satisfying: %@", @"fbs"}];

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
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:407 description:{@"Invalid parameter not satisfying: %@", @"fbs"}];

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
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:413 description:{@"Invalid parameter not satisfying: %@", @"fbs"}];

    var0 = 0;
  }

  v9 = objc_autoreleasePoolPush();
  v10 = [(AFBBufRef *)self->_br data];
  v11 = var0 - [v10 bytes];

  v12 = [(AFBBufRef *)self->_br data];
  v13 = [v12 subdataWithRange:{v11 + 4, *var0}];

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

- (id)deepCopyUsingBufferBuilder:(id)a3
{
  v3 = [(TRIFBCloudKitTreatmentRecordAsset *)self deepCopyUsingBufferBuilder:a3 changes:0];

  return v3;
}

- (id)deepCopyUsingBufferBuilder:(id)a3 changes:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:444 description:{@"Invalid parameter not satisfying: %@", @"bufferBuilder"}];
  }

  v9 = objc_autoreleasePoolPush();
  if (!v8)
  {
    goto LABEL_6;
  }

  if (v8[10] == 1)
  {
    v12 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:*(v8 + 3)];
  }

  else
  {
    if (!v8[10])
    {
LABEL_6:
      v10 = objc_autoreleasePoolPush();
      v11 = [(TRIFBCloudKitTreatmentRecordAsset *)self treatmentIdAsCString];
      if (v11)
      {
        v12 = [v7 createStringWithCString:v11];
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
  v13 = v8;
  v19 = v13;
  v20 = self;
  v21 = v12;
  v14 = v12;
  v15 = [v7 trifbCreateCloudKitTreatmentRecordAssetUsingBlock:v18];

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

- (TRIFBCloudKitTreatmentRecordAsset)initWithBufRef:(id)a3 cppPointer:(const CloudKitTreatmentRecordAsset *)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = TRIFBCloudKitTreatmentRecordAsset;
  v8 = [(TRIFBCloudKitTreatmentRecordAsset *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_br, a3);
    v9->_ptr = a4;
  }

  return v9;
}

- (id)initVerifiedRootObjectFromData:(id)a3 requireUTF8:(BOOL)a4 maxDepth:(unsigned int)a5 maxTables:(unsigned int)a6
{
  v10 = a3;
  v11 = objc_autoreleasePoolPush();
  v12 = [v10 bytes];
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = &emptyCArrayStorage;
  }

  v14 = [v10 length];
  v23 = v13;
  v24 = v14;
  LODWORD(v25) = 0;
  HIDWORD(v25) = a5;
  LODWORD(v26) = 0;
  HIDWORD(v26) = a6;
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
    v19 = [v18 initWithData:{v10, v23, v24, v25, v26, v27, v28}];
    self = [(TRIFBCloudKitTreatmentRecordAsset *)self initWithBufRef:v19 cppPointer:&v13[v17]];

    v20 = self;
    if (a4)
    {
      if ([(TRIFBCloudKitTreatmentRecordAsset *)self verifyUTF8Fields])
      {
        v20 = self;
      }

      else
      {
        v20 = 0;
      }
    }

    v21 = v20;
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
  v4 = [(TRIFBCloudKitTreatmentRecordAsset *)self container];
  v5 = [(TRIFBCloudKitTreatmentRecordAsset *)self treatmentId];
  v6 = [v5 hash] + 37 * v4;

  v7 = 37 * (37 * v6 + [(TRIFBCloudKitTreatmentRecordAsset *)self assetIndex]);
  v8 = v7 + [(TRIFBCloudKitTreatmentRecordAsset *)self hasCkIndex];
  objc_autoreleasePoolPop(v3);
  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = objc_autoreleasePoolPush();
      v8 = [(TRIFBCloudKitTreatmentRecordAsset *)self container];
      if (v8 != [v6 container])
      {
        goto LABEL_10;
      }

      v9 = [(TRIFBCloudKitTreatmentRecordAsset *)self treatmentId];
      v10 = [v6 treatmentId];
      if (v9 | v10)
      {
        v11 = [v9 isEqual:v10];

        if (!v11)
        {
          goto LABEL_10;
        }
      }

      v12 = [(TRIFBCloudKitTreatmentRecordAsset *)self assetIndex];
      if (v12 == [v6 assetIndex])
      {
        v13 = [(TRIFBCloudKitTreatmentRecordAsset *)self hasCkIndex];
        v14 = v13 ^ [v6 hasCkIndex] ^ 1;
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