@interface UIApplicationEndBackgroundTask
@end

@implementation UIApplicationEndBackgroundTask

void ___UIApplicationEndBackgroundTask_block_invoke(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(__UILogGetCategoryCachedImpl("BackgroundTask", &qword_1ED49E290) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[7];
    v4 = a1[4];
    v5 = a1[5];
    *buf = 138478339;
    v15 = v4;
    v16 = 2048;
    v17 = v3;
    v18 = 2113;
    v19 = v5;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEFAULT, "Decrementing reference count for assertion %{private}@ (used by background task with identifier %lu: %{private}@)", buf, 0x20u);
  }

  v6 = qword_1ED49E268;
  v7 = a1[4];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = ___UIApplicationEndBackgroundTask_block_invoke_79;
  v10[3] = &unk_1E710ADA0;
  v8 = v7;
  v9 = a1[7];
  v12 = a1[6];
  v13 = v9;
  v11 = v8;
  [v6 decrementReferenceForObject:v8 invalidationHandler:v10];
}

uint64_t ___UIApplicationEndBackgroundTask_block_invoke_79(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED49E260;
  if (qword_1ED49E260 == *(a1 + 32))
  {
    qword_1ED49E260 = 0;
  }

  v3 = *(__UILogGetCategoryCachedImpl("BackgroundTask", &qword_1ED49E298) + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 48);
    v7 = 138412546;
    v8 = v4;
    v9 = 2048;
    v10 = v5;
    _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEFAULT, "Will invalidate assertion: %@ for task identifier: %lu", &v7, 0x16u);
  }

  result = [*(a1 + 32) invalidate];
  if (!qword_1ED49E260)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  return result;
}

@end