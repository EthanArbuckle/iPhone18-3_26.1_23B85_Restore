@interface TRIFBTrialManagedAsset
- (BOOL)hasOnDemandFlag;
- (BOOL)isEqual:(id)a3;
- (BOOL)isOnDemand;
- (BOOL)verifyUTF8Fields;
- (NSData)assetIdAsData;
- (NSData)assetNameAsData;
- (NSData)pathAsData;
- (NSString)assetId;
- (NSString)assetName;
- (NSString)path;
- (TRIFBCloudKitAssetRecordAsset)cloudKitMetadataAsAsset;
- (TRIFBCloudKitTreatmentRecordAsset)cloudKitMetadataAsTreatment;
- (TRIFBTrialManagedAsset)initWithBufRef:(id)a3 cppPointer:(const TrialManagedAsset *)a4;
- (const)assetIdAsCString;
- (const)assetNameAsCString;
- (const)pathAsCString;
- (id)deepCopyUsingBufferBuilder:(id)a3;
- (id)deepCopyUsingBufferBuilder:(id)a3 changes:(id)a4;
- (id)initVerifiedRootObjectFromData:(id)a3 requireUTF8:(BOOL)a4 maxDepth:(unsigned int)a5 maxTables:(unsigned int)a6;
- (unint64_t)downloadSize;
- (unint64_t)hash;
- (unsigned)cloudKitMetadataType;
- (unsigned)fileType;
@end

@implementation TRIFBTrialManagedAsset

- (unsigned)fileType
{
  ptr = self->_ptr;
  v3 = &ptr[-*ptr->var0];
  if (*v3->var0 >= 7u && (v4 = *v3[6].var0) != 0)
  {
    return ptr[v4].var0[0];
  }

  else
  {
    return 0;
  }
}

- (BOOL)isOnDemand
{
  ptr = self->_ptr;
  v3 = &ptr[-*ptr->var0];
  return *v3->var0 >= 0xFu && (v4 = *v3[14].var0) != 0 && ptr[v4].var0[0] != 0;
}

- (TRIFBCloudKitTreatmentRecordAsset)cloudKitMetadataAsTreatment
{
  if ([(TRIFBTrialManagedAsset *)self cloudKitMetadataType]!= 1)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:1142 description:{@"Accessed union field TRIFBTrialManagedAsset.cloudKitMetadataAsTreatment, but the value stored in the union does not match this type."}];
  }

  ptr = self->_ptr;
  v5 = &ptr[-*ptr->var0];
  v6 = *v5->var0;
  if (v6 >= 0xB && *v5[10].var0 && (v6 >= 0xD ? (v7 = ptr[*v5[10].var0].var0[0] == 1) : (v7 = 0), v7 && (v8 = *v5[12].var0) != 0))
  {
    v9 = &ptr[v8 + *ptr[v8].var0];
  }

  else
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:1144 description:{@"Invalid parameter not satisfying: %@", @"nested"}];

    v9 = 0;
  }

  v11 = [[TRIFBCloudKitTreatmentRecordAsset alloc] initWithBufRef:self->_br cppPointer:v9];

  return v11;
}

- (unsigned)cloudKitMetadataType
{
  ptr = self->_ptr;
  v3 = &ptr[-*ptr->var0];
  if (*v3->var0 >= 0xBu && (v4 = *v3[10].var0) != 0)
  {
    return ptr[v4].var0[0];
  }

  else
  {
    return 0;
  }
}

- (NSString)path
{
  ptr = self->_ptr;
  v3 = &ptr[-*ptr->var0];
  if (*v3->var0 >= 5u && (v4 = *v3[4].var0) != 0)
  {
    v6 = &ptr[v4 + *ptr[v4].var0];
    v7 = NSStringFromSelector(a2);
    v8 = makeNSString(v7, self->_br, &v6[4]);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)downloadSize
{
  ptr = self->_ptr;
  v3 = &ptr[-*ptr->var0];
  if (*v3->var0 >= 0x11u && (v4 = *v3[16].var0) != 0)
  {
    return *ptr[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (BOOL)hasOnDemandFlag
{
  ptr = self->_ptr;
  v3 = &ptr[-*ptr->var0];
  return *v3->var0 >= 0x15u && (v4 = *v3[20].var0) != 0 && ptr[v4].var0[0] != 0;
}

- (NSString)assetName
{
  ptr = self->_ptr;
  v3 = &ptr[-*ptr->var0];
  if (*v3->var0 >= 0x13u && (v4 = *v3[18].var0) != 0)
  {
    v6 = &ptr[v4 + *ptr[v4].var0];
    v7 = NSStringFromSelector(a2);
    v8 = makeNSString(v7, self->_br, &v6[4]);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSString)assetId
{
  ptr = self->_ptr;
  v5 = &ptr[-*ptr->var0];
  if (*v5->var0 >= 9u && (v6 = *v5[8].var0) != 0)
  {
    v7 = &ptr[v6 + *ptr[v6].var0];
  }

  else
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:1113 description:{@"Invalid parameter not satisfying: %@", @"fbs"}];

    v7 = 0;
  }

  v9 = NSStringFromSelector(a2);
  v10 = makeNSString(v9, self->_br, &v7[4]);

  return v10;
}

- (BOOL)verifyUTF8Fields
{
  v3 = [(TRIFBTrialManagedAsset *)self cloudKitMetadataType];
  if (v3 == 2)
  {
    v4 = [(TRIFBTrialManagedAsset *)self cloudKitMetadataAsAsset];
    v5 = [v4 verifyUTF8Fields];
LABEL_5:
    v6 = v5;

    if ((v6 & 1) == 0)
    {
      LOBYTE(valid) = 0;
      return valid;
    }

    goto LABEL_6;
  }

  if (v3 == 1)
  {
    v4 = [(TRIFBTrialManagedAsset *)self cloudKitMetadataAsTreatment];
    v5 = [v4 verifyUTF8Fields];
    goto LABEL_5;
  }

LABEL_6:
  ptr = self->_ptr;
  v8 = *ptr->var0;
  v9 = *ptr[-v8].var0;
  if (v9 < 5)
  {
    goto LABEL_21;
  }

  if (*ptr[-v8 + 4].var0)
  {
    v10 = &ptr[*ptr[-v8 + 4].var0];
    v11 = &v10[*v10->var0];
    valid = AFBIsValidUTF8();
    if (!valid)
    {
      return valid;
    }

    ptr = self->_ptr;
    v13 = *ptr->var0;
    v14 = -v13;
    v9 = *ptr[-v13].var0;
  }

  else
  {
    v14 = -v8;
  }

  if (v9 < 9)
  {
    goto LABEL_21;
  }

  if (*ptr[v14 + 8].var0)
  {
    v15 = &ptr[*ptr[v14 + 8].var0];
    v16 = &v15[*v15->var0];
    valid = AFBIsValidUTF8();
    if (!valid)
    {
      return valid;
    }

    ptr = self->_ptr;
    v17 = *ptr->var0;
    v14 = -v17;
    v9 = *ptr[-v17].var0;
  }

  if (v9 < 0x13 || !*ptr[v14 + 18].var0)
  {
LABEL_21:
    LOBYTE(valid) = 1;
    return valid;
  }

  v18 = &ptr[*ptr[v14 + 18].var0];
  v19 = &v18[*v18->var0 + 4];

  LOBYTE(valid) = AFBIsValidUTF8();
  return valid;
}

- (TRIFBCloudKitAssetRecordAsset)cloudKitMetadataAsAsset
{
  if ([(TRIFBTrialManagedAsset *)self cloudKitMetadataType]!= 2)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:1152 description:{@"Accessed union field TRIFBTrialManagedAsset.cloudKitMetadataAsAsset, but the value stored in the union does not match this type."}];
  }

  ptr = self->_ptr;
  v5 = &ptr[-*ptr->var0];
  v6 = *v5->var0;
  if (v6 >= 0xB && *v5[10].var0 && (v6 >= 0xD ? (v7 = ptr[*v5[10].var0].var0[0] == 2) : (v7 = 0), v7 && (v8 = *v5[12].var0) != 0))
  {
    v9 = &ptr[v8 + *ptr[v8].var0];
  }

  else
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:1154 description:{@"Invalid parameter not satisfying: %@", @"nested"}];

    v9 = 0;
  }

  v11 = [[TRIFBCloudKitAssetRecordAsset alloc] initWithBufRef:self->_br cppPointer:v9];

  return v11;
}

- (const)pathAsCString
{
  ptr = self->_ptr;
  v3 = &ptr[-*ptr->var0];
  if (*v3->var0 >= 5u && (v4 = *v3[4].var0) != 0)
  {
    return &ptr[v4 + 4 + *ptr[v4].var0];
  }

  else
  {
    return 0;
  }
}

- (NSData)pathAsData
{
  ptr = self->_ptr;
  v3 = &ptr[-*ptr->var0];
  if (*v3->var0 >= 5u && (v4 = *v3[4].var0) != 0)
  {
    v6 = &ptr[v4];
    v7 = *ptr[v4].var0;
    v8 = objc_autoreleasePoolPush();
    v9 = [(AFBBufRef *)self->_br data];
    var0 = v6[v7].var0;
    v11 = var0 - [v9 bytes];

    v12 = [(AFBBufRef *)self->_br data];
    v13 = [v12 subdataWithRange:{v11 + 4, *var0}];

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (const)assetIdAsCString
{
  ptr = self->_ptr;
  v5 = &ptr[-*ptr->var0];
  if (*v5->var0 >= 9u && (v6 = *v5[8].var0) != 0)
  {
    v7 = &ptr[v6 + *ptr[v6].var0];
  }

  else
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:1119 description:{@"Invalid parameter not satisfying: %@", @"fbs"}];

    v7 = 0;
  }

  return &v7[4];
}

- (NSData)assetIdAsData
{
  ptr = self->_ptr;
  v5 = &ptr[-*ptr->var0];
  if (*v5->var0 >= 9u && (v6 = *v5[8].var0) != 0)
  {
    var0 = ptr[v6 + *ptr[v6].var0].var0;
  }

  else
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:1125 description:{@"Invalid parameter not satisfying: %@", @"fbs"}];

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

- (const)assetNameAsCString
{
  ptr = self->_ptr;
  v3 = &ptr[-*ptr->var0];
  if (*v3->var0 >= 0x13u && (v4 = *v3[18].var0) != 0)
  {
    return &ptr[v4 + 4 + *ptr[v4].var0];
  }

  else
  {
    return 0;
  }
}

- (NSData)assetNameAsData
{
  ptr = self->_ptr;
  v3 = &ptr[-*ptr->var0];
  if (*v3->var0 >= 0x13u && (v4 = *v3[18].var0) != 0)
  {
    v6 = &ptr[v4];
    v7 = *ptr[v4].var0;
    v8 = objc_autoreleasePoolPush();
    v9 = [(AFBBufRef *)self->_br data];
    var0 = v6[v7].var0;
    v11 = var0 - [v9 bytes];

    v12 = [(AFBBufRef *)self->_br data];
    v13 = [v12 subdataWithRange:{v11 + 4, *var0}];

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)deepCopyUsingBufferBuilder:(id)a3
{
  v3 = [(TRIFBTrialManagedAsset *)self deepCopyUsingBufferBuilder:a3 changes:0];

  return v3;
}

- (id)deepCopyUsingBufferBuilder:(id)a3 changes:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v30 = [MEMORY[0x277CCA890] currentHandler];
    [v30 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:1214 description:{@"Invalid parameter not satisfying: %@", @"bufferBuilder"}];
  }

  v9 = objc_autoreleasePoolPush();
  if (!v8)
  {
    goto LABEL_6;
  }

  if (v8[8] == 1)
  {
    v12 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:*(v8 + 3)];
    goto LABEL_13;
  }

  if (v8[8])
  {
    v12 = 0;
  }

  else
  {
LABEL_6:
    v10 = objc_autoreleasePoolPush();
    v11 = [(TRIFBTrialManagedAsset *)self pathAsCString];
    if (v11)
    {
      v12 = [v7 createStringWithCString:v11];
    }

    else
    {
      v12 = 0;
    }

    objc_autoreleasePoolPop(v10);
    if (!v8)
    {
LABEL_15:
      v13 = objc_autoreleasePoolPush();
      v14 = [(TRIFBTrialManagedAsset *)self assetIdAsCString];
      if (v14)
      {
        v15 = [v7 createStringWithCString:v14];
      }

      else
      {
        v15 = 0;
      }

      objc_autoreleasePoolPop(v13);
      if (!v8)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    }
  }

LABEL_13:
  if (v8[18] == 1)
  {
    v15 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:*(v8 + 5)];
  }

  else
  {
    if (!v8[18])
    {
      goto LABEL_15;
    }

    v15 = 0;
  }

LABEL_21:
  if (v8[25] == 1)
  {
    v19 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:*(v8 + 7)];
    goto LABEL_32;
  }

  if (v8[25])
  {
    v19 = 0;
    goto LABEL_32;
  }

LABEL_23:
  v16 = [(TRIFBTrialManagedAsset *)self cloudKitMetadataType];
  if (v16 == 1)
  {
    v17 = [(TRIFBTrialManagedAsset *)self cloudKitMetadataAsTreatment];
    v18 = [v17 deepCopyUsingBufferBuilder:v7];
LABEL_29:
    v19 = v18;

    if (!v8)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  if (v16 == 2)
  {
    v17 = [(TRIFBTrialManagedAsset *)self cloudKitMetadataAsAsset];
    v18 = [v17 deepCopyUsingBufferBuilder:v7];
    goto LABEL_29;
  }

  v19 = 0;
  if (!v8)
  {
LABEL_34:
    v20 = objc_autoreleasePoolPush();
    v21 = [(TRIFBTrialManagedAsset *)self assetNameAsCString];
    if (v21)
    {
      v22 = [v7 createStringWithCString:v21];
    }

    else
    {
      v22 = 0;
    }

    objc_autoreleasePoolPop(v20);
    goto LABEL_40;
  }

LABEL_32:
  if (v8[48] == 1)
  {
    v22 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:*(v8 + 13)];
  }

  else
  {
    if (!v8[48])
    {
      goto LABEL_34;
    }

    v22 = 0;
  }

LABEL_40:
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __61__TRIFBTrialManagedAsset_deepCopyUsingBufferBuilder_changes___block_invoke;
  v31[3] = &unk_27885E7B0;
  v23 = v12;
  v32 = v23;
  v24 = v8;
  v33 = v24;
  v34 = self;
  v25 = v15;
  v35 = v25;
  v26 = v19;
  v36 = v26;
  v37 = v22;
  v27 = v22;
  v28 = [v7 trifbCreateTrialManagedAssetUsingBlock:v31];

  objc_autoreleasePoolPop(v9);

  return v28;
}

void __61__TRIFBTrialManagedAsset_deepCopyUsingBufferBuilder_changes___block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  if (*(a1 + 32))
  {
    [v12 setPath:?];
  }

  v3 = *(a1 + 40);
  if (!v3)
  {
    goto LABEL_6;
  }

  if (*(v3 + 16) == 1)
  {
    v4 = *(v3 + 17);
    goto LABEL_8;
  }

  if (!*(v3 + 16))
  {
LABEL_6:
    v4 = [*(a1 + 48) fileType];
LABEL_8:
    [v12 setFileType:v4];
  }

  if (*(a1 + 56))
  {
    [v12 setAssetId:?];
  }

  if (*(a1 + 64))
  {
    v5 = *(a1 + 40);
    if (v5 && *(v5 + 25) == 1)
    {
      v6 = *(v5 + 24);
    }

    else
    {
      v6 = [*(a1 + 48) cloudKitMetadataType];
    }

    if (v6 == 1)
    {
      [v12 setCloudKitMetadataWithTreatment:*(a1 + 64)];
    }

    else if (v6 == 2)
    {
      [v12 setCloudKitMetadataWithAsset:*(a1 + 64)];
    }
  }

  v7 = *(a1 + 40);
  if (!v7)
  {
    goto LABEL_23;
  }

  if (*(v7 + 32) == 1)
  {
    v8 = *(v7 + 33);
LABEL_25:
    [v12 setIsOnDemand:v8 & 1];
    v7 = *(a1 + 40);
    if (!v7)
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  if (!*(v7 + 32))
  {
LABEL_23:
    v8 = [*(a1 + 48) isOnDemand];
    goto LABEL_25;
  }

LABEL_26:
  if (*(v7 + 34) == 1)
  {
    v9 = *(v7 + 40);
    goto LABEL_31;
  }

  if (*(v7 + 34))
  {
    goto LABEL_32;
  }

LABEL_28:
  if (![*(a1 + 48) hasDownloadSize])
  {
    goto LABEL_32;
  }

  v9 = [*(a1 + 48) downloadSize];
LABEL_31:
  [v12 setDownloadSize:v9];
LABEL_32:
  if (*(a1 + 72))
  {
    [v12 setAssetName:?];
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    if (*(v10 + 56) == 1)
    {
      v11 = *(v10 + 57);
      goto LABEL_39;
    }

    if (*(v10 + 56))
    {
      goto LABEL_40;
    }
  }

  v11 = [*(a1 + 48) hasOnDemandFlag];
LABEL_39:
  [v12 setHasOnDemandFlag:v11 & 1];
LABEL_40:
}

- (TRIFBTrialManagedAsset)initWithBufRef:(id)a3 cppPointer:(const TrialManagedAsset *)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = TRIFBTrialManagedAsset;
  v8 = [(TRIFBTrialManagedAsset *)&v11 init];
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

  if (v14 >= 5 && ((v15 = *v13->var0, v15 >= 1) ? (v16 = v14 - 1 >= v15) : (v16 = 0), v16 && TrialManagedAsset::Verify(&v13[v15], &v23)))
  {
    v17 = *v13->var0;
    v18 = objc_alloc(MEMORY[0x277CED178]);
    v19 = [v18 initWithData:{v10, v23, v24, v25, v26, v27, v28}];
    self = [(TRIFBTrialManagedAsset *)self initWithBufRef:v19 cppPointer:&v13[v17]];

    v20 = self;
    if (a4)
    {
      if ([(TRIFBTrialManagedAsset *)self verifyUTF8Fields])
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
  v4 = [(TRIFBTrialManagedAsset *)self path];
  v5 = [v4 hash];

  v6 = [(TRIFBTrialManagedAsset *)self fileType];
  v7 = [(TRIFBTrialManagedAsset *)self assetId];
  v8 = [v7 hash];

  v9 = [(TRIFBTrialManagedAsset *)self cloudKitMetadataType];
  v10 = [(TRIFBTrialManagedAsset *)self isOnDemand];
  v11 = [(TRIFBTrialManagedAsset *)self downloadSize];
  v12 = [(TRIFBTrialManagedAsset *)self assetName];
  v13 = [v12 hash] + 37 * (v11 + 37 * (37 * (37 * (v8 + 37 * (37 * v5 + v6)) + v9) + v10));

  v14 = 37 * v13 + [(TRIFBTrialManagedAsset *)self hasOnDemandFlag];
  objc_autoreleasePoolPop(v3);
  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      LOBYTE(v12) = 0;
LABEL_24:

      goto LABEL_25;
    }

    v7 = objc_autoreleasePoolPush();
    v8 = [(TRIFBTrialManagedAsset *)self cloudKitMetadataType];
    if (v8 != [v6 cloudKitMetadataType])
    {
      goto LABEL_22;
    }

    v9 = [(TRIFBTrialManagedAsset *)self cloudKitMetadataType];
    if (v9 == 2)
    {
      v10 = [(TRIFBTrialManagedAsset *)self cloudKitMetadataAsAsset];
      v11 = [v6 cloudKitMetadataAsAsset];
      if (v10 | v11)
      {
        goto LABEL_11;
      }
    }

    else if (v9 == 1)
    {
      v10 = [(TRIFBTrialManagedAsset *)self cloudKitMetadataAsTreatment];
      v11 = [v6 cloudKitMetadataAsTreatment];
      if (v10 | v11)
      {
LABEL_11:
        v13 = [v10 isEqual:v11];

        if ((v13 & 1) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    v14 = [(TRIFBTrialManagedAsset *)self path];
    v15 = [v6 path];
    if (!(v14 | v15) || (v16 = [v14 isEqual:v15], v15, v14, v16))
    {
      v17 = [(TRIFBTrialManagedAsset *)self fileType];
      if (v17 == [v6 fileType])
      {
        v18 = [(TRIFBTrialManagedAsset *)self assetId];
        v19 = [v6 assetId];
        if (!(v18 | v19) || (v20 = [v18 isEqual:v19], v19, v18, v20))
        {
          v21 = [(TRIFBTrialManagedAsset *)self isOnDemand];
          if (v21 == [v6 isOnDemand])
          {
            v22 = [(TRIFBTrialManagedAsset *)self downloadSize];
            if (v22 == [v6 downloadSize])
            {
              v23 = [(TRIFBTrialManagedAsset *)self assetName];
              v24 = [v6 assetName];
              if (!(v23 | v24) || (v25 = [v23 isEqual:v24], v24, v23, v25))
              {
                v26 = [(TRIFBTrialManagedAsset *)self hasOnDemandFlag];
                v12 = v26 ^ [v6 hasOnDemandFlag] ^ 1;
LABEL_23:
                objc_autoreleasePoolPop(v7);
                goto LABEL_24;
              }
            }
          }
        }
      }
    }

LABEL_22:
    LOBYTE(v12) = 0;
    goto LABEL_23;
  }

  LOBYTE(v12) = 0;
LABEL_25:

  return v12;
}

@end