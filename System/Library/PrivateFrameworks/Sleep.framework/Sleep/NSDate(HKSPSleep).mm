@interface NSDate(HKSPSleep)
+ (id)hksp_closestFromDates:()HKSPSleep toDate:;
+ (id)hksp_earliestFromDates:()HKSPSleep;
+ (id)hksp_latestFromDates:()HKSPSleep;
- (BOOL)hksp_isAfterOrSameAsDate:()HKSPSleep;
- (BOOL)hksp_isBeforeOrSameAsDate:()HKSPSleep;
- (id)hkspDescription;
- (id)hksp_dateNearestMatchingComponents:()HKSPSleep;
- (uint64_t)hksp_isAfterDate:()HKSPSleep;
- (uint64_t)hksp_isBeforeDate:()HKSPSleep;
- (uint64_t)hksp_isWithinInterval:()HKSPSleep ofDate:;
@end

@implementation NSDate(HKSPSleep)

- (id)hkspDescription
{
  v2 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US"];
  v3 = [a1 descriptionWithLocale:v2];

  return v3;
}

- (uint64_t)hksp_isBeforeDate:()HKSPSleep
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:a1 file:@"NSDate+HKSPSleep.m" lineNumber:22 description:@"date can't be nil"];
  }

  v6 = [a1 earlierDate:v5];
  if (v6 == a1)
  {
    v7 = [a1 isEqualToDate:v5] ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)hksp_isBeforeOrSameAsDate:()HKSPSleep
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:a1 file:@"NSDate+HKSPSleep.m" lineNumber:27 description:@"date can't be nil"];
  }

  v6 = [a1 earlierDate:v5];
  v7 = v6 == a1;

  return v7;
}

- (uint64_t)hksp_isAfterDate:()HKSPSleep
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:a1 file:@"NSDate+HKSPSleep.m" lineNumber:32 description:@"date can't be nil"];
  }

  v6 = [a1 laterDate:v5];
  if (v6 == a1)
  {
    v7 = [a1 isEqualToDate:v5] ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)hksp_isAfterOrSameAsDate:()HKSPSleep
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:a1 file:@"NSDate+HKSPSleep.m" lineNumber:37 description:@"date can't be nil"];
  }

  v6 = [a1 laterDate:v5];
  v7 = v6 == a1;

  return v7;
}

- (id)hksp_dateNearestMatchingComponents:()HKSPSleep
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
  [v4 setSecond:0];
  v6 = [v5 components:224 fromDate:a1];
  v7 = [v6 isEqual:v4];

  if (v7)
  {
    v8 = a1;
  }

  else
  {
    v9 = [v5 hksp_previousDateBeforeDate:a1 matchingComponents:v4];
    v10 = [v5 hksp_nextDateAfterDate:a1 matchingComponents:v4];
    [a1 timeIntervalSinceDate:v9];
    v12 = v11;
    [v10 timeIntervalSinceDate:a1];
    if (v13 >= v12)
    {
      v14 = v9;
    }

    else
    {
      v14 = v10;
    }

    v8 = v14;
  }

  return v8;
}

+ (id)hksp_latestFromDates:()HKSPSleep
{
  v3 = a3;
  if ([v3 count])
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = __Block_byref_object_copy__0;
    v11 = __Block_byref_object_dispose__0;
    v12 = [MEMORY[0x277CBEAA8] distantPast];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __42__NSDate_HKSPSleep__hksp_latestFromDates___block_invoke;
    v6[3] = &unk_279C74588;
    v6[4] = &v7;
    [v3 na_each:v6];
    v4 = v8[5];
    _Block_object_dispose(&v7, 8);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)hksp_earliestFromDates:()HKSPSleep
{
  v3 = a3;
  if ([v3 count])
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = __Block_byref_object_copy__0;
    v11 = __Block_byref_object_dispose__0;
    v12 = [MEMORY[0x277CBEAA8] distantFuture];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __44__NSDate_HKSPSleep__hksp_earliestFromDates___block_invoke;
    v6[3] = &unk_279C74588;
    v6[4] = &v7;
    [v3 na_each:v6];
    v4 = v8[5];
    _Block_object_dispose(&v7, 8);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)hksp_closestFromDates:()HKSPSleep toDate:
{
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__0;
    v18 = __Block_byref_object_dispose__0;
    v19 = [MEMORY[0x277CBEAA8] distantFuture];
    v13[0] = 0;
    v13[1] = v13;
    v13[2] = 0x2020000000;
    v13[3] = 0x41DFFFFFFFC00000;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __50__NSDate_HKSPSleep__hksp_closestFromDates_toDate___block_invoke;
    v9[3] = &unk_279C745B0;
    v10 = v6;
    v11 = v13;
    v12 = &v14;
    [v5 na_each:v9];
    v7 = v15[5];

    _Block_object_dispose(v13, 8);
    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (uint64_t)hksp_isWithinInterval:()HKSPSleep ofDate:
{
  v6 = MEMORY[0x277CCA970];
  v7 = a4;
  v8 = [v6 alloc];
  v9 = [a1 dateByAddingTimeInterval:-a2];
  v10 = [a1 dateByAddingTimeInterval:a2];
  v11 = [v8 initWithStartDate:v9 endDate:v10];

  v12 = [v11 hksp_containsDate:v7];
  return v12;
}

@end