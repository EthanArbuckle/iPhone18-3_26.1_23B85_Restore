@interface PASLPWriterV1
@end

@implementation PASLPWriterV1

uint64_t __71___PASLPWriterV1__valueWordForObjectGraph_allocContext_recursionDepth___block_invoke_6(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:{4 * objc_msgSend(v4, "count") + 4}];
  v7 = [v6 mutableBytes];
  *v7 = [v4 count];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __71___PASLPWriterV1__valueWordForObjectGraph_allocContext_recursionDepth___block_invoke_7;
  v9[3] = &__block_descriptor_48_e15_v32__0_8Q16_B24l;
  v9[4] = v7;
  v9[5] = a2;
  [v4 enumerateObjectsUsingBlock:v9];
  *(a2 + 8) = kSqlEventFired_block_invoke(a2, [v6 bytes], objc_msgSend(v6, "length") | 0x400000000) | 0xE0000000;
  *(a2 + 12) = 1;
  ++*(*(*a2 + 32) + 80);

  objc_autoreleasePoolPop(v5);
  return 1;
}

void __71___PASLPWriterV1__valueWordForObjectGraph_allocContext_recursionDepth___block_invoke_7(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  v5 = objc_autoreleasePoolPush();
  v6 = [_PASLPWriterV1 _valueWordForObjectGraph:v8 allocContext:**(a1 + 40) recursionDepth:*(*(a1 + 40) + 16) + 1];
  v7 = *(a1 + 40);
  *(*(a1 + 32) + 4 * a3 + 4) = v6;
  ++*(*(*v7 + 32) + 88);
  objc_autoreleasePoolPop(v5);
}

uint64_t __71___PASLPWriterV1__valueWordForObjectGraph_allocContext_recursionDepth___block_invoke_3_109(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:{(8 * objc_msgSend(v4, "count")) | 4}];
  v7 = [v6 mutableBytes];
  *v7 = [v4 count];
  v8 = objc_autoreleasePoolPush();
  v9 = [v4 allKeys];
  v10 = [v9 sortedArrayUsingComparator:&__block_literal_global_116];

  objc_autoreleasePoolPop(v8);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __71___PASLPWriterV1__valueWordForObjectGraph_allocContext_recursionDepth___block_invoke_5_117;
  v13[3] = &unk_1E77F2A50;
  v15 = a2;
  v16 = v7;
  v11 = v4;
  v14 = v11;
  [v10 enumerateObjectsUsingBlock:v13];
  *(a2 + 8) = kSqlEventFired_block_invoke(a2, [v6 bytes], objc_msgSend(v6, "length") | 0x400000000) | 0xC0000000;
  *(a2 + 12) = 1;
  ++*(*(*a2 + 32) + 96);

  objc_autoreleasePoolPop(v5);
  return 1;
}

void __71___PASLPWriterV1__valueWordForObjectGraph_allocContext_recursionDepth___block_invoke_5_117(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  v7 = [v5 UTF8String];
  if (!v7)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[_PASLPWriterV1 _valueWordForObjectGraph:allocContext:recursionDepth:]_block_invoke_5"];
    [v20 handleFailureInFunction:v21 file:@"_PASLPWriterV1.m" lineNumber:752 description:@"unexpected failure of UTF-8 NSString conversion"];
  }

  v8 = strlen(v7) + 1;
  v9 = **(a1 + 40);
  value[0] = v7;
  value[1] = v8 | 0x100000000;
  v10 = CFSetGetValue(*(v9 + 16), value);
  if (!v10)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[_PASLPWriterV1 _valueWordForObjectGraph:allocContext:recursionDepth:]_block_invoke_5"];
    [v22 handleFailureInFunction:v23 file:@"_PASLPWriterV1.m" lineNumber:761 description:{@"failed to find dictionary key %@ in string table", v5}];
  }

  v11 = **(a1 + 40);
  v12 = *v10 - *v11;
  if (v12 < *(*v11 + 4) || v12 + v8 > *(*v11 + 8))
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[_PASLPWriterV1 _valueWordForObjectGraph:allocContext:recursionDepth:]_block_invoke_5"];
    [v18 handleFailureInFunction:v19 file:@"_PASLPWriterV1.m" lineNumber:765 description:{@"found dictionary key %@ but not contained in string table", v5}];

    v11 = **(a1 + 40);
    v12 = *v10 - *v11;
  }

  v13 = 4 * a3 + 4;
  *(*(a1 + 48) + v13) = v12 | 0xA0000000;
  ++*(v11[4] + 56);
  v14 = [*(a1 + 32) objectForKeyedSubscript:v5];
  v15 = [_PASLPWriterV1 _valueWordForObjectGraph:v14 allocContext:**(a1 + 40) recursionDepth:*(*(a1 + 40) + 16) + 1];
  v16 = *(a1 + 48);
  *(v16 + v13 + 4 * [*(a1 + 32) count]) = v15;

  v17 = *(**(a1 + 40) + 32);
  ++*(v17 + 104);
  objc_autoreleasePoolPop(v6);
}

uint64_t __71___PASLPWriterV1__valueWordForObjectGraph_allocContext_recursionDepth___block_invoke_4_113(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = [v4 UTF8String];
  v8 = [v5 UTF8String];
  v9 = v8;
  if (!v7 || !v8)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[_PASLPWriterV1 _valueWordForObjectGraph:allocContext:recursionDepth:]_block_invoke_4"];
    [v12 handleFailureInFunction:v13 file:@"_PASLPWriterV1.m" lineNumber:743 description:@"unexpected failure of UTF-8 NSString conversion"];
  }

  v10 = strcmp(v7, v9);
  objc_autoreleasePoolPop(v6);

  return v10;
}

uint64_t __71___PASLPWriterV1__valueWordForObjectGraph_allocContext_recursionDepth___block_invoke_2_103(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [v4 UTF8String];
  if (!v6)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[_PASLPWriterV1 _valueWordForObjectGraph:allocContext:recursionDepth:]_block_invoke_2"];
    [v9 handleFailureInFunction:v10 file:@"_PASLPWriterV1.m" lineNumber:716 description:@"unexpected failure of UTF-8 NSString conversion"];
  }

  v7 = strlen(v6);
  *(a2 + 8) = kSqlEventFired_block_invoke(a2, v6, (v7 + 1) | 0x100000000) | 0xA0000000;
  *(a2 + 12) = 1;
  ++*(*(*a2 + 32) + 56);
  objc_autoreleasePoolPop(v5);

  return 1;
}

uint64_t __71___PASLPWriterV1__valueWordForObjectGraph_allocContext_recursionDepth___block_invoke_5(uint64_t a1, void **a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 bytes];
  v6 = [v4 length] | 0x2000000000;
  v7 = *a2;
  *&value = v5;
  *(&value + 1) = v6;
  v8 = CFSetGetValue(v7[2], &value);
  if (v8)
  {
    v9 = *v8 - **a2;
    if ((v9 & 0xFFFFFFFC) != 0)
    {
      v10 = *(*v8 - 4);
      if ([v4 length] == v10)
      {
        *(a2 + 2) = (v9 + 2147483644) | 0x80000000;
        *(a2 + 12) = 1;
      }
    }

    if ((*(a2 + 12) & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(value) = 138412290;
      *(&value + 4) = @"Warning: unexpectedly found aligned data region without matching size prefix.";
      _os_log_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "_PASLazyPlist: %@", &value, 0xCu);
    }
  }

  v11 = *a2;
  if ((*(a2 + 12) & 1) == 0)
  {
    *bumpChecked(v11, 4) = 0;
    alignChecked(*a2, 0x20uLL);
    v12 = bumpChecked(*a2, [v4 length]);
    *(v12 - 1) = [v4 length];
    memcpy(v12, [v4 bytes], objc_msgSend(v4, "length"));
    cacheBuffer((*a2)[2], (*a2)[4], v12, v6);
    v11 = *a2;
    *(a2 + 2) = (v12 - **a2 + 2147483644) | 0x80000000;
    *(a2 + 12) = 1;
  }

  ++*(*(v11 + 32) + 64);
  *((*a2)[4] + 72) += [v4 length];
  if ((*(a2 + 12) & 1) == 0)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[_PASLPWriterV1 _valueWordForObjectGraph:allocContext:recursionDepth:]_block_invoke"];
    [v15 handleFailureInFunction:v16 file:@"_PASLPWriterV1.m" lineNumber:708 description:{@"Invalid parameter not satisfying: %@", @"valueWordContext->hasValueWord"}];
  }

  v13 = *MEMORY[0x1E69E9840];
  return 1;
}

uint64_t __71___PASLPWriterV1__valueWordForObjectGraph_allocContext_recursionDepth___block_invoke_4(double a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  *(a3 + 8) = kSqlEventFired_block_invoke(a3, &v5, 0x100000008) | 0x60000000;
  *(a3 + 12) = 1;
  ++*(*(*a3 + 32) + 48);
  return 1;
}

uint64_t __71___PASLPWriterV1__valueWordForObjectGraph_allocContext_recursionDepth___block_invoke_3(double a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  v4 = a1;
  if (fabs(a1) <= 3.40282347e38 && v4 == a1 && (LOBYTE(v4) & 0xF) == 0)
  {
    *(a3 + 8) = (LODWORD(v4) >> 4) | 0x10000000;
    *(a3 + 12) = 1;
    ++*(*(*a3 + 32) + 32);
  }

  if ((*(a3 + 12) & 1) == 0)
  {
    *(a3 + 8) = kSqlEventFired_block_invoke(a3, &v8, 0x100000008) | 0x40000000;
    *(a3 + 12) = 1;
    ++*(*(*a3 + 32) + 40);
  }

  return 1;
}

uint64_t __71___PASLPWriterV1__valueWordForObjectGraph_allocContext_recursionDepth___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a3;
  if ((a3 + 0x7FFFFFF) > 0xFFFFFFD)
  {
    v4 = kSqlEventFired_block_invoke(a2, &v7, 0x100000008) | 0x20000000;
    v5 = 24;
  }

  else
  {
    v4 = a3 + 0x7FFFFFF;
    v5 = 16;
  }

  ++*(*(*a2 + 32) + v5);
  *(a2 + 8) = v4;
  *(a2 + 12) = 1;
  return 1;
}

uint64_t __71___PASLPWriterV1__valueWordForObjectGraph_allocContext_recursionDepth___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = 0xFFFFFFF;
  }

  else
  {
    v3 = 268435454;
  }

  *(a2 + 8) = v3;
  *(a2 + 12) = 1;
  ++*(*(*a2 + 32) + 8);
  return 1;
}

uint64_t __83___PASLPWriterV1__scanPlist_recursionDepth_sizeUpperBound_allDictionaryKeys_error___block_invoke_11(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_new();
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"The object is not plist-compatible: %@", @"plist contains value which is not plist-compatible"];
  [v3 setObject:v4 forKeyedSubscript:*MEMORY[0x1E696A578]];

  [v3 setObject:@"plist contains value which is not plist-compatible" forKeyedSubscript:*MEMORY[0x1E696A588]];
  v5 = objc_alloc(MEMORY[0x1E696ABC0]);
  v6 = [v3 copy];
  v7 = [v5 initWithDomain:@"_PASLazyPlistErrorDomain" code:6 userInfo:v6];

  v8 = *(a2 + 24);
  *(a2 + 24) = v7;

  return 0;
}

uint64_t __83___PASLPWriterV1__scanPlist_recursionDepth_sizeUpperBound_allDictionaryKeys_error___block_invoke_9(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 1;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __83___PASLPWriterV1__scanPlist_recursionDepth_sizeUpperBound_allDictionaryKeys_error___block_invoke_10;
  v7[3] = &unk_1E77F29E8;
  v7[4] = &v8;
  v7[5] = a2;
  [v4 enumerateObjectsUsingBlock:v7];
  *(a2 + 8) += 8;
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __83___PASLPWriterV1__scanPlist_recursionDepth_sizeUpperBound_allDictionaryKeys_error___block_invoke_10(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v6 = objc_autoreleasePoolPush();
  if (([_PASLPWriterV1 _scanPlist:v7 recursionDepth:**(a1 + 40) + 1 sizeUpperBound:(*(a1 + 40) + 8) allDictionaryKeys:*(*(a1 + 40) + 16) error:(*(a1 + 40) + 24)]& 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  objc_autoreleasePoolPop(v6);
}

uint64_t __83___PASLPWriterV1__scanPlist_recursionDepth_sizeUpperBound_allDictionaryKeys_error___block_invoke_7(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 1;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __83___PASLPWriterV1__scanPlist_recursionDepth_sizeUpperBound_allDictionaryKeys_error___block_invoke_8;
  v7[3] = &unk_1E77F29A0;
  v7[4] = &v8;
  v7[5] = a2;
  [v4 enumerateKeysAndObjectsUsingBlock:v7];
  *(a2 + 8) += 8;
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __83___PASLPWriterV1__scanPlist_recursionDepth_sizeUpperBound_allDictionaryKeys_error___block_invoke_8(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v21 = a2;
  v7 = a3;
  v8 = objc_autoreleasePoolPush();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = @"plist contains dictionary key which is not a string";
LABEL_7:
    v14 = objc_opt_new();
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"The object is not plist-compatible: %@", v13];
    [v14 setObject:v15 forKeyedSubscript:*MEMORY[0x1E696A578]];

    [v14 setObject:v13 forKeyedSubscript:*MEMORY[0x1E696A588]];
    v16 = objc_alloc(MEMORY[0x1E696ABC0]);
    v17 = [v14 copy];
    v18 = [v16 initWithDomain:@"_PASLazyPlistErrorDomain" code:6 userInfo:v17];

    v19 = *(a1 + 40);
    v20 = *(v19 + 24);
    *(v19 + 24) = v18;

    goto LABEL_8;
  }

  v9 = [v21 UTF8String];
  if (!v9)
  {
    v13 = @"object contains NSString dictionary key which is not valid Unicode";
    goto LABEL_7;
  }

  v10 = v9;
  [*(*(a1 + 40) + 16) addObject:v21];
  v11 = strlen(v10);
  v12 = *(a1 + 40);
  *(v12 + 8) += v11 + 5;
  if (([_PASLPWriterV1 _scanPlist:v7 recursionDepth:*v12 + 1 sizeUpperBound:(v12 + 8) allDictionaryKeys:*(v12 + 16) error:(v12 + 24)]& 1) == 0)
  {
LABEL_8:
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  objc_autoreleasePoolPop(v8);
}

BOOL __83___PASLPWriterV1__scanPlist_recursionDepth_sizeUpperBound_allDictionaryKeys_error___block_invoke_6(int a1, uint64_t a2, id a3)
{
  v4 = [a3 UTF8String];
  v5 = v4;
  if (v4)
  {
    *(a2 + 8) += strlen(v4) + 8;
  }

  else
  {
    v6 = objc_opt_new();
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"The object is not plist-compatible: %@", @"plist contains NSString which is not valid Unicode"];
    [v6 setObject:v7 forKeyedSubscript:*MEMORY[0x1E696A578]];

    [v6 setObject:@"plist contains NSString which is not valid Unicode" forKeyedSubscript:*MEMORY[0x1E696A588]];
    v8 = objc_alloc(MEMORY[0x1E696ABC0]);
    v9 = [v6 copy];
    v10 = [v8 initWithDomain:@"_PASLazyPlistErrorDomain" code:6 userInfo:v9];

    v11 = *(a2 + 24);
    *(a2 + 24) = v10;
  }

  return v5 != 0;
}

@end