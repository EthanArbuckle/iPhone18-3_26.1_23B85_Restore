@interface VCSDate
+ (id)dateListFromData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (VCSDate)dateWithTimeComponentsFromDate:(id)a3;
- (VCSDate)initWithDateComponents:(id)a3 floating:(BOOL)a4 dateOnly:(BOOL)a5;
- (VCSDate)initWithDateString:(const char *)a3;
- (VCSDate)initWithYear:(int64_t)a3 month:(int64_t)a4 day:(int64_t)a5 hour:(int64_t)a6 minute:(int64_t)a7 second:(int64_t)a8 floating:(BOOL)a9 dateOnly:(BOOL)a10;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dateByAddingDays:(int64_t)a3;
- (id)dateForEndOfDay;
- (id)description;
- (id)nsDateWithLocalTimeZone:(id)a3;
@end

@implementation VCSDate

+ (id)dateListFromData:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = [v3 bytes];
  v7 = 0;
  for (i = v6; ; ++i)
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
    [v5 appendBytes:v6 + v7 length:v10];
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

- (VCSDate)initWithDateComponents:(id)a3 floating:(BOOL)a4 dateOnly:(BOOL)a5
{
  v8 = a3;
  v13.receiver = self;
  v13.super_class = VCSDate;
  v9 = [(VCSDate *)&v13 init];
  if (v9)
  {
    v10 = [v8 copy];
    components = v9->_components;
    v9->_components = v10;

    v9->_floating = a4;
    v9->_dateOnly = a5;
  }

  return v9;
}

- (VCSDate)initWithYear:(int64_t)a3 month:(int64_t)a4 day:(int64_t)a5 hour:(int64_t)a6 minute:(int64_t)a7 second:(int64_t)a8 floating:(BOOL)a9 dateOnly:(BOOL)a10
{
  v17 = objc_opt_new();
  [v17 setYear:a3];
  [v17 setMonth:a4];
  [v17 setDay:a5];
  [v17 setHour:a6];
  [v17 setMinute:a7];
  [v17 setSecond:a8];
  v18 = [MEMORY[0x277CBEA80] VCS_gregorianGMTCalendar];
  [v17 setCalendar:v18];

  v19 = [(VCSDate *)self initWithDateComponents:v17 floating:a9 dateOnly:a10];
  return v19;
}

- (VCSDate)initWithDateString:(const char *)a3
{
  v17 = 0;
  v18 = 0;
  v16 = 0;
  v5 = strlen(a3);
  switch(v5)
  {
    case 8uLL:
      sscanf(a3, "%04d%02d%02d", &v18 + 4, &v18, &v17 + 4);
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
      if (a3[15] != 90)
      {
        v12 = VCSLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [(VCSDate *)a3 initWithDateString:v12];
        }

        goto LABEL_15;
      }

      v6 = 0;
      break;
    default:
LABEL_16:
      v11 = 0;
      goto LABEL_17;
  }

  v15 = 0;
  sscanf(a3, "%04d%02d%02d%c%02d%02d%02d", &v18 + 4, &v18, &v17 + 4, &v15, &v17, &v16 + 4, &v16);
  if (v15 != 84)
  {
    v12 = VCSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(VCSDate *)a3 initWithDateString:v12];
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
  v11 = self;
LABEL_17:

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(NSDateComponents *)self->_components year];
  v5 = [(NSDateComponents *)self->_components month];
  v6 = [(NSDateComponents *)self->_components day];
  v7 = [(NSDateComponents *)self->_components hour];
  v8 = [(NSDateComponents *)self->_components minute];
  v9 = [(NSDateComponents *)self->_components second];
  if (self->_floating)
  {
    v10 = @"floating";
  }

  else
  {
    v10 = @"UTC";
  }

  v11 = [MEMORY[0x277CCABB0] numberWithBool:self->_dateOnly];
  v12 = [v3 stringWithFormat:@"%04ld-%02ld-%02ld %02ld:%02ld:%02ld (%@), dateOnly: %@", v4, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [VCSDate alloc];
  v5 = [(NSDateComponents *)self->_components copy];
  v6 = [(VCSDate *)v4 initWithDateComponents:v5 floating:self->_floating dateOnly:self->_dateOnly];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    floating = self->_floating;
    if (floating == [v5 floating] && (dateOnly = self->_dateOnly, dateOnly == objc_msgSend(v5, "dateOnly")))
    {
      components = self->_components;
      v9 = [v5 components];
      v10 = [(NSDateComponents *)components isEqual:v9];
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

- (id)dateByAddingDays:(int64_t)a3
{
  v5 = [(NSDateComponents *)self->_components calendar];
  v6 = [(NSDateComponents *)self->_components date];
  v7 = [v5 dateByAddingUnit:16 value:a3 toDate:v6 options:1024];

  v8 = [VCSDate alloc];
  v9 = [(NSDateComponents *)self->_components calendar];
  v10 = [v9 components:3145982 fromDate:v7];
  v11 = [(VCSDate *)v8 initWithDateComponents:v10 floating:self->_floating dateOnly:self->_dateOnly];

  return v11;
}

- (VCSDate)dateWithTimeComponentsFromDate:(id)a3
{
  components = self->_components;
  v4 = a3;
  v5 = [(NSDateComponents *)components copy];
  v6 = [v4 components];
  [v5 setHour:{objc_msgSend(v6, "hour")}];

  v7 = [v4 components];
  [v5 setMinute:{objc_msgSend(v7, "minute")}];

  v8 = [v4 components];
  [v5 setSecond:{objc_msgSend(v8, "second")}];

  v9 = [VCSDate alloc];
  v10 = [v4 floating];
  v11 = [v4 dateOnly];

  v12 = [(VCSDate *)v9 initWithDateComponents:v5 floating:v10 dateOnly:v11];

  return v12;
}

- (id)nsDateWithLocalTimeZone:(id)a3
{
  v4 = a3;
  v5 = [(VCSDate *)self floating];
  if (v4 && v5)
  {
    v6 = [MEMORY[0x277CBEA80] VCS_gregorianLocalCalendar:v4];
  }

  else
  {
    v6 = [MEMORY[0x277CBEA80] VCS_gregorianGMTCalendar];
  }

  v7 = v6;
  v8 = [(VCSDate *)self components];
  v9 = [v7 dateFromComponents:v8];

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