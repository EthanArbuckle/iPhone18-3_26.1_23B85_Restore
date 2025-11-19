@interface SCLDailySchedule
- (BOOL)isEqual:(id)a3;
- (SCLDailySchedule)init;
- (SCLDailySchedule)initWithCoder:(id)a3;
- (SCLDailySchedule)initWithSchedule:(id)a3;
- (id)debugDescription;
- (id)endTimeForDay:(int64_t)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)recurrences;
- (id)scheduleForDay:(int64_t)a3;
- (id)startTimeForDay:(int64_t)a3;
- (unint64_t)hash;
@end

@implementation SCLDailySchedule

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [SCLMutableDailySchedule alloc];

  return [(SCLDailySchedule *)v4 initWithSchedule:self];
}

- (SCLDailySchedule)init
{
  v6.receiver = self;
  v6.super_class = SCLDailySchedule;
  v2 = [(SCLDailySchedule *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    dayMap = v2->_dayMap;
    v2->_dayMap = v3;
  }

  return v2;
}

- (SCLDailySchedule)initWithSchedule:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SCLDailySchedule;
  v5 = [(SCLDailySchedule *)&v10 init];
  if (v5)
  {
    v6 = [v4 dayMap];
    v7 = [v6 mutableCopy];
    dayMap = v5->_dayMap;
    v5->_dayMap = v7;
  }

  return v5;
}

- (SCLDailySchedule)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SCLDailySchedule;
  v5 = [(SCLSchedule *)&v14 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"dayMap"];
    v11 = [v10 mutableCopy];
    dayMap = v5->_dayMap;
    v5->_dayMap = v11;
  }

  return v5;
}

- (id)scheduleForDay:(int64_t)a3
{
  v4 = [(SCLDailySchedule *)self dayMap];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v6 = [v4 objectForKey:v5];

  return v6;
}

- (id)startTimeForDay:(int64_t)a3
{
  v3 = [(SCLDailySchedule *)self scheduleForDay:a3];
  v4 = [v3 startTime];

  return v4;
}

- (id)endTimeForDay:(int64_t)a3
{
  v3 = [(SCLDailySchedule *)self scheduleForDay:a3];
  v4 = [v3 endTime];

  return v4;
}

- (unint64_t)hash
{
  v2 = [(SCLDailySchedule *)self dayMap];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SCLDailySchedule *)self dayMap];
      v7 = [(SCLDailySchedule *)v5 dayMap];

      v8 = [v6 isEqual:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p>\n", v5, self];

  v7 = [MEMORY[0x277CBEA80] currentCalendar];
  v8 = [v7 weekdaySymbols];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __36__SCLDailySchedule_debugDescription__block_invoke;
  v14[3] = &unk_279B6CA90;
  v14[4] = self;
  v15 = v8;
  v9 = v6;
  v16 = v9;
  v10 = v8;
  SCLEnumerateDaysInRepeatSchedule(127, v14);
  v11 = v16;
  v12 = v9;

  return v9;
}

void __36__SCLDailySchedule_debugDescription__block_invoke(id *a1, uint64_t a2)
{
  if ([a1[4] isScheduledForDay:a2])
  {
    v8 = [a1[4] startTimeForDay:a2];
    v4 = [a1[4] endTimeForDay:a2];
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
    v6 = a2 - 1;
    if (v6 < [a1[5] count])
    {
      v7 = [a1[5] objectAtIndexedSubscript:v6];

      v5 = v7;
    }

    [a1[6] appendFormat:@"%@: %@ - %@\n", v5, v8, v4];
  }
}

- (id)recurrences
{
  v3 = [MEMORY[0x277CBEB18] array];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __31__SCLDailySchedule_recurrences__block_invoke;
  v8[3] = &unk_279B6C200;
  v8[4] = self;
  v4 = v3;
  v9 = v4;
  SCLEnumerateDaysInRepeatSchedule(127, v8);
  v5 = v9;
  v6 = v4;

  return v4;
}

void __31__SCLDailySchedule_recurrences__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) scheduleForDay:a2];
  if (v3)
  {
    v4 = *(a1 + 40);
    v6 = v3;
    v5 = [v3 recurrences];
    [v4 addObjectsFromArray:v5];

    v3 = v6;
  }
}

@end