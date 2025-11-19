@interface HKSPAlarmConfiguration
- (BOOL)_needsMigrationForCoder:(id)a3;
- (BOOL)breaksThroughSilentMode;
- (HKSPAlarmConfiguration)init;
- (HKSPAlarmConfiguration)initWithCoder:(id)a3;
- (id)initFromObject:(id)a3;
- (id)mutableCopy;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)_migrateForCoder:(id)a3;
@end

@implementation HKSPAlarmConfiguration

- (HKSPAlarmConfiguration)init
{
  v9.receiver = self;
  v9.super_class = HKSPAlarmConfiguration;
  v2 = [(HKSPAlarmConfiguration *)&v9 init];
  v4 = v2;
  if (v2)
  {
    *&v2->_enabled = 257;
    v2->_version = 4;
    v2->_snoozeDuration = 540.0;
    v2->_breaksThroughSilentModeOptions = 2;
    LODWORD(v3) = 1.0;
    v5 = [MEMORY[0x277CCABB0] numberWithFloat:v3];
    soundVolume = v4->_soundVolume;
    v4->_soundVolume = v5;

    v7 = v4;
  }

  return v4;
}

- (id)initFromObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(HKSPAlarmConfiguration *)self init];
    HKSPCopyFromObject(v5, v6);

    self = v6;
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (HKSPAlarmConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKSPAlarmConfiguration;
  v5 = [(HKSPAlarmConfiguration *)&v9 init];
  v6 = v5;
  if (v5)
  {
    HKSPDecodeObjectWithCoder(v5, v4);
    if ([(HKSPAlarmConfiguration *)v6 _needsMigrationForCoder:v4])
    {
      [(HKSPAlarmConfiguration *)v6 _migrateForCoder:v4];
    }

    v7 = v6;
  }

  return v6;
}

- (BOOL)_needsMigrationForCoder:(id)a3
{
  v3 = a3;
  v4 = ([v3 hksp_serializationOptions] & 1) != 0 && objc_msgSend(v3, "decodeIntegerForKey:", @"HKSPAlarmVersion") < 4;

  return v4;
}

- (void)_migrateForCoder:(id)a3
{
  v4 = a3;
  version = self->_version;
  if (version <= 2)
  {
    v6 = HKSPLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_269A84000, v6, OS_LOG_TYPE_DEFAULT, "Migrating silent mode", buf, 2u);
    }

    self->_breaksThroughSilentModeOptions = 2;
    version = self->_version;
  }

  if (version <= 3)
  {
    v7 = HKSPLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_269A84000, v7, OS_LOG_TYPE_DEFAULT, "Migrating snooze duration", v8, 2u);
    }

    self->_snoozeDuration = 540.0;
  }

  self->_version = 4;
}

- (id)mutableCopy
{
  v3 = [HKSPMutableAlarmConfiguration alloc];

  return [(HKSPMutableAlarmConfiguration *)v3 initFromObject:self];
}

- (BOOL)breaksThroughSilentMode
{
  v3 = [MEMORY[0x277CCDD30] sharedBehavior];
  if ([v3 isAppleWatch])
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  return ([(HKSPAlarmConfiguration *)self breaksThroughSilentModeOptions]& v4) != 0;
}

- (id)succinctDescription
{
  v2 = [(HKSPAlarmConfiguration *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendBool:-[HKSPAlarmConfiguration isEnabled](self withName:{"isEnabled"), @"enabled"}];
  v5 = [v3 appendBool:-[HKSPAlarmConfiguration allowsSnooze](self withName:{"allowsSnooze"), @"allowsSnooze"}];
  [(HKSPAlarmConfiguration *)self snoozeDuration];
  v6 = [v3 appendTimeInterval:@"snoozeDuration" withName:1 decomposeUnits:?];
  v7 = [v3 appendBool:-[HKSPAlarmConfiguration breaksThroughSilentMode](self withName:{"breaksThroughSilentMode"), @"breaksThroughSilentMode"}];
  v8 = [(HKSPAlarmConfiguration *)self toneIdentifier];
  v9 = [v3 appendObject:v8 withName:@"toneIdentifier"];

  v10 = [(HKSPAlarmConfiguration *)self vibrationIdentifier];
  v11 = [v3 appendObject:v10 withName:@"vibrationIdentifier"];

  v12 = [(HKSPAlarmConfiguration *)self soundVolume];
  v13 = [v3 appendObject:v12 withName:@"soundVolume"];

  return v3;
}

@end