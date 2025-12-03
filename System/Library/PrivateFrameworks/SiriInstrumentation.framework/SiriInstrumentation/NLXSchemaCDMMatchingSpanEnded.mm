@interface NLXSchemaCDMMatchingSpanEnded
- (BOOL)isEqual:(id)equal;
- (NLXSchemaCDMMatchingSpanEnded)initWithDictionary:(id)dictionary;
- (NLXSchemaCDMMatchingSpanEnded)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addMatchingSpans:(id)spans;
- (void)writeTo:(id)to;
@end

@implementation NLXSchemaCDMMatchingSpanEnded

- (NLXSchemaCDMMatchingSpanEnded)initWithDictionary:(id)dictionary
{
  v27 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v25.receiver = self;
  v25.super_class = NLXSchemaCDMMatchingSpanEnded;
  v5 = [(NLXSchemaCDMMatchingSpanEnded *)&v25 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"contextId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(NLXSchemaCDMMatchingSpanEnded *)v5 setContextId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"matchingSpans"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v6;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v22;
        do
        {
          v13 = 0;
          do
          {
            if (*v22 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v21 + 1) + 8 * v13);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [[NLXSchemaCDMMatchingSpan alloc] initWithDictionary:v14];
              [(NLXSchemaCDMMatchingSpanEnded *)v5 addMatchingSpans:v15];
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
        }

        while (v11);
      }

      v6 = v20;
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[SISchemaUUID alloc] initWithDictionary:v16];
      [(NLXSchemaCDMMatchingSpanEnded *)v5 setLinkId:v17];
    }

    v18 = v5;
  }

  return v5;
}

- (NLXSchemaCDMMatchingSpanEnded)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NLXSchemaCDMMatchingSpanEnded *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NLXSchemaCDMMatchingSpanEnded *)self dictionaryRepresentation];
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
  v24 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_contextId)
  {
    contextId = [(NLXSchemaCDMMatchingSpanEnded *)self contextId];
    dictionaryRepresentation = [contextId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"contextId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"contextId"];
    }
  }

  if (self->_linkId)
  {
    linkId = [(NLXSchemaCDMMatchingSpanEnded *)self linkId];
    dictionaryRepresentation2 = [linkId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"linkId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"linkId"];
    }
  }

  if ([(NSArray *)self->_matchingSpans count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = self->_matchingSpans;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          dictionaryRepresentation3 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation3)
          {
            [array addObject:dictionaryRepresentation3];
          }

          else
          {
            null3 = [MEMORY[0x1E695DFB0] null];
            [array addObject:null3];
          }
        }

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }

    [dictionary setObject:array forKeyedSubscript:@"matchingSpans"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v19];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_contextId hash];
  v4 = [(NSArray *)self->_matchingSpans hash]^ v3;
  return v4 ^ [(SISchemaUUID *)self->_linkId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  contextId = [(NLXSchemaCDMMatchingSpanEnded *)self contextId];
  contextId2 = [equalCopy contextId];
  if ((contextId != 0) == (contextId2 == 0))
  {
    goto LABEL_16;
  }

  contextId3 = [(NLXSchemaCDMMatchingSpanEnded *)self contextId];
  if (contextId3)
  {
    v8 = contextId3;
    contextId4 = [(NLXSchemaCDMMatchingSpanEnded *)self contextId];
    contextId5 = [equalCopy contextId];
    v11 = [contextId4 isEqual:contextId5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  contextId = [(NLXSchemaCDMMatchingSpanEnded *)self matchingSpans];
  contextId2 = [equalCopy matchingSpans];
  if ((contextId != 0) == (contextId2 == 0))
  {
    goto LABEL_16;
  }

  matchingSpans = [(NLXSchemaCDMMatchingSpanEnded *)self matchingSpans];
  if (matchingSpans)
  {
    v13 = matchingSpans;
    matchingSpans2 = [(NLXSchemaCDMMatchingSpanEnded *)self matchingSpans];
    matchingSpans3 = [equalCopy matchingSpans];
    v16 = [matchingSpans2 isEqual:matchingSpans3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  contextId = [(NLXSchemaCDMMatchingSpanEnded *)self linkId];
  contextId2 = [equalCopy linkId];
  if ((contextId != 0) != (contextId2 == 0))
  {
    linkId = [(NLXSchemaCDMMatchingSpanEnded *)self linkId];
    if (!linkId)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = linkId;
    linkId2 = [(NLXSchemaCDMMatchingSpanEnded *)self linkId];
    linkId3 = [equalCopy linkId];
    v21 = [linkId2 isEqual:linkId3];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)to
{
  v19 = *MEMORY[0x1E69E9840];
  toCopy = to;
  contextId = [(NLXSchemaCDMMatchingSpanEnded *)self contextId];

  if (contextId)
  {
    contextId2 = [(NLXSchemaCDMMatchingSpanEnded *)self contextId];
    PBDataWriterWriteSubmessage();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_matchingSpans;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  linkId = [(NLXSchemaCDMMatchingSpanEnded *)self linkId];

  if (linkId)
  {
    linkId2 = [(NLXSchemaCDMMatchingSpanEnded *)self linkId];
    PBDataWriterWriteSubmessage();
  }
}

- (void)addMatchingSpans:(id)spans
{
  spansCopy = spans;
  matchingSpans = self->_matchingSpans;
  v8 = spansCopy;
  if (!matchingSpans)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_matchingSpans;
    self->_matchingSpans = array;

    spansCopy = v8;
    matchingSpans = self->_matchingSpans;
  }

  [(NSArray *)matchingSpans addObject:spansCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v15.receiver = self;
  v15.super_class = NLXSchemaCDMMatchingSpanEnded;
  v5 = [(SISchemaInstrumentationMessage *)&v15 applySensitiveConditionsPolicy:policyCopy];
  contextId = [(NLXSchemaCDMMatchingSpanEnded *)self contextId];
  v7 = [contextId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(NLXSchemaCDMMatchingSpanEnded *)self deleteContextId];
  }

  matchingSpans = [(NLXSchemaCDMMatchingSpanEnded *)self matchingSpans];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:matchingSpans underConditions:policyCopy];
  [(NLXSchemaCDMMatchingSpanEnded *)self setMatchingSpans:v10];

  linkId = [(NLXSchemaCDMMatchingSpanEnded *)self linkId];
  v12 = [linkId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v12 suppressMessage];

  if (suppressMessage2)
  {
    [(NLXSchemaCDMMatchingSpanEnded *)self deleteLinkId];
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