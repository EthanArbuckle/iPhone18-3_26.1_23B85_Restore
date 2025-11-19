@interface SCLSimpleSchedule
- (BOOL)isEqual:(id)a3;
- (SCLSimpleSchedule)init;
- (SCLSimpleSchedule)initWithCoder:(id)a3;
- (SCLSimpleSchedule)initWithSimpleSchedule:(id)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)recurrences;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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

- (SCLSimpleSchedule)initWithSimpleSchedule:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SCLSimpleSchedule;
  v5 = [(SCLSimpleSchedule *)&v13 init];
  if (v5)
  {
    v6 = [v4 startTime];
    v7 = [v6 copy];
    startTime = v5->_startTime;
    v5->_startTime = v7;

    v9 = [v4 endTime];
    v10 = [v9 copy];
    endTime = v5->_endTime;
    v5->_endTime = v10;

    v5->_repeatSchedule = [v4 repeatSchedule];
  }

  return v5;
}

- (SCLSimpleSchedule)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SCLSimpleSchedule;
  v5 = [(SCLSchedule *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startTime"];
    startTime = v5->_startTime;
    v5->_startTime = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endTime"];
    endTime = v5->_endTime;
    v5->_endTime = v8;

    v5->_repeatSchedule = [v4 decodeIntegerForKey:@"repeatSchedule"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  startTime = self->_startTime;
  v5 = a3;
  [v5 encodeObject:startTime forKey:@"startTime"];
  [v5 encodeObject:self->_endTime forKey:@"endTime"];
  [v5 encodeInteger:self->_repeatSchedule forKey:@"repeatSchedule"];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [SCLMutableSimpleSchedule alloc];

  return [(SCLSimpleSchedule *)v4 initWithSimpleSchedule:self];
}

- (unint64_t)hash
{
  v3 = [(SCLSimpleSchedule *)self startTime];
  v4 = [v3 hash];
  v5 = [(SCLSimpleSchedule *)self endTime];
  v6 = [v5 hash] ^ v4;
  v7 = [(SCLSimpleSchedule *)self repeatSchedule];

  return v6 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 repeatSchedule];
    if (v6 == [(SCLSimpleSchedule *)self repeatSchedule])
    {
      v7 = [v5 startTime];
      v8 = [(SCLSimpleSchedule *)self startTime];
      if ([v7 isEqual:v8])
      {
        v9 = [v5 endTime];
        v10 = [(SCLSimpleSchedule *)self endTime];
        v11 = [v9 isEqual:v10];
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
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en-US"];
  v5 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v5 setLocale:v4];
  v6 = [(SCLSimpleSchedule *)self repeatSchedule];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __32__SCLSimpleSchedule_description__block_invoke;
  v17[3] = &unk_279B6C200;
  v7 = v3;
  v18 = v7;
  v19 = v5;
  v8 = v5;
  SCLEnumerateDaysInRepeatSchedule(v6, v17);
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
  v13 = [(SCLSimpleSchedule *)self startTime];
  v14 = [(SCLSimpleSchedule *)self endTime];
  v15 = [v10 stringWithFormat:@"<%@ %p startTime=%@; endTime=%@, repeatSchedule=%@>", v12, self, v13, v14, v9];;

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
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(SCLSimpleSchedule *)self repeatSchedule];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __32__SCLSimpleSchedule_recurrences__block_invoke;
  v9[3] = &unk_279B6C200;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  SCLEnumerateDaysInRepeatSchedule(v4, v9);
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