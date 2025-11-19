@interface SASUILogging
+ (id)bookendFacility;
@end

@implementation SASUILogging

+ (id)bookendFacility
{
  if (bookendFacility_onceToken != -1)
  {
    +[SASUILogging bookendFacility];
  }

  v3 = bookendFacility_facility;

  return v3;
}

uint64_t __31__SASUILogging_bookendFacility__block_invoke()
{
  v0 = +[SASLogging defaultSubsystem];
  v1 = [v0 cStringUsingEncoding:4];

  v2 = +[SASUILogging bookendCategory];
  v3 = [v2 cStringUsingEncoding:4];

  bookendFacility_facility = os_log_create(v1, v3);

  return MEMORY[0x2821F96F8]();
}

@end