@interface PHAsset(PXLayoutItemInputAdoption)
- (__n128)transform;
- (double)size;
- (float)px_playbackScore;
- (long)weightUsingCriterion:()PXLayoutItemInputAdoption;
- (uint64_t)weight;
- (void)weightUsingWeightingScheme:()PXLayoutItemInputAdoption;
@end

@implementation PHAsset(PXLayoutItemInputAdoption)

- (__n128)transform
{
  v1 = MEMORY[0x1E695EFD0];
  v2 = *(MEMORY[0x1E695EFD0] + 16);
  *a1 = *MEMORY[0x1E695EFD0];
  *(a1 + 16) = v2;
  result = v1[2];
  *(a1 + 32) = result;
  return result;
}

- (float)px_playbackScore
{
  v1 = [a1 mediaAnalysisProperties];
  [v1 autoplaySuggestionScore];
  v3 = v2;

  return v3;
}

- (void)weightUsingWeightingScheme:()PXLayoutItemInputAdoption
{
  v3 = result;
  if (a3)
  {
    if (a3 > 1)
    {
      if (a3 > 3)
      {
        if (a3 > 5)
        {
          if (a3 == 6 || a3 == 7)
          {
            v9 = [result creationDate];
            [v9 timeIntervalSinceReferenceDate];
            srand(v10);

            return rand();
          }
        }

        else if (a3 != 4)
        {
          return [result isFavorite];
        }
      }

      else if (a3 == 2)
      {
        [result curationScore];
        v6 = v5;
        result = [v3 px_playbackScore];
        if (v6 < 0.5 || v7 <= 0.5)
        {
          if (v6 >= 0.5)
          {
            PXFloatApproximatelyEqualToFloat();
          }
        }

        else
        {
          return [v3 playbackStyle];
        }
      }
    }

    else if (a3 == 1)
    {

      return [result curationScore];
    }
  }

  else
  {
    result = [result highlightVisibilityScore];
    if (fabs(v4) < 2.22044605e-16)
    {
      return [v3 overallAestheticScore];
    }
  }

  return result;
}

- (long)weightUsingCriterion:()PXLayoutItemInputAdoption
{
  if (a3 >= 2)
  {
    result = 0.0;
    if (a3 == 2)
    {
      [a1 highlightVisibilityScore];
      v7 = fmod(v6 * 130.0, 100.0);
      return fmod(v7, 20.0) / 10.0;
    }
  }

  else
  {

    [a1 weight];
  }

  return result;
}

- (uint64_t)weight
{
  v2 = +[PXGridSettings sharedInstance];
  v3 = [v2 weightingScheme];

  return [a1 weightUsingWeightingScheme:v3];
}

- (double)size
{
  v2 = [a1 pixelWidth];
  [a1 pixelHeight];
  return v2;
}

@end