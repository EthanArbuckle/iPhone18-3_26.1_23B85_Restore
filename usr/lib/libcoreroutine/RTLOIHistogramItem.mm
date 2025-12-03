@interface RTLOIHistogramItem
- (RTLOIHistogramItem)initWithLocationOfInterest:(id)interest timeOfStay:(double)stay andNumOfEvents:(int64_t)events;
- (id)description;
@end

@implementation RTLOIHistogramItem

- (RTLOIHistogramItem)initWithLocationOfInterest:(id)interest timeOfStay:(double)stay andNumOfEvents:(int64_t)events
{
  interestCopy = interest;
  v13.receiver = self;
  v13.super_class = RTLOIHistogramItem;
  v10 = [(RTLOIHistogramItem *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_locationOfInterest, interest);
    v11->_timeOfStay = stay;
    v11->_probability = 0.0;
    v11->_numOfEvents = events;
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  locationOfInterest = [(RTLOIHistogramItem *)self locationOfInterest];
  [(RTLOIHistogramItem *)self timeOfStay];
  v6 = v5;
  numOfEvents = [(RTLOIHistogramItem *)self numOfEvents];
  [(RTLOIHistogramItem *)self probability];
  v9 = [v3 stringWithFormat:@"loi, %@, timeOfStay, %f, numberOfEvents, %ld, probability, %f", locationOfInterest, v6, numOfEvents, v8];

  return v9;
}

@end