@interface TRIFBMobileAssetReference
- (BOOL)hasOnDemandFlag;
- (BOOL)isEqual:(id)a3;
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
- (TRIFBMobileAssetReference)initWithBufRef:(id)a3 cppPointer:(const MobileAssetReference *)a4;
- (const)assetNameAsCString;
- (const)specifierAsCString;
- (const)typeAsCString;
- (const)versionAsCString;
- (id)deepCopyUsingBufferBuilder:(id)a3;
- (id)deepCopyUsingBufferBuilder:(id)a3 changes:(id)a4;
- (id)initVerifiedRootObjectFromData:(id)a3 requireUTF8:(BOOL)a4 maxDepth:(unsigned int)a5 maxTables:(unsigned int)a6;
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
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:1903 description:{@"Invalid parameter not satisfying: %@", @"fbs"}];

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
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:1924 description:{@"Invalid parameter not satisfying: %@", @"fbs"}];

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
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:1945 description:{@"Invalid parameter not satisfying: %@", @"fbs"}];

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
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:1909 description:{@"Invalid parameter not satisfying: %@", @"fbs"}];

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
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:1915 description:{@"Invalid parameter not satisfying: %@", @"fbs"}];

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
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:1930 description:{@"Invalid parameter not satisfying: %@", @"fbs"}];

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
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:1936 description:{@"Invalid parameter not satisfying: %@", @"fbs"}];

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
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:1951 description:{@"Invalid parameter not satisfying: %@", @"fbs"}];

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
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:1957 description:{@"Invalid parameter not satisfying: %@", @"fbs"}];

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

- (BOOL)hasOnDemandFlag
{
  ptr = self->_ptr;
  v3 = &ptr[-*ptr->var0];
  return *v3->var0 >= 0x13u && (v4 = *v3[18].var0) != 0 && ptr[v4].var0[0] != 0;
}

- (id)deepCopyUsingBufferBuilder:(id)a3
{
  v3 = [(TRIFBMobileAssetReference *)self deepCopyUsingBufferBuilder:a3 changes:0];

  return v3;
}

- (id)deepCopyUsingBufferBuilder:(id)a3 changes:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v29 = [MEMORY[0x277CCA890] currentHandler];
    [v29 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:2030 description:{@"Invalid parameter not satisfying: %@", @"bufferBuilder"}];
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
    v11 = [(TRIFBMobileAssetReference *)self typeAsCString];
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
      v14 = [(TRIFBMobileAssetReference *)self specifierAsCString];
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
  if (v8[16] == 1)
  {
    v15 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:*(v8 + 5)];
  }

  else
  {
    if (!v8[16])
    {
      goto LABEL_15;
    }

    v15 = 0;
  }

LABEL_21:
  if (v8[24] == 1)
  {
    v18 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:*(v8 + 7)];
    goto LABEL_29;
  }

  if (v8[24])
  {
    v18 = 0;
    goto LABEL_29;
  }

LABEL_23:
  v16 = objc_autoreleasePoolPush();
  v17 = [(TRIFBMobileAssetReference *)self versionAsCString];
  if (v17)
  {
    v18 = [v7 createStringWithCString:v17];
  }

  else
  {
    v18 = 0;
  }

  objc_autoreleasePoolPop(v16);
  if (!v8)
  {
    goto LABEL_31;
  }

LABEL_29:
  if (v8[48] == 1)
  {
    v21 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:*(v8 + 13)];
  }

  else
  {
    if (!v8[48])
    {
LABEL_31:
      v19 = objc_autoreleasePoolPush();
      v20 = [(TRIFBMobileAssetReference *)self assetNameAsCString];
      if (v20)
      {
        v21 = [v7 createStringWithCString:v20];
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
  v25 = v8;
  v34 = v25;
  v35 = self;
  v36 = v21;
  v26 = v21;
  v27 = [v7 trifbCreateMobileAssetReferenceUsingBlock:v30];

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

- (TRIFBMobileAssetReference)initWithBufRef:(id)a3 cppPointer:(const MobileAssetReference *)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = TRIFBMobileAssetReference;
  v8 = [(TRIFBMobileAssetReference *)&v11 init];
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

  if (v14 >= 5 && ((v15 = *v13->var0, v15 >= 1) ? (v16 = v14 - 1 >= v15) : (v16 = 0), v16 && MobileAssetReference::Verify(&v13[v15], &v23)))
  {
    v17 = *v13->var0;
    v18 = objc_alloc(MEMORY[0x277CED178]);
    v19 = [v18 initWithData:{v10, v23, v24, v25, v26, v27, v28}];
    self = [(TRIFBMobileAssetReference *)self initWithBufRef:v19 cppPointer:&v13[v17]];

    v20 = self;
    if (a4)
    {
      if ([(TRIFBMobileAssetReference *)self verifyUTF8Fields])
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
  v4 = [(TRIFBMobileAssetReference *)self type];
  v5 = [v4 hash];

  v6 = [(TRIFBMobileAssetReference *)self specifier];
  v7 = [v6 hash];

  v8 = [(TRIFBMobileAssetReference *)self version];
  v9 = [v8 hash];

  v10 = [(TRIFBMobileAssetReference *)self fileType];
  v11 = [(TRIFBMobileAssetReference *)self isOnDemand];
  v12 = [(TRIFBMobileAssetReference *)self downloadSize];
  v13 = [(TRIFBMobileAssetReference *)self assetName];
  v14 = [v13 hash] + 37 * (v12 + 37 * (37 * (37 * (v9 + 37 * (v7 + 37 * v5)) + v10) + v11));

  v15 = 37 * v14 + [(TRIFBMobileAssetReference *)self hasOnDemandFlag];
  objc_autoreleasePoolPop(v3);
  return v15;
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
      v8 = [(TRIFBMobileAssetReference *)self type];
      v9 = [v6 type];
      if (v8 | v9)
      {
        v10 = [v8 isEqual:v9];

        if (!v10)
        {
          goto LABEL_17;
        }
      }

      v11 = [(TRIFBMobileAssetReference *)self specifier];
      v12 = [v6 specifier];
      if (v11 | v12)
      {
        v13 = [v11 isEqual:v12];

        if (!v13)
        {
          goto LABEL_17;
        }
      }

      v14 = [(TRIFBMobileAssetReference *)self version];
      v15 = [v6 version];
      if (v14 | v15)
      {
        v16 = [v14 isEqual:v15];

        if (!v16)
        {
          goto LABEL_17;
        }
      }

      v17 = [(TRIFBMobileAssetReference *)self fileType];
      if (v17 != [v6 fileType])
      {
        goto LABEL_17;
      }

      v18 = [(TRIFBMobileAssetReference *)self isOnDemand];
      if (v18 != [v6 isOnDemand])
      {
        goto LABEL_17;
      }

      v19 = [(TRIFBMobileAssetReference *)self downloadSize];
      if (v19 != [v6 downloadSize])
      {
        goto LABEL_17;
      }

      v20 = [(TRIFBMobileAssetReference *)self assetName];
      v21 = [v6 assetName];
      if (!(v20 | v21) || (v22 = [v20 isEqual:v21], v21, v20, v22))
      {
        v23 = [(TRIFBMobileAssetReference *)self hasOnDemandFlag];
        v24 = v23 ^ [v6 hasOnDemandFlag] ^ 1;
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