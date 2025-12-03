@interface PEGASUSSchemaPEGASUSVideoExecutionTier1
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSVideoExecutionTier1)initWithDictionary:(id)dictionary;
- (PEGASUSSchemaPEGASUSVideoExecutionTier1)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addResultEntityIds:(id)ids;
- (void)writeTo:(id)to;
@end

@implementation PEGASUSSchemaPEGASUSVideoExecutionTier1

- (PEGASUSSchemaPEGASUSVideoExecutionTier1)initWithDictionary:(id)dictionary
{
  v25 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v23.receiver = self;
  v23.super_class = PEGASUSSchemaPEGASUSVideoExecutionTier1;
  v5 = [(PEGASUSSchemaPEGASUSVideoExecutionTier1 *)&v23 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"resultEntityIds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v20;
        do
        {
          v11 = 0;
          do
          {
            if (*v20 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v19 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [v12 copy];
              [(PEGASUSSchemaPEGASUSVideoExecutionTier1 *)v5 addResultEntityIds:v13];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
        }

        while (v9);
      }
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:{@"videoTitle", v19}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(PEGASUSSchemaPEGASUSVideoExecutionTier1 *)v5 setVideoTitle:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"isNlsResult"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSVideoExecutionTier1 setIsNlsResult:](v5, "setIsNlsResult:", [v16 BOOLValue]);
    }

    v17 = v5;
  }

  return v5;
}

- (PEGASUSSchemaPEGASUSVideoExecutionTier1)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSVideoExecutionTier1 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PEGASUSSchemaPEGASUSVideoExecutionTier1 *)self dictionaryRepresentation];
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*(&self->_isNlsResult + 1))
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[PEGASUSSchemaPEGASUSVideoExecutionTier1 isNlsResult](self, "isNlsResult")}];
    [dictionary setObject:v4 forKeyedSubscript:@"isNlsResult"];
  }

  if (self->_resultEntityIds)
  {
    resultEntityIds = [(PEGASUSSchemaPEGASUSVideoExecutionTier1 *)self resultEntityIds];
    v6 = [resultEntityIds copy];
    [dictionary setObject:v6 forKeyedSubscript:@"resultEntityIds"];
  }

  if (self->_videoTitle)
  {
    videoTitle = [(PEGASUSSchemaPEGASUSVideoExecutionTier1 *)self videoTitle];
    v8 = [videoTitle copy];
    [dictionary setObject:v8 forKeyedSubscript:@"videoTitle"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_resultEntityIds hash];
  v4 = [(NSString *)self->_videoTitle hash];
  if (*(&self->_isNlsResult + 1))
  {
    v5 = 2654435761 * self->_isNlsResult;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  resultEntityIds = [(PEGASUSSchemaPEGASUSVideoExecutionTier1 *)self resultEntityIds];
  resultEntityIds2 = [equalCopy resultEntityIds];
  if ((resultEntityIds != 0) == (resultEntityIds2 == 0))
  {
    goto LABEL_11;
  }

  resultEntityIds3 = [(PEGASUSSchemaPEGASUSVideoExecutionTier1 *)self resultEntityIds];
  if (resultEntityIds3)
  {
    v8 = resultEntityIds3;
    resultEntityIds4 = [(PEGASUSSchemaPEGASUSVideoExecutionTier1 *)self resultEntityIds];
    resultEntityIds5 = [equalCopy resultEntityIds];
    v11 = [resultEntityIds4 isEqual:resultEntityIds5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  resultEntityIds = [(PEGASUSSchemaPEGASUSVideoExecutionTier1 *)self videoTitle];
  resultEntityIds2 = [equalCopy videoTitle];
  if ((resultEntityIds != 0) == (resultEntityIds2 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  videoTitle = [(PEGASUSSchemaPEGASUSVideoExecutionTier1 *)self videoTitle];
  if (videoTitle)
  {
    v13 = videoTitle;
    videoTitle2 = [(PEGASUSSchemaPEGASUSVideoExecutionTier1 *)self videoTitle];
    videoTitle3 = [equalCopy videoTitle];
    v16 = [videoTitle2 isEqual:videoTitle3];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if (*(&self->_isNlsResult + 1) == (equalCopy[25] & 1))
  {
    if (!*(&self->_isNlsResult + 1) || (isNlsResult = self->_isNlsResult, isNlsResult == [equalCopy isNlsResult]))
    {
      v17 = 1;
      goto LABEL_13;
    }
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_resultEntityIds;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  videoTitle = [(PEGASUSSchemaPEGASUSVideoExecutionTier1 *)self videoTitle];

  if (videoTitle)
  {
    PBDataWriterWriteStringField();
  }

  if (*(&self->_isNlsResult + 1))
  {
    PBDataWriterWriteBOOLField();
  }
}

- (void)addResultEntityIds:(id)ids
{
  idsCopy = ids;
  resultEntityIds = self->_resultEntityIds;
  v8 = idsCopy;
  if (!resultEntityIds)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_resultEntityIds;
    self->_resultEntityIds = array;

    idsCopy = v8;
    resultEntityIds = self->_resultEntityIds;
  }

  [(NSArray *)resultEntityIds addObject:idsCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v7.receiver = self;
  v7.super_class = PEGASUSSchemaPEGASUSVideoExecutionTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v7 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(PEGASUSSchemaPEGASUSVideoExecutionTier1 *)self deleteResultEntityIds];
    [(PEGASUSSchemaPEGASUSVideoExecutionTier1 *)self deleteVideoTitle];
    [(PEGASUSSchemaPEGASUSVideoExecutionTier1 *)self deleteIsNlsResult];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(PEGASUSSchemaPEGASUSVideoExecutionTier1 *)self deleteResultEntityIds];
    [(PEGASUSSchemaPEGASUSVideoExecutionTier1 *)self deleteVideoTitle];
    [(PEGASUSSchemaPEGASUSVideoExecutionTier1 *)self deleteIsNlsResult];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(PEGASUSSchemaPEGASUSVideoExecutionTier1 *)self deleteResultEntityIds];
    [(PEGASUSSchemaPEGASUSVideoExecutionTier1 *)self deleteVideoTitle];
    [(PEGASUSSchemaPEGASUSVideoExecutionTier1 *)self deleteIsNlsResult];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(PEGASUSSchemaPEGASUSVideoExecutionTier1 *)self deleteResultEntityIds];
    [(PEGASUSSchemaPEGASUSVideoExecutionTier1 *)self deleteVideoTitle];
    [(PEGASUSSchemaPEGASUSVideoExecutionTier1 *)self deleteIsNlsResult];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(PEGASUSSchemaPEGASUSVideoExecutionTier1 *)self deleteResultEntityIds];
    [(PEGASUSSchemaPEGASUSVideoExecutionTier1 *)self deleteVideoTitle];
    [(PEGASUSSchemaPEGASUSVideoExecutionTier1 *)self deleteIsNlsResult];
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