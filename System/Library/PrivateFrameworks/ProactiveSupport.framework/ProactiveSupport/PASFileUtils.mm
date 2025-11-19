@interface PASFileUtils
@end

@implementation PASFileUtils

uint64_t __80___PASFileUtils_iterSortedEntriesInDirectory_selectDirent_onSortedDirent_error___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "_PASFileUtils failed to initialize dirent db: %@", &v8, 0xCu);
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *MEMORY[0x1E69E9840];
  return 1;
}

void __80___PASFileUtils_iterSortedEntriesInDirectory_selectDirent_onSortedDirent_error___block_invoke_11(uint64_t a1)
{
  v31[1] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E696A588];
  while (1)
  {
    *__error() = 0;
    v3 = readdir(*(a1 + 56));
    if (!v3)
    {
      break;
    }

    v4 = v3;
    if (v3->d_name[0] != 46 || v3->d_name[1] && (v3->d_name[1] != 46 || v3->d_name[2]))
    {
      v5 = *(a1 + 40);
      if (!v5 || (*(v5 + 16))(v5, v4))
      {
        v6 = *(*(a1 + 48) + 8);
        v7 = *(v6 + 40);
        *(v6 + 40) = 0;

        v8 = *(a1 + 32);
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __80___PASFileUtils_iterSortedEntriesInDirectory_selectDirent_onSortedDirent_error___block_invoke_2;
        v24[3] = &__block_descriptor_56_e29_v16__0___PASSqliteStatement_8l;
        v24[4] = v4;
        v25 = *(a1 + 64);
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __80___PASFileUtils_iterSortedEntriesInDirectory_selectDirent_onSortedDirent_error___block_invoke_3;
        v23[3] = &unk_1E77F2590;
        v23[4] = *(a1 + 48);
        v9 = [v8 prepAndRunQuery:@"INSERT OR IGNORE INTO dirents (name onPrep:dirent) VALUES (:name onRow::dirent)" onError:{v24, 0, v23}];
        v10 = *(a1 + 48);
        if ((v9 & 1) == 0 && !*(*(v10 + 8) + 40))
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "_PASFileUtils failed to insert dirent for unknown reason", buf, 2u);
          }

          v30 = v2;
          v31[0] = @"_PASFileUtils failed to insert dirent for unknown reason";
          v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
          v12 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"_PASFileUtilsErrorDomain" code:1 userInfo:v11];
          v13 = *(*(a1 + 48) + 8);
          v14 = *(v13 + 40);
          *(v13 + 40) = v12;

          v10 = *(a1 + 48);
        }

        if (*(*(v10 + 8) + 40))
        {
          goto LABEL_20;
        }
      }
    }
  }

  if (*__error())
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v20 = __error();
      v21 = strerror(*v20);
      v22 = *__error();
      *buf = 136315394;
      v27 = v21;
      v28 = 1024;
      v29 = v22;
      _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "_PASFileUtils failed on readdir: %s (%d)", buf, 0x12u);
    }

    v15 = __error();
    v16 = posixError(*v15);
    v17 = *(*(a1 + 48) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;
  }

LABEL_20:
  v19 = *MEMORY[0x1E69E9840];
}

uint64_t __80___PASFileUtils_iterSortedEntriesInDirectory_selectDirent_onSortedDirent_error___block_invoke_41(void *a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v3 = [a2 getNSDataForColumn:0];
  if (!v3)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a1[5] object:a1[6] file:@"_PASFileUtils.m" lineNumber:115 description:@"Read nil blob from dirents query"];
  }

  bzero(v9, 0x418uLL);
  [v3 bytes];
  [v3 length];
  __memcpy_chk();
  (*(a1[4] + 16))();
  v4 = v8;

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t __80___PASFileUtils_iterSortedEntriesInDirectory_selectDirent_onSortedDirent_error___block_invoke_2_46(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "_PASFileUtils failed to read dirent row: %@", &v8, 0xCu);
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *MEMORY[0x1E69E9840];
  return 1;
}

void __80___PASFileUtils_iterSortedEntriesInDirectory_selectDirent_onSortedDirent_error___block_invoke_2(void *a1, void *a2)
{
  v7 = a2;
  v3 = *(a1[4] + 18);
  if (v3 >= 0x403)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a1[5] object:a1[6] file:@"_PASFileUtils.m" lineNumber:78 description:@"Bogus dirent size"];
  }

  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:a1[4] + 21];
  [v7 bindNamedParam:":name" toNSString:v4];

  v5 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:a1[4] length:v3 + 22];
  [v7 bindNamedParam:":dirent" toNSData:v5];
}

uint64_t __80___PASFileUtils_iterSortedEntriesInDirectory_selectDirent_onSortedDirent_error___block_invoke_3(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "_PASFileUtils failed to insert dirent: %@", &v8, 0xCu);
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *MEMORY[0x1E69E9840];
  return 1;
}

@end