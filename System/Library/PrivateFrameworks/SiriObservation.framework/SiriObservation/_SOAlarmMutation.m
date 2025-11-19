@interface _SOAlarmMutation
- (BOOL)getIsEnabled;
- (BOOL)getIsFiring;
- (_SOAlarmMutation)initWithBase:(id)a3;
- (id)getAlarmID;
- (id)getAlarmURL;
- (id)getTitle;
- (unint64_t)getHour;
- (unint64_t)getMinute;
- (unint64_t)getRepeatSchedule;
@end

@implementation _SOAlarmMutation

- (BOOL)getIsFiring
{
  if ((*&self->_mutationFlags & 0x100) != 0)
  {
    return self->_isFiring;
  }

  else
  {
    return [(SOAlarm *)self->_base isFiring];
  }
}

- (BOOL)getIsEnabled
{
  if ((*&self->_mutationFlags & 0x80) != 0)
  {
    return self->_isEnabled;
  }

  else
  {
    return [(SOAlarm *)self->_base isEnabled];
  }
}

- (unint64_t)getRepeatSchedule
{
  if ((*&self->_mutationFlags & 0x40) != 0)
  {
    return self->_repeatSchedule;
  }

  else
  {
    return [(SOAlarm *)self->_base repeatSchedule];
  }
}

- (unint64_t)getMinute
{
  if ((*&self->_mutationFlags & 0x20) != 0)
  {
    return self->_minute;
  }

  else
  {
    return [(SOAlarm *)self->_base minute];
  }
}

- (unint64_t)getHour
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    return self->_hour;
  }

  else
  {
    return [(SOAlarm *)self->_base hour];
  }
}

- (id)getTitle
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    v2 = self->_title;
  }

  else
  {
    v2 = [(SOAlarm *)self->_base title];
  }

  return v2;
}

- (id)getAlarmURL
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    v2 = self->_alarmURL;
  }

  else
  {
    v2 = [(SOAlarm *)self->_base alarmURL];
  }

  return v2;
}

- (id)getAlarmID
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    v2 = self->_alarmID;
  }

  else
  {
    v2 = [(SOAlarm *)self->_base alarmID];
  }

  return v2;
}

- (_SOAlarmMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _SOAlarmMutation;
  v6 = [(_SOAlarmMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end