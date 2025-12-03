@interface SCLPersistentSettings
- (BOOL)isEqual:(id)equal;
- (SCLPersistentSettings)init;
- (SCLPersistentSettings)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SCLPersistentSettings

- (SCLPersistentSettings)init
{
  v6.receiver = self;
  v6.super_class = SCLPersistentSettings;
  v2 = [(SCLPersistentSettings *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(SCLScheduleSettings);
    scheduleSettings = v2->_scheduleSettings;
    v2->_scheduleSettings = v3;
  }

  return v2;
}

- (SCLPersistentSettings)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SCLPersistentSettings;
  v5 = [(SCLPersistentSettings *)&v9 init];
  if (v5)
  {
    v5->_manualSchoolModeEnabled = [coderCopy decodeBoolForKey:@"manualSchoolModeEnabled"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"scheduleSettings"];
    scheduleSettings = v5->_scheduleSettings;
    v5->_scheduleSettings = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  scheduleSettings = self->_scheduleSettings;
  coderCopy = coder;
  [coderCopy encodeObject:scheduleSettings forKey:@"scheduleSettings"];
  [coderCopy encodeBool:self->_manualSchoolModeEnabled forKey:@"manualSchoolModeEnabled"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(SCLPersistentSettings);
  [(SCLPersistentSettings *)v4 setManualSchoolModeEnabled:[(SCLPersistentSettings *)self isManualSchoolModeEnabled]];
  scheduleSettings = [(SCLPersistentSettings *)self scheduleSettings];
  v6 = [scheduleSettings copy];
  [(SCLPersistentSettings *)v4 setScheduleSettings:v6];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      isManualSchoolModeEnabled = [(SCLPersistentSettings *)v5 isManualSchoolModeEnabled];
      if (isManualSchoolModeEnabled == [(SCLPersistentSettings *)self isManualSchoolModeEnabled])
      {
        scheduleSettings = [(SCLPersistentSettings *)v5 scheduleSettings];
        scheduleSettings2 = [(SCLPersistentSettings *)self scheduleSettings];
        if (scheduleSettings == scheduleSettings2)
        {
          v7 = 1;
        }

        else
        {
          scheduleSettings3 = [(SCLPersistentSettings *)v5 scheduleSettings];
          scheduleSettings4 = [(SCLPersistentSettings *)self scheduleSettings];
          v7 = [scheduleSettings3 isEqual:scheduleSettings4];
        }
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end