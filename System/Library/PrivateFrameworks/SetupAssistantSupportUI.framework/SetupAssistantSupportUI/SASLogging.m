@interface SASLogging
+ (id)facility;
@end

@implementation SASLogging

+ (id)facility
{
  if (facility_onceToken != -1)
  {
    +[SASLogging facility];
  }

  v3 = facility_facility;

  return v3;
}

uint64_t __22__SASLogging_facility__block_invoke()
{
  v0 = +[SASLogging defaultSubsystem];
  v1 = [v0 cStringUsingEncoding:4];

  v2 = +[SASLogging defaultCategory];
  v3 = [v2 cStringUsingEncoding:4];

  facility_facility = os_log_create(v1, v3);

  return MEMORY[0x2821F96F8]();
}

@end