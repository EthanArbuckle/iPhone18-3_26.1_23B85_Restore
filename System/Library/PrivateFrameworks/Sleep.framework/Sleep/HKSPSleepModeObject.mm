@interface HKSPSleepModeObject
- (HKSPSleepModeObject)initWithCoder:(id)coder;
- (HKSPSleepModeObject)initWithSleepMode:(int64_t)mode changeReason:(unint64_t)reason syncAnchor:(id)anchor;
- (HKSPSleepModeObject)objectWithSyncAnchor:(id)anchor;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKSPSleepModeObject

- (HKSPSleepModeObject)initWithSleepMode:(int64_t)mode changeReason:(unint64_t)reason syncAnchor:(id)anchor
{
  anchorCopy = anchor;
  v15.receiver = self;
  v15.super_class = HKSPSleepModeObject;
  v9 = [(HKSPSleepModeObject *)&v15 init];
  v10 = v9;
  if (v9)
  {
    v9->_sleepMode = mode;
    v9->_changeReason = reason;
    v11 = [anchorCopy copyWithZone:0];
    syncAnchor = v10->_syncAnchor;
    v10->_syncAnchor = v11;

    v13 = v10;
  }

  return v10;
}

- (HKSPSleepModeObject)objectWithSyncAnchor:(id)anchor
{
  v3 = [objc_alloc(objc_opt_class()) initWithSleepMode:self->_sleepMode changeReason:self->_changeReason syncAnchor:self->_syncAnchor];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  sleepMode = self->_sleepMode;
  coderCopy = coder;
  [coderCopy encodeInteger:sleepMode forKey:@"sleepMode"];
  [coderCopy encodeInteger:self->_changeReason forKey:@"changeReason"];
  [coderCopy encodeObject:self->_syncAnchor forKey:@"syncAnchor"];
}

- (HKSPSleepModeObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = HKSPSleepModeObject;
  v5 = [(HKSPSleepModeObject *)&v10 init];
  if (v5)
  {
    v5->_sleepMode = [coderCopy decodeIntegerForKey:@"sleepMode"];
    v5->_changeReason = [coderCopy decodeIntegerForKey:@"changeReason"];
    v6 = [coderCopy decodeObjectOfClass:HKSPSyncAnchorClass() forKey:@"syncAnchor"];
    syncAnchor = v5->_syncAnchor;
    v5->_syncAnchor = v6;

    v8 = v5;
  }

  return v5;
}

@end