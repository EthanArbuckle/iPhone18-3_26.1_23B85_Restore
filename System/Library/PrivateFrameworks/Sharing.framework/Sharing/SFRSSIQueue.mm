@interface SFRSSIQueue
- (double)velocityFromA:(unint64_t)a toB:(unint64_t)b;
- (void)addSample:(double)sample atTicks:(unint64_t)ticks;
@end

@implementation SFRSSIQueue

- (void)addSample:(double)sample atTicks:(unint64_t)ticks
{
  if (sample < 0.0)
  {
    if (!self->_rssiValues)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
      rssiValues = self->_rssiValues;
      self->_rssiValues = v7;
    }

    if (!self->_tickValues)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
      tickValues = self->_tickValues;
      self->_tickValues = v9;
    }

    v11 = self->_rssiValues;
    v12 = [MEMORY[0x1E696AD98] numberWithDouble:sample];
    [(NSMutableArray *)v11 insertObject:v12 atIndex:0];

    v13 = self->_tickValues;
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:ticks];
    [(NSMutableArray *)v13 insertObject:v14 atIndex:0];

    if ([(NSMutableArray *)self->_rssiValues count]>= 5)
    {
      [(NSMutableArray *)self->_rssiValues removeLastObject];
    }

    if ([(NSMutableArray *)self->_tickValues count]>= 5)
    {
      v15 = self->_tickValues;

      [(NSMutableArray *)v15 removeLastObject];
    }
  }
}

- (double)velocityFromA:(unint64_t)a toB:(unint64_t)b
{
  v7 = 0.0;
  if ([(NSMutableArray *)self->_rssiValues count]> b)
  {
    v8 = [(NSMutableArray *)self->_tickValues count];
    if (a < b && v8 > b)
    {
      v9 = [(NSMutableArray *)self->_tickValues objectAtIndexedSubscript:a];
      [v9 unsignedLongLongValue];

      v10 = [(NSMutableArray *)self->_tickValues objectAtIndexedSubscript:b];
      [v10 unsignedLongLongValue];

      UpTicksToSecondsF();
      v12 = v11;
      v13 = [(NSMutableArray *)self->_rssiValues objectAtIndexedSubscript:a];
      [v13 doubleValue];
      v15 = v14;

      v16 = [(NSMutableArray *)self->_rssiValues objectAtIndexedSubscript:b];
      [v16 doubleValue];
      v18 = v17;

      return (v15 - v18) / v12;
    }
  }

  return v7;
}

@end