@interface RMLog
+ (id)managementTestAdapter;
+ (id)managementTestStatus;
@end

@implementation RMLog

+ (id)managementTestAdapter
{
  if (qword_10000CBB0 != -1)
  {
    sub_100002B0C();
  }

  v3 = qword_10000CBA8;

  return v3;
}

+ (id)managementTestStatus
{
  if (qword_10000CBC0 != -1)
  {
    sub_100002C6C();
  }

  v3 = qword_10000CBB8;

  return v3;
}

@end