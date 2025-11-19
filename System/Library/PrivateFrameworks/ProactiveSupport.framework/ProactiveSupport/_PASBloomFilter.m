@interface _PASBloomFilter
+ (id)bloomFilterWithData:(id)a3;
+ (id)bloomFilterWithPathToFile:(id)a3;
- (BOOL)getWithHashes:(id)a3;
- (_PASBloomFilter)initWithData:(id)a3 numBits:(unsigned int)a4 hashFunctionCode:(unsigned int)a5 numHashFunctions:(int)a6;
- (id)combineHashesWithSeed:(int)a3 hashA:(id)a4 hashB:(id)a5 reuse:(id)a6;
- (id)computeHashesForString:(id)a3 reuse:(id)a4;
- (id)initDummy;
- (id)newHashesArray;
@end

@implementation _PASBloomFilter

- (id)newHashesArray
{
  v3 = [_PASBloomFilterHashArray alloc];
  hashArrayLength = self->_hashArrayLength;

  return [(_PASBloomFilterHashArray *)v3 initWithCapacity:hashArrayLength];
}

- (id)combineHashesWithSeed:(int)a3 hashA:(id)a4 hashB:(id)a5 reuse:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (!v12)
  {
    v12 = [(_PASBloomFilter *)self newHashesArray];
  }

  v13 = [v12 hashes];
  v14 = [v10 hashes];
  v15 = [v11 hashes];
  if (self->_numHashFunctions >= 1)
  {
    v16 = 0;
    do
    {
      v17 = 715827883 * (v16 * v16 - 1) * v16;
      *(v13 + 4 * v16) = *(v14 + 4 * v16) + HIDWORD(v17) + (v17 >> 63) + *(v15 + 4 * v16) * (a3 + v16);
      ++v16;
    }

    while (v16 < self->_numHashFunctions);
  }

  return v12;
}

- (BOOL)getWithHashes:(id)a3
{
  v5 = a3;
  v6 = [a3 hashes];
  v15 = 0;
  v7 = 1;
  if (self->_numHashFunctions >= 1)
  {
    v8 = v6;
    v9 = 0;
    while (1)
    {
      v10 = *(v8 + 4 * v9);
      if (v10 < 0)
      {
        v10 = -v10;
      }

      v11 = v10 % self->_numBits;
      v12 = 1 << (v11 & 7);
      [(NSData *)self->_data getBytes:&v15 range:(v11 >> 3) + 16, 1];
      v13 = (v15 & v12);
      v15 &= v12;
      if (!v13)
      {
        break;
      }

      if (++v9 >= self->_numHashFunctions)
      {
        return 1;
      }
    }

    return 0;
  }

  return v7;
}

- (id)computeHashesForString:(id)a3 reuse:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v14 = 255;
  v9 = _PASRepairString(v6);
  v10 = [v9 UTF8String];
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = &v14;
  }

  v12 = [(_PASBloomFilter *)self _computeHashesWithSeed:1 bytes:v11 length:strlen(v11) reuse:v7];
  objc_autoreleasePoolPop(v8);

  return v12;
}

- (id)initDummy
{
  v6.receiver = self;
  v6.super_class = _PASBloomFilter;
  v2 = [(_PASBloomFilter *)&v6 init];
  v3 = v2;
  if (v2)
  {
    data = v2->_data;
    v2->_data = 0;

    *&v3->_numBits = 0;
    v3->_hashArrayLength = 0;
    v3->_computeHashes = computeHashes_NOOP;
  }

  return v3;
}

- (_PASBloomFilter)initWithData:(id)a3 numBits:(unsigned int)a4 hashFunctionCode:(unsigned int)a5 numHashFunctions:(int)a6
{
  v22 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v19.receiver = self;
  v19.super_class = _PASBloomFilter;
  v12 = [(_PASBloomFilter *)&v19 init];
  v13 = v12;
  if (!v12)
  {
LABEL_10:
    v16 = v13;
    goto LABEL_14;
  }

  objc_storeStrong(&v12->_data, a3);
  v13->_numBits = a4;
  v13->_numHashFunctions = a6;
  if (a6 <= 4)
  {
    v14 = 4;
  }

  else
  {
    v14 = a6;
  }

  v13->_hashArrayLength = v14;
  v15 = computeHashes_MURMUR3_X86_32;
  if (a5 == 1)
  {
LABEL_8:
    v13->_computeHashes = v15;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v21 = a5;
      _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Hash function code: %i", buf, 8u);
    }

    goto LABEL_10;
  }

  if (a5 == 2)
  {
    v15 = computeHashes_MURMUR3_X64_128;
    goto LABEL_8;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v21 = a5;
    _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unsupported hash function code: %i", buf, 8u);
  }

  v16 = 0;
LABEL_14:

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

+ (id)bloomFilterWithPathToFile:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:a1 file:@"_PASBloomFilter.m" lineNumber:207 description:{@"Invalid parameter not satisfying: %@", @"path"}];
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v17 = v5;
    _os_log_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "_PASBloomFilter: loading bloom filter from path '%@'", buf, 0xCu);
  }

  v15 = 0;
  v6 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v5 options:8 error:&v15];
  v7 = v15;
  v8 = v7;
  if (v6)
  {
    v9 = [_PASBloomFilter bloomFilterWithData:v6];
  }

  else
  {
    if ([v7 code] == 2 && (objc_msgSend(v8, "domain"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqualToString:", *MEMORY[0x1E696A798]), v10, v11))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v17 = v5;
        _os_log_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "No bloom filter file at path '%@'", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v17 = v5;
      v18 = 2112;
      v19 = v8;
      _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Could not load bloom filter at path '%@'. Error: %@", buf, 0x16u);
    }

    v9 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)bloomFilterWithData:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:a1 file:@"_PASBloomFilter.m" lineNumber:160 description:{@"Invalid parameter not satisfying: %@", @"data"}];
  }

  v18 = 0uLL;
  [v5 getBytes:&v18 range:{0, 16}];
  v6 = v18;
  if (v18 == 390004919)
  {
    LODWORD(v18) = -1224720617;
    *(&v18 + 4) = vrev32_s8(*(&v18 + 4));
    HIDWORD(v18) = bswap32(HIDWORD(v18));
    v7 = DWORD1(v18);
  }

  else
  {
    if (v18 != -1224720617)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 67109376;
        v20 = v6;
        v21 = 1024;
        v22 = -1224720617;
        v10 = MEMORY[0x1E69E9C10];
        v11 = "Bad header, %i vs. %i.";
        v12 = 14;
LABEL_19:
        _os_log_error_impl(&dword_1A7F47000, v10, OS_LOG_TYPE_ERROR, v11, buf, v12);
        goto LABEL_20;
      }

      goto LABEL_20;
    }

    v7 = DWORD1(v18);
  }

  if ((v7 - 1) >= 2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v20 = v7;
      v10 = MEMORY[0x1E69E9C10];
      v11 = "Unsupported hash function code: %i.";
      goto LABEL_18;
    }

LABEL_20:
    v13 = 0;
    goto LABEL_21;
  }

  v8 = DWORD2(v18);
  if ([v5 length] - 16 != v8)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v20 = DWORD2(v18);
      v10 = MEMORY[0x1E69E9C10];
      v11 = "Unexpected capacity: %i.";
      goto LABEL_18;
    }

    goto LABEL_20;
  }

  v9 = HIDWORD(v18);
  if ((HIDWORD(v18) - 65) <= 0xFFFFFFBF)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v20 = v9;
      v10 = MEMORY[0x1E69E9C10];
      v11 = "Unexpected number of hash functions: %i.";
LABEL_18:
      v12 = 8;
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  v16 = [_PASBloomFilter alloc];
  v13 = [(_PASBloomFilter *)v16 initWithData:v5 numBits:(8 * DWORD2(v18)) hashFunctionCode:DWORD1(v18) numHashFunctions:HIDWORD(v18)];
LABEL_21:

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

@end