@interface PKBiometrics
+ (id)sharedInstance;
- (BOOL)isPeriocularEnrollmentSupported;
- (BOOL)removeIdentity:(id)identity;
- (BOOL)setName:(id)name forIdentity:(id)identity;
- (PKBiometrics)init;
- (id)deviceForType:(int64_t)type;
- (id)identitiesForIdentityType:(int64_t)type;
- (id)nextIdentityNameForIdentityType:(int64_t)type;
- (int64_t)deviceTypeForIdentityType:(int64_t)type;
- (int64_t)maximumIdentityCountForIdentityType:(int64_t)type;
- (void)init;
@end

@implementation PKBiometrics

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__PKBiometrics_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_sharedInstance;

  return v2;
}

void __30__PKBiometrics_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(objc_opt_class());
  v1 = sharedInstance_sharedInstance;
  sharedInstance_sharedInstance = v0;
}

- (PKBiometrics)init
{
  v31 = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = PKBiometrics;
  v2 = [(PKBiometrics *)&v23 init];
  if (v2)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    availableDevices = [MEMORY[0x1E698F388] availableDevices];
    v4 = [availableDevices countByEnumeratingWithState:&v19 objects:v30 count:16];
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = v4;
    v6 = *v20;
    while (1)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(availableDevices);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        type = [v8 type];
        if (type == 1)
        {
          v17 = 0;
          v14 = [MEMORY[0x1E698F398] deviceWithDescriptor:v8 error:&v17];
          v11 = v17;
          touchIDDevice = v2->_touchIDDevice;
          v2->_touchIDDevice = v14;

          if (v11)
          {
            goto LABEL_18;
          }

          v13 = _PSLoggingFacility();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            [(PKBiometrics *)&v26 init];
          }

          goto LABEL_15;
        }

        if (type == 2)
        {
          v18 = 0;
          v10 = [MEMORY[0x1E698F390] deviceWithDescriptor:v8 error:&v18];
          v11 = v18;
          pearlDevice = v2->_pearlDevice;
          v2->_pearlDevice = v10;

          if (v11)
          {
            goto LABEL_18;
          }

          v13 = _PSLoggingFacility();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            [(PKBiometrics *)&v28 init];
          }

LABEL_15:

          goto LABEL_18;
        }

        v11 = _PSLoggingFacility();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [(PKBiometrics *)v24 init:v8];
        }

LABEL_18:
      }

      v5 = [availableDevices countByEnumeratingWithState:&v19 objects:v30 count:16];
      if (!v5)
      {
LABEL_20:

        return v2;
      }
    }
  }

  return v2;
}

- (id)identitiesForIdentityType:(int64_t)type
{
  v3 = [(PKBiometrics *)self deviceForType:[(PKBiometrics *)self deviceTypeForIdentityType:type]];
  v9 = 0;
  v4 = [v3 identitiesWithError:&v9];
  v5 = v9;
  if (v5)
  {
    v6 = _PSLoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [PKBiometrics identitiesForIdentityType:];
    }

    v7 = 0;
  }

  else
  {
    v7 = v4;
  }

  return v7;
}

- (int64_t)maximumIdentityCountForIdentityType:(int64_t)type
{
  v3 = [(PKBiometrics *)self deviceForType:[(PKBiometrics *)self deviceTypeForIdentityType:type]];
  v9 = 0;
  v4 = [v3 maxIdentityCountWithError:&v9];
  v5 = v9;
  integerValue = [v4 integerValue];

  if (v5)
  {
    v7 = _PSLoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [PKBiometrics maximumIdentityCountForIdentityType:];
    }

    integerValue = 0;
  }

  return integerValue;
}

- (BOOL)setName:(id)name forIdentity:(id)identity
{
  identityCopy = identity;
  [identityCopy setName:name];
  v7 = -[PKBiometrics deviceForType:](self, "deviceForType:", -[PKBiometrics deviceTypeForIdentityType:](self, "deviceTypeForIdentityType:", [identityCopy type]));
  v12 = 0;
  v8 = [v7 updateIdentity:identityCopy error:&v12];

  v9 = v12;
  if (v8)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"PKBiometricsDidUpdate" object:0];
  }

  else
  {
    defaultCenter = _PSLoggingFacility();
    if (os_log_type_enabled(defaultCenter, OS_LOG_TYPE_ERROR))
    {
      [PKBiometrics setName:forIdentity:];
    }
  }

  return v8;
}

- (BOOL)removeIdentity:(id)identity
{
  identityCopy = identity;
  v5 = -[PKBiometrics deviceForType:](self, "deviceForType:", -[PKBiometrics deviceTypeForIdentityType:](self, "deviceTypeForIdentityType:", [identityCopy type]));
  v10 = 0;
  v6 = [v5 removeIdentity:identityCopy error:&v10];

  v7 = v10;
  if (v6)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"PKBiometricsDidUpdate" object:0];
  }

  else
  {
    defaultCenter = _PSLoggingFacility();
    if (os_log_type_enabled(defaultCenter, OS_LOG_TYPE_ERROR))
    {
      [PKBiometrics removeIdentity:];
    }
  }

  return v6;
}

- (BOOL)isPeriocularEnrollmentSupported
{
  pearlDevice = [(PKBiometrics *)self pearlDevice];

  if (!pearlDevice)
  {
    return 0;
  }

  pearlDevice2 = [(PKBiometrics *)self pearlDevice];
  v10 = 0;
  v5 = [pearlDevice2 supportsPeriocularEnrollmentWithError:&v10];
  v6 = v10;

  if (v5)
  {
    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    v8 = _PSLoggingFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [PKBiometrics isPeriocularEnrollmentSupported];
    }

    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)deviceForType:(int64_t)type
{
  if (type == 1)
  {
    touchIDDevice = [(PKBiometrics *)self touchIDDevice];
  }

  else if (type == 2)
  {
    touchIDDevice = [(PKBiometrics *)self pearlDevice];
  }

  else
  {
    v4 = _PSLoggingFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [PKBiometrics deviceForType:];
    }

    touchIDDevice = 0;
  }

  return touchIDDevice;
}

- (int64_t)deviceTypeForIdentityType:(int64_t)type
{
  typeCopy = type;
  if ((type - 1) >= 2)
  {
    v4 = _PSLoggingFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [PKBiometrics deviceTypeForIdentityType:];
    }

    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return typeCopy;
}

- (id)nextIdentityNameForIdentityType:(int64_t)type
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DFA8] set];
  v38 = 0u;
  v39 = 0u;
  v37 = 0u;
  v36 = 0u;
  v5 = +[PKBiometrics sharedInstance];
  v6 = [v5 identitiesForIdentityType:type];

  v7 = [v6 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v7)
  {
    v8 = *v37;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v37 != v8)
        {
          objc_enumerationMutation(v6);
        }

        name = [*(*(&v36 + 1) + 8 * i) name];
        if (name)
        {
          [v4 addObject:name];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v7);
  }

  v11 = +[PKBiometrics sharedInstance];
  v12 = [v11 maximumIdentityCountForIdentityType:type];

  v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:v12];
  v14 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  [v14 setNumberStyle:0];
  if (v12)
  {
    for (j = 1; j <= v12; ++j)
    {
      v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:j];
      v17 = [v14 stringFromNumber:v16];

      v18 = MEMORY[0x1E696AEC0];
      if (type == 1)
      {
        v21 = PSLocalizablePearlStringForKey(@"IDENTITY_NAME_FORMAT_TOUCH_ID");
        v20 = [v18 stringWithFormat:v21, v17];
      }

      else if (type == 2)
      {
        v19 = PSLocalizablePearlStringForKey(@"IDENTITY_NAME_FORMAT_FACE_ID");
        v20 = [v18 stringWithFormat:v19, v17];
      }

      else
      {
        v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown Identity %@", v17];
      }

      [v13 addObject:v20];
    }
  }

  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __48__PKBiometrics_nextIdentityNameForIdentityType___block_invoke;
  v34[3] = &unk_1E71DCA08;
  v22 = v4;
  v35 = v22;
  v23 = [v13 indexesOfObjectsPassingTest:v34];
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0x7FFFFFFFFFFFFFFFLL;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __48__PKBiometrics_nextIdentityNameForIdentityType___block_invoke_2;
  v27[3] = &unk_1E71DCA30;
  v24 = v22;
  v28 = v24;
  v29 = &v30;
  [v23 enumerateRangesWithOptions:2 usingBlock:v27];
  if (v31[3] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v25 = 0;
  }

  else
  {
    v25 = [v13 objectAtIndex:?];
  }

  _Block_object_dispose(&v30, 8);

  return v25;
}

unint64_t __48__PKBiometrics_nextIdentityNameForIdentityType___block_invoke_2(uint64_t a1, unint64_t a2, unint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) count];
  if (result >= a2 && result - a2 < a3)
  {
    result = [*(a1 + 32) count];
    a2 = result;
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  *a4 = 1;
  return result;
}

- (void)init
{
  type = [a2 type];
  *self = 134217984;
  *a3 = type;
}

- (void)identitiesForIdentityType:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)maximumIdentityCountForIdentityType:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end