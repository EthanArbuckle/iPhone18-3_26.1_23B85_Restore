@interface HKSPSleepSettings
- (BOOL)_needsMigrationForCoder:(id)a3;
- (BOOL)isEqualToFeatureSettingsModel:(id)a3;
- (BOOL)sleepTrackingFeatureEnabled;
- (HKSPSleepSettings)init;
- (HKSPSleepSettings)initWithCoder:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)initFromObject:(id)a3;
- (id)mutableCopy;
- (id)objectWithSyncAnchor:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)_migrateForCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKSPSleepSettings

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendBool:-[HKSPSleepSettings watchSleepFeaturesEnabled](self withName:{"watchSleepFeaturesEnabled"), @"watchSleepFeaturesEnabled"}];
  v5 = [v3 appendBool:-[HKSPSleepSettings scheduledSleepMode](self withName:{"scheduledSleepMode"), @"scheduledSleepMode"}];
  v6 = NSStringFromHKSPSleepModeOptions([(HKSPSleepSettings *)self sleepModeOptions]);
  v7 = [v3 appendObject:v6 withName:@"sleepModeOptions"];

  v8 = [v3 appendBool:-[HKSPSleepSettings sleepTracking](self withName:{"sleepTracking"), @"sleepTracking"}];
  v9 = [v3 appendBool:-[HKSPSleepSettings timeInBedTracking](self withName:{"timeInBedTracking"), @"timeInBedTracking"}];
  v10 = [v3 appendBool:-[HKSPSleepSettings bedtimeReminders](self withName:{"bedtimeReminders"), @"bedtimeReminders"}];
  v11 = [v3 appendBool:-[HKSPSleepSettings chargingReminders](self withName:{"chargingReminders"), @"chargingReminders"}];
  v12 = [v3 appendBool:-[HKSPSleepSettings shareAcrossDevices](self withName:{"shareAcrossDevices"), @"shareAcrossDevices"}];

  return v3;
}

- (BOOL)isEqualToFeatureSettingsModel:(id)a3
{
  v4 = a3;
  LOBYTE(self) = [(HKSPSleepSettings *)self sleepTrackingFeatureEnabled];
  v5 = [v4 sleepTrackingFeatureEnabled];

  return self ^ v5 ^ 1;
}

- (BOOL)sleepTrackingFeatureEnabled
{
  v3 = [(HKSPSleepSettings *)self sleepTracking];
  if (v3)
  {

    LOBYTE(v3) = [(HKSPSleepSettings *)self watchSleepFeaturesEnabled];
  }

  return v3;
}

- (HKSPSleepSettings)init
{
  v6.receiver = self;
  v6.super_class = HKSPSleepSettings;
  v2 = [(HKSPSleepSettings *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_version = 11;
    v2->_watchSleepFeaturesEnabled = 1;
    v2->_sleepModeOptions = 1792;
    v2->_bedtimeReminders = 1;
    v2->_shareAcrossDevices = 1;
    v4 = v2;
  }

  return v3;
}

- (id)initFromObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(HKSPSleepSettings *)self init];
    HKSPCopyFromObject(v5, v6);
    v7 = [v5 syncAnchor];

    v8 = [v7 copyWithZone:0];
    syncAnchor = v6->_syncAnchor;
    v6->_syncAnchor = v8;

    self = v6;
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)objectWithSyncAnchor:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initFromObject:self];
  v6 = [v4 copyWithZone:0];

  v7 = v5[5];
  v5[5] = v6;

  return v5;
}

- (HKSPSleepSettings)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HKSPSleepSettings;
  v5 = [(HKSPSleepSettings *)&v11 init];
  v6 = v5;
  if (v5)
  {
    HKSPDecodeObjectWithCoder(v5, v4);
    if (([v4 hksp_serializationOptions] & 1) == 0)
    {
      v7 = [v4 decodeObjectOfClass:HKSPSyncAnchorClass() forKey:@"HKSPSettingsSyncAnchor"];
      syncAnchor = v6->_syncAnchor;
      v6->_syncAnchor = v7;
    }

    if ([(HKSPSleepSettings *)v6 _needsMigrationForCoder:v4])
    {
      [(HKSPSleepSettings *)v6 _migrateForCoder:v4];
    }

    v9 = v6;
  }

  return v6;
}

- (BOOL)_needsMigrationForCoder:(id)a3
{
  v3 = a3;
  v4 = ([v3 hksp_serializationOptions] & 1) != 0 && objc_msgSend(v3, "decodeIntegerForKey:", @"HKSPSettingsVersion") < 0xB;

  return v4;
}

- (void)_migrateForCoder:(id)a3
{
  v4 = a3;
  version = self->_version;
  if (version <= 1)
  {
    v6 = HKSPLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_269A84000, v6, OS_LOG_TYPE_DEFAULT, "Migrating charging reminders", buf, 2u);
    }

    self->_chargingReminders = self->_sleepModeOptions & 1;
    version = self->_version;
  }

  if (version <= 3)
  {
    v7 = HKSPLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_269A84000, v7, OS_LOG_TYPE_DEFAULT, "Migrating bedtime reminders", v17, 2u);
    }

    self->_bedtimeReminders = 1;
    version = self->_version;
  }

  if (version <= 4)
  {
    v8 = HKSPLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_269A84000, v8, OS_LOG_TYPE_DEFAULT, "Migrating use watch for sleep", v16, 2u);
    }

    self->_watchSleepFeaturesEnabled = 1;
    version = self->_version;
  }

  if (version <= 8)
  {
    v9 = HKSPLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_269A84000, v9, OS_LOG_TYPE_DEFAULT, "Migrating Legacy Settings", v15, 2u);
    }

    self->_sleepModeOptions |= 0x700uLL;
    version = self->_version;
  }

  if (version <= 9)
  {
    v10 = HKSPLogForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_269A84000, v10, OS_LOG_TYPE_DEFAULT, "Migrating Sleep Lock Screen", v14, 2u);
    }

    sleepModeOptions = self->_sleepModeOptions;
    if ((sleepModeOptions & 0x40) != 0)
    {
      self->_sleepModeOptions = sleepModeOptions | 0x4000;
    }

    version = self->_version;
  }

  if (version <= 0xA)
  {
    v12 = HKSPLogForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_269A84000, v12, OS_LOG_TYPE_DEFAULT, "Migrating share across devices", v13, 2u);
    }

    self->_shareAcrossDevices = 1;
  }

  self->_version = 11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  HKSPEncodeObjectWithCoder(self, v4);
  if (([v4 hksp_serializationOptions] & 1) == 0)
  {
    [v4 encodeObject:self->_syncAnchor forKey:@"HKSPSettingsSyncAnchor"];
  }
}

- (id)mutableCopy
{
  v3 = [HKSPMutableSleepSettings alloc];

  return [(HKSPMutableSleepSettings *)v3 initFromObject:self];
}

- (id)succinctDescription
{
  v2 = [(HKSPSleepSettings *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(HKSPSleepSettings *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

@end