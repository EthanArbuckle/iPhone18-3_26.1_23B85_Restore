@interface STAlarmModification
- (STAlarmModification)initWithCoder:(id)coder;
- (id)_initWithAddedFrequency:(int64_t)frequency alarmId:(id)id enabled:(id)enabled hour:(id)hour label:(id)label minute:(id)minute removedFrequency:(int64_t)removedFrequency;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STAlarmModification

- (STAlarmModification)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = STAlarmModification;
  v5 = [(STSiriModelObject *)&v17 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_addedFrequency = [coderCopy decodeIntegerForKey:@"_addedFrequency"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_alarmId"];
    alarmId = v5->_alarmId;
    v5->_alarmId = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_enabled"];
    enabled = v5->_enabled;
    v5->_enabled = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_hour"];
    hour = v5->_hour;
    v5->_hour = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_label"];
    label = v5->_label;
    v5->_label = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_minute"];
    minute = v5->_minute;
    v5->_minute = v14;

    v5->_removedFrequency = [coderCopy decodeIntegerForKey:@"_removedFrequency"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STAlarmModification;
  coderCopy = coder;
  [(STSiriModelObject *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_addedFrequency forKey:{@"_addedFrequency", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_alarmId forKey:@"_alarmId"];
  [coderCopy encodeObject:self->_enabled forKey:@"_enabled"];
  [coderCopy encodeObject:self->_hour forKey:@"_hour"];
  [coderCopy encodeObject:self->_label forKey:@"_label"];
  [coderCopy encodeObject:self->_minute forKey:@"_minute"];
  [coderCopy encodeInteger:self->_removedFrequency forKey:@"_removedFrequency"];
}

- (id)_initWithAddedFrequency:(int64_t)frequency alarmId:(id)id enabled:(id)enabled hour:(id)hour label:(id)label minute:(id)minute removedFrequency:(int64_t)removedFrequency
{
  idCopy = id;
  enabledCopy = enabled;
  hourCopy = hour;
  labelCopy = label;
  minuteCopy = minute;
  if (!idCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"STAlarmModification.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"alarmId"}];
  }

  v26.receiver = self;
  v26.super_class = STAlarmModification;
  v19 = [(STAlarmModification *)&v26 init];
  v20 = v19;
  if (v19)
  {
    v19->_addedFrequency = frequency;
    objc_storeStrong(&v19->_alarmId, id);
    objc_storeStrong(&v20->_enabled, enabled);
    objc_storeStrong(&v20->_hour, hour);
    objc_storeStrong(&v20->_label, label);
    objc_storeStrong(&v20->_minute, minute);
    v20->_removedFrequency = removedFrequency;
  }

  return v20;
}

@end