@interface FLOWSchemaFLOWMediaPlayerPlaybackContextTier1
- (BOOL)isEqual:(id)a3;
- (FLOWSchemaFLOWMediaPlayerPlaybackContextTier1)initWithDictionary:(id)a3;
- (FLOWSchemaFLOWMediaPlayerPlaybackContextTier1)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addSearchResults:(id)a3;
- (void)setHasIsNlsContainerResult:(BOOL)a3;
- (void)setHasIsNlsResult:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation FLOWSchemaFLOWMediaPlayerPlaybackContextTier1

- (FLOWSchemaFLOWMediaPlayerPlaybackContextTier1)initWithDictionary:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v37.receiver = self;
  v37.super_class = FLOWSchemaFLOWMediaPlayerPlaybackContextTier1;
  v5 = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)&v37 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)v5 setLinkId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"contentTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)v5 setContentTitle:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"adamId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 setAdamId:](v5, "setAdamId:", [v10 unsignedIntValue]);
    }

    v32 = v10;
    v11 = [v4 objectForKeyedSubscript:@"adamIdString"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 copy];
      [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)v5 setAdamIdString:v12];
    }

    v13 = [v4 objectForKeyedSubscript:@"searchResults"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = v11;
      v30 = v8;
      v31 = v6;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v14 = v13;
      v15 = [v14 countByEnumeratingWithState:&v33 objects:v38 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v34;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v34 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v33 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v20 = [[FLOWSchemaFLOWMediaPlayerMediaItem alloc] initWithDictionary:v19];
              [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)v5 addSearchResults:v20];
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v33 objects:v38 count:16];
        }

        while (v16);
      }

      v8 = v30;
      v11 = v29;
    }

    v21 = [v4 objectForKeyedSubscript:{@"u2UsoGraph", v29, v30, v31}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [[USOSchemaUSOGraph alloc] initWithDictionary:v21];
      [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)v5 setU2UsoGraph:v22];
    }

    v23 = [v4 objectForKeyedSubscript:@"u2UsoGraphTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [[USOSchemaUSOGraphTier1 alloc] initWithDictionary:v23];
      [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)v5 setU2UsoGraphTier1:v24];
    }

    v25 = [v4 objectForKeyedSubscript:@"isNlsResult"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 setIsNlsResult:](v5, "setIsNlsResult:", [v25 BOOLValue]);
    }

    v26 = [v4 objectForKeyedSubscript:@"isNlsContainerResult"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 setIsNlsContainerResult:](v5, "setIsNlsContainerResult:", [v26 BOOLValue]);
    }

    v27 = v5;
  }

  return v5;
}

- (FLOWSchemaFLOWMediaPlayerPlaybackContextTier1)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*(&self->_isNlsContainerResult + 1))
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 adamId](self, "adamId")}];
    [v3 setObject:v4 forKeyedSubscript:@"adamId"];
  }

  if (self->_adamIdString)
  {
    v5 = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self adamIdString];
    v6 = [v5 copy];
    [v3 setObject:v6 forKeyedSubscript:@"adamIdString"];
  }

  if (self->_contentTitle)
  {
    v7 = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self contentTitle];
    v8 = [v7 copy];
    [v3 setObject:v8 forKeyedSubscript:@"contentTitle"];
  }

  v9 = *(&self->_isNlsContainerResult + 1);
  if ((v9 & 4) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 isNlsContainerResult](self, "isNlsContainerResult")}];
    [v3 setObject:v10 forKeyedSubscript:@"isNlsContainerResult"];

    v9 = *(&self->_isNlsContainerResult + 1);
  }

  if ((v9 & 2) != 0)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 isNlsResult](self, "isNlsResult")}];
    [v3 setObject:v11 forKeyedSubscript:@"isNlsResult"];
  }

  if (self->_linkId)
  {
    v12 = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self linkId];
    v13 = [v12 dictionaryRepresentation];
    if (v13)
    {
      [v3 setObject:v13 forKeyedSubscript:@"linkId"];
    }

    else
    {
      v14 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v14 forKeyedSubscript:@"linkId"];
    }
  }

  if ([(NSArray *)self->_searchResults count])
  {
    v15 = [MEMORY[0x1E695DF70] array];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v16 = self->_searchResults;
    v17 = [(NSArray *)v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v31;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v31 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v30 + 1) + 8 * i) dictionaryRepresentation];
          if (v21)
          {
            [v15 addObject:v21];
          }

          else
          {
            v22 = [MEMORY[0x1E695DFB0] null];
            [v15 addObject:v22];
          }
        }

        v18 = [(NSArray *)v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v18);
    }

    [v3 setObject:v15 forKeyedSubscript:@"searchResults"];
  }

  if (self->_u2UsoGraph)
  {
    v23 = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self u2UsoGraph];
    v24 = [v23 dictionaryRepresentation];
    if (v24)
    {
      [v3 setObject:v24 forKeyedSubscript:@"u2UsoGraph"];
    }

    else
    {
      v25 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v25 forKeyedSubscript:@"u2UsoGraph"];
    }
  }

  if (self->_u2UsoGraphTier1)
  {
    v26 = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self u2UsoGraphTier1];
    v27 = [v26 dictionaryRepresentation];
    if (v27)
    {
      [v3 setObject:v27 forKeyedSubscript:@"u2UsoGraphTier1"];
    }

    else
    {
      v28 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v28 forKeyedSubscript:@"u2UsoGraphTier1"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v30];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_linkId hash];
  v4 = [(NSString *)self->_contentTitle hash];
  if (*(&self->_isNlsContainerResult + 1))
  {
    v5 = 2654435761 * self->_adamId;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(NSString *)self->_adamIdString hash];
  v7 = [(NSArray *)self->_searchResults hash];
  v8 = [(USOSchemaUSOGraph *)self->_u2UsoGraph hash];
  v9 = [(USOSchemaUSOGraphTier1 *)self->_u2UsoGraphTier1 hash];
  if ((*(&self->_isNlsContainerResult + 1) & 2) != 0)
  {
    v10 = 2654435761 * self->_isNlsResult;
    if ((*(&self->_isNlsContainerResult + 1) & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    v11 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
  }

  v10 = 0;
  if ((*(&self->_isNlsContainerResult + 1) & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v11 = 2654435761 * self->_isNlsContainerResult;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_35;
  }

  v5 = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self linkId];
  v6 = [v4 linkId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_34;
  }

  v7 = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self linkId];
  if (v7)
  {
    v8 = v7;
    v9 = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self linkId];
    v10 = [v4 linkId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  v5 = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self contentTitle];
  v6 = [v4 contentTitle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_34;
  }

  v12 = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self contentTitle];
  if (v12)
  {
    v13 = v12;
    v14 = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self contentTitle];
    v15 = [v4 contentTitle];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  if (*(&self->_isNlsContainerResult + 1) != (v4[66] & 1))
  {
    goto LABEL_35;
  }

  if (*(&self->_isNlsContainerResult + 1))
  {
    adamId = self->_adamId;
    if (adamId != [v4 adamId])
    {
      goto LABEL_35;
    }
  }

  v5 = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self adamIdString];
  v6 = [v4 adamIdString];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_34;
  }

  v18 = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self adamIdString];
  if (v18)
  {
    v19 = v18;
    v20 = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self adamIdString];
    v21 = [v4 adamIdString];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  v5 = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self searchResults];
  v6 = [v4 searchResults];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_34;
  }

  v23 = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self searchResults];
  if (v23)
  {
    v24 = v23;
    v25 = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self searchResults];
    v26 = [v4 searchResults];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  v5 = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self u2UsoGraph];
  v6 = [v4 u2UsoGraph];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_34;
  }

  v28 = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self u2UsoGraph];
  if (v28)
  {
    v29 = v28;
    v30 = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self u2UsoGraph];
    v31 = [v4 u2UsoGraph];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  v5 = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self u2UsoGraphTier1];
  v6 = [v4 u2UsoGraphTier1];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_34:

    goto LABEL_35;
  }

  v33 = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self u2UsoGraphTier1];
  if (v33)
  {
    v34 = v33;
    v35 = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self u2UsoGraphTier1];
    v36 = [v4 u2UsoGraphTier1];
    v37 = [v35 isEqual:v36];

    if (!v37)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  v40 = *(&self->_isNlsContainerResult + 1);
  v41 = (v40 >> 1) & 1;
  v42 = v4[66];
  if (v41 == ((v42 >> 1) & 1))
  {
    if (v41)
    {
      isNlsResult = self->_isNlsResult;
      if (isNlsResult != [v4 isNlsResult])
      {
        goto LABEL_35;
      }

      v40 = *(&self->_isNlsContainerResult + 1);
      v42 = v4[66];
    }

    v44 = (v40 >> 2) & 1;
    if (v44 == ((v42 >> 2) & 1))
    {
      if (!v44 || (isNlsContainerResult = self->_isNlsContainerResult, isNlsContainerResult == [v4 isNlsContainerResult]))
      {
        v38 = 1;
        goto LABEL_36;
      }
    }
  }

LABEL_35:
  v38 = 0;
LABEL_36:

  return v38;
}

- (void)writeTo:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self linkId];

  if (v5)
  {
    v6 = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self linkId];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self contentTitle];

  if (v7)
  {
    PBDataWriterWriteStringField();
  }

  if (*(&self->_isNlsContainerResult + 1))
  {
    PBDataWriterWriteUint32Field();
  }

  v8 = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self adamIdString];

  if (v8)
  {
    PBDataWriterWriteStringField();
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = self->_searchResults;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        PBDataWriterWriteSubmessage();
      }

      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  v14 = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self u2UsoGraph];

  if (v14)
  {
    v15 = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self u2UsoGraph];
    PBDataWriterWriteSubmessage();
  }

  v16 = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self u2UsoGraphTier1];

  if (v16)
  {
    v17 = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self u2UsoGraphTier1];
    PBDataWriterWriteSubmessage();
  }

  v18 = *(&self->_isNlsContainerResult + 1);
  if ((v18 & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    v18 = *(&self->_isNlsContainerResult + 1);
  }

  if ((v18 & 4) != 0)
  {
    PBDataWriterWriteBOOLField();
  }
}

- (void)setHasIsNlsContainerResult:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isNlsContainerResult + 1) = *(&self->_isNlsContainerResult + 1) & 0xFB | v3;
}

- (void)setHasIsNlsResult:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isNlsContainerResult + 1) = *(&self->_isNlsContainerResult + 1) & 0xFD | v3;
}

- (void)addSearchResults:(id)a3
{
  v4 = a3;
  searchResults = self->_searchResults;
  v8 = v4;
  if (!searchResults)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_searchResults;
    self->_searchResults = v6;

    v4 = v8;
    searchResults = self->_searchResults;
  }

  [(NSArray *)searchResults addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = FLOWSchemaFLOWMediaPlayerPlaybackContextTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v18 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:2])
  {
    [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self deleteContentTitle];
    [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self deleteAdamId];
    [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self deleteAdamIdString];
    [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self deleteSearchResults];
    [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self deleteU2UsoGraph];
    [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self deleteU2UsoGraphTier1];
  }

  if ([v4 isConditionSet:4])
  {
    [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self deleteContentTitle];
    [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self deleteAdamId];
    [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self deleteAdamIdString];
    [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self deleteSearchResults];
    [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self deleteU2UsoGraph];
    [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self deleteU2UsoGraphTier1];
  }

  if ([v4 isConditionSet:5])
  {
    [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self deleteContentTitle];
    [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self deleteAdamId];
    [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self deleteAdamIdString];
    [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self deleteSearchResults];
    [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self deleteU2UsoGraph];
    [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self deleteU2UsoGraphTier1];
  }

  if ([v4 isConditionSet:6])
  {
    [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self deleteContentTitle];
    [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self deleteAdamId];
    [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self deleteAdamIdString];
    [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self deleteSearchResults];
    [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self deleteU2UsoGraph];
    [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self deleteU2UsoGraphTier1];
  }

  if ([v4 isConditionSet:7])
  {
    [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self deleteContentTitle];
    [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self deleteAdamId];
    [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self deleteAdamIdString];
    [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self deleteSearchResults];
    [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self deleteU2UsoGraph];
    [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self deleteU2UsoGraphTier1];
  }

  v6 = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self linkId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self deleteLinkId];
  }

  v9 = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self searchResults];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v9 underConditions:v4];
  [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self setSearchResults:v10];

  v11 = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self u2UsoGraph];
  v12 = [v11 applySensitiveConditionsPolicy:v4];
  v13 = [v12 suppressMessage];

  if (v13)
  {
    [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self deleteU2UsoGraph];
  }

  v14 = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self u2UsoGraphTier1];
  v15 = [v14 applySensitiveConditionsPolicy:v4];
  v16 = [v15 suppressMessage];

  if (v16)
  {
    [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self deleteU2UsoGraphTier1];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end