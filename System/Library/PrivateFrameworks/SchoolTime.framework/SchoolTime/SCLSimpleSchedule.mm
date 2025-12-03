@interface SCLSimpleSchedule
- (BOOL)isEqual:(id)equal;
- (SCLSimpleSchedule)init;
- (SCLSimpleSchedule)initWithCoder:(id)coder;
- (SCLSimpleSchedule)initWithSimpleSchedule:(id)schedule;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)recurrences;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SCLSimpleSchedule

- (SCLSimpleSchedule)init
{
  v8.receiver = self;
  v8.super_class = SCLSimpleSchedule;
  v2 = [(SCLSimpleSchedule *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(SCLScheduleTime);
    startTime = v2->_startTime;
    v2->_startTime = v3;

    v5 = objc_alloc_init(SCLScheduleTime);
    endTime = v2->_endTime;
    v2->_endTime = v5;

    v2->_repeatSchedule = 0;
  }

  return v2;
}

- (SCLSimpleSchedule)initWithSimpleSchedule:(id)schedule
{
  scheduleCopy = schedule;
  v13.receiver = self;
  v13.super_class = SCLSimpleSchedule;
  v5 = [(SCLSimpleSchedule *)&v13 init];
  if (v5)
  {
    startTime = [scheduleCopy startTime];
    v7 = [startTime copy];
    startTime = v5->_startTime;
    v5->_startTime = v7;

    endTime = [scheduleCopy endTime];
    v10 = [endTime copy];
    endTime = v5->_endTime;
    v5->_endTime = v10;

    v5->_repeatSchedule = [scheduleCopy repeatSchedule];
  }

  return v5;
}

- (SCLSimpleSchedule)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = SCLSimpleSchedule;
  v5 = [(SCLSchedule *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startTime"];
    startTime = v5->_startTime;
    v5->_startTime = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endTime"];
    endTime = v5->_endTime;
    v5->_endTime = v8;

    v5->_repeatSchedule = [coderCopy decodeIntegerForKey:@"repeatSchedule"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  startTime = self->_startTime;
  coderCopy = coder;
  [coderCopy encodeObject:startTime forKey:@"startTime"];
  [coderCopy encodeObject:self->_endTime forKey:@"endTime"];
  [coderCopy encodeInteger:self->_repeatSchedule forKey:@"repeatSchedule"];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [SCLMutableSimpleSchedule alloc];

  return [(SCLSimpleSchedule *)v4 initWithSimpleSchedule:self];
}

- (unint64_t)hash
{
  startTime = [(SCLSimpleSchedule *)self startTime];
  v4 = [startTime hash];
  endTime = [(SCLSimpleSchedule *)self endTime];
  v6 = [endTime hash] ^ v4;
  repeatSchedule = [(SCLSimpleSchedule *)self repeatSchedule];

  return v6 ^ repeatSchedule;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    repeatSchedule = [v5 repeatSchedule];
    if (repeatSchedule == [(SCLSimpleSchedule *)self repeatSchedule])
    {
      startTime = [v5 startTime];
      startTime2 = [(SCLSimpleSchedule *)self startTime];
      if ([startTime isEqual:startTime2])
      {
        endTime = [v5 endTime];
        endTime2 = [(SCLSimpleSchedule *)self endTime];
        v11 = [endTime isEqual:endTime2];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)description
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en-US"];
  v5 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v5 setLocale:v4];
  repeatSchedule = [(SCLSimpleSchedule *)self repeatSchedule];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __32__SCLSimpleSchedule_description__block_invoke;
  v17[3] = &unk_279B6C200;
  v7 = array;
  v18 = v7;
  v19 = v5;
  v8 = v5;
  SCLEnumerateDaysInRepeatSchedule(repeatSchedule, v17);
  if ([v7 count])
  {
    v9 = [v7 componentsJoinedByString:{@", "}];
  }

  else
  {
    v9 = @"(none)";
  }

  v10 = MEMORY[0x277CCACA8];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  startTime = [(SCLSimpleSchedule *)self startTime];
  endTime = [(SCLSimpleSchedule *)self endTime];
  v15 = [v10 stringWithFormat:@"<%@ %p startTime=%@; endTime=%@, repeatSchedule=%@>", v12, self, startTime, endTime, v9];;

  return v15;
}

void __32__SCLSimpleSchedule_description__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v5 = [*(a1 + 40) weekdaySymbols];
  v4 = [v5 objectAtIndex:a2 - 1];
  [v3 addObject:v4];
}

- (id)recurrences
{
  array = [MEMORY[0x277CBEB18] array];
  repeatSchedule = [(SCLSimpleSchedule *)self repeatSchedule];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __32__SCLSimpleSchedule_recurrences__block_invoke;
  v9[3] = &unk_279B6C200;
  v9[4] = self;
  v5 = array;
  v10 = v5;
  SCLEnumerateDaysInRepeatSchedule(repeatSchedule, v9);
  v6 = v10;
  v7 = v5;

  return v5;
}

void __32__SCLSimpleSchedule_recurrences__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [SCLTimeInterval alloc];
  v5 = [*(a1 + 32) startTime];
  v6 = [*(a1 + 32) endTime];
  v8 = [(SCLTimeInterval *)v4 initWithStartTime:v5 endTime:v6];

  v7 = [[SCLScheduleRecurrence alloc] initWithTimeInterval:v8 day:a2];
  [*(a1 + 40) addObject:v7];
}

@end