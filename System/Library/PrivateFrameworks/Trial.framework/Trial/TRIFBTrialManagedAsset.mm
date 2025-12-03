@interface TRIFBTrialManagedAsset
- (BOOL)hasOnDemandFlag;
- (BOOL)isEqual:(id)equal;
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
- (TRIFBTrialManagedAsset)initWithBufRef:(id)ref cppPointer:(const TrialManagedAsset *)pointer;
- (const)assetIdAsCString;
- (const)assetNameAsCString;
- (const)pathAsCString;
- (id)deepCopyUsingBufferBuilder:(id)builder;
- (id)deepCopyUsingBufferBuilder:(id)builder changes:(id)changes;
- (id)initVerifiedRootObjectFromData:(id)data requireUTF8:(BOOL)f8 maxDepth:(unsigned int)depth maxTables:(unsigned int)tables;
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
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:1142 description:{@"Accessed union field TRIFBTrialManagedAsset.cloudKitMetadataAsTreatment, but the value stored in the union does not match this type."}];
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
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:1144 description:{@"Invalid parameter not satisfying: %@", @"nested"}];

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
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:1113 description:{@"Invalid parameter not satisfying: %@", @"fbs"}];

    v7 = 0;
  }

  v9 = NSStringFromSelector(a2);
  v10 = makeNSString(v9, self->_br, &v7[4]);

  return v10;
}

- (BOOL)verifyUTF8Fields
{
  cloudKitMetadataType = [(TRIFBTrialManagedAsset *)self cloudKitMetadataType];
  if (cloudKitMetadataType == 2)
  {
    cloudKitMetadataAsAsset = [(TRIFBTrialManagedAsset *)self cloudKitMetadataAsAsset];
    verifyUTF8Fields = [cloudKitMetadataAsAsset verifyUTF8Fields];
LABEL_5:
    v6 = verifyUTF8Fields;

    if ((v6 & 1) == 0)
    {
      LOBYTE(valid) = 0;
      return valid;
    }

    goto LABEL_6;
  }

  if (cloudKitMetadataType == 1)
  {
    cloudKitMetadataAsAsset = [(TRIFBTrialManagedAsset *)self cloudKitMetadataAsTreatment];
    verifyUTF8Fields = [cloudKitMetadataAsAsset verifyUTF8Fields];
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
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:1152 description:{@"Accessed union field TRIFBTrialManagedAsset.cloudKitMetadataAsAsset, but the value stored in the union does not match this type."}];
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
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:1154 description:{@"Invalid parameter not satisfying: %@", @"nested"}];

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
    data = [(AFBBufRef *)self->_br data];
    var0 = v6[v7].var0;
    v11 = var0 - [data bytes];

    data2 = [(AFBBufRef *)self->_br data];
    v13 = [data2 subdataWithRange:{v11 + 4, *var0}];

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
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:1119 description:{@"Invalid parameter not satisfying: %@", @"fbs"}];

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
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:1125 description:{@"Invalid parameter not satisfying: %@", @"fbs"}];

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
    data = [(AFBBufRef *)self->_br data];
    var0 = v6[v7].var0;
    v11 = var0 - [data bytes];

    data2 = [(AFBBufRef *)self->_br data];
    v13 = [data2 subdataWithRange:{v11 + 4, *var0}];

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)deepCopyUsingBufferBuilder:(id)builder
{
  v3 = [(TRIFBTrialManagedAsset *)self deepCopyUsingBufferBuilder:builder changes:0];

  return v3;
}

- (id)deepCopyUsingBufferBuilder:(id)builder changes:(id)changes
{
  builderCopy = builder;
  changesCopy = changes;
  if (!builderCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:1214 description:{@"Invalid parameter not satisfying: %@", @"bufferBuilder"}];
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
    pathAsCString = [(TRIFBTrialManagedAsset *)self pathAsCString];
    if (pathAsCString)
    {
      v12 = [builderCopy createStringWithCString:pathAsCString];
    }

    else
    {
      v12 = 0;
    }

    objc_autoreleasePoolPop(v10);
    if (!changesCopy)
    {
LABEL_15:
      v13 = objc_autoreleasePoolPush();
      assetIdAsCString = [(TRIFBTrialManagedAsset *)self assetIdAsCString];
      if (assetIdAsCString)
      {
        v15 = [builderCopy createStringWithCString:assetIdAsCString];
      }

      else
      {
        v15 = 0;
      }

      objc_autoreleasePoolPop(v13);
      if (!changesCopy)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    }
  }

LABEL_13:
  if (changesCopy[18] == 1)
  {
    v15 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:*(changesCopy + 5)];
  }

  else
  {
    if (!changesCopy[18])
    {
      goto LABEL_15;
    }

    v15 = 0;
  }

LABEL_21:
  if (changesCopy[25] == 1)
  {
    v19 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:*(changesCopy + 7)];
    goto LABEL_32;
  }

  if (changesCopy[25])
  {
    v19 = 0;
    goto LABEL_32;
  }

LABEL_23:
  cloudKitMetadataType = [(TRIFBTrialManagedAsset *)self cloudKitMetadataType];
  if (cloudKitMetadataType == 1)
  {
    cloudKitMetadataAsTreatment = [(TRIFBTrialManagedAsset *)self cloudKitMetadataAsTreatment];
    v18 = [cloudKitMetadataAsTreatment deepCopyUsingBufferBuilder:builderCopy];
LABEL_29:
    v19 = v18;

    if (!changesCopy)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  if (cloudKitMetadataType == 2)
  {
    cloudKitMetadataAsTreatment = [(TRIFBTrialManagedAsset *)self cloudKitMetadataAsAsset];
    v18 = [cloudKitMetadataAsTreatment deepCopyUsingBufferBuilder:builderCopy];
    goto LABEL_29;
  }

  v19 = 0;
  if (!changesCopy)
  {
LABEL_34:
    v20 = objc_autoreleasePoolPush();
    assetNameAsCString = [(TRIFBTrialManagedAsset *)self assetNameAsCString];
    if (assetNameAsCString)
    {
      v22 = [builderCopy createStringWithCString:assetNameAsCString];
    }

    else
    {
      v22 = 0;
    }

    objc_autoreleasePoolPop(v20);
    goto LABEL_40;
  }

LABEL_32:
  if (changesCopy[48] == 1)
  {
    v22 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:*(changesCopy + 13)];
  }

  else
  {
    if (!changesCopy[48])
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
  v24 = changesCopy;
  v33 = v24;
  selfCopy = self;
  v25 = v15;
  v35 = v25;
  v26 = v19;
  v36 = v26;
  v37 = v22;
  v27 = v22;
  v28 = [builderCopy trifbCreateTrialManagedAssetUsingBlock:v31];

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

- (TRIFBTrialManagedAsset)initWithBufRef:(id)ref cppPointer:(const TrialManagedAsset *)pointer
{
  refCopy = ref;
  v11.receiver = self;
  v11.super_class = TRIFBTrialManagedAsset;
  v8 = [(TRIFBTrialManagedAsset *)&v11 init];
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

  if (v14 >= 5 && ((v15 = *v13->var0, v15 >= 1) ? (v16 = v14 - 1 >= v15) : (v16 = 0), v16 && TrialManagedAsset::Verify(&v13[v15], &v23)))
  {
    v17 = *v13->var0;
    v18 = objc_alloc(MEMORY[0x277CED178]);
    v19 = [v18 initWithData:{dataCopy, v23, v24, v25, v26, v27, v28}];
    self = [(TRIFBTrialManagedAsset *)self initWithBufRef:v19 cppPointer:&v13[v17]];

    selfCopy2 = self;
    if (f8)
    {
      if ([(TRIFBTrialManagedAsset *)self verifyUTF8Fields])
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
  path = [(TRIFBTrialManagedAsset *)self path];
  v5 = [path hash];

  fileType = [(TRIFBTrialManagedAsset *)self fileType];
  assetId = [(TRIFBTrialManagedAsset *)self assetId];
  v8 = [assetId hash];

  cloudKitMetadataType = [(TRIFBTrialManagedAsset *)self cloudKitMetadataType];
  isOnDemand = [(TRIFBTrialManagedAsset *)self isOnDemand];
  downloadSize = [(TRIFBTrialManagedAsset *)self downloadSize];
  assetName = [(TRIFBTrialManagedAsset *)self assetName];
  v13 = [assetName hash] + 37 * (downloadSize + 37 * (37 * (37 * (v8 + 37 * (37 * v5 + fileType)) + cloudKitMetadataType) + isOnDemand));

  v14 = 37 * v13 + [(TRIFBTrialManagedAsset *)self hasOnDemandFlag];
  objc_autoreleasePoolPop(v3);
  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy)
  {
    v6 = equalCopy;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      LOBYTE(v12) = 0;
LABEL_24:

      goto LABEL_25;
    }

    v7 = objc_autoreleasePoolPush();
    cloudKitMetadataType = [(TRIFBTrialManagedAsset *)self cloudKitMetadataType];
    if (cloudKitMetadataType != [v6 cloudKitMetadataType])
    {
      goto LABEL_22;
    }

    cloudKitMetadataType2 = [(TRIFBTrialManagedAsset *)self cloudKitMetadataType];
    if (cloudKitMetadataType2 == 2)
    {
      cloudKitMetadataAsAsset = [(TRIFBTrialManagedAsset *)self cloudKitMetadataAsAsset];
      cloudKitMetadataAsAsset2 = [v6 cloudKitMetadataAsAsset];
      if (cloudKitMetadataAsAsset | cloudKitMetadataAsAsset2)
      {
        goto LABEL_11;
      }
    }

    else if (cloudKitMetadataType2 == 1)
    {
      cloudKitMetadataAsAsset = [(TRIFBTrialManagedAsset *)self cloudKitMetadataAsTreatment];
      cloudKitMetadataAsAsset2 = [v6 cloudKitMetadataAsTreatment];
      if (cloudKitMetadataAsAsset | cloudKitMetadataAsAsset2)
      {
LABEL_11:
        v13 = [cloudKitMetadataAsAsset isEqual:cloudKitMetadataAsAsset2];

        if ((v13 & 1) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    path = [(TRIFBTrialManagedAsset *)self path];
    path2 = [v6 path];
    if (!(path | path2) || (v16 = [path isEqual:path2], path2, path, v16))
    {
      fileType = [(TRIFBTrialManagedAsset *)self fileType];
      if (fileType == [v6 fileType])
      {
        assetId = [(TRIFBTrialManagedAsset *)self assetId];
        assetId2 = [v6 assetId];
        if (!(assetId | assetId2) || (v20 = [assetId isEqual:assetId2], assetId2, assetId, v20))
        {
          isOnDemand = [(TRIFBTrialManagedAsset *)self isOnDemand];
          if (isOnDemand == [v6 isOnDemand])
          {
            downloadSize = [(TRIFBTrialManagedAsset *)self downloadSize];
            if (downloadSize == [v6 downloadSize])
            {
              assetName = [(TRIFBTrialManagedAsset *)self assetName];
              assetName2 = [v6 assetName];
              if (!(assetName | assetName2) || (v25 = [assetName isEqual:assetName2], assetName2, assetName, v25))
              {
                hasOnDemandFlag = [(TRIFBTrialManagedAsset *)self hasOnDemandFlag];
                v12 = hasOnDemandFlag ^ [v6 hasOnDemandFlag] ^ 1;
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