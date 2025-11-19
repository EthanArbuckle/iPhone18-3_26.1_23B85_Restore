@interface RTMotionActivityHistogramBin
- (RTMotionActivityHistogramBin)initWithType:(unint64_t)a3 confidence:(unint64_t)a4 interval:(double)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)addInterval:(double)a3;
- (void)updateConfidence:(unint64_t)a3;
@end

@implementation RTMotionActivityHistogramBin

- (RTMotionActivityHistogramBin)initWithType:(unint64_t)a3 confidence:(unint64_t)a4 interval:(double)a5
{
  v9.receiver = self;
  v9.super_class = RTMotionActivityHistogramBin;
  result = [(RTMotionActivityHistogramBin *)&v9 init];
  if (result)
  {
    result->_type = a3;
    result->_confidence = a4;
    result->_interval = a5;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [RTMotionActivityHistogramBin alloc];
  v5 = [(RTMotionActivityHistogramBin *)self type];
  v6 = [(RTMotionActivityHistogramBin *)self confidence];
  [(RTMotionActivityHistogramBin *)self interval];

  return [(RTMotionActivityHistogramBin *)v4 initWithType:v5 confidence:v6 interval:?];
}

- (void)updateConfidence:(unint64_t)a3
{
  if ([(RTMotionActivityHistogramBin *)self confidence]< a3)
  {

    [(RTMotionActivityHistogramBin *)self setConfidence:a3];
  }
}

- (void)addInterval:(double)a3
{
  [(RTMotionActivityHistogramBin *)self interval];
  v6 = v5 + a3;

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