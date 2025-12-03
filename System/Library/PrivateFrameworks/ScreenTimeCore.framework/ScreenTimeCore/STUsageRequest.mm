@interface STUsageRequest
+ (id)fetchOrCreateUsageRequestForLocalUserInContext:(id)context error:(id *)error;
+ (id)fetchOrCreateUsageRequestForRemoteUserWithDSID:(id)d inContext:(id)context error:(id *)error;
+ (id)fetchOrCreateUsageRequestForUser:(id)user inContext:(id)context error:(id *)error;
+ (id)fetchOrCreateUsageRequestForUserWithDSID:(id)d inContext:(id)context error:(id *)error;
+ (id)fetchRequestForLocalUsageRequests;
+ (id)fetchRequestForUsageRequestsThatAreForRemoteUsers;
@end

@implementation STUsageRequest

+ (id)fetchRequestForLocalUsageRequests
{
  fetchRequest = [self fetchRequest];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == NULL", @"forUserDSID"];
  [fetchRequest setPredicate:v3];

  return fetchRequest;
}

+ (id)fetchRequestForUsageRequestsThatAreForRemoteUsers
{
  fetchRequest = [self fetchRequest];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != NULL", @"forUserDSID"];
  [fetchRequest setPredicate:v3];

  return fetchRequest;
}

+ (id)fetchOrCreateUsageRequestForUserWithDSID:(id)d inContext:(id)context error:(id *)error
{
  dCopy = d;
  contextCopy = context;
  if ([dCopy longLongValue])
  {
    [STCoreUser fetchUserWithDSID:dCopy inContext:contextCopy error:error];
  }

  else
  {
    [STCoreUser fetchLocalUserInContext:contextCopy error:error];
  }
  v10 = ;
  if (v10)
  {
    v11 = [self fetchOrCreateUsageRequestForUser:v10 inContext:contextCopy error:error];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)fetchOrCreateUsageRequestForUser:(id)user inContext:(id)context error:(id *)error
{
  userCopy = user;
  contextCopy = context;
  localUserDeviceState = [userCopy localUserDeviceState];

  if (localUserDeviceState)
  {
    v11 = [self fetchOrCreateUsageRequestForLocalUserInContext:contextCopy error:error];
  }

  else
  {
    dsid = [userCopy dsid];
    v11 = [self fetchOrCreateUsageRequestForRemoteUserWithDSID:dsid inContext:contextCopy error:error];
  }

  return v11;
}

+ (id)fetchOrCreateUsageRequestForLocalUserInContext:(id)context error:(id *)error
{
  contextCopy = context;
  fetchRequestForLocalUsageRequests = [self fetchRequestForLocalUsageRequests];
  v8 = [fetchRequestForLocalUsageRequests execute:error];
  v9 = v8;
  if (v8)
  {
    if ([v8 count] >= 2)
    {
      v10 = +[STLog usage];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [STUsageRequest fetchOrCreateUsageRequestForLocalUserInContext:fetchRequestForLocalUsageRequests error:?];
      }
    }

    firstObject = [v9 firstObject];
    if (!firstObject)
    {
      firstObject = [[STUsageRequest alloc] initWithContext:contextCopy];
      v12 = objc_opt_new();
      [(STUsageRequest *)firstObject setRequestedDate:v12];
    }
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

+ (id)fetchOrCreateUsageRequestForRemoteUserWithDSID:(id)d inContext:(id)context error:(id *)error
{
  dCopy = d;
  contextCopy = context;
  fetchRequest = [self fetchRequest];
  dCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"forUserDSID", dCopy];
  [fetchRequest setPredicate:dCopy];

  v12 = [fetchRequest execute:error];
  v13 = v12;
  if (v12)
  {
    if ([v12 count] >= 2)
    {
      v14 = +[STLog usage];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [STUsageRequest fetchOrCreateUsageRequestForLocalUserInContext:fetchRequest error:?];
      }
    }

    firstObject = [v13 firstObject];
    if (!firstObject)
    {
      firstObject = [[STUsageRequest alloc] initWithContext:contextCopy];
      v16 = objc_opt_new();
      [(STUsageRequest *)firstObject setRequestedDate:v16];

      [(STUsageRequest *)firstObject setForUserDSID:dCopy];
    }
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

+ (void)fetchOrCreateUsageRequestForLocalUserInContext:(void *)a1 error:.cold.1(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [a1 predicate];
  OUTLINED_FUNCTION_3_2(&dword_1B831F000, v2, v3, "There was more than 1 usage request for %{public}@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

@end