@interface TRIMisc
+ (BOOL)convertFromString:(id)a3 usingBase:(int)a4 toI64:(int64_t *)a5;
+ (BOOL)convertFromString:(id)a3 usingBase:(int)a4 toU64:(unint64_t *)a5;
+ (id)bestEffortSymbolicateAddress:(void *)a3;
+ (unint64_t)roundToOneSignificantDigitWithU64:(unint64_t)a3;
+ (unint64_t)unsafeFirstAuthenticationState;
@end

@implementation TRIMisc

+ (unint64_t)unsafeFirstAuthenticationState
{
  v2 = MKBDeviceUnlockedSinceBoot();
  if (v2 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (v2 != 0);
  }
}

+ (BOOL)convertFromString:(id)a3 usingBase:(int)a4 toU64:(unint64_t *)a5
{
  v9 = a3;
  v10 = objc_autoreleasePoolPush();
  if (!v9)
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:a2 object:a1 file:@"TRIMisc.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"string"}];
  }

  v11 = [v9 triTrim];

  v12 = [v11 UTF8String];
  if (v12)
  {
    v13 = v12;
    v14 = strlen(v12);
    *__error() = 0;
    __endptr = 0;
    v15 = strtoull(v13, &__endptr, a4);
    if (*__error())
    {
      v16 = 0;
    }

    else
    {
      v16 = __endptr == &v13[v14];
    }

    v17 = v16;
    if (a5 && v17)
    {
      *a5 = v15;
    }
  }

  else
  {
    LOBYTE(v17) = 0;
  }

  objc_autoreleasePoolPop(v10);

  return v17;
}

+ (BOOL)convertFromString:(id)a3 usingBase:(int)a4 toI64:(int64_t *)a5
{
  v9 = a3;
  v10 = objc_autoreleasePoolPush();
  if (!v9)
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:a2 object:a1 file:@"TRIMisc.m" lineNumber:57 description:{@"Invalid parameter not satisfying: %@", @"string"}];
  }

  v11 = [v9 triTrim];

  v12 = [v11 UTF8String];
  if (v12)
  {
    v13 = v12;
    v14 = strlen(v12);
    *__error() = 0;
    __endptr = 0;
    v15 = strtoll(v13, &__endptr, a4);
    if (*__error())
    {
      v16 = 0;
    }

    else
    {
      v16 = __endptr == &v13[v14];
    }

    v17 = v16;
    if (a5 && v17)
    {
      *a5 = v15;
    }
  }

  else
  {
    LOBYTE(v17) = 0;
  }

  objc_autoreleasePoolPop(v10);

  return v17;
}

+ (unint64_t)roundToOneSignificantDigitWithU64:(unint64_t)a3
{
  result = a3;
  if (a3 >= 0xA)
  {
    if (a3 < 0x64)
    {
      v6 = 10;
    }

    else
    {
      v4 = 1;
      do
      {
        v5 = v4;
        v4 *= 10;
      }

      while (a3 / v4 > 0x63);
      v6 = 100 * v5;
      LOBYTE(result) = a3 / v4;
    }

    if (result % 0xAu <= 4)
    {
      v7 = result / 0xAu;
    }

    else
    {
      v7 = result / 0xAu + 1;
    }

    return v7 * v6;
  }

  return result;
}

+ (id)bestEffortSymbolicateAddress:(void *)a3
{
  v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%p", a3, a3];
  v4 = backtrace_symbols(&v12, 1);
  if (v4)
  {
    v5 = v4;
    v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:*v4];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v3;
    }

    v9 = v8;

    free(v5);
    v3 = v9;
  }

  v10 = v3;

  return v3;
}

@end