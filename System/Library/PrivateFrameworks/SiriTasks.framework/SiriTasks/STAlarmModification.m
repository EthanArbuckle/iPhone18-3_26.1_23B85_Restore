@interface STAlarmModification
- (STAlarmModification)initWithCoder:(id)a3;
- (id)_initWithAddedFrequency:(int64_t)a3 alarmId:(id)a4 enabled:(id)a5 hour:(id)a6 label:(id)a7 minute:(id)a8 removedFrequency:(int64_t)a9;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STAlarmModification

- (STAlarmModification)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = STAlarmModification;
  v5 = [(STSiriModelObject *)&v17 initWithCoder:v4];
  if (v5)
  {
    v5->_addedFrequency = [v4 decodeIntegerForKey:@"_addedFrequency"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_alarmId"];
    alarmId = v5->_alarmId;
    v5->_alarmId = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_enabled"];
    enabled = v5->_enabled;
    v5->_enabled = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_hour"];
    hour = v5->_hour;
    v5->_hour = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_label"];
    label = v5->_label;
    v5->_label = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_minute"];
    minute = v5->_minute;
    v5->_minute = v14;

    v5->_removedFrequency = [v4 decodeIntegerForKey:@"_removedFrequency"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STAlarmModification;
  v4 = a3;
  [(STSiriModelObject *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_addedFrequency forKey:{@"_addedFrequency", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_alarmId forKey:@"_alarmId"];
  [v4 encodeObject:self->_enabled forKey:@"_enabled"];
  [v4 encodeObject:self->_hour forKey:@"_hour"];
  [v4 encodeObject:self->_label forKey:@"_label"];
  [v4 encodeObject:self->_minute forKey:@"_minute"];
  [v4 encodeInteger:self->_removedFrequency forKey:@"_removedFrequency"];
}

- (id)_initWithAddedFrequency:(int64_t)a3 alarmId:(id)a4 enabled:(id)a5 hour:(id)a6 label:(id)a7 minute:(id)a8 removedFrequency:(int64_t)a9
{
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v25 = a8;
  if (!v15)
  {
    v22 = [MEMORY[0x277CCA890] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"STAlarmModification.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"alarmId"}];
  }

  v26.receiver = self;
  v26.super_class = STAlarmModification;
  v19 = [(STAlarmModification *)&v26 init];
  v20 = v19;
  if (v19)
  {
    v19->_addedFrequency = a3;
    objc_storeStrong(&v19->_alarmId, a4);
    objc_storeStrong(&v20->_enabled, a5);
    objc_storeStrong(&v20->_hour, a6);
    objc_storeStrong(&v20->_label, a7);
    objc_storeStrong(&v20->_minute, a8);
    v20->_removedFrequency = a9;
  }

  return v20;
}

@end