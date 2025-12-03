@interface HKSPSleepFocusConfiguration
+ (id)readFromDefaults:(id)defaults;
- (BOOL)hasSleepFocusMode;
- (BOOL)isEqual:(id)equal;
- (HKSPSleepFocusConfiguration)initWithUUID:(id)d mirrorsFocusModes:(BOOL)modes state:(unint64_t)state;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)sleepFocusConfigurationUpdatingUUID:(id)d state:(unint64_t)state;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)hash;
- (void)writeToDefaults:(id)defaults;
@end

@implementation HKSPSleepFocusConfiguration

- (id)sleepFocusConfigurationUpdatingUUID:(id)d state:(unint64_t)state
{
  dCopy = d;
  v7 = [[HKSPSleepFocusConfiguration alloc] initWithUUID:dCopy mirrorsFocusModes:[(HKSPSleepFocusConfiguration *)self mirrorsFocusModes] state:state];

  return v7;
}

- (HKSPSleepFocusConfiguration)initWithUUID:(id)d mirrorsFocusModes:(BOOL)modes state:(unint64_t)state
{
  dCopy = d;
  v14.receiver = self;
  v14.super_class = HKSPSleepFocusConfiguration;
  v9 = [(HKSPSleepFocusConfiguration *)&v14 init];
  if (v9)
  {
    v10 = [dCopy copy];
    uuid = v9->_uuid;
    v9->_uuid = v10;

    v9->_mirrorsFocusModes = modes;
    v9->_state = state;
    v12 = v9;
  }

  return v9;
}

- (BOOL)hasSleepFocusMode
{
  uuid = [(HKSPSleepFocusConfiguration *)self uuid];
  v3 = uuid != 0;

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = [MEMORY[0x277CF0C20] builderWithObject:v5 ofExpectedClass:objc_opt_class()];
      uuid = [(HKSPSleepFocusConfiguration *)self uuid];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __39__HKSPSleepFocusConfiguration_isEqual___block_invoke;
      v22[3] = &unk_279C73D70;
      v8 = v5;
      v23 = v8;
      v9 = [v6 appendObject:uuid counterpart:v22];

      mirrorsFocusModes = [(HKSPSleepFocusConfiguration *)self mirrorsFocusModes];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __39__HKSPSleepFocusConfiguration_isEqual___block_invoke_2;
      v20[3] = &unk_279C746D0;
      v11 = v8;
      v21 = v11;
      v12 = [v6 appendBool:mirrorsFocusModes counterpart:v20];
      state = [(HKSPSleepFocusConfiguration *)self state];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __39__HKSPSleepFocusConfiguration_isEqual___block_invoke_3;
      v18[3] = &unk_279C746F8;
      v19 = v11;
      v14 = v11;
      v15 = [v6 appendUnsignedInteger:state counterpart:v18];
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
  builder = [MEMORY[0x277CF0C40] builder];
  uuid = [(HKSPSleepFocusConfiguration *)self uuid];
  v5 = [builder appendObject:uuid];

  v6 = [builder appendBool:{-[HKSPSleepFocusConfiguration mirrorsFocusModes](self, "mirrorsFocusModes")}];
  v7 = [builder appendUnsignedInteger:{-[HKSPSleepFocusConfiguration state](self, "state")}];
  v8 = [builder hash];

  return v8;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(HKSPSleepFocusConfiguration *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  if ([(HKSPSleepFocusConfiguration *)self hasSleepFocusMode])
  {
    uuid = [(HKSPSleepFocusConfiguration *)self uuid];
    v5 = [v3 appendObject:uuid withName:@"uuid"];

    state = [(HKSPSleepFocusConfiguration *)self state];
    if (state > 3)
    {
      v7 = @"Unconfigured";
    }

    else
    {
      v7 = off_279C76470[state];
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

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(HKSPSleepFocusConfiguration *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

+ (id)readFromDefaults:(id)defaults
{
  defaultsCopy = defaults;
  v4 = [defaultsCopy hksp_objectForKey:@"SleepFocusUUID"];
  v5 = [defaultsCopy hksp_BOOLForKey:@"MirrorsSleepFocusMode"];
  v6 = [defaultsCopy hksp_integerForKey:@"SleepFocusState"];

  v7 = [HKSPSleepFocusConfiguration alloc];
  v8 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v4];
  v9 = [(HKSPSleepFocusConfiguration *)v7 initWithUUID:v8 mirrorsFocusModes:v5 state:v6];

  return v9;
}

- (void)writeToDefaults:(id)defaults
{
  defaultsCopy = defaults;
  uuid = [(HKSPSleepFocusConfiguration *)self uuid];
  uUIDString = [uuid UUIDString];
  [defaultsCopy hksp_setObject:uUIDString forKey:@"SleepFocusUUID"];

  [defaultsCopy hksp_setBool:-[HKSPSleepFocusConfiguration mirrorsFocusModes](self forKey:{"mirrorsFocusModes"), @"MirrorsSleepFocusMode"}];
  [defaultsCopy hksp_setInteger:-[HKSPSleepFocusConfiguration state](self forKey:{"state"), @"SleepFocusState"}];
}

@end