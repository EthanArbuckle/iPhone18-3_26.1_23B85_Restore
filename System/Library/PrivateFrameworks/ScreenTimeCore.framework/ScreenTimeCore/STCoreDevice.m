@interface STCoreDevice
+ (id)fetchDeviceWithCoreDuetIdentifier:(id)a3 inContext:(id)a4 error:(id *)a5;
+ (id)fetchDeviceWithIdentifier:(id)a3 inContext:(id)a4 error:(id *)a5;
+ (id)fetchOrCreateDeviceWithIdentifier:(id)a3 inContext:(id)a4 error:(id *)a5;
+ (id)fetchOrCreateLocalDeviceInContext:(id)a3 error:(id *)a4;
+ (id)fetchRequest;
+ (id)fetchRequestForDevicesMissingUsage;
+ (id)fetchRequestForLocalDevices;
+ (id)fetchRequestForNonLocalDevices;
- (BOOL)_validateLocalDevice:(id)a3;
- (BOOL)_validateNumberOfLocalDevices:(id)a3;
- (BOOL)_validateRemoteDevice:(id)a3;
- (BOOL)_validateUniqueIdentifier:(id)a3;
- (BOOL)_validateUserDeviceStates:(id)a3;
- (BOOL)hasLegacyUsageData;
- (BOOL)validateForDelete:(id *)a3;
- (BOOL)validateForInsert:(id *)a3;
- (BOOL)validateForUpdate:(id *)a3;
@end

@implementation STCoreDevice

+ (id)fetchDeviceWithIdentifier:(id)a3 inContext:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = a3;
  v9 = +[STCoreDevice fetchRequest];
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"identifier", v8];

  [v9 setPredicate:v10];
  v19 = 0;
  v11 = [v7 executeFetchRequest:v9 error:&v19];

  v12 = v19;
  v13 = v12;
  if (v11)
  {
    if ([v11 count] < 2)
    {
      v17 = [v11 count];
      if (a5 && !v17)
      {
        *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"STErrorDomain" code:13 userInfo:0];
      }
    }

    else
    {
      v14 = +[STLog persistence];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        +[STCoreDevice fetchDeviceWithIdentifier:inContext:error:];
      }
    }

    v16 = [v11 firstObject];
  }

  else if (a5)
  {
    v15 = v12;
    v16 = 0;
    *a5 = v13;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)fetchDeviceWithCoreDuetIdentifier:(id)a3 inContext:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = a3;
  v9 = +[STUserDeviceState fetchRequest];
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"coreDuetIdentifier", v8];

  [v9 setPredicate:v10];
  v20 = 0;
  v11 = [v7 executeFetchRequest:v9 error:&v20];

  v12 = v20;
  v13 = v12;
  if (v11)
  {
    if ([v11 count] < 2)
    {
      v17 = [v11 count];
      if (a5 && !v17)
      {
        *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"STErrorDomain" code:13 userInfo:0];
      }
    }

    else
    {
      v14 = +[STLog persistence];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        +[STCoreDevice fetchDeviceWithCoreDuetIdentifier:inContext:error:];
      }
    }

    v18 = [v11 firstObject];
    v16 = [v18 device];
  }

  else if (a5)
  {
    v15 = v12;
    v16 = 0;
    *a5 = v13;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)fetchOrCreateDeviceWithIdentifier:(id)a3 inContext:(id)a4 error:(id *)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v19 = 0;
  v10 = [a1 fetchDeviceWithIdentifier:v8 inContext:v9 error:&v19];
  v11 = v19;
  v12 = v11;
  if (v10)
  {
LABEL_9:
    if (!a5)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v13 = [v11 domain];
  if (![v13 isEqualToString:@"STErrorDomain"])
  {
    v10 = 0;
LABEL_8:

    goto LABEL_9;
  }

  v14 = [v12 code];

  if (v14 == 13)
  {
    v15 = +[STLog screentime];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v21 = "+[STCoreDevice fetchOrCreateDeviceWithIdentifier:inContext:error:]";
      v22 = 2112;
      v23 = v8;
      _os_log_impl(&dword_1B831F000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s: Creating CoreDevice with deviceIdentifier: (%@)", buf, 0x16u);
    }

    v10 = [[STCoreDevice alloc] initWithContext:v9];
    [(STCoreDevice *)v10 setIdentifier:v8];
    v13 = v12;
    v12 = 0;
    goto LABEL_8;
  }

  v10 = 0;
  if (a5)
  {
LABEL_10:
    v16 = v12;
    *a5 = v12;
  }

LABEL_11:

  v17 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)fetchOrCreateLocalDeviceInContext:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = STGetDeviceUUID();
  v7 = [STCoreDevice fetchOrCreateDeviceWithIdentifier:v6 inContext:v5 error:a4];

  v8 = [v7 name];

  if (!v8)
  {
    v9 = STGetDeviceName();
    [v7 setName:v9];
  }

  if (![v7 platform])
  {
    [v7 setPlatform:2];
  }

  if (_os_feature_enabled_impl() && ([v7 platform] == 2 || objc_msgSend(v7, "platform") == 1) && (objc_msgSend(v7, "supportsPasscodeActivity") & 1) == 0)
  {
    [v7 setSupportsPasscodeActivity:1];
  }

  return v7;
}

+ (id)fetchRequest
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___STCoreDevice;
  v2 = objc_msgSendSuper2(&v4, sel_fetchRequest);

  return v2;
}

+ (id)fetchRequestForLocalDevices
{
  v2 = +[STCoreDevice fetchRequest];
  v3 = MEMORY[0x1E696AE18];
  v4 = STGetDeviceUUID();
  v5 = [v3 predicateWithFormat:@"%K == %@", @"identifier", v4];
  [v2 setPredicate:v5];

  return v2;
}

+ (id)fetchRequestForDevicesMissingUsage
{
  v2 = +[STCoreDevice fetchRequest];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(%K.@count == 0) AND (%K == NULL)", @"usages", @"localUserDeviceState"];
  [v2 setPredicate:v3];

  return v2;
}

+ (id)fetchRequestForNonLocalDevices
{
  v2 = +[STCoreDevice fetchRequest];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(%K == NULL)", @"localUserDeviceState"];
  [v2 setPredicate:v3];

  return v2;
}

- (BOOL)validateForUpdate:(id *)a3
{
  v11.receiver = self;
  v11.super_class = STCoreDevice;
  if (![(STCoreDevice *)&v11 validateForUpdate:?])
  {
    v5 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [STCoreDevice validateForUpdate:a3];
    }

    v7 = 0;
    goto LABEL_15;
  }

  if (_os_feature_enabled_impl())
  {
    v5 = objc_opt_new();
    [(STCoreDevice *)self _validateUniqueIdentifier:v5];
    [(STCoreDevice *)self _validateNumberOfLocalDevices:v5];
    v6 = [(STCoreDevice *)self localUserDeviceState];

    if (v6)
    {
      [(STCoreDevice *)self _validateLocalDevice:v5];
    }

    else
    {
      [(STCoreDevice *)self _validateRemoteDevice:v5];
    }

    [(STCoreDevice *)self _validateUserDeviceStates:v5];
    if ([v5 count])
    {
      v8 = +[STLog coreDataValidation];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [STCoreDevice validateForUpdate:?];
      }
    }

    v10.receiver = self;
    v10.super_class = STCoreDevice;
    v7 = [(NSManagedObject *)&v10 parseValidationErrors:a3 otherErrors:v5];
LABEL_15:

    return v7;
  }

  return 1;
}

- (BOOL)validateForInsert:(id *)a3
{
  v11.receiver = self;
  v11.super_class = STCoreDevice;
  if (![(STCoreDevice *)&v11 validateForInsert:?])
  {
    v5 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [STCoreDevice validateForInsert:a3];
    }

    v7 = 0;
    goto LABEL_15;
  }

  if (_os_feature_enabled_impl())
  {
    v5 = objc_opt_new();
    [(STCoreDevice *)self _validateUniqueIdentifier:v5];
    [(STCoreDevice *)self _validateNumberOfLocalDevices:v5];
    v6 = [(STCoreDevice *)self localUserDeviceState];

    if (v6)
    {
      [(STCoreDevice *)self _validateLocalDevice:v5];
    }

    else
    {
      [(STCoreDevice *)self _validateRemoteDevice:v5];
    }

    [(STCoreDevice *)self _validateUserDeviceStates:v5];
    if ([v5 count])
    {
      v8 = +[STLog coreDataValidation];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [STCoreDevice validateForInsert:?];
      }
    }

    v10.receiver = self;
    v10.super_class = STCoreDevice;
    v7 = [(NSManagedObject *)&v10 parseValidationErrors:a3 otherErrors:v5];
LABEL_15:

    return v7;
  }

  return 1;
}

- (BOOL)validateForDelete:(id *)a3
{
  v10.receiver = self;
  v10.super_class = STCoreDevice;
  if ([(STCoreDevice *)&v10 validateForDelete:?])
  {
    if (!_os_feature_enabled_impl())
    {
      return 1;
    }

    v5 = objc_opt_new();
    [(STCoreDevice *)self _validateNumberOfLocalDevices:v5];
    if ([v5 count])
    {
      v6 = +[STLog coreDataValidation];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [STCoreDevice validateForDelete:?];
      }
    }

    v9.receiver = self;
    v9.super_class = STCoreDevice;
    v7 = [(NSManagedObject *)&v9 parseValidationErrors:a3 otherErrors:v5];
  }

  else
  {
    v5 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [STCoreDevice validateForDelete:a3];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)_validateLocalDevice:(id)a3
{
  v29[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(STCoreDevice *)self identifier];
  v6 = STGetDeviceUUID();
  v7 = [v5 isEqualToString:v6];

  v8 = MEMORY[0x1E696A578];
  if ((v7 & 1) == 0)
  {
    v9 = MEMORY[0x1E696ABC0];
    v28 = *MEMORY[0x1E696A578];
    v29[0] = @"A local device must have the UUID of the local device.";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v11 = [v9 errorWithDomain:@"STErrorDomain" code:521 userInfo:v10];
    [v4 addObject:v11];
  }

  if ([(STCoreDevice *)self platform]!= 2)
  {
    v12 = MEMORY[0x1E696ABC0];
    v26 = *v8;
    v27 = @"A local device must match the platform of the current device.";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v14 = [v12 errorWithDomain:@"STErrorDomain" code:524 userInfo:v13];
    [v4 addObject:v14];
  }

  v15 = [(STCoreDevice *)self userDeviceStates];
  v16 = [(STCoreDevice *)self localUserDeviceState];
  v17 = [v15 containsObject:v16];

  if ((v17 & 1) == 0)
  {
    v18 = MEMORY[0x1E696ABC0];
    v24 = *v8;
    v25 = @"The localUserDeviceState of a local device MUST be in the device's userDeviceState.";
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v20 = [v18 errorWithDomain:@"STErrorDomain" code:523 userInfo:v19];
    [v4 addObject:v20];
  }

  v21 = [v4 count] == 0;

  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

- (BOOL)_validateNumberOfLocalDevices:(id)a3
{
  v21[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = +[STCoreDevice fetchRequest];
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != NULL", @"localUserDeviceState"];
  [v4 setPredicate:v5];

  v17 = 0;
  v6 = [v4 execute:&v17];
  v7 = v17;
  if (!v6)
  {
    [v3 addObject:v7];
LABEL_9:
    v12 = 0;
    goto LABEL_10;
  }

  if ([v6 count] >= 2)
  {
    v8 = MEMORY[0x1E696ABC0];
    v20 = *MEMORY[0x1E696A578];
    v21[0] = @"There must be one and only device with localUserDeviceState.";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v10 = v8;
    v11 = 518;
LABEL_8:
    v14 = [v10 errorWithDomain:@"STErrorDomain" code:v11 userInfo:v9];
    [v3 addObject:v14];

    goto LABEL_9;
  }

  if (![v6 count])
  {
    v13 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E696A578];
    v19 = @"There must be local device (with localUserDeviceState).";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v10 = v13;
    v11 = 519;
    goto LABEL_8;
  }

  v12 = 1;
LABEL_10:

  v15 = *MEMORY[0x1E69E9840];
  return v12;
}

- (BOOL)_validateRemoteDevice:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(STCoreDevice *)self platform];
  if (!v5)
  {
    v6 = MEMORY[0x1E696ABC0];
    v11 = *MEMORY[0x1E696A578];
    v12[0] = @"A remote device must have a valid platform.";
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v8 = [v6 errorWithDomain:@"STErrorDomain" code:526 userInfo:v7];
    [v4 addObject:v8];
  }

  v9 = *MEMORY[0x1E69E9840];
  return v5 != 0;
}

- (BOOL)_validateUniqueIdentifier:(id)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[STCoreDevice fetchRequest];
  v6 = MEMORY[0x1E696AE18];
  v7 = [(STCoreDevice *)self identifier];
  v8 = [v6 predicateWithFormat:@"%K == %@", @"identifier", v7];
  [v5 setPredicate:v8];

  v17 = 0;
  v9 = [v5 execute:&v17];
  v10 = v17;
  if (v9)
  {
    if ([v9 count] < 2)
    {
      v14 = 1;
      goto LABEL_7;
    }

    v11 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E696A578];
    v19[0] = @"There must be one and only device with a given UUID.";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v13 = [v11 errorWithDomain:@"STErrorDomain" code:520 userInfo:v12];
    [v4 addObject:v13];
  }

  else
  {
    [v4 addObject:v10];
  }

  v14 = 0;
LABEL_7:

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (BOOL)_validateUserDeviceStates:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(STCoreDevice *)self userDeviceStates];
  v6 = [v5 count];

  if (!v6)
  {
    v7 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A578];
    v13[0] = @"All devices must have at least 1 user device state.";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v9 = [v7 errorWithDomain:@"STErrorDomain" code:525 userInfo:v8];
    [v4 addObject:v9];
  }

  v10 = *MEMORY[0x1E69E9840];
  return v6 != 0;
}

- (BOOL)hasLegacyUsageData
{
  v2 = self;
  STCoreDevice.hasLegacyUsageData.getter();
  v4 = v3;

  return v4 & 1;
}

+ (void)fetchDeviceWithIdentifier:inContext:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_6();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)fetchDeviceWithCoreDuetIdentifier:inContext:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_6();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)validateForUpdate:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0_6();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)validateForUpdate:(void *)a1 .cold.2(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 localUserDeviceState];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_2_1(&dword_1B831F000, v2, v3, "%{public}s Validate for Update on Core Device failed for %{public}s user with error: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)validateForInsert:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0_6();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)validateForInsert:(void *)a1 .cold.2(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 localUserDeviceState];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_2_1(&dword_1B831F000, v2, v3, "%{public}s Validate for Update on Core Device failed for %{public}s user with error: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)validateForDelete:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0_6();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)validateForDelete:(void *)a1 .cold.2(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 localUserDeviceState];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_2_1(&dword_1B831F000, v2, v3, "%{public}s Validate for Update on Core Device failed for %{public}s user with error: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

@end