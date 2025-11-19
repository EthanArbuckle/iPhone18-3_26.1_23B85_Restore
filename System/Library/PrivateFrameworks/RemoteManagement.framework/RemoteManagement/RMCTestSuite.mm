@interface RMCTestSuite
+ (id)registeredClasses;
@end

@implementation RMCTestSuite

+ (id)registeredClasses
{
  if (qword_1000250C0 != -1)
  {
    sub_100010080();
  }

  v3 = qword_1000250B8;

  return v3;
}

@end