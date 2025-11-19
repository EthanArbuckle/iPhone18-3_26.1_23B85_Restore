@interface RTLOIHistogramItem
- (RTLOIHistogramItem)initWithLocationOfInterest:(id)a3 timeOfStay:(double)a4 andNumOfEvents:(int64_t)a5;
- (id)description;
@end

@implementation RTLOIHistogramItem

- (RTLOIHistogramItem)initWithLocationOfInterest:(id)a3 timeOfStay:(double)a4 andNumOfEvents:(int64_t)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = RTLOIHistogramItem;
  v10 = [(RTLOIHistogramItem *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_locationOfInterest, a3);
    v11->_timeOfStay = a4;
    v11->_probability = 0.0;
    v11->_numOfEvents = a5;
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(RTLOIHistogramItem *)self locationOfInterest];
  [(RTLOIHistogramItem *)self timeOfStay];
  v6 = v5;
  v7 = [(RTLOIHistogramItem *)self numOfEvents];
  [(RTLOIHistogramItem *)self probability];
  v9 = [v3 stringWithFormat:@"loi, %@, timeOfStay, %f, numberOfEvents, %ld, probability, %f", v4, v6, v7, v8];

  return v9;
}

@end