@interface WBSResultRankerHelpers
+ (BOOL)allowMatch:(id)match forMatch:(id)forMatch forQueryString:(id)string;
+ (BOOL)hostAreEqual:(id)equal forSecondURLString:(id)string;
+ (double)topSitesScoreAndVisitCountScoreFactor:(id)factor forTopSiteScore:(float)score forVisitCountScore:(int64_t)countScore;
+ (id)simplifiedURL:(id)l;
+ (int64_t)numberOfWords:(id)words;
@end

@implementation WBSResultRankerHelpers

+ (BOOL)hostAreEqual:(id)equal forSecondURLString:(id)string
{
  stringCopy = string;
  v6 = [MEMORY[0x1E695DFF8] URLWithString:equal];
  host = [v6 host];
  v8 = [MEMORY[0x1E695DFF8] URLWithString:stringCopy];
  host2 = [v8 host];
  v10 = [host isEqualToString:host2];

  return v10;
}

+ (id)simplifiedURL:(id)l
{
  v3 = [MEMORY[0x1E695DFF8] URLWithString:l];
  host = [v3 host];

  safari_stringByRemovingTopLevelDomainFromHost = [host safari_stringByRemovingTopLevelDomainFromHost];
  safari_stringByRemovingWwwDotPrefix = [safari_stringByRemovingTopLevelDomainFromHost safari_stringByRemovingWwwDotPrefix];

  return safari_stringByRemovingWwwDotPrefix;
}

+ (int64_t)numberOfWords:(id)words
{
  wordsCopy = words;
  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v5 = [wordsCopy componentsSeparatedByCharactersInSet:whitespaceCharacterSet];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF != ''"];
  v7 = [v5 filteredArrayUsingPredicate:v6];
  v8 = [v7 count];

  return v8;
}

+ (double)topSitesScoreAndVisitCountScoreFactor:(id)factor forTopSiteScore:(float)score forVisitCountScore:(int64_t)countScore
{
  factorCopy = factor;
  if (countScore == -1)
  {
    v9 = 1.0;
  }

  else
  {
    [WBSHistoryVisit weightedVisitCountFromScore:countScore];
    v9 = tanhf(v8 + 1.1755e-38);
  }

  if (score != -1.0)
  {
    v9 = tanhf(score + 1.1755e-38) * v9;
  }

  [factorCopy normalizedTopSitesScoreAndVisitCountMultiplier];
  v11 = v10;
  [factorCopy normalizedTopSitesScoreAndVisitCountMultiplier];
  v13 = 1.0 / (v9 * v11 + 1.0) + 1.0 - 1.0 / (v12 + 1.0);

  return v13;
}

+ (BOOL)allowMatch:(id)match forMatch:(id)forMatch forQueryString:(id)string
{
  matchCopy = match;
  forMatchCopy = forMatch;
  stringCopy = string;
  v11 = [stringCopy length];
  containsBookmark = [forMatchCopy containsBookmark];
  if (containsBookmark)
  {
    v13 = 0.75;
  }

  else
  {
    v13 = 1.0;
  }

  if (containsBookmark)
  {
    v14 = v11 * 1.5;
  }

  else
  {
    v14 = v11;
  }

  [forMatchCopy topSitesScore];
  v16 = v15;
  visitCountScore = [forMatchCopy visitCountScore];
  LODWORD(v18) = v16;
  [self topSitesScoreAndVisitCountScoreFactor:matchCopy forTopSiteScore:visitCountScore forVisitCountScore:v18];
  v20 = v19;
  matchLocation = [forMatchCopy matchLocation];
  v22 = 0;
  v23 = v20;
  if (matchLocation > 5)
  {
    if (matchLocation > 7)
    {
      if (matchLocation != 8)
      {
        if (matchLocation != 9)
        {
          if (matchLocation != 10)
          {
            goto LABEL_32;
          }

          goto LABEL_26;
        }

        characterThresholdForStartOfURL = [matchCopy characterThresholdForStartOfURL];
        goto LABEL_28;
      }

LABEL_26:
      v22 = 1;
      goto LABEL_32;
    }

    if (matchLocation != 6)
    {
      characterThresholdForStartOfURL = [matchCopy characterThresholdForStartOfTitle];
      goto LABEL_28;
    }

LABEL_23:
    characterThresholdForStartOfURL = [matchCopy characterThresholdForStartOfTitleWord];
    goto LABEL_28;
  }

  if (matchLocation <= 3)
  {
    if (matchLocation == 2)
    {
      originalURLString = [forMatchCopy originalURLString];
      v31 = [self simplifiedURL:originalURLString];
      v32 = [v31 length];

      if (v14 < [matchCopy characterThresholdForAnywhereInTitleOrURL])
      {
        [matchCopy percentageThresholdForAnywhereInURL];
        v28 = (v14 + 1.0) / v32 < v13 * v33;
        goto LABEL_29;
      }
    }

    else
    {
      if (matchLocation != 3)
      {
        goto LABEL_32;
      }

      title = [forMatchCopy title];
      v25 = [title length];

      if (v14 < [matchCopy characterThresholdForAnywhereInTitleOrURL])
      {
        [matchCopy percentageThresholdForAnywhereInTitle];
        if ((v14 + 1.0) / v25 < v13 * v26)
        {
          v27 = [self numberOfWords:stringCopy];
          v28 = v27 < [matchCopy matchingWordsInTitleThreshold];
          goto LABEL_29;
        }
      }
    }

    goto LABEL_26;
  }

  if (matchLocation == 4)
  {
    goto LABEL_23;
  }

  characterThresholdForStartOfURL = [matchCopy characterThresholdForStartOfURLPathComponent];
LABEL_28:
  v28 = v14 < floorf(v23 * characterThresholdForStartOfURL);
LABEL_29:
  v22 = !v28;
LABEL_32:

  return v22;
}

@end