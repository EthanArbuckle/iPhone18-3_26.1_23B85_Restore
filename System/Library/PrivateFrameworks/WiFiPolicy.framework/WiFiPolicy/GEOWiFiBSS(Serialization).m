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
  [v9 encodeBool:objc_msgSend(a1 forKey:{"isEdge"), @"edge"}];
  v4 = [a1 BSSID];
  [v9 encodeObject:v4 forKey:@"bssid"];

  [a1 latitude];
  [v9 encodeDouble:@"latitude" forKey:?];
  [a1 longitude];
  [v9 encodeDouble:@"longitude" forKey:?];
  v5 = [a1 popularityScore];

  if (v5)
  {
    v6 = [a1 popularityScore];
    [v9 encodeInt64:objc_msgSend(v6 forKey:{"score"), @"popularityScoreValue"}];
  }

  else
  {
    [v9 encodeInt64:0 forKey:@"popularityScoreValue"];
  }

  v7 = [a1 qualityScore];

  if (v7)
  {
    v8 = [a1 qualityScore];
    [v9 encodeInt64:objc_msgSend(v8 forKey:{"score"), @"qualityScoreValue"}];
  }

  else
  {
    [v9 encodeInt64:0 forKey:@"qualityScoreValue"];
  }
}

- (id)dictionaryRepresentation
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1, "isEdge")}];
  [v2 setObject:v3 forKey:@"edge"];

  v4 = [a1 BSSID];

  if (v4)
  {
    v5 = [a1 BSSID];
    [v2 setObject:v5 forKey:@"bssid"];
  }

  v6 = MEMORY[0x277CCABB0];
  [a1 latitude];
  v7 = [v6 numberWithDouble:?];
  [v2 setObject:v7 forKey:@"latitude"];

  v8 = MEMORY[0x277CCABB0];
  [a1 longitude];
  v9 = [v8 numberWithDouble:?];
  [v2 setObject:v9 forKey:@"longitude"];

  v10 = [a1 popularityScore];

  if (v10)
  {
    v11 = MEMORY[0x277CCABB0];
    v12 = [a1 popularityScore];
    v13 = [v11 numberWithUnsignedInteger:{objc_msgSend(v12, "score")}];
    [v2 setObject:v13 forKey:@"popularityScoreValue"];
  }

  v14 = [a1 qualityScore];

  if (v14)
  {
    v15 = MEMORY[0x277CCABB0];
    v16 = [a1 qualityScore];
    v17 = [v15 numberWithUnsignedInteger:{objc_msgSend(v16, "score")}];
    [v2 setObject:v17 forKey:@"qualityScoreValue"];
  }

  return v2;
}

- (double)latitude
{
  if ([a1 hasLatLngE7])
  {
    v2 = [a1 latLngE7];
    v3 = [v2 latE7] / 10000000.0;
  }

  else
  {
    v2 = [a1 location];
    [v2 lat];
    v3 = v4;
  }

  return v3;
}

- (double)longitude
{
  if ([a1 hasLatLngE7])
  {
    v2 = [a1 latLngE7];
    v3 = [v2 lngE7] / 10000000.0;
  }

  else
  {
    v2 = [a1 location];
    [v2 lng];
    v3 = v4;
  }

  return v3;
}

- (id)BSSID
{
  if ([a1 hasUniqueIdentifier])
  {
    v2 = TBMacAdressFromLong([a1 uniqueIdentifier]);
  }

  else
  {
    v3 = [a1 identifier];
    v2 = [v3 lowercaseString];
  }

  return v2;
}

- (id)popularityScore
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [a1 qualities];

  if (!v2)
  {
    goto LABEL_19;
  }

  v3 = [a1 qualities];
  v2 = [v3 firstObject];

  v4 = [a1 qualities];
  v5 = [v4 count];

  if (v5 >= 2)
  {
    NSLog(&cfstr_SMulitpleQuali.isa, "[GEOWiFiBSS(Serialization) popularityScore]");
  }

  if ([v2 qualitiesCount])
  {
    v6 = [OUTLINED_FUNCTION_1_0() qualities];
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
            objc_enumerationMutation(v6);
          }

          v11 = *(v14 + 8 * i);
          if ([v11 type] == 1)
          {
            v8 = +[TBPopularityScore popularityScoreWithValue:](TBPopularityScore, "popularityScoreWithValue:", [v11 score]);
            goto LABEL_15;
          }
        }

        OUTLINED_FUNCTION_0_1();
        v8 = [v6 countByEnumeratingWithState:? objects:? count:?];
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
  v2 = [a1 qualities];

  if (!v2)
  {
    goto LABEL_19;
  }

  v3 = [a1 qualities];
  v2 = [v3 firstObject];

  v4 = [a1 qualities];
  v5 = [v4 count];

  if (v5 >= 2)
  {
    NSLog(&cfstr_SMulitpleQuali.isa, "[GEOWiFiBSS(Serialization) qualityScore]");
  }

  if ([v2 qualitiesCount])
  {
    v6 = [OUTLINED_FUNCTION_1_0() qualities];
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
            objc_enumerationMutation(v6);
          }

          v11 = *(v14 + 8 * i);
          if ([v11 type] == 2)
          {
            v8 = +[TBQualityScore qualityScoreWithValue:](TBQualityScore, "qualityScoreWithValue:", [v11 score]);
            goto LABEL_15;
          }
        }

        OUTLINED_FUNCTION_0_1();
        v8 = [v6 countByEnumeratingWithState:? objects:? count:?];
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
  if (![a1 attributes] || !objc_msgSend(a1, "attributesCount"))
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v6 = [a1 attributesAtIndex:v5];
    v7 = v6 == a3;
    if (v6 == a3)
    {
      break;
    }

    ++v5;
  }

  while ([a1 attributesCount] > v5);
  return v7;
}

@end