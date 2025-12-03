@interface TSTime
+ (id)timeConverter;
- (BOOL)isEqual:(id)equal;
- (NSDate)utcDate;
- (TSGPSTime)gpsTime;
- (TSTime)init;
- (TSTime)initWithGPSTime:(id)time;
- (TSTime)initWithNanosecondsSinceEpoch:(unint64_t)epoch;
- (TSTime)initWithTAIDate:(id)date;
- (TSTime)initWithUTCDate:(id)date;
- (TSTime)initWithgPTPTime:(id)time;
- (TSgPTPTime)gPTPTime;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)timeByAddingNanoseconds:(int64_t)nanoseconds;
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

- (TSTime)initWithUTCDate:(id)date
{
  dateCopy = date;
  timeConverter = [objc_opt_class() timeConverter];
  v6 = [timeConverter taiDateFromUTCDate:dateCopy];

  v7 = [(TSTime *)self initWithTAIDate:v6];
  return v7;
}

- (TSTime)initWithTAIDate:(id)date
{
  dateCopy = date;
  [dateCopy timeIntervalSince1970];
  v6 = [(TSTime *)self initWithNanosecondsSinceEpoch:(v5 * 1000000000.0)];
  v7 = v6;
  if (v6)
  {
    *&v6->_timeTraceable = 257;
    [dateCopy timeIntervalSince1970];
    if (v8 < 0.0)
    {

      v7 = 0;
    }
  }

  return v7;
}

- (TSTime)initWithGPSTime:(id)time
{
  result = -[TSTime initWithNanosecondsSinceEpoch:](self, "initWithNanosecondsSinceEpoch:", [time nanosecondsSinceEpoch] + 315964819000000000);
  if (result)
  {
    *&result->_timeTraceable = 257;
  }

  return result;
}

- (TSTime)initWithgPTPTime:(id)time
{
  timeCopy = time;
  v5 = -[TSTime initWithNanosecondsSinceEpoch:](self, "initWithNanosecondsSinceEpoch:", [timeCopy nanosecondsSinceEpoch]);
  if (v5)
  {
    if ([timeCopy isTimeTraceable] && objc_msgSend(timeCopy, "isPTPTimescale") && objc_msgSend(timeCopy, "isFrequencyTraceable"))
    {
      v5->_grandmasterIdentity = [timeCopy grandmasterIdentity];
      v5->_localPortNumber = [timeCopy localPortNumber];
      v5->_frequencyTraceable = [timeCopy isFrequencyTraceable];
      v5->_timeTraceable = [timeCopy isTimeTraceable];
    }

    else
    {

      v5 = 0;
    }
  }

  return v5;
}

- (TSTime)initWithNanosecondsSinceEpoch:(unint64_t)epoch
{
  v5.receiver = self;
  v5.super_class = TSTime;
  result = [(TSTime *)&v5 init];
  if (result)
  {
    result->_nanosecondsSinceEpoch = epoch;
    result->_grandmasterIdentity = -1;
    result->_localPortNumber = 0;
  }

  return result;
}

- (NSDate)utcDate
{
  timeConverter = [objc_opt_class() timeConverter];
  taiDate = [(TSTime *)self taiDate];
  v5 = [timeConverter utcDateFromTAIDate:taiDate];

  return v5;
}

- (TSGPSTime)gpsTime
{
  if (self->_nanosecondsSinceEpoch < 0x46288542E03FE00)
  {
    315964819000000000 = 0;
  }

  else
  {
    315964819000000000 = [[TSGPSTime alloc] initWithNanosecondsSinceEpoch:self->_nanosecondsSinceEpoch - 315964819000000000];
  }

  return 315964819000000000;
}

- (TSgPTPTime)gPTPTime
{
  v2 = [[TSgPTPTime alloc] initWithNanosecondsSinceEpoch:self->_nanosecondsSinceEpoch onGrandmaster:self->_grandmasterIdentity withLocalPortNumber:self->_localPortNumber ptpTimescale:1 timeTraceable:self->_timeTraceable frequencyTraceable:self->_frequencyTraceable];

  return v2;
}

- (id)timeByAddingNanoseconds:(int64_t)nanoseconds
{
  if (nanoseconds < 0 && self->_nanosecondsSinceEpoch < nanoseconds)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(TSTime *)self copy];
    v4[4] += nanoseconds;
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 4) = self->_nanosecondsSinceEpoch;
  *(result + 2) = self->_grandmasterIdentity;
  *(result + 8) = self->_initedWithgPTP;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (([equalCopy isMemberOfClass:objc_opt_class()] & 1) != 0 || -[TSTime isMemberOfClass:](self, "isMemberOfClass:", objc_opt_class()))
  {
    nanosecondsSinceEpoch = [(TSTime *)self nanosecondsSinceEpoch];
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
  grandmasterIdentity = self->_grandmasterIdentity;
  nanosecondsSinceEpoch = [(TSTime *)self nanosecondsSinceEpoch];
  if (grandmasterIdentity == -1)
  {
    [NSString stringWithFormat:@"TAI Time %llu", nanosecondsSinceEpoch, v7];
  }

  else
  {
    [NSString stringWithFormat:@"TAI Time %llu GM 0x%016llx", nanosecondsSinceEpoch, self->_grandmasterIdentity];
  }
  v5 = ;

  return v5;
}

@end