@interface RTVisit
@end

@implementation RTVisit

BOOL __53__RTVisit_RTExtensions__visitsWithExit_dateInterval___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 exit];

  if (v4)
  {
    v5 = [v3 exit];
    v6 = [*(a1 + 32) startDate];
    if ([v5 compare:v6] == 1)
    {
      v7 = [v3 exit];
      v8 = [*(a1 + 32) endDate];
      v9 = [v7 compare:v8] == -1;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

BOOL __51__RTVisit_RTExtensions__visitsWithExit_beforeDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 exit];

  if (v4)
  {
    v5 = [v3 exit];
    v6 = [v5 compare:*(a1 + 32)] == -1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __50__RTVisit_RTExtensions__visits_withLoiIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 placeInference];
  v5 = [v4 loiIdentifier];

  if (v5)
  {
    v6 = [v3 placeInference];
    v7 = [v6 loiIdentifier];
    v8 = [v7 isEqual:*(a1 + 32)];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end