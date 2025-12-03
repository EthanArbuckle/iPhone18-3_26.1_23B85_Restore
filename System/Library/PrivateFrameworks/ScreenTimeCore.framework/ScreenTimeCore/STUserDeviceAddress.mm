@interface STUserDeviceAddress
+ (id)fetchOrCreateUserDeviceAddressWithUser:(id)user device:(id)device context:(id)context error:(id *)error;
@end

@implementation STUserDeviceAddress

+ (id)fetchOrCreateUserDeviceAddressWithUser:(id)user device:(id)device context:(id)context error:(id *)error
{
  userCopy = user;
  deviceCopy = device;
  contextCopy = context;
  fetchRequest = [self fetchRequest];
  deviceCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@ && %K == %@", @"user", userCopy, @"device", deviceCopy];
  [fetchRequest setPredicate:deviceCopy];

  v15 = [fetchRequest execute:error];
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

      if (error)
      {
        v19 = v17;
        *error = v17;
      }
    }

    firstObject = [v16 firstObject];
    if (!firstObject)
    {
      firstObject = [[STUserDeviceAddress alloc] initWithContext:contextCopy];
      [(STUserDeviceAddress *)firstObject setUser:userCopy];
      [(STUserDeviceAddress *)firstObject setDevice:deviceCopy];
    }
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
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