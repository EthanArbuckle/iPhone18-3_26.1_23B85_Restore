@interface PLGraphBitset
+ (__CFBitVector)_immutableBitVectorFromRleEncodedData:(id)data;
+ (id)_dataFromRleEncodedData:(id)data;
+ (id)_rleEncodedDataFromBitVector:(__CFBitVector *)vector;
+ (id)_rleEncodedDataFromData:(id)data;
+ (unsigned)_decodeLittleEndianBase128:(const char *)base128 bufferLength:(unint64_t)length bytesRead:(unint64_t *)read;
+ (unsigned)dataFormatFromEncodedData:(id)data;
+ (void)_encodeLittleEndianBase128:(unsigned int)base128 toData:(id)data;
+ (void)_rleEncodeData:(id)data intoData:(id)intoData;
- (BOOL)bitAtIndex:(unint64_t)index error:(id *)error;
- (BOOL)intersectsBitset:(id)bitset;
- (NSArray)indexesWithBitsSet;
- (NSData)encodedData;
- (NSIndexSet)indexSetWithBitsSet;
- (PLGraphBitset)init;
- (PLGraphBitset)initWithBitVectorBuffer:(void *)buffer bitCount:(unint64_t)count;
- (PLGraphBitset)initWithEncodedData:(id)data error:(id *)error;
- (PLGraphBitset)initWithIndexSet:(id)set;
- (__CFBitVector)bitVector;
- (__CFBitVector)mutableBitVector;
- (unint64_t)_pageCount;
- (unint64_t)count;
- (unint64_t)onesCount;
- (unsigned)_pageAtIndex:(int64_t)index;
- (void)_createBitVectorBuffer;
- (void)_enumerateIndexes:(id)indexes;
- (void)_enumeratePages:(id)pages;
- (void)dealloc;
- (void)setBit:(BOOL)bit atIndex:(unint64_t)index;
@end

@implementation PLGraphBitset

- (void)setBit:(BOOL)bit atIndex:(unint64_t)index
{
  bitCopy = bit;
  mutableBitVector = [(PLGraphBitset *)self mutableBitVector];
  if (!mutableBitVector)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLGraphBitset.m" lineNumber:523 description:@"no bitVector set."];
  }

  if ((index + 1) > CFBitVectorGetCount(self->_bitVector))
  {
    CFBitVectorSetCount(mutableBitVector, index + 1);
  }

  CFBitVectorSetBitAtIndex(mutableBitVector, index, bitCopy);
  encodedData = self->_encodedData;
  self->_encodedData = 0;
}

- (BOOL)intersectsBitset:(id)bitset
{
  bitsetCopy = bitset;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  _pageCount = [bitsetCopy _pageCount];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __34__PLGraphBitset_intersectsBitset___block_invoke;
  v8[3] = &unk_1E756B550;
  v11 = _pageCount;
  v6 = bitsetCopy;
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
    bitVector = [(PLGraphBitset *)self bitVector];
    v6.location = 0;
    v6.length = Count;

    return CFBitVectorGetCountOfBit(bitVector, v6, 1u);
  }

  return result;
}

- (unint64_t)count
{
  result = [(PLGraphBitset *)self bitVector];
  if (result)
  {
    bitVector = [(PLGraphBitset *)self bitVector];

    return CFBitVectorGetCount(bitVector);
  }

  return result;
}

- (BOOL)bitAtIndex:(unint64_t)index error:(id *)error
{
  bitVector = [(PLGraphBitset *)self bitVector];
  if (!bitVector)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLGraphBitset.m" lineNumber:445 description:@"no bitVector set."];
  }

  if (CFBitVectorGetCount([(PLGraphBitset *)self bitVector]) > index)
  {
    return CFBitVectorGetBitAtIndex(bitVector, index) != 0;
  }

  if (error)
  {
    v10 = PLErrorCreate();
    *error = v10;
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
      encodedData = [(PLGraphBitset *)self encodedData];
      v7 = [v5 dataFormatFromEncodedData:encodedData];

      if (v7 == 1)
      {
        v8 = objc_opt_class();
        encodedData2 = [(PLGraphBitset *)self encodedData];
        v10 = [v8 _immutableBitVectorFromRleEncodedData:encodedData2];

        if (v10)
        {
          self->_bitVector = CFRetain(v10);
        }
      }

      else
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PLGraphBitset.m" lineNumber:392 description:{@"unsupported bitset data version: %d", v7}];
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

- (PLGraphBitset)initWithIndexSet:(id)set
{
  setCopy = set;
  if (!setCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLGraphBitset.m" lineNumber:345 description:{@"Invalid parameter not satisfying: %@", @"indexSet"}];
  }

  v11.receiver = self;
  v11.super_class = PLGraphBitset;
  v6 = [(PLGraphBitset *)&v11 init];
  if (v6)
  {
    v6->_bitVector = CFBitVectorCreateMutable(*MEMORY[0x1E695E480], [setCopy count]);
    v6->_isMutable = 1;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __34__PLGraphBitset_initWithIndexSet___block_invoke;
    v9[3] = &unk_1E7576338;
    v10 = v6;
    [setCopy enumerateIndexesUsingBlock:v9];
  }

  return v6;
}

- (PLGraphBitset)initWithBitVectorBuffer:(void *)buffer bitCount:(unint64_t)count
{
  if (buffer)
  {
    if (count)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLGraphBitset.m" lineNumber:335 description:{@"Invalid parameter not satisfying: %@", @"buffer"}];

    if (count)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLGraphBitset.m" lineNumber:336 description:@"bad size"];

LABEL_3:
  v13.receiver = self;
  v13.super_class = PLGraphBitset;
  v8 = [(PLGraphBitset *)&v13 init];
  if (v8)
  {
    Default = CFAllocatorGetDefault();
    v8->_bitVector = CFBitVectorCreate(Default, buffer, count);
  }

  return v8;
}

- (PLGraphBitset)initWithEncodedData:(id)data error:(id *)error
{
  dataCopy = data;
  if (!dataCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLGraphBitset.m" lineNumber:312 description:{@"Invalid parameter not satisfying: %@", @"encodedData"}];
  }

  v14.receiver = self;
  v14.super_class = PLGraphBitset;
  v9 = [(PLGraphBitset *)&v14 init];
  if (v9)
  {
    v10 = [objc_opt_class() _immutableBitVectorFromRleEncodedData:dataCopy];
    if (v10)
    {
      v11 = v10;
      objc_storeStrong(&v9->_encodedData, data);
      v9->_bitVector = CFRetain(v11);
    }

    else
    {

      v9 = 0;
      if (error)
      {
        *error = 0;
      }
    }
  }

  return v9;
}

- (void)_enumerateIndexes:(id)indexes
{
  indexesCopy = indexes;
  if (!indexesCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLGraphBitset.m" lineNumber:81 description:{@"Invalid parameter not satisfying: %@", @"handler"}];
  }

  v6 = [(PLGraphBitset *)self count];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __35__PLGraphBitset__enumerateIndexes___block_invoke;
  v9[3] = &unk_1E756B4D8;
  v10 = indexesCopy;
  v11 = v6;
  v9[4] = self;
  v7 = indexesCopy;
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

- (void)_enumeratePages:(id)pages
{
  pagesCopy = pages;
  if (!pagesCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLGraphBitset.m" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"handler"}];
  }

  _createBitVectorBuffer = [(PLGraphBitset *)self _createBitVectorBuffer];
  v9 = 0;
  if ([(PLGraphBitset *)self _pageCount])
  {
    v7 = 0;
    do
    {
      pagesCopy[2](pagesCopy, _createBitVectorBuffer[v7], v7, &v9);
      if (v9)
      {
        break;
      }

      ++v7;
    }

    while ([(PLGraphBitset *)self _pageCount]> v7);
  }

  free(_createBitVectorBuffer);
}

- (unsigned)_pageAtIndex:(int64_t)index
{
  bytes = 0;
  bitVector = [(PLGraphBitset *)self bitVector];
  v7.location = 8 * index;
  v7.length = 8;
  CFBitVectorGetBits(bitVector, v7, &bytes);
  return bytes;
}

- (void)_createBitVectorBuffer
{
  Count = CFBitVectorGetCount([(PLGraphBitset *)self bitVector]);
  v4 = malloc_type_calloc(1uLL, [(PLGraphBitset *)self _pageCount], 0xA8D12D7EuLL);
  bitVector = [(PLGraphBitset *)self bitVector];
  v7.location = 0;
  v7.length = Count;
  CFBitVectorGetBits(bitVector, v7, v4);
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

+ (unsigned)dataFormatFromEncodedData:(id)data
{
  dataCopy = data;
  if ([dataCopy bytes])
  {
    v4 = *[dataCopy bytes];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (__CFBitVector)_immutableBitVectorFromRleEncodedData:(id)data
{
  dataCopy = data;
  if ([dataCopy length] >= 2 && (v5 = objc_msgSend(dataCopy, "bytes"), *v5 == 1))
  {
    v6 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v5 + 1 length:objc_msgSend(dataCopy freeWhenDone:{"length") - 1, 0}];
    v7 = [self _dataFromRleEncodedData:v6];
    v8 = v7;
    if (v7)
    {
      bytes = [v7 bytes];
      v10 = CFBitVectorCreate(*MEMORY[0x1E695E480], bytes, 8 * [v8 length]);
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

+ (id)_rleEncodedDataFromBitVector:(__CFBitVector *)vector
{
  v17 = *MEMORY[0x1E69E9840];
  if (!vector)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLGraphBitset.m" lineNumber:239 description:{@"Invalid parameter not satisfying: %@", @"bitVector"}];
  }

  Count = CFBitVectorGetCount(vector);
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
      CFBitVectorGetBits(vector, v19, v8);
      v10 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v9 length:v7 freeWhenDone:1];
      data = [MEMORY[0x1E695DF88] data];
      buf[0] = 1;
      [data appendBytes:buf length:1];
      [self _rleEncodeData:v10 intoData:data];
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

      data = 0;
    }
  }

  else
  {
    data = 0;
  }

  return data;
}

+ (id)_dataFromRleEncodedData:(id)data
{
  dataCopy = data;
  if (!dataCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLGraphBitset.m" lineNumber:202 description:{@"Invalid parameter not satisfying: %@", @"encodedData"}];
  }

  data = [MEMORY[0x1E695DF88] data];
  bytes = [dataCopy bytes];
  v8 = [dataCopy length];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    do
    {
      v17 = *(bytes + v10);
      if (v17 - 255 > 0xFFFFFF01)
      {
        [data appendBytes:&v17 length:1];
        ++v10;
      }

      else
      {
        v11 = v10 + 1;
        v16 = 0;
        v12 = [self _decodeLittleEndianBase128:bytes + v11 bufferLength:v9 - v11 bytesRead:&v16];
        if (v12)
        {
          v13 = v12;
          do
          {
            [data appendBytes:&v17 length:1];
            --v13;
          }

          while (v13);
        }

        v10 = v16 + v11;
      }
    }

    while (v10 < v9);
  }

  return data;
}

+ (id)_rleEncodedDataFromData:(id)data
{
  v4 = MEMORY[0x1E695DF88];
  dataCopy = data;
  data = [v4 data];
  [self _rleEncodeData:dataCopy intoData:data];

  return data;
}

+ (void)_rleEncodeData:(id)data intoData:(id)intoData
{
  dataCopy = data;
  intoDataCopy = intoData;
  v9 = intoDataCopy;
  if (dataCopy)
  {
    if (intoDataCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLGraphBitset.m" lineNumber:150 description:{@"Invalid parameter not satisfying: %@", @"decodedData"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLGraphBitset.m" lineNumber:151 description:{@"Invalid parameter not satisfying: %@", @"encodedData"}];

LABEL_3:
  if ([dataCopy length])
  {
    bytes = [dataCopy bytes];
    v11 = [dataCopy length];
    data = [MEMORY[0x1E695DF88] data];
    v36 = 0;
    v37 = &v36;
    v38 = 0x2020000000;
    v39 = 1;
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v35 = *bytes;
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
    selfCopy = self;
    v13 = data;
    v23 = v13;
    v14 = _Block_copy(aBlock);
    if (v11 >= 2)
    {
      v15 = v33;
      for (i = 1; i != v11; ++i)
      {
        if (bytes[i] != *(v15 + 24) || (*(v29 + 24) == 1 ? (v17 = i >= v11 - 1) : (v17 = 1), v17))
        {
          v14[2](v14);
          v18 = bytes[i];
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

+ (unsigned)_decodeLittleEndianBase128:(const char *)base128 bufferLength:(unint64_t)length bytesRead:(unint64_t *)read
{
  v5 = 0;
  v6 = 0;
  result = 0;
  lengthCopy = 5;
  if (length < 5)
  {
    lengthCopy = length;
  }

  while (lengthCopy != v5)
  {
    v9 = base128[v5++];
    result |= (v9 & 0x7F) << v6;
    v6 += 7;
    if ((v9 & 0x80) == 0)
    {
      if (!read)
      {
        return result;
      }

      goto LABEL_6;
    }
  }

  v5 = lengthCopy;
  if (read)
  {
LABEL_6:
    *read = v5;
  }

  return result;
}

+ (void)_encodeLittleEndianBase128:(unsigned int)base128 toData:(id)data
{
  dataCopy = data;
  if (!dataCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLGraphBitset.m" lineNumber:106 description:{@"Invalid parameter not satisfying: %@", @"data"}];
  }

  [dataCopy setLength:0];
  do
  {
    v10 = base128 & 0x7F | ((base128 > 0x7F) << 7);
    [dataCopy appendBytes:&v10 length:1];
    v8 = base128 > 0x7F;
    base128 >>= 7;
  }

  while (v8);
}

@end