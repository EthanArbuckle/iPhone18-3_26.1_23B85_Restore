@interface InternalNetworkStateRecord
- (BOOL)_isEqualToNetworkStateRecord:(id)record;
- (BOOL)isEqual:(id)equal;
- (InternalNetworkStateRecord)initWithAge:(int64_t)age dayOfWeek:(int64_t)week slotId:(int64_t)id networkId:(id)networkId networkLQM:(int64_t)m stateDurationSeconds:(int64_t)seconds stateSlotLength:(int64_t)length;
- (id)description;
- (unint64_t)hash;
@end

@implementation InternalNetworkStateRecord

- (InternalNetworkStateRecord)initWithAge:(int64_t)age dayOfWeek:(int64_t)week slotId:(int64_t)id networkId:(id)networkId networkLQM:(int64_t)m stateDurationSeconds:(int64_t)seconds stateSlotLength:(int64_t)length
{
  networkIdCopy = networkId;
  v20.receiver = self;
  v20.super_class = InternalNetworkStateRecord;
  v17 = [(InternalNetworkStateRecord *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_stateAge = age;
    v17->_stateDayOfWeek = week;
    v17->_stateSlotId = id;
    objc_storeStrong(&v17->_stateNetworkId, networkId);
    v18->_stateNetworkLQM = m;
    v18->_stateDurationSeconds = seconds;
    v18->_stateSlotLength = length;
  }

  return v18;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(InternalNetworkStateRecord *)self _isEqualToNetworkStateRecord:equalCopy];
  }

  return v5;
}

- (BOOL)_isEqualToNetworkStateRecord:(id)record
{
  recordCopy = record;
  stateAge = [(InternalNetworkStateRecord *)self stateAge];
  if (stateAge == [recordCopy stateAge] && (v6 = -[InternalNetworkStateRecord stateDayOfWeek](self, "stateDayOfWeek"), v6 == objc_msgSend(recordCopy, "stateDayOfWeek")) && (v7 = -[InternalNetworkStateRecord stateSlotId](self, "stateSlotId"), v7 == objc_msgSend(recordCopy, "stateSlotId")) && (v8 = -[InternalNetworkStateRecord stateSlotLength](self, "stateSlotLength"), v8 == objc_msgSend(recordCopy, "stateSlotLength")))
  {
    stateNetworkId = [(InternalNetworkStateRecord *)self stateNetworkId];
    stateNetworkId2 = [recordCopy stateNetworkId];
    if ([stateNetworkId isEqualToString:stateNetworkId2])
    {
      stateNetworkLQM = [(InternalNetworkStateRecord *)self stateNetworkLQM];
      v12 = stateNetworkLQM == [recordCopy stateNetworkLQM];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  stateAge = [(InternalNetworkStateRecord *)self stateAge];
  stateDayOfWeek = [(InternalNetworkStateRecord *)self stateDayOfWeek];
  stateSlotId = [(InternalNetworkStateRecord *)self stateSlotId];
  stateSlotLength = [(InternalNetworkStateRecord *)self stateSlotLength];
  stateNetworkId = [(InternalNetworkStateRecord *)self stateNetworkId];
  v9 = [v3 initWithFormat:@"%ld %ld %ld %ld %@ %ld", stateAge, stateDayOfWeek, stateSlotId, stateSlotLength, stateNetworkId, -[InternalNetworkStateRecord stateNetworkLQM](self, "stateNetworkLQM")];
  v10 = [v9 hash];

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  stateAge = [(InternalNetworkStateRecord *)self stateAge];
  stateDayOfWeek = [(InternalNetworkStateRecord *)self stateDayOfWeek];
  stateSlotId = [(InternalNetworkStateRecord *)self stateSlotId];
  stateSlotId2 = [(InternalNetworkStateRecord *)self stateSlotId];
  v8 = stateSlotId2 + [(InternalNetworkStateRecord *)self stateSlotLength]- 1;
  stateNetworkId = [(InternalNetworkStateRecord *)self stateNetworkId];
  v10 = [v3 stringWithFormat:@"age=%ld, day=%ld, slot=%ld to %ld, networkID=%@, LQM=%ld, duration=%ld", stateAge, stateDayOfWeek, stateSlotId, v8, stateNetworkId, -[InternalNetworkStateRecord stateNetworkLQM](self, "stateNetworkLQM"), -[InternalNetworkStateRecord stateDurationSeconds](self, "stateDurationSeconds")];

  return v10;
}

@end