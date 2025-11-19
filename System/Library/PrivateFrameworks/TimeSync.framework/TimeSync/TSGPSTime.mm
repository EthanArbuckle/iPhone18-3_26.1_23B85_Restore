@interface TSGPSTime
- (BOOL)isEqual:(id)a3;
- (TSGPSTime)initWithNanosecondsSinceEpoch:(unint64_t)a3;
- (TSGPSTime)initWithWeek:(unsigned int)a3 nanoseconds:(unint64_t)a4 rollovers:(unsigned __int16)a5;
- (TSGPSTime)initWithWeek:(unsigned int)a3 seconds:(double)a4 rollovers:(unsigned __int16)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation TSGPSTime

- (TSGPSTime)initWithNanosecondsSinceEpoch:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = TSGPSTime;
  result = [(TSGPSTime *)&v5 init];
  if (result)
  {
    result->_nanosecondsSinceEpoch = a3;
  }

  return result;
}

- (TSGPSTime)initWithWeek:(unsigned int)a3 seconds:(double)a4 rollovers:(unsigned __int16)a5
{
  v5 = a5 << 10;
  if (a3 >= 0x400)
  {
    v5 = 0;
  }

  return [(TSGPSTime *)self initWithExtendedWeek:v5 | a3 seconds:a4];
}

- (TSGPSTime)initWithWeek:(unsigned int)a3 nanoseconds:(unint64_t)a4 rollovers:(unsigned __int16)a5
{
  v5 = a5 << 10;
  if (a3 >= 0x400)
  {
    v5 = 0;
  }

  return [(TSGPSTime *)self initWithExtendedWeek:v5 | a3 nanoseconds:a4];
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 1) = self->_nanosecondsSinceEpoch;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (([v4 isMemberOfClass:objc_opt_class()] & 1) != 0 || -[TSGPSTime isMemberOfClass:](self, "isMemberOfClass:", objc_opt_class()))
  {
    v5 = [(TSGPSTime *)self nanosecondsSinceEpoch];
    v6 = v5 == [v4 nanosecondsSinceEpoch];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(TSGPSTime *)self extendedWeek];
  [(TSGPSTime *)self seconds];
  return [v3 stringWithFormat:@"GPS Time week %u seconds %0.9f", v4, v5];
}

@end