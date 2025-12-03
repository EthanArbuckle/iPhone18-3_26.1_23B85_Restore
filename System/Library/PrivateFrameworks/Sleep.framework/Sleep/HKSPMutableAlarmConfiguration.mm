@interface HKSPMutableAlarmConfiguration
- (BOOL)allowsSnooze;
- (BOOL)isEnabled;
- (HKSPMutableAlarmConfiguration)init;
- (HKSPMutableAlarmConfiguration)initWithCoder:(id)coder;
- (HKSPMutableAlarmConfiguration)initWithTemplateAlarmConfiguration:(id)configuration;
- (NSNumber)soundVolume;
- (NSString)toneIdentifier;
- (NSString)vibrationIdentifier;
- (double)snoozeDuration;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initFromObject:(id)object;
- (id)mutableCopy;
- (unint64_t)breaksThroughSilentModeOptions;
- (void)encodeWithCoder:(id)coder;
- (void)freeze;
- (void)setBreaksThroughSilentMode:(BOOL)mode;
- (void)setBreaksThroughSilentModeOptions:(unint64_t)options;
- (void)setSnoozeDuration:(double)duration;
- (void)setSoundVolume:(id)volume;
- (void)setToneIdentifier:(id)identifier;
- (void)setVibrationIdentifier:(id)identifier;
@end

@implementation HKSPMutableAlarmConfiguration

- (BOOL)isEnabled
{
  allProperties = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(allProperties);
  v5 = [v4 objectForKeyedSubscript:@"HKSPAlarmEnabled"];

  if ([(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPAlarmEnabled"])
  {
    [(HKSPChangeSet *)self->_changeSet changedValueForPropertyIdentifier:@"HKSPAlarmEnabled"];
  }

  else
  {
    [(HKSPObject *)self->_originalObject hksp_valueForProperty:v5];
  }
  v6 = ;
  bOOLValue = [v6 BOOLValue];

  return bOOLValue;
}

- (BOOL)allowsSnooze
{
  allProperties = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(allProperties);
  v5 = [v4 objectForKeyedSubscript:@"HKSPAlarmAllowsSnooze"];

  if ([(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPAlarmAllowsSnooze"])
  {
    [(HKSPChangeSet *)self->_changeSet changedValueForPropertyIdentifier:@"HKSPAlarmAllowsSnooze"];
  }

  else
  {
    [(HKSPObject *)self->_originalObject hksp_valueForProperty:v5];
  }
  v6 = ;
  bOOLValue = [v6 BOOLValue];

  return bOOLValue;
}

- (void)setSnoozeDuration:(double)duration
{
  allProperties = [objc_opt_class() allProperties];
  v6 = HKSPPropertiesByIdentifier(allProperties);
  v15 = [v6 objectForKeyedSubscript:@"HKSPAlarmSnoozeDuration"];

  v7 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v15];
  [v7 doubleValue];
  v9 = v8;

  if (v9 != duration || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPAlarmSnoozeDuration"])
  {
    changeSet = self->_changeSet;
    v11 = [HKSPChange alloc];
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:duration];
    v13 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
    v14 = [(HKSPChange *)v11 initWithProperty:v15 changedValue:v12 originalValue:v13];
    [(HKSPChangeSet *)changeSet addChange:v14];
  }
}

- (double)snoozeDuration
{
  allProperties = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(allProperties);
  v5 = [v4 objectForKeyedSubscript:@"HKSPAlarmSnoozeDuration"];

  if ([(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPAlarmSnoozeDuration"])
  {
    [(HKSPChangeSet *)self->_changeSet changedValueForPropertyIdentifier:@"HKSPAlarmSnoozeDuration"];
  }

  else
  {
    [(HKSPObject *)self->_originalObject hksp_valueForProperty:v5];
  }
  v6 = ;
  [v6 doubleValue];
  v8 = v7;

  return v8;
}

- (void)setBreaksThroughSilentModeOptions:(unint64_t)options
{
  allProperties = [objc_opt_class() allProperties];
  v6 = HKSPPropertiesByIdentifier(allProperties);
  v14 = [v6 objectForKeyedSubscript:@"HKSPAlarmSilentModeOptions"];

  v7 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v14];
  unsignedIntegerValue = [v7 unsignedIntegerValue];

  if (unsignedIntegerValue != options || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPAlarmSilentModeOptions"])
  {
    changeSet = self->_changeSet;
    v10 = [HKSPChange alloc];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:options];
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue];
    v13 = [(HKSPChange *)v10 initWithProperty:v14 changedValue:v11 originalValue:v12];
    [(HKSPChangeSet *)changeSet addChange:v13];
  }
}

- (unint64_t)breaksThroughSilentModeOptions
{
  allProperties = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(allProperties);
  v5 = [v4 objectForKeyedSubscript:@"HKSPAlarmSilentModeOptions"];

  if ([(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPAlarmSilentModeOptions"])
  {
    [(HKSPChangeSet *)self->_changeSet changedValueForPropertyIdentifier:@"HKSPAlarmSilentModeOptions"];
  }

  else
  {
    [(HKSPObject *)self->_originalObject hksp_valueForProperty:v5];
  }
  v6 = ;
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setToneIdentifier:(id)identifier
{
  identifierCopy = identifier;
  allProperties = [objc_opt_class() allProperties];
  v5 = HKSPPropertiesByIdentifier(allProperties);
  v6 = [v5 objectForKeyedSubscript:@"HKSPAlarmToneIdentifier"];

  v7 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v6];
  if (!NAEqualObjects() || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPAlarmToneIdentifier"])
  {
    isRelationshipProperty = [v6 isRelationshipProperty];
    v9 = off_279C73598;
    if (!isRelationshipProperty)
    {
      v9 = off_279C734F8;
    }

    v10 = *v9;
    v11 = objc_opt_class();
    changeSet = self->_changeSet;
    v13 = [[v11 alloc] initWithProperty:v6 changedValue:identifierCopy originalValue:v7];
    [(HKSPChangeSet *)changeSet addChange:v13];
  }
}

- (NSString)toneIdentifier
{
  allProperties = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(allProperties);
  v5 = [v4 objectForKeyedSubscript:@"HKSPAlarmToneIdentifier"];

  if ([(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPAlarmToneIdentifier"])
  {
    [(HKSPChangeSet *)self->_changeSet changedValueForPropertyIdentifier:@"HKSPAlarmToneIdentifier"];
  }

  else
  {
    [(HKSPObject *)self->_originalObject hksp_valueForProperty:v5];
  }
  v6 = ;

  return v6;
}

- (void)setVibrationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  allProperties = [objc_opt_class() allProperties];
  v5 = HKSPPropertiesByIdentifier(allProperties);
  v6 = [v5 objectForKeyedSubscript:@"HKSPAlarmVibrationIdentifier"];

  v7 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v6];
  if (!NAEqualObjects() || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPAlarmVibrationIdentifier"])
  {
    isRelationshipProperty = [v6 isRelationshipProperty];
    v9 = off_279C73598;
    if (!isRelationshipProperty)
    {
      v9 = off_279C734F8;
    }

    v10 = *v9;
    v11 = objc_opt_class();
    changeSet = self->_changeSet;
    v13 = [[v11 alloc] initWithProperty:v6 changedValue:identifierCopy originalValue:v7];
    [(HKSPChangeSet *)changeSet addChange:v13];
  }
}

- (NSString)vibrationIdentifier
{
  allProperties = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(allProperties);
  v5 = [v4 objectForKeyedSubscript:@"HKSPAlarmVibrationIdentifier"];

  if ([(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPAlarmVibrationIdentifier"])
  {
    [(HKSPChangeSet *)self->_changeSet changedValueForPropertyIdentifier:@"HKSPAlarmVibrationIdentifier"];
  }

  else
  {
    [(HKSPObject *)self->_originalObject hksp_valueForProperty:v5];
  }
  v6 = ;

  return v6;
}

- (void)setSoundVolume:(id)volume
{
  volumeCopy = volume;
  allProperties = [objc_opt_class() allProperties];
  v5 = HKSPPropertiesByIdentifier(allProperties);
  v6 = [v5 objectForKeyedSubscript:@"HKSPAlarmSoundVolume"];

  v7 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v6];
  if (!NAEqualObjects() || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPAlarmSoundVolume"])
  {
    isRelationshipProperty = [v6 isRelationshipProperty];
    v9 = off_279C73598;
    if (!isRelationshipProperty)
    {
      v9 = off_279C734F8;
    }

    v10 = *v9;
    v11 = objc_opt_class();
    changeSet = self->_changeSet;
    v13 = [[v11 alloc] initWithProperty:v6 changedValue:volumeCopy originalValue:v7];
    [(HKSPChangeSet *)changeSet addChange:v13];
  }
}

- (NSNumber)soundVolume
{
  allProperties = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(allProperties);
  v5 = [v4 objectForKeyedSubscript:@"HKSPAlarmSoundVolume"];

  if ([(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPAlarmSoundVolume"])
  {
    [(HKSPChangeSet *)self->_changeSet changedValueForPropertyIdentifier:@"HKSPAlarmSoundVolume"];
  }

  else
  {
    [(HKSPObject *)self->_originalObject hksp_valueForProperty:v5];
  }
  v6 = ;

  return v6;
}

- (HKSPMutableAlarmConfiguration)init
{
  v9.receiver = self;
  v9.super_class = HKSPMutableAlarmConfiguration;
  v2 = [(HKSPAlarmConfiguration *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(HKSPAlarmConfiguration);
    originalObject = v2->_originalObject;
    v2->_originalObject = v3;

    v5 = objc_alloc_init(HKSPChangeSet);
    changeSet = v2->_changeSet;
    v2->_changeSet = v5;

    v7 = v2;
  }

  return v2;
}

- (id)initFromObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HKSPAlarmConfiguration.m" lineNumber:198 description:@"object must be a subclass"];
  }

  v14.receiver = self;
  v14.super_class = HKSPMutableAlarmConfiguration;
  v6 = [(HKSPAlarmConfiguration *)&v14 init];
  if (v6)
  {
    v7 = [objectCopy copyWithZone:0];
    originalObject = v6->_originalObject;
    v6->_originalObject = v7;

    v9 = objc_alloc_init(HKSPChangeSet);
    changeSet = v6->_changeSet;
    v6->_changeSet = v9;

    v11 = v6;
  }

  return v6;
}

- (HKSPMutableAlarmConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = HKSPMutableAlarmConfiguration;
  v5 = [(HKSPAlarmConfiguration *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HKSPOriginalObject"];
    originalObject = v5->_originalObject;
    v5->_originalObject = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HKSPChangeSet"];
    changeSet = v5->_changeSet;
    v5->_changeSet = v8;

    v10 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  originalObject = self->_originalObject;
  coderCopy = coder;
  [coderCopy encodeObject:originalObject forKey:@"HKSPOriginalObject"];
  [coderCopy encodeObject:self->_changeSet forKey:@"HKSPChangeSet"];
}

- (HKSPMutableAlarmConfiguration)initWithTemplateAlarmConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = [(HKSPMutableAlarmConfiguration *)self init];
  if (v5)
  {
    -[HKSPMutableAlarmConfiguration setEnabled:](v5, "setEnabled:", [configurationCopy isEnabled]);
    -[HKSPMutableAlarmConfiguration setAllowsSnooze:](v5, "setAllowsSnooze:", [configurationCopy allowsSnooze]);
    [configurationCopy snoozeDuration];
    [(HKSPMutableAlarmConfiguration *)v5 setSnoozeDuration:?];
    -[HKSPMutableAlarmConfiguration setBreaksThroughSilentModeOptions:](v5, "setBreaksThroughSilentModeOptions:", [configurationCopy breaksThroughSilentModeOptions]);
    toneIdentifier = [configurationCopy toneIdentifier];
    [(HKSPMutableAlarmConfiguration *)v5 setToneIdentifier:toneIdentifier];

    vibrationIdentifier = [configurationCopy vibrationIdentifier];
    [(HKSPMutableAlarmConfiguration *)v5 setVibrationIdentifier:vibrationIdentifier];

    soundVolume = [configurationCopy soundVolume];
    [(HKSPMutableAlarmConfiguration *)v5 setSoundVolume:soundVolume];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HKSPAlarmConfiguration alloc];

  return [(HKSPAlarmConfiguration *)v4 initFromObject:self];
}

- (id)mutableCopy
{
  v3 = objc_alloc_init(objc_opt_class());
  originalObject = [(HKSPMutableAlarmConfiguration *)self originalObject];
  v5 = [originalObject copyWithZone:0];
  v6 = v3[8];
  v3[8] = v5;

  changeSet = [(HKSPMutableAlarmConfiguration *)self changeSet];
  deepCopy = [changeSet deepCopy];
  v9 = v3[9];
  v3[9] = deepCopy;

  return v3;
}

- (void)freeze
{
  v3 = [[HKSPAlarmConfiguration alloc] initFromObject:self];
  originalObject = self->_originalObject;
  self->_originalObject = v3;

  [(HKSPMutableAlarmConfiguration *)self revert];
}

- (void)setBreaksThroughSilentMode:(BOOL)mode
{
  modeCopy = mode;
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  if ([mEMORY[0x277CCDD30] isAppleWatch])
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (modeCopy)
  {
    v7 = [(HKSPMutableAlarmConfiguration *)self breaksThroughSilentModeOptions]| v6;
  }

  else
  {
    v7 = [(HKSPMutableAlarmConfiguration *)self breaksThroughSilentModeOptions]& ~v6;
  }

  [(HKSPMutableAlarmConfiguration *)self setBreaksThroughSilentModeOptions:v7];
}

@end