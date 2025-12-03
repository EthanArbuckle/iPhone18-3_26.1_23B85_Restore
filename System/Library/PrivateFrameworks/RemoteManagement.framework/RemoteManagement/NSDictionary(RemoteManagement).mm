@interface NSDictionary(RemoteManagement)
- (uint64_t)rm_atomicWriteToURL:()RemoteManagement error:;
@end

@implementation NSDictionary(RemoteManagement)

- (uint64_t)rm_atomicWriteToURL:()RemoteManagement error:
{
  v6 = a3;
  v13 = 0;
  v7 = [MEMORY[0x1E696AE40] dataWithPropertyList:self format:100 options:0 error:&v13];
  v8 = v13;
  if (v7)
  {
    v9 = [v7 rm_atomicWriteToURL:v6 error:a4];
  }

  else
  {
    v10 = +[RMLog nsdictionary_rm];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [NSDictionary(RemoteManagement) rm_atomicWriteToURL:v8 error:v10];
    }

    v9 = 0;
    if (a4 && v8)
    {
      v11 = v8;
      v9 = 0;
      *a4 = v8;
    }
  }

  return v9;
}

- (void)rm_atomicWriteToURL:()RemoteManagement error:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1E1168000, a2, OS_LOG_TYPE_ERROR, "Failed to convert to plist: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end