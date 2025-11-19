@interface HKSPSleepFocusConfiguration
+ (id)readFromDefaults:(id)a3;
- (BOOL)hasSleepFocusMode;
- (BOOL)isEqual:(id)a3;
- (HKSPSleepFocusConfiguration)initWithUUID:(id)a3 mirrorsFocusModes:(BOOL)a4 state:(unint64_t)a5;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)sleepFocusConfigurationUpdatingUUID:(id)a3 state:(unint64_t)a4;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)hash;
- (void)writeToDefaults:(id)a3;
@end

@implementation HKSPSleepFocusConfiguration

- (id)sleepFocusConfigurationUpdatingUUID:(id)a3 state:(unint64_t)a4
{
  v6 = a3;
  v7 = [[HKSPSleepFocusConfiguration alloc] initWithUUID:v6 mirrorsFocusModes:[(HKSPSleepFocusConfiguration *)self mirrorsFocusModes] state:a4];

  return v7;
}

- (HKSPSleepFocusConfiguration)initWithUUID:(id)a3 mirrorsFocusModes:(BOOL)a4 state:(unint64_t)a5
{
  v8 = a3;
  v14.receiver = self;
  v14.super_class = HKSPSleepFocusConfiguration;
  v9 = [(HKSPSleepFocusConfiguration *)&v14 init];
  if (v9)
  {
    v10 = [v8 copy];
    uuid = v9->_uuid;
    v9->_uuid = v10;

    v9->_mirrorsFocusModes = a4;
    v9->_state = a5;
    v12 = v9;
  }

  return v9;
}

- (BOOL)hasSleepFocusMode
{
  v2 = [(HKSPSleepFocusConfiguration *)self uuid];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [MEMORY[0x277CF0C20] builderWithObject:v5 ofExpectedClass:objc_opt_class()];
      v7 = [(HKSPSleepFocusConfiguration *)self uuid];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __39__HKSPSleepFocusConfiguration_isEqual___block_invoke;
      v22[3] = &unk_279C73D70;
      v8 = v5;
      v23 = v8;
      v9 = [v6 appendObject:v7 counterpart:v22];

      v10 = [(HKSPSleepFocusConfiguration *)self mirrorsFocusModes];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __39__HKSPSleepFocusConfiguration_isEqual___block_invoke_2;
      v20[3] = &unk_279C746D0;
      v11 = v8;
      v21 = v11;
      v12 = [v6 appendBool:v10 counterpart:v20];
      v13 = [(HKSPSleepFocusConfiguration *)self state];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __39__HKSPSleepFocusConfiguration_isEqual___block_invoke_3;
      v18[3] = &unk_279C746F8;
      v19 = v11;
      v14 = v11;
      v15 = [v6 appendUnsignedInteger:v13 counterpart:v18];
      v16 = [v6 isEqual];
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [(HKSPSleepFocusConfiguration *)self uuid];
  v5 = [v3 appendObject:v4];

  v6 = [v3 appendBool:{-[HKSPSleepFocusConfiguration mirrorsFocusModes](self, "mirrorsFocusModes")}];
  v7 = [v3 appendUnsignedInteger:{-[HKSPSleepFocusConfiguration state](self, "state")}];
  v8 = [v3 hash];

  return v8;
}

- (id)succinctDescription
{
  v2 = [(HKSPSleepFocusConfiguration *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  if ([(HKSPSleepFocusConfiguration *)self hasSleepFocusMode])
  {
    v4 = [(HKSPSleepFocusConfiguration *)self uuid];
    v5 = [v3 appendObject:v4 withName:@"uuid"];

    v6 = [(HKSPSleepFocusConfiguration *)self state];
    if (v6 > 3)
    {
      v7 = @"Unconfigured";
    }

    else
    {
      v7 = off_279C76470[v6];
    }

    [v3 appendString:v7 withName:@"state"];
  }

  else
  {
    v8 = [v3 appendBool:-[HKSPSleepFocusConfiguration hasSleepFocusMode](self withName:{"hasSleepFocusMode"), @"hasSleepFocusMode"}];
  }

  v9 = [v3 appendBool:-[HKSPSleepFocusConfiguration mirrorsFocusModes](self withName:{"mirrorsFocusModes"), @"mirrorsFocusModes"}];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(HKSPSleepFocusConfiguration *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

+ (id)readFromDefaults:(id)a3
{
  v3 = a3;
  v4 = [v3 hksp_objectForKey:@"SleepFocusUUID"];
  v5 = [v3 hksp_BOOLForKey:@"MirrorsSleepFocusMode"];
  v6 = [v3 hksp_integerForKey:@"SleepFocusState"];

  v7 = [HKSPSleepFocusConfiguration alloc];
  v8 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v4];
  v9 = [(HKSPSleepFocusConfiguration *)v7 initWithUUID:v8 mirrorsFocusModes:v5 state:v6];

  return v9;
}

- (void)writeToDefaults:(id)a3
{
  v6 = a3;
  v4 = [(HKSPSleepFocusConfiguration *)self uuid];
  v5 = [v4 UUIDString];
  [v6 hksp_setObject:v5 forKey:@"SleepFocusUUID"];

  [v6 hksp_setBool:-[HKSPSleepFocusConfiguration mirrorsFocusModes](self forKey:{"mirrorsFocusModes"), @"MirrorsSleepFocusMode"}];
  [v6 hksp_setInteger:-[HKSPSleepFocusConfiguration state](self forKey:{"state"), @"SleepFocusState"}];
}

@end