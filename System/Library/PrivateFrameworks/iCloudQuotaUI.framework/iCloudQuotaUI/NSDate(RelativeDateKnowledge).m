@interface NSDate(RelativeDateKnowledge)
- (BOOL)isTodayWithCalendar:()RelativeDateKnowledge;
@end

@implementation NSDate(RelativeDateKnowledge)

- (BOOL)isTodayWithCalendar:()RelativeDateKnowledge
{
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  v6 = [v4 date];
  v7 = [v5 components:30 fromDate:v6];

  v8 = [v5 components:30 fromDate:a1];

  v9 = [v7 day];
  if (v9 == [v8 day] && (v10 = objc_msgSend(v7, "month"), v10 == objc_msgSend(v8, "month")) && (v11 = objc_msgSend(v7, "year"), v11 == objc_msgSend(v8, "year")))
  {
    v12 = [v7 era];
    v13 = v12 == [v8 era];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end