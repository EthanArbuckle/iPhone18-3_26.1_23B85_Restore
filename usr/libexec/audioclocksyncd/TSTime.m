@interface TSTime
+ (id)timeConverter;
- (BOOL)isEqual:(id)a3;
- (NSDate)utcDate;
- (TSGPSTime)gpsTime;
- (TSTime)init;
- (TSTime)initWithGPSTime:(id)a3;
- (TSTime)initWithNanosecondsSinceEpoch:(unint64_t)a3;
- (TSTime)initWithTAIDate:(id)a3;
- (TSTime)initWithUTCDate:(id)a3;
- (TSTime)initWithgPTPTime:(id)a3;
- (TSgPTPTime)gPTPTime;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)timeByAddingNanoseconds:(int64_t)a3;
@end

@implementation TSTime

+ (id)timeConverter
{
  if (qword_100058860 != -1)
  {
    sub_10002AE6C();
  }

  v3 = qword_100058858;

  return v3;
}

- (TSTime)init
{
  v3 = +[NSDate date];
  v4 = [(TSTime *)self initWithUTCDate:v3];

  return v4;
}

- (TSTime)initWithUTCDate:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() timeConverter];
  v6 = [v5 taiDateFromUTCDate:v4];

  v7 = [(TSTime *)self initWithTAIDate:v6];
  return v7;
}

- (TSTime)initWithTAIDate:(id)a3
{
  v4 = a3;
  [v4 timeIntervalSince1970];
  v6 = [(TSTime *)self initWithNanosecondsSinceEpoch:(v5 * 1000000000.0)];
  v7 = v6;
  if (v6)
  {
    *&v6->_timeTraceable = 257;
    [v4 timeIntervalSince1970];
    if (v8 < 0.0)
    {

      v7 = 0;
    }
  }

  return v7;
}

- (TSTime)initWithGPSTime:(id)a3
{
  result = -[TSTime initWithNanosecondsSinceEpoch:](self, "initWithNanosecondsSinceEpoch:", [a3 nanosecondsSinceEpoch] + 315964819000000000);
  if (result)
  {
    *&result->_timeTraceable = 257;
  }

  return result;
}

- (TSTime)initWithgPTPTime:(id)a3
{
  v4 = a3;
  v5 = -[TSTime initWithNanosecondsSinceEpoch:](self, "initWithNanosecondsSinceEpoch:", [v4 nanosecondsSinceEpoch]);
  if (v5)
  {
    if ([v4 isTimeTraceable] && objc_msgSend(v4, "isPTPTimescale") && objc_msgSend(v4, "isFrequencyTraceable"))
    {
      v5->_grandmasterIdentity = [v4 grandmasterIdentity];
      v5->_localPortNumber = [v4 localPortNumber];
      v5->_frequencyTraceable = [v4 isFrequencyTraceable];
      v5->_timeTraceable = [v4 isTimeTraceable];
    }

    else
    {

      v5 = 0;
    }
  }

  return v5;
}

- (TSTime)initWithNanosecondsSinceEpoch:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = TSTime;
  result = [(TSTime *)&v5 init];
  if (result)
  {
    result->_nanosecondsSinceEpoch = a3;
    result->_grandmasterIdentity = -1;
    result->_localPortNumber = 0;
  }

  return result;
}

- (NSDate)utcDate
{
  v3 = [objc_opt_class() timeConverter];
  v4 = [(TSTime *)self taiDate];
  v5 = [v3 utcDateFromTAIDate:v4];

  return v5;
}

- (TSGPSTime)gpsTime
{
  if (self->_nanosecondsSinceEpoch < 0x46288542E03FE00)
  {
    v3 = 0;
  }

  else
  {
    v3 = [[TSGPSTime alloc] initWithNanosecondsSinceEpoch:self->_nanosecondsSinceEpoch - 315964819000000000];
  }

  return v3;
}

- (TSgPTPTime)gPTPTime
{
  v2 = [[TSgPTPTime alloc] initWithNanosecondsSinceEpoch:self->_nanosecondsSinceEpoch onGrandmaster:self->_grandmasterIdentity withLocalPortNumber:self->_localPortNumber ptpTimescale:1 timeTraceable:self->_timeTraceable frequencyTraceable:self->_frequencyTraceable];

  return v2;
}

- (id)timeByAddingNanoseconds:(int64_t)a3
{
  if (a3 < 0 && self->_nanosecondsSinceEpoch < a3)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(TSTime *)self copy];
    v4[4] += a3;
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 4) = self->_nanosecondsSinceEpoch;
  *(result + 2) = self->_grandmasterIdentity;
  *(result + 8) = self->_initedWithgPTP;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (([v4 isMemberOfClass:objc_opt_class()] & 1) != 0 || -[TSTime isMemberOfClass:](self, "isMemberOfClass:", objc_opt_class()))
  {
    v5 = [(TSTime *)self nanosecondsSinceEpoch];
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
  grandmasterIdentity = self->_grandmasterIdentity;
  v4 = [(TSTime *)self nanosecondsSinceEpoch];
  if (grandmasterIdentity == -1)
  {
    [NSString stringWithFormat:@"TAI Time %llu", v4, v7];
  }

  else
  {
    [NSString stringWithFormat:@"TAI Time %llu GM 0x%016llx", v4, self->_grandmasterIdentity];
  }
  v5 = ;

  return v5;
}

@end