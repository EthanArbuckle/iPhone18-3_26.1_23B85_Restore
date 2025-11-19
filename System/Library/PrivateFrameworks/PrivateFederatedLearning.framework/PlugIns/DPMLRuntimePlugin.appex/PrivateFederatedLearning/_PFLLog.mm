@interface _PFLLog
+ (id)extension;
+ (id)framework;
+ (id)telemetry;
@end

@implementation _PFLLog

+ (id)framework
{
  if (qword_100039570 != -1)
  {
    sub_10001C788();
  }

  v3 = off_100039480;

  return v3;
}

+ (id)telemetry
{
  if (qword_100039578 != -1)
  {
    sub_10001C79C();
  }

  v3 = qword_100039580;

  return v3;
}

+ (id)extension
{
  if (qword_100039588 != -1)
  {
    sub_10001C7B0();
  }

  v3 = off_100039488;

  return v3;
}

@end