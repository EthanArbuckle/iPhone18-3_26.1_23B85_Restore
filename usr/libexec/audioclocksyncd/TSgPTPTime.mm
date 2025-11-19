@interface TSgPTPTime
- (BOOL)isEqual:(id)a3;
- (TSgPTPTime)init;
- (TSgPTPTime)initWithNanosecondsSinceEpoch:(unint64_t)a3 onGrandmaster:(unint64_t)a4 withLocalPortNumber:(unsigned __int16)a5 ptpTimescale:(BOOL)a6 timeTraceable:(BOOL)a7 frequencyTraceable:(BOOL)a8;
- (id)copyWithZone:(_NSZone *)a3;
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

- (TSgPTPTime)initWithNanosecondsSinceEpoch:(unint64_t)a3 onGrandmaster:(unint64_t)a4 withLocalPortNumber:(unsigned __int16)a5 ptpTimescale:(BOOL)a6 timeTraceable:(BOOL)a7 frequencyTraceable:(BOOL)a8
{
  v15.receiver = self;
  v15.super_class = TSgPTPTime;
  result = [(TSgPTPTime *)&v15 init];
  if (result)
  {
    result->_nanosecondsSinceEpoch = a3;
    result->_grandmasterIdentity = a4;
    result->_localPortNumber = a5;
    result->_ptpTimescale = a6;
    result->_timeTraceable = a7;
    result->_frequencyTraceable = a8;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 2) = self->_nanosecondsSinceEpoch;
  *(result + 3) = self->_grandmasterIdentity;
  *(result + 6) = self->_localPortNumber;
  *(result + 8) = self->_ptpTimescale;
  *(result + 9) = self->_timeTraceable;
  *(result + 10) = self->_frequencyTraceable;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (([v4 isMemberOfClass:objc_opt_class()] & 1) != 0 || -[TSgPTPTime isMemberOfClass:](self, "isMemberOfClass:", objc_opt_class()))
  {
    v5 = [(TSgPTPTime *)self nanosecondsSinceEpoch];
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
  v3 = [(TSgPTPTime *)self seconds];
  v4 = [(TSgPTPTime *)self nanoseconds];
  v5 = [(TSgPTPTime *)self grandmasterIdentity];
  v6 = [(TSgPTPTime *)self localPortNumber];
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

  return [NSString stringWithFormat:@"gPTP Time %llu.%09u GM 0x%016llx.%hu PTP timescale:%@ time traceable:%@ frequency traceable:%@", v3, v4, v5, v6, v7, v8, v9];
}

@end