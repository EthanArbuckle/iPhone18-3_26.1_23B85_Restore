@interface NSDateComponents(Construction)
+ (id)dateWithYear:()Construction month:day:;
+ (id)dateWithYear:()Construction month:day:hour:minute:second:;
@end

@implementation NSDateComponents(Construction)

+ (id)dateWithYear:()Construction month:day:
{
  v8 = objc_opt_new();
  [v8 setYear:a3];
  [v8 setMonth:a4];
  [v8 setDay:a5];
  [v8 setHour:0];
  [v8 setMinute:0];
  [v8 setSecond:0];

  return v8;
}

+ (id)dateWithYear:()Construction month:day:hour:minute:second:
{
  v14 = objc_opt_new();
  [v14 setYear:a3];
  [v14 setMonth:a4];
  [v14 setDay:a5];
  [v14 setHour:a6];
  [v14 setMinute:a7];
  [v14 setSecond:a8];

  return v14;
}

@end