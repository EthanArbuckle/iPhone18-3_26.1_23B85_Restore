@interface NSError
@end

@implementation NSError

void __47__NSError_SUCoreError___checkedIsSafeUserInfo___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __47__NSError_SUCoreError___checkedIsSafeUserInfo___block_invoke_2;
    v23[3] = &unk_1E86FC940;
    v10 = *(a1 + 32);
    v24 = v9;
    v25 = v10;
    [v9 enumerateObjectsUsingBlock:v23];

    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __47__NSError_SUCoreError___checkedIsSafeUserInfo___block_invoke_4;
    v22[3] = &unk_1E86FC968;
    v22[4] = *(a1 + 32);
    [v8 enumerateObjectsUsingBlock:v22];
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v7 isEqualToString:*MEMORY[0x1E696AA08]])
    {
      goto LABEL_9;
    }

LABEL_8:
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __47__NSError_SUCoreError___checkedIsSafeUserInfo___block_invoke_6;
    v21[3] = &unk_1E86FC990;
    v21[4] = *(a1 + 32);
    [v8 enumerateKeysAndObjectsUsingBlock:v21];
  }

  else
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    v11 = +[SUCoreErrorInformation safeUserInfoValueClasses];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __47__NSError_SUCoreError___checkedIsSafeUserInfo___block_invoke_8;
    v13[3] = &unk_1E86FC918;
    v14 = v8;
    v12 = v11;
    v15 = v12;
    v16 = &v17;
    [v12 enumerateObjectsUsingBlock:v13];
    if ((v18[3] & 1) == 0)
    {
      *(*(*(a1 + 32) + 8) + 24) = 0;
      *a4 = 1;
    }

    _Block_object_dispose(&v17, 8);
  }

LABEL_9:
}

void __47__NSError_SUCoreError___checkedIsSafeUserInfo___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v9 = +[SUCoreErrorInformation safeUserInfoValueClasses];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __47__NSError_SUCoreError___checkedIsSafeUserInfo___block_invoke_3;
  v12[3] = &unk_1E86FC918;
  v10 = v8;
  v13 = v10;
  v11 = v9;
  v14 = v11;
  v15 = &v16;
  [v11 enumerateObjectsUsingBlock:v12];
  if ((v17[3] & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }

  _Block_object_dispose(&v16, 8);
}

void __47__NSError_SUCoreError___checkedIsSafeUserInfo___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) objectAtIndexedSubscript:?];
  LOBYTE(v6) = objc_opt_isKindOfClass();

  if (v6)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void __47__NSError_SUCoreError___checkedIsSafeUserInfo___block_invoke_4(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v6 = +[SUCoreErrorInformation safeUserInfoValueClasses];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__NSError_SUCoreError___checkedIsSafeUserInfo___block_invoke_5;
  v9[3] = &unk_1E86FC918;
  v7 = v5;
  v10 = v7;
  v8 = v6;
  v11 = v8;
  v12 = &v13;
  [v8 enumerateObjectsUsingBlock:v9];
  if ((v14[3] & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a3 = 1;
  }

  _Block_object_dispose(&v13, 8);
}

void __47__NSError_SUCoreError___checkedIsSafeUserInfo___block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) objectAtIndexedSubscript:?];
  LOBYTE(v6) = objc_opt_isKindOfClass();

  if (v6)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void __47__NSError_SUCoreError___checkedIsSafeUserInfo___block_invoke_6(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v9 = +[SUCoreErrorInformation safeUserInfoValueClasses];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __47__NSError_SUCoreError___checkedIsSafeUserInfo___block_invoke_7;
    v11[3] = &unk_1E86FC918;
    v12 = v8;
    v10 = v9;
    v13 = v10;
    v14 = &v15;
    [v10 enumerateObjectsUsingBlock:v11];
    if ((v16[3] & 1) == 0)
    {
      *(*(*(a1 + 32) + 8) + 24) = 0;
      *a4 = 1;
    }

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }
}

void __47__NSError_SUCoreError___checkedIsSafeUserInfo___block_invoke_7(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) objectAtIndexedSubscript:?];
  LOBYTE(v6) = objc_opt_isKindOfClass();

  if (v6)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void __47__NSError_SUCoreError___checkedIsSafeUserInfo___block_invoke_8(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) objectAtIndexedSubscript:?];
  LOBYTE(v6) = objc_opt_isKindOfClass();

  if (v6)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a4 = 1;
  }
}

@end