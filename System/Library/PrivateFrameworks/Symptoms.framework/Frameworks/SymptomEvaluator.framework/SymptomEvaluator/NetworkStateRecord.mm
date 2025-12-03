@interface NetworkStateRecord
- (NetworkStateRecord)initWithAge:(int64_t)age dayOfWeek:(int64_t)week slotId:(int64_t)id stateLength:(int64_t)length beginningNetworkId:(id)networkId endingNetworkId:(id)endingNetworkId stateType:(int64_t)type label:(int64_t)self0;
- (NetworkStateRecord)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NetworkStateRecord

- (NetworkStateRecord)initWithAge:(int64_t)age dayOfWeek:(int64_t)week slotId:(int64_t)id stateLength:(int64_t)length beginningNetworkId:(id)networkId endingNetworkId:(id)endingNetworkId stateType:(int64_t)type label:(int64_t)self0
{
  networkIdCopy = networkId;
  endingNetworkIdCopy = endingNetworkId;
  v22.receiver = self;
  v22.super_class = NetworkStateRecord;
  v19 = [(NetworkStateRecord *)&v22 init];
  v20 = v19;
  if (v19)
  {
    v19->_stateAge = age;
    v19->_stateDayOfWeek = week;
    v19->_stateSlotId = id;
    v19->_stateLength = length;
    objc_storeStrong(&v19->_stateBeginningNetworkId, networkId);
    objc_storeStrong(&v20->_stateEndingNetworkId, endingNetworkId);
    v20->_stateType = type;
    v20->_stateLabelAssigned = label;
  }

  return v20;
}

- (NetworkStateRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = NetworkStateRecord;
  v5 = [(NetworkStateRecord *)&v11 init];
  if (v5)
  {
    v5->_stateAge = [coderCopy decodeIntegerForKey:@"age"];
    v5->_stateDayOfWeek = [coderCopy decodeIntegerForKey:@"dayOfWeek"];
    v5->_stateSlotId = [coderCopy decodeIntegerForKey:@"slotId"];
    v5->_stateLength = [coderCopy decodeIntegerForKey:@"length"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"beginningNetworkId"];
    stateBeginningNetworkId = v5->_stateBeginningNetworkId;
    v5->_stateBeginningNetworkId = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endingNetworkId"];
    stateEndingNetworkId = v5->_stateEndingNetworkId;
    v5->_stateEndingNetworkId = v8;

    v5->_stateType = [coderCopy decodeIntegerForKey:@"type"];
    v5->_stateLabelAssigned = [coderCopy decodeIntegerForKey:@"label"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[NetworkStateRecord stateAge](self forKey:{"stateAge"), @"age"}];
  [coderCopy encodeInteger:-[NetworkStateRecord stateDayOfWeek](self forKey:{"stateDayOfWeek"), @"dayOfWeek"}];
  [coderCopy encodeInteger:-[NetworkStateRecord stateSlotId](self forKey:{"stateSlotId"), @"slotId"}];
  [coderCopy encodeInteger:-[NetworkStateRecord stateLength](self forKey:{"stateLength"), @"length"}];
  stateBeginningNetworkId = [(NetworkStateRecord *)self stateBeginningNetworkId];
  [coderCopy encodeObject:stateBeginningNetworkId forKey:@"beginningNetworkId"];

  stateEndingNetworkId = [(NetworkStateRecord *)self stateEndingNetworkId];
  [coderCopy encodeObject:stateEndingNetworkId forKey:@"endingNetworkId"];

  [coderCopy encodeInteger:-[NetworkStateRecord stateType](self forKey:{"stateType"), @"type"}];
  [coderCopy encodeInteger:-[NetworkStateRecord stateLabelAssigned](self forKey:{"stateLabelAssigned"), @"label"}];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  stateAge = [(NetworkStateRecord *)self stateAge];
  stateDayOfWeek = [(NetworkStateRecord *)self stateDayOfWeek];
  stateSlotId = [(NetworkStateRecord *)self stateSlotId];
  stateLength = [(NetworkStateRecord *)self stateLength];
  stateBeginningNetworkId = [(NetworkStateRecord *)self stateBeginningNetworkId];
  stateEndingNetworkId = [(NetworkStateRecord *)self stateEndingNetworkId];
  v10 = [v3 stringWithFormat:@"age=%ld, day=%ld, slot=%ld, length=%ld, start networkID=%@, end networkID=%@, type=%ld, label=%ld", stateAge, stateDayOfWeek, stateSlotId, stateLength, stateBeginningNetworkId, stateEndingNetworkId, -[NetworkStateRecord stateType](self, "stateType"), -[NetworkStateRecord stateLabelAssigned](self, "stateLabelAssigned")];

  return v10;
}

@end