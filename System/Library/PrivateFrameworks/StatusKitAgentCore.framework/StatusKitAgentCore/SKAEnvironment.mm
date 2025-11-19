@interface SKAEnvironment
+ (NSDate)dateNow;
@end

@implementation SKAEnvironment

+ (NSDate)dateNow
{
  v2 = +[SKAEnvironment overrideDateNow];

  if (v2)
  {
    +[SKAEnvironment overrideDateNow];
  }

  else
  {
    [MEMORY[0x277CBEAA8] now];
  }
  v3 = ;

  return v3;
}

@end