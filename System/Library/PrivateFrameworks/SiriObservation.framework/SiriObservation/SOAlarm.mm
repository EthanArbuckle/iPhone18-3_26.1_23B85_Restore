@interface SOAlarm
+ (id)newWithBuilder:(id)builder;
- (BOOL)isEqual:(id)equal;
- (SOAlarm)initWithAlarmID:(id)d alarmURL:(id)l title:(id)title hour:(unint64_t)hour minute:(unint64_t)minute repeatSchedule:(unint64_t)schedule isEnabled:(BOOL)enabled isFiring:(BOOL)self0;
- (SOAlarm)initWithBuilder:(id)builder;
- (SOAlarm)initWithCoder:(id)coder;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SOAlarm

- (void)encodeWithCoder:(id)coder
{
  alarmID = self->_alarmID;
  coderCopy = coder;
  [coderCopy encodeObject:alarmID forKey:@"SOAlarm::alarmID"];
  [coderCopy encodeObject:self->_alarmURL forKey:@"SOAlarm::alarmURL"];
  [coderCopy encodeObject:self->_title forKey:@"SOAlarm::title"];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_hour];
  [coderCopy encodeObject:v6 forKey:@"SOAlarm::hour"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_minute];
  [coderCopy encodeObject:v7 forKey:@"SOAlarm::minute"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_repeatSchedule];
  [coderCopy encodeObject:v8 forKey:@"SOAlarm::repeatSchedule"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_isEnabled];
  [coderCopy encodeObject:v9 forKey:@"SOAlarm::isEnabled"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_isFiring];
  [coderCopy encodeObject:v10 forKey:@"SOAlarm::isFiring"];
}

- (SOAlarm)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SOAlarm::alarmID"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SOAlarm::alarmURL"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SOAlarm::title"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SOAlarm::hour"];
  unsignedIntegerValue = [v7 unsignedIntegerValue];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SOAlarm::minute"];
  unsignedIntegerValue2 = [v9 unsignedIntegerValue];

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SOAlarm::repeatSchedule"];
  unsignedIntegerValue3 = [v11 unsignedIntegerValue];

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SOAlarm::isEnabled"];
  bOOLValue = [v13 BOOLValue];

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SOAlarm::isFiring"];

  LOBYTE(coderCopy) = [v15 BOOLValue];
  BYTE1(v18) = coderCopy;
  LOBYTE(v18) = bOOLValue;
  v16 = [(SOAlarm *)self initWithAlarmID:v4 alarmURL:v5 title:v6 hour:unsignedIntegerValue minute:unsignedIntegerValue2 repeatSchedule:unsignedIntegerValue3 isEnabled:v18 isFiring:?];

  return v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v17 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      hour = self->_hour;
      if (hour == [(SOAlarm *)v5 hour]&& (minute = self->_minute, minute == [(SOAlarm *)v5 minute]) && (repeatSchedule = self->_repeatSchedule, repeatSchedule == [(SOAlarm *)v5 repeatSchedule]) && (isEnabled = self->_isEnabled, isEnabled == [(SOAlarm *)v5 isEnabled]) && (isFiring = self->_isFiring, isFiring == [(SOAlarm *)v5 isFiring]))
      {
        alarmID = [(SOAlarm *)v5 alarmID];
        alarmID = self->_alarmID;
        if (alarmID == alarmID || [(NSUUID *)alarmID isEqual:alarmID])
        {
          alarmURL = [(SOAlarm *)v5 alarmURL];
          alarmURL = self->_alarmURL;
          if (alarmURL == alarmURL || [(NSURL *)alarmURL isEqual:alarmURL])
          {
            title = [(SOAlarm *)v5 title];
            title = self->_title;
            v17 = title == title || [(NSString *)title isEqual:title];
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

- (id)_descriptionWithIndent:(unint64_t)indent
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

- (SOAlarm)initWithAlarmID:(id)d alarmURL:(id)l title:(id)title hour:(unint64_t)hour minute:(unint64_t)minute repeatSchedule:(unint64_t)schedule isEnabled:(BOOL)enabled isFiring:(BOOL)self0
{
  dCopy = d;
  lCopy = l;
  titleCopy = title;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __88__SOAlarm_initWithAlarmID_alarmURL_title_hour_minute_repeatSchedule_isEnabled_isFiring___block_invoke;
  v24[3] = &unk_279C3D498;
  v25 = dCopy;
  v26 = lCopy;
  v27 = titleCopy;
  hourCopy = hour;
  minuteCopy = minute;
  scheduleCopy = schedule;
  enabledCopy = enabled;
  firingCopy = firing;
  v19 = titleCopy;
  v20 = lCopy;
  v21 = dCopy;
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

- (SOAlarm)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v18.receiver = self;
  v18.super_class = SOAlarm;
  v5 = [(SOAlarm *)&v18 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_SOAlarmMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_SOAlarmMutation *)v7 isDirty])
    {
      getAlarmID = [(_SOAlarmMutation *)v7 getAlarmID];
      v9 = [getAlarmID copy];
      alarmID = v6->_alarmID;
      v6->_alarmID = v9;

      getAlarmURL = [(_SOAlarmMutation *)v7 getAlarmURL];
      v12 = [getAlarmURL copy];
      alarmURL = v6->_alarmURL;
      v6->_alarmURL = v12;

      getTitle = [(_SOAlarmMutation *)v7 getTitle];
      v15 = [getTitle copy];
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

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:builderCopy];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_SOAlarmMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_SOAlarmMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(SOAlarm);
      getAlarmID = [(_SOAlarmMutation *)v5 getAlarmID];
      v8 = [getAlarmID copy];
      alarmID = v6->_alarmID;
      v6->_alarmID = v8;

      getAlarmURL = [(_SOAlarmMutation *)v5 getAlarmURL];
      v11 = [getAlarmURL copy];
      alarmURL = v6->_alarmURL;
      v6->_alarmURL = v11;

      getTitle = [(_SOAlarmMutation *)v5 getTitle];
      v14 = [getTitle copy];
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