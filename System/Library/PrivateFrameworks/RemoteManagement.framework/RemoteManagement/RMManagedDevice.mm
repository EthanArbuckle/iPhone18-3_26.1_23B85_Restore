@interface RMManagedDevice
+ (RMManagedDevice)currentManagedDevice;
- (BOOL)isMDMEnrolled;
- (BOOL)isSupervised;
- (NSString)mdmProfileIdentifier;
- (id)getPropertyForKey:(id)a3 scope:(int64_t)a4;
- (void)refreshState;
- (void)setProperty:(id)a3 forKey:(id)a4 scope:(int64_t)a5;
@end

@implementation RMManagedDevice

+ (RMManagedDevice)currentManagedDevice
{
  if (currentManagedDevice_onceToken != -1)
  {
    +[RMManagedDevice currentManagedDevice];
  }

  v3 = currentManagedDevice_currentManagedDevice;

  return v3;
}

uint64_t __39__RMManagedDevice_currentManagedDevice__block_invoke()
{
  currentManagedDevice_currentManagedDevice = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)isSupervised
{
  v2 = [MEMORY[0x1E69AD420] sharedConfiguration];
  [v2 refreshDetailsFromDisk];
  v3 = [v2 isSupervised];

  return v3;
}

- (BOOL)isMDMEnrolled
{
  v2 = [MEMORY[0x1E69AD428] sharedConfiguration];
  [v2 refreshDetailsFromDisk];
  v3 = [v2 managingProfileIdentifier];
  v4 = v3 != 0;

  return v4;
}

- (NSString)mdmProfileIdentifier
{
  v2 = [MEMORY[0x1E69AD428] sharedConfiguration];
  [v2 refreshDetailsFromDisk];
  v3 = [v2 managingProfileIdentifier];

  return v3;
}

- (void)refreshState
{
  v2 = [MEMORY[0x1E69AD428] sharedConfiguration];
  [v2 refreshDetailsFromDisk];
}

- (void)setProperty:(id)a3 forKey:(id)a4 scope:(int64_t)a5
{
  v7 = a4;
  v8 = MEMORY[0x1E69AD430];
  v9 = a3;
  v10 = [v8 sharedConfigurationForChannel:a5 != 1];
  [v10 refreshDetailsFromDisk];
  v13 = 0;
  [v10 setPropertyForKey:v7 value:v9 error:&v13];

  v11 = v13;
  if (v11)
  {
    v12 = +[RMLog managedDevice];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [RMManagedDevice setProperty:forKey:scope:];
    }
  }
}

- (id)getPropertyForKey:(id)a3 scope:(int64_t)a4
{
  v5 = a3;
  v6 = [MEMORY[0x1E69AD430] sharedConfigurationForChannel:a4 != 1];
  [v6 refreshDetailsFromDisk];
  v11 = 0;
  v7 = [v6 getPropertyForKey:v5 error:&v11];
  v8 = v11;
  if (v8)
  {
    v9 = +[RMLog managedDevice];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [RMManagedDevice getPropertyForKey:scope:];
    }
  }

  return v7;
}

- (void)setProperty:forKey:scope:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_1(&dword_1E1168000, v0, v1, "Failed to set property for key %{public}@ with error %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)getPropertyForKey:scope:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_1(&dword_1E1168000, v0, v1, "Failed to get property for key %{public}@ with error %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

@end