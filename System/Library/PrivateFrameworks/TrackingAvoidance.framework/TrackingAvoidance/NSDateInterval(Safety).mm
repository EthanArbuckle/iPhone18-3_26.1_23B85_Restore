@interface NSDateInterval(Safety)
+ (id)createIntervalSafelyWithStartDate:()Safety endDate:;
@end

@implementation NSDateInterval(Safety)

+ (id)createIntervalSafelyWithStartDate:()Safety endDate:
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    v9 = [v5 compare:v6];
    v10 = objc_alloc(MEMORY[0x277CCA970]);
    if (v9 == 1)
    {
      v11 = [v10 initWithStartDate:v5 duration:0.0];
    }

    else
    {
      v11 = [v10 initWithStartDate:v5 endDate:v7];
    }

    v8 = v11;
  }

  return v8;
}

@end