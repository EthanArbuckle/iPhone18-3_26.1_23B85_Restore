@interface GEOWiFiESS(Serialization)
- (BOOL)_hasAttribute:()Serialization;
- (id)accessPoints;
- (id)attributesDescription;
- (id)authDescription;
- (id)dictionaryRepresentation;
- (id)popularityScore;
- (id)qualityScore;
- (id)remoteIdentifier;
- (uint64_t)accessPointCount;
- (uint64_t)authMask;
- (void)encodeWithCoder:()Serialization;
@end

@implementation GEOWiFiESS(Serialization)

- (void)encodeWithCoder:()Serialization
{
  v13 = a3;
  [v13 encodeBool:objc_msgSend(self forKey:{"isMoving"), @"moving"}];
  [v13 encodeBool:objc_msgSend(self forKey:{"isCaptive"), @"captive"}];
  [v13 encodeBool:objc_msgSend(self forKey:{"isSuspicious"), @"suspicious"}];
  [v13 encodeBool:objc_msgSend(self forKey:{"isPublic"), @"public"}];
  name = [self name];
  [v13 encodeObject:name forKey:@"name"];

  identifier = [self identifier];
  [v13 encodeObject:identifier forKey:@"identifier"];

  [v13 encodeInt64:objc_msgSend(self forKey:{"authMask"), @"authMask"}];
  [v13 encodeInt64:objc_msgSend(self forKey:{"tileKey"), @"tileKey"}];
  popularityScore = [self popularityScore];

  if (popularityScore)
  {
    popularityScore2 = [self popularityScore];
    [v13 encodeInt64:objc_msgSend(popularityScore2 forKey:{"score"), @"popularityScoreValue"}];
  }

  else
  {
    [v13 encodeInt64:0 forKey:@"popularityScoreValue"];
  }

  qualityScore = [self qualityScore];

  if (qualityScore)
  {
    qualityScore2 = [self qualityScore];
    [v13 encodeInt64:objc_msgSend(qualityScore2 forKey:{"score"), @"qualityScoreValue"}];
  }

  else
  {
    [v13 encodeInt64:0 forKey:@"qualityScoreValue"];
  }

  accessPoints = [self accessPoints];
  [v13 encodeObject:accessPoints forKey:@"accessPoints"];

  ownerIdentifiers = [self ownerIdentifiers];

  if (ownerIdentifiers)
  {
    ownerIdentifiers2 = [self ownerIdentifiers];
    [v13 encodeObject:ownerIdentifiers2 forKey:@"ownerIdentifiers"];
  }

  [v13 encodeInt32:objc_msgSend(self forKey:{"venueType"), @"venueType"}];
  [v13 encodeInteger:objc_msgSend(self forKey:{"venueGroup"), @"venueGroup"}];
  [v13 encodeInteger:objc_msgSend(self forKey:{"type"), @"type"}];
}

- (id)dictionaryRepresentation
{
  v40 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(self, "isMoving")}];
  [dictionary setObject:v3 forKey:@"moving"];

  v4 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(self, "isCaptive")}];
  [dictionary setObject:v4 forKey:@"captive"];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(self, "isSuspicious")}];
  [dictionary setObject:v5 forKey:@"suspicious"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(self, "isPublic")}];
  [dictionary setObject:v6 forKey:@"public"];

  name = [self name];

  if (name)
  {
    name2 = [self name];
    [dictionary setObject:name2 forKey:@"name"];
  }

  identifier = [self identifier];

  if (identifier)
  {
    identifier2 = [self identifier];
    [dictionary setObject:identifier2 forKey:@"identifier"];
  }

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(self, "authMask")}];
  [dictionary setObject:v11 forKey:@"authMask"];

  popularityScore = [self popularityScore];

  if (popularityScore)
  {
    v13 = MEMORY[0x277CCABB0];
    popularityScore2 = [self popularityScore];
    v15 = [v13 numberWithUnsignedInteger:{objc_msgSend(popularityScore2, "score")}];
    [dictionary setObject:v15 forKey:@"popularityScoreValue"];
  }

  qualityScore = [self qualityScore];

  if (qualityScore)
  {
    v17 = MEMORY[0x277CCABB0];
    qualityScore2 = [self qualityScore];
    v19 = [v17 numberWithUnsignedInteger:{objc_msgSend(qualityScore2, "score")}];
    [dictionary setObject:v19 forKey:@"qualityScoreValue"];
  }

  accessPoints = [self accessPoints];

  if (accessPoints)
  {
    array = [MEMORY[0x277CBEB18] array];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    accessPoints2 = [self accessPoints];
    v23 = [accessPoints2 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v36;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v36 != v25)
          {
            objc_enumerationMutation(accessPoints2);
          }

          dictionaryRepresentation = [*(*(&v35 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v24 = [accessPoints2 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v24);
    }

    [dictionary setObject:array forKey:@"accessPoints"];
  }

  ownerIdentifiers = [self ownerIdentifiers];

  if (ownerIdentifiers)
  {
    ownerIdentifiers2 = [self ownerIdentifiers];
    [dictionary setObject:ownerIdentifiers2 forKey:@"ownerIdentifiers"];
  }

  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(self, "venueType")}];
  [dictionary setObject:v30 forKey:@"venueType"];

  v31 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(self, "venueGroup")}];
  [dictionary setObject:v31 forKey:@"venueGroup"];

  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(self, "type")}];
  [dictionary setObject:v32 forKey:@"type"];

  v33 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (uint64_t)authMask
{
  if (![self authTraitsCount] || !objc_msgSend(self, "authTraitsCount"))
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  do
  {
    v4 = [self authTraitsAtIndex:v3];
    v5 = v2 | 8;
    v6 = v2 | 4;
    if (v4 != 3)
    {
      v6 = v2;
    }

    if (v4 != 4)
    {
      v5 = v6;
    }

    v7 = v2 | 1;
    v8 = v2 | 2;
    if (v4 != 2)
    {
      v8 = v2;
    }

    if (v4 != 1)
    {
      v7 = v8;
    }

    if (v4 <= 2)
    {
      v2 = v7;
    }

    else
    {
      v2 = v5;
    }

    ++v3;
  }

  while (v3 < [self authTraitsCount]);
  return v2;
}

- (id)authDescription
{
  if ([self authTraitsCount])
  {
    string = [MEMORY[0x277CCAB68] string];
    if ([self authTraitsCount])
    {
      v3 = 0;
      do
      {
        v4 = MEMORY[0x277CCACA8];
        v5 = [self authTraitsAsString:{objc_msgSend(self, "authTraitsAtIndex:", v3)}];
        v6 = [v4 stringWithFormat:@"%@", v5];
        [string appendString:v6];

        if (v3 < [self authTraitsCount] - 1)
        {
          [string appendString:{@", "}];
        }

        ++v3;
      }

      while (v3 < [self authTraitsCount]);
    }
  }

  else
  {
    string = 0;
  }

  return string;
}

- (id)attributesDescription
{
  if ([self attributesCount])
  {
    string = [MEMORY[0x277CCAB68] string];
    if ([self attributesCount])
    {
      v3 = 0;
      do
      {
        v4 = MEMORY[0x277CCACA8];
        v5 = [self attributesAsString:{objc_msgSend(self, "attributesAtIndex:", v3)}];
        v6 = [v4 stringWithFormat:@"%@", v5];
        [string appendString:v6];

        if (v3 < [self attributesCount] - 1)
        {
          [string appendString:{@", "}];
        }

        ++v3;
      }

      while (v3 < [self attributesCount]);
    }
  }

  else
  {
    string = 0;
  }

  return string;
}

- (id)remoteIdentifier
{
  if ([self hasUniqueIdentifier])
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%lld", objc_msgSend(self, "uniqueIdentifier")];
  }

  else
  {
    [self identifier];
  }
  v2 = ;

  return v2;
}

- (id)accessPoints
{
  v2 = [self bss];

  if (v2)
  {
    v3 = MEMORY[0x277CBEB98];
    v4 = [self bss];
    v5 = [v3 setWithArray:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (uint64_t)accessPointCount
{
  accessPoints = [self accessPoints];
  v2 = [accessPoints count];

  return v2;
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
    NSLog(&cfstr_SMulitpleQuali.isa, "[GEOWiFiESS(Serialization) popularityScore]");
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
    NSLog(&cfstr_SMulitpleQuali.isa, "[GEOWiFiESS(Serialization) qualityScore]");
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