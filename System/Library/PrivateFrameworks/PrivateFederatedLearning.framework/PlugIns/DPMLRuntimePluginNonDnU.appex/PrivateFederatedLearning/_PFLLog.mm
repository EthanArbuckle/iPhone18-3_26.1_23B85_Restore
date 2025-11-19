@interface _PFLLog
+ (id)extension;
+ (id)framework;
+ (id)telemetry;
@end

@implementation _PFLLog

+ (id)framework
{
  if (qword_10003D598 != -1)
  {
    sub_10001CB34();
  }

  v3 = off_10003D4E8;

  return v3;
}

+ (id)telemetry
{
  if (qword_10003D5A0 != -1)
  {
    sub_10001CB48();
  }

  v3 = qword_10003D5A8;

  return v3;
}

+ (id)extension
{
  if (qword_10003D5B0 != -1)
  {
    sub_10001CB5C();
  }

  v3 = off_10003D4F0;

  return v3;
}

@end