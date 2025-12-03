@interface RTTripSegmentFeatures
- (RTTripSegmentFeatures)initWithTransitionIndex:(unint64_t)index tripId:(id)id mode:(int64_t)mode dateInterval:(id)interval;
- (id)description;
@end

@implementation RTTripSegmentFeatures

- (RTTripSegmentFeatures)initWithTransitionIndex:(unint64_t)index tripId:(id)id mode:(int64_t)mode dateInterval:(id)interval
{
  idCopy = id;
  intervalCopy = interval;
  v16.receiver = self;
  v16.super_class = RTTripSegmentFeatures;
  v13 = [(RTTripSegmentFeatures *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_transitionIndex = index;
    objc_storeStrong(&v13->_tripId, id);
    v14->_mode = mode;
    objc_storeStrong(&v14->_dateInterval, interval);
    v14->_tripSequenceNumber = -1;
  }

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  dateInterval = [(RTTripSegmentFeatures *)self dateInterval];
  tripId = [(RTTripSegmentFeatures *)self tripId];
  v6 = [v3 stringWithFormat:@"dateInterval, %@, tripId, %@, mode, %zd, transitionIdx, %tu, tripSequenceNumber, %d", dateInterval, tripId, -[RTTripSegmentFeatures mode](self, "mode"), -[RTTripSegmentFeatures transitionIndex](self, "transitionIndex"), -[RTTripSegmentFeatures tripSequenceNumber](self, "tripSequenceNumber")];

  return v6;
}

@end