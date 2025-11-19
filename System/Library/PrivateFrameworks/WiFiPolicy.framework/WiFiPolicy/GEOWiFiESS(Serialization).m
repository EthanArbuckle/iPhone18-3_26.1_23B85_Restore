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
  [v13 encodeBool:objc_msgSend(a1 forKey:{"isMoving"), @"moving"}];
  [v13 encodeBool:objc_msgSend(a1 forKey:{"isCaptive"), @"captive"}];
  [v13 encodeBool:objc_msgSend(a1 forKey:{"isSuspicious"), @"suspicious"}];
  [v13 encodeBool:objc_msgSend(a1 forKey:{"isPublic"), @"public"}];
  v4 = [a1 name];
  [v13 encodeObject:v4 forKey:@"name"];

  v5 = [a1 identifier];
  [v13 encodeObject:v5 forKey:@"identifier"];

  [v13 encodeInt64:objc_msgSend(a1 forKey:{"authMask"), @"authMask"}];
  [v13 encodeInt64:objc_msgSend(a1 forKey:{"tileKey"), @"tileKey"}];
  v6 = [a1 popularityScore];

  if (v6)
  {
    v7 = [a1 popularityScore];
    [v13 encodeInt64:objc_msgSend(v7 forKey:{"score"), @"popularityScoreValue"}];
  }

  else
  {
    [v13 encodeInt64:0 forKey:@"popularityScoreValue"];
  }

  v8 = [a1 qualityScore];

  if (v8)
  {
    v9 = [a1 qualityScore];
    [v13 encodeInt64:objc_msgSend(v9 forKey:{"score"), @"qualityScoreValue"}];
  }

  else
  {
    [v13 encodeInt64:0 forKey:@"qualityScoreValue"];
  }

  v10 = [a1 accessPoints];
  [v13 encodeObject:v10 forKey:@"accessPoints"];

  v11 = [a1 ownerIdentifiers];

  if (v11)
  {
    v12 = [a1 ownerIdentifiers];
    [v13 encodeObject:v12 forKey:@"ownerIdentifiers"];
  }

  [v13 encodeInt32:objc_msgSend(a1 forKey:{"venueType"), @"venueType"}];
  [v13 encodeInteger:objc_msgSend(a1 forKey:{"venueGroup"), @"venueGroup"}];
  [v13 encodeInteger:objc_msgSend(a1 forKey:{"type"), @"type"}];
}

- (id)dictionaryRepresentation
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1, "isMoving")}];
  [v2 setObject:v3 forKey:@"moving"];

  v4 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1, "isCaptive")}];
  [v2 setObject:v4 forKey:@"captive"];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1, "isSuspicious")}];
  [v2 setObject:v5 forKey:@"suspicious"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1, "isPublic")}];
  [v2 setObject:v6 forKey:@"public"];

  v7 = [a1 name];

  if (v7)
  {
    v8 = [a1 name];
    [v2 setObject:v8 forKey:@"name"];
  }

  v9 = [a1 identifier];

  if (v9)
  {
    v10 = [a1 identifier];
    [v2 setObject:v10 forKey:@"identifier"];
  }

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "authMask")}];
  [v2 setObject:v11 forKey:@"authMask"];

  v12 = [a1 popularityScore];

  if (v12)
  {
    v13 = MEMORY[0x277CCABB0];
    v14 = [a1 popularityScore];
    v15 = [v13 numberWithUnsignedInteger:{objc_msgSend(v14, "score")}];
    [v2 setObject:v15 forKey:@"popularityScoreValue"];
  }

  v16 = [a1 qualityScore];

  if (v16)
  {
    v17 = MEMORY[0x277CCABB0];
    v18 = [a1 qualityScore];
    v19 = [v17 numberWithUnsignedInteger:{objc_msgSend(v18, "score")}];
    [v2 setObject:v19 forKey:@"qualityScoreValue"];
  }

  v20 = [a1 accessPoints];

  if (v20)
  {
    v21 = [MEMORY[0x277CBEB18] array];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v22 = [a1 accessPoints];
    v23 = [v22 countByEnumeratingWithState:&v35 objects:v39 count:16];
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
            objc_enumerationMutation(v22);
          }

          v27 = [*(*(&v35 + 1) + 8 * i) dictionaryRepresentation];
          [v21 addObject:v27];
        }

        v24 = [v22 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v24);
    }

    [v2 setObject:v21 forKey:@"accessPoints"];
  }

  v28 = [a1 ownerIdentifiers];

  if (v28)
  {
    v29 = [a1 ownerIdentifiers];
    [v2 setObject:v29 forKey:@"ownerIdentifiers"];
  }

  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(a1, "venueType")}];
  [v2 setObject:v30 forKey:@"venueType"];

  v31 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(a1, "venueGroup")}];
  [v2 setObject:v31 forKey:@"venueGroup"];

  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "type")}];
  [v2 setObject:v32 forKey:@"type"];

  v33 = *MEMORY[0x277D85DE8];

  return v2;
}

- (uint64_t)authMask
{
  if (![a1 authTraitsCount] || !objc_msgSend(a1, "authTraitsCount"))
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  do
  {
    v4 = [a1 authTraitsAtIndex:v3];
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

  while (v3 < [a1 authTraitsCount]);
  return v2;
}

- (id)authDescription
{
  if ([a1 authTraitsCount])
  {
    v2 = [MEMORY[0x277CCAB68] string];
    if ([a1 authTraitsCount])
    {
      v3 = 0;
      do
      {
        v4 = MEMORY[0x277CCACA8];
        v5 = [a1 authTraitsAsString:{objc_msgSend(a1, "authTraitsAtIndex:", v3)}];
        v6 = [v4 stringWithFormat:@"%@", v5];
        [v2 appendString:v6];

        if (v3 < [a1 authTraitsCount] - 1)
        {
          [v2 appendString:{@", "}];
        }

        ++v3;
      }

      while (v3 < [a1 authTraitsCount]);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)attributesDescription
{
  if ([a1 attributesCount])
  {
    v2 = [MEMORY[0x277CCAB68] string];
    if ([a1 attributesCount])
    {
      v3 = 0;
      do
      {
        v4 = MEMORY[0x277CCACA8];
        v5 = [a1 attributesAsString:{objc_msgSend(a1, "attributesAtIndex:", v3)}];
        v6 = [v4 stringWithFormat:@"%@", v5];
        [v2 appendString:v6];

        if (v3 < [a1 attributesCount] - 1)
        {
          [v2 appendString:{@", "}];
        }

        ++v3;
      }

      while (v3 < [a1 attributesCount]);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)remoteIdentifier
{
  if ([a1 hasUniqueIdentifier])
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%lld", objc_msgSend(a1, "uniqueIdentifier")];
  }

  else
  {
    [a1 identifier];
  }
  v2 = ;

  return v2;
}

- (id)accessPoints
{
  v2 = [a1 bss];

  if (v2)
  {
    v3 = MEMORY[0x277CBEB98];
    v4 = [a1 bss];
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
  v1 = [a1 accessPoints];
  v2 = [v1 count];

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
    NSLog(&cfstr_SMulitpleQuali.isa, "[GEOWiFiESS(Serialization) popularityScore]");
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
    NSLog(&cfstr_SMulitpleQuali.isa, "[GEOWiFiESS(Serialization) qualityScore]");
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