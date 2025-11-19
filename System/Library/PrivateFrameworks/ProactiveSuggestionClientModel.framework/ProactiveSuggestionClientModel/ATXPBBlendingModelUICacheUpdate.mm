@interface ATXPBBlendingModelUICacheUpdate
- (BOOL)hasConsumerSubTypeString;
- (BOOL)hasHomeScreenCachedSuggestion;
- (BOOL)hasSpotlightSuggestionLayout;
- (BOOL)hasSuggestionLayout;
- (BOOL)hasUuidString;
- (BOOL)isEqual:(id)a3;
- (double)cacheCreationDate;
- (id)clientModelCacheUpdateUUIDStringsAtIndex:(id *)a1;
- (id)clientModelIdsAtIndex:(id *)a1;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (uint64_t)addClientModelCacheUpdateUUIDStrings:(uint64_t)a1;
- (uint64_t)addClientModelIds:(uint64_t)a1;
- (uint64_t)clearClientModelCacheUpdateUUIDStrings;
- (uint64_t)clearClientModelIds;
- (uint64_t)clientModelCacheUpdateUUIDStrings;
- (uint64_t)clientModelCacheUpdateUUIDStringsCount;
- (uint64_t)clientModelIds;
- (uint64_t)clientModelIdsCount;
- (uint64_t)consumerSubTypeString;
- (uint64_t)hasCacheCreationDate;
- (uint64_t)homeScreenCachedSuggestion;
- (uint64_t)setCacheCreationDate:(uint64_t)result;
- (uint64_t)setHasCacheCreationDate:(uint64_t)result;
- (uint64_t)spotlightSuggestionLayout;
- (uint64_t)suggestionLayout;
- (uint64_t)uuidString;
- (unint64_t)hash;
- (void)copyTo:(uint64_t)a1;
- (void)mergeFrom:(uint64_t)a1;
- (void)setClientModelCacheUpdateUUIDStrings:(uint64_t)a1;
- (void)setClientModelIds:(uint64_t)a1;
- (void)setConsumerSubTypeString:(uint64_t)a1;
- (void)setHomeScreenCachedSuggestion:(uint64_t)a1;
- (void)setSpotlightSuggestionLayout:(uint64_t)a1;
- (void)setSuggestionLayout:(uint64_t)a1;
- (void)setUuidString:(uint64_t)a1;
- (void)writeTo:(id)a3;
@end

@implementation ATXPBBlendingModelUICacheUpdate

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBBlendingModelUICacheUpdate;
  v4 = [(ATXPBBlendingModelUICacheUpdate *)&v8 description];
  v5 = [(ATXPBBlendingModelUICacheUpdate *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  uuidString = self->_uuidString;
  if (uuidString)
  {
    [v3 setObject:uuidString forKey:@"uuidString"];
  }

  consumerSubTypeString = self->_consumerSubTypeString;
  if (consumerSubTypeString)
  {
    [v4 setObject:consumerSubTypeString forKey:@"consumerSubTypeString"];
  }

  clientModelIds = self->_clientModelIds;
  if (clientModelIds)
  {
    [v4 setObject:clientModelIds forKey:@"clientModelIds"];
  }

  clientModelCacheUpdateUUIDStrings = self->_clientModelCacheUpdateUUIDStrings;
  if (clientModelCacheUpdateUUIDStrings)
  {
    [v4 setObject:clientModelCacheUpdateUUIDStrings forKey:@"clientModelCacheUpdateUUIDStrings"];
  }

  homeScreenCachedSuggestion = self->_homeScreenCachedSuggestion;
  if (homeScreenCachedSuggestion)
  {
    v10 = [(ATXPBHomeScreenCachedSuggestion *)homeScreenCachedSuggestion dictionaryRepresentation];
    [v4 setObject:v10 forKey:@"homeScreenCachedSuggestion"];
  }

  suggestionLayout = self->_suggestionLayout;
  if (suggestionLayout)
  {
    v12 = [(ATXPBSuggestionLayout *)suggestionLayout dictionaryRepresentation];
    [v4 setObject:v12 forKey:@"suggestionLayout"];
  }

  if (*&self->_has)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithDouble:self->_cacheCreationDate];
    [v4 setObject:v13 forKey:@"cacheCreationDate"];
  }

  spotlightSuggestionLayout = self->_spotlightSuggestionLayout;
  if (spotlightSuggestionLayout)
  {
    v15 = [(ATXPBSpotlightSuggestionLayout *)spotlightSuggestionLayout dictionaryRepresentation];
    [v4 setObject:v15 forKey:@"spotlightSuggestionLayout"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_uuidString)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_consumerSubTypeString)
  {
    PBDataWriterWriteStringField();
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = self->_clientModelIds;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      v9 = 0;
      do
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v23 + 1) + 8 * v9);
        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = self->_clientModelCacheUpdateUUIDStrings;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      v15 = 0;
      do
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v19 + 1) + 8 * v15);
        PBDataWriterWriteStringField();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v13);
  }

  if (self->_homeScreenCachedSuggestion)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_suggestionLayout)
  {
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    cacheCreationDate = self->_cacheCreationDate;
    PBDataWriterWriteDoubleField();
  }

  if (self->_spotlightSuggestionLayout)
  {
    PBDataWriterWriteSubmessage();
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_uuidString copyWithZone:a3];
  v7 = *(v5 + 64);
  *(v5 + 64) = v6;

  v8 = [(NSString *)self->_consumerSubTypeString copyWithZone:a3];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v10 = self->_clientModelIds;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v35;
    do
    {
      v14 = 0;
      do
      {
        if (*v35 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v34 + 1) + 8 * v14) copyWithZone:a3];
        [(ATXPBBlendingModelUICacheUpdate *)v5 addClientModelIds:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v12);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v16 = self->_clientModelCacheUpdateUUIDStrings;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v31;
    do
    {
      v20 = 0;
      do
      {
        if (*v31 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v30 + 1) + 8 * v20) copyWithZone:{a3, v30}];
        [(ATXPBBlendingModelUICacheUpdate *)v5 addClientModelCacheUpdateUUIDStrings:v21];

        ++v20;
      }

      while (v18 != v20);
      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v18);
  }

  v22 = [(ATXPBHomeScreenCachedSuggestion *)self->_homeScreenCachedSuggestion copyWithZone:a3];
  v23 = *(v5 + 40);
  *(v5 + 40) = v22;

  v24 = [(ATXPBSuggestionLayout *)self->_suggestionLayout copyWithZone:a3];
  v25 = *(v5 + 56);
  *(v5 + 56) = v24;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_cacheCreationDate;
    *(v5 + 72) |= 1u;
  }

  v26 = [(ATXPBSpotlightSuggestionLayout *)self->_spotlightSuggestionLayout copyWithZone:a3, v30];
  v27 = *(v5 + 48);
  *(v5 + 48) = v26;

  v28 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  uuidString = self->_uuidString;
  if (uuidString | *(v4 + 8))
  {
    if (![(NSString *)uuidString isEqual:?])
    {
      goto LABEL_21;
    }
  }

  consumerSubTypeString = self->_consumerSubTypeString;
  if (consumerSubTypeString | *(v4 + 4))
  {
    if (![(NSString *)consumerSubTypeString isEqual:?])
    {
      goto LABEL_21;
    }
  }

  clientModelIds = self->_clientModelIds;
  if (clientModelIds | *(v4 + 3))
  {
    if (![(NSMutableArray *)clientModelIds isEqual:?])
    {
      goto LABEL_21;
    }
  }

  clientModelCacheUpdateUUIDStrings = self->_clientModelCacheUpdateUUIDStrings;
  if (clientModelCacheUpdateUUIDStrings | *(v4 + 2))
  {
    if (![(NSMutableArray *)clientModelCacheUpdateUUIDStrings isEqual:?])
    {
      goto LABEL_21;
    }
  }

  homeScreenCachedSuggestion = self->_homeScreenCachedSuggestion;
  if (homeScreenCachedSuggestion | *(v4 + 5))
  {
    if (![(ATXPBHomeScreenCachedSuggestion *)homeScreenCachedSuggestion isEqual:?])
    {
      goto LABEL_21;
    }
  }

  suggestionLayout = self->_suggestionLayout;
  if (suggestionLayout | *(v4 + 7))
  {
    if (![(ATXPBSuggestionLayout *)suggestionLayout isEqual:?])
    {
      goto LABEL_21;
    }
  }

  v11 = *(v4 + 72);
  if (*&self->_has)
  {
    if ((*(v4 + 72) & 1) == 0 || self->_cacheCreationDate != *(v4 + 1))
    {
      goto LABEL_21;
    }
  }

  else if (*(v4 + 72))
  {
LABEL_21:
    v13 = 0;
    goto LABEL_22;
  }

  spotlightSuggestionLayout = self->_spotlightSuggestionLayout;
  if (spotlightSuggestionLayout | *(v4 + 6))
  {
    v13 = [(ATXPBSpotlightSuggestionLayout *)spotlightSuggestionLayout isEqual:?];
  }

  else
  {
    v13 = 1;
  }

LABEL_22:

  return v13;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_uuidString hash];
  v4 = [(NSString *)self->_consumerSubTypeString hash];
  v5 = [(NSMutableArray *)self->_clientModelIds hash];
  v6 = [(NSMutableArray *)self->_clientModelCacheUpdateUUIDStrings hash];
  v7 = [(ATXPBHomeScreenCachedSuggestion *)self->_homeScreenCachedSuggestion hash];
  v8 = [(ATXPBSuggestionLayout *)self->_suggestionLayout hash];
  if (*&self->_has)
  {
    cacheCreationDate = self->_cacheCreationDate;
    if (cacheCreationDate < 0.0)
    {
      cacheCreationDate = -cacheCreationDate;
    }

    *v9.i64 = floor(cacheCreationDate + 0.5);
    v13 = (cacheCreationDate - *v9.i64) * 1.84467441e19;
    *v10.i64 = *v9.i64 - trunc(*v9.i64 * 5.42101086e-20) * 1.84467441e19;
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    v11 = 2654435761u * *vbslq_s8(vnegq_f64(v14), v10, v9).i64;
    if (v13 >= 0.0)
    {
      if (v13 > 0.0)
      {
        v11 += v13;
      }
    }

    else
    {
      v11 -= fabs(v13);
    }
  }

  else
  {
    v11 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v11 ^ [(ATXPBSpotlightSuggestionLayout *)self->_spotlightSuggestionLayout hash];
}

- (BOOL)hasUuidString
{
  if (result)
  {
    return *(result + 64) != 0;
  }

  return result;
}

- (BOOL)hasConsumerSubTypeString
{
  if (result)
  {
    return *(result + 32) != 0;
  }

  return result;
}

- (uint64_t)clearClientModelIds
{
  if (result)
  {
    return OUTLINED_FUNCTION_1_3(result, 24);
  }

  return result;
}

- (uint64_t)addClientModelIds:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 24);
    v9 = v4;
    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = *(a1 + 24);
      *(a1 + 24) = v6;

      v5 = *(a1 + 24);
    }

    v3 = [v5 addObject:v9];
    v4 = v9;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (uint64_t)clientModelIdsCount
{
  if (result)
  {
    return OUTLINED_FUNCTION_2_0(result, 24);
  }

  return result;
}

- (id)clientModelIdsAtIndex:(id *)a1
{
  if (a1)
  {
    a1 = [a1[3] objectAtIndex:a2];
    v2 = vars8;
  }

  return a1;
}

- (uint64_t)clearClientModelCacheUpdateUUIDStrings
{
  if (result)
  {
    return OUTLINED_FUNCTION_1_3(result, 16);
  }

  return result;
}

- (uint64_t)addClientModelCacheUpdateUUIDStrings:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 16);
    v9 = v4;
    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = *(a1 + 16);
      *(a1 + 16) = v6;

      v5 = *(a1 + 16);
    }

    v3 = [v5 addObject:v9];
    v4 = v9;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (uint64_t)clientModelCacheUpdateUUIDStringsCount
{
  if (result)
  {
    return OUTLINED_FUNCTION_2_0(result, 16);
  }

  return result;
}

- (id)clientModelCacheUpdateUUIDStringsAtIndex:(id *)a1
{
  if (a1)
  {
    a1 = [a1[2] objectAtIndex:a2];
    v2 = vars8;
  }

  return a1;
}

- (BOOL)hasHomeScreenCachedSuggestion
{
  if (result)
  {
    return *(result + 40) != 0;
  }

  return result;
}

- (BOOL)hasSuggestionLayout
{
  if (result)
  {
    return *(result + 56) != 0;
  }

  return result;
}

- (uint64_t)setCacheCreationDate:(uint64_t)result
{
  if (result)
  {
    *(result + 72) |= 1u;
    *(result + 8) = a2;
  }

  return result;
}

- (uint64_t)setHasCacheCreationDate:(uint64_t)result
{
  if (result)
  {
    *(result + 72) = *(result + 72) & 0xFE | a2;
  }

  return result;
}

- (uint64_t)hasCacheCreationDate
{
  if (result)
  {
    return *(result + 72) & 1;
  }

  return result;
}

- (BOOL)hasSpotlightSuggestionLayout
{
  if (result)
  {
    return *(result + 48) != 0;
  }

  return result;
}

- (void)copyTo:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 64);
    v17 = v3;
    if (v4)
    {
      [(ATXPBBlendingModelUICacheUpdate *)v3 setUuidString:v4];
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      [(ATXPBBlendingModelUICacheUpdate *)v17 setConsumerSubTypeString:v5];
    }

    if ([*(a1 + 24) count])
    {
      if (v17)
      {
        [v17[3] removeAllObjects];
      }

      v6 = [*(a1 + 24) count];
      if (v6)
      {
        v7 = v6;
        for (i = 0; i != v7; ++i)
        {
          v9 = [*(a1 + 24) objectAtIndex:i];
          [(ATXPBBlendingModelUICacheUpdate *)v17 addClientModelIds:v9];
        }
      }
    }

    if ([*(a1 + 16) count])
    {
      if (v17)
      {
        [v17[2] removeAllObjects];
      }

      v10 = [*(a1 + 16) count];
      if (v10)
      {
        v11 = v10;
        for (j = 0; j != v11; ++j)
        {
          v13 = [*(a1 + 16) objectAtIndex:j];
          [(ATXPBBlendingModelUICacheUpdate *)v17 addClientModelCacheUpdateUUIDStrings:v13];
        }
      }
    }

    v14 = *(a1 + 40);
    if (v14)
    {
      [(ATXPBBlendingModelUICacheUpdate *)v17 setHomeScreenCachedSuggestion:v14];
    }

    v15 = *(a1 + 56);
    v3 = v17;
    if (v15)
    {
      [(ATXPBBlendingModelUICacheUpdate *)v17 setSuggestionLayout:v15];
      v3 = v17;
    }

    if (*(a1 + 72))
    {
      v3[1] = *(a1 + 8);
      *(v3 + 72) |= 1u;
    }

    v16 = *(a1 + 48);
    if (v16)
    {
      [(ATXPBBlendingModelUICacheUpdate *)v17 setSpotlightSuggestionLayout:v16];
      v3 = v17;
    }
  }
}

- (void)setUuidString:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_3(a1, a2, 64);
  }
}

- (void)setConsumerSubTypeString:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_3(a1, a2, 32);
  }
}

- (void)setHomeScreenCachedSuggestion:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_3(a1, a2, 40);
  }
}

- (void)setSuggestionLayout:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_3(a1, a2, 56);
  }
}

- (void)setSpotlightSuggestionLayout:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_3(a1, a2, 48);
  }
}

- (void)mergeFrom:(uint64_t)a1
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = v3[8];
    if (v5)
    {
      objc_storeStrong((a1 + 64), v5);
    }

    v6 = *(v4 + 4);
    if (v6)
    {
      objc_storeStrong((a1 + 32), v6);
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v7 = *(v4 + 3);
    v8 = [v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v29;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v29 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [(ATXPBBlendingModelUICacheUpdate *)a1 addClientModelIds:?];
        }

        v9 = [v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v9);
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v12 = *(v4 + 2);
    v13 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v25;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v25 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [(ATXPBBlendingModelUICacheUpdate *)a1 addClientModelCacheUpdateUUIDStrings:?];
        }

        v14 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v14);
    }

    v17 = *(a1 + 40);
    v18 = *(v4 + 5);
    if (v17)
    {
      if (v18)
      {
        [(ATXPBHomeScreenCachedSuggestion *)v17 mergeFrom:v18];
      }
    }

    else if (v18)
    {
      objc_storeStrong((a1 + 40), v18);
    }

    v19 = *(a1 + 56);
    v20 = *(v4 + 7);
    if (v19)
    {
      if (v20)
      {
        [(ATXPBSuggestionLayout *)v19 mergeFrom:v20];
      }
    }

    else if (v20)
    {
      objc_storeStrong((a1 + 56), v20);
    }

    if (*(v4 + 72))
    {
      *(a1 + 8) = *(v4 + 1);
      *(a1 + 72) |= 1u;
    }

    v21 = *(a1 + 48);
    v22 = *(v4 + 6);
    if (v21)
    {
      if (v22)
      {
        [v21 mergeFrom:v24];
      }
    }

    else if (v22)
    {
      objc_storeStrong((a1 + 48), *(v4 + 6));
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (uint64_t)uuidString
{
  if (result)
  {
    return *(result + 64);
  }

  return result;
}

- (uint64_t)consumerSubTypeString
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

- (uint64_t)clientModelIds
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

- (void)setClientModelIds:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_3(a1, a2, 24);
  }
}

- (uint64_t)clientModelCacheUpdateUUIDStrings
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (void)setClientModelCacheUpdateUUIDStrings:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_3(a1, a2, 16);
  }
}

- (uint64_t)homeScreenCachedSuggestion
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

- (uint64_t)suggestionLayout
{
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

- (double)cacheCreationDate
{
  if (a1)
  {
    return *(a1 + 8);
  }

  else
  {
    return 0.0;
  }
}

- (uint64_t)spotlightSuggestionLayout
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

@end