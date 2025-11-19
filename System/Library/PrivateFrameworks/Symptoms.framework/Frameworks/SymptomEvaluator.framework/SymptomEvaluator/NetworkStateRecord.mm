@interface NetworkStateRecord
- (NetworkStateRecord)initWithAge:(int64_t)a3 dayOfWeek:(int64_t)a4 slotId:(int64_t)a5 stateLength:(int64_t)a6 beginningNetworkId:(id)a7 endingNetworkId:(id)a8 stateType:(int64_t)a9 label:(int64_t)a10;
- (NetworkStateRecord)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NetworkStateRecord

- (NetworkStateRecord)initWithAge:(int64_t)a3 dayOfWeek:(int64_t)a4 slotId:(int64_t)a5 stateLength:(int64_t)a6 beginningNetworkId:(id)a7 endingNetworkId:(id)a8 stateType:(int64_t)a9 label:(int64_t)a10
{
  v17 = a7;
  v18 = a8;
  v22.receiver = self;
  v22.super_class = NetworkStateRecord;
  v19 = [(NetworkStateRecord *)&v22 init];
  v20 = v19;
  if (v19)
  {
    v19->_stateAge = a3;
    v19->_stateDayOfWeek = a4;
    v19->_stateSlotId = a5;
    v19->_stateLength = a6;
    objc_storeStrong(&v19->_stateBeginningNetworkId, a7);
    objc_storeStrong(&v20->_stateEndingNetworkId, a8);
    v20->_stateType = a9;
    v20->_stateLabelAssigned = a10;
  }

  return v20;
}

- (NetworkStateRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = NetworkStateRecord;
  v5 = [(NetworkStateRecord *)&v11 init];
  if (v5)
  {
    v5->_stateAge = [v4 decodeIntegerForKey:@"age"];
    v5->_stateDayOfWeek = [v4 decodeIntegerForKey:@"dayOfWeek"];
    v5->_stateSlotId = [v4 decodeIntegerForKey:@"slotId"];
    v5->_stateLength = [v4 decodeIntegerForKey:@"length"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"beginningNetworkId"];
    stateBeginningNetworkId = v5->_stateBeginningNetworkId;
    v5->_stateBeginningNetworkId = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endingNetworkId"];
    stateEndingNetworkId = v5->_stateEndingNetworkId;
    v5->_stateEndingNetworkId = v8;

    v5->_stateType = [v4 decodeIntegerForKey:@"type"];
    v5->_stateLabelAssigned = [v4 decodeIntegerForKey:@"label"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  [v6 encodeInteger:-[NetworkStateRecord stateAge](self forKey:{"stateAge"), @"age"}];
  [v6 encodeInteger:-[NetworkStateRecord stateDayOfWeek](self forKey:{"stateDayOfWeek"), @"dayOfWeek"}];
  [v6 encodeInteger:-[NetworkStateRecord stateSlotId](self forKey:{"stateSlotId"), @"slotId"}];
  [v6 encodeInteger:-[NetworkStateRecord stateLength](self forKey:{"stateLength"), @"length"}];
  v4 = [(NetworkStateRecord *)self stateBeginningNetworkId];
  [v6 encodeObject:v4 forKey:@"beginningNetworkId"];

  v5 = [(NetworkStateRecord *)self stateEndingNetworkId];
  [v6 encodeObject:v5 forKey:@"endingNetworkId"];

  [v6 encodeInteger:-[NetworkStateRecord stateType](self forKey:{"stateType"), @"type"}];
  [v6 encodeInteger:-[NetworkStateRecord stateLabelAssigned](self forKey:{"stateLabelAssigned"), @"label"}];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(NetworkStateRecord *)self stateAge];
  v5 = [(NetworkStateRecord *)self stateDayOfWeek];
  v6 = [(NetworkStateRecord *)self stateSlotId];
  v7 = [(NetworkStateRecord *)self stateLength];
  v8 = [(NetworkStateRecord *)self stateBeginningNetworkId];
  v9 = [(NetworkStateRecord *)self stateEndingNetworkId];
  v10 = [v3 stringWithFormat:@"age=%ld, day=%ld, slot=%ld, length=%ld, start networkID=%@, end networkID=%@, type=%ld, label=%ld", v4, v5, v6, v7, v8, v9, -[NetworkStateRecord stateType](self, "stateType"), -[NetworkStateRecord stateLabelAssigned](self, "stateLabelAssigned")];

  return v10;
}

@end