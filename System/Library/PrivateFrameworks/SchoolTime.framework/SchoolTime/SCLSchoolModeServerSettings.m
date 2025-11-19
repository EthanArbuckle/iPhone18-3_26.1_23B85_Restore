@interface SCLSchoolModeServerSettings
- (SCLSchoolModeServerSettings)initWithCoder:(id)a3;
- (SCLSchoolModeServerSettings)initWithSettings:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SCLSchoolModeServerSettings

- (void)encodeWithCoder:(id)a3
{
  scheduleSettings = self->_scheduleSettings;
  v5 = a3;
  [v5 encodeObject:scheduleSettings forKey:@"scheduleSettings"];
  [v5 encodeObject:self->_state forKey:@"state"];
  [v5 encodeBool:self->_loaded forKey:@"loaded"];
}

- (SCLSchoolModeServerSettings)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SCLSchoolModeServerSettings;
  v5 = [(SCLSchoolModeServerSettings *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"scheduleSettings"];
    scheduleSettings = v5->_scheduleSettings;
    v5->_scheduleSettings = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"state"];
    state = v5->_state;
    v5->_state = v8;

    v5->_loaded = [v4 decodeBoolForKey:@"loaded"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 initWithSettings:self];
}

- (SCLSchoolModeServerSettings)initWithSettings:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SCLSchoolModeServerSettings;
  v5 = [(SCLSchoolModeServerSettings *)&v9 init];
  if (v5)
  {
    v6 = [v4 scheduleSettings];
    [(SCLSchoolModeServerSettings *)v5 setScheduleSettings:v6];

    v7 = [v4 state];
    [(SCLSchoolModeServerSettings *)v5 setState:v7];

    -[SCLSchoolModeServerSettings setLoaded:](v5, "setLoaded:", [v4 isLoaded]);
  }

  return v5;
}

@end