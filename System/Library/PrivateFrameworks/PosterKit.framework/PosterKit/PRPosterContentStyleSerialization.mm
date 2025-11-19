@interface PRPosterContentStyleSerialization
+ (id)contentStyleForData:(id)a3 error:(id *)a4;
+ (id)dataForContentStyle:(id)a3 error:(id *)a4;
@end

@implementation PRPosterContentStyleSerialization

+ (id)dataForContentStyle:(id)a3 error:(id *)a4
{
  v5 = a3;
  v13 = 0;
  v6 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v13];
  v7 = v13;
  v8 = v7;
  if (v7)
  {
    if (a4)
    {
      v9 = v7;
      *a4 = v8;
    }

    v10 = PRLogModel();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(PRPosterContentStyleSerialization *)v5 dataForContentStyle:v8 error:v10];
    }

    v11 = 0;
  }

  else
  {
    v11 = [v6 copy];
  }

  return v11;
}

+ (id)contentStyleForData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = PRPosterContentStyleClasses();
  v7 = MEMORY[0x1E696ACD0];
  v8 = [MEMORY[0x1E695DFD8] setWithArray:v6];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __63__PRPosterContentStyleSerialization_contentStyleForData_error___block_invoke;
  v16[3] = &unk_1E7844440;
  v9 = v6;
  v17 = v9;
  v15 = 0;
  v10 = [v7 pf_unarchivedObjectOfClasses:v8 fromData:v5 strict:1 classReplacementBlock:v16 error:&v15];

  v11 = v15;
  if (!v10)
  {
    v12 = PRLogModel();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [PRPosterContentStyleSerialization contentStyleForData:v11 error:v12];
    }
  }

  if (a4 && v11)
  {
    v13 = v11;
    *a4 = v11;
  }

  return v10;
}

void __63__PRPosterContentStyleSerialization_contentStyleForData_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__PRPosterContentStyleSerialization_contentStyleForData_error___block_invoke_2;
  v6[3] = &unk_1E7844418;
  v7 = v3;
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v6];
}

uint64_t __63__PRPosterContentStyleSerialization_contentStyleForData_error___block_invoke_2(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v5 = *(a1 + 32);

    return [a2 performClassReplacementForKeyedUnarchiver:v5];
  }

  return result;
}

+ (void)dataForContentStyle:(os_log_t)log error:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_1A8AA7000, log, OS_LOG_TYPE_ERROR, "Failed to archive %@: %{public}@", &v3, 0x16u);
}

+ (void)contentStyleForData:(uint64_t)a1 error:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_1A8AA7000, a2, OS_LOG_TYPE_DEBUG, "Unable to unarchive content style: %{public}@", &v2, 0xCu);
}

@end