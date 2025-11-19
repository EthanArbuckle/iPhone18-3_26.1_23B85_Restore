@interface RMMCAdapter
+ (void)downloadDataAtURL:(id)a3 downloadURL:(id)a4 completionHandler:(id)a5;
+ (void)fetchDataAtURL:(id)a3 completionHandler:(id)a4;
@end

@implementation RMMCAdapter

+ (void)fetchDataAtURL:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[RMLog mcAdapter];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [RMMCAdapter fetchDataAtURL:v5 completionHandler:v7];
  }

  [MEMORY[0x1E69AD438] fetchDataAtURL:v5 completionHandler:v6];
}

+ (void)downloadDataAtURL:(id)a3 downloadURL:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = +[RMLog mcAdapter];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [RMMCAdapter downloadDataAtURL:v7 downloadURL:v10 completionHandler:?];
  }

  [MEMORY[0x1E69AD438] downloadDataAtURL:v7 downloadURL:v9 completionHandler:v8];
}

+ (void)fetchDataAtURL:(uint64_t)a1 completionHandler:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_debug_impl(&dword_1E1168000, a2, OS_LOG_TYPE_DEBUG, "Fetching MDM data at: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)downloadDataAtURL:(uint64_t)a1 downloadURL:(NSObject *)a2 completionHandler:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_debug_impl(&dword_1E1168000, a2, OS_LOG_TYPE_DEBUG, "Downloading MDM data at: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end