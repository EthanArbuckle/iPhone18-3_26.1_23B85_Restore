@interface PAS
@end

@implementation PAS

uint64_t ___PAS_sqlite3_column_nsdata_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = result;
    if (a3)
    {
      v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:a2 length:a3];
      v5 = *(*(v3 + 32) + 8);
      v6 = *(v5 + 40);
      *(v5 + 40) = v4;
    }

    else
    {
      v7 = *(*(result + 32) + 8);
      v8 = &unk_1EE71B5D8;
      v9 = *(v7 + 40);
      *(v7 + 40) = &unk_1EE71B5D8;
    }

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

void ___PAS_sqlite3_column_nssecurecoding_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a2 && a3)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:a2 length:a3 freeWhenDone:0];
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v12 = 0;
    v7 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v6 fromData:v4 error:&v12];
    v8 = v12;
    objc_autoreleasePoolPop(v5);
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v7;

    if (!*(*(*(a1 + 40) + 8) + 40) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v8;
      _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Can not unarchive data: %@", buf, 0xCu);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

@end