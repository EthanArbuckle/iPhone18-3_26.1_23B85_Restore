@interface PGTimeUtility
+ (id)dateIntervalWithStartDate:(id)a3 endDate:(id)a4;
@end

@implementation PGTimeUtility

+ (id)dateIntervalWithStartDate:(id)a3 endDate:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 compare:v6];
  if (v7 == 1)
  {
    v8 = v5;
  }

  else
  {
    v8 = v6;
  }

  if (v7 != 1)
  {
    v6 = v5;
  }

  v9 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v6 endDate:v8];

  return v9;
}

@end