@interface WBSResultRankerHelpers
+ (BOOL)allowMatch:(id)a3 forMatch:(id)a4 forQueryString:(id)a5;
+ (BOOL)hostAreEqual:(id)a3 forSecondURLString:(id)a4;
+ (double)topSitesScoreAndVisitCountScoreFactor:(id)a3 forTopSiteScore:(float)a4 forVisitCountScore:(int64_t)a5;
+ (id)simplifiedURL:(id)a3;
+ (int64_t)numberOfWords:(id)a3;
@end

@implementation WBSResultRankerHelpers

+ (BOOL)hostAreEqual:(id)a3 forSecondURLString:(id)a4
{
  v5 = a4;
  v6 = [MEMORY[0x1E695DFF8] URLWithString:a3];
  v7 = [v6 host];
  v8 = [MEMORY[0x1E695DFF8] URLWithString:v5];
  v9 = [v8 host];
  v10 = [v7 isEqualToString:v9];

  return v10;
}

+ (id)simplifiedURL:(id)a3
{
  v3 = [MEMORY[0x1E695DFF8] URLWithString:a3];
  v4 = [v3 host];

  v5 = [v4 safari_stringByRemovingTopLevelDomainFromHost];
  v6 = [v5 safari_stringByRemovingWwwDotPrefix];

  return v6;
}

+ (int64_t)numberOfWords:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v5 = [v3 componentsSeparatedByCharactersInSet:v4];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF != ''"];
  v7 = [v5 filteredArrayUsingPredicate:v6];
  v8 = [v7 count];

  return v8;
}

+ (double)topSitesScoreAndVisitCountScoreFactor:(id)a3 forTopSiteScore:(float)a4 forVisitCountScore:(int64_t)a5
{
  v7 = a3;
  if (a5 == -1)
  {
    v9 = 1.0;
  }

  else
  {
    [WBSHistoryVisit weightedVisitCountFromScore:a5];
    v9 = tanhf(v8 + 1.1755e-38);
  }

  if (a4 != -1.0)
  {
    v9 = tanhf(a4 + 1.1755e-38) * v9;
  }

  [v7 normalizedTopSitesScoreAndVisitCountMultiplier];
  v11 = v10;
  [v7 normalizedTopSitesScoreAndVisitCountMultiplier];
  v13 = 1.0 / (v9 * v11 + 1.0) + 1.0 - 1.0 / (v12 + 1.0);

  return v13;
}

+ (BOOL)allowMatch:(id)a3 forMatch:(id)a4 forQueryString:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 length];
  v12 = [v9 containsBookmark];
  if (v12)
  {
    v13 = 0.75;
  }

  else
  {
    v13 = 1.0;
  }

  if (v12)
  {
    v14 = v11 * 1.5;
  }

  else
  {
    v14 = v11;
  }

  [v9 topSitesScore];
  v16 = v15;
  v17 = [v9 visitCountScore];
  LODWORD(v18) = v16;
  [a1 topSitesScoreAndVisitCountScoreFactor:v8 forTopSiteScore:v17 forVisitCountScore:v18];
  v20 = v19;
  v21 = [v9 matchLocation];
  v22 = 0;
  v23 = v20;
  if (v21 > 5)
  {
    if (v21 > 7)
    {
      if (v21 != 8)
      {
        if (v21 != 9)
        {
          if (v21 != 10)
          {
            goto LABEL_32;
          }

          goto LABEL_26;
        }

        v29 = [v8 characterThresholdForStartOfURL];
        goto LABEL_28;
      }

LABEL_26:
      v22 = 1;
      goto LABEL_32;
    }

    if (v21 != 6)
    {
      v29 = [v8 characterThresholdForStartOfTitle];
      goto LABEL_28;
    }

LABEL_23:
    v29 = [v8 characterThresholdForStartOfTitleWord];
    goto LABEL_28;
  }

  if (v21 <= 3)
  {
    if (v21 == 2)
    {
      v30 = [v9 originalURLString];
      v31 = [a1 simplifiedURL:v30];
      v32 = [v31 length];

      if (v14 < [v8 characterThresholdForAnywhereInTitleOrURL])
      {
        [v8 percentageThresholdForAnywhereInURL];
        v28 = (v14 + 1.0) / v32 < v13 * v33;
        goto LABEL_29;
      }
    }

    else
    {
      if (v21 != 3)
      {
        goto LABEL_32;
      }

      v24 = [v9 title];
      v25 = [v24 length];

      if (v14 < [v8 characterThresholdForAnywhereInTitleOrURL])
      {
        [v8 percentageThresholdForAnywhereInTitle];
        if ((v14 + 1.0) / v25 < v13 * v26)
        {
          v27 = [a1 numberOfWords:v10];
          v28 = v27 < [v8 matchingWordsInTitleThreshold];
          goto LABEL_29;
        }
      }
    }

    goto LABEL_26;
  }

  if (v21 == 4)
  {
    goto LABEL_23;
  }

  v29 = [v8 characterThresholdForStartOfURLPathComponent];
LABEL_28:
  v28 = v14 < floorf(v23 * v29);
LABEL_29:
  v22 = !v28;
LABEL_32:

  return v22;
}

@end