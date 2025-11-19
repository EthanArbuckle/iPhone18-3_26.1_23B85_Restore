@interface REMAlarmVehicleTrigger
- (BOOL)isEqual:(id)a3;
- (REMAlarmVehicleTrigger)initWithCoder:(id)a3;
- (REMAlarmVehicleTrigger)initWithEvent:(int64_t)a3;
- (REMAlarmVehicleTrigger)initWithObjectID:(id)a3 event:(int64_t)a4;
- (id)_deepCopy;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMAlarmVehicleTrigger

- (REMAlarmVehicleTrigger)initWithObjectID:(id)a3 event:(int64_t)a4
{
  v8.receiver = self;
  v8.super_class = REMAlarmVehicleTrigger;
  v5 = [(REMAlarmTrigger *)&v8 initWithObjectID:a3];
  v6 = v5;
  if (v5)
  {
    [(REMAlarmVehicleTrigger *)v5 setEvent:a4];
  }

  return v6;
}

- (REMAlarmVehicleTrigger)initWithEvent:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = REMAlarmVehicleTrigger;
  v4 = [(REMAlarmTrigger *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(REMAlarmVehicleTrigger *)v4 setEvent:a3];
  }

  return v5;
}

- (REMAlarmVehicleTrigger)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = REMAlarmVehicleTrigger;
  v5 = [(REMAlarmTrigger *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeIntegerForKey:@"event"];
    if (v6 >= 3)
    {
      v7 = os_log_create("com.apple.reminderkit", "default");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        [(REMAlarmVehicleTrigger *)v6 initWithCoder:v7];
      }

      v6 = 0;
    }

    [(REMAlarmVehicleTrigger *)v5 setEvent:v6];
  }

  return v5;
}

- (id)_deepCopy
{
  v2 = [[REMAlarmVehicleTrigger alloc] initWithEvent:[(REMAlarmVehicleTrigger *)self event]];

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(REMAlarmVehicleTrigger *)v4 event];
      v6 = v5 == [(REMAlarmVehicleTrigger *)self event];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = REMAlarmVehicleTrigger;
  v4 = [(REMAlarmVehicleTrigger *)&v9 description];
  v5 = [(REMAlarmVehicleTrigger *)self event];
  if (v5 >= 3)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown REMAlarmVehicleTriggerEvent %ld", v5];
  }

  else
  {
    v6 = off_1E75083D8[v5];
  }

  v7 = [v3 stringWithFormat:@"%@ {event = %@}", v4, v6];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = REMAlarmVehicleTrigger;
  v4 = a3;
  [(REMAlarmTrigger *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:-[REMAlarmVehicleTrigger event](self forKey:{"event", v5.receiver, v5.super_class), @"event"}];
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a1;
  _os_log_fault_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_FAULT, "Unknown REMAlarmVehicleTriggerEvent %ld", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end