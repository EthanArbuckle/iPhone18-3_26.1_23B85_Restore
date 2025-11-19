@interface ATXPBClientModelCacheUpdate
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addSuggestions:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ATXPBClientModelCacheUpdate

- (void)addSuggestions:(id)a3
{
  v4 = a3;
  suggestions = self->_suggestions;
  v8 = v4;
  if (!suggestions)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_suggestions;
    self->_suggestions = v6;

    v4 = v8;
    suggestions = self->_suggestions;
  }

  [(NSMutableArray *)suggestions addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBClientModelCacheUpdate;
  v4 = [(ATXPBClientModelCacheUpdate *)&v8 description];
  v5 = [(ATXPBClientModelCacheUpdate *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  uuidString = self->_uuidString;
  if (uuidString)
  {
    [v3 setObject:uuidString forKey:@"uuidString"];
  }

  if ([(NSMutableArray *)self->_suggestions count])
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_suggestions, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = self->_suggestions;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v20 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:v12];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v9);
    }

    [v4 setObject:v6 forKey:@"suggestions"];
  }

  feedbackMetadata = self->_feedbackMetadata;
  if (feedbackMetadata)
  {
    [v4 setObject:feedbackMetadata forKey:@"feedbackMetadata"];
  }

  clientModelId = self->_clientModelId;
  if (clientModelId)
  {
    [v4 setObject:clientModelId forKey:@"clientModelId"];
  }

  if (*&self->_has)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithDouble:self->_cacheCreationDate];
    [v4 setObject:v15 forKey:@"cacheCreationDate"];
  }

  responseForRequestForSuggestions = self->_responseForRequestForSuggestions;
  if (responseForRequestForSuggestions)
  {
    v17 = [(ATXPBResponseForRequestForSuggestions *)responseForRequestForSuggestions dictionaryRepresentation];
    [v4 setObject:v17 forKey:@"responseForRequestForSuggestions"];
  }

  v18 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_uuidString)
  {
    PBDataWriterWriteStringField();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_suggestions;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  if (self->_feedbackMetadata)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_clientModelId)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    cacheCreationDate = self->_cacheCreationDate;
    PBDataWriterWriteDoubleField();
  }

  if (self->_responseForRequestForSuggestions)
  {
    PBDataWriterWriteSubmessage();
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)a3
{
  v9 = a3;
  if (self->_uuidString)
  {
    [v9 setUuidString:?];
  }

  if ([(ATXPBClientModelCacheUpdate *)self suggestionsCount])
  {
    [v9 clearSuggestions];
    v4 = [(ATXPBClientModelCacheUpdate *)self suggestionsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(ATXPBClientModelCacheUpdate *)self suggestionsAtIndex:i];
        [v9 addSuggestions:v7];
      }
    }
  }

  if (self->_feedbackMetadata)
  {
    [v9 setFeedbackMetadata:?];
  }

  v8 = v9;
  if (self->_clientModelId)
  {
    [v9 setClientModelId:?];
    v8 = v9;
  }

  if (*&self->_has)
  {
    v8[1] = *&self->_cacheCreationDate;
    *(v8 + 56) |= 1u;
  }

  if (self->_responseForRequestForSuggestions)
  {
    [v9 setResponseForRequestForSuggestions:?];
    v8 = v9;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_uuidString copyWithZone:a3];
  v7 = *(v5 + 48);
  *(v5 + 48) = v6;

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = self->_suggestions;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      v12 = 0;
      do
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v22 + 1) + 8 * v12) copyWithZone:{a3, v22}];
        [v5 addSuggestions:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  v14 = [(NSData *)self->_feedbackMetadata copyWithZone:a3];
  v15 = *(v5 + 24);
  *(v5 + 24) = v14;

  v16 = [(NSString *)self->_clientModelId copyWithZone:a3];
  v17 = *(v5 + 16);
  *(v5 + 16) = v16;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_cacheCreationDate;
    *(v5 + 56) |= 1u;
  }

  v18 = [(ATXPBResponseForRequestForSuggestions *)self->_responseForRequestForSuggestions copyWithZone:a3, v22];
  v19 = *(v5 + 32);
  *(v5 + 32) = v18;

  v20 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  uuidString = self->_uuidString;
  if (uuidString | *(v4 + 6))
  {
    if (![(NSString *)uuidString isEqual:?])
    {
      goto LABEL_17;
    }
  }

  suggestions = self->_suggestions;
  if (suggestions | *(v4 + 5))
  {
    if (![(NSMutableArray *)suggestions isEqual:?])
    {
      goto LABEL_17;
    }
  }

  feedbackMetadata = self->_feedbackMetadata;
  if (feedbackMetadata | *(v4 + 3))
  {
    if (![(NSData *)feedbackMetadata isEqual:?])
    {
      goto LABEL_17;
    }
  }

  clientModelId = self->_clientModelId;
  if (clientModelId | *(v4 + 2))
  {
    if (![(NSString *)clientModelId isEqual:?])
    {
      goto LABEL_17;
    }
  }

  v9 = *(v4 + 56);
  if (*&self->_has)
  {
    if ((*(v4 + 56) & 1) == 0 || self->_cacheCreationDate != *(v4 + 1))
    {
      goto LABEL_17;
    }
  }

  else if (*(v4 + 56))
  {
LABEL_17:
    v11 = 0;
    goto LABEL_18;
  }

  responseForRequestForSuggestions = self->_responseForRequestForSuggestions;
  if (responseForRequestForSuggestions | *(v4 + 4))
  {
    v11 = [(ATXPBResponseForRequestForSuggestions *)responseForRequestForSuggestions isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_18:

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_uuidString hash];
  v4 = [(NSMutableArray *)self->_suggestions hash];
  v5 = [(NSData *)self->_feedbackMetadata hash];
  v6 = [(NSString *)self->_clientModelId hash];
  if (*&self->_has)
  {
    cacheCreationDate = self->_cacheCreationDate;
    if (cacheCreationDate < 0.0)
    {
      cacheCreationDate = -cacheCreationDate;
    }

    *v7.i64 = floor(cacheCreationDate + 0.5);
    v11 = (cacheCreationDate - *v7.i64) * 1.84467441e19;
    *v8.i64 = *v7.i64 - trunc(*v7.i64 * 5.42101086e-20) * 1.84467441e19;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    v9 = 2654435761u * *vbslq_s8(vnegq_f64(v12), v8, v7).i64;
    if (v11 >= 0.0)
    {
      if (v11 > 0.0)
      {
        v9 += v11;
      }
    }

    else
    {
      v9 -= fabs(v11);
    }
  }

  else
  {
    v9 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v9 ^ [(ATXPBResponseForRequestForSuggestions *)self->_responseForRequestForSuggestions hash];
}

- (void)mergeFrom:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*(v4 + 6))
  {
    [(ATXPBClientModelCacheUpdate *)self setUuidString:?];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = *(v4 + 5);
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(ATXPBClientModelCacheUpdate *)self addSuggestions:*(*(&v13 + 1) + 8 * i), v13];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  if (*(v4 + 3))
  {
    [(ATXPBClientModelCacheUpdate *)self setFeedbackMetadata:?];
  }

  if (*(v4 + 2))
  {
    [(ATXPBClientModelCacheUpdate *)self setClientModelId:?];
  }

  if (*(v4 + 56))
  {
    self->_cacheCreationDate = *(v4 + 1);
    *&self->_has |= 1u;
  }

  responseForRequestForSuggestions = self->_responseForRequestForSuggestions;
  v11 = *(v4 + 4);
  if (responseForRequestForSuggestions)
  {
    if (v11)
    {
      [(ATXPBResponseForRequestForSuggestions *)responseForRequestForSuggestions mergeFrom:?];
    }
  }

  else if (v11)
  {
    [(ATXPBClientModelCacheUpdate *)self setResponseForRequestForSuggestions:?];
  }

  v12 = *MEMORY[0x1E69E9840];
}

@end