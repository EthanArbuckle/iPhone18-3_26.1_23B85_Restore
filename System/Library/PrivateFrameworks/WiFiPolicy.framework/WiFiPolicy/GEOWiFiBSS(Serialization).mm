@interface GEOWiFiBSS(Serialization)
- (BOOL)_hasAttribute:()Serialization;
- (double)latitude;
- (double)longitude;
- (id)BSSID;
- (id)dictionaryRepresentation;
- (id)popularityScore;
- (id)qualityScore;
- (void)encodeWithCoder:()Serialization;
@end

@implementation GEOWiFiBSS(Serialization)

- (void)encodeWithCoder:()Serialization
{
  v9 = a3;
  [v9 encodeBool:objc_msgSend(self forKey:{"isEdge"), @"edge"}];
  bSSID = [self BSSID];
  [v9 encodeObject:bSSID forKey:@"bssid"];

  [self latitude];
  [v9 encodeDouble:@"latitude" forKey:?];
  [self longitude];
  [v9 encodeDouble:@"longitude" forKey:?];
  popularityScore = [self popularityScore];

  if (popularityScore)
  {
    popularityScore2 = [self popularityScore];
    [v9 encodeInt64:objc_msgSend(popularityScore2 forKey:{"score"), @"popularityScoreValue"}];
  }

  else
  {
    [v9 encodeInt64:0 forKey:@"popularityScoreValue"];
  }

  qualityScore = [self qualityScore];

  if (qualityScore)
  {
    qualityScore2 = [self qualityScore];
    [v9 encodeInt64:objc_msgSend(qualityScore2 forKey:{"score"), @"qualityScoreValue"}];
  }

  else
  {
    [v9 encodeInt64:0 forKey:@"qualityScoreValue"];
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(self, "isEdge")}];
  [dictionary setObject:v3 forKey:@"edge"];

  bSSID = [self BSSID];

  if (bSSID)
  {
    bSSID2 = [self BSSID];
    [dictionary setObject:bSSID2 forKey:@"bssid"];
  }

  v6 = MEMORY[0x277CCABB0];
  [self latitude];
  v7 = [v6 numberWithDouble:?];
  [dictionary setObject:v7 forKey:@"latitude"];

  v8 = MEMORY[0x277CCABB0];
  [self longitude];
  v9 = [v8 numberWithDouble:?];
  [dictionary setObject:v9 forKey:@"longitude"];

  popularityScore = [self popularityScore];

  if (popularityScore)
  {
    v11 = MEMORY[0x277CCABB0];
    popularityScore2 = [self popularityScore];
    v13 = [v11 numberWithUnsignedInteger:{objc_msgSend(popularityScore2, "score")}];
    [dictionary setObject:v13 forKey:@"popularityScoreValue"];
  }

  qualityScore = [self qualityScore];

  if (qualityScore)
  {
    v15 = MEMORY[0x277CCABB0];
    qualityScore2 = [self qualityScore];
    v17 = [v15 numberWithUnsignedInteger:{objc_msgSend(qualityScore2, "score")}];
    [dictionary setObject:v17 forKey:@"qualityScoreValue"];
  }

  return dictionary;
}

- (double)latitude
{
  if ([self hasLatLngE7])
  {
    latLngE7 = [self latLngE7];
    v3 = [latLngE7 latE7] / 10000000.0;
  }

  else
  {
    latLngE7 = [self location];
    [latLngE7 lat];
    v3 = v4;
  }

  return v3;
}

- (double)longitude
{
  if ([self hasLatLngE7])
  {
    latLngE7 = [self latLngE7];
    v3 = [latLngE7 lngE7] / 10000000.0;
  }

  else
  {
    latLngE7 = [self location];
    [latLngE7 lng];
    v3 = v4;
  }

  return v3;
}

- (id)BSSID
{
  if ([self hasUniqueIdentifier])
  {
    lowercaseString = TBMacAdressFromLong([self uniqueIdentifier]);
  }

  else
  {
    identifier = [self identifier];
    lowercaseString = [identifier lowercaseString];
  }

  return lowercaseString;
}

- (id)popularityScore
{
  v16 = *MEMORY[0x277D85DE8];
  qualities = [self qualities];

  if (!qualities)
  {
    goto LABEL_19;
  }

  qualities2 = [self qualities];
  qualities = [qualities2 firstObject];

  qualities3 = [self qualities];
  v5 = [qualities3 count];

  if (v5 >= 2)
  {
    NSLog(&cfstr_SMulitpleQuali.isa, "[GEOWiFiBSS(Serialization) popularityScore]");
  }

  if ([qualities qualitiesCount])
  {
    qualities4 = [OUTLINED_FUNCTION_1_0() qualities];
    OUTLINED_FUNCTION_0_1();
    v8 = [v7 countByEnumeratingWithState:? objects:? count:?];
    if (v8)
    {
      v9 = *v15;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(qualities4);
          }

          v11 = *(v14 + 8 * i);
          if ([v11 type] == 1)
          {
            v8 = +[TBPopularityScore popularityScoreWithValue:](TBPopularityScore, "popularityScoreWithValue:", [v11 score]);
            goto LABEL_15;
          }
        }

        OUTLINED_FUNCTION_0_1();
        v8 = [qualities4 countByEnumeratingWithState:? objects:? count:?];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:
  }

  else
  {
LABEL_19:
    v8 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)qualityScore
{
  v16 = *MEMORY[0x277D85DE8];
  qualities = [self qualities];

  if (!qualities)
  {
    goto LABEL_19;
  }

  qualities2 = [self qualities];
  qualities = [qualities2 firstObject];

  qualities3 = [self qualities];
  v5 = [qualities3 count];

  if (v5 >= 2)
  {
    NSLog(&cfstr_SMulitpleQuali.isa, "[GEOWiFiBSS(Serialization) qualityScore]");
  }

  if ([qualities qualitiesCount])
  {
    qualities4 = [OUTLINED_FUNCTION_1_0() qualities];
    OUTLINED_FUNCTION_0_1();
    v8 = [v7 countByEnumeratingWithState:? objects:? count:?];
    if (v8)
    {
      v9 = *v15;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(qualities4);
          }

          v11 = *(v14 + 8 * i);
          if ([v11 type] == 2)
          {
            v8 = +[TBQualityScore qualityScoreWithValue:](TBQualityScore, "qualityScoreWithValue:", [v11 score]);
            goto LABEL_15;
          }
        }

        OUTLINED_FUNCTION_0_1();
        v8 = [qualities4 countByEnumeratingWithState:? objects:? count:?];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:
  }

  else
  {
LABEL_19:
    v8 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v8;
}

- (BOOL)_hasAttribute:()Serialization
{
  if (![self attributes] || !objc_msgSend(self, "attributesCount"))
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v6 = [self attributesAtIndex:v5];
    v7 = v6 == a3;
    if (v6 == a3)
    {
      break;
    }

    ++v5;
  }

  while ([self attributesCount] > v5);
  return v7;
}

@end