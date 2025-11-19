@interface PPUtils
+ (BOOL)localizedTimeStructForDate:(id)a3 tm:(tm *)a4;
+ (BOOL)localizedTimeStructForSecondsFrom1970:(double)a3 tm:(tm *)a4;
+ (double)jaroSimilarityForString:(id)a3 other:(id)a4;
+ (id)Sha256ForData:(id)a3 withSalt:(id)a4;
+ (id)coordinatesToGeoHashWithLength:(unint64_t)a3 latitude:(double)a4 longitude:(double)a5;
+ (id)currentLocaleLanguageCode;
+ (id)formatStringArray:(id)a3 truncatingAtLength:(unint64_t)a4;
+ (id)hexOfBytes:(const void *)a3 size:(unint64_t)a4;
+ (id)hexUUID;
+ (id)osBuild;
+ (id)preferredLanguages;
+ (id)reduceSpotlightDomainIdentifiers:(id)a3;
+ (id)sqliteGlobEscape:(id)a3;
+ (int64_t)compareDouble:(double)a3 withDouble:(double)a4;
+ (void)enumerateChunksOfSize:(unint64_t)a3 fromArray:(id)a4 usingBlock:(id)a5;
@end

@implementation PPUtils

+ (id)preferredLanguages
{
  if (preferredLanguages__pasOnceToken9 != -1)
  {
    dispatch_once(&preferredLanguages__pasOnceToken9, &__block_literal_global_64);
  }

  v3 = preferredLanguages__pasExprOnceResult;

  return v3;
}

void __29__PPUtils_preferredLanguages__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc(MEMORY[0x1E695DFD8]);
  v2 = [MEMORY[0x1E695DF58] preferredLanguages];
  v3 = [v2 _pas_mappedArrayWithTransform:&__block_literal_global_68];
  v4 = [v1 initWithArray:v3];
  v5 = preferredLanguages__pasExprOnceResult;
  preferredLanguages__pasExprOnceResult = v4;

  objc_autoreleasePoolPop(v0);
}

+ (BOOL)localizedTimeStructForSecondsFrom1970:(double)a3 tm:(tm *)a4
{
  v5 = 0;
  v21 = *MEMORY[0x1E69E9840];
  if (a3 >= -2147483650.0 && a3 <= 2147483650.0)
  {
    v14 = a3;
    *__error() = 0;
    v7 = localtime_r(&v14, a4);
    v5 = v7 != 0;
    if (!v7)
    {
      v8 = pp_default_log_handle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        v11 = __error();
        v12 = strerror(*v11);
        v13 = *__error();
        *buf = 134218498;
        v16 = a3;
        v17 = 2080;
        v18 = v12;
        v19 = 1024;
        v20 = v13;
        _os_log_fault_impl(&dword_1A7FD3000, v8, OS_LOG_TYPE_FAULT, "localtime_r() failure when converting %.1f : %s (%d)", buf, 0x1Cu);
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return v5;
}

+ (BOOL)localizedTimeStructForDate:(id)a3 tm:(tm *)a4
{
  [a3 timeIntervalSince1970];

  return [PPUtils localizedTimeStructForSecondsFrom1970:a4 tm:?];
}

+ (id)sqliteGlobEscape:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v35 = [MEMORY[0x1E696AAA8] currentHandler];
    [v35 handleFailureInMethod:a2 object:a1 file:@"PPUtils.m" lineNumber:238 description:{@"Invalid parameter not satisfying: %@", @"unescaped"}];

    v6 = objc_autoreleasePoolPush();
    goto LABEL_39;
  }

  v6 = objc_autoreleasePoolPush();
  v7 = v5;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  *buffer = 0u;
  v40 = 0u;
  Length = CFStringGetLength(v7);
  v47 = v7;
  v50 = 0;
  v51 = Length;
  theString = v7;
  CharactersPtr = CFStringGetCharactersPtr(v7);
  CStringPtr = 0;
  v48 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(v7, 0x600u);
  }

  v52 = 0;
  v53 = 0;
  v49 = CStringPtr;
  if (Length <= 0)
  {

LABEL_39:
    v12 = v5;
    goto LABEL_40;
  }

  v36 = v6;
  v37 = v5;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 64;
  do
  {
    if (v14 >= 4)
    {
      v17 = 4;
    }

    else
    {
      v17 = v14;
    }

    v18 = v51;
    if (v51 <= v14)
    {
LABEL_22:
      ++v15;
      goto LABEL_23;
    }

    if (v48)
    {
      v19 = &v48[v50];
LABEL_12:
      v20 = v19[v14];
      goto LABEL_15;
    }

    if (!v49)
    {
      v26 = v52;
      if (v53 <= v14 || v52 > v14)
      {
        v28 = v17 + v11;
        v29 = v16 - v17;
        v30 = v14 - v17;
        v31 = v30 + 64;
        if (v30 + 64 >= v51)
        {
          v31 = v51;
        }

        v52 = v30;
        v53 = v31;
        if (v51 >= v29)
        {
          v18 = v29;
        }

        v55.location = v30 + v50;
        v55.length = v18 + v28;
        CFStringGetCharacters(v47, v55, buffer);
        v26 = v52;
      }

      v19 = &buffer[-v26];
      goto LABEL_12;
    }

    v20 = v49[v50 + v14];
LABEL_15:
    v21 = v20;
    v22 = (1 << (v20 - 42)) & 0x2000000200001;
    if ((v21 - 42) > 0x31 || v22 == 0)
    {
      goto LABEL_22;
    }

    v24 = objc_autoreleasePoolPush();
    if (!v12)
    {
      v12 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:{-[__CFString length](theString, "length")}];
    }

    v25 = [(__CFString *)theString substringWithRange:v13, v15];
    [v12 appendFormat:@"%@[%c]", v25, v21];

    v13 += v15 + 1;
    objc_autoreleasePoolPop(v24);
    v15 = 0;
LABEL_23:
    ++v14;
    --v11;
    ++v16;
  }

  while (Length != v14);

  v6 = v36;
  v5 = v37;
  if (!v12)
  {
    goto LABEL_39;
  }

  if (v15)
  {
    v32 = objc_autoreleasePoolPush();
    v33 = [(__CFString *)theString substringWithRange:v13, v15];
    [v12 appendString:v33];

    objc_autoreleasePoolPop(v32);
  }

LABEL_40:
  objc_autoreleasePoolPop(v6);

  return v12;
}

+ (double)jaroSimilarityForString:(id)a3 other:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = 1.0;
  if (([v5 isEqualToString:v6] & 1) == 0)
  {
    [v5 length];
    [v6 length];
    v8 = objc_opt_new();
    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v32 = 0;
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __41__PPUtils_jaroSimilarityForString_other___block_invoke;
    v26 = &unk_1E77F6880;
    v27 = v8;
    v28 = &v29;
    _PASIterateLongChars();
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v10 = v27;
    _PASIterateLongChars();
    v7 = (v20[3] / v12[3] + v20[3] / v30[3] + (v20[3] - v16[3]) / v20[3]) / 3.0;

    _Block_object_dispose(&v11, 8);
    _Block_object_dispose(&v15, 8);
    _Block_object_dispose(&v19, 8);

    _Block_object_dispose(&v29, 8);
  }

  return v7;
}

void __41__PPUtils_jaroSimilarityForString_other___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (!v7)
  {
    v8 = objc_opt_new();
    v9 = *(a1 + 32);
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
    [v9 setObject:v8 forKeyedSubscript:v10];
  }

  v11 = *(a1 + 32);
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
  v13 = [v11 objectForKeyedSubscript:v12];
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(*(*(a1 + 40) + 8) + 24)];
  [v13 addObject:v14];

  ++*(*(*(a1 + 40) + 8) + 24);

  objc_autoreleasePoolPop(v4);
}

void __41__PPUtils_jaroSimilarityForString_other___block_invoke_2(void *a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  v5 = a1[4];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (!v7)
  {
    goto LABEL_17;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = a1[4];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{a2, 0}];
  v10 = [v8 objectForKeyedSubscript:v9];

  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v11)
  {

    goto LABEL_17;
  }

  v12 = v11;
  v13 = 0;
  v14 = *v19;
  while (2)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v19 != v14)
      {
        objc_enumerationMutation(v10);
      }

      v16 = *(*(&v18 + 1) + 8 * i);
      if (([v16 unsignedIntegerValue] - *(*(a1[5] + 8) + 24)) <= a1[8])
      {
        if ([v16 unsignedIntegerValue] != *(*(a1[5] + 8) + 24))
        {
          *(*(a1[6] + 8) + 24) = *(*(a1[6] + 8) + 24) + 1.0;

LABEL_15:
          *(*(a1[7] + 8) + 24) = *(*(a1[7] + 8) + 24) + 1.0;
          goto LABEL_17;
        }

        v13 = 1;
      }
    }

    v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v12)
    {
      continue;
    }

    break;
  }

  if (v13)
  {
    goto LABEL_15;
  }

LABEL_17:
  ++*(*(a1[5] + 8) + 24);
  objc_autoreleasePoolPop(v4);
  v17 = *MEMORY[0x1E69E9840];
}

+ (id)reduceSpotlightDomainIdentifiers:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:a1 file:@"PPUtils.m" lineNumber:187 description:{@"Invalid parameter not satisfying: %@", @"domainIdentifiers"}];
  }

  v6 = objc_autoreleasePoolPush();
  v7 = [objc_alloc(MEMORY[0x1E69C5D18]) initWithDomainsFromArray:v5];
  v8 = [v7 allDomains];
  v9 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"self" ascending:1];
  v15[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v11 = [v8 sortedArrayUsingDescriptors:v10];

  objc_autoreleasePoolPop(v6);
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)currentLocaleLanguageCode
{
  v2 = MEMORY[0x1E695DF58];
  v3 = [MEMORY[0x1E695DF58] currentLocale];
  v4 = [v3 localeIdentifier];
  v5 = [v2 componentsFromLocaleIdentifier:v4];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E695D9B0]];

  return v6;
}

+ (id)coordinatesToGeoHashWithLength:(unint64_t)a3 latitude:(double)a4 longitude:(double)a5
{
  v7 = a3;
  v26[2] = *MEMORY[0x1E69E9840];
  if (a3 >= 0xD)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:a1 file:@"PPUtils.m" lineNumber:148 description:{@"Invalid parameter not satisfying: %@", @"hashLength <= GEOHASH_MAX_LENGTH"}];
  }

  v8 = 0;
  v9 = 1 << (5 * v7 - 1);
  v10 = -180.0;
  v11 = 180.0;
  v12 = 90.0;
  v13 = -90.0;
  do
  {
    v14 = v10 + (v11 - v10) * 0.5;
    if (v14 <= a5)
    {
      v15 = v9;
    }

    else
    {
      v15 = 0;
    }

    v8 |= v15;
    if (v9 == 1)
    {
      break;
    }

    if (v14 <= a5)
    {
      v10 = v10 + (v11 - v10) * 0.5;
    }

    else
    {
      v11 = v10 + (v11 - v10) * 0.5;
    }

    v16 = v9 >> 1;
    if (v13 + (v12 - v13) * 0.5 <= a4)
    {
      v13 = v13 + (v12 - v13) * 0.5;
    }

    else
    {
      v12 = v13 + (v12 - v13) * 0.5;
      v16 = 0;
    }

    v8 |= v16;
    v17 = v9 > 3;
    v9 >>= 2;
  }

  while (v17);
  memset(v26, 0, 13);
  if (v7)
  {
    v18 = 5 * v7 - 5;
    v19 = v26;
    do
    {
      *v19++ = geoHashBase32Map[(v8 >> v18) & 0x1F];
      v18 -= 5;
      --v7;
    }

    while (v7);
  }

  v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:v26 encoding:4];
  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

+ (id)formatStringArray:(id)a3 truncatingAtLength:(unint64_t)a4
{
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  if ([v5 count] > a4)
  {
    v7 = [v5 subarrayWithRange:{0, a4}];
    v8 = [v7 arrayByAddingObject:@"..."];

    v5 = v8;
  }

  v9 = objc_alloc(MEMORY[0x1E696AEC0]);
  v10 = [v5 _pas_componentsJoinedByString:{@", "}];
  v11 = [v9 initWithFormat:@"[ %@ ]", v10];

  objc_autoreleasePoolPop(v6);

  return v11;
}

+ (int64_t)compareDouble:(double)a3 withDouble:(double)a4
{
  if (a3 >= a4)
  {
    v4 = 0;
  }

  else
  {
    v4 = -1;
  }

  if (a3 > a4)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

+ (id)hexUUID
{
  v6[2] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v6[1] = 0;
  v2 = objc_opt_new();
  [v2 getUUIDBytes:v6];

  v3 = [PPUtils hexOfBytes:v6 size:16];
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)hexOfBytes:(const void *)a3 size:(unint64_t)a4
{
  v4 = a4;
  v6 = 2 * a4;
  v7 = malloc_type_malloc(2 * a4, 0x74DED8F2uLL);
  if (!v7)
  {
    v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:@"malloc failed" userInfo:0];
    objc_exception_throw(v12);
  }

  if (v4)
  {
    v8 = v7 + 1;
    do
    {
      *(v8 - 1) = charOfNibble[*a3 >> 4];
      v9 = *a3;
      a3 = a3 + 1;
      *v8 = charOfNibble[v9 & 0xF];
      v8 += 2;
      --v4;
    }

    while (v4);
  }

  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v7 length:v6 encoding:4 freeWhenDone:1];

  return v10;
}

+ (id)Sha256ForData:(id)a3 withSalt:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a4;
  memset(&v13, 0, sizeof(v13));
  v6 = a3;
  CC_SHA256_Init(&v13);
  v7 = v6;
  v8 = [v7 bytes];
  v9 = [v6 length];

  CC_SHA256_Update(&v13, v8, v9);
  if (v5)
  {
    CC_SHA256_Update(&v13, [v5 bytes], objc_msgSend(v5, "length"));
  }

  *md = 0u;
  v15 = 0u;
  CC_SHA256_Final(md, &v13);
  v10 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:md length:32];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)osBuild
{
  if (osBuild__pasOnceToken3 != -1)
  {
    dispatch_once(&osBuild__pasOnceToken3, &__block_literal_global_2735);
  }

  v3 = osBuild__pasExprOnceResult;

  return v3;
}

void __18__PPUtils_osBuild__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x1E69C5D08] currentOsBuild];
  if (v1)
  {
    v2 = [@"iOS-" stringByAppendingString:v1];
  }

  else
  {
    v2 = 0;
  }

  v3 = osBuild__pasExprOnceResult;
  osBuild__pasExprOnceResult = v2;

  objc_autoreleasePoolPop(v0);
}

+ (void)enumerateChunksOfSize:(unint64_t)a3 fromArray:(id)a4 usingBlock:(id)a5
{
  v9 = a4;
  v10 = a5;
  if (!a3)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:a1 file:@"PPUtils.m" lineNumber:27 description:@"Chunk size must be nonzero"];
  }

  if ([v9 count])
  {
    if ([v9 count] <= a3)
    {
      v19 = 0;
      v10[2](v10, v9, &v19);
    }

    else
    {
      v11 = 0;
      do
      {
        if (v11 >= [v9 count])
        {
          break;
        }

        v12 = objc_autoreleasePoolPush();
        v18 = 0;
        v13 = [v9 count];
        v14 = v13 - v11 >= a3 ? a3 : v13 - v11;
        v15 = [v9 subarrayWithRange:{v11, v14}];
        v10[2](v10, v15, &v18);

        v11 += v14;
        v16 = v18;
        objc_autoreleasePoolPop(v12);
      }

      while (v16 != 1);
    }
  }
}

@end