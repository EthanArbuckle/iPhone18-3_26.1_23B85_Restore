@interface NSCalendar(VCSUtilities)
+ (id)VCS_gregorianGMTCalendar;
+ (id)VCS_gregorianLocalCalendar:()VCSUtilities;
@end

@implementation NSCalendar(VCSUtilities)

+ (id)VCS_gregorianGMTCalendar
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__NSCalendar_VCSUtilities__VCS_gregorianGMTCalendar__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (VCS_gregorianGMTCalendar_onceToken != -1)
  {
    dispatch_once(&VCS_gregorianGMTCalendar_onceToken, block);
  }

  v1 = VCS_gregorianGMTCalendar_gregorianGMTCalendar;

  return v1;
}

+ (id)VCS_gregorianLocalCalendar:()VCSUtilities
{
  v3 = MEMORY[0x277CBEA80];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v5 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  [v6 setTimeZone:v4];

  return v6;
}

@end