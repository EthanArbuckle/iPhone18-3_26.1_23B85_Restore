@interface REMAlarm
+ (id)newObjectID;
+ (id)objectIDWithUUID:(id)d;
- (BOOL)isAcknowledged;
- (BOOL)isContentEqual:(id)equal;
- (BOOL)isEqual:(id)equal;
- (BOOL)isOriginal;
- (BOOL)isSnooze;
- (REMAlarm)initWithAlarm:(id)alarm objectID:(id)d;
- (REMAlarm)initWithCoder:(id)coder;
- (REMAlarm)initWithTrigger:(id)trigger;
- (REMAlarm)initWithTrigger:(id)trigger objectID:(id)d;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMAlarm

+ (id)newObjectID
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v4 = [self objectIDWithUUID:uUID];

  return v4;
}

+ (id)objectIDWithUUID:(id)d
{
  dCopy = d;
  cdEntityName = [self cdEntityName];
  v6 = [REMObjectID objectIDWithUUID:dCopy entityName:cdEntityName];

  return v6;
}

- (REMAlarm)initWithTrigger:(id)trigger objectID:(id)d
{
  triggerCopy = trigger;
  dCopy = d;
  v13.receiver = self;
  v13.super_class = REMAlarm;
  v8 = [(REMAlarm *)&v13 init];
  v9 = v8;
  if (v8)
  {
    [(REMAlarm *)v8 setTrigger:triggerCopy];
    [(REMAlarm *)v9 setObjectID:dCopy];
    uuid = [dCopy uuid];
    uUIDString = [uuid UUIDString];
    [(REMAlarm *)v9 setAlarmUID:uUIDString];
  }

  return v9;
}

- (REMAlarm)initWithTrigger:(id)trigger
{
  triggerCopy = trigger;
  newObjectID = [objc_opt_class() newObjectID];
  v6 = [(REMAlarm *)self initWithTrigger:triggerCopy objectID:newObjectID];

  return v6;
}

- (REMAlarm)initWithAlarm:(id)alarm objectID:(id)d
{
  alarmCopy = alarm;
  v6 = [REMAlarmTrigger alloc];
  trigger = [alarmCopy trigger];
  trigger2 = [alarmCopy trigger];
  newObjectID = [objc_opt_class() newObjectID];
  v10 = [(REMAlarmTrigger *)v6 initWithAlarmTrigger:trigger objectID:newObjectID];

  v11 = [(REMAlarm *)self initWithTrigger:v10];
  acknowledgedDate = [alarmCopy acknowledgedDate];

  [(REMAlarm *)v11 setAcknowledgedDate:acknowledgedDate];
  return v11;
}

- (REMAlarm)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"trigger"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"objectID"];
  v7 = [(REMAlarm *)self initWithTrigger:v5 objectID:v6];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"acknowledgedDate"];
  [(REMAlarm *)v7 setAcknowledgedDate:v8];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"alarmUID"];
  [(REMAlarm *)v7 setAlarmUID:v9];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"originalAlarmUID"];

  [(REMAlarm *)v7 setOriginalAlarmUID:v10];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  trigger = [(REMAlarm *)self trigger];
  [coderCopy encodeObject:trigger forKey:@"trigger"];

  objectID = [(REMAlarm *)self objectID];
  [coderCopy encodeObject:objectID forKey:@"objectID"];

  acknowledgedDate = [(REMAlarm *)self acknowledgedDate];
  [coderCopy encodeObject:acknowledgedDate forKey:@"acknowledgedDate"];

  alarmUID = [(REMAlarm *)self alarmUID];
  [coderCopy encodeObject:alarmUID forKey:@"alarmUID"];

  originalAlarmUID = [(REMAlarm *)self originalAlarmUID];
  [coderCopy encodeObject:originalAlarmUID forKey:@"originalAlarmUID"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy != self)
  {
    v6 = equalCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objectID = [(REMAlarm *)self objectID];
      objectID2 = [(REMAlarm *)v6 objectID];
      v9 = objectID2;
      if (objectID == objectID2)
      {
      }

      else
      {
        objectID3 = [(REMAlarm *)self objectID];
        objectID4 = [(REMAlarm *)v6 objectID];
        v12 = [objectID3 isEqual:objectID4];

        if (!v12)
        {
          goto LABEL_18;
        }
      }

      trigger = [(REMAlarm *)self trigger];
      trigger2 = [(REMAlarm *)v6 trigger];
      v16 = trigger2;
      if (trigger == trigger2)
      {
      }

      else
      {
        trigger3 = [(REMAlarm *)self trigger];
        trigger4 = [(REMAlarm *)v6 trigger];
        v19 = [trigger3 isEqual:trigger4];

        if (!v19)
        {
          goto LABEL_18;
        }
      }

      acknowledgedDate = [(REMAlarm *)self acknowledgedDate];
      acknowledgedDate2 = [(REMAlarm *)v6 acknowledgedDate];
      v22 = acknowledgedDate2;
      if (acknowledgedDate == acknowledgedDate2)
      {
      }

      else
      {
        acknowledgedDate3 = [(REMAlarm *)self acknowledgedDate];
        acknowledgedDate4 = [(REMAlarm *)v6 acknowledgedDate];
        v25 = [acknowledgedDate3 isEqual:acknowledgedDate4];

        if (!v25)
        {
          goto LABEL_18;
        }
      }

      alarmUID = [(REMAlarm *)self alarmUID];
      alarmUID2 = [(REMAlarm *)v6 alarmUID];
      v28 = alarmUID2;
      if (alarmUID == alarmUID2)
      {
      }

      else
      {
        alarmUID3 = [(REMAlarm *)self alarmUID];
        alarmUID4 = [(REMAlarm *)v6 alarmUID];
        v31 = [alarmUID3 isEqual:alarmUID4];

        if (!v31)
        {
          goto LABEL_18;
        }
      }

      originalAlarmUID = [(REMAlarm *)self originalAlarmUID];
      originalAlarmUID2 = [(REMAlarm *)v6 originalAlarmUID];
      if (originalAlarmUID == originalAlarmUID2)
      {
        v13 = 1;
      }

      else
      {
        originalAlarmUID3 = [(REMAlarm *)self originalAlarmUID];
        originalAlarmUID4 = [(REMAlarm *)v6 originalAlarmUID];
        v13 = [originalAlarmUID3 isEqual:originalAlarmUID4];
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

- (BOOL)isContentEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy != self)
  {
    v6 = equalCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      trigger = [(REMAlarm *)self trigger];
      trigger2 = [(REMAlarm *)v6 trigger];
      v9 = trigger2;
      if (trigger == trigger2)
      {
      }

      else
      {
        trigger3 = [(REMAlarm *)self trigger];
        trigger4 = [(REMAlarm *)v6 trigger];
        v12 = [trigger3 isContentEqual:trigger4];

        if (!v12)
        {
          goto LABEL_14;
        }
      }

      acknowledgedDate = [(REMAlarm *)self acknowledgedDate];
      acknowledgedDate2 = [(REMAlarm *)v6 acknowledgedDate];
      v16 = acknowledgedDate2;
      if (acknowledgedDate == acknowledgedDate2)
      {
      }

      else
      {
        acknowledgedDate3 = [(REMAlarm *)self acknowledgedDate];
        acknowledgedDate4 = [(REMAlarm *)v6 acknowledgedDate];
        v19 = [acknowledgedDate3 isEqual:acknowledgedDate4];

        if (!v19)
        {
          goto LABEL_14;
        }
      }

      alarmUID = [(REMAlarm *)self alarmUID];
      alarmUID2 = [(REMAlarm *)v6 alarmUID];
      v22 = alarmUID2;
      if (alarmUID == alarmUID2)
      {
      }

      else
      {
        alarmUID3 = [(REMAlarm *)self alarmUID];
        alarmUID4 = [(REMAlarm *)v6 alarmUID];
        v25 = [alarmUID3 isEqual:alarmUID4];

        if (!v25)
        {
          goto LABEL_14;
        }
      }

      originalAlarmUID = [(REMAlarm *)self originalAlarmUID];
      originalAlarmUID2 = [(REMAlarm *)v6 originalAlarmUID];
      if (originalAlarmUID == originalAlarmUID2)
      {
        v13 = 1;
      }

      else
      {
        originalAlarmUID3 = [(REMAlarm *)self originalAlarmUID];
        originalAlarmUID4 = [(REMAlarm *)v6 originalAlarmUID];
        v13 = [originalAlarmUID3 isEqual:originalAlarmUID4];
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
  objectID = [(REMAlarm *)self objectID];
  v3 = [objectID hash];

  return v3;
}

- (id)description
{
  originalAlarmUID = [(REMAlarm *)self originalAlarmUID];
  v4 = MEMORY[0x1E696AEC0];
  if (originalAlarmUID)
  {
    originalAlarmUID2 = [(REMAlarm *)self originalAlarmUID];
    [v4 stringWithFormat:@" (original-uid: %@)", originalAlarmUID2];
  }

  else
  {
    originalAlarmUID2 = [(REMAlarm *)self alarmUID];
    [v4 stringWithFormat:@" (uid: %@)", originalAlarmUID2];
  }
  v6 = ;

  v7 = MEMORY[0x1E696AEC0];
  v13.receiver = self;
  v13.super_class = REMAlarm;
  v8 = [(REMAlarm *)&v13 description];
  objectID = [(REMAlarm *)self objectID];
  trigger = [(REMAlarm *)self trigger];
  v11 = [v7 stringWithFormat:@"%@ %@ %@%@", v8, objectID, trigger, v6];

  return v11;
}

- (BOOL)isAcknowledged
{
  acknowledgedDate = [(REMAlarm *)self acknowledgedDate];
  v3 = acknowledgedDate != 0;

  return v3;
}

- (BOOL)isOriginal
{
  originalAlarmUID = [(REMAlarm *)self originalAlarmUID];
  v3 = originalAlarmUID == 0;

  return v3;
}

- (BOOL)isSnooze
{
  originalAlarmUID = [(REMAlarm *)self originalAlarmUID];
  v3 = originalAlarmUID != 0;

  return v3;
}

@end