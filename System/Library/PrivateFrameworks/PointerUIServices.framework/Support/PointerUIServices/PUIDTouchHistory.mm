@interface PUIDTouchHistory
- (CGPoint)averageTouchVelocityOverTimeDuration:(double)duration;
- (PUIDTouchHistory)initWithDepth:(unint64_t)depth;
- (int)touchHistoryDepthForTimeDuration:(double)duration forComputingDerivative:(BOOL)derivative;
- (void)reset;
- (void)updateWithLocation:(CGPoint)location timestamp:(double)timestamp;
@end

@implementation PUIDTouchHistory

- (PUIDTouchHistory)initWithDepth:(unint64_t)depth
{
  v11.receiver = self;
  v11.super_class = PUIDTouchHistory;
  v4 = [(PUIDTouchHistory *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_depth = depth;
    v6 = [NSMutableArray arrayWithCapacity:depth];
    locations = v5->_locations;
    v5->_locations = v6;

    v8 = [NSMutableArray arrayWithCapacity:depth];
    timestamps = v5->_timestamps;
    v5->_timestamps = v8;
  }

  return v5;
}

- (void)updateWithLocation:(CGPoint)location timestamp:(double)timestamp
{
  y = location.y;
  x = location.x;
  if ([(NSMutableArray *)self->_locations count]== (self->_depth - 1))
  {
    [(NSMutableArray *)self->_locations removeLastObject];
    [(NSMutableArray *)self->_timestamps removeLastObject];
  }

  locations = self->_locations;
  v9 = [NSValue valueWithPoint:x, y];
  [(NSMutableArray *)locations insertObject:v9 atIndex:0];

  timestamps = self->_timestamps;
  v11 = [NSNumber numberWithDouble:timestamp];
  [(NSMutableArray *)timestamps insertObject:v11 atIndex:0];
}

- (void)reset
{
  [(NSMutableArray *)self->_locations removeAllObjects];
  timestamps = self->_timestamps;

  [(NSMutableArray *)timestamps removeAllObjects];
}

- (CGPoint)averageTouchVelocityOverTimeDuration:(double)duration
{
  v4 = [(PUIDTouchHistory *)self touchHistoryDepthForTimeDuration:1 forComputingDerivative:duration];
  x = CGPointZero.x;
  y = CGPointZero.y;
  if (v4)
  {
    v7 = v4;
    if (v4 >= 1)
    {
      v8 = 0;
      do
      {
        v9 = [(NSMutableArray *)self->_locations objectAtIndexedSubscript:v8];
        [v9 pointValue];
        v11 = v10;
        v13 = v12;

        v14 = v8 + 1;
        v15 = [(NSMutableArray *)self->_locations objectAtIndexedSubscript:v8 + 1];
        [v15 pointValue];
        v17 = v16;
        v19 = v18;

        v20 = [(NSMutableArray *)self->_timestamps objectAtIndexedSubscript:v8];
        [v20 doubleValue];
        v22 = v21;
        v23 = [(NSMutableArray *)self->_timestamps objectAtIndexedSubscript:v14];
        [v23 doubleValue];
        v25 = v22 - v24;

        if ((BSFloatIsZero() & 1) == 0)
        {
          x = x + (v11 - v17) / v25;
          y = y + (v13 - v19) / v25;
        }

        v8 = v14;
      }

      while (v14 != v7);
    }

    x = x / v7;
    y = y / v7;
  }

  v26 = x;
  v27 = y;
  result.y = v27;
  result.x = v26;
  return result;
}

- (int)touchHistoryDepthForTimeDuration:(double)duration forComputingDerivative:(BOOL)derivative
{
  derivativeCopy = derivative;
  v7 = CACurrentMediaTime();
  if (![(NSMutableArray *)self->_locations count])
  {
    return 0;
  }

  v8 = [(NSMutableArray *)self->_timestamps objectAtIndexedSubscript:0];
  [v8 doubleValue];
  v10 = v9;

  v11 = 0;
  for (i = 1; [(NSMutableArray *)self->_locations count]> i; ++i)
  {
    v13 = v7 - v10;
    v14 = [(NSMutableArray *)self->_timestamps objectAtIndexedSubscript:i];
    [v14 doubleValue];
    v10 = v15;

    ++v11;
    if (v13 >= duration)
    {
      if (!derivativeCopy)
      {
        --v11;
      }

      return v11;
    }
  }

  return v11;
}

@end