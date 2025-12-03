@interface SCLSchoolModeServerSettings
- (SCLSchoolModeServerSettings)initWithCoder:(id)coder;
- (SCLSchoolModeServerSettings)initWithSettings:(id)settings;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SCLSchoolModeServerSettings

- (void)encodeWithCoder:(id)coder
{
  scheduleSettings = self->_scheduleSettings;
  coderCopy = coder;
  [coderCopy encodeObject:scheduleSettings forKey:@"scheduleSettings"];
  [coderCopy encodeObject:self->_state forKey:@"state"];
  [coderCopy encodeBool:self->_loaded forKey:@"loaded"];
}

- (SCLSchoolModeServerSettings)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = SCLSchoolModeServerSettings;
  v5 = [(SCLSchoolModeServerSettings *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"scheduleSettings"];
    scheduleSettings = v5->_scheduleSettings;
    v5->_scheduleSettings = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"state"];
    state = v5->_state;
    v5->_state = v8;

    v5->_loaded = [coderCopy decodeBoolForKey:@"loaded"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 initWithSettings:self];
}

- (SCLSchoolModeServerSettings)initWithSettings:(id)settings
{
  settingsCopy = settings;
  v9.receiver = self;
  v9.super_class = SCLSchoolModeServerSettings;
  v5 = [(SCLSchoolModeServerSettings *)&v9 init];
  if (v5)
  {
    scheduleSettings = [settingsCopy scheduleSettings];
    [(SCLSchoolModeServerSettings *)v5 setScheduleSettings:scheduleSettings];

    state = [settingsCopy state];
    [(SCLSchoolModeServerSettings *)v5 setState:state];

    -[SCLSchoolModeServerSettings setLoaded:](v5, "setLoaded:", [settingsCopy isLoaded]);
  }

  return v5;
}

@end