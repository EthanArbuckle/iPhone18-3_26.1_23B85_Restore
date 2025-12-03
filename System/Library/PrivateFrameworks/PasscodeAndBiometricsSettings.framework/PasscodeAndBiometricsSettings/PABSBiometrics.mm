@interface PABSBiometrics
+ (id)identities;
+ (id)sharedInstance;
- (BOOL)isBiometricEditingAllowed;
- (BOOL)isEnrolledInFaceID;
- (BOOL)isFingerprintUnlockAllowed;
- (BOOL)isPeriocularEnrollmentSupported;
- (BOOL)isTouchIDUnlockRestricted;
- (BOOL)removeIdentity:(id)identity;
- (BOOL)setName:(id)name forIdentity:(id)identity;
- (BOOL)shouldRestrictFeaturesRequiringEnrollment;
- (PABSBiometrics)init;
- (id)deviceForType:(int64_t)type;
- (id)identitiesForIdentityType:(int64_t)type;
- (id)nextIdentityNameForIdentityType:(int64_t)type;
- (int64_t)deviceTypeForIdentityType:(int64_t)type;
- (int64_t)maximumIdentityCountForIdentityType:(int64_t)type;
- (void)init;
- (void)isPeriocularEnrollmentSupported;
- (void)removeIdentity:(id)identity completion:(id)completion;
- (void)setName:(id)name forIdentity:(id)identity completion:(id)completion;
@end

@implementation PABSBiometrics

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__PABSBiometrics_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_sharedInstance;

  return v2;
}

uint64_t __32__PABSBiometrics_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedInstance_sharedInstance = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

- (PABSBiometrics)init
{
  v32 = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = PABSBiometrics;
  v2 = [(PABSBiometrics *)&v24 init];
  if (v2)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    availableDevices = [MEMORY[0x277CF1BC0] availableDevices];
    v4 = [availableDevices countByEnumeratingWithState:&v20 objects:v31 count:16];
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = v4;
    v6 = *v21;
    while (1)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(availableDevices);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        type = [v8 type];
        if (type == 1)
        {
          v18 = 0;
          v14 = [MEMORY[0x277CF1BD8] deviceWithDescriptor:v8 error:&v18];
          v11 = v18;
          touchIDDevice = v2->_touchIDDevice;
          v2->_touchIDDevice = v14;

          if (v11)
          {
            goto LABEL_18;
          }

          v13 = PABSLogForCategory(0);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            [(PABSBiometrics *)&v27 init];
          }

          goto LABEL_15;
        }

        if (type == 2)
        {
          v19 = 0;
          v10 = [MEMORY[0x277CF1BD0] deviceWithDescriptor:v8 error:&v19];
          v11 = v19;
          pearlDevice = v2->_pearlDevice;
          v2->_pearlDevice = v10;

          if (v11)
          {
            goto LABEL_18;
          }

          v13 = PABSLogForCategory(0);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            [(PABSBiometrics *)&v29 init];
          }

LABEL_15:

          goto LABEL_18;
        }

        v11 = PABSLogForCategory(0);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [(PABSBiometrics *)v25 init:v8];
        }

LABEL_18:
      }

      v5 = [availableDevices countByEnumeratingWithState:&v20 objects:v31 count:16];
      if (!v5)
      {
LABEL_20:

        break;
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v2;
}

+ (id)identities
{
  manager = [MEMORY[0x277CF1BF8] manager];
  v3 = [manager identities:0];

  return v3;
}

- (id)identitiesForIdentityType:(int64_t)type
{
  v3 = [(PABSBiometrics *)self deviceForType:[(PABSBiometrics *)self deviceTypeForIdentityType:type]];
  v9 = 0;
  v4 = [v3 identitiesWithError:&v9];
  v5 = v9;
  if (v5)
  {
    v6 = PABSLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [PABSBiometrics identitiesForIdentityType:];
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
  v3 = [(PABSBiometrics *)self deviceForType:[(PABSBiometrics *)self deviceTypeForIdentityType:type]];
  v9 = 0;
  v4 = [v3 maxIdentityCountWithError:&v9];
  v5 = v9;
  integerValue = [v4 integerValue];

  if (v5)
  {
    v7 = PABSLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [PABSBiometrics maximumIdentityCountForIdentityType:];
    }

    integerValue = 0;
  }

  return integerValue;
}

- (BOOL)setName:(id)name forIdentity:(id)identity
{
  identityCopy = identity;
  [identityCopy setName:name];
  v7 = -[PABSBiometrics deviceForType:](self, "deviceForType:", -[PABSBiometrics deviceTypeForIdentityType:](self, "deviceTypeForIdentityType:", [identityCopy type]));
  v12 = 0;
  v8 = [v7 updateIdentity:identityCopy error:&v12];

  v9 = v12;
  if (v8)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"PABSBiometricsDidUpdate" object:0];
  }

  else
  {
    defaultCenter = PABSLogForCategory(0);
    if (os_log_type_enabled(defaultCenter, OS_LOG_TYPE_ERROR))
    {
      [PABSBiometrics setName:forIdentity:];
    }
  }

  return v8;
}

- (void)setName:(id)name forIdentity:(id)identity completion:(id)completion
{
  completionCopy = completion;
  identityCopy = identity;
  [identityCopy setName:name];
  v10 = -[PABSBiometrics deviceForType:](self, "deviceForType:", -[PABSBiometrics deviceTypeForIdentityType:](self, "deviceTypeForIdentityType:", [identityCopy type]));
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __49__PABSBiometrics_setName_forIdentity_completion___block_invoke;
  v12[3] = &unk_279A03300;
  v13 = completionCopy;
  v11 = completionCopy;
  [v10 updateIdentity:identityCopy reply:v12];
}

void __49__PABSBiometrics_setName_forIdentity_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_1);
  }

  else
  {
    v6 = PABSLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [PABSBiometrics setName:forIdentity:];
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__PABSBiometrics_setName_forIdentity_completion___block_invoke_2;
  block[3] = &unk_279A03780;
  v7 = *(a1 + 32);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __49__PABSBiometrics_setName_forIdentity_completion___block_invoke_6()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"PABSBiometricsDidUpdate" object:0];
}

uint64_t __49__PABSBiometrics_setName_forIdentity_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 32));
  }

  return result;
}

- (BOOL)removeIdentity:(id)identity
{
  identityCopy = identity;
  v5 = -[PABSBiometrics deviceForType:](self, "deviceForType:", -[PABSBiometrics deviceTypeForIdentityType:](self, "deviceTypeForIdentityType:", [identityCopy type]));
  v10 = 0;
  v6 = [v5 removeIdentity:identityCopy error:&v10];

  v7 = v10;
  if (v6)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"PABSBiometricsDidUpdate" object:0];
  }

  else
  {
    defaultCenter = PABSLogForCategory(0);
    if (os_log_type_enabled(defaultCenter, OS_LOG_TYPE_ERROR))
    {
      [PABSBiometrics removeIdentity:];
    }
  }

  return v6;
}

- (void)removeIdentity:(id)identity completion:(id)completion
{
  completionCopy = completion;
  identityCopy = identity;
  v8 = -[PABSBiometrics deviceForType:](self, "deviceForType:", -[PABSBiometrics deviceTypeForIdentityType:](self, "deviceTypeForIdentityType:", [identityCopy type]));
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __44__PABSBiometrics_removeIdentity_completion___block_invoke;
  v10[3] = &unk_279A03300;
  v11 = completionCopy;
  v9 = completionCopy;
  [v8 removeIdentity:identityCopy reply:v10];
}

void __44__PABSBiometrics_removeIdentity_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_10);
  }

  else
  {
    v6 = PABSLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [PABSBiometrics removeIdentity:];
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__PABSBiometrics_removeIdentity_completion___block_invoke_2;
  block[3] = &unk_279A03780;
  v7 = *(a1 + 32);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __44__PABSBiometrics_removeIdentity_completion___block_invoke_8()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"PABSBiometricsDidUpdate" object:0];
}

uint64_t __44__PABSBiometrics_removeIdentity_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 32));
  }

  return result;
}

- (BOOL)isPeriocularEnrollmentSupported
{
  pearlDevice = [(PABSBiometrics *)self pearlDevice];

  if (!pearlDevice)
  {
    return 0;
  }

  pearlDevice2 = [(PABSBiometrics *)self pearlDevice];
  v10 = 0;
  v5 = [pearlDevice2 supportsPeriocularEnrollmentWithError:&v10];
  v6 = v10;

  if (v5)
  {
    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    v8 = PABSLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [PABSBiometrics isPeriocularEnrollmentSupported];
    }

    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)deviceForType:(int64_t)type
{
  if (type == 1)
  {
    touchIDDevice = [(PABSBiometrics *)self touchIDDevice];
  }

  else if (type == 2)
  {
    touchIDDevice = [(PABSBiometrics *)self pearlDevice];
  }

  else
  {
    v4 = PABSLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [PABSBiometrics deviceForType:];
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
    v4 = PABSLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [PABSBiometrics deviceTypeForIdentityType:];
    }

    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return typeCopy;
}

- (id)nextIdentityNameForIdentityType:(int64_t)type
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB58] set];
  v39 = 0u;
  v40 = 0u;
  v38 = 0u;
  v37 = 0u;
  v5 = +[PABSBiometrics sharedInstance];
  v6 = [v5 identitiesForIdentityType:type];

  v7 = [v6 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v7)
  {
    v8 = *v38;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v38 != v8)
        {
          objc_enumerationMutation(v6);
        }

        name = [*(*(&v37 + 1) + 8 * i) name];
        if (name)
        {
          [v4 addObject:name];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v7);
  }

  v11 = +[PABSBiometrics sharedInstance];
  v12 = [v11 maximumIdentityCountForIdentityType:type];

  v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:v12];
  v14 = objc_alloc_init(MEMORY[0x277CCABB8]);
  [v14 setNumberStyle:0];
  if (v12)
  {
    for (j = 1; j <= v12; ++j)
    {
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:j];
      v17 = [v14 stringFromNumber:v16];

      v18 = MEMORY[0x277CCACA8];
      if (type == 1)
      {
        v21 = PABS_LocalizedStringForPasscodeLock(@"IDENTITY_NAME_FORMAT_TOUCH_ID");
        v20 = [v18 stringWithFormat:v21, v17];
      }

      else if (type == 2)
      {
        v19 = PABS_LocalizedStringForPasscodeLock(@"IDENTITY_NAME_FORMAT_FACE_ID");
        v20 = [v18 stringWithFormat:v19, v17];
      }

      else
      {
        v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown Identity %@", v17];
      }

      [v13 addObject:v20];
    }
  }

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __50__PABSBiometrics_nextIdentityNameForIdentityType___block_invoke;
  v35[3] = &unk_279A037A8;
  v22 = v4;
  v36 = v22;
  v23 = [v13 indexesOfObjectsPassingTest:v35];
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0x7FFFFFFFFFFFFFFFLL;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __50__PABSBiometrics_nextIdentityNameForIdentityType___block_invoke_2;
  v28[3] = &unk_279A037D0;
  v24 = v22;
  v29 = v24;
  v30 = &v31;
  [v23 enumerateRangesWithOptions:2 usingBlock:v28];
  if (v32[3] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v25 = 0;
  }

  else
  {
    v25 = [v13 objectAtIndex:?];
  }

  _Block_object_dispose(&v31, 8);
  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

unint64_t __50__PABSBiometrics_nextIdentityNameForIdentityType___block_invoke_2(uint64_t a1, unint64_t a2, unint64_t a3, _BYTE *a4)
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

- (BOOL)isBiometricEditingAllowed
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  isFingerprintModificationAllowed = [mEMORY[0x277D262A0] isFingerprintModificationAllowed];

  return isFingerprintModificationAllowed;
}

- (BOOL)shouldRestrictFeaturesRequiringEnrollment
{
  identities = [objc_opt_class() identities];
  if ([identities count])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = ![(PABSBiometrics *)self isBiometricEditingAllowed];
  }

  return v4;
}

- (BOOL)isFingerprintUnlockAllowed
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [mEMORY[0x277D262A0] effectiveBoolValueForSetting:*MEMORY[0x277D25EC0]] == 1;

  return v3;
}

- (BOOL)isTouchIDUnlockRestricted
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v4 = ([mEMORY[0x277D262A0] isBoolSettingLockedDownByRestrictions:*MEMORY[0x277D25EC0]] & 1) != 0 || -[PABSBiometrics shouldRestrictFeaturesRequiringEnrollment](self, "shouldRestrictFeaturesRequiringEnrollment");

  return v4;
}

- (BOOL)isEnrolledInFaceID
{
  v2 = [(PABSBiometrics *)self identitiesForIdentityType:2];
  v3 = [v2 count] != 0;

  return v3;
}

- (void)init
{
  type = [a2 type];
  *self = 134217984;
  *a3 = type;
}

- (void)identitiesForIdentityType:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)maximumIdentityCountForIdentityType:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setName:forIdentity:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1(&dword_25E0E9000, v0, v1, "An error occured while updating the identity name: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)removeIdentity:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1(&dword_25E0E9000, v0, v1, "An error occured while removing the identity: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)isPeriocularEnrollmentSupported
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1(&dword_25E0E9000, v0, v1, "Failed to check periocular support status: %@.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)deviceForType:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  v6 = *MEMORY[0x277D85DE8];
}

- (void)deviceTypeForIdentityType:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  v6 = *MEMORY[0x277D85DE8];
}

@end