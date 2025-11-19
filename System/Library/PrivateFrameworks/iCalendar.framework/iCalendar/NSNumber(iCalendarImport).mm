@interface NSNumber(iCalendarImport)
+ (id)BOOLFromICSString:()iCalendarImport;
@end

@implementation NSNumber(iCalendarImport)

+ (id)BOOLFromICSString:()iCalendarImport
{
  v3 = a3;
  v4 = [v3 isEqualToString:@"TRUE"];
  if ((v4 & 1) != 0 || [v3 isEqualToString:@"FALSE"])
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end