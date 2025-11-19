@interface NSIndexPath(_PASAdditions)
+ (id)_pas_fromVersionString:()_PASAdditions withExceptions:;
+ (id)_pas_fromVersionStringIfPossible:()_PASAdditions;
- (BOOL)_pas_isEqualToVersionString:()_PASAdditions;
- (BOOL)_pas_isGreaterThanOrEqualToVersionString:()_PASAdditions;
- (BOOL)_pas_isGreaterThanVersionString:()_PASAdditions;
- (BOOL)_pas_isLessThanOrEqualToVersionString:()_PASAdditions;
- (BOOL)_pas_isLessThanVersionString:()_PASAdditions;
- (__CFString)_pas_asVersionString;
@end

@implementation NSIndexPath(_PASAdditions)

- (BOOL)_pas_isGreaterThanVersionString:()_PASAdditions
{
  v2 = [MEMORY[0x1E696AC88] _pas_fromVersionString:?];
  v3 = [a1 compare:v2] == 1;

  return v3;
}

- (BOOL)_pas_isGreaterThanOrEqualToVersionString:()_PASAdditions
{
  v2 = [MEMORY[0x1E696AC88] _pas_fromVersionString:?];
  v3 = [a1 compare:v2] != -1;

  return v3;
}

- (BOOL)_pas_isEqualToVersionString:()_PASAdditions
{
  v2 = [MEMORY[0x1E696AC88] _pas_fromVersionString:?];
  v3 = [a1 compare:v2] == 0;

  return v3;
}

- (BOOL)_pas_isLessThanOrEqualToVersionString:()_PASAdditions
{
  v2 = [MEMORY[0x1E696AC88] _pas_fromVersionString:?];
  v3 = [a1 compare:v2] != 1;

  return v3;
}

- (BOOL)_pas_isLessThanVersionString:()_PASAdditions
{
  v2 = [MEMORY[0x1E696AC88] _pas_fromVersionString:?];
  v3 = [a1 compare:v2] == -1;

  return v3;
}

- (__CFString)_pas_asVersionString
{
  v2 = [a1 length];
  v3 = v2;
  if (v2 <= 2)
  {
    switch(v2)
    {
      case 0:
        v5 = &stru_1F1B24B60;
        goto LABEL_20;
      case 1:
        v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%tu", objc_msgSend(a1, "indexAtPosition:", 0), v10, v11, v12, v13, v14];
        goto LABEL_19;
      case 2:
        v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%tu.%tu", objc_msgSend(a1, "indexAtPosition:", 0), objc_msgSend(a1, "indexAtPosition:", 1), v11, v12, v13, v14];
LABEL_19:
        v5 = v4;
        goto LABEL_20;
    }
  }

  else
  {
    if (v2 <= 4)
    {
      if (v2 == 3)
      {
        v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%tu.%tu.%tu", objc_msgSend(a1, "indexAtPosition:", 0), objc_msgSend(a1, "indexAtPosition:", 1), objc_msgSend(a1, "indexAtPosition:", 2), v12, v13, v14];
      }

      else
      {
        v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%tu.%tu.%tu.%tu", objc_msgSend(a1, "indexAtPosition:", 0), objc_msgSend(a1, "indexAtPosition:", 1), objc_msgSend(a1, "indexAtPosition:", 2), objc_msgSend(a1, "indexAtPosition:", 3), v13, v14];
      }

      goto LABEL_19;
    }

    if (v2 == 5)
    {
      v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%tu.%tu.%tu.%tu.%tu", objc_msgSend(a1, "indexAtPosition:", 0), objc_msgSend(a1, "indexAtPosition:", 1), objc_msgSend(a1, "indexAtPosition:", 2), objc_msgSend(a1, "indexAtPosition:", 3), objc_msgSend(a1, "indexAtPosition:", 4), v14];
      goto LABEL_19;
    }

    if (v2 == 6)
    {
      v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%tu.%tu.%tu.%tu.%tu.%tu", objc_msgSend(a1, "indexAtPosition:", 0), objc_msgSend(a1, "indexAtPosition:", 1), objc_msgSend(a1, "indexAtPosition:", 2), objc_msgSend(a1, "indexAtPosition:", 3), objc_msgSend(a1, "indexAtPosition:", 4), objc_msgSend(a1, "indexAtPosition:", 5)];
      goto LABEL_19;
    }
  }

  v5 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:2 * v2];
  v6 = 0;
  v7 = v3 - 1;
  do
  {
    v8 = objc_autoreleasePoolPush();
    -[__CFString appendFormat:](v5, "appendFormat:", @"%tu.", [a1 indexAtPosition:v6]);
    objc_autoreleasePoolPop(v8);
    ++v6;
  }

  while (v7 != v6);
  -[__CFString appendFormat:](v5, "appendFormat:", @"%tu", [a1 indexAtPosition:v7]);
LABEL_20:

  return v5;
}

+ (id)_pas_fromVersionString:()_PASAdditions withExceptions:
{
  LODWORD(v4) = a4;
  v29 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [(__CFString *)v7 length];
  if (![(__CFString *)v7 length])
  {
    v19 = objc_opt_new();
    goto LABEL_26;
  }

  CStringPtr = CFStringGetCStringPtr(v7, 0x600u);
  if (CStringPtr || (CStringPtr = [(__CFString *)v7 UTF8String]) != 0)
  {
    v10 = CStringPtr;
    goto LABEL_5;
  }

  if (v4)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:a1 file:@"NSIndexPath+_PASAdditions.m" lineNumber:38 description:{@"Unable to get ASCII or UTF-8 bytes of input to _pas_fromVersionString: %@", v7}];

    v10 = 0;
LABEL_5:
    v11 = (v8 + 1) >> 1;
    v12 = (8 * v11) | 7;
    __endptr = 0;
    v28 = 0;
    if (v12 > 0x1F4)
    {
      v24 = malloc_type_posix_memalign(&__endptr, 8uLL, 8 * v11, 0x100004000313F17uLL);
      LOBYTE(v28) = 0;
      if (v24)
      {
        v25 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:@"malloc failed" userInfo:0];
        objc_exception_throw(v25);
      }

      v13 = __endptr;
    }

    else
    {
      v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v13, (8 * v11) | 7);
    }

    __endptr = 0;
    if ((*v10 - 58) < 0xFFFFFFF6)
    {
LABEL_17:
      if (v12 >= 0x1F5)
      {
        goto LABEL_45;
      }

      if (v4)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v14 = 0;
      while (1)
      {
        *__error() = 0;
        v15 = strtoul(v10, &__endptr, 10);
        if (*__error())
        {
          v16 = v15 + 1 > 1;
        }

        else
        {
          v16 = 1;
        }

        if (!v16)
        {
          if (v12 >= 0x1F5)
          {
            free(v13);
            if (!v4)
            {
              goto LABEL_31;
            }
          }

          else if (!v4)
          {
            goto LABEL_31;
          }

          v4 = [MEMORY[0x1E696AAA8] currentHandler];
          [v4 handleFailureInMethod:a2 object:a1 file:@"NSIndexPath+_PASAdditions.m" lineNumber:64 description:{@"Invalid input to _pas_fromVersionString (unable to parse a decimal integer into an NSUInteger): %@", v7}];
          goto LABEL_44;
        }

        v17 = __endptr;
        if (__endptr == v10)
        {
          if (v12 >= 0x1F5)
          {
            free(v13);
            if (!v4)
            {
              goto LABEL_31;
            }
          }

          else if (!v4)
          {
            goto LABEL_31;
          }

          v4 = [MEMORY[0x1E696AAA8] currentHandler];
          [v4 handleFailureInMethod:a2 object:a1 file:@"NSIndexPath+_PASAdditions.m" lineNumber:74 description:{@"Invalid input to _pas_fromVersionString (expected a decimal integer, got something, or nothing, else): %@", v7}];
          goto LABEL_44;
        }

        *&v13[8 * v14] = v15;
        if (*v17 != 46)
        {
          break;
        }

        v18 = v17[1];
        __endptr = 0;
        ++v14;
        v10 = v17 + 1;
        if ((v18 - 58) < 0xFFFFFFF6)
        {
          goto LABEL_17;
        }
      }

      if (!*v17)
      {
        v19 = [objc_alloc(MEMORY[0x1E696AC88]) initWithIndexes:v13 length:v14 + 1];
        if (v12 >= 0x1F5)
        {
          free(v13);
        }

        if (v14 + 1 > v11)
        {
          v20 = [MEMORY[0x1E696AAA8] currentHandler];
          [v20 handleFailureInMethod:a2 object:a1 file:@"NSIndexPath+_PASAdditions.m" lineNumber:101 description:{@"Invalid parameter not satisfying: %@", @"length <= maxPossibleIndexPathLength"}];
        }

        goto LABEL_26;
      }

      if (v12 >= 0x1F5)
      {
        free(v13);
        if (!v4)
        {
          goto LABEL_31;
        }
      }

      else if (!v4)
      {
        goto LABEL_31;
      }

      v4 = [MEMORY[0x1E696AAA8] currentHandler];
      [v4 handleFailureInMethod:a2 object:a1 file:@"NSIndexPath+_PASAdditions.m" lineNumber:91 description:{@"Invalid input to _pas_fromVersionString (expected '.' or null terminator, got something else): %@", v7}];
LABEL_44:
      while (1)
      {

        __break(1u);
LABEL_45:
        free(v13);
        if (!v4)
        {
          break;
        }

LABEL_46:
        v4 = [MEMORY[0x1E696AAA8] currentHandler];
        [v4 handleFailureInMethod:a2 object:a1 file:@"NSIndexPath+_PASAdditions.m" lineNumber:52 description:{@"Invalid input to _pas_fromVersionString (got an unexpected non-digit character): %@", v7}];
      }
    }
  }

LABEL_31:
  v19 = 0;
LABEL_26:

  v21 = *MEMORY[0x1E69E9840];

  return v19;
}

+ (id)_pas_fromVersionStringIfPossible:()_PASAdditions
{
  if (a3)
  {
    v4 = [a1 _pas_fromVersionString:a3 withExceptions:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end