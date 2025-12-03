@interface EKEvent(RTEventManagerAdditions)
+ (__CFString)participationStatusToString:()RTEventManagerAdditions;
- (id)description;
- (uint64_t)participantStatus;
@end

@implementation EKEvent(RTEventManagerAdditions)

- (id)description
{
  v15 = MEMORY[0x277CCACA8];
  title = [self title];
  if (title)
  {
    v2 = @"YES";
  }

  else
  {
    v2 = @"NO";
  }

  v14 = v2;
  location = [self location];
  if (location)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  structuredLocation = [self structuredLocation];
  if (structuredLocation)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  startDate = [self startDate];
  stringFromDate = [startDate stringFromDate];
  endDate = [self endDate];
  stringFromDate2 = [endDate stringFromDate];
  v11 = [objc_opt_class() participationStatusToString:{objc_msgSend(self, "participationStatus")}];
  v12 = [v15 stringWithFormat:@"title, %@, location, %@, structuredLocation, %@, startDate, %@, endDate, %@, participationStatus, %@", v14, v4, v6, stringFromDate, stringFromDate2, v11];

  return v12;
}

+ (__CFString)participationStatusToString:()RTEventManagerAdditions
{
  if (a3 > 7)
  {
    return @"Unhandled";
  }

  else
  {
    return off_2788D2408[a3];
  }
}

- (uint64_t)participantStatus
{
  result = [self participationStatus];
  if ((result - 1) >= 7)
  {
    return 0;
  }

  return result;
}

@end