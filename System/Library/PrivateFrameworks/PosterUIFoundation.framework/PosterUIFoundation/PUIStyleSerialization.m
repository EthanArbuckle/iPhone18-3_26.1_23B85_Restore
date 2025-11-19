@interface PUIStyleSerialization
+ (id)dataForStyle:(id)a3 error:(id *)a4;
+ (id)styleForData:(id)a3 error:(id *)a4;
@end

@implementation PUIStyleSerialization

+ (id)dataForStyle:(id)a3 error:(id *)a4
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

    v10 = PUILogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(PUIStyleSerialization *)v5 dataForStyle:v8 error:v10];
    }

    v11 = 0;
  }

  else
  {
    v11 = v6;
  }

  return v11;
}

+ (id)styleForData:(id)a3 error:(id *)a4
{
  v16[5] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696ACD0];
  v6 = MEMORY[0x1E695DFD8];
  v7 = a3;
  v16[0] = objc_opt_class();
  v16[1] = objc_opt_class();
  v16[2] = objc_opt_class();
  v16[3] = objc_opt_class();
  v16[4] = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:5];
  v9 = [v6 setWithArray:v8];
  v15 = 0;
  v10 = [v5 _strictlyUnarchivedObjectOfClasses:v9 fromData:v7 error:&v15];

  v11 = v15;
  if (!v10)
  {
    v12 = PUILogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [PUIStyleSerialization styleForData:v11 error:v12];
    }
  }

  if (a4 && v11)
  {
    v13 = v11;
    *a4 = v11;
  }

  return v10;
}

+ (void)dataForStyle:(os_log_t)log error:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_1A8C85000, log, OS_LOG_TYPE_ERROR, "Failed to archive %@: %{public}@", &v3, 0x16u);
}

+ (void)styleForData:(uint64_t)a1 error:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_1A8C85000, a2, OS_LOG_TYPE_DEBUG, "Unable to unarchive content style: %{public}@", &v2, 0xCu);
}

@end