@interface PSIDate
+ (id)distantFuture;
+ (id)distantPast;
- (BOOL)isEqual:(id)equal;
- (PSIDate)initWithDateComponents:(id)components;
- (PSIDate)initWithInt64Representation:(int64_t)representation;
- (PSIDate)initWithUniversalDate:(id)date calendar:(id)calendar;
- (id)dateComponents;
- (int64_t)day;
- (int64_t)era;
- (int64_t)month;
- (int64_t)year;
@end

@implementation PSIDate

- (id)dateComponents
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF10]);
  v4 = v3;
  int64Representation = self->_int64Representation;
  int64RepresentationMask = self->_int64RepresentationMask;
  if ((int64RepresentationMask & 0xFFF000000) != 0)
  {
    v7 = (int64Representation >> 24) & 0xFFF;
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    [v3 setEra:?];
    int64Representation = self->_int64Representation;
    int64RepresentationMask = self->_int64RepresentationMask;
  }

  if ((int64RepresentationMask & 0xFFF000) != 0)
  {
    v8 = (int64Representation >> 12) & 0xFFF;
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    [v4 setYear:?];
    int64Representation = self->_int64Representation;
    int64RepresentationMask = self->_int64RepresentationMask;
  }

  if ((int64RepresentationMask & 0xF00) != 0)
  {
    v9 = (int64Representation >> 8) & 0xF;
  }

  else
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    [v4 setMonth:?];
    LOBYTE(int64Representation) = self->_int64Representation;
    LOBYTE(int64RepresentationMask) = self->_int64RepresentationMask;
  }

  if (int64RepresentationMask)
  {
    v10 = int64Representation;
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    [v4 setDay:?];
  }

  return v4;
}

- (int64_t)day
{
  if (LOBYTE(self->_int64RepresentationMask))
  {
    return LOBYTE(self->_int64Representation);
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (int64_t)month
{
  if ((self->_int64RepresentationMask & 0xF00) != 0)
  {
    return (self->_int64Representation >> 8) & 0xF;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (int64_t)year
{
  if ((*(&self->_int64RepresentationMask + 1) & 0xFFF0) != 0)
  {
    return (self->_int64Representation >> 12) & 0xFFF;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (int64_t)era
{
  if ((*(&self->_int64RepresentationMask + 3) & 0xFFF) != 0)
  {
    return (self->_int64Representation >> 24) & 0xFFF;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (PSIDate)initWithInt64Representation:(int64_t)representation
{
  v12.receiver = self;
  v12.super_class = PSIDate;
  result = [(PSIDate *)&v12 init];
  if (result)
  {
    v5 = (representation >> 24) & 0xFFF;
    if (v5 - 1 <= 0xFFD)
    {
      v6 = vdupq_n_s64(0xFFF000000uLL);
      v6.i64[0] = v5 << 24;
      *&result->_int64Representation = vorrq_s8(*&result->_int64Representation, v6);
    }

    v7 = (representation >> 12) & 0xFFF;
    if (v7 - 1 <= 0xFFD)
    {
      v8 = vdupq_n_s64(0xFFF000uLL);
      v8.i64[0] = v7 << 12;
      *&result->_int64Representation = vorrq_s8(*&result->_int64Representation, v8);
    }

    v9 = (representation >> 8) & 0xF;
    if (v9 - 1 <= 0xD)
    {
      v10 = vdupq_n_s64(0xF00uLL);
      v10.i64[0] = v9 << 8;
      *&result->_int64Representation = vorrq_s8(*&result->_int64Representation, v10);
    }

    if (representation - 1 <= 0xFD)
    {
      v11.i64[1] = 255;
      v11.i64[0] = representation;
      *&result->_int64Representation = vorrq_s8(*&result->_int64Representation, v11);
    }
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && equalCopy->_int64Representation == self->_int64Representation && equalCopy->_int64RepresentationMask == self->_int64RepresentationMask;
  }

  return v5;
}

- (PSIDate)initWithDateComponents:(id)components
{
  componentsCopy = components;
  year = [componentsCopy year];
  month = [componentsCopy month];
  v7 = [componentsCopy day];
  v8 = v7;
  if (year == 0x7FFFFFFFFFFFFFFFLL || month == 0x7FFFFFFFFFFFFFFFLL || v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    yearForWeekOfYear = [componentsCopy yearForWeekOfYear];
    weekOfYear = [componentsCopy weekOfYear];
    weekday = [componentsCopy weekday];
    v12 = weekday;
    if (yearForWeekOfYear == 0x7FFFFFFFFFFFFFFFLL || weekOfYear == 0x7FFFFFFFFFFFFFFFLL || weekday == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([componentsCopy weekdayOrdinal] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(componentsCopy, "quarter") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(componentsCopy, "weekOfMonth") == 0x7FFFFFFFFFFFFFFFLL && v12 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v27 = weekOfYear != 0x7FFFFFFFFFFFFFFFLL;
        v28 = yearForWeekOfYear != 0x7FFFFFFFFFFFFFFFLL;

        if (year != 0x7FFFFFFFFFFFFFFFLL || month != 0x7FFFFFFFFFFFFFFFLL || v8 != 0x7FFFFFFFFFFFFFFFLL || ((v28 ^ v27) & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      else
      {
      }

      selfCopy = 0;
      goto LABEL_38;
    }
  }

LABEL_8:
  v13 = componentsCopy;
  if ([v13 era] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v13, "year") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v13, "month") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v13, "day") == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    v15 = [currentCalendar dateFromComponents:v13];
    v16 = [currentCalendar components:30 fromDate:v15];
  }

  else
  {
    v16 = v13;
  }

  if (v16)
  {
    v30.receiver = self;
    v30.super_class = PSIDate;
    v17 = [(PSIDate *)&v30 init];
    if (v17)
    {
      v18 = [v16 era];
      if (v18 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v19 = vdupq_n_s64(0xFFF000000uLL);
        v19.i64[0] = (v18 & 0xFFF) << 24;
        *(v17 + 8) = vorrq_s8(*(v17 + 8), v19);
      }

      year2 = [v16 year];
      if (year2 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v21 = vdupq_n_s64(0xFFF000uLL);
        v21.i64[0] = (year2 & 0xFFF) << 12;
        *(v17 + 8) = vorrq_s8(*(v17 + 8), v21);
      }

      month2 = [v16 month];
      if (month2 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v23 = vdupq_n_s64(0xF00uLL);
        v23.i64[0] = (month2 & 0xF) << 8;
        *(v17 + 8) = vorrq_s8(*(v17 + 8), v23);
      }

      v24 = [v16 day];
      if (v24 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v25.i64[1] = 255;
        v25.i64[0] = v24;
        *(v17 + 8) = vorrq_s8(*(v17 + 8), v25);
      }
    }

    self = v17;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

LABEL_38:
  return selfCopy;
}

- (PSIDate)initWithUniversalDate:(id)date calendar:(id)calendar
{
  dateCopy = date;
  calendarCopy = calendar;
  v19.receiver = self;
  v19.super_class = PSIDate;
  v8 = [(PSIDate *)&v19 init];
  if (v8)
  {
    v9 = [calendarCopy components:30 fromDate:dateCopy];
    v10 = [v9 era];
    v11 = vdupq_n_s64(0xFFF000000uLL);
    v11.i64[0] = (v10 & 0xFFF) << 24;
    *(v8 + 8) = vorrq_s8(v11, *(v8 + 8));
    year = [v9 year];
    v13 = vdupq_n_s64(0xFFF000uLL);
    v13.i64[0] = (year & 0xFFF) << 12;
    *(v8 + 8) = vorrq_s8(v13, *(v8 + 8));
    month = [v9 month];
    v15 = vdupq_n_s64(0xF00uLL);
    v15.i64[0] = (month & 0xF) << 8;
    *(v8 + 8) = vorrq_s8(v15, *(v8 + 8));
    v16 = [v9 day];
    v17.i64[1] = 255;
    v17.i64[0] = v16;
    *(v8 + 8) = vorrq_s8(*(v8 + 8), v17);
  }

  return v8;
}

+ (id)distantFuture
{
  v2 = objc_alloc_init(PSIDate);
  *&v2->_int64Representation = xmmword_19C60AFF0;

  return v2;
}

+ (id)distantPast
{
  v2 = objc_alloc_init(PSIDate);
  *&v2->_int64Representation = xmmword_19C60B000;

  return v2;
}

@end