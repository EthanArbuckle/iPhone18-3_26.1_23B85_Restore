@interface TRIFBFastFactorLevels
- (BOOL)enumerateNcvsUsingBlock:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)verifyUTF8Fields;
- (NSArray)levels;
- (NSArray)ncvs;
- (NSData)namespaceNameAsData;
- (NSData)sourceAsDefaultsData;
- (NSData)sourceAsFactorPackIdData;
- (NSData)sourceAsTreatmentIdData;
- (NSDictionary)levelsAsDict;
- (NSString)namespaceName;
- (NSString)sourceAsDefaults;
- (NSString)sourceAsFactorPackId;
- (NSString)sourceAsTreatmentId;
- (TRIFBFastFactorLevels)initWithBufRef:(id)a3 cppPointer:(const FastFactorLevels *)a4;
- (const)namespaceNameAsCString;
- (const)ncvsAsCArrayWithCount:(unint64_t *)a3;
- (const)sourceAsDefaultsCString;
- (const)sourceAsFactorPackIdCString;
- (const)sourceAsTreatmentIdCString;
- (id)deepCopyUsingBufferBuilder:(id)a3;
- (id)deepCopyUsingBufferBuilder:(id)a3 changes:(id)a4;
- (id)initVerifiedRootObjectFromData:(id)a3 requireUTF8:(BOOL)a4 maxDepth:(unsigned int)a5 maxTables:(unsigned int)a6;
- (unint64_t)hash;
- (unsigned)sourceType;
@end

@implementation TRIFBFastFactorLevels

- (NSDictionary)levelsAsDict
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
    [v8 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:4198 description:{@"Invalid parameter not satisfying: %@", @"vec"}];

    var0 = 0;
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __37__TRIFBFastFactorLevels_levelsAsDict__block_invoke;
  v16[3] = &unk_27885E878;
  v16[4] = self;
  v16[5] = var0;
  v9 = MEMORY[0x2318F2490](v16);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __37__TRIFBFastFactorLevels_levelsAsDict__block_invoke_2;
  v15[3] = &unk_27885E850;
  v15[4] = self;
  v15[5] = var0;
  v10 = MEMORY[0x2318F2490](v15);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __37__TRIFBFastFactorLevels_levelsAsDict__block_invoke_3;
  v14[3] = &unk_27885E8A0;
  v14[4] = self;
  v14[5] = var0;
  v11 = MEMORY[0x2318F2490](v14);
  v12 = [objc_alloc(MEMORY[0x277CED188]) initWithBufRef:self->_br count:*var0 keyClass:objc_opt_class() keyAtIndex:v9 tableAtIndex:v10 objectForValidKey:v11];

  return v12;
}

TRIFBFactorLevel *__37__TRIFBFastFactorLevels_levelsAsDict__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 UTF8String];
  if (v5 && (v6 = *(a1 + 40), __key = v5, (v7 = bsearch(&__key, v6 + 1, *v6, 4uLL, apple::aiml::flatbuffers2::Vector<apple::aiml::flatbuffers2::Offset<FactorLevel>>::KeyCompare<char const*>)) != 0))
  {
    v8 = [[TRIFBFactorLevel alloc] initWithBufRef:*(*(a1 + 32) + 8) cppPointer:v7 + *v7];
  }

  else
  {
    v8 = 0;
  }

  objc_autoreleasePoolPop(v4);

  return v8;
}

- (NSString)namespaceName
{
  ptr = self->_ptr;
  v5 = &ptr[-*ptr->var0];
  if (*v5->var0 >= 0xBu && (v6 = *v5[10].var0) != 0)
  {
    v7 = &ptr[v6 + *ptr[v6].var0];
  }

  else
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:4356 description:{@"Invalid parameter not satisfying: %@", @"fbs"}];

    v7 = 0;
  }

  v9 = NSStringFromSelector(a2);
  v10 = makeNSString(v9, self->_br, &v7[4]);

  return v10;
}

- (NSArray)ncvs
{
  ptr = self->_ptr;
  v3 = &ptr[-*ptr->var0];
  if (*v3->var0 >= 0xDu && (v4 = *v3[12].var0) != 0)
  {
    var0 = ptr[v4 + *ptr[v4].var0].var0;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __29__TRIFBFastFactorLevels_ncvs__block_invoke;
    v10[3] = &__block_descriptor_40_e18___NSNumber_16__0Q8l;
    v10[4] = var0;
    v7 = MEMORY[0x2318F2490](v10, a2);
    v8 = [objc_alloc(MEMORY[0x277CED170]) initWithBufRef:self->_br count:*var0 objectAtIndex:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSString)sourceAsFactorPackId
{
  if ([(TRIFBFastFactorLevels *)self sourceType]!= 2)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:4277 description:{@"Accessed union field TRIFBFastFactorLevels.sourceAsFactorPackId, but the value stored in the union does not match this type."}];
  }

  v4 = FactorLevel::level_as_string_val(self->_ptr);
  if (!v4)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:4279 description:{@"Invalid parameter not satisfying: %@", @"fbs"}];
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

uint64_t __41__TRIFBFastFactorLevels_verifyUTF8Fields__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 verifyUTF8Fields];
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

- (BOOL)verifyUTF8Fields
{
  v3 = [(TRIFBFastFactorLevels *)self levels];
  v4 = v3;
  if (v3)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 1;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __41__TRIFBFastFactorLevels_verifyUTF8Fields__block_invoke;
    v13[3] = &unk_27885E9D8;
    v13[4] = &v14;
    [v3 enumerateObjectsUsingBlock:v13];
    v5 = *(v15 + 24);
    _Block_object_dispose(&v14, 8);
    if ((v5 & 1) == 0)
    {

      goto LABEL_11;
    }
  }

  v6 = [(TRIFBFastFactorLevels *)self sourceType];
  if (v6 == 3)
  {
    if (FastFactorLevels::source_as_defaults(self->_ptr))
    {
      valid = AFBIsValidUTF8();
      if (!valid)
      {
        return valid;
      }
    }

    goto LABEL_14;
  }

  if (v6 == 2)
  {
    if (!FactorLevel::level_as_string_val(self->_ptr))
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  if (v6 == 1 && FastFactorLevels::source_as_treatment_id(self->_ptr))
  {
LABEL_10:
    if (AFBIsValidUTF8())
    {
      goto LABEL_14;
    }

LABEL_11:
    LOBYTE(valid) = 0;
    return valid;
  }

LABEL_14:
  ptr = self->_ptr;
  v9 = &ptr[-*ptr->var0];
  if (*v9->var0 >= 0xBu && (v10 = *v9[10].var0) != 0)
  {
    v11 = *ptr[v10].var0;
    LOBYTE(valid) = AFBIsValidUTF8();
  }

  else
  {
    LOBYTE(valid) = 1;
  }

  return valid;
}

id __29__TRIFBFastFactorLevels_ncvs__block_invoke(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 32);
  if (*v2 <= a2)
  {
    __assert_rtn("Get", "flatbuffers.h", 275, "i < size()");
  }

  v3 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:v2[a2 + 1]];

  return v3;
}

- (unsigned)sourceType
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

- (NSArray)levels
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
    [v8 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:4185 description:{@"Invalid parameter not satisfying: %@", @"vec"}];

    var0 = 0;
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __31__TRIFBFastFactorLevels_levels__block_invoke;
  v12[3] = &unk_27885E850;
  v12[4] = self;
  v12[5] = var0;
  v9 = MEMORY[0x2318F2490](v12);
  v10 = [objc_alloc(MEMORY[0x277CED170]) initWithBufRef:self->_br count:*var0 objectAtIndex:v9];

  return v10;
}

TRIFBFactorLevel *__31__TRIFBFastFactorLevels_levels__block_invoke(uint64_t a1, unsigned int a2)
{
  v4 = [TRIFBFactorLevel alloc];
  v5 = *(a1 + 40);
  if (*v5 <= a2)
  {
    __assert_rtn("Get", "flatbuffers.h", 275, "i < size()");
  }

  v6 = [(TRIFBFactorLevel *)v4 initWithBufRef:*(*(a1 + 32) + 8) cppPointer:&v5[a2 + 1] + v5[a2 + 1]];

  return v6;
}

__CFString *__37__TRIFBFastFactorLevels_levelsAsDict__block_invoke(uint64_t a1, unsigned int a2)
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

TRIFBFactorLevel *__37__TRIFBFastFactorLevels_levelsAsDict__block_invoke_2(uint64_t a1, unsigned int a2)
{
  v4 = [TRIFBFactorLevel alloc];
  v5 = *(a1 + 40);
  if (*v5 <= a2)
  {
    __assert_rtn("Get", "flatbuffers.h", 275, "i < size()");
  }

  v6 = [(TRIFBFactorLevel *)v4 initWithBufRef:*(*(a1 + 32) + 8) cppPointer:&v5[a2 + 1] + v5[a2 + 1]];

  return v6;
}

- (NSString)sourceAsTreatmentId
{
  if ([(TRIFBFastFactorLevels *)self sourceType]!= 1)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:4237 description:{@"Accessed union field TRIFBFastFactorLevels.sourceAsTreatmentId, but the value stored in the union does not match this type."}];
  }

  v4 = FastFactorLevels::source_as_treatment_id(self->_ptr);
  if (!v4)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:4239 description:{@"Invalid parameter not satisfying: %@", @"fbs"}];
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

- (const)sourceAsTreatmentIdCString
{
  if ([(TRIFBFastFactorLevels *)self sourceType]!= 1)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:4255 description:{@"Accessed union field TRIFBFastFactorLevels.sourceAsTreatmentIdCString, but the value stored in the union does not match this type."}];
  }

  v4 = FastFactorLevels::source_as_treatment_id(self->_ptr);
  if (!v4)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:4257 description:{@"Invalid parameter not satisfying: %@", @"fbs"}];
  }

  return &v4[4];
}

- (NSData)sourceAsTreatmentIdData
{
  if ([(TRIFBFastFactorLevels *)self sourceType]!= 1)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:4264 description:{@"Accessed union field TRIFBFastFactorLevels.sourceAsTreatmentIdData, but the value stored in the union does not match this type."}];
  }

  v4 = FastFactorLevels::source_as_treatment_id(self->_ptr);
  if (!v4)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:4266 description:{@"Invalid parameter not satisfying: %@", @"fbs"}];
  }

  v5 = v4 + 4;
  v6 = strlen(&v4[4]);
  v7 = objc_autoreleasePoolPush();
  v8 = [(AFBBufRef *)self->_br data];
  v9 = &v5[-[v8 bytes]];

  v10 = [(AFBBufRef *)self->_br data];
  v11 = [v10 subdataWithRange:{v9, v6}];

  objc_autoreleasePoolPop(v7);

  return v11;
}

- (const)sourceAsFactorPackIdCString
{
  if ([(TRIFBFastFactorLevels *)self sourceType]!= 2)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:4295 description:{@"Accessed union field TRIFBFastFactorLevels.sourceAsFactorPackIdCString, but the value stored in the union does not match this type."}];
  }

  v4 = FactorLevel::level_as_string_val(self->_ptr);
  if (!v4)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:4297 description:{@"Invalid parameter not satisfying: %@", @"fbs"}];
  }

  return &v4[4];
}

- (NSData)sourceAsFactorPackIdData
{
  if ([(TRIFBFastFactorLevels *)self sourceType]!= 2)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:4304 description:{@"Accessed union field TRIFBFastFactorLevels.sourceAsFactorPackIdData, but the value stored in the union does not match this type."}];
  }

  v4 = FactorLevel::level_as_string_val(self->_ptr);
  if (!v4)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:4306 description:{@"Invalid parameter not satisfying: %@", @"fbs"}];
  }

  v5 = v4 + 4;
  v6 = strlen(&v4[4]);
  v7 = objc_autoreleasePoolPush();
  v8 = [(AFBBufRef *)self->_br data];
  v9 = &v5[-[v8 bytes]];

  v10 = [(AFBBufRef *)self->_br data];
  v11 = [v10 subdataWithRange:{v9, v6}];

  objc_autoreleasePoolPop(v7);

  return v11;
}

- (NSString)sourceAsDefaults
{
  if ([(TRIFBFastFactorLevels *)self sourceType]!= 3)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:4317 description:{@"Accessed union field TRIFBFastFactorLevels.sourceAsDefaults, but the value stored in the union does not match this type."}];
  }

  v4 = FastFactorLevels::source_as_defaults(self->_ptr);
  if (!v4)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:4319 description:{@"Invalid parameter not satisfying: %@", @"fbs"}];
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

- (const)sourceAsDefaultsCString
{
  if ([(TRIFBFastFactorLevels *)self sourceType]!= 3)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:4335 description:{@"Accessed union field TRIFBFastFactorLevels.sourceAsDefaultsCString, but the value stored in the union does not match this type."}];
  }

  v4 = FastFactorLevels::source_as_defaults(self->_ptr);
  if (!v4)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:4337 description:{@"Invalid parameter not satisfying: %@", @"fbs"}];
  }

  return &v4[4];
}

- (NSData)sourceAsDefaultsData
{
  if ([(TRIFBFastFactorLevels *)self sourceType]!= 3)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:4344 description:{@"Accessed union field TRIFBFastFactorLevels.sourceAsDefaultsData, but the value stored in the union does not match this type."}];
  }

  v4 = FastFactorLevels::source_as_defaults(self->_ptr);
  if (!v4)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:4346 description:{@"Invalid parameter not satisfying: %@", @"fbs"}];
  }

  v5 = v4 + 4;
  v6 = strlen(&v4[4]);
  v7 = objc_autoreleasePoolPush();
  v8 = [(AFBBufRef *)self->_br data];
  v9 = &v5[-[v8 bytes]];

  v10 = [(AFBBufRef *)self->_br data];
  v11 = [v10 subdataWithRange:{v9, v6}];

  objc_autoreleasePoolPop(v7);

  return v11;
}

- (const)namespaceNameAsCString
{
  ptr = self->_ptr;
  v5 = &ptr[-*ptr->var0];
  if (*v5->var0 >= 0xBu && (v6 = *v5[10].var0) != 0)
  {
    v7 = &ptr[v6 + *ptr[v6].var0];
  }

  else
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:4362 description:{@"Invalid parameter not satisfying: %@", @"fbs"}];

    v7 = 0;
  }

  return &v7[4];
}

- (NSData)namespaceNameAsData
{
  ptr = self->_ptr;
  v5 = &ptr[-*ptr->var0];
  if (*v5->var0 >= 0xBu && (v6 = *v5[10].var0) != 0)
  {
    var0 = ptr[v6 + *ptr[v6].var0].var0;
  }

  else
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:4368 description:{@"Invalid parameter not satisfying: %@", @"fbs"}];

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

- (const)ncvsAsCArrayWithCount:(unint64_t *)a3
{
  if (a3)
  {
    *a3 = 0;
  }

  ptr = self->_ptr;
  v4 = &ptr[-*ptr->var0];
  if (*v4->var0 < 0xDu)
  {
    return 0;
  }

  v5 = *v4[12].var0;
  if (!v5)
  {
    return 0;
  }

  v6 = &ptr[v5 + *ptr[v5].var0];
  v7 = *v6->var0;
  if (a3)
  {
    *a3 = v7;
  }

  var0 = v6[4].var0;
  if (v7)
  {
    return var0;
  }

  else
  {
    return &emptyCArrayStorage;
  }
}

- (BOOL)enumerateNcvsUsingBlock:(id)a3
{
  v4 = a3;
  ptr = self->_ptr;
  v6 = &ptr[-*ptr->var0];
  if (*v6->var0 >= 0xDu && (v7 = *v6[12].var0) != 0)
  {
    v8 = &ptr[v7];
    v9 = *ptr[v7].var0;
    if (*ptr[v7 + v9].var0)
    {
      v10 = 0;
      v11 = &ptr[v7 + 4 + v9];
      do
      {
        v12 = objc_autoreleasePoolPush();
        v17 = 0;
        if (v10 >= *v8[v9].var0)
        {
          __assert_rtn("Get", "flatbuffers.h", 275, "i < size()");
        }

        v13 = v12;
        v4[2](v4, *(v11 + 4 * v10), v10, &v17);
        v14 = v17;
        objc_autoreleasePoolPop(v13);
        if (v14)
        {
          break;
        }

        ++v10;
      }

      while (v10 < *v8[v9].var0);
    }

    v15 = 1;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)deepCopyUsingBufferBuilder:(id)a3
{
  v3 = [(TRIFBFastFactorLevels *)self deepCopyUsingBufferBuilder:a3 changes:0];

  return v3;
}

- (id)deepCopyUsingBufferBuilder:(id)a3 changes:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v32 = [MEMORY[0x277CCA890] currentHandler];
    [v32 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:4420 description:{@"Invalid parameter not satisfying: %@", @"bufferBuilder"}];
  }

  v9 = objc_autoreleasePoolPush();
  if (!v8)
  {
LABEL_6:
    v10 = [(TRIFBFastFactorLevels *)self levels];
    if (v10)
    {
      v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v10, "count")}];
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __60__TRIFBFastFactorLevels_deepCopyUsingBufferBuilder_changes___block_invoke;
      v40[3] = &unk_27885E988;
      v12 = v11;
      v41 = v12;
      v13 = v7;
      v42 = v13;
      [v10 enumerateObjectsUsingBlock:v40];
      v14 = [v13 trifbCreateSortedVectorOfFactorLevelWithOffsets:v12];
    }

    else
    {
      v14 = 0;
    }

    if (!v8)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (v8[8] == 1)
  {
    v14 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:*(v8 + 3)];
  }

  else
  {
    if (!v8[8])
    {
      goto LABEL_6;
    }

    v14 = 0;
  }

LABEL_13:
  if (v8[17] == 1)
  {
    v17 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:*(v8 + 5)];
    goto LABEL_26;
  }

  if (v8[17])
  {
    v17 = 0;
    goto LABEL_26;
  }

LABEL_15:
  v15 = [(TRIFBFastFactorLevels *)self sourceType];
  switch(v15)
  {
    case 1:
      v19 = objc_autoreleasePoolPush();
      v17 = [v7 createStringWithCString:{-[TRIFBFastFactorLevels sourceAsTreatmentIdCString](self, "sourceAsTreatmentIdCString")}];
      objc_autoreleasePoolPop(v19);
LABEL_23:
      if (!v8)
      {
        goto LABEL_28;
      }

      goto LABEL_26;
    case 2:
      v18 = objc_autoreleasePoolPush();
      v17 = [v7 createStringWithCString:{-[TRIFBFastFactorLevels sourceAsFactorPackIdCString](self, "sourceAsFactorPackIdCString")}];
      objc_autoreleasePoolPop(v18);
      goto LABEL_23;
    case 3:
      v16 = objc_autoreleasePoolPush();
      v17 = [v7 createStringWithCString:{-[TRIFBFastFactorLevels sourceAsDefaultsCString](self, "sourceAsDefaultsCString")}];
      objc_autoreleasePoolPop(v16);
      goto LABEL_23;
  }

  v17 = 0;
  if (!v8)
  {
    goto LABEL_28;
  }

LABEL_26:
  if (v8[24] == 1)
  {
    v22 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:*(v8 + 7)];
    goto LABEL_34;
  }

  if (v8[24])
  {
    v22 = 0;
    goto LABEL_34;
  }

LABEL_28:
  v20 = objc_autoreleasePoolPush();
  v21 = [(TRIFBFastFactorLevels *)self namespaceNameAsCString];
  if (v21)
  {
    v22 = [v7 createStringWithCString:v21];
  }

  else
  {
    v22 = 0;
  }

  objc_autoreleasePoolPop(v20);
  if (!v8)
  {
    goto LABEL_36;
  }

LABEL_34:
  if (v8[32] == 1)
  {
    v24 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:*(v8 + 9)];
  }

  else
  {
    if (!v8[32])
    {
LABEL_36:
      v23 = [(TRIFBFastFactorLevels *)self ncvs];
      if (v23)
      {
        v24 = [v7 createVectorOfUInt32WithArray:v23];
      }

      else
      {
        v24 = 0;
      }

      goto LABEL_42;
    }

    v24 = 0;
  }

LABEL_42:
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __60__TRIFBFastFactorLevels_deepCopyUsingBufferBuilder_changes___block_invoke_2;
  v33[3] = &unk_27885E9B0;
  v25 = v14;
  v34 = v25;
  v26 = v17;
  v35 = v26;
  v27 = v8;
  v36 = v27;
  v37 = self;
  v28 = v22;
  v38 = v28;
  v39 = v24;
  v29 = v24;
  v30 = [v7 trifbCreateFastFactorLevelsUsingBlock:v33];

  objc_autoreleasePoolPop(v9);

  return v30;
}

void __60__TRIFBFastFactorLevels_deepCopyUsingBufferBuilder_changes___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 deepCopyUsingBufferBuilder:*(a1 + 40)];
  [v2 addObject:?];
}

void __60__TRIFBFastFactorLevels_deepCopyUsingBufferBuilder_changes___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  if (*(a1 + 32))
  {
    [v5 setLevels:?];
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
      v4 = [*(a1 + 56) sourceType];
    }

    switch(v4)
    {
      case 1:
        [v5 setSourceWithTreatmentId:*(a1 + 40)];
        break;
      case 2:
        [v5 setSourceWithFactorPackId:*(a1 + 40)];
        break;
      case 3:
        [v5 setSourceWithDefaults:*(a1 + 40)];
        break;
    }
  }

  if (*(a1 + 64))
  {
    [v5 setNamespaceName:?];
  }

  if (*(a1 + 72))
  {
    [v5 setNcvs:?];
  }
}

- (TRIFBFastFactorLevels)initWithBufRef:(id)a3 cppPointer:(const FastFactorLevels *)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = TRIFBFastFactorLevels;
  v8 = [(TRIFBFastFactorLevels *)&v11 init];
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
  v41 = v13;
  v42 = v14;
  v43 = 0;
  v44 = a5;
  v45 = 0;
  v46 = a6;
  v47 = 0;
  v48 = 1;
  if (v14 >= 0x7FFFFFFF)
  {
    __assert_rtn("Verifier", "flatbuffers.h", 2285, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
  }

  if (v14 < 5)
  {
    goto LABEL_51;
  }

  v15 = *v13;
  if (v15 < 1 || v14 - 1 < v15)
  {
    goto LABEL_51;
  }

  v17 = &v13[v15];
  if (!apple::aiml::flatbuffers2::Verifier::VerifyTableStart(&v41, &v13[v15]) || !apple::aiml::flatbuffers2::Table::VerifyOffsetRequired(v17, &v41, 4u))
  {
    goto LABEL_51;
  }

  v18 = *v17;
  v19 = -v18;
  v20 = (v17 - v18);
  if (*v20 >= 5u)
  {
    v21 = v20[2];
    if (v21)
    {
      if (!apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(&v41, v17 + v21 + *(v17 + v21), 4uLL, 0))
      {
        goto LABEL_51;
      }

      v22 = *v17;
      v19 = -v22;
      v23 = (v17 - v22);
      if (*v23 >= 5u)
      {
        v24 = v23[2];
        if (v24)
        {
          v25 = v17 + v24 + *(v17 + v24);
          if (*v25->var0)
          {
            v26 = 0;
            v27 = v25 + 4;
            while (FactorLevel::Verify(&v27[*v27->var0], &v41))
            {
              ++v26;
              v27 += 4;
              if (v26 >= *v25->var0)
              {
                v19 = -*v17;
                goto LABEL_23;
              }
            }

            goto LABEL_51;
          }
        }
      }
    }
  }

LABEL_23:
  v28 = v17 + v19;
  v29 = *(v17 + v19);
  if (v29 >= 7)
  {
    if (*(v28 + 3))
    {
      v30 = 0;
      if (v42 < 2 || v42 - 1 < (v17 + *(v28 + 3)) - v41)
      {
        goto LABEL_52;
      }
    }
  }

  if (!apple::aiml::flatbuffers2::Table::VerifyOffsetRequired(v17, &v41, 8u))
  {
LABEL_51:
    v30 = 0;
    goto LABEL_52;
  }

  if (v29 >= 9)
  {
    if (*(v28 + 4))
    {
      v31 = v17 + *(v28 + 4) + *(v17 + *(v28 + 4));
LABEL_33:
      if (!*(v28 + 3) || *(v17 + *(v28 + 3)) - 1 > 2 || apple::aiml::flatbuffers2::Verifier::VerifyString(&v41, v31))
      {
        goto LABEL_36;
      }

      goto LABEL_51;
    }

LABEL_32:
    v31 = 0;
    goto LABEL_33;
  }

  if (v29 >= 7)
  {
    goto LABEL_32;
  }

LABEL_36:
  if (!apple::aiml::flatbuffers2::Table::VerifyOffsetRequired(v17, &v41, 0xAu))
  {
    goto LABEL_51;
  }

  v32 = (v17 - *v17);
  if (*v32 >= 0xBu && (v33 = v32[5]) != 0)
  {
    v34 = v17 + v33 + *(v17 + v33);
  }

  else
  {
    v34 = 0;
  }

  if (!apple::aiml::flatbuffers2::Verifier::VerifyString(&v41, v34))
  {
    goto LABEL_51;
  }

  if (!apple::aiml::flatbuffers2::Table::VerifyOffset(v17, &v41, 0xCu))
  {
    goto LABEL_51;
  }

  v35 = (v17 - *v17);
  if (*v35 >= 0xDu)
  {
    v36 = v35[6];
    if (v36)
    {
      if (!apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(&v41, v17 + v36 + *(v17 + v36), 4uLL, 0))
      {
        goto LABEL_51;
      }
    }
  }

  --v43;
  v37 = *v13;
  v38 = [objc_alloc(MEMORY[0x277CED178]) initWithData:v10];
  self = [(TRIFBFastFactorLevels *)self initWithBufRef:v38 cppPointer:&v13[v37]];

  v39 = self;
  if (a4)
  {
    if ([(TRIFBFastFactorLevels *)self verifyUTF8Fields])
    {
      v39 = self;
    }

    else
    {
      v39 = 0;
    }
  }

  v30 = v39;

LABEL_52:
  objc_autoreleasePoolPop(v11);

  return v30;
}

- (unint64_t)hash
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(TRIFBFastFactorLevels *)self levels];
  v5 = [v4 hash];

  v6 = [(TRIFBFastFactorLevels *)self sourceType];
  v7 = [(TRIFBFastFactorLevels *)self namespaceName];
  v8 = [v7 hash];

  v9 = [(TRIFBFastFactorLevels *)self ncvs];
  v10 = [v9 hash] + 37 * (v8 + 37 * (37 * v5 + v6));

  objc_autoreleasePoolPop(v3);
  return v10;
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
      v12 = 0;
LABEL_25:

      goto LABEL_26;
    }

    v7 = objc_autoreleasePoolPush();
    v8 = [(TRIFBFastFactorLevels *)self sourceType];
    if (v8 != [v6 sourceType])
    {
      goto LABEL_21;
    }

    v9 = [(TRIFBFastFactorLevels *)self sourceType];
    switch(v9)
    {
      case 3:
        v10 = [(TRIFBFastFactorLevels *)self sourceAsDefaults];
        v11 = [v6 sourceAsDefaults];
        if (v10 | v11)
        {
          goto LABEL_14;
        }

        break;
      case 2:
        v10 = [(TRIFBFastFactorLevels *)self sourceAsFactorPackId];
        v11 = [v6 sourceAsFactorPackId];
        if (v10 | v11)
        {
          goto LABEL_14;
        }

        break;
      case 1:
        v10 = [(TRIFBFastFactorLevels *)self sourceAsTreatmentId];
        v11 = [v6 sourceAsTreatmentId];
        if (v10 | v11)
        {
LABEL_14:
          v13 = [v10 isEqual:v11];

          if ((v13 & 1) == 0)
          {
            goto LABEL_21;
          }
        }

        break;
    }

    v14 = [(TRIFBFastFactorLevels *)self levels];
    v15 = [v6 levels];
    if (!(v14 | v15) || (v16 = [v14 isEqual:v15], v15, v14, v16))
    {
      v17 = [(TRIFBFastFactorLevels *)self namespaceName];
      v18 = [v6 namespaceName];
      if (!(v17 | v18) || (v19 = [v17 isEqual:v18], v18, v17, v19))
      {
        v20 = [(TRIFBFastFactorLevels *)self ncvs];
        v21 = [v6 ncvs];
        if (v20 | v21)
        {
          v12 = [v20 isEqual:v21];
        }

        else
        {
          v12 = 1;
        }

        goto LABEL_24;
      }
    }

LABEL_21:
    v12 = 0;
LABEL_24:
    objc_autoreleasePoolPop(v7);
    goto LABEL_25;
  }

  v12 = 0;
LABEL_26:

  return v12;
}

@end