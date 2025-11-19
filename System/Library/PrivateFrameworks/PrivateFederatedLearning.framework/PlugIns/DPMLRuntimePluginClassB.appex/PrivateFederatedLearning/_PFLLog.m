@interface _PFLLog
+ (id)extension;
+ (id)framework;
+ (id)telemetry;
@end

@implementation _PFLLog

+ (id)framework
{
  if (qword_100039590 != -1)
  {
    sub_10001C894();
  }

  v3 = off_1000394E0;

  return v3;
}

+ (id)telemetry
{
  if (qword_100039598 != -1)
  {
    sub_10001C8A8();
  }

  v3 = qword_1000395A0;

  return v3;
}

+ (id)extension
{
  if (qword_1000395A8 != -1)
  {
    sub_10001C8BC();
  }

  v3 = off_1000394E8;

  return v3;
}

@end