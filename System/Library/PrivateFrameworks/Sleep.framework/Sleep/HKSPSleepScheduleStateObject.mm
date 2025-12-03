@interface HKSPSleepScheduleStateObject
- (HKSPSleepScheduleStateObject)initWithCoder:(id)coder;
- (HKSPSleepScheduleStateObject)initWithScheduleState:(unint64_t)state changeReason:(unint64_t)reason syncAnchor:(id)anchor;
- (HKSPSleepScheduleStateObject)objectWithSyncAnchor:(id)anchor;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKSPSleepScheduleStateObject

- (HKSPSleepScheduleStateObject)initWithScheduleState:(unint64_t)state changeReason:(unint64_t)reason syncAnchor:(id)anchor
{
  anchorCopy = anchor;
  v15.receiver = self;
  v15.super_class = HKSPSleepScheduleStateObject;
  v9 = [(HKSPSleepScheduleStateObject *)&v15 init];
  v10 = v9;
  if (v9)
  {
    v9->_scheduleState = state;
    v9->_changeReason = reason;
    v11 = [anchorCopy copyWithZone:0];
    syncAnchor = v10->_syncAnchor;
    v10->_syncAnchor = v11;

    v13 = v10;
  }

  return v10;
}

- (HKSPSleepScheduleStateObject)objectWithSyncAnchor:(id)anchor
{
  v3 = [objc_alloc(objc_opt_class()) initWithScheduleState:self->_scheduleState changeReason:self->_changeReason syncAnchor:self->_syncAnchor];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  scheduleState = self->_scheduleState;
  coderCopy = coder;
  [coderCopy encodeInteger:scheduleState forKey:@"state"];
  [coderCopy encodeInteger:self->_changeReason forKey:@"changeReason"];
  [coderCopy encodeObject:self->_syncAnchor forKey:@"syncAnchor"];
}

- (HKSPSleepScheduleStateObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = HKSPSleepScheduleStateObject;
  v5 = [(HKSPSleepScheduleStateObject *)&v10 init];
  if (v5)
  {
    v5->_scheduleState = [coderCopy decodeIntegerForKey:@"state"];
    v5->_changeReason = [coderCopy decodeIntegerForKey:@"changeReason"];
    v6 = [coderCopy decodeObjectOfClass:HKSPSyncAnchorClass() forKey:@"syncAnchor"];
    syncAnchor = v5->_syncAnchor;
    v5->_syncAnchor = v6;

    v8 = v5;
  }

  return v5;
}

@end