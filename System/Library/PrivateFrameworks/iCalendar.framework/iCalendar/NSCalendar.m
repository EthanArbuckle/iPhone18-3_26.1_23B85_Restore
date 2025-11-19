@interface NSCalendar
@end

@implementation NSCalendar

void __52__NSCalendar_VCSUtilities__VCS_gregorianGMTCalendar__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"GMT"];
  v2 = [v1 VCS_gregorianLocalCalendar:v4];
  v3 = VCS_gregorianGMTCalendar_gregorianGMTCalendar;
  VCS_gregorianGMTCalendar_gregorianGMTCalendar = v2;
}

@end