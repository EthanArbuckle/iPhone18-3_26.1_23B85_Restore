@interface _PASProxyConcatenatedString
- (__CFString)_substringWithRange:(unint64_t)a3;
- (id)_createSubstringWithRange:(_NSRange)a3;
- (uint64_t)_locationOfStringIndex:(uint64_t)a1;
- (uint64_t)_validateRange:(uint64_t)a3;
- (unsigned)characterAtIndex:(unint64_t)a3;
- (void)_initWithComponents:(void *)a1;
- (void)dealloc;
- (void)getCharacters:(unsigned __int16 *)a3 range:(_NSRange)a4;
@end

@implementation _PASProxyConcatenatedString

- (__CFString)_substringWithRange:(unint64_t)a3
{
  v49 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = a3;
    [(_PASProxyConcatenatedString *)a1 _validateRange:a2, a3];
    if (!a3)
    {
      v7 = &stru_1F1B24B60;
      goto LABEL_33;
    }

    if (!a2 && a3 == *(a1 + 24))
    {
      v7 = a1;
      goto LABEL_33;
    }

    v8 = [(_PASProxyConcatenatedString *)a1 _locationOfStringIndex:a2];
    v10 = v9;
    v11 = [*(a1 + 8) objectAtIndexedSubscript:v8];
    v12 = [v11 length];
    v13 = v12 - v10;
    v14 = a3 - (v12 - v10);
    if (a3 <= v12 - v10)
    {
      if (v10 || a3 != v12)
      {
        v27 = objc_autoreleasePoolPush();
        v7 = [v11 substringWithRange:{v10, v6}];
        objc_autoreleasePoolPop(v27);
      }

      else
      {
        v7 = v11;
      }
    }

    else
    {
      v45 = v11;
      v15 = [*(a1 + 8) count];
      v16 = v15;
      if (v10 && v8 < v15 - 1)
      {
        v44 = v14;
        v17 = [*(a1 + 8) objectAtIndexedSubscript:v8 + 1];
        if ([v17 length] + v13 > a3)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v11 = v45;
              v30 = [v45 _fastCStringContents:0];
              v31 = v17;
              if (v30 && (v32 = v30, (v33 = [v17 _fastCStringContents:0]) != 0))
              {
                v34 = v33;
                v35 = objc_autoreleasePoolPush();
                v43 = v35;
                v36 = a3 + 1;
                memptr = 0;
                v48 = 0;
                if (a3 > 0x7F)
                {
                  v41 = malloc_type_posix_memalign(&memptr, 8uLL, a3 + 1, 0x7FA429uLL);
                  LOBYTE(v48) = 0;
                  if (v41)
                  {
                    v42 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:@"malloc failed" userInfo:0];
                    objc_exception_throw(v42);
                  }

                  v37 = memptr;
                }

                else
                {
                  MEMORY[0x1EEE9AC00](v35);
                  v37 = &v43 - ((a3 + 16) & 0xFFFFFFFFFFFFFFF0);
                  bzero(&v43 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0), v36);
                  memptr = v37;
                  LOBYTE(v48) = 1;
                }

                v38 = v44;
                v39 = v48;
                memcpy(v37, (v32 + v10), v13);
                memcpy(&v37[v13], v34, v38);
                v37[v6] = 0;
                v7 = [MEMORY[0x1E696AEC0] _pas_stringWithConsumedAllocaDescrNoCopy:v37 bufferSize:v39 encoding:v36 nullTerminated:1 isExternalRepresentation:{1, 0}];
                v11 = v45;
                v40 = v43;
              }

              else
              {
                v40 = objc_autoreleasePoolPush();
                v46.receiver = a1;
                v46.super_class = _PASProxyConcatenatedString;
                v7 = objc_msgSendSuper2(&v46, sel_substringWithRange_, a2, a3);
              }

              objc_autoreleasePoolPop(v40);

              goto LABEL_32;
            }
          }
        }
      }

      v44 = a3;
      v18 = objc_opt_new();
      if (v8 <= v16)
      {
        v19 = v16;
      }

      else
      {
        v19 = v8;
      }

      do
      {
        if (v19 == v8)
        {
          __assert_rtn("[_PASProxyConcatenatedString _substringWithRange:]", "NSString+_PASAdditions.m", 763, "loopLocation.index < componentsCount");
        }

        v20 = [*(a1 + 8) objectAtIndexedSubscript:v8];
        v21 = [v20 length];
        if (v21 - v10 >= v6)
        {
          v22 = v6;
        }

        else
        {
          v22 = v21 - v10;
        }

        if (v21 == v22)
        {
          [v18 addObject:v20];
        }

        else
        {
          v23 = objc_autoreleasePoolPush();
          v24 = [v20 substringWithRange:{v10, v22}];
          [v18 addObject:v24];

          objc_autoreleasePoolPop(v23);
        }

        v6 -= v22;

        v10 = 0;
        ++v8;
      }

      while (v6);
      v11 = v45;
      if ([v18 count] < 2)
      {
        __assert_rtn("[_PASProxyConcatenatedString _substringWithRange:]", "NSString+_PASAdditions.m", 774, "substringComponents.count >= 2");
      }

      v25 = [_PASProxyConcatenatedString alloc];
      v26 = [v18 copy];
      v7 = [(_PASProxyConcatenatedString *)v25 _initWithComponents:v26];

      if ([(__CFString *)v7 length]!= v44)
      {
        __assert_rtn("[_PASProxyConcatenatedString _substringWithRange:]", "NSString+_PASAdditions.m", 776, "result.length == range.length");
      }
    }

LABEL_32:

    goto LABEL_33;
  }

  v7 = 0;
LABEL_33:
  v28 = *MEMORY[0x1E69E9840];

  return v7;
}

- (uint64_t)_validateRange:(uint64_t)a3
{
  if (result)
  {
    if ((a2 + a3) > *(result + 24))
    {
      v3 = MEMORY[0x1E695DF30];
      v4 = *MEMORY[0x1E695DA20];
      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Range {%tu, %tu} out of bounds; string length %tu", a2, a3, *(result + 24)];
      v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
      v7 = v6;

      objc_exception_throw(v6);
    }
  }

  return result;
}

- (uint64_t)_locationOfStringIndex:(uint64_t)a1
{
  __key = a2;
  if (!a1)
  {
    return 0;
  }

  v4 = *(a1 + 24);
  if (v4 < a2)
  {
    __assert_rtn("[_PASProxyConcatenatedString _locationOfStringIndex:]", "NSString+_PASAdditions.m", 795, "stringIndex <= _length");
  }

  if (!a2)
  {
    return 0;
  }

  if (v4 == a2)
  {
    v5 = [*(a1 + 8) count] - 1;
    v6 = [*(a1 + 8) lastObject];
    [v6 length];

    return v5;
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    if (*v7 > a2)
    {
      return 0;
    }

    v15 = [*(a1 + 8) count];
    v5 = v15 - 1;
    if (v15 == 1)
    {
      __assert_rtn("[_PASProxyConcatenatedString _locationOfStringIndex:]", "NSString+_PASAdditions.m", 823, "startIndicesCArrayCount != 0");
    }

    v16 = *(a1 + 16);
    if (a2 < *(v16 + v15 - 2))
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __54___PASProxyConcatenatedString__locationOfStringIndex___block_invoke;
      v21[3] = &__block_descriptor_40_e15_i24__0r_v8r_v16l;
      v21[4] = a2;
      v17 = bsearch_b(&__key, v16, v15 - 2, 8uLL, v21);
      v18 = *(a1 + 16);
      v19 = (v17 - v18) >> 3;
      if ((v18 + 8 * v19) != v17)
      {
        __assert_rtn("[_PASProxyConcatenatedString _locationOfStringIndex:]", "NSString+_PASAdditions.m", 851, "&(_startIndices[startIndicesIndex]) == matchingCandidate");
      }

      v5 = v19 + 1;
      v20 = __key - *v17;
    }
  }

  else
  {
    [*(a1 + 8) count];
    v9 = [*(a1 + 8) objectAtIndexedSubscript:0];
    v10 = [v9 length];

    v5 = 0;
    if (v10 <= a2)
    {
      v11 = 1;
      do
      {
        v12 = v10;
        v5 = v11;
        v13 = [*(a1 + 8) objectAtIndexedSubscript:v11];
        v14 = [v13 length];

        v10 = v14 + v12;
        v11 = v5 + 1;
      }

      while (v14 + v12 <= a2);
    }
  }

  return v5;
}

- (void)_initWithComponents:(void *)a1
{
  v4 = a2;
  v5 = v4;
  if (a1)
  {
    if ([v4 count] <= 1)
    {
      v17 = [MEMORY[0x1E696AAA8] currentHandler];
      [v17 handleFailureInMethod:sel__initWithComponents_ object:a1 file:@"NSString+_PASAdditions.m" lineNumber:628 description:{@"Invalid parameter not satisfying: %@", @"components.count >= 2"}];
    }

    v19.receiver = a1;
    v19.super_class = _PASProxyConcatenatedString;
    v6 = objc_msgSendSuper2(&v19, sel_init);
    a1 = v6;
    if (v6)
    {
      objc_storeStrong(v6 + 1, a2);
      v7 = [v5 count];
      v8 = [v5 objectAtIndexedSubscript:0];
      if (v7 < 3)
      {
        a1[2] = 0;
        if (!v7)
        {
          a1[3] = 0;
          goto LABEL_24;
        }

        v14 = 0;
        v11 = 0;
        v10 = 0;
        do
        {
          while (1)
          {
            v15 = [v5 objectAtIndexedSubscript:v14];
            v11 += [v15 length];
            if (v10)
            {
              break;
            }

            v10 = [v15 _pas_retainsConmingledBackingStore];

            if (++v14 == v7)
            {
              goto LABEL_19;
            }
          }

          ++v14;
          v10 = 1;
        }

        while (v14 != v7);
LABEL_21:
        a1[3] = v11;
      }

      else
      {
        v9 = malloc_type_malloc(8 * v7 - 8, 0x100004000313F17uLL);
        if (!v9)
        {
          v18 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:@"malloc failed" userInfo:0];
          objc_exception_throw(v18);
        }

        a1[2] = v9;
        v10 = [v8 _pas_retainsConmingledBackingStore];
        v11 = [v8 length];
        for (i = 1; i != v7; ++i)
        {
          while (1)
          {
            *(a1[2] + 8 * i - 8) = v11;
            v13 = [v5 objectAtIndexedSubscript:i];
            v11 += [v13 length];
            if ((v10 & 1) == 0)
            {
              break;
            }

            ++i;
            v10 = 1;
            if (i == v7)
            {
              goto LABEL_21;
            }
          }

          v10 = [v13 _pas_retainsConmingledBackingStore];
        }

LABEL_19:
        a1[3] = v11;
        if ((v10 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      [a1 _pas_setRetainsConmingledBackingStore:1];
LABEL_24:
    }
  }

  return a1;
}

- (id)_createSubstringWithRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = objc_autoreleasePoolPush();
  v7 = [(_PASProxyConcatenatedString *)self _substringWithRange:length];
  objc_autoreleasePoolPop(v6);
  return v7;
}

- (void)getCharacters:(unsigned __int16 *)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  [(_PASProxyConcatenatedString *)self _validateRange:a4.length];
  if (length)
  {
    v8 = [(_PASProxyConcatenatedString *)self _locationOfStringIndex:?];
    for (i = v9; ; i = 0)
    {
      v15 = [(NSArray *)self->_components objectAtIndexedSubscript:v8];
      v11 = [v15 length];
      v12 = v11 - i;
      v13 = length >= v11 - i ? v11 - i : length;
      [v15 getCharacters:a3 range:{i, v13}];
      v14 = length > v12;
      length -= v12;
      if (!v14)
      {
        break;
      }

      a3 += v12;
      ++v8;
    }
  }
}

- (unsigned)characterAtIndex:(unint64_t)a3
{
  [(_PASProxyConcatenatedString *)self _validateRange:a3, 1];
  v5 = [(_PASProxyConcatenatedString *)self _locationOfStringIndex:a3];
  v7 = v6;
  v8 = [(NSArray *)self->_components objectAtIndexedSubscript:v5];
  LOWORD(v7) = [v8 characterAtIndex:v7];

  return v7;
}

- (void)dealloc
{
  free(self->_startIndices);
  v3.receiver = self;
  v3.super_class = _PASProxyConcatenatedString;
  [(_PASProxyConcatenatedString *)&v3 dealloc];
}

@end