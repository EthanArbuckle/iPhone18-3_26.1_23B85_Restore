@interface NLXSchemaMARRSQueryRewriteEvaluatedTier1
- (BOOL)isEqual:(id)equal;
- (NLXSchemaMARRSQueryRewriteEvaluatedTier1)initWithDictionary:(id)dictionary;
- (NLXSchemaMARRSQueryRewriteEvaluatedTier1)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)addRewrittenUserUtterances:(id)utterances;
- (void)writeTo:(id)to;
@end

@implementation NLXSchemaMARRSQueryRewriteEvaluatedTier1

- (NLXSchemaMARRSQueryRewriteEvaluatedTier1)initWithDictionary:(id)dictionary
{
  v24 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v22.receiver = self;
  v22.super_class = NLXSchemaMARRSQueryRewriteEvaluatedTier1;
  v5 = [(NLXSchemaMARRSQueryRewriteEvaluatedTier1 *)&v22 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(NLXSchemaMARRSQueryRewriteEvaluatedTier1 *)v5 setLinkId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"rewrittenUserUtterances"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v19;
        do
        {
          v13 = 0;
          do
          {
            if (*v19 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v18 + 1) + 8 * v13);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [v14 copy];
              [(NLXSchemaMARRSQueryRewriteEvaluatedTier1 *)v5 addRewrittenUserUtterances:v15];
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
        }

        while (v11);
      }
    }

    v16 = v5;
  }

  return v5;
}

- (NLXSchemaMARRSQueryRewriteEvaluatedTier1)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NLXSchemaMARRSQueryRewriteEvaluatedTier1 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NLXSchemaMARRSQueryRewriteEvaluatedTier1 *)self dictionaryRepresentation];
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
  if (self->_linkId)
  {
    linkId = [(NLXSchemaMARRSQueryRewriteEvaluatedTier1 *)self linkId];
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

  if (self->_rewrittenUserUtterances)
  {
    rewrittenUserUtterances = [(NLXSchemaMARRSQueryRewriteEvaluatedTier1 *)self rewrittenUserUtterances];
    v8 = [rewrittenUserUtterances copy];
    [dictionary setObject:v8 forKeyedSubscript:@"rewrittenUserUtterances"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  linkId = [(NLXSchemaMARRSQueryRewriteEvaluatedTier1 *)self linkId];
  linkId2 = [equalCopy linkId];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_11;
  }

  linkId3 = [(NLXSchemaMARRSQueryRewriteEvaluatedTier1 *)self linkId];
  if (linkId3)
  {
    v8 = linkId3;
    linkId4 = [(NLXSchemaMARRSQueryRewriteEvaluatedTier1 *)self linkId];
    linkId5 = [equalCopy linkId];
    v11 = [linkId4 isEqual:linkId5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  linkId = [(NLXSchemaMARRSQueryRewriteEvaluatedTier1 *)self rewrittenUserUtterances];
  linkId2 = [equalCopy rewrittenUserUtterances];
  if ((linkId != 0) != (linkId2 == 0))
  {
    rewrittenUserUtterances = [(NLXSchemaMARRSQueryRewriteEvaluatedTier1 *)self rewrittenUserUtterances];
    if (!rewrittenUserUtterances)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = rewrittenUserUtterances;
    rewrittenUserUtterances2 = [(NLXSchemaMARRSQueryRewriteEvaluatedTier1 *)self rewrittenUserUtterances];
    rewrittenUserUtterances3 = [equalCopy rewrittenUserUtterances];
    v16 = [rewrittenUserUtterances2 isEqual:rewrittenUserUtterances3];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  linkId = [(NLXSchemaMARRSQueryRewriteEvaluatedTier1 *)self linkId];

  if (linkId)
  {
    linkId2 = [(NLXSchemaMARRSQueryRewriteEvaluatedTier1 *)self linkId];
    PBDataWriterWriteSubmessage();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = self->_rewrittenUserUtterances;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        PBDataWriterWriteStringField();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)addRewrittenUserUtterances:(id)utterances
{
  utterancesCopy = utterances;
  rewrittenUserUtterances = self->_rewrittenUserUtterances;
  v8 = utterancesCopy;
  if (!rewrittenUserUtterances)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_rewrittenUserUtterances;
    self->_rewrittenUserUtterances = array;

    utterancesCopy = v8;
    rewrittenUserUtterances = self->_rewrittenUserUtterances;
  }

  [(NSArray *)rewrittenUserUtterances addObject:utterancesCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v10.receiver = self;
  v10.super_class = NLXSchemaMARRSQueryRewriteEvaluatedTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v10 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(NLXSchemaMARRSQueryRewriteEvaluatedTier1 *)self deleteRewrittenUserUtterances];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(NLXSchemaMARRSQueryRewriteEvaluatedTier1 *)self deleteRewrittenUserUtterances];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(NLXSchemaMARRSQueryRewriteEvaluatedTier1 *)self deleteRewrittenUserUtterances];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(NLXSchemaMARRSQueryRewriteEvaluatedTier1 *)self deleteRewrittenUserUtterances];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(NLXSchemaMARRSQueryRewriteEvaluatedTier1 *)self deleteRewrittenUserUtterances];
  }

  linkId = [(NLXSchemaMARRSQueryRewriteEvaluatedTier1 *)self linkId];
  v7 = [linkId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(NLXSchemaMARRSQueryRewriteEvaluatedTier1 *)self deleteLinkId];
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