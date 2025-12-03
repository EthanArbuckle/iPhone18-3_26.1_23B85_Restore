@interface RMManagedDevice
+ (RMManagedDevice)currentManagedDevice;
- (BOOL)isMDMEnrolled;
- (BOOL)isSupervised;
- (NSString)mdmProfileIdentifier;
- (id)getPropertyForKey:(id)key scope:(int64_t)scope;
- (void)refreshState;
- (void)setProperty:(id)property forKey:(id)key scope:(int64_t)scope;
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
  mEMORY[0x1E69AD420] = [MEMORY[0x1E69AD420] sharedConfiguration];
  [mEMORY[0x1E69AD420] refreshDetailsFromDisk];
  isSupervised = [mEMORY[0x1E69AD420] isSupervised];

  return isSupervised;
}

- (BOOL)isMDMEnrolled
{
  mEMORY[0x1E69AD428] = [MEMORY[0x1E69AD428] sharedConfiguration];
  [mEMORY[0x1E69AD428] refreshDetailsFromDisk];
  managingProfileIdentifier = [mEMORY[0x1E69AD428] managingProfileIdentifier];
  v4 = managingProfileIdentifier != 0;

  return v4;
}

- (NSString)mdmProfileIdentifier
{
  mEMORY[0x1E69AD428] = [MEMORY[0x1E69AD428] sharedConfiguration];
  [mEMORY[0x1E69AD428] refreshDetailsFromDisk];
  managingProfileIdentifier = [mEMORY[0x1E69AD428] managingProfileIdentifier];

  return managingProfileIdentifier;
}

- (void)refreshState
{
  mEMORY[0x1E69AD428] = [MEMORY[0x1E69AD428] sharedConfiguration];
  [mEMORY[0x1E69AD428] refreshDetailsFromDisk];
}

- (void)setProperty:(id)property forKey:(id)key scope:(int64_t)scope
{
  keyCopy = key;
  v8 = MEMORY[0x1E69AD430];
  propertyCopy = property;
  v10 = [v8 sharedConfigurationForChannel:scope != 1];
  [v10 refreshDetailsFromDisk];
  v13 = 0;
  [v10 setPropertyForKey:keyCopy value:propertyCopy error:&v13];

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

- (id)getPropertyForKey:(id)key scope:(int64_t)scope
{
  keyCopy = key;
  v6 = [MEMORY[0x1E69AD430] sharedConfigurationForChannel:scope != 1];
  [v6 refreshDetailsFromDisk];
  v11 = 0;
  v7 = [v6 getPropertyForKey:keyCopy error:&v11];
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