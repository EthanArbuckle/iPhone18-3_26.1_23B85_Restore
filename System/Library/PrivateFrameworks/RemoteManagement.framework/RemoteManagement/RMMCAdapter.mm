@interface RMMCAdapter
+ (void)downloadDataAtURL:(id)l downloadURL:(id)rL completionHandler:(id)handler;
+ (void)fetchDataAtURL:(id)l completionHandler:(id)handler;
@end

@implementation RMMCAdapter

+ (void)fetchDataAtURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v7 = +[RMLog mcAdapter];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [RMMCAdapter fetchDataAtURL:lCopy completionHandler:v7];
  }

  [MEMORY[0x1E69AD438] fetchDataAtURL:lCopy completionHandler:handlerCopy];
}

+ (void)downloadDataAtURL:(id)l downloadURL:(id)rL completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  rLCopy = rL;
  v10 = +[RMLog mcAdapter];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [RMMCAdapter downloadDataAtURL:lCopy downloadURL:v10 completionHandler:?];
  }

  [MEMORY[0x1E69AD438] downloadDataAtURL:lCopy downloadURL:rLCopy completionHandler:handlerCopy];
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