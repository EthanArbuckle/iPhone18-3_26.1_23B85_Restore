@interface NSArray(MTStride)
- (uint64_t)strideCountForSize:()MTStride;
- (uint64_t)subarrayForStrideIndex:()MTStride withStrideSize:;
- (void)concurrentMapWithStrideSize:()MTStride on:withBlock:;
@end

@implementation NSArray(MTStride)

- (uint64_t)subarrayForStrideIndex:()MTStride withStrideSize:
{
  v7 = [self count];
  v8 = v7;
  if (v7 && a4)
  {
    v9 = a4 * a3;
    if (a4 * a3 >= v7)
    {
      v8 = 0;
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9 + a4;
      if (v9 + a4 >= v7)
      {
        v10 = v7;
      }

      v8 = v10 - v9;
    }
  }

  else
  {
    v9 = 0;
  }

  return [self subarrayWithRange:{v9, v8}];
}

- (uint64_t)strideCountForSize:()MTStride
{
  v4 = [self count];
  if (!a3)
  {
    return 1;
  }

  if (v4 % a3)
  {
    return v4 / a3 + 1;
  }

  return v4 / a3;
}

- (void)concurrentMapWithStrideSize:()MTStride on:withBlock:
{
  v8 = a5;
  v9 = a4;
  v10 = [self strideCountForSize:a3];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__NSArray_MTStride__concurrentMapWithStrideSize_on_withBlock___block_invoke;
  block[3] = &unk_1E856B630;
  v13 = v8;
  v14 = a3;
  block[4] = self;
  v11 = v8;
  dispatch_apply(v10, v9, block);
}

@end