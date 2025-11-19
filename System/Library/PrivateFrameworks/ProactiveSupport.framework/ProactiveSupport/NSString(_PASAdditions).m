@interface NSString(_PASAdditions)
+ (__CFString)_pas_proxyStringByConcatenatingStrings:()_PASAdditions;
+ (id)_pas_stringWithConsumedAllocaDescrNoCopy:()_PASAdditions bufferSize:encoding:nullTerminated:isExternalRepresentation:;
- (__CFString)_pas_stringBackedByUTF8CString;
- (const)_pas_fastUTF8StringPtrWithOptions:()_PASAdditions encodedLength:;
- (id)_pas_proxyArrayOfSubstringsWithRanges:()_PASAdditions;
- (uint64_t)_pas_retainsConmingledBackingStore;
- (void)_pas_setRetainsConmingledBackingStore:()_PASAdditions;
@end

@implementation NSString(_PASAdditions)

- (__CFString)_pas_stringBackedByUTF8CString
{
  v24 = *MEMORY[0x1E69E9840];
  if (objc_opt_respondsToSelector())
  {
    v2 = [(__CFString *)a1 _pas_overrideStringBackedByUTF8CString];
LABEL_5:
    v3 = v2;
    goto LABEL_6;
  }

  if (CFStringGetCStringPtr(a1, 0x8000100u))
  {
LABEL_4:
    v2 = a1;
    goto LABEL_5;
  }

  v6 = [(__CFString *)a1 length];
  if (v6)
  {
    v7 = v6;
    v8 = [(__CFString *)a1 lengthOfBytesUsingEncoding:4];
    if (!v8)
    {
      goto LABEL_4;
    }

    v9 = v8;
    memptr = 0;
    v23 = 0;
    if ((v8 + 4) > 0x400)
    {
      v19 = malloc_type_posix_memalign(&memptr, 8uLL, v8 + 1, 0x4A0A0270uLL);
      LOBYTE(v23) = 0;
      if (v19)
      {
        v20 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:@"malloc failed" userInfo:0];
        objc_exception_throw(v20);
      }

      v10 = memptr;
    }

    else
    {
      v10 = &v21 - ((v8 + 19) & 0xFFFFFFFFFFFFFFF0);
      bzero(v10, v8 + 4);
      memptr = v10;
      LOBYTE(v23) = 1;
    }

    v11 = v23;
    [(__CFString *)a1 getCString:v10 maxLength:v9 + 1 encoding:4];
    if (v9 == v7)
    {
      if (strnlen(v10, v7) < v7)
      {
        if ((v11 & 1) == 0)
        {
          free(v10);
        }

        goto LABEL_4;
      }

      v15 = objc_autoreleasePoolPush();
      v16 = [MEMORY[0x1E696AEC0] _pas_stringWithConsumedAllocaDescrNoCopy:v10 bufferSize:v11 encoding:v9 + 1 nullTerminated:1 isExternalRepresentation:{1, 0}];
      if (!v16)
      {
        __assert_rtn("[NSString(_PASAdditions) _pas_stringBackedByUTF8CString]", "NSString+_PASAdditions.m", 1044, "result");
      }

      v3 = v16;
      objc_autoreleasePoolPop(v15);
    }

    else
    {
      v12 = objc_alloc(MEMORY[0x1E695DEF0]);
      v13 = v9 + 1;
      if (v11)
      {
        v14 = [v12 initWithBytes:v10 length:v13];
      }

      else
      {
        v14 = [v12 initWithBytesNoCopy:v10 length:v13 freeWhenDone:1];
      }

      v17 = v14;
      v18 = [(NSString *)MEMORY[0x1E696AEC0] _pas_stringWithDataNoCopy:v14 encoding:4 nullTerminated:1 isExternalRepresentation:0 utf8StringThreshold:1uLL];
      if (!v18)
      {
        __assert_rtn("[NSString(_PASAdditions) _pas_stringBackedByUTF8CString]", "NSString+_PASAdditions.m", 1060, "result");
      }

      v3 = v18;
    }
  }

  else
  {
    v3 = &stru_1F1B24B60;
  }

LABEL_6:
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (const)_pas_fastUTF8StringPtrWithOptions:()_PASAdditions encodedLength:
{
  if (objc_opt_respondsToSelector())
  {

    return [a1 _pas_overrideFastUTF8StringPtrWithOptions:a3 encodedLength:a4];
  }

  else
  {
    v8 = [a1 _fastCStringContents:a3 & 1];
    if (v8)
    {
      v9 = v8;
      if (a4)
      {
        *a4 = [a1 length];
      }
    }

    else if ([a1 length])
    {
      return 0;
    }

    else
    {
      if (a4)
      {
        *a4 = 0;
      }

      return "";
    }

    return v9;
  }
}

- (uint64_t)_pas_retainsConmingledBackingStore
{
  v1 = objc_getAssociatedObject(a1, sel__pas_setRetainsConmingledBackingStore_);
  v2 = [v1 BOOLValue];

  return v2;
}

- (void)_pas_setRetainsConmingledBackingStore:()_PASAdditions
{
  if (malloc_size(a1))
  {
    if (a3)
    {
      v5 = *MEMORY[0x1E695E4D0];
    }

    else
    {
      v5 = 0;
    }

    objc_setAssociatedObject(a1, sel__pas_setRetainsConmingledBackingStore_, v5, 1);
  }
}

- (id)_pas_proxyArrayOfSubstringsWithRanges:()_PASAdditions
{
  v4 = a3;
  v5 = a1;
  v6 = MEMORY[0x1E695DEC8];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__NSString__PASAdditions___pas_proxyArrayOfSubstringsWithRanges___block_invoke;
  v13[3] = &unk_1E77F1CD0;
  v14 = v5;
  v15 = v4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65__NSString__PASAdditions___pas_proxyArrayOfSubstringsWithRanges___block_invoke_2;
  v11[3] = &unk_1E77F1CF8;
  v12 = v15;
  v7 = v15;
  v8 = v5;
  v9 = [v6 _pas_proxyArrayUsingObjectAtIndexBlock:v13 andCountBlock:v11];

  return v9;
}

+ (__CFString)_pas_proxyStringByConcatenatingStrings:()_PASAdditions
{
  v3 = a3;
  objc_opt_self();
  v4 = [v3 _pas_mappedArrayWithTransform:&__block_literal_global_1773];

  if ([v4 count])
  {
    if ([v4 count] == 1)
    {
      v5 = [v4 objectAtIndexedSubscript:0];
    }

    else
    {
      v5 = [[_PASProxyConcatenatedString alloc] _initWithComponents:v4];
    }

    v6 = v5;
  }

  else
  {
    v6 = &stru_1F1B24B60;
  }

  return v6;
}

+ (id)_pas_stringWithConsumedAllocaDescrNoCopy:()_PASAdditions bufferSize:encoding:nullTerminated:isExternalRepresentation:
{
  v9 = a5;
  if (a4)
  {
    if (a7)
    {
      if (!a5)
      {
        v17 = encoding;
        v16 = [MEMORY[0x1E696AAA8] currentHandler];
        [v16 handleFailureInMethod:a2 object:a1 file:@"NSString+_PASAdditions.m" lineNumber:933 description:{@"Invalid parameter not satisfying: %@", @"bufferSize > 0"}];

        encoding = v17;
      }

      --v9;
    }

    v11 = CFStringConvertNSStringEncodingToEncoding(encoding);
    v12 = CFStringCreateWithBytes(0, a3, v9, v11, a8);
  }

  else
  {
    v12 = [(NSString *)a1 _pas_foundationStringNoCopyWithBufferStart:a3 bufferEnd:&a3[a5] encoding:encoding nullTerminated:a7 isExternalRepresentation:a8 allocator:*MEMORY[0x1E695E488]];
  }

  return v12;
}

@end