@interface HKSPSleepModeObject
- (HKSPSleepModeObject)initWithCoder:(id)a3;
- (HKSPSleepModeObject)initWithSleepMode:(int64_t)a3 changeReason:(unint64_t)a4 syncAnchor:(id)a5;
- (HKSPSleepModeObject)objectWithSyncAnchor:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKSPSleepModeObject

- (HKSPSleepModeObject)initWithSleepMode:(int64_t)a3 changeReason:(unint64_t)a4 syncAnchor:(id)a5
{
  v8 = a5;
  v15.receiver = self;
  v15.super_class = HKSPSleepModeObject;
  v9 = [(HKSPSleepModeObject *)&v15 init];
  v10 = v9;
  if (v9)
  {
    v9->_sleepMode = a3;
    v9->_changeReason = a4;
    v11 = [v8 copyWithZone:0];
    syncAnchor = v10->_syncAnchor;
    v10->_syncAnchor = v11;

    v13 = v10;
  }

  return v10;
}

- (HKSPSleepModeObject)objectWithSyncAnchor:(id)a3
{
  v3 = [objc_alloc(objc_opt_class()) initWithSleepMode:self->_sleepMode changeReason:self->_changeReason syncAnchor:self->_syncAnchor];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  sleepMode = self->_sleepMode;
  v5 = a3;
  [v5 encodeInteger:sleepMode forKey:@"sleepMode"];
  [v5 encodeInteger:self->_changeReason forKey:@"changeReason"];
  [v5 encodeObject:self->_syncAnchor forKey:@"syncAnchor"];
}

- (HKSPSleepModeObject)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HKSPSleepModeObject;
  v5 = [(HKSPSleepModeObject *)&v10 init];
  if (v5)
  {
    v5->_sleepMode = [v4 decodeIntegerForKey:@"sleepMode"];
    v5->_changeReason = [v4 decodeIntegerForKey:@"changeReason"];
    v6 = [v4 decodeObjectOfClass:HKSPSyncAnchorClass() forKey:@"syncAnchor"];
    syncAnchor = v5->_syncAnchor;
    v5->_syncAnchor = v6;

    v8 = v5;
  }

  return v5;
}

@end