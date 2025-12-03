@interface NSDateInterval(HKSPSleep)
- (id)hkspDescription;
- (uint64_t)hksp_containsDate:()HKSPSleep searchOptions:;
- (uint64_t)hksp_overlapsInterval:()HKSPSleep searchOptions:;
@end

@implementation NSDateInterval(HKSPSleep)

- (uint64_t)hksp_containsDate:()HKSPSleep searchOptions:
{
  v6 = a3;
  startDate = [self startDate];
  v8 = [startDate isEqualToDate:v6];

  if (v8)
  {
    v9 = a4 & 1;
  }

  else
  {
    endDate = [self endDate];
    v11 = [endDate isEqualToDate:v6];

    if (v11)
    {
      v9 = (a4 >> 1) & 1;
    }

    else
    {
      v9 = [self containsDate:v6];
    }
  }

  return v9;
}

- (uint64_t)hksp_overlapsInterval:()HKSPSleep searchOptions:
{
  v6 = a3;
  endDate = [self endDate];
  startDate = [v6 startDate];
  v9 = [endDate isEqualToDate:startDate];

  if (v9)
  {
    v10 = (a4 >> 1) & 1;
  }

  else
  {
    startDate2 = [self startDate];
    endDate2 = [v6 endDate];
    v13 = [startDate2 isEqualToDate:endDate2];

    if (v13)
    {
      v10 = a4 & 1;
    }

    else
    {
      v10 = [self intersectsDateInterval:v6];
    }
  }

  return v10;
}

- (id)hkspDescription
{
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  startDate = [self startDate];
  hkspDescription = [startDate hkspDescription];
  endDate = [self endDate];
  hkspDescription2 = [endDate hkspDescription];
  v8 = [v2 stringWithFormat:@"<%@:%p [%@ - %@] >", v3, self, hkspDescription, hkspDescription2];

  return v8;
}

@end