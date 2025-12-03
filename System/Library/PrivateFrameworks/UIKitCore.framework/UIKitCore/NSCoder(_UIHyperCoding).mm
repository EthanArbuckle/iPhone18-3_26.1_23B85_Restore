@interface NSCoder(_UIHyperCoding)
- (id)_ui_decodeNSUIntegerVectorForKey:()_UIHyperCoding returnedCount:;
- (id)_ui_decodeVectorForKey:()_UIHyperCoding returnedCount:;
- (uint64_t)_ui_encodeNSUIntegerVector:()_UIHyperCoding count:forKey:;
- (uint64_t)_ui_encodeVector:()_UIHyperCoding count:forKey:;
@end

@implementation NSCoder(_UIHyperCoding)

- (uint64_t)_ui_encodeVector:()_UIHyperCoding count:forKey:
{
  v9[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1EEE9AC00](self);
  if (v3)
  {
    v6 = (v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    do
    {
      v7 = *v2++;
      *v6++ = bswap64(v7);
      --v3;
    }

    while (v3);
  }

  return [v1 encodeBytes:v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) length:v4 forKey:v5];
}

- (id)_ui_decodeVectorForKey:()_UIHyperCoding returnedCount:
{
  v14 = 0;
  v7 = [self decodeBytesForKey:a3 returnedLength:&v14];
  v8 = v14;
  if ((v14 & 7) != 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIHyperBase.m" lineNumber:353 description:{@"length (%lu) must be a multiple of the size of CFSwappedFloat64 (%lu)", v14, 8}];

    v8 = v14;
  }

  v9 = v8 >> 3;
  *a4 = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__NSCoder__UIHyperCoding___ui_decodeVectorForKey_returnedCount___block_invoke;
  aBlock[3] = &__block_descriptor_48_e9_v16__0_d8l;
  aBlock[4] = v9;
  aBlock[5] = v7;
  v10 = _Block_copy(aBlock);

  return v10;
}

- (uint64_t)_ui_encodeNSUIntegerVector:()_UIHyperCoding count:forKey:
{
  v12[1] = *MEMORY[0x1E69E9840];
  v7 = 8 * a4;
  MEMORY[0x1EEE9AC00](self);
  v9 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v10)
  {
    memcpy(v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v8, v7);
  }

  else
  {
    v7 = 0;
  }

  return [self encodeBytes:v9 length:v7 forKey:a5];
}

- (id)_ui_decodeNSUIntegerVectorForKey:()_UIHyperCoding returnedCount:
{
  v14 = 0;
  v7 = [self decodeBytesForKey:a3 returnedLength:&v14];
  v8 = v14;
  if ((v14 & 7) != 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIHyperBase.m" lineNumber:376 description:{@"length (%lu) must be a multiple of the size of uint64_t (%lu)", v14, 8}];

    v8 = v14;
  }

  v9 = v8 >> 3;
  *a4 = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__NSCoder__UIHyperCoding___ui_decodeNSUIntegerVectorForKey_returnedCount___block_invoke;
  aBlock[3] = &__block_descriptor_48_e9_v16__0_Q8l;
  aBlock[4] = v9;
  aBlock[5] = v7;
  v10 = _Block_copy(aBlock);

  return v10;
}

@end