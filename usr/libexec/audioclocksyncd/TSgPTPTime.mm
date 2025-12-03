@interface TSgPTPTime
- (BOOL)isEqual:(id)equal;
- (TSgPTPTime)init;
- (TSgPTPTime)initWithNanosecondsSinceEpoch:(unint64_t)epoch onGrandmaster:(unint64_t)grandmaster withLocalPortNumber:(unsigned __int16)number ptpTimescale:(BOOL)timescale timeTraceable:(BOOL)traceable frequencyTraceable:(BOOL)frequencyTraceable;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation TSgPTPTime

- (TSgPTPTime)init
{
  v3.receiver = self;
  v3.super_class = TSgPTPTime;
  result = [(TSgPTPTime *)&v3 init];
  if (result)
  {
    result->_grandmasterIdentity = -1;
  }

  return result;
}

- (TSgPTPTime)initWithNanosecondsSinceEpoch:(unint64_t)epoch onGrandmaster:(unint64_t)grandmaster withLocalPortNumber:(unsigned __int16)number ptpTimescale:(BOOL)timescale timeTraceable:(BOOL)traceable frequencyTraceable:(BOOL)frequencyTraceable
{
  v15.receiver = self;
  v15.super_class = TSgPTPTime;
  result = [(TSgPTPTime *)&v15 init];
  if (result)
  {
    result->_nanosecondsSinceEpoch = epoch;
    result->_grandmasterIdentity = grandmaster;
    result->_localPortNumber = number;
    result->_ptpTimescale = timescale;
    result->_timeTraceable = traceable;
    result->_frequencyTraceable = frequencyTraceable;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 2) = self->_nanosecondsSinceEpoch;
  *(result + 3) = self->_grandmasterIdentity;
  *(result + 6) = self->_localPortNumber;
  *(result + 8) = self->_ptpTimescale;
  *(result + 9) = self->_timeTraceable;
  *(result + 10) = self->_frequencyTraceable;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (([equalCopy isMemberOfClass:objc_opt_class()] & 1) != 0 || -[TSgPTPTime isMemberOfClass:](self, "isMemberOfClass:", objc_opt_class()))
  {
    nanosecondsSinceEpoch = [(TSgPTPTime *)self nanosecondsSinceEpoch];
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
  seconds = [(TSgPTPTime *)self seconds];
  nanoseconds = [(TSgPTPTime *)self nanoseconds];
  grandmasterIdentity = [(TSgPTPTime *)self grandmasterIdentity];
  localPortNumber = [(TSgPTPTime *)self localPortNumber];
  if ([(TSgPTPTime *)self isPTPTimescale])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if ([(TSgPTPTime *)self isTimeTraceable])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if ([(TSgPTPTime *)self isFrequencyTraceable])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  return [NSString stringWithFormat:@"gPTP Time %llu.%09u GM 0x%016llx.%hu PTP timescale:%@ time traceable:%@ frequency traceable:%@", seconds, nanoseconds, grandmasterIdentity, localPortNumber, v7, v8, v9];
}

@end