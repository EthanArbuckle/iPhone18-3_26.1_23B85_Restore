@interface PGTimeUtility
+ (id)dateIntervalWithStartDate:(id)date endDate:(id)endDate;
@end

@implementation PGTimeUtility

+ (id)dateIntervalWithStartDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  v7 = [dateCopy compare:endDateCopy];
  if (v7 == 1)
  {
    v8 = dateCopy;
  }

  else
  {
    v8 = endDateCopy;
  }

  if (v7 != 1)
  {
    endDateCopy = dateCopy;
  }

  v9 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:endDateCopy endDate:v8];

  return v9;
}

@end