@interface TRIMisc
+ (BOOL)convertFromString:(id)string usingBase:(int)base toI64:(int64_t *)i64;
+ (BOOL)convertFromString:(id)string usingBase:(int)base toU64:(unint64_t *)u64;
+ (id)bestEffortSymbolicateAddress:(void *)address;
+ (unint64_t)roundToOneSignificantDigitWithU64:(unint64_t)u64;
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

+ (BOOL)convertFromString:(id)string usingBase:(int)base toU64:(unint64_t *)u64
{
  stringCopy = string;
  v10 = objc_autoreleasePoolPush();
  if (!stringCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIMisc.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"string"}];
  }

  triTrim = [stringCopy triTrim];

  uTF8String = [triTrim UTF8String];
  if (uTF8String)
  {
    v13 = uTF8String;
    v14 = strlen(uTF8String);
    *__error() = 0;
    __endptr = 0;
    v15 = strtoull(v13, &__endptr, base);
    if (*__error())
    {
      v16 = 0;
    }

    else
    {
      v16 = __endptr == &v13[v14];
    }

    v17 = v16;
    if (u64 && v17)
    {
      *u64 = v15;
    }
  }

  else
  {
    LOBYTE(v17) = 0;
  }

  objc_autoreleasePoolPop(v10);

  return v17;
}

+ (BOOL)convertFromString:(id)string usingBase:(int)base toI64:(int64_t *)i64
{
  stringCopy = string;
  v10 = objc_autoreleasePoolPush();
  if (!stringCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIMisc.m" lineNumber:57 description:{@"Invalid parameter not satisfying: %@", @"string"}];
  }

  triTrim = [stringCopy triTrim];

  uTF8String = [triTrim UTF8String];
  if (uTF8String)
  {
    v13 = uTF8String;
    v14 = strlen(uTF8String);
    *__error() = 0;
    __endptr = 0;
    v15 = strtoll(v13, &__endptr, base);
    if (*__error())
    {
      v16 = 0;
    }

    else
    {
      v16 = __endptr == &v13[v14];
    }

    v17 = v16;
    if (i64 && v17)
    {
      *i64 = v15;
    }
  }

  else
  {
    LOBYTE(v17) = 0;
  }

  objc_autoreleasePoolPop(v10);

  return v17;
}

+ (unint64_t)roundToOneSignificantDigitWithU64:(unint64_t)u64
{
  result = u64;
  if (u64 >= 0xA)
  {
    if (u64 < 0x64)
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

      while (u64 / v4 > 0x63);
      v6 = 100 * v5;
      LOBYTE(result) = u64 / v4;
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

+ (id)bestEffortSymbolicateAddress:(void *)address
{
  address = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%p", address, address];
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
      v8 = address;
    }

    v9 = v8;

    free(v5);
    address = v9;
  }

  v10 = address;

  return address;
}

@end