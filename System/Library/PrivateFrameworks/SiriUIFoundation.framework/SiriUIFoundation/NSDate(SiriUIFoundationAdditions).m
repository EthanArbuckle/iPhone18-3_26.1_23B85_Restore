@interface NSDate(SiriUIFoundationAdditions)
- (BOOL)_sruif_isSameDayAsDate:()SiriUIFoundationAdditions;
- (uint64_t)sruif_isToday;
- (uint64_t)sruif_isTomorrow;
@end

@implementation NSDate(SiriUIFoundationAdditions)

- (BOOL)_sruif_isSameDayAsDate:()SiriUIFoundationAdditions
{
  v4 = MEMORY[0x277CBEA80];
  v5 = a3;
  v6 = [v4 currentCalendar];
  v7 = [v6 components:30 fromDate:a1];
  v8 = [v6 components:30 fromDate:v5];

  v9 = [v7 era];
  if (v9 == [v8 era] && (v10 = objc_msgSend(v7, "year"), v10 == objc_msgSend(v8, "year")) && (v11 = objc_msgSend(v7, "month"), v11 == objc_msgSend(v8, "month")))
  {
    v12 = [v7 day];
    v13 = v12 == [v8 day];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (uint64_t)sruif_isToday
{
  v2 = [MEMORY[0x277CBEAA8] date];
  v3 = [a1 _sruif_isSameDayAsDate:v2];

  return v3;
}

- (uint64_t)sruif_isTomorrow
{
  v2 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v2 setDay:1];
  v3 = [MEMORY[0x277CBEA80] currentCalendar];
  v4 = [MEMORY[0x277CBEAA8] date];
  v5 = [v3 dateByAddingComponents:v2 toDate:v4 options:0];

  v6 = [a1 _sruif_isSameDayAsDate:v5];
  return v6;
}

@end