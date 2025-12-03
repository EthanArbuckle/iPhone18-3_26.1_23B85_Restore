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
  if (timeConverter_onceToken != -1)
  {
    +[TSTime timeConverter];
  }

  v3 = _sharedTimeConverter;

  return v3;
}

uint64_t __23__TSTime_timeConverter__block_invoke()
{
  _sharedTimeConverter = objc_alloc_init(TSTimeConverter);

  return MEMORY[0x2821F96F8]();
}

- (TSTime)init
{
  date = [MEMORY[0x277CBEAA8] date];
  v4 = [(TSTime *)self initWithUTCDate:date];

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
  v4 = MEMORY[0x277CCACA8];
  nanosecondsSinceEpoch = [(TSTime *)self nanosecondsSinceEpoch];
  if (grandmasterIdentity == -1)
  {
    [v4 stringWithFormat:@"TAI Time %llu", nanosecondsSinceEpoch, v8];
  }

  else
  {
    [v4 stringWithFormat:@"TAI Time %llu GM 0x%016llx", nanosecondsSinceEpoch, self->_grandmasterIdentity];
  }
  v6 = ;

  return v6;
}

@end