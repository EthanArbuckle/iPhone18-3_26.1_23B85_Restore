@interface NSArray
- (id)elementsToString:(char)string debug:;
@end

@implementation NSArray

- (id)elementsToString:(char)string debug:
{
  selfCopy = self;
  if (self)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__0;
    v14 = __Block_byref_object_dispose__0;
    string = [MEMORY[0x1E696AD60] string];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __48__NSArray_RunningBoard__elementsToString_debug___block_invoke;
    v7[3] = &unk_1E7276338;
    v7[4] = &v10;
    v8 = a2;
    stringCopy = string;
    [selfCopy enumerateObjectsUsingBlock:v7];
    selfCopy = v11[5];
    _Block_object_dispose(&v10, 8);
  }

  return selfCopy;
}

void __48__NSArray_RunningBoard__elementsToString_debug___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v26 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = *(*(*(a1 + 32) + 8) + 40);
    v6 = *(a1 + 40);
    if (v6 >= 8)
    {
      v6 = 8;
    }

    v7 = &_indentPrefix_tabs[8 - v6];
    v8 = v26;
    [v5 appendFormat:@"%s%lu:{\n", v7, a3];
    v9 = *(*(*(a1 + 32) + 8) + 40);
    v10 = [v8 entriesToStringWithIndent:(*(a1 + 40) + 1) debug:*(a1 + 44)];

    [v9 appendFormat:@"%@", v10];
    v11 = *(a1 + 40);
    if (v11 >= 8)
    {
      v11 = 8;
    }

    [*(*(*(a1 + 32) + 8) + 40) appendFormat:@"%s}\n", &_indentPrefix_tabs[8 - v11], v23, v25];
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v13 = *(*(*(a1 + 32) + 8) + 40);
    v14 = *(a1 + 40);
    if (v14 >= 8)
    {
      v14 = 8;
    }

    v15 = &_indentPrefix_tabs[8 - v14];
    if (isKindOfClass)
    {
      v16 = v26;
      [v13 appendFormat:@"%s%lu:[\n", v15, a3];
      v17 = *(*(*(a1 + 32) + 8) + 40);
      v18 = *(a1 + 40);
      v19 = *(a1 + 44);
      v20 = [NSArray elementsToString:v16 debug:?];

      [v17 appendFormat:@"%@", v20];
      v21 = *(a1 + 40);
      if (v21 >= 8)
      {
        v21 = 8;
      }

      [*(*(*(a1 + 32) + 8) + 40) appendFormat:@"%s]\n", &_indentPrefix_tabs[8 - v21], v24, v25];
    }

    else if (*(a1 + 44) == 1)
    {
      [v13 appendFormat:@"%s%lu:%@\n", v15, a3, v26];
    }

    else
    {
      v22 = [v26 debugDescription];
      [v13 appendFormat:@"%s%lu:%@\n", v15, a3, v22];
    }
  }
}

@end