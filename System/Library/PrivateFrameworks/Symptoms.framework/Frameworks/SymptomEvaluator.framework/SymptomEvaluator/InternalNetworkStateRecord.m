@interface InternalNetworkStateRecord
- (BOOL)_isEqualToNetworkStateRecord:(id)a3;
- (BOOL)isEqual:(id)a3;
- (InternalNetworkStateRecord)initWithAge:(int64_t)a3 dayOfWeek:(int64_t)a4 slotId:(int64_t)a5 networkId:(id)a6 networkLQM:(int64_t)a7 stateDurationSeconds:(int64_t)a8 stateSlotLength:(int64_t)a9;
- (id)description;
- (unint64_t)hash;
@end

@implementation InternalNetworkStateRecord

- (InternalNetworkStateRecord)initWithAge:(int64_t)a3 dayOfWeek:(int64_t)a4 slotId:(int64_t)a5 networkId:(id)a6 networkLQM:(int64_t)a7 stateDurationSeconds:(int64_t)a8 stateSlotLength:(int64_t)a9
{
  v16 = a6;
  v20.receiver = self;
  v20.super_class = InternalNetworkStateRecord;
  v17 = [(InternalNetworkStateRecord *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_stateAge = a3;
    v17->_stateDayOfWeek = a4;
    v17->_stateSlotId = a5;
    objc_storeStrong(&v17->_stateNetworkId, a6);
    v18->_stateNetworkLQM = a7;
    v18->_stateDurationSeconds = a8;
    v18->_stateSlotLength = a9;
  }

  return v18;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(InternalNetworkStateRecord *)self _isEqualToNetworkStateRecord:v4];
  }

  return v5;
}

- (BOOL)_isEqualToNetworkStateRecord:(id)a3
{
  v4 = a3;
  v5 = [(InternalNetworkStateRecord *)self stateAge];
  if (v5 == [v4 stateAge] && (v6 = -[InternalNetworkStateRecord stateDayOfWeek](self, "stateDayOfWeek"), v6 == objc_msgSend(v4, "stateDayOfWeek")) && (v7 = -[InternalNetworkStateRecord stateSlotId](self, "stateSlotId"), v7 == objc_msgSend(v4, "stateSlotId")) && (v8 = -[InternalNetworkStateRecord stateSlotLength](self, "stateSlotLength"), v8 == objc_msgSend(v4, "stateSlotLength")))
  {
    v9 = [(InternalNetworkStateRecord *)self stateNetworkId];
    v10 = [v4 stateNetworkId];
    if ([v9 isEqualToString:v10])
    {
      v11 = [(InternalNetworkStateRecord *)self stateNetworkLQM];
      v12 = v11 == [v4 stateNetworkLQM];
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
  v4 = [(InternalNetworkStateRecord *)self stateAge];
  v5 = [(InternalNetworkStateRecord *)self stateDayOfWeek];
  v6 = [(InternalNetworkStateRecord *)self stateSlotId];
  v7 = [(InternalNetworkStateRecord *)self stateSlotLength];
  v8 = [(InternalNetworkStateRecord *)self stateNetworkId];
  v9 = [v3 initWithFormat:@"%ld %ld %ld %ld %@ %ld", v4, v5, v6, v7, v8, -[InternalNetworkStateRecord stateNetworkLQM](self, "stateNetworkLQM")];
  v10 = [v9 hash];

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(InternalNetworkStateRecord *)self stateAge];
  v5 = [(InternalNetworkStateRecord *)self stateDayOfWeek];
  v6 = [(InternalNetworkStateRecord *)self stateSlotId];
  v7 = [(InternalNetworkStateRecord *)self stateSlotId];
  v8 = v7 + [(InternalNetworkStateRecord *)self stateSlotLength]- 1;
  v9 = [(InternalNetworkStateRecord *)self stateNetworkId];
  v10 = [v3 stringWithFormat:@"age=%ld, day=%ld, slot=%ld to %ld, networkID=%@, LQM=%ld, duration=%ld", v4, v5, v6, v8, v9, -[InternalNetworkStateRecord stateNetworkLQM](self, "stateNetworkLQM"), -[InternalNetworkStateRecord stateDurationSeconds](self, "stateDurationSeconds")];

  return v10;
}

@end