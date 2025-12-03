@interface RTMotionActivityHistogramBin
- (RTMotionActivityHistogramBin)initWithType:(unint64_t)type confidence:(unint64_t)confidence interval:(double)interval;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)addInterval:(double)interval;
- (void)updateConfidence:(unint64_t)confidence;
@end

@implementation RTMotionActivityHistogramBin

- (RTMotionActivityHistogramBin)initWithType:(unint64_t)type confidence:(unint64_t)confidence interval:(double)interval
{
  v9.receiver = self;
  v9.super_class = RTMotionActivityHistogramBin;
  result = [(RTMotionActivityHistogramBin *)&v9 init];
  if (result)
  {
    result->_type = type;
    result->_confidence = confidence;
    result->_interval = interval;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [RTMotionActivityHistogramBin alloc];
  type = [(RTMotionActivityHistogramBin *)self type];
  confidence = [(RTMotionActivityHistogramBin *)self confidence];
  [(RTMotionActivityHistogramBin *)self interval];

  return [(RTMotionActivityHistogramBin *)v4 initWithType:type confidence:confidence interval:?];
}

- (void)updateConfidence:(unint64_t)confidence
{
  if ([(RTMotionActivityHistogramBin *)self confidence]< confidence)
  {

    [(RTMotionActivityHistogramBin *)self setConfidence:confidence];
  }
}

- (void)addInterval:(double)interval
{
  [(RTMotionActivityHistogramBin *)self interval];
  v6 = v5 + interval;

  [(RTMotionActivityHistogramBin *)self setInterval:v6];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277D011B8] motionActivityTypeToString:self->_type];
  v5 = [MEMORY[0x277D011B8] motionActivityConfidenceToString:self->_confidence];
  v6 = [v3 stringWithFormat:@"type, %@, confidence, %@, interval, %.2f", v4, v5, *&self->_interval];

  return v6;
}

@end