@interface SOAlarm
+ (id)newWithBuilder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (SOAlarm)initWithAlarmID:(id)a3 alarmURL:(id)a4 title:(id)a5 hour:(unint64_t)a6 minute:(unint64_t)a7 repeatSchedule:(unint64_t)a8 isEnabled:(BOOL)a9 isFiring:(BOOL)a10;
- (SOAlarm)initWithBuilder:(id)a3;
- (SOAlarm)initWithCoder:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SOAlarm

- (void)encodeWithCoder:(id)a3
{
  alarmID = self->_alarmID;
  v5 = a3;
  [v5 encodeObject:alarmID forKey:@"SOAlarm::alarmID"];
  [v5 encodeObject:self->_alarmURL forKey:@"SOAlarm::alarmURL"];
  [v5 encodeObject:self->_title forKey:@"SOAlarm::title"];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_hour];
  [v5 encodeObject:v6 forKey:@"SOAlarm::hour"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_minute];
  [v5 encodeObject:v7 forKey:@"SOAlarm::minute"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_repeatSchedule];
  [v5 encodeObject:v8 forKey:@"SOAlarm::repeatSchedule"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_isEnabled];
  [v5 encodeObject:v9 forKey:@"SOAlarm::isEnabled"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_isFiring];
  [v5 encodeObject:v10 forKey:@"SOAlarm::isFiring"];
}

- (SOAlarm)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"SOAlarm::alarmID"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"SOAlarm::alarmURL"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"SOAlarm::title"];
  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"SOAlarm::hour"];
  v8 = [v7 unsignedIntegerValue];

  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"SOAlarm::minute"];
  v10 = [v9 unsignedIntegerValue];

  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"SOAlarm::repeatSchedule"];
  v12 = [v11 unsignedIntegerValue];

  v13 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"SOAlarm::isEnabled"];
  v14 = [v13 BOOLValue];

  v15 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"SOAlarm::isFiring"];

  LOBYTE(v3) = [v15 BOOLValue];
  BYTE1(v18) = v3;
  LOBYTE(v18) = v14;
  v16 = [(SOAlarm *)self initWithAlarmID:v4 alarmURL:v5 title:v6 hour:v8 minute:v10 repeatSchedule:v12 isEnabled:v18 isFiring:?];

  return v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v17 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      hour = self->_hour;
      if (hour == [(SOAlarm *)v5 hour]&& (minute = self->_minute, minute == [(SOAlarm *)v5 minute]) && (repeatSchedule = self->_repeatSchedule, repeatSchedule == [(SOAlarm *)v5 repeatSchedule]) && (isEnabled = self->_isEnabled, isEnabled == [(SOAlarm *)v5 isEnabled]) && (isFiring = self->_isFiring, isFiring == [(SOAlarm *)v5 isFiring]))
      {
        v11 = [(SOAlarm *)v5 alarmID];
        alarmID = self->_alarmID;
        if (alarmID == v11 || [(NSUUID *)alarmID isEqual:v11])
        {
          v13 = [(SOAlarm *)v5 alarmURL];
          alarmURL = self->_alarmURL;
          if (alarmURL == v13 || [(NSURL *)alarmURL isEqual:v13])
          {
            v15 = [(SOAlarm *)v5 title];
            title = self->_title;
            v17 = title == v15 || [(NSString *)title isEqual:v15];
          }

          else
          {
            v17 = 0;
          }
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  return v17;
}

- (unint64_t)hash
{
  v3 = [(NSUUID *)self->_alarmID hash];
  v4 = [(NSURL *)self->_alarmURL hash]^ v3;
  v5 = v4 ^ [(NSString *)self->_title hash];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_hour];
  v7 = v5 ^ [v6 hash];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_minute];
  v9 = [v8 hash];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_repeatSchedule];
  v11 = v7 ^ v9 ^ [v10 hash];
  v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_isEnabled];
  v13 = [v12 hash];
  v14 = [MEMORY[0x277CCABB0] numberWithBool:self->_isFiring];
  v15 = v13 ^ [v14 hash];

  return v11 ^ v15;
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v16.receiver = self;
  v16.super_class = SOAlarm;
  v5 = [(SOAlarm *)&v16 description];
  v15 = *&self->_alarmID;
  v14 = *&self->_title;
  minute = self->_minute;
  v7 = SOAlarmRepeatScheduleGetNames(self->_repeatSchedule);
  v8 = [v7 componentsJoinedByString:@"|"];
  v9 = v8;
  v10 = @"NO";
  if (self->_isEnabled)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  if (self->_isFiring)
  {
    v10 = @"YES";
  }

  v12 = [v4 initWithFormat:@"%@ {alarmID = %@, alarmURL = %@, title = %@, hour = %llu, minute = %llu, repeatSchedule = %@, isEnabled = %@, isFiring = %@}", v5, v15, v14, minute, v8, v11, v10];

  return v12;
}

- (SOAlarm)initWithAlarmID:(id)a3 alarmURL:(id)a4 title:(id)a5 hour:(unint64_t)a6 minute:(unint64_t)a7 repeatSchedule:(unint64_t)a8 isEnabled:(BOOL)a9 isFiring:(BOOL)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __88__SOAlarm_initWithAlarmID_alarmURL_title_hour_minute_repeatSchedule_isEnabled_isFiring___block_invoke;
  v24[3] = &unk_279C3D498;
  v25 = v16;
  v26 = v17;
  v27 = v18;
  v28 = a6;
  v29 = a7;
  v30 = a8;
  v31 = a9;
  v32 = a10;
  v19 = v18;
  v20 = v17;
  v21 = v16;
  v22 = [(SOAlarm *)self initWithBuilder:v24];

  return v22;
}

void __88__SOAlarm_initWithAlarmID_alarmURL_title_hour_minute_repeatSchedule_isEnabled_isFiring___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setAlarmID:v3];
  [v4 setAlarmURL:*(a1 + 40)];
  [v4 setTitle:*(a1 + 48)];
  [v4 setHour:*(a1 + 56)];
  [v4 setMinute:*(a1 + 64)];
  [v4 setRepeatSchedule:*(a1 + 72)];
  [v4 setIsEnabled:*(a1 + 80)];
  [v4 setIsFiring:*(a1 + 81)];
}

- (SOAlarm)initWithBuilder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = SOAlarm;
  v5 = [(SOAlarm *)&v18 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_SOAlarmMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_SOAlarmMutation *)v7 isDirty])
    {
      v8 = [(_SOAlarmMutation *)v7 getAlarmID];
      v9 = [v8 copy];
      alarmID = v6->_alarmID;
      v6->_alarmID = v9;

      v11 = [(_SOAlarmMutation *)v7 getAlarmURL];
      v12 = [v11 copy];
      alarmURL = v6->_alarmURL;
      v6->_alarmURL = v12;

      v14 = [(_SOAlarmMutation *)v7 getTitle];
      v15 = [v14 copy];
      title = v6->_title;
      v6->_title = v15;

      v6->_hour = [(_SOAlarmMutation *)v7 getHour];
      v6->_minute = [(_SOAlarmMutation *)v7 getMinute];
      v6->_repeatSchedule = [(_SOAlarmMutation *)v7 getRepeatSchedule];
      v6->_isEnabled = [(_SOAlarmMutation *)v7 getIsEnabled];
      v6->_isFiring = [(_SOAlarmMutation *)v7 getIsFiring];
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:v3];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_SOAlarmMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_SOAlarmMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(SOAlarm);
      v7 = [(_SOAlarmMutation *)v5 getAlarmID];
      v8 = [v7 copy];
      alarmID = v6->_alarmID;
      v6->_alarmID = v8;

      v10 = [(_SOAlarmMutation *)v5 getAlarmURL];
      v11 = [v10 copy];
      alarmURL = v6->_alarmURL;
      v6->_alarmURL = v11;

      v13 = [(_SOAlarmMutation *)v5 getTitle];
      v14 = [v13 copy];
      title = v6->_title;
      v6->_title = v14;

      v6->_hour = [(_SOAlarmMutation *)v5 getHour];
      v6->_minute = [(_SOAlarmMutation *)v5 getMinute];
      v6->_repeatSchedule = [(_SOAlarmMutation *)v5 getRepeatSchedule];
      v6->_isEnabled = [(_SOAlarmMutation *)v5 getIsEnabled];
      v6->_isFiring = [(_SOAlarmMutation *)v5 getIsFiring];
    }

    else
    {
      v6 = [(SOAlarm *)self copy];
    }
  }

  else
  {
    v6 = [(SOAlarm *)self copy];
  }

  return v6;
}

@end