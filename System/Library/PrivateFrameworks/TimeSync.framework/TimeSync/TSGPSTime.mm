@interface TSGPSTime
- (BOOL)isEqual:(id)equal;
- (TSGPSTime)initWithNanosecondsSinceEpoch:(unint64_t)epoch;
- (TSGPSTime)initWithWeek:(unsigned int)week nanoseconds:(unint64_t)nanoseconds rollovers:(unsigned __int16)rollovers;
- (TSGPSTime)initWithWeek:(unsigned int)week seconds:(double)seconds rollovers:(unsigned __int16)rollovers;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation TSGPSTime

- (TSGPSTime)initWithNanosecondsSinceEpoch:(unint64_t)epoch
{
  v5.receiver = self;
  v5.super_class = TSGPSTime;
  result = [(TSGPSTime *)&v5 init];
  if (result)
  {
    result->_nanosecondsSinceEpoch = epoch;
  }

  return result;
}

- (TSGPSTime)initWithWeek:(unsigned int)week seconds:(double)seconds rollovers:(unsigned __int16)rollovers
{
  v5 = rollovers << 10;
  if (week >= 0x400)
  {
    v5 = 0;
  }

  return [(TSGPSTime *)self initWithExtendedWeek:v5 | week seconds:seconds];
}

- (TSGPSTime)initWithWeek:(unsigned int)week nanoseconds:(unint64_t)nanoseconds rollovers:(unsigned __int16)rollovers
{
  v5 = rollovers << 10;
  if (week >= 0x400)
  {
    v5 = 0;
  }

  return [(TSGPSTime *)self initWithExtendedWeek:v5 | week nanoseconds:nanoseconds];
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 1) = self->_nanosecondsSinceEpoch;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (([equalCopy isMemberOfClass:objc_opt_class()] & 1) != 0 || -[TSGPSTime isMemberOfClass:](self, "isMemberOfClass:", objc_opt_class()))
  {
    nanosecondsSinceEpoch = [(TSGPSTime *)self nanosecondsSinceEpoch];
    v6 = nanosecondsSinceEpoch == [equalCopy nanosecondsSinceEpoch];
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
  extendedWeek = [(TSGPSTime *)self extendedWeek];
  [(TSGPSTime *)self seconds];
  return [v3 stringWithFormat:@"GPS Time week %u seconds %0.9f", extendedWeek, v5];
}

@end