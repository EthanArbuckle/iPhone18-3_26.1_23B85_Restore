@interface RTTripSegmentFeatures
- (RTTripSegmentFeatures)initWithTransitionIndex:(unint64_t)a3 tripId:(id)a4 mode:(int64_t)a5 dateInterval:(id)a6;
- (id)description;
@end

@implementation RTTripSegmentFeatures

- (RTTripSegmentFeatures)initWithTransitionIndex:(unint64_t)a3 tripId:(id)a4 mode:(int64_t)a5 dateInterval:(id)a6
{
  v11 = a4;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = RTTripSegmentFeatures;
  v13 = [(RTTripSegmentFeatures *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_transitionIndex = a3;
    objc_storeStrong(&v13->_tripId, a4);
    v14->_mode = a5;
    objc_storeStrong(&v14->_dateInterval, a6);
    v14->_tripSequenceNumber = -1;
  }

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(RTTripSegmentFeatures *)self dateInterval];
  v5 = [(RTTripSegmentFeatures *)self tripId];
  v6 = [v3 stringWithFormat:@"dateInterval, %@, tripId, %@, mode, %zd, transitionIdx, %tu, tripSequenceNumber, %d", v4, v5, -[RTTripSegmentFeatures mode](self, "mode"), -[RTTripSegmentFeatures transitionIndex](self, "transitionIndex"), -[RTTripSegmentFeatures tripSequenceNumber](self, "tripSequenceNumber")];

  return v6;
}

@end