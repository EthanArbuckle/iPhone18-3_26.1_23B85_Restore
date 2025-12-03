@interface TRIFBFactorLevel
- (BOOL)isEqual:(id)equal;
- (BOOL)verifyUTF8Fields;
- (NSArray)metadata;
- (NSData)aliasAsData;
- (NSData)factorIdAsData;
- (NSData)factorNamespaceNameAsData;
- (NSData)levelAsStringValData;
- (NSData)nameAsData;
- (NSDictionary)metadataAsDict;
- (NSString)alias;
- (NSString)factorId;
- (NSString)factorNamespaceName;
- (NSString)levelAsStringVal;
- (NSString)name;
- (TRIFBBoxedBool)levelAsBoolVal;
- (TRIFBBoxedDouble)levelAsDoubleVal;
- (TRIFBBoxedInt64)levelAsInt64Val;
- (TRIFBFactorLevel)initWithBufRef:(id)ref cppPointer:(const FactorLevel *)pointer;
- (TRIFBMobileAssetReference)levelAsMaRefVal;
- (TRIFBTrialManagedAsset)levelAsTrialAssetVal;
- (const)aliasAsCString;
- (const)factorIdAsCString;
- (const)factorNamespaceNameAsCString;
- (const)levelAsStringValCString;
- (const)nameAsCString;
- (id)deepCopyUsingBufferBuilder:(id)builder;
- (id)deepCopyUsingBufferBuilder:(id)builder changes:(id)changes;
- (id)initVerifiedRootObjectFromData:(id)data requireUTF8:(BOOL)f8 maxDepth:(unsigned int)depth maxTables:(unsigned int)tables;
- (unint64_t)hash;
- (unsigned)cacheKey;
- (unsigned)levelType;
- (unsigned)namespaceId;
@end

@implementation TRIFBFactorLevel

- (unsigned)levelType
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

- (TRIFBTrialManagedAsset)levelAsTrialAssetVal
{
  if ([(TRIFBFactorLevel *)self levelType]!= 5)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:3150 description:{@"Accessed union field TRIFBFactorLevel.levelAsTrialAssetVal, but the value stored in the union does not match this type."}];
  }

  ptr = self->_ptr;
  v5 = &ptr[-*ptr->var0];
  v6 = *v5->var0;
  if (v6 >= 7 && *v5[6].var0 && (v6 >= 9 ? (v7 = ptr[*v5[6].var0].var0[0] == 5) : (v7 = 0), v7 && (v8 = *v5[8].var0) != 0))
  {
    v9 = &ptr[v8 + *ptr[v8].var0];
  }

  else
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:3152 description:{@"Invalid parameter not satisfying: %@", @"nested"}];

    v9 = 0;
  }

  v11 = [[TRIFBTrialManagedAsset alloc] initWithBufRef:self->_br cppPointer:v9];

  return v11;
}

- (NSString)name
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:3051 description:{@"Invalid parameter not satisfying: %@", @"fbs"}];

    v7 = 0;
  }

  v9 = NSStringFromSelector(a2);
  v10 = makeNSString(v9, self->_br, &v7[4]);

  return v10;
}

- (NSString)alias
{
  ptr = self->_ptr;
  v3 = &ptr[-*ptr->var0];
  if (*v3->var0 >= 0xFu && (v4 = *v3[14].var0) != 0)
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

- (NSString)factorId
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

- (unsigned)namespaceId
{
  ptr = self->_ptr;
  v3 = &ptr[-*ptr->var0];
  if (*v3->var0 >= 0x15u && (v4 = *v3[20].var0) != 0)
  {
    return *ptr[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (NSArray)metadata
{
  ptr = self->_ptr;
  v5 = &ptr[-*ptr->var0];
  if (*v5->var0 >= 0xBu && (v6 = *v5[10].var0) != 0)
  {
    var0 = ptr[v6 + *ptr[v6].var0].var0;
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:3169 description:{@"Invalid parameter not satisfying: %@", @"vec"}];

    var0 = 0;
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __28__TRIFBFactorLevel_metadata__block_invoke;
  v12[3] = &unk_27885E850;
  v12[4] = self;
  v12[5] = var0;
  v9 = MEMORY[0x2318F2490](v12);
  v10 = [objc_alloc(MEMORY[0x277CED170]) initWithBufRef:self->_br count:*var0 objectAtIndex:v9];

  return v10;
}

- (NSString)factorNamespaceName
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

- (BOOL)verifyUTF8Fields
{
  levelType = [(TRIFBFactorLevel *)self levelType];
  if (levelType == 6)
  {
    levelAsMaRefVal = [(TRIFBFactorLevel *)self levelAsMaRefVal];
    verifyUTF8Fields = [levelAsMaRefVal verifyUTF8Fields];
  }

  else
  {
    if (levelType != 5)
    {
      if (levelType == 2 && FactorLevel::level_as_string_val(self->_ptr) && (AFBIsValidUTF8() & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_10;
    }

    levelAsMaRefVal = [(TRIFBFactorLevel *)self levelAsTrialAssetVal];
    verifyUTF8Fields = [levelAsMaRefVal verifyUTF8Fields];
  }

  v6 = verifyUTF8Fields;

  if ((v6 & 1) == 0)
  {
LABEL_17:
    LOBYTE(valid) = 0;
    return valid;
  }

LABEL_10:
  metadata = [(TRIFBFactorLevel *)self metadata];
  v8 = metadata;
  if (metadata)
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 1;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __36__TRIFBFactorLevel_verifyUTF8Fields__block_invoke;
    v27[3] = &unk_27885E918;
    v27[4] = &v28;
    [metadata enumerateObjectsUsingBlock:v27];
    v9 = *(v29 + 24);
    _Block_object_dispose(&v28, 8);
    if ((v9 & 1) == 0)
    {

      goto LABEL_17;
    }
  }

  ptr = self->_ptr;
  v11 = *ptr->var0;
  v12 = *ptr[-v11].var0;
  if (v12 < 5)
  {
    goto LABEL_30;
  }

  if (!*ptr[-v11 + 4].var0)
  {
    v17 = -v11;
LABEL_19:
    if (v12 >= 0xF)
    {
      if (*ptr[v17 + 14].var0)
      {
        v18 = &ptr[*ptr[v17 + 14].var0];
        v19 = &v18[*v18->var0];
        valid = AFBIsValidUTF8();
        if (!valid)
        {
          return valid;
        }

        ptr = self->_ptr;
        v20 = *ptr->var0;
        v17 = -v20;
        v12 = *ptr[-v20].var0;
      }

      if (v12 >= 0x11)
      {
        if (*ptr[v17 + 16].var0)
        {
          v21 = &ptr[*ptr[v17 + 16].var0];
          v22 = &v21[*v21->var0];
          valid = AFBIsValidUTF8();
          if (!valid)
          {
            return valid;
          }

          ptr = self->_ptr;
          v23 = *ptr->var0;
          v17 = -v23;
          v12 = *ptr[-v23].var0;
        }

        if (v12 >= 0x13)
        {
          v24 = *ptr[v17 + 18].var0;
          if (v24)
          {
            v25 = *ptr[v24].var0;
            LOBYTE(valid) = AFBIsValidUTF8();
            return valid;
          }
        }
      }
    }

LABEL_30:
    LOBYTE(valid) = 1;
    return valid;
  }

  v13 = &ptr[*ptr[-v11 + 4].var0];
  v14 = &v13[*v13->var0];
  valid = AFBIsValidUTF8();
  if (valid)
  {
    ptr = self->_ptr;
    v16 = *ptr->var0;
    v17 = -v16;
    v12 = *ptr[-v16].var0;
    goto LABEL_19;
  }

  return valid;
}

- (TRIFBBoxedBool)levelAsBoolVal
{
  if ([(TRIFBFactorLevel *)self levelType]!= 1)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:3080 description:{@"Accessed union field TRIFBFactorLevel.levelAsBoolVal, but the value stored in the union does not match this type."}];
  }

  ptr = self->_ptr;
  v5 = &ptr[-*ptr->var0];
  v6 = *v5->var0;
  if (v6 >= 7 && *v5[6].var0 && (v6 >= 9 ? (v7 = ptr[*v5[6].var0].var0[0] == 1) : (v7 = 0), v7 && (v8 = *v5[8].var0) != 0))
  {
    v9 = &ptr[v8 + *ptr[v8].var0];
  }

  else
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:3082 description:{@"Invalid parameter not satisfying: %@", @"nested"}];

    v9 = 0;
  }

  v11 = [[TRIFBImmutableBoxedBool alloc] initWithBufRef:v9 cppPointer:?];

  return v11;
}

- (TRIFBBoxedDouble)levelAsDoubleVal
{
  if ([(TRIFBFactorLevel *)self levelType]!= 4)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:3140 description:{@"Accessed union field TRIFBFactorLevel.levelAsDoubleVal, but the value stored in the union does not match this type."}];
  }

  ptr = self->_ptr;
  v5 = &ptr[-*ptr->var0];
  v6 = *v5->var0;
  if (v6 >= 7 && *v5[6].var0 && (v6 >= 9 ? (v7 = ptr[*v5[6].var0].var0[0] == 4) : (v7 = 0), v7 && (v8 = *v5[8].var0) != 0))
  {
    v9 = &ptr[v8 + *ptr[v8].var0];
  }

  else
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:3142 description:{@"Invalid parameter not satisfying: %@", @"nested"}];

    v9 = 0;
  }

  v11 = [[TRIFBImmutableBoxedDouble alloc] initWithBufRef:v9 cppPointer:?];

  return v11;
}

TRIFBFactorMetadataKeyValue *__28__TRIFBFactorLevel_metadata__block_invoke(uint64_t a1, unsigned int a2)
{
  v4 = [TRIFBFactorMetadataKeyValue alloc];
  v5 = *(a1 + 40);
  if (*v5 <= a2)
  {
    __assert_rtn("Get", "flatbuffers.h", 275, "i < size()");
  }

  v6 = [(TRIFBFactorMetadataKeyValue *)v4 initWithBufRef:*(*(a1 + 32) + 8) cppPointer:&v5[a2 + 1] + v5[a2 + 1]];

  return v6;
}

uint64_t __36__TRIFBFactorLevel_verifyUTF8Fields__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 verifyUTF8Fields];
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

- (TRIFBMobileAssetReference)levelAsMaRefVal
{
  if ([(TRIFBFactorLevel *)self levelType]!= 6)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:3160 description:{@"Accessed union field TRIFBFactorLevel.levelAsMaRefVal, but the value stored in the union does not match this type."}];
  }

  ptr = self->_ptr;
  v5 = &ptr[-*ptr->var0];
  v6 = *v5->var0;
  if (v6 >= 7 && *v5[6].var0 && (v6 >= 9 ? (v7 = ptr[*v5[6].var0].var0[0] == 6) : (v7 = 0), v7 && (v8 = *v5[8].var0) != 0))
  {
    v9 = &ptr[v8 + *ptr[v8].var0];
  }

  else
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:3162 description:{@"Invalid parameter not satisfying: %@", @"nested"}];

    v9 = 0;
  }

  v11 = [[TRIFBMobileAssetReference alloc] initWithBufRef:self->_br cppPointer:v9];

  return v11;
}

- (NSString)levelAsStringVal
{
  if ([(TRIFBFactorLevel *)self levelType]!= 2)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:3090 description:{@"Accessed union field TRIFBFactorLevel.levelAsStringVal, but the value stored in the union does not match this type."}];
  }

  v4 = FactorLevel::level_as_string_val(self->_ptr);
  if (!v4)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:3092 description:{@"Invalid parameter not satisfying: %@", @"fbs"}];
  }

  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:&v4[4]];
  if (!v5)
  {
    v9 = objc_alloc(MEMORY[0x277CCACA8]);
    v10 = NSStringFromSelector(a2);
    v11 = [v9 initWithFormat:@"%@ unable to decode null-terminated string as UTF-8", v10];

    v12 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CED168] reason:v11 userInfo:0];
    objc_exception_throw(v12);
  }

  return v5;
}

- (const)nameAsCString
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:3057 description:{@"Invalid parameter not satisfying: %@", @"fbs"}];

    v7 = 0;
  }

  return &v7[4];
}

- (NSData)nameAsData
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:3063 description:{@"Invalid parameter not satisfying: %@", @"fbs"}];

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

- (const)levelAsStringValCString
{
  if ([(TRIFBFactorLevel *)self levelType]!= 2)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:3108 description:{@"Accessed union field TRIFBFactorLevel.levelAsStringValCString, but the value stored in the union does not match this type."}];
  }

  v4 = FactorLevel::level_as_string_val(self->_ptr);
  if (!v4)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:3110 description:{@"Invalid parameter not satisfying: %@", @"fbs"}];
  }

  return &v4[4];
}

- (NSData)levelAsStringValData
{
  if ([(TRIFBFactorLevel *)self levelType]!= 2)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:3117 description:{@"Accessed union field TRIFBFactorLevel.levelAsStringValData, but the value stored in the union does not match this type."}];
  }

  v4 = FactorLevel::level_as_string_val(self->_ptr);
  if (!v4)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:3119 description:{@"Invalid parameter not satisfying: %@", @"fbs"}];
  }

  v5 = v4 + 4;
  v6 = strlen(&v4[4]);
  v7 = objc_autoreleasePoolPush();
  data = [(AFBBufRef *)self->_br data];
  v9 = &v5[-[data bytes]];

  data2 = [(AFBBufRef *)self->_br data];
  v11 = [data2 subdataWithRange:{v9, v6}];

  objc_autoreleasePoolPop(v7);

  return v11;
}

- (TRIFBBoxedInt64)levelAsInt64Val
{
  if ([(TRIFBFactorLevel *)self levelType]!= 3)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:3130 description:{@"Accessed union field TRIFBFactorLevel.levelAsInt64Val, but the value stored in the union does not match this type."}];
  }

  ptr = self->_ptr;
  v5 = &ptr[-*ptr->var0];
  v6 = *v5->var0;
  if (v6 >= 7 && *v5[6].var0 && (v6 >= 9 ? (v7 = ptr[*v5[6].var0].var0[0] == 3) : (v7 = 0), v7 && (v8 = *v5[8].var0) != 0))
  {
    v9 = &ptr[v8 + *ptr[v8].var0];
  }

  else
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:3132 description:{@"Invalid parameter not satisfying: %@", @"nested"}];

    v9 = 0;
  }

  v11 = [[TRIFBImmutableBoxedInt64 alloc] initWithBufRef:v9 cppPointer:?];

  return v11;
}

- (NSDictionary)metadataAsDict
{
  ptr = self->_ptr;
  v5 = &ptr[-*ptr->var0];
  if (*v5->var0 >= 0xBu && (v6 = *v5[10].var0) != 0)
  {
    var0 = ptr[v6 + *ptr[v6].var0].var0;
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:3182 description:{@"Invalid parameter not satisfying: %@", @"vec"}];

    var0 = 0;
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __34__TRIFBFactorLevel_metadataAsDict__block_invoke;
  v16[3] = &unk_27885E878;
  v16[4] = self;
  v16[5] = var0;
  v9 = MEMORY[0x2318F2490](v16);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __34__TRIFBFactorLevel_metadataAsDict__block_invoke_2;
  v15[3] = &unk_27885E850;
  v15[4] = self;
  v15[5] = var0;
  v10 = MEMORY[0x2318F2490](v15);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __34__TRIFBFactorLevel_metadataAsDict__block_invoke_3;
  v14[3] = &unk_27885E8A0;
  v14[4] = self;
  v14[5] = var0;
  v11 = MEMORY[0x2318F2490](v14);
  v12 = [objc_alloc(MEMORY[0x277CED188]) initWithBufRef:self->_br count:*var0 keyClass:objc_opt_class() keyAtIndex:v9 tableAtIndex:v10 objectForValidKey:v11];

  return v12;
}

__CFString *__34__TRIFBFactorLevel_metadataAsDict__block_invoke(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 40);
  if (*v3 <= a2)
  {
    __assert_rtn("Get", "flatbuffers.h", 275, "i < size()");
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = (&v3[a2 + 1] + v3[a2 + 1]);
  v6 = (v5 + *(v5 - *v5 + 4));
  v7 = v6 + *v6 + 4;

  return makeNSString(&cfstr_Enumeratekeysa.isa, v4, v7);
}

TRIFBFactorMetadataKeyValue *__34__TRIFBFactorLevel_metadataAsDict__block_invoke_2(uint64_t a1, unsigned int a2)
{
  v4 = [TRIFBFactorMetadataKeyValue alloc];
  v5 = *(a1 + 40);
  if (*v5 <= a2)
  {
    __assert_rtn("Get", "flatbuffers.h", 275, "i < size()");
  }

  v6 = [(TRIFBFactorMetadataKeyValue *)v4 initWithBufRef:*(*(a1 + 32) + 8) cppPointer:&v5[a2 + 1] + v5[a2 + 1]];

  return v6;
}

TRIFBFactorMetadataKeyValue *__34__TRIFBFactorLevel_metadataAsDict__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 UTF8String];
  if (v5 && (v6 = *(a1 + 40), __key = v5, (v7 = bsearch(&__key, v6 + 1, *v6, 4uLL, apple::aiml::flatbuffers2::Vector<apple::aiml::flatbuffers2::Offset<FactorMetadataKeyValue>>::KeyCompare<char const*>)) != 0))
  {
    v8 = [[TRIFBFactorMetadataKeyValue alloc] initWithBufRef:*(*(a1 + 32) + 8) cppPointer:v7 + *v7];
  }

  else
  {
    v8 = 0;
  }

  objc_autoreleasePoolPop(v4);

  return v8;
}

- (unsigned)cacheKey
{
  ptr = self->_ptr;
  v3 = &ptr[-*ptr->var0];
  if (*v3->var0 >= 0xDu && (v4 = *v3[12].var0) != 0)
  {
    return *ptr[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (const)aliasAsCString
{
  ptr = self->_ptr;
  v3 = &ptr[-*ptr->var0];
  if (*v3->var0 >= 0xFu && (v4 = *v3[14].var0) != 0)
  {
    return &ptr[v4 + 4 + *ptr[v4].var0];
  }

  else
  {
    return 0;
  }
}

- (NSData)aliasAsData
{
  ptr = self->_ptr;
  v3 = &ptr[-*ptr->var0];
  if (*v3->var0 >= 0xFu && (v4 = *v3[14].var0) != 0)
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

- (const)factorNamespaceNameAsCString
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

- (NSData)factorNamespaceNameAsData
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

- (const)factorIdAsCString
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

- (NSData)factorIdAsData
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
  v3 = [(TRIFBFactorLevel *)self deepCopyUsingBufferBuilder:builder changes:0];

  return v3;
}

- (id)deepCopyUsingBufferBuilder:(id)builder changes:(id)changes
{
  builderCopy = builder;
  changesCopy = changes;
  if (!builderCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:3298 description:{@"Invalid parameter not satisfying: %@", @"bufferBuilder"}];
  }

  context = objc_autoreleasePoolPush();
  if (!changesCopy)
  {
    goto LABEL_6;
  }

  if (changesCopy[8] == 1)
  {
    v11 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:*(changesCopy + 3)];
    goto LABEL_13;
  }

  if (changesCopy[8])
  {
    v11 = 0;
  }

  else
  {
LABEL_6:
    v9 = objc_autoreleasePoolPush();
    nameAsCString = [(TRIFBFactorLevel *)self nameAsCString];
    if (nameAsCString)
    {
      v11 = [builderCopy createStringWithCString:nameAsCString];
    }

    else
    {
      v11 = 0;
    }

    objc_autoreleasePoolPop(v9);
    if (!changesCopy)
    {
LABEL_15:
      levelType = [(TRIFBFactorLevel *)self levelType];
      v13 = 0;
      if (levelType > 3)
      {
        switch(levelType)
        {
          case 4:
            levelAsDoubleVal = [(TRIFBFactorLevel *)self levelAsDoubleVal];
            v15 = [builderCopy trifbCreateBoxedDoubleFromBoxedDouble:levelAsDoubleVal];
            break;
          case 5:
            levelAsDoubleVal = [(TRIFBFactorLevel *)self levelAsTrialAssetVal];
            v15 = [levelAsDoubleVal deepCopyUsingBufferBuilder:builderCopy];
            break;
          case 6:
            levelAsDoubleVal = [(TRIFBFactorLevel *)self levelAsMaRefVal];
            v15 = [levelAsDoubleVal deepCopyUsingBufferBuilder:builderCopy];
            break;
          default:
            goto LABEL_29;
        }
      }

      else
      {
        if (levelType != 1)
        {
          if (levelType == 2)
          {
            v16 = objc_autoreleasePoolPush();
            v13 = [builderCopy createStringWithCString:{-[TRIFBFactorLevel levelAsStringValCString](self, "levelAsStringValCString")}];
            objc_autoreleasePoolPop(v16);
          }

          else if (levelType == 3)
          {
            levelAsDoubleVal = [(TRIFBFactorLevel *)self levelAsInt64Val];
            v15 = [builderCopy trifbCreateBoxedInt64FromBoxedInt64:levelAsDoubleVal];
            goto LABEL_32;
          }

LABEL_29:
          if (!changesCopy)
          {
            goto LABEL_35;
          }

          goto LABEL_33;
        }

        levelAsDoubleVal = [(TRIFBFactorLevel *)self levelAsBoolVal];
        v15 = [builderCopy trifbCreateBoxedBoolFromBoxedBool:levelAsDoubleVal];
      }

LABEL_32:
      v13 = v15;

      if (!changesCopy)
      {
        goto LABEL_35;
      }

      goto LABEL_33;
    }
  }

LABEL_13:
  if (changesCopy[17] == 1)
  {
    v13 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:*(changesCopy + 5)];
  }

  else
  {
    if (!changesCopy[17])
    {
      goto LABEL_15;
    }

    v13 = 0;
  }

LABEL_33:
  if (changesCopy[24] == 1)
  {
    v21 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:*(changesCopy + 7)];
    goto LABEL_41;
  }

  if (changesCopy[24])
  {
    v21 = 0;
    goto LABEL_41;
  }

LABEL_35:
  metadata = [(TRIFBFactorLevel *)self metadata];
  if (metadata)
  {
    v18 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(metadata, "count")}];
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __55__TRIFBFactorLevel_deepCopyUsingBufferBuilder_changes___block_invoke;
    v51[3] = &unk_27885E8C8;
    v19 = v18;
    v52 = v19;
    v20 = builderCopy;
    v53 = v20;
    [metadata enumerateObjectsUsingBlock:v51];
    v21 = [v20 trifbCreateSortedVectorOfFactorMetadataKeyValueWithOffsets:v19];
  }

  else
  {
    v21 = 0;
  }

  if (!changesCopy)
  {
LABEL_43:
    v22 = objc_autoreleasePoolPush();
    aliasAsCString = [(TRIFBFactorLevel *)self aliasAsCString];
    if (aliasAsCString)
    {
      v24 = [builderCopy createStringWithCString:aliasAsCString];
    }

    else
    {
      v24 = 0;
    }

    objc_autoreleasePoolPop(v22);
    if (!changesCopy)
    {
      goto LABEL_51;
    }

    goto LABEL_49;
  }

LABEL_41:
  if (changesCopy[40] == 1)
  {
    v24 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:*(changesCopy + 11)];
  }

  else
  {
    if (!changesCopy[40])
    {
      goto LABEL_43;
    }

    v24 = 0;
  }

LABEL_49:
  if (changesCopy[48] == 1)
  {
    v27 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:*(changesCopy + 13)];
    goto LABEL_57;
  }

  if (changesCopy[48])
  {
    v27 = 0;
    goto LABEL_57;
  }

LABEL_51:
  v25 = objc_autoreleasePoolPush();
  factorNamespaceNameAsCString = [(TRIFBFactorLevel *)self factorNamespaceNameAsCString];
  if (factorNamespaceNameAsCString)
  {
    v27 = [builderCopy createStringWithCString:factorNamespaceNameAsCString];
  }

  else
  {
    v27 = 0;
  }

  objc_autoreleasePoolPop(v25);
  if (!changesCopy)
  {
    goto LABEL_59;
  }

LABEL_57:
  if (changesCopy[56] == 1)
  {
    v30 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:*(changesCopy + 15)];
  }

  else
  {
    if (!changesCopy[56])
    {
LABEL_59:
      v28 = objc_autoreleasePoolPush();
      factorIdAsCString = [(TRIFBFactorLevel *)self factorIdAsCString];
      if (factorIdAsCString)
      {
        v30 = [builderCopy createStringWithCString:factorIdAsCString];
      }

      else
      {
        v30 = 0;
      }

      objc_autoreleasePoolPop(v28);
      goto LABEL_65;
    }

    v30 = 0;
  }

LABEL_65:
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __55__TRIFBFactorLevel_deepCopyUsingBufferBuilder_changes___block_invoke_2;
  v42[3] = &unk_27885E8F0;
  v31 = v11;
  v43 = v31;
  v32 = v13;
  v44 = v32;
  v33 = changesCopy;
  v45 = v33;
  selfCopy = self;
  v34 = v21;
  v47 = v34;
  v35 = v24;
  v48 = v35;
  v36 = v27;
  v49 = v36;
  v50 = v30;
  v37 = v30;
  v38 = [builderCopy trifbCreateFactorLevelUsingBlock:v42];

  objc_autoreleasePoolPop(context);

  return v38;
}

void __55__TRIFBFactorLevel_deepCopyUsingBufferBuilder_changes___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 deepCopyUsingBufferBuilder:*(a1 + 40)];
  [v2 addObject:?];
}

void __55__TRIFBFactorLevel_deepCopyUsingBufferBuilder_changes___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = a2;
  if (*(a1 + 32))
  {
    [v9 setName:?];
  }

  if (*(a1 + 40))
  {
    v3 = *(a1 + 48);
    if (v3 && *(v3 + 17) == 1)
    {
      v4 = *(v3 + 16);
    }

    else
    {
      v4 = [*(a1 + 56) levelType];
    }

    if (v4 > 3)
    {
      switch(v4)
      {
        case 4:
          [v9 setLevelWithDoubleVal:*(a1 + 40)];
          break;
        case 5:
          [v9 setLevelWithTrialAssetVal:*(a1 + 40)];
          break;
        case 6:
          [v9 setLevelWithMaRefVal:*(a1 + 40)];
          break;
      }
    }

    else
    {
      switch(v4)
      {
        case 1:
          [v9 setLevelWithBoolVal:*(a1 + 40)];
          break;
        case 2:
          [v9 setLevelWithStringVal:*(a1 + 40)];
          break;
        case 3:
          [v9 setLevelWithInt64Val:*(a1 + 40)];
          break;
      }
    }
  }

  if (*(a1 + 64))
  {
    [v9 setMetadata:?];
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    if (*(v5 + 32) == 1)
    {
      v6 = *(v5 + 36);
      goto LABEL_28;
    }

    if (*(v5 + 32))
    {
      goto LABEL_29;
    }
  }

  v6 = [*(a1 + 56) cacheKey];
LABEL_28:
  [v9 setCacheKey:v6];
LABEL_29:
  if (*(a1 + 72))
  {
    [v9 setAlias:?];
  }

  if (*(a1 + 80))
  {
    [v9 setFactorNamespaceName:?];
  }

  if (*(a1 + 88))
  {
    [v9 setFactorId:?];
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    if (*(v7 + 64) == 1)
    {
      v8 = *(v7 + 68);
      goto LABEL_40;
    }

    if (*(v7 + 64))
    {
      goto LABEL_41;
    }
  }

  v8 = [*(a1 + 56) namespaceId];
LABEL_40:
  [v9 setNamespaceId:v8];
LABEL_41:
}

- (TRIFBFactorLevel)initWithBufRef:(id)ref cppPointer:(const FactorLevel *)pointer
{
  refCopy = ref;
  v11.receiver = self;
  v11.super_class = TRIFBFactorLevel;
  v8 = [(TRIFBFactorLevel *)&v11 init];
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

  if (v14 >= 5 && ((v15 = *v13->var0, v15 >= 1) ? (v16 = v14 - 1 >= v15) : (v16 = 0), v16 && FactorLevel::Verify(&v13[v15], &v23)))
  {
    v17 = *v13->var0;
    v18 = objc_alloc(MEMORY[0x277CED178]);
    v19 = [v18 initWithData:{dataCopy, v23, v24, v25, v26, v27, v28}];
    self = [(TRIFBFactorLevel *)self initWithBufRef:v19 cppPointer:&v13[v17]];

    selfCopy2 = self;
    if (f8)
    {
      if ([(TRIFBFactorLevel *)self verifyUTF8Fields])
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
  name = [(TRIFBFactorLevel *)self name];
  v5 = [name hash];

  levelType = [(TRIFBFactorLevel *)self levelType];
  metadata = [(TRIFBFactorLevel *)self metadata];
  v8 = [metadata hash];

  cacheKey = [(TRIFBFactorLevel *)self cacheKey];
  alias = [(TRIFBFactorLevel *)self alias];
  v11 = [alias hash];

  factorNamespaceName = [(TRIFBFactorLevel *)self factorNamespaceName];
  v13 = [factorNamespaceName hash];

  factorId = [(TRIFBFactorLevel *)self factorId];
  v15 = [factorId hash] + 37 * (v13 + 37 * (v11 + 37 * (37 * (v8 + 37 * (37 * v5 + levelType)) + cacheKey)));

  v16 = 37 * v15 + [(TRIFBFactorLevel *)self namespaceId];
  objc_autoreleasePoolPop(v3);
  return v16;
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
      v12 = 0;
LABEL_39:

      goto LABEL_40;
    }

    v7 = objc_autoreleasePoolPush();
    levelType = [(TRIFBFactorLevel *)self levelType];
    if (levelType != [v6 levelType])
    {
      goto LABEL_37;
    }

    levelType2 = [(TRIFBFactorLevel *)self levelType];
    if (levelType2 > 3)
    {
      switch(levelType2)
      {
        case 4:
          levelAsDoubleVal = [(TRIFBFactorLevel *)self levelAsDoubleVal];
          levelAsDoubleVal2 = [v6 levelAsDoubleVal];
          if (levelAsDoubleVal | levelAsDoubleVal2)
          {
            goto LABEL_24;
          }

          break;
        case 5:
          levelAsDoubleVal = [(TRIFBFactorLevel *)self levelAsTrialAssetVal];
          levelAsDoubleVal2 = [v6 levelAsTrialAssetVal];
          if (levelAsDoubleVal | levelAsDoubleVal2)
          {
            goto LABEL_24;
          }

          break;
        case 6:
          levelAsDoubleVal = [(TRIFBFactorLevel *)self levelAsMaRefVal];
          levelAsDoubleVal2 = [v6 levelAsMaRefVal];
          if (levelAsDoubleVal | levelAsDoubleVal2)
          {
LABEL_24:
            v13 = [levelAsDoubleVal isEqual:levelAsDoubleVal2];

            if ((v13 & 1) == 0)
            {
              goto LABEL_37;
            }
          }

          break;
      }
    }

    else
    {
      switch(levelType2)
      {
        case 1:
          levelAsDoubleVal = [(TRIFBFactorLevel *)self levelAsBoolVal];
          levelAsDoubleVal2 = [v6 levelAsBoolVal];
          if (levelAsDoubleVal | levelAsDoubleVal2)
          {
            goto LABEL_24;
          }

          break;
        case 2:
          levelAsDoubleVal = [(TRIFBFactorLevel *)self levelAsStringVal];
          levelAsDoubleVal2 = [v6 levelAsStringVal];
          if (levelAsDoubleVal | levelAsDoubleVal2)
          {
            goto LABEL_24;
          }

          break;
        case 3:
          levelAsDoubleVal = [(TRIFBFactorLevel *)self levelAsInt64Val];
          levelAsDoubleVal2 = [v6 levelAsInt64Val];
          if (levelAsDoubleVal | levelAsDoubleVal2)
          {
            goto LABEL_24;
          }

          break;
      }
    }

    name = [(TRIFBFactorLevel *)self name];
    name2 = [v6 name];
    if (!(name | name2) || (v16 = [name isEqual:name2], name2, name, v16))
    {
      metadata = [(TRIFBFactorLevel *)self metadata];
      metadata2 = [v6 metadata];
      if (!(metadata | metadata2) || (v19 = [metadata isEqual:metadata2], metadata2, metadata, v19))
      {
        cacheKey = [(TRIFBFactorLevel *)self cacheKey];
        if (cacheKey == [v6 cacheKey])
        {
          alias = [(TRIFBFactorLevel *)self alias];
          alias2 = [v6 alias];
          if (!(alias | alias2) || (v23 = [alias isEqual:alias2], alias2, alias, v23))
          {
            factorNamespaceName = [(TRIFBFactorLevel *)self factorNamespaceName];
            factorNamespaceName2 = [v6 factorNamespaceName];
            if (!(factorNamespaceName | factorNamespaceName2) || (v26 = [factorNamespaceName isEqual:factorNamespaceName2], factorNamespaceName2, factorNamespaceName, v26))
            {
              factorId = [(TRIFBFactorLevel *)self factorId];
              factorId2 = [v6 factorId];
              if (!(factorId | factorId2) || (v29 = [factorId isEqual:factorId2], factorId2, factorId, v29))
              {
                namespaceId = [(TRIFBFactorLevel *)self namespaceId];
                v12 = namespaceId == [v6 namespaceId];
LABEL_38:
                objc_autoreleasePoolPop(v7);
                goto LABEL_39;
              }
            }
          }
        }
      }
    }

LABEL_37:
    v12 = 0;
    goto LABEL_38;
  }

  v12 = 0;
LABEL_40:

  return v12;
}

@end