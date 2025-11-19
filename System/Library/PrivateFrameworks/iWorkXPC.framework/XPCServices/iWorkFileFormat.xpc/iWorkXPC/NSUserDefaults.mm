@interface NSUserDefaults
+ (void)tsu_registerDefaults;
@end

@implementation NSUserDefaults

+ (void)tsu_registerDefaults
{
  if (qword_1001EAF80 != -1)
  {
    sub_100159304();
  }
}

@end