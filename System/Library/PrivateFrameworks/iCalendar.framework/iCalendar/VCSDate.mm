@interface VCSDate
+ (id)dateListFromData:(id)data;
- (BOOL)isEqual:(id)equal;
- (VCSDate)dateWithTimeComponentsFromDate:(id)date;
- (VCSDate)initWithDateComponents:(id)components floating:(BOOL)floating dateOnly:(BOOL)only;
- (VCSDate)initWithDateString:(const char *)string;
- (VCSDate)initWithYear:(int64_t)year month:(int64_t)month day:(int64_t)day hour:(int64_t)hour minute:(int64_t)minute second:(int64_t)second floating:(BOOL)floating dateOnly:(BOOL)self0;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dateByAddingDays:(int64_t)days;
- (id)dateForEndOfDay;
- (id)description;
- (id)nsDateWithLocalTimeZone:(id)zone;
@end

@implementation VCSDate

+ (id)dateListFromData:(id)data
{
  dataCopy = data;
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  bytes = [dataCopy bytes];
  v7 = 0;
  for (i = bytes; ; ++i)
  {
    v9 = *i;
    if (v9 != 32 && v9 != 59)
    {
      break;
    }

    ++v7;
  }

  while (1)
  {
    v10 = 0;
    while (v9 > 0x3Bu || ((1 << v9) & 0x800000100000001) == 0)
    {
      LOBYTE(v9) = i[++v10];
    }

    if (!v10)
    {
      break;
    }

    [v5 setLength:0];
    [v5 appendBytes:bytes + v7 length:v10];
    [v5 increaseLengthBy:1];
    v11 = -[VCSDate initWithDateString:]([VCSDate alloc], "initWithDateString:", [v5 bytes]);
    if (v11)
    {
      [v4 addObject:v11];
    }

    v7 += v10;
    i += v10;

    while (1)
    {
      v9 = *i;
      if (v9 != 59 && v9 != 32)
      {
        break;
      }

      ++i;
      ++v7;
    }
  }

  return v4;
}

- (VCSDate)initWithDateComponents:(id)components floating:(BOOL)floating dateOnly:(BOOL)only
{
  componentsCopy = components;
  v13.receiver = self;
  v13.super_class = VCSDate;
  v9 = [(VCSDate *)&v13 init];
  if (v9)
  {
    v10 = [componentsCopy copy];
    components = v9->_components;
    v9->_components = v10;

    v9->_floating = floating;
    v9->_dateOnly = only;
  }

  return v9;
}

- (VCSDate)initWithYear:(int64_t)year month:(int64_t)month day:(int64_t)day hour:(int64_t)hour minute:(int64_t)minute second:(int64_t)second floating:(BOOL)floating dateOnly:(BOOL)self0
{
  v17 = objc_opt_new();
  [v17 setYear:year];
  [v17 setMonth:month];
  [v17 setDay:day];
  [v17 setHour:hour];
  [v17 setMinute:minute];
  [v17 setSecond:second];
  vCS_gregorianGMTCalendar = [MEMORY[0x277CBEA80] VCS_gregorianGMTCalendar];
  [v17 setCalendar:vCS_gregorianGMTCalendar];

  v19 = [(VCSDate *)self initWithDateComponents:v17 floating:floating dateOnly:only];
  return v19;
}

- (VCSDate)initWithDateString:(const char *)string
{
  v17 = 0;
  v18 = 0;
  v16 = 0;
  v5 = strlen(string);
  switch(v5)
  {
    case 8uLL:
      sscanf(string, "%04d%02d%02d", &v18 + 4, &v18, &v17 + 4);
      v10 = 0;
      v9 = 0;
      v8 = 0;
      v7 = 1;
      v6 = 1;
      goto LABEL_10;
    case 0xFuLL:
      v6 = 1;
      break;
    case 0x10uLL:
      if (string[15] != 90)
      {
        v12 = VCSLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [(VCSDate *)string initWithDateString:v12];
        }

        goto LABEL_15;
      }

      v6 = 0;
      break;
    default:
LABEL_16:
      selfCopy = 0;
      goto LABEL_17;
  }

  v15 = 0;
  sscanf(string, "%04d%02d%02d%c%02d%02d%02d", &v18 + 4, &v18, &v17 + 4, &v15, &v17, &v16 + 4, &v16);
  if (v15 != 84)
  {
    v12 = VCSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(VCSDate *)string initWithDateString:v12];
    }

LABEL_15:

    goto LABEL_16;
  }

  v7 = 0;
  v9 = HIDWORD(v16);
  v8 = v17;
  v10 = v16;
LABEL_10:
  BYTE1(v14) = v7;
  LOBYTE(v14) = v6;
  self = [(VCSDate *)self initWithYear:SHIDWORD(v18) month:v18 day:HIDWORD(v17) hour:v8 minute:v9 second:v10 floating:v14 dateOnly:?];
  selfCopy = self;
LABEL_17:

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  year = [(NSDateComponents *)self->_components year];
  month = [(NSDateComponents *)self->_components month];
  v6 = [(NSDateComponents *)self->_components day];
  hour = [(NSDateComponents *)self->_components hour];
  minute = [(NSDateComponents *)self->_components minute];
  second = [(NSDateComponents *)self->_components second];
  if (self->_floating)
  {
    v10 = @"floating";
  }

  else
  {
    v10 = @"UTC";
  }

  v11 = [MEMORY[0x277CCABB0] numberWithBool:self->_dateOnly];
  v12 = [v3 stringWithFormat:@"%04ld-%02ld-%02ld %02ld:%02ld:%02ld (%@), dateOnly: %@", year, month, v6, hour, minute, second, v10, v11];

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [VCSDate alloc];
  v5 = [(NSDateComponents *)self->_components copy];
  v6 = [(VCSDate *)v4 initWithDateComponents:v5 floating:self->_floating dateOnly:self->_dateOnly];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    floating = self->_floating;
    if (floating == [v5 floating] && (dateOnly = self->_dateOnly, dateOnly == objc_msgSend(v5, "dateOnly")))
    {
      components = self->_components;
      components = [v5 components];
      v10 = [(NSDateComponents *)components isEqual:components];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)dateForEndOfDay
{
  v3 = [(NSDateComponents *)self->_components copy];
  [v3 setHour:23];
  [v3 setMinute:59];
  [v3 setSecond:59];
  v4 = [[VCSDate alloc] initWithDateComponents:v3 floating:self->_floating dateOnly:self->_dateOnly];

  return v4;
}

- (id)dateByAddingDays:(int64_t)days
{
  calendar = [(NSDateComponents *)self->_components calendar];
  date = [(NSDateComponents *)self->_components date];
  v7 = [calendar dateByAddingUnit:16 value:days toDate:date options:1024];

  v8 = [VCSDate alloc];
  calendar2 = [(NSDateComponents *)self->_components calendar];
  v10 = [calendar2 components:3145982 fromDate:v7];
  v11 = [(VCSDate *)v8 initWithDateComponents:v10 floating:self->_floating dateOnly:self->_dateOnly];

  return v11;
}

- (VCSDate)dateWithTimeComponentsFromDate:(id)date
{
  components = self->_components;
  dateCopy = date;
  v5 = [(NSDateComponents *)components copy];
  components = [dateCopy components];
  [v5 setHour:{objc_msgSend(components, "hour")}];

  components2 = [dateCopy components];
  [v5 setMinute:{objc_msgSend(components2, "minute")}];

  components3 = [dateCopy components];
  [v5 setSecond:{objc_msgSend(components3, "second")}];

  v9 = [VCSDate alloc];
  floating = [dateCopy floating];
  dateOnly = [dateCopy dateOnly];

  v12 = [(VCSDate *)v9 initWithDateComponents:v5 floating:floating dateOnly:dateOnly];

  return v12;
}

- (id)nsDateWithLocalTimeZone:(id)zone
{
  zoneCopy = zone;
  floating = [(VCSDate *)self floating];
  if (zoneCopy && floating)
  {
    vCS_gregorianGMTCalendar = [MEMORY[0x277CBEA80] VCS_gregorianLocalCalendar:zoneCopy];
  }

  else
  {
    vCS_gregorianGMTCalendar = [MEMORY[0x277CBEA80] VCS_gregorianGMTCalendar];
  }

  v7 = vCS_gregorianGMTCalendar;
  components = [(VCSDate *)self components];
  v9 = [v7 dateFromComponents:components];

  return v9;
}

- (void)initWithDateString:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 136315138;
  v4 = a1;
  _os_log_error_impl(&dword_2754C5000, a2, OS_LOG_TYPE_ERROR, "malformed string for VCSDate: %s", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end