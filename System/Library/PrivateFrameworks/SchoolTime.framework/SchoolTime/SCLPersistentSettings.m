@interface SCLPersistentSettings
- (BOOL)isEqual:(id)a3;
- (SCLPersistentSettings)init;
- (SCLPersistentSettings)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
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

- (SCLPersistentSettings)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SCLPersistentSettings;
  v5 = [(SCLPersistentSettings *)&v9 init];
  if (v5)
  {
    v5->_manualSchoolModeEnabled = [v4 decodeBoolForKey:@"manualSchoolModeEnabled"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"scheduleSettings"];
    scheduleSettings = v5->_scheduleSettings;
    v5->_scheduleSettings = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  scheduleSettings = self->_scheduleSettings;
  v5 = a3;
  [v5 encodeObject:scheduleSettings forKey:@"scheduleSettings"];
  [v5 encodeBool:self->_manualSchoolModeEnabled forKey:@"manualSchoolModeEnabled"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(SCLPersistentSettings);
  [(SCLPersistentSettings *)v4 setManualSchoolModeEnabled:[(SCLPersistentSettings *)self isManualSchoolModeEnabled]];
  v5 = [(SCLPersistentSettings *)self scheduleSettings];
  v6 = [v5 copy];
  [(SCLPersistentSettings *)v4 setScheduleSettings:v6];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SCLPersistentSettings *)v5 isManualSchoolModeEnabled];
      if (v6 == [(SCLPersistentSettings *)self isManualSchoolModeEnabled])
      {
        v8 = [(SCLPersistentSettings *)v5 scheduleSettings];
        v9 = [(SCLPersistentSettings *)self scheduleSettings];
        if (v8 == v9)
        {
          v7 = 1;
        }

        else
        {
          v10 = [(SCLPersistentSettings *)v5 scheduleSettings];
          v11 = [(SCLPersistentSettings *)self scheduleSettings];
          v7 = [v10 isEqual:v11];
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