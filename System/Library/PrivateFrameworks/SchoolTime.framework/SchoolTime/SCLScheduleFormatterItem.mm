@interface SCLScheduleFormatterItem
- (SCLScheduleFormatterItem)initWithCalendar:(id)calendar timeIntervals:(id)intervals;
- (id)dayRanges;
- (int64_t)earliestWeekdayInCalendar;
@end

@implementation SCLScheduleFormatterItem

- (SCLScheduleFormatterItem)initWithCalendar:(id)calendar timeIntervals:(id)intervals
{
  calendarCopy = calendar;
  intervalsCopy = intervals;
  v12.receiver = self;
  v12.super_class = SCLScheduleFormatterItem;
  v9 = [(SCLScheduleFormatterItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_calendar, calendar);
    objc_storeStrong(&v10->_timeIntervals, intervals);
    v10->_days = 0;
  }

  return v10;
}

- (int64_t)earliestWeekdayInCalendar
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  calendar = [(SCLScheduleFormatterItem *)self calendar];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__SCLScheduleFormatterItem_earliestWeekdayInCalendar__block_invoke;
  v6[3] = &unk_279B6C350;
  v6[4] = self;
  v6[5] = &v7;
  [calendar SCL_enumerateWeekdaysUsingBlock:v6];

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

BOOL __53__SCLScheduleFormatterItem_earliestWeekdayInCalendar__block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = SCLRepeatScheduleContainsDay(*(*(a1 + 32) + 8), a2);
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
    *a3 = 1;
  }

  return result;
}

- (id)dayRanges
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  calendar = [(SCLScheduleFormatterItem *)self calendar];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __37__SCLScheduleFormatterItem_dayRanges__block_invoke;
  v12[3] = &unk_279B6C300;
  v12[4] = self;
  v6 = v4;
  v13 = v6;
  v7 = v3;
  v14 = v7;
  [calendar SCL_enumerateWeekdaysUsingBlock:v12];

  if ([v6 count])
  {
    v8 = [v6 copy];
    [v7 addObject:v8];
  }

  v9 = v14;
  v10 = v7;

  return v7;
}

void __37__SCLScheduleFormatterItem_dayRanges__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = SCLRepeatScheduleContainsDay(*(*(a1 + 32) + 8), a2);
  v5 = *(a1 + 40);
  if (v4)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
    [v5 addObject:v9];
  }

  else if ([*(a1 + 40) count])
  {
    v6 = *(a1 + 48);
    v7 = [*(a1 + 40) copy];
    [v6 addObject:v7];

    v8 = *(a1 + 40);

    [v8 removeAllObjects];
  }
}

@end