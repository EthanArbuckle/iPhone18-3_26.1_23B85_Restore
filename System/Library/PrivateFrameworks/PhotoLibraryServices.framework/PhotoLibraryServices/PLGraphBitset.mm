@interface PLGraphBitset
+ (__CFBitVector)_immutableBitVectorFromRleEncodedData:(id)a3;
+ (id)_dataFromRleEncodedData:(id)a3;
+ (id)_rleEncodedDataFromBitVector:(__CFBitVector *)a3;
+ (id)_rleEncodedDataFromData:(id)a3;
+ (unsigned)_decodeLittleEndianBase128:(const char *)a3 bufferLength:(unint64_t)a4 bytesRead:(unint64_t *)a5;
+ (unsigned)dataFormatFromEncodedData:(id)a3;
+ (void)_encodeLittleEndianBase128:(unsigned int)a3 toData:(id)a4;
+ (void)_rleEncodeData:(id)a3 intoData:(id)a4;
- (BOOL)bitAtIndex:(unint64_t)a3 error:(id *)a4;
- (BOOL)intersectsBitset:(id)a3;
- (NSArray)indexesWithBitsSet;
- (NSData)encodedData;
- (NSIndexSet)indexSetWithBitsSet;
- (PLGraphBitset)init;
- (PLGraphBitset)initWithBitVectorBuffer:(void *)a3 bitCount:(unint64_t)a4;
- (PLGraphBitset)initWithEncodedData:(id)a3 error:(id *)a4;
- (PLGraphBitset)initWithIndexSet:(id)a3;
- (__CFBitVector)bitVector;
- (__CFBitVector)mutableBitVector;
- (unint64_t)_pageCount;
- (unint64_t)count;
- (unint64_t)onesCount;
- (unsigned)_pageAtIndex:(int64_t)a3;
- (void)_createBitVectorBuffer;
- (void)_enumerateIndexes:(id)a3;
- (void)_enumeratePages:(id)a3;
- (void)dealloc;
- (void)setBit:(BOOL)a3 atIndex:(unint64_t)a4;
@end

@implementation PLGraphBitset

- (void)setBit:(BOOL)a3 atIndex:(unint64_t)a4
{
  v5 = a3;
  v8 = [(PLGraphBitset *)self mutableBitVector];
  if (!v8)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PLGraphBitset.m" lineNumber:523 description:@"no bitVector set."];
  }

  if ((a4 + 1) > CFBitVectorGetCount(self->_bitVector))
  {
    CFBitVectorSetCount(v8, a4 + 1);
  }

  CFBitVectorSetBitAtIndex(v8, a4, v5);
  encodedData = self->_encodedData;
  self->_encodedData = 0;
}

- (BOOL)intersectsBitset:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v5 = [v4 _pageCount];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __34__PLGraphBitset_intersectsBitset___block_invoke;
  v8[3] = &unk_1E756B550;
  v11 = v5;
  v6 = v4;
  v9 = v6;
  v10 = &v12;
  [(PLGraphBitset *)self _enumeratePages:v8];
  LOBYTE(self) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return self;
}

uint64_t __34__PLGraphBitset_intersectsBitset___block_invoke(uint64_t result, int a2, unint64_t a3, _BYTE *a4)
{
  if (*(result + 48) > a3)
  {
    v6 = result;
    result = [*(result + 32) _pageAtIndex:?];
    if ((result & a2) == 0)
    {
      return result;
    }

    *(*(*(v6 + 40) + 8) + 24) = 1;
  }

  *a4 = 1;
  return result;
}

- (NSIndexSet)indexSetWithBitsSet
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__PLGraphBitset_indexSetWithBitsSet__block_invoke;
  v6[3] = &unk_1E756B528;
  v4 = v3;
  v7 = v4;
  [(PLGraphBitset *)self _enumerateIndexes:v6];

  return v4;
}

- (NSArray)indexesWithBitsSet
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__PLGraphBitset_indexesWithBitsSet__block_invoke;
  v6[3] = &unk_1E756B528;
  v4 = v3;
  v7 = v4;
  [(PLGraphBitset *)self _enumerateIndexes:v6];

  return v4;
}

void __35__PLGraphBitset_indexesWithBitsSet__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithLong:a2];
  [v2 addObject:v3];
}

- (unint64_t)onesCount
{
  result = [(PLGraphBitset *)self bitVector];
  if (result)
  {
    Count = CFBitVectorGetCount([(PLGraphBitset *)self bitVector]);
    v5 = [(PLGraphBitset *)self bitVector];
    v6.location = 0;
    v6.length = Count;

    return CFBitVectorGetCountOfBit(v5, v6, 1u);
  }

  return result;
}

- (unint64_t)count
{
  result = [(PLGraphBitset *)self bitVector];
  if (result)
  {
    v4 = [(PLGraphBitset *)self bitVector];

    return CFBitVectorGetCount(v4);
  }

  return result;
}

- (BOOL)bitAtIndex:(unint64_t)a3 error:(id *)a4
{
  v8 = [(PLGraphBitset *)self bitVector];
  if (!v8)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PLGraphBitset.m" lineNumber:445 description:@"no bitVector set."];
  }

  if (CFBitVectorGetCount([(PLGraphBitset *)self bitVector]) > a3)
  {
    return CFBitVectorGetBitAtIndex(v8, a3) != 0;
  }

  if (a4)
  {
    v10 = PLErrorCreate();
    *a4 = v10;
  }

  return 0;
}

- (__CFBitVector)mutableBitVector
{
  if (![(PLGraphBitset *)self bitVector])
  {
    Mutable = CFBitVectorCreateMutable(*MEMORY[0x1E695E480], 0);
    self->_bitVector = Mutable;
    p_isMutable = &self->_isMutable;
    goto LABEL_5;
  }

  p_isMutable = &self->_isMutable;
  Mutable = self->_bitVector;
  if (!self->_isMutable)
  {
    Count = CFBitVectorGetCount(self->_bitVector);
    Mutable = CFBitVectorCreateMutableCopy(*MEMORY[0x1E695E480], Count, self->_bitVector);
    CFRelease(self->_bitVector);
    self->_bitVector = Mutable;
LABEL_5:
    *p_isMutable = 1;
  }

  return Mutable;
}

- (__CFBitVector)bitVector
{
  if (!self->_bitVector)
  {
    if (self->_encodedData)
    {
      v5 = objc_opt_class();
      v6 = [(PLGraphBitset *)self encodedData];
      v7 = [v5 dataFormatFromEncodedData:v6];

      if (v7 == 1)
      {
        v8 = objc_opt_class();
        v9 = [(PLGraphBitset *)self encodedData];
        v10 = [v8 _immutableBitVectorFromRleEncodedData:v9];

        if (v10)
        {
          self->_bitVector = CFRetain(v10);
        }
      }

      else
      {
        v11 = [MEMORY[0x1E696AAA8] currentHandler];
        [v11 handleFailureInMethod:a2 object:self file:@"PLGraphBitset.m" lineNumber:392 description:{@"unsupported bitset data version: %d", v7}];
      }
    }

    else
    {
      self->_bitVector = CFBitVectorCreateMutable(*MEMORY[0x1E695E480], 0);
      self->_isMutable = 1;
    }
  }

  return self->_bitVector;
}

- (NSData)encodedData
{
  if (!self->_encodedData && [(PLGraphBitset *)self bitVector])
  {
    v3 = [objc_opt_class() _rleEncodedDataFromBitVector:self->_bitVector];
    encodedData = self->_encodedData;
    self->_encodedData = v3;
  }

  v5 = self->_encodedData;

  return v5;
}

- (void)dealloc
{
  bitVector = self->_bitVector;
  if (bitVector)
  {
    CFRelease(bitVector);
  }

  v4.receiver = self;
  v4.super_class = PLGraphBitset;
  [(PLGraphBitset *)&v4 dealloc];
}

- (PLGraphBitset)init
{
  v3.receiver = self;
  v3.super_class = PLGraphBitset;
  return [(PLGraphBitset *)&v3 init];
}

- (PLGraphBitset)initWithIndexSet:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PLGraphBitset.m" lineNumber:345 description:{@"Invalid parameter not satisfying: %@", @"indexSet"}];
  }

  v11.receiver = self;
  v11.super_class = PLGraphBitset;
  v6 = [(PLGraphBitset *)&v11 init];
  if (v6)
  {
    v6->_bitVector = CFBitVectorCreateMutable(*MEMORY[0x1E695E480], [v5 count]);
    v6->_isMutable = 1;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __34__PLGraphBitset_initWithIndexSet___block_invoke;
    v9[3] = &unk_1E7576338;
    v10 = v6;
    [v5 enumerateIndexesUsingBlock:v9];
  }

  return v6;
}

- (PLGraphBitset)initWithBitVectorBuffer:(void *)a3 bitCount:(unint64_t)a4
{
  if (a3)
  {
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PLGraphBitset.m" lineNumber:335 description:{@"Invalid parameter not satisfying: %@", @"buffer"}];

    if (a4)
    {
      goto LABEL_3;
    }
  }

  v12 = [MEMORY[0x1E696AAA8] currentHandler];
  [v12 handleFailureInMethod:a2 object:self file:@"PLGraphBitset.m" lineNumber:336 description:@"bad size"];

LABEL_3:
  v13.receiver = self;
  v13.super_class = PLGraphBitset;
  v8 = [(PLGraphBitset *)&v13 init];
  if (v8)
  {
    Default = CFAllocatorGetDefault();
    v8->_bitVector = CFBitVectorCreate(Default, a3, a4);
  }

  return v8;
}

- (PLGraphBitset)initWithEncodedData:(id)a3 error:(id *)a4
{
  v8 = a3;
  if (!v8)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PLGraphBitset.m" lineNumber:312 description:{@"Invalid parameter not satisfying: %@", @"encodedData"}];
  }

  v14.receiver = self;
  v14.super_class = PLGraphBitset;
  v9 = [(PLGraphBitset *)&v14 init];
  if (v9)
  {
    v10 = [objc_opt_class() _immutableBitVectorFromRleEncodedData:v8];
    if (v10)
    {
      v11 = v10;
      objc_storeStrong(&v9->_encodedData, a3);
      v9->_bitVector = CFRetain(v11);
    }

    else
    {

      v9 = 0;
      if (a4)
      {
        *a4 = 0;
      }
    }
  }

  return v9;
}

- (void)_enumerateIndexes:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PLGraphBitset.m" lineNumber:81 description:{@"Invalid parameter not satisfying: %@", @"handler"}];
  }

  v6 = [(PLGraphBitset *)self count];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __35__PLGraphBitset__enumerateIndexes___block_invoke;
  v9[3] = &unk_1E756B4D8;
  v10 = v5;
  v11 = v6;
  v9[4] = self;
  v7 = v5;
  [(PLGraphBitset *)self _enumeratePages:v9];
}

uint64_t __35__PLGraphBitset__enumerateIndexes___block_invoke(uint64_t result, int a2, uint64_t a3, _BYTE *a4)
{
  if (a2)
  {
    v5 = result;
    v6 = 8 * a3;
    v7 = 8;
    do
    {
      if (v6 > *(v5 + 48))
      {
        *a4 = 1;
      }

      result = CFBitVectorGetBitAtIndex([*(v5 + 32) bitVector], v6);
      if (result)
      {
        result = (*(*(v5 + 40) + 16))();
      }

      ++v6;
      --v7;
    }

    while (v7);
  }

  return result;
}

- (void)_enumeratePages:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PLGraphBitset.m" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"handler"}];
  }

  v6 = [(PLGraphBitset *)self _createBitVectorBuffer];
  v9 = 0;
  if ([(PLGraphBitset *)self _pageCount])
  {
    v7 = 0;
    do
    {
      v5[2](v5, v6[v7], v7, &v9);
      if (v9)
      {
        break;
      }

      ++v7;
    }

    while ([(PLGraphBitset *)self _pageCount]> v7);
  }

  free(v6);
}

- (unsigned)_pageAtIndex:(int64_t)a3
{
  bytes = 0;
  v4 = [(PLGraphBitset *)self bitVector];
  v7.location = 8 * a3;
  v7.length = 8;
  CFBitVectorGetBits(v4, v7, &bytes);
  return bytes;
}

- (void)_createBitVectorBuffer
{
  Count = CFBitVectorGetCount([(PLGraphBitset *)self bitVector]);
  v4 = malloc_type_calloc(1uLL, [(PLGraphBitset *)self _pageCount], 0xA8D12D7EuLL);
  v5 = [(PLGraphBitset *)self bitVector];
  v7.location = 0;
  v7.length = Count;
  CFBitVectorGetBits(v5, v7, v4);
  return v4;
}

- (unint64_t)_pageCount
{
  Count = CFBitVectorGetCount([(PLGraphBitset *)self bitVector]);
  if ((Count & 7) != 0)
  {
    return Count / 8 + 1;
  }

  else
  {
    return Count / 8;
  }
}

+ (unsigned)dataFormatFromEncodedData:(id)a3
{
  v3 = a3;
  if ([v3 bytes])
  {
    v4 = *[v3 bytes];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (__CFBitVector)_immutableBitVectorFromRleEncodedData:(id)a3
{
  v4 = a3;
  if ([v4 length] >= 2 && (v5 = objc_msgSend(v4, "bytes"), *v5 == 1))
  {
    v6 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v5 + 1 length:objc_msgSend(v4 freeWhenDone:{"length") - 1, 0}];
    v7 = [a1 _dataFromRleEncodedData:v6];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 bytes];
      v10 = CFBitVectorCreate(*MEMORY[0x1E695E480], v9, 8 * [v8 length]);
      v11 = CFAutorelease(v10);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)_rleEncodedDataFromBitVector:(__CFBitVector *)a3
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:a1 file:@"PLGraphBitset.m" lineNumber:239 description:{@"Invalid parameter not satisfying: %@", @"bitVector"}];
  }

  Count = CFBitVectorGetCount(a3);
  v6 = Count;
  if (Count)
  {
    if ((Count & 7) != 0)
    {
      v7 = (Count >> 3) + 1;
    }

    else
    {
      v7 = Count >> 3;
    }

    v8 = malloc_type_calloc(1uLL, v7, 0xF4DDAA23uLL);
    if (v8)
    {
      v9 = v8;
      v19.length = v6;
      v19.location = 0;
      CFBitVectorGetBits(a3, v19, v8);
      v10 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v9 length:v7 freeWhenDone:1];
      v11 = [MEMORY[0x1E695DF88] data];
      buf[0] = 1;
      [v11 appendBytes:buf length:1];
      [a1 _rleEncodeData:v10 intoData:v11];
    }

    else
    {
      v10 = PLBackendGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v16 = v7;
        _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Failed to allocate bitset buffer of byte size: %ld", buf, 0xCu);
      }

      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)_dataFromRleEncodedData:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"PLGraphBitset.m" lineNumber:202 description:{@"Invalid parameter not satisfying: %@", @"encodedData"}];
  }

  v6 = [MEMORY[0x1E695DF88] data];
  v7 = [v5 bytes];
  v8 = [v5 length];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    do
    {
      v17 = *(v7 + v10);
      if (v17 - 255 > 0xFFFFFF01)
      {
        [v6 appendBytes:&v17 length:1];
        ++v10;
      }

      else
      {
        v11 = v10 + 1;
        v16 = 0;
        v12 = [a1 _decodeLittleEndianBase128:v7 + v11 bufferLength:v9 - v11 bytesRead:&v16];
        if (v12)
        {
          v13 = v12;
          do
          {
            [v6 appendBytes:&v17 length:1];
            --v13;
          }

          while (v13);
        }

        v10 = v16 + v11;
      }
    }

    while (v10 < v9);
  }

  return v6;
}

+ (id)_rleEncodedDataFromData:(id)a3
{
  v4 = MEMORY[0x1E695DF88];
  v5 = a3;
  v6 = [v4 data];
  [a1 _rleEncodeData:v5 intoData:v6];

  return v6;
}

+ (void)_rleEncodeData:(id)a3 intoData:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:a1 file:@"PLGraphBitset.m" lineNumber:150 description:{@"Invalid parameter not satisfying: %@", @"decodedData"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v20 = [MEMORY[0x1E696AAA8] currentHandler];
  [v20 handleFailureInMethod:a2 object:a1 file:@"PLGraphBitset.m" lineNumber:151 description:{@"Invalid parameter not satisfying: %@", @"encodedData"}];

LABEL_3:
  if ([v7 length])
  {
    v10 = [v7 bytes];
    v11 = [v7 length];
    v12 = [MEMORY[0x1E695DF88] data];
    v36 = 0;
    v37 = &v36;
    v38 = 0x2020000000;
    v39 = 1;
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v35 = *v10;
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = v35 - 255 < 0xFFFFFF02;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __41__PLGraphBitset__rleEncodeData_intoData___block_invoke;
    aBlock[3] = &unk_1E756B500;
    v24 = &v28;
    v22 = v9;
    v25 = &v32;
    v26 = &v36;
    v27 = a1;
    v13 = v12;
    v23 = v13;
    v14 = _Block_copy(aBlock);
    if (v11 >= 2)
    {
      v15 = v33;
      for (i = 1; i != v11; ++i)
      {
        if (v10[i] != *(v15 + 24) || (*(v29 + 24) == 1 ? (v17 = i >= v11 - 1) : (v17 = 1), v17))
        {
          v14[2](v14);
          v18 = v10[i];
          v15 = v33;
          *(v33 + 24) = v18;
          *(v29 + 24) = (v18 - 255) < 0xFFFFFF02;
          *(v37 + 6) = 1;
        }

        else
        {
          ++*(v37 + 6);
        }
      }
    }

    v14[2](v14);

    _Block_object_dispose(&v28, 8);
    _Block_object_dispose(&v32, 8);
    _Block_object_dispose(&v36, 8);
  }
}

uint64_t __41__PLGraphBitset__rleEncodeData_intoData___block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 48) + 8) + 24);
  result = [*(a1 + 32) appendBytes:*(*(a1 + 56) + 8) + 24 length:1];
  if (v2 == 1)
  {
    [*(a1 + 72) _encodeLittleEndianBase128:*(*(*(a1 + 64) + 8) + 24) toData:*(a1 + 40)];
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v4 appendData:v5];
  }

  return result;
}

+ (unsigned)_decodeLittleEndianBase128:(const char *)a3 bufferLength:(unint64_t)a4 bytesRead:(unint64_t *)a5
{
  v5 = 0;
  v6 = 0;
  result = 0;
  v8 = 5;
  if (a4 < 5)
  {
    v8 = a4;
  }

  while (v8 != v5)
  {
    v9 = a3[v5++];
    result |= (v9 & 0x7F) << v6;
    v6 += 7;
    if ((v9 & 0x80) == 0)
    {
      if (!a5)
      {
        return result;
      }

      goto LABEL_6;
    }
  }

  v5 = v8;
  if (a5)
  {
LABEL_6:
    *a5 = v5;
  }

  return result;
}

+ (void)_encodeLittleEndianBase128:(unsigned int)a3 toData:(id)a4
{
  v7 = a4;
  if (!v7)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:a1 file:@"PLGraphBitset.m" lineNumber:106 description:{@"Invalid parameter not satisfying: %@", @"data"}];
  }

  [v7 setLength:0];
  do
  {
    v10 = a3 & 0x7F | ((a3 > 0x7F) << 7);
    [v7 appendBytes:&v10 length:1];
    v8 = a3 > 0x7F;
    a3 >>= 7;
  }

  while (v8);
}

@end