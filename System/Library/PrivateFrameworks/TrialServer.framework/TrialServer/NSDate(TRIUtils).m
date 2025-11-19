@interface NSDate(TRIUtils)
+ (BOOL)triIsDate:()TRIUtils equalToDate:withinInterval:;
@end

@implementation NSDate(TRIUtils)

+ (BOOL)triIsDate:()TRIUtils equalToDate:withinInterval:
{
  v7 = a4;
  v8 = a5;
  v9 = v8;
  if (v7 | v8)
  {
    v10 = 0;
    if (v7 && v8)
    {
      [v7 timeIntervalSinceReferenceDate];
      v12 = v11;
      [v9 timeIntervalSinceReferenceDate];
      v10 = vabdd_f64(v12, v13) <= a1;
    }
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

@end