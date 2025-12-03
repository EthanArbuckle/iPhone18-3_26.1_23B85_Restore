@interface TRIFBMobileAssetReference
- (BOOL)hasOnDemandFlag;
- (BOOL)isEqual:(id)equal;
- (BOOL)isOnDemand;
- (BOOL)verifyUTF8Fields;
- (NSData)assetNameAsData;
- (NSData)specifierAsData;
- (NSData)typeAsData;
- (NSData)versionAsData;
- (NSString)assetName;
- (NSString)specifier;
- (NSString)type;
- (NSString)version;
- (TRIFBMobileAssetReference)initWithBufRef:(id)ref cppPointer:(const MobileAssetReference *)pointer;
- (const)assetNameAsCString;
- (const)specifierAsCString;
- (const)typeAsCString;
- (const)versionAsCString;
- (id)deepCopyUsingBufferBuilder:(id)builder;
- (id)deepCopyUsingBufferBuilder:(id)builder changes:(id)changes;
- (id)initVerifiedRootObjectFromData:(id)data requireUTF8:(BOOL)f8 maxDepth:(unsigned int)depth maxTables:(unsigned int)tables;
- (unint64_t)downloadSize;
- (unint64_t)hash;
- (unsigned)fileType;
@end

@implementation TRIFBMobileAssetReference

- (BOOL)isOnDemand
{
  ptr = self->_ptr;
  v3 = &ptr[-*ptr->var0];
  return *v3->var0 >= 0xDu && (v4 = *v3[12].var0) != 0 && ptr[v4].var0[0] != 0;
}

- (NSString)type
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:1903 description:{@"Invalid parameter not satisfying: %@", @"fbs"}];

    v7 = 0;
  }

  v9 = NSStringFromSelector(a2);
  v10 = makeNSString(v9, self->_br, &v7[4]);

  return v10;
}

- (NSString)specifier
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:1924 description:{@"Invalid parameter not satisfying: %@", @"fbs"}];

    v7 = 0;
  }

  v9 = NSStringFromSelector(a2);
  v10 = makeNSString(v9, self->_br, &v7[4]);

  return v10;
}

- (NSString)version
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:1945 description:{@"Invalid parameter not satisfying: %@", @"fbs"}];

    v7 = 0;
  }

  v9 = NSStringFromSelector(a2);
  v10 = makeNSString(v9, self->_br, &v7[4]);

  return v10;
}

- (BOOL)verifyUTF8Fields
{
  ptr = self->_ptr;
  v3 = *ptr->var0;
  v4 = *ptr[-v3].var0;
  if (v4 < 5)
  {
    goto LABEL_19;
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

  if (v4 < 7)
  {
    goto LABEL_19;
  }

  if (*ptr[v10 + 6].var0)
  {
    v11 = &ptr[*ptr[v10 + 6].var0];
    v12 = &v11[*v11->var0];
    valid = AFBIsValidUTF8();
    if (!valid)
    {
      return valid;
    }

    ptr = self->_ptr;
    v13 = *ptr->var0;
    v10 = -v13;
    v4 = *ptr[-v13].var0;
  }

  if (v4 < 9)
  {
    goto LABEL_19;
  }

  if (*ptr[v10 + 8].var0)
  {
    v14 = &ptr[*ptr[v10 + 8].var0];
    v15 = &v14[*v14->var0];
    valid = AFBIsValidUTF8();
    if (!valid)
    {
      return valid;
    }

    ptr = self->_ptr;
    v16 = *ptr->var0;
    v10 = -v16;
    v4 = *ptr[-v16].var0;
  }

  if (v4 < 0x11 || (v17 = *ptr[v10 + 16].var0) == 0)
  {
LABEL_19:
    LOBYTE(valid) = 1;
    return valid;
  }

  v18 = &ptr[v17 + 4 + *ptr[v17].var0];

  LOBYTE(valid) = AFBIsValidUTF8();
  return valid;
}

- (unint64_t)downloadSize
{
  ptr = self->_ptr;
  v3 = &ptr[-*ptr->var0];
  if (*v3->var0 >= 0xFu && (v4 = *v3[14].var0) != 0)
  {
    return *ptr[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (NSString)assetName
{
  ptr = self->_ptr;
  v3 = &ptr[-*ptr->var0];
  if (*v3->var0 >= 0x11u && (v4 = *v3[16].var0) != 0)
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

- (const)typeAsCString
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:1909 description:{@"Invalid parameter not satisfying: %@", @"fbs"}];

    v7 = 0;
  }

  return &v7[4];
}

- (NSData)typeAsData
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:1915 description:{@"Invalid parameter not satisfying: %@", @"fbs"}];

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

- (const)specifierAsCString
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:1930 description:{@"Invalid parameter not satisfying: %@", @"fbs"}];

    v7 = 0;
  }

  return &v7[4];
}

- (NSData)specifierAsData
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:1936 description:{@"Invalid parameter not satisfying: %@", @"fbs"}];

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

- (const)versionAsCString
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:1951 description:{@"Invalid parameter not satisfying: %@", @"fbs"}];

    v7 = 0;
  }

  return &v7[4];
}

- (NSData)versionAsData
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:1957 description:{@"Invalid parameter not satisfying: %@", @"fbs"}];

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

- (unsigned)fileType
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

- (const)assetNameAsCString
{
  ptr = self->_ptr;
  v3 = &ptr[-*ptr->var0];
  if (*v3->var0 >= 0x11u && (v4 = *v3[16].var0) != 0)
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
  if (*v3->var0 >= 0x11u && (v4 = *v3[16].var0) != 0)
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

- (BOOL)hasOnDemandFlag
{
  ptr = self->_ptr;
  v3 = &ptr[-*ptr->var0];
  return *v3->var0 >= 0x13u && (v4 = *v3[18].var0) != 0 && ptr[v4].var0[0] != 0;
}

- (id)deepCopyUsingBufferBuilder:(id)builder
{
  v3 = [(TRIFBMobileAssetReference *)self deepCopyUsingBufferBuilder:builder changes:0];

  return v3;
}

- (id)deepCopyUsingBufferBuilder:(id)builder changes:(id)changes
{
  builderCopy = builder;
  changesCopy = changes;
  if (!builderCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:2030 description:{@"Invalid parameter not satisfying: %@", @"bufferBuilder"}];
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
    typeAsCString = [(TRIFBMobileAssetReference *)self typeAsCString];
    if (typeAsCString)
    {
      v12 = [builderCopy createStringWithCString:typeAsCString];
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
      specifierAsCString = [(TRIFBMobileAssetReference *)self specifierAsCString];
      if (specifierAsCString)
      {
        v15 = [builderCopy createStringWithCString:specifierAsCString];
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
  if (changesCopy[16] == 1)
  {
    v15 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:*(changesCopy + 5)];
  }

  else
  {
    if (!changesCopy[16])
    {
      goto LABEL_15;
    }

    v15 = 0;
  }

LABEL_21:
  if (changesCopy[24] == 1)
  {
    v18 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:*(changesCopy + 7)];
    goto LABEL_29;
  }

  if (changesCopy[24])
  {
    v18 = 0;
    goto LABEL_29;
  }

LABEL_23:
  v16 = objc_autoreleasePoolPush();
  versionAsCString = [(TRIFBMobileAssetReference *)self versionAsCString];
  if (versionAsCString)
  {
    v18 = [builderCopy createStringWithCString:versionAsCString];
  }

  else
  {
    v18 = 0;
  }

  objc_autoreleasePoolPop(v16);
  if (!changesCopy)
  {
    goto LABEL_31;
  }

LABEL_29:
  if (changesCopy[48] == 1)
  {
    v21 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:*(changesCopy + 13)];
  }

  else
  {
    if (!changesCopy[48])
    {
LABEL_31:
      v19 = objc_autoreleasePoolPush();
      assetNameAsCString = [(TRIFBMobileAssetReference *)self assetNameAsCString];
      if (assetNameAsCString)
      {
        v21 = [builderCopy createStringWithCString:assetNameAsCString];
      }

      else
      {
        v21 = 0;
      }

      objc_autoreleasePoolPop(v19);
      goto LABEL_37;
    }

    v21 = 0;
  }

LABEL_37:
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __64__TRIFBMobileAssetReference_deepCopyUsingBufferBuilder_changes___block_invoke;
  v30[3] = &unk_27885E7D8;
  v22 = v12;
  v31 = v22;
  v23 = v15;
  v32 = v23;
  v24 = v18;
  v33 = v24;
  v25 = changesCopy;
  v34 = v25;
  selfCopy = self;
  v36 = v21;
  v26 = v21;
  v27 = [builderCopy trifbCreateMobileAssetReferenceUsingBlock:v30];

  objc_autoreleasePoolPop(v9);

  return v27;
}

void __64__TRIFBMobileAssetReference_deepCopyUsingBufferBuilder_changes___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  if (*(a1 + 32))
  {
    [v9 setType:?];
  }

  if (*(a1 + 40))
  {
    [v9 setSpecifier:?];
  }

  if (*(a1 + 48))
  {
    [v9 setVersion:?];
  }

  v3 = *(a1 + 56);
  if (!v3)
  {
LABEL_10:
    v4 = [*(a1 + 64) fileType];
    goto LABEL_12;
  }

  if (*(v3 + 32) != 1)
  {
    if (*(v3 + 32))
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  v4 = *(v3 + 33);
LABEL_12:
  [v9 setFileType:v4];
  v3 = *(a1 + 56);
  if (!v3)
  {
    goto LABEL_15;
  }

LABEL_13:
  if (*(v3 + 34) == 1)
  {
    v5 = *(v3 + 35);
LABEL_17:
    [v9 setIsOnDemand:v5 & 1];
    v3 = *(a1 + 56);
    if (!v3)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if (!*(v3 + 34))
  {
LABEL_15:
    v5 = [*(a1 + 64) isOnDemand];
    goto LABEL_17;
  }

LABEL_18:
  if (*(v3 + 36) == 1)
  {
    v6 = *(v3 + 40);
    goto LABEL_23;
  }

  if (*(v3 + 36))
  {
    goto LABEL_24;
  }

LABEL_20:
  if (![*(a1 + 64) hasDownloadSize])
  {
    goto LABEL_24;
  }

  v6 = [*(a1 + 64) downloadSize];
LABEL_23:
  [v9 setDownloadSize:v6];
LABEL_24:
  if (*(a1 + 72))
  {
    [v9 setAssetName:?];
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    if (*(v7 + 56) == 1)
    {
      v8 = *(v7 + 57);
      goto LABEL_31;
    }

    if (*(v7 + 56))
    {
      goto LABEL_32;
    }
  }

  v8 = [*(a1 + 64) hasOnDemandFlag];
LABEL_31:
  [v9 setHasOnDemandFlag:v8 & 1];
LABEL_32:
}

- (TRIFBMobileAssetReference)initWithBufRef:(id)ref cppPointer:(const MobileAssetReference *)pointer
{
  refCopy = ref;
  v11.receiver = self;
  v11.super_class = TRIFBMobileAssetReference;
  v8 = [(TRIFBMobileAssetReference *)&v11 init];
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

  if (v14 >= 5 && ((v15 = *v13->var0, v15 >= 1) ? (v16 = v14 - 1 >= v15) : (v16 = 0), v16 && MobileAssetReference::Verify(&v13[v15], &v23)))
  {
    v17 = *v13->var0;
    v18 = objc_alloc(MEMORY[0x277CED178]);
    v19 = [v18 initWithData:{dataCopy, v23, v24, v25, v26, v27, v28}];
    self = [(TRIFBMobileAssetReference *)self initWithBufRef:v19 cppPointer:&v13[v17]];

    selfCopy2 = self;
    if (f8)
    {
      if ([(TRIFBMobileAssetReference *)self verifyUTF8Fields])
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
  type = [(TRIFBMobileAssetReference *)self type];
  v5 = [type hash];

  specifier = [(TRIFBMobileAssetReference *)self specifier];
  v7 = [specifier hash];

  version = [(TRIFBMobileAssetReference *)self version];
  v9 = [version hash];

  fileType = [(TRIFBMobileAssetReference *)self fileType];
  isOnDemand = [(TRIFBMobileAssetReference *)self isOnDemand];
  downloadSize = [(TRIFBMobileAssetReference *)self downloadSize];
  assetName = [(TRIFBMobileAssetReference *)self assetName];
  v14 = [assetName hash] + 37 * (downloadSize + 37 * (37 * (37 * (v9 + 37 * (v7 + 37 * v5)) + fileType) + isOnDemand));

  v15 = 37 * v14 + [(TRIFBMobileAssetReference *)self hasOnDemandFlag];
  objc_autoreleasePoolPop(v3);
  return v15;
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
      type = [(TRIFBMobileAssetReference *)self type];
      type2 = [v6 type];
      if (type | type2)
      {
        v10 = [type isEqual:type2];

        if (!v10)
        {
          goto LABEL_17;
        }
      }

      specifier = [(TRIFBMobileAssetReference *)self specifier];
      specifier2 = [v6 specifier];
      if (specifier | specifier2)
      {
        v13 = [specifier isEqual:specifier2];

        if (!v13)
        {
          goto LABEL_17;
        }
      }

      version = [(TRIFBMobileAssetReference *)self version];
      version2 = [v6 version];
      if (version | version2)
      {
        v16 = [version isEqual:version2];

        if (!v16)
        {
          goto LABEL_17;
        }
      }

      fileType = [(TRIFBMobileAssetReference *)self fileType];
      if (fileType != [v6 fileType])
      {
        goto LABEL_17;
      }

      isOnDemand = [(TRIFBMobileAssetReference *)self isOnDemand];
      if (isOnDemand != [v6 isOnDemand])
      {
        goto LABEL_17;
      }

      downloadSize = [(TRIFBMobileAssetReference *)self downloadSize];
      if (downloadSize != [v6 downloadSize])
      {
        goto LABEL_17;
      }

      assetName = [(TRIFBMobileAssetReference *)self assetName];
      assetName2 = [v6 assetName];
      if (!(assetName | assetName2) || (v22 = [assetName isEqual:assetName2], assetName2, assetName, v22))
      {
        hasOnDemandFlag = [(TRIFBMobileAssetReference *)self hasOnDemandFlag];
        v24 = hasOnDemandFlag ^ [v6 hasOnDemandFlag] ^ 1;
      }

      else
      {
LABEL_17:
        LOBYTE(v24) = 0;
      }

      objc_autoreleasePoolPop(v7);
    }

    else
    {
      LOBYTE(v24) = 0;
    }
  }

  else
  {
    LOBYTE(v24) = 0;
  }

  return v24;
}

@end