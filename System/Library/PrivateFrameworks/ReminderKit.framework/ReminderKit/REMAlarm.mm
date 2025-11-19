@interface REMAlarm
+ (id)newObjectID;
+ (id)objectIDWithUUID:(id)a3;
- (BOOL)isAcknowledged;
- (BOOL)isContentEqual:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isOriginal;
- (BOOL)isSnooze;
- (REMAlarm)initWithAlarm:(id)a3 objectID:(id)a4;
- (REMAlarm)initWithCoder:(id)a3;
- (REMAlarm)initWithTrigger:(id)a3;
- (REMAlarm)initWithTrigger:(id)a3 objectID:(id)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMAlarm

+ (id)newObjectID
{
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [a1 objectIDWithUUID:v3];

  return v4;
}

+ (id)objectIDWithUUID:(id)a3
{
  v4 = a3;
  v5 = [a1 cdEntityName];
  v6 = [REMObjectID objectIDWithUUID:v4 entityName:v5];

  return v6;
}

- (REMAlarm)initWithTrigger:(id)a3 objectID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = REMAlarm;
  v8 = [(REMAlarm *)&v13 init];
  v9 = v8;
  if (v8)
  {
    [(REMAlarm *)v8 setTrigger:v6];
    [(REMAlarm *)v9 setObjectID:v7];
    v10 = [v7 uuid];
    v11 = [v10 UUIDString];
    [(REMAlarm *)v9 setAlarmUID:v11];
  }

  return v9;
}

- (REMAlarm)initWithTrigger:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() newObjectID];
  v6 = [(REMAlarm *)self initWithTrigger:v4 objectID:v5];

  return v6;
}

- (REMAlarm)initWithAlarm:(id)a3 objectID:(id)a4
{
  v5 = a3;
  v6 = [REMAlarmTrigger alloc];
  v7 = [v5 trigger];
  v8 = [v5 trigger];
  v9 = [objc_opt_class() newObjectID];
  v10 = [(REMAlarmTrigger *)v6 initWithAlarmTrigger:v7 objectID:v9];

  v11 = [(REMAlarm *)self initWithTrigger:v10];
  v12 = [v5 acknowledgedDate];

  [(REMAlarm *)v11 setAcknowledgedDate:v12];
  return v11;
}

- (REMAlarm)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"trigger"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"objectID"];
  v7 = [(REMAlarm *)self initWithTrigger:v5 objectID:v6];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"acknowledgedDate"];
  [(REMAlarm *)v7 setAcknowledgedDate:v8];

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"alarmUID"];
  [(REMAlarm *)v7 setAlarmUID:v9];

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"originalAlarmUID"];

  [(REMAlarm *)v7 setOriginalAlarmUID:v10];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(REMAlarm *)self trigger];
  [v4 encodeObject:v5 forKey:@"trigger"];

  v6 = [(REMAlarm *)self objectID];
  [v4 encodeObject:v6 forKey:@"objectID"];

  v7 = [(REMAlarm *)self acknowledgedDate];
  [v4 encodeObject:v7 forKey:@"acknowledgedDate"];

  v8 = [(REMAlarm *)self alarmUID];
  [v4 encodeObject:v8 forKey:@"alarmUID"];

  v9 = [(REMAlarm *)self originalAlarmUID];
  [v4 encodeObject:v9 forKey:@"originalAlarmUID"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 != self)
  {
    v6 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(REMAlarm *)self objectID];
      v8 = [(REMAlarm *)v6 objectID];
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        v10 = [(REMAlarm *)self objectID];
        v11 = [(REMAlarm *)v6 objectID];
        v12 = [v10 isEqual:v11];

        if (!v12)
        {
          goto LABEL_18;
        }
      }

      v14 = [(REMAlarm *)self trigger];
      v15 = [(REMAlarm *)v6 trigger];
      v16 = v15;
      if (v14 == v15)
      {
      }

      else
      {
        v17 = [(REMAlarm *)self trigger];
        v18 = [(REMAlarm *)v6 trigger];
        v19 = [v17 isEqual:v18];

        if (!v19)
        {
          goto LABEL_18;
        }
      }

      v20 = [(REMAlarm *)self acknowledgedDate];
      v21 = [(REMAlarm *)v6 acknowledgedDate];
      v22 = v21;
      if (v20 == v21)
      {
      }

      else
      {
        v23 = [(REMAlarm *)self acknowledgedDate];
        v24 = [(REMAlarm *)v6 acknowledgedDate];
        v25 = [v23 isEqual:v24];

        if (!v25)
        {
          goto LABEL_18;
        }
      }

      v26 = [(REMAlarm *)self alarmUID];
      v27 = [(REMAlarm *)v6 alarmUID];
      v28 = v27;
      if (v26 == v27)
      {
      }

      else
      {
        v29 = [(REMAlarm *)self alarmUID];
        v30 = [(REMAlarm *)v6 alarmUID];
        v31 = [v29 isEqual:v30];

        if (!v31)
        {
          goto LABEL_18;
        }
      }

      v33 = [(REMAlarm *)self originalAlarmUID];
      v34 = [(REMAlarm *)v6 originalAlarmUID];
      if (v33 == v34)
      {
        v13 = 1;
      }

      else
      {
        v35 = [(REMAlarm *)self originalAlarmUID];
        v36 = [(REMAlarm *)v6 originalAlarmUID];
        v13 = [v35 isEqual:v36];
      }

      goto LABEL_19;
    }

LABEL_18:
    v13 = 0;
LABEL_19:

    goto LABEL_20;
  }

  v13 = 1;
LABEL_20:

  return v13 & 1;
}

- (BOOL)isContentEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 != self)
  {
    v6 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(REMAlarm *)self trigger];
      v8 = [(REMAlarm *)v6 trigger];
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        v10 = [(REMAlarm *)self trigger];
        v11 = [(REMAlarm *)v6 trigger];
        v12 = [v10 isContentEqual:v11];

        if (!v12)
        {
          goto LABEL_14;
        }
      }

      v14 = [(REMAlarm *)self acknowledgedDate];
      v15 = [(REMAlarm *)v6 acknowledgedDate];
      v16 = v15;
      if (v14 == v15)
      {
      }

      else
      {
        v17 = [(REMAlarm *)self acknowledgedDate];
        v18 = [(REMAlarm *)v6 acknowledgedDate];
        v19 = [v17 isEqual:v18];

        if (!v19)
        {
          goto LABEL_14;
        }
      }

      v20 = [(REMAlarm *)self alarmUID];
      v21 = [(REMAlarm *)v6 alarmUID];
      v22 = v21;
      if (v20 == v21)
      {
      }

      else
      {
        v23 = [(REMAlarm *)self alarmUID];
        v24 = [(REMAlarm *)v6 alarmUID];
        v25 = [v23 isEqual:v24];

        if (!v25)
        {
          goto LABEL_14;
        }
      }

      v27 = [(REMAlarm *)self originalAlarmUID];
      v28 = [(REMAlarm *)v6 originalAlarmUID];
      if (v27 == v28)
      {
        v13 = 1;
      }

      else
      {
        v29 = [(REMAlarm *)self originalAlarmUID];
        v30 = [(REMAlarm *)v6 originalAlarmUID];
        v13 = [v29 isEqual:v30];
      }

      goto LABEL_15;
    }

LABEL_14:
    v13 = 0;
LABEL_15:

    goto LABEL_16;
  }

  v13 = 1;
LABEL_16:

  return v13 & 1;
}

- (unint64_t)hash
{
  v2 = [(REMAlarm *)self objectID];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v3 = [(REMAlarm *)self originalAlarmUID];
  v4 = MEMORY[0x1E696AEC0];
  if (v3)
  {
    v5 = [(REMAlarm *)self originalAlarmUID];
    [v4 stringWithFormat:@" (original-uid: %@)", v5];
  }

  else
  {
    v5 = [(REMAlarm *)self alarmUID];
    [v4 stringWithFormat:@" (uid: %@)", v5];
  }
  v6 = ;

  v7 = MEMORY[0x1E696AEC0];
  v13.receiver = self;
  v13.super_class = REMAlarm;
  v8 = [(REMAlarm *)&v13 description];
  v9 = [(REMAlarm *)self objectID];
  v10 = [(REMAlarm *)self trigger];
  v11 = [v7 stringWithFormat:@"%@ %@ %@%@", v8, v9, v10, v6];

  return v11;
}

- (BOOL)isAcknowledged
{
  v2 = [(REMAlarm *)self acknowledgedDate];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)isOriginal
{
  v2 = [(REMAlarm *)self originalAlarmUID];
  v3 = v2 == 0;

  return v3;
}

- (BOOL)isSnooze
{
  v2 = [(REMAlarm *)self originalAlarmUID];
  v3 = v2 != 0;

  return v3;
}

@end