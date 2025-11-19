@interface STUserDeviceAddress
+ (id)fetchOrCreateUserDeviceAddressWithUser:(id)a3 device:(id)a4 context:(id)a5 error:(id *)a6;
@end

@implementation STUserDeviceAddress

+ (id)fetchOrCreateUserDeviceAddressWithUser:(id)a3 device:(id)a4 context:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [a1 fetchRequest];
  v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@ && %K == %@", @"user", v10, @"device", v11];
  [v13 setPredicate:v14];

  v15 = [v13 execute:a6];
  v16 = v15;
  if (v15)
  {
    if ([v15 count] >= 2)
    {
      v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"STErrorDomain" code:8 userInfo:0];
      v18 = +[STLog persistence];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [STUserDeviceAddress fetchOrCreateUserDeviceAddressWithUser:v17 device:v18 context:? error:?];
      }

      if (a6)
      {
        v19 = v17;
        *a6 = v17;
      }
    }

    v20 = [v16 firstObject];
    if (!v20)
    {
      v20 = [[STUserDeviceAddress alloc] initWithContext:v12];
      [(STUserDeviceAddress *)v20 setUser:v10];
      [(STUserDeviceAddress *)v20 setDevice:v11];
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

+ (void)fetchOrCreateUserDeviceAddressWithUser:(uint64_t)a1 device:(NSObject *)a2 context:error:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1B831F000, a2, OS_LOG_TYPE_ERROR, "Multiple user-device addresses for a user and device pairing in database: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end