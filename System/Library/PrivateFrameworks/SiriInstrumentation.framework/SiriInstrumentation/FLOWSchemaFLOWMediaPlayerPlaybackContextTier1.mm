@interface FLOWSchemaFLOWMediaPlayerPlaybackContextTier1
- (BOOL)isEqual:(id)equal;
- (FLOWSchemaFLOWMediaPlayerPlaybackContextTier1)initWithDictionary:(id)dictionary;
- (FLOWSchemaFLOWMediaPlayerPlaybackContextTier1)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addSearchResults:(id)results;
- (void)setHasIsNlsContainerResult:(BOOL)result;
- (void)setHasIsNlsResult:(BOOL)result;
- (void)writeTo:(id)to;
@end

@implementation FLOWSchemaFLOWMediaPlayerPlaybackContextTier1

- (FLOWSchemaFLOWMediaPlayerPlaybackContextTier1)initWithDictionary:(id)dictionary
{
  v39 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v37.receiver = self;
  v37.super_class = FLOWSchemaFLOWMediaPlayerPlaybackContextTier1;
  v5 = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)&v37 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)v5 setLinkId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"contentTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)v5 setContentTitle:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"adamId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 setAdamId:](v5, "setAdamId:", [v10 unsignedIntValue]);
    }

    v32 = v10;
    v11 = [dictionaryCopy objectForKeyedSubscript:@"adamIdString"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 copy];
      [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)v5 setAdamIdString:v12];
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"searchResults"];
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

    v21 = [dictionaryCopy objectForKeyedSubscript:{@"u2UsoGraph", v29, v30, v31}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [[USOSchemaUSOGraph alloc] initWithDictionary:v21];
      [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)v5 setU2UsoGraph:v22];
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"u2UsoGraphTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [[USOSchemaUSOGraphTier1 alloc] initWithDictionary:v23];
      [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)v5 setU2UsoGraphTier1:v24];
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"isNlsResult"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 setIsNlsResult:](v5, "setIsNlsResult:", [v25 BOOLValue]);
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"isNlsContainerResult"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 setIsNlsContainerResult:](v5, "setIsNlsContainerResult:", [v26 BOOLValue]);
    }

    v27 = v5;
  }

  return v5;
}

- (FLOWSchemaFLOWMediaPlayerPlaybackContextTier1)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*(&self->_isNlsContainerResult + 1))
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 adamId](self, "adamId")}];
    [dictionary setObject:v4 forKeyedSubscript:@"adamId"];
  }

  if (self->_adamIdString)
  {
    adamIdString = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self adamIdString];
    v6 = [adamIdString copy];
    [dictionary setObject:v6 forKeyedSubscript:@"adamIdString"];
  }

  if (self->_contentTitle)
  {
    contentTitle = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self contentTitle];
    v8 = [contentTitle copy];
    [dictionary setObject:v8 forKeyedSubscript:@"contentTitle"];
  }

  v9 = *(&self->_isNlsContainerResult + 1);
  if ((v9 & 4) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 isNlsContainerResult](self, "isNlsContainerResult")}];
    [dictionary setObject:v10 forKeyedSubscript:@"isNlsContainerResult"];

    v9 = *(&self->_isNlsContainerResult + 1);
  }

  if ((v9 & 2) != 0)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 isNlsResult](self, "isNlsResult")}];
    [dictionary setObject:v11 forKeyedSubscript:@"isNlsResult"];
  }

  if (self->_linkId)
  {
    linkId = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self linkId];
    dictionaryRepresentation = [linkId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"linkId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"linkId"];
    }
  }

  if ([(NSArray *)self->_searchResults count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation2 = [*(*(&v30 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation2)
          {
            [array addObject:dictionaryRepresentation2];
          }

          else
          {
            null2 = [MEMORY[0x1E695DFB0] null];
            [array addObject:null2];
          }
        }

        v18 = [(NSArray *)v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v18);
    }

    [dictionary setObject:array forKeyedSubscript:@"searchResults"];
  }

  if (self->_u2UsoGraph)
  {
    u2UsoGraph = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self u2UsoGraph];
    dictionaryRepresentation3 = [u2UsoGraph dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"u2UsoGraph"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"u2UsoGraph"];
    }
  }

  if (self->_u2UsoGraphTier1)
  {
    u2UsoGraphTier1 = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self u2UsoGraphTier1];
    dictionaryRepresentation4 = [u2UsoGraphTier1 dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"u2UsoGraphTier1"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"u2UsoGraphTier1"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v30];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_35;
  }

  linkId = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self linkId];
  linkId2 = [equalCopy linkId];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_34;
  }

  linkId3 = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self linkId];
  if (linkId3)
  {
    v8 = linkId3;
    linkId4 = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self linkId];
    linkId5 = [equalCopy linkId];
    v11 = [linkId4 isEqual:linkId5];

    if (!v11)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  linkId = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self contentTitle];
  linkId2 = [equalCopy contentTitle];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_34;
  }

  contentTitle = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self contentTitle];
  if (contentTitle)
  {
    v13 = contentTitle;
    contentTitle2 = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self contentTitle];
    contentTitle3 = [equalCopy contentTitle];
    v16 = [contentTitle2 isEqual:contentTitle3];

    if (!v16)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  if (*(&self->_isNlsContainerResult + 1) != (equalCopy[66] & 1))
  {
    goto LABEL_35;
  }

  if (*(&self->_isNlsContainerResult + 1))
  {
    adamId = self->_adamId;
    if (adamId != [equalCopy adamId])
    {
      goto LABEL_35;
    }
  }

  linkId = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self adamIdString];
  linkId2 = [equalCopy adamIdString];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_34;
  }

  adamIdString = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self adamIdString];
  if (adamIdString)
  {
    v19 = adamIdString;
    adamIdString2 = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self adamIdString];
    adamIdString3 = [equalCopy adamIdString];
    v22 = [adamIdString2 isEqual:adamIdString3];

    if (!v22)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  linkId = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self searchResults];
  linkId2 = [equalCopy searchResults];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_34;
  }

  searchResults = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self searchResults];
  if (searchResults)
  {
    v24 = searchResults;
    searchResults2 = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self searchResults];
    searchResults3 = [equalCopy searchResults];
    v27 = [searchResults2 isEqual:searchResults3];

    if (!v27)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  linkId = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self u2UsoGraph];
  linkId2 = [equalCopy u2UsoGraph];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_34;
  }

  u2UsoGraph = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self u2UsoGraph];
  if (u2UsoGraph)
  {
    v29 = u2UsoGraph;
    u2UsoGraph2 = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self u2UsoGraph];
    u2UsoGraph3 = [equalCopy u2UsoGraph];
    v32 = [u2UsoGraph2 isEqual:u2UsoGraph3];

    if (!v32)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  linkId = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self u2UsoGraphTier1];
  linkId2 = [equalCopy u2UsoGraphTier1];
  if ((linkId != 0) == (linkId2 == 0))
  {
LABEL_34:

    goto LABEL_35;
  }

  u2UsoGraphTier1 = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self u2UsoGraphTier1];
  if (u2UsoGraphTier1)
  {
    v34 = u2UsoGraphTier1;
    u2UsoGraphTier12 = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self u2UsoGraphTier1];
    u2UsoGraphTier13 = [equalCopy u2UsoGraphTier1];
    v37 = [u2UsoGraphTier12 isEqual:u2UsoGraphTier13];

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
  v42 = equalCopy[66];
  if (v41 == ((v42 >> 1) & 1))
  {
    if (v41)
    {
      isNlsResult = self->_isNlsResult;
      if (isNlsResult != [equalCopy isNlsResult])
      {
        goto LABEL_35;
      }

      v40 = *(&self->_isNlsContainerResult + 1);
      v42 = equalCopy[66];
    }

    v44 = (v40 >> 2) & 1;
    if (v44 == ((v42 >> 2) & 1))
    {
      if (!v44 || (isNlsContainerResult = self->_isNlsContainerResult, isNlsContainerResult == [equalCopy isNlsContainerResult]))
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

- (void)writeTo:(id)to
{
  v24 = *MEMORY[0x1E69E9840];
  toCopy = to;
  linkId = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self linkId];

  if (linkId)
  {
    linkId2 = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self linkId];
    PBDataWriterWriteSubmessage();
  }

  contentTitle = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self contentTitle];

  if (contentTitle)
  {
    PBDataWriterWriteStringField();
  }

  if (*(&self->_isNlsContainerResult + 1))
  {
    PBDataWriterWriteUint32Field();
  }

  adamIdString = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self adamIdString];

  if (adamIdString)
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

  u2UsoGraph = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self u2UsoGraph];

  if (u2UsoGraph)
  {
    u2UsoGraph2 = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self u2UsoGraph];
    PBDataWriterWriteSubmessage();
  }

  u2UsoGraphTier1 = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self u2UsoGraphTier1];

  if (u2UsoGraphTier1)
  {
    u2UsoGraphTier12 = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self u2UsoGraphTier1];
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

- (void)setHasIsNlsContainerResult:(BOOL)result
{
  if (result)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isNlsContainerResult + 1) = *(&self->_isNlsContainerResult + 1) & 0xFB | v3;
}

- (void)setHasIsNlsResult:(BOOL)result
{
  if (result)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isNlsContainerResult + 1) = *(&self->_isNlsContainerResult + 1) & 0xFD | v3;
}

- (void)addSearchResults:(id)results
{
  resultsCopy = results;
  searchResults = self->_searchResults;
  v8 = resultsCopy;
  if (!searchResults)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_searchResults;
    self->_searchResults = array;

    resultsCopy = v8;
    searchResults = self->_searchResults;
  }

  [(NSArray *)searchResults addObject:resultsCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v18.receiver = self;
  v18.super_class = FLOWSchemaFLOWMediaPlayerPlaybackContextTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v18 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self deleteContentTitle];
    [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self deleteAdamId];
    [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self deleteAdamIdString];
    [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self deleteSearchResults];
    [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self deleteU2UsoGraph];
    [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self deleteU2UsoGraphTier1];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self deleteContentTitle];
    [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self deleteAdamId];
    [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self deleteAdamIdString];
    [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self deleteSearchResults];
    [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self deleteU2UsoGraph];
    [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self deleteU2UsoGraphTier1];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self deleteContentTitle];
    [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self deleteAdamId];
    [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self deleteAdamIdString];
    [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self deleteSearchResults];
    [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self deleteU2UsoGraph];
    [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self deleteU2UsoGraphTier1];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self deleteContentTitle];
    [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self deleteAdamId];
    [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self deleteAdamIdString];
    [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self deleteSearchResults];
    [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self deleteU2UsoGraph];
    [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self deleteU2UsoGraphTier1];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self deleteContentTitle];
    [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self deleteAdamId];
    [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self deleteAdamIdString];
    [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self deleteSearchResults];
    [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self deleteU2UsoGraph];
    [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self deleteU2UsoGraphTier1];
  }

  linkId = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self linkId];
  v7 = [linkId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self deleteLinkId];
  }

  searchResults = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self searchResults];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:searchResults underConditions:policyCopy];
  [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self setSearchResults:v10];

  u2UsoGraph = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self u2UsoGraph];
  v12 = [u2UsoGraph applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v12 suppressMessage];

  if (suppressMessage2)
  {
    [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self deleteU2UsoGraph];
  }

  u2UsoGraphTier1 = [(FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 *)self u2UsoGraphTier1];
  v15 = [u2UsoGraphTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v15 suppressMessage];

  if (suppressMessage3)
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