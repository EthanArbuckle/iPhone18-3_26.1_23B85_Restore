@interface POMMESSchemaPOMMESPegasusRequestArguments
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (POMMESSchemaPOMMESPegasusRequestArguments)initWithDictionary:(id)dictionary;
- (POMMESSchemaPOMMESPegasusRequestArguments)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addQueries:(id)queries;
- (void)setHasConversationContextBytesLength:(BOOL)length;
- (void)writeTo:(id)to;
@end

@implementation POMMESSchemaPOMMESPegasusRequestArguments

- (POMMESSchemaPOMMESPegasusRequestArguments)initWithDictionary:(id)dictionary
{
  v35 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v33.receiver = self;
  v33.super_class = POMMESSchemaPOMMESPegasusRequestArguments;
  v5 = [(POMMESSchemaPOMMESPegasusRequestArguments *)&v33 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"queries"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v30;
        do
        {
          v11 = 0;
          do
          {
            if (*v30 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v29 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [[POMMESSchemaPOMMESPegasusSearchQuery alloc] initWithDictionary:v12];
              [(POMMESSchemaPOMMESPegasusRequestArguments *)v5 addQueries:v13];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
        }

        while (v9);
      }
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"queryMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[POMMESSchemaPOMMESPegasusQueryMetadata alloc] initWithDictionary:v14];
      [(POMMESSchemaPOMMESPegasusRequestArguments *)v5 setQueryMetadata:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"featureFlag"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(POMMESSchemaPOMMESPegasusRequestArguments *)v5 setFeatureFlag:v17];
    }

    v28 = v6;
    v18 = [dictionaryCopy objectForKeyedSubscript:@"siriPegasusMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[POMMESSchemaPOMMESSiriPegasusMetadata alloc] initWithDictionary:v18];
      [(POMMESSchemaPOMMESPegasusRequestArguments *)v5 setSiriPegasusMetadata:v19];
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"isDataOnlyRequest"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESPegasusRequestArguments setIsDataOnlyRequest:](v5, "setIsDataOnlyRequest:", [v20 BOOLValue]);
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"clientConversationMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [[POMMESSchemaPOMMESClientConversationMetadata alloc] initWithDictionary:v21];
      [(POMMESSchemaPOMMESPegasusRequestArguments *)v5 setClientConversationMetadata:v22];
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"conversationContextBytesLength"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESPegasusRequestArguments setConversationContextBytesLength:](v5, "setConversationContextBytesLength:", [v23 unsignedIntValue]);
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"personalDomainFallback"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [v24 copy];
      [(POMMESSchemaPOMMESPegasusRequestArguments *)v5 setPersonalDomainFallback:v25];
    }

    v26 = v5;
  }

  return v5;
}

- (POMMESSchemaPOMMESPegasusRequestArguments)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(POMMESSchemaPOMMESPegasusRequestArguments *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(POMMESSchemaPOMMESPegasusRequestArguments *)self dictionaryRepresentation];
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
  v33 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_clientConversationMetadata)
  {
    clientConversationMetadata = [(POMMESSchemaPOMMESPegasusRequestArguments *)self clientConversationMetadata];
    dictionaryRepresentation = [clientConversationMetadata dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"clientConversationMetadata"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"clientConversationMetadata"];
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[POMMESSchemaPOMMESPegasusRequestArguments conversationContextBytesLength](self, "conversationContextBytesLength")}];
    [dictionary setObject:v7 forKeyedSubscript:@"conversationContextBytesLength"];
  }

  if (self->_featureFlag)
  {
    featureFlag = [(POMMESSchemaPOMMESPegasusRequestArguments *)self featureFlag];
    v9 = [featureFlag copy];
    [dictionary setObject:v9 forKeyedSubscript:@"featureFlag"];
  }

  if (*&self->_has)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[POMMESSchemaPOMMESPegasusRequestArguments isDataOnlyRequest](self, "isDataOnlyRequest")}];
    [dictionary setObject:v10 forKeyedSubscript:@"isDataOnlyRequest"];
  }

  if (self->_personalDomainFallback)
  {
    personalDomainFallback = [(POMMESSchemaPOMMESPegasusRequestArguments *)self personalDomainFallback];
    v12 = [personalDomainFallback copy];
    [dictionary setObject:v12 forKeyedSubscript:@"personalDomainFallback"];
  }

  if ([(NSArray *)self->_queries count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v14 = self->_queries;
    v15 = [(NSArray *)v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v29;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v29 != v17)
          {
            objc_enumerationMutation(v14);
          }

          dictionaryRepresentation2 = [*(*(&v28 + 1) + 8 * i) dictionaryRepresentation];
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

        v16 = [(NSArray *)v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v16);
    }

    [dictionary setObject:array forKeyedSubscript:@"queries"];
  }

  if (self->_queryMetadata)
  {
    queryMetadata = [(POMMESSchemaPOMMESPegasusRequestArguments *)self queryMetadata];
    dictionaryRepresentation3 = [queryMetadata dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"queryMetadata"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"queryMetadata"];
    }
  }

  if (self->_siriPegasusMetadata)
  {
    siriPegasusMetadata = [(POMMESSchemaPOMMESPegasusRequestArguments *)self siriPegasusMetadata];
    dictionaryRepresentation4 = [siriPegasusMetadata dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"siriPegasusMetadata"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"siriPegasusMetadata"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v28];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_queries hash];
  v4 = [(POMMESSchemaPOMMESPegasusQueryMetadata *)self->_queryMetadata hash];
  v5 = [(NSString *)self->_featureFlag hash];
  v6 = [(POMMESSchemaPOMMESSiriPegasusMetadata *)self->_siriPegasusMetadata hash];
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_isDataOnlyRequest;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(POMMESSchemaPOMMESClientConversationMetadata *)self->_clientConversationMetadata hash];
  if ((*&self->_has & 2) != 0)
  {
    v9 = 2654435761 * self->_conversationContextBytesLength;
  }

  else
  {
    v9 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ [(NSString *)self->_personalDomainFallback hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_38;
  }

  queries = [(POMMESSchemaPOMMESPegasusRequestArguments *)self queries];
  queries2 = [equalCopy queries];
  if ((queries != 0) == (queries2 == 0))
  {
    goto LABEL_37;
  }

  queries3 = [(POMMESSchemaPOMMESPegasusRequestArguments *)self queries];
  if (queries3)
  {
    v8 = queries3;
    queries4 = [(POMMESSchemaPOMMESPegasusRequestArguments *)self queries];
    queries5 = [equalCopy queries];
    v11 = [queries4 isEqual:queries5];

    if (!v11)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  queries = [(POMMESSchemaPOMMESPegasusRequestArguments *)self queryMetadata];
  queries2 = [equalCopy queryMetadata];
  if ((queries != 0) == (queries2 == 0))
  {
    goto LABEL_37;
  }

  queryMetadata = [(POMMESSchemaPOMMESPegasusRequestArguments *)self queryMetadata];
  if (queryMetadata)
  {
    v13 = queryMetadata;
    queryMetadata2 = [(POMMESSchemaPOMMESPegasusRequestArguments *)self queryMetadata];
    queryMetadata3 = [equalCopy queryMetadata];
    v16 = [queryMetadata2 isEqual:queryMetadata3];

    if (!v16)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  queries = [(POMMESSchemaPOMMESPegasusRequestArguments *)self featureFlag];
  queries2 = [equalCopy featureFlag];
  if ((queries != 0) == (queries2 == 0))
  {
    goto LABEL_37;
  }

  featureFlag = [(POMMESSchemaPOMMESPegasusRequestArguments *)self featureFlag];
  if (featureFlag)
  {
    v18 = featureFlag;
    featureFlag2 = [(POMMESSchemaPOMMESPegasusRequestArguments *)self featureFlag];
    featureFlag3 = [equalCopy featureFlag];
    v21 = [featureFlag2 isEqual:featureFlag3];

    if (!v21)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  queries = [(POMMESSchemaPOMMESPegasusRequestArguments *)self siriPegasusMetadata];
  queries2 = [equalCopy siriPegasusMetadata];
  if ((queries != 0) == (queries2 == 0))
  {
    goto LABEL_37;
  }

  siriPegasusMetadata = [(POMMESSchemaPOMMESPegasusRequestArguments *)self siriPegasusMetadata];
  if (siriPegasusMetadata)
  {
    v23 = siriPegasusMetadata;
    siriPegasusMetadata2 = [(POMMESSchemaPOMMESPegasusRequestArguments *)self siriPegasusMetadata];
    siriPegasusMetadata3 = [equalCopy siriPegasusMetadata];
    v26 = [siriPegasusMetadata2 isEqual:siriPegasusMetadata3];

    if (!v26)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[72] & 1))
  {
    goto LABEL_38;
  }

  if (*&self->_has)
  {
    isDataOnlyRequest = self->_isDataOnlyRequest;
    if (isDataOnlyRequest != [equalCopy isDataOnlyRequest])
    {
      goto LABEL_38;
    }
  }

  queries = [(POMMESSchemaPOMMESPegasusRequestArguments *)self clientConversationMetadata];
  queries2 = [equalCopy clientConversationMetadata];
  if ((queries != 0) == (queries2 == 0))
  {
    goto LABEL_37;
  }

  clientConversationMetadata = [(POMMESSchemaPOMMESPegasusRequestArguments *)self clientConversationMetadata];
  if (clientConversationMetadata)
  {
    v29 = clientConversationMetadata;
    clientConversationMetadata2 = [(POMMESSchemaPOMMESPegasusRequestArguments *)self clientConversationMetadata];
    clientConversationMetadata3 = [equalCopy clientConversationMetadata];
    v32 = [clientConversationMetadata2 isEqual:clientConversationMetadata3];

    if (!v32)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  v33 = (*&self->_has >> 1) & 1;
  if (v33 != ((equalCopy[72] >> 1) & 1))
  {
    goto LABEL_38;
  }

  if (v33)
  {
    conversationContextBytesLength = self->_conversationContextBytesLength;
    if (conversationContextBytesLength != [equalCopy conversationContextBytesLength])
    {
      goto LABEL_38;
    }
  }

  queries = [(POMMESSchemaPOMMESPegasusRequestArguments *)self personalDomainFallback];
  queries2 = [equalCopy personalDomainFallback];
  if ((queries != 0) != (queries2 == 0))
  {
    personalDomainFallback = [(POMMESSchemaPOMMESPegasusRequestArguments *)self personalDomainFallback];
    if (!personalDomainFallback)
    {

LABEL_41:
      v40 = 1;
      goto LABEL_39;
    }

    v36 = personalDomainFallback;
    personalDomainFallback2 = [(POMMESSchemaPOMMESPegasusRequestArguments *)self personalDomainFallback];
    personalDomainFallback3 = [equalCopy personalDomainFallback];
    v39 = [personalDomainFallback2 isEqual:personalDomainFallback3];

    if (v39)
    {
      goto LABEL_41;
    }
  }

  else
  {
LABEL_37:
  }

LABEL_38:
  v40 = 0;
LABEL_39:

  return v40;
}

- (void)writeTo:(id)to
{
  v23 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = self->_queries;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  queryMetadata = [(POMMESSchemaPOMMESPegasusRequestArguments *)self queryMetadata];

  if (queryMetadata)
  {
    queryMetadata2 = [(POMMESSchemaPOMMESPegasusRequestArguments *)self queryMetadata];
    PBDataWriterWriteSubmessage();
  }

  featureFlag = [(POMMESSchemaPOMMESPegasusRequestArguments *)self featureFlag];

  if (featureFlag)
  {
    PBDataWriterWriteStringField();
  }

  siriPegasusMetadata = [(POMMESSchemaPOMMESPegasusRequestArguments *)self siriPegasusMetadata];

  if (siriPegasusMetadata)
  {
    siriPegasusMetadata2 = [(POMMESSchemaPOMMESPegasusRequestArguments *)self siriPegasusMetadata];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  clientConversationMetadata = [(POMMESSchemaPOMMESPegasusRequestArguments *)self clientConversationMetadata];

  if (clientConversationMetadata)
  {
    clientConversationMetadata2 = [(POMMESSchemaPOMMESPegasusRequestArguments *)self clientConversationMetadata];
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
  }

  personalDomainFallback = [(POMMESSchemaPOMMESPegasusRequestArguments *)self personalDomainFallback];

  if (personalDomainFallback)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setHasConversationContextBytesLength:(BOOL)length
{
  if (length)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addQueries:(id)queries
{
  queriesCopy = queries;
  queries = self->_queries;
  v8 = queriesCopy;
  if (!queries)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_queries;
    self->_queries = array;

    queriesCopy = v8;
    queries = self->_queries;
  }

  [(NSArray *)queries addObject:queriesCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v18.receiver = self;
  v18.super_class = POMMESSchemaPOMMESPegasusRequestArguments;
  v5 = [(SISchemaInstrumentationMessage *)&v18 applySensitiveConditionsPolicy:policyCopy];
  queries = [(POMMESSchemaPOMMESPegasusRequestArguments *)self queries];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:queries underConditions:policyCopy];
  [(POMMESSchemaPOMMESPegasusRequestArguments *)self setQueries:v7];

  queryMetadata = [(POMMESSchemaPOMMESPegasusRequestArguments *)self queryMetadata];
  v9 = [queryMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v9 suppressMessage];

  if (suppressMessage)
  {
    [(POMMESSchemaPOMMESPegasusRequestArguments *)self deleteQueryMetadata];
  }

  siriPegasusMetadata = [(POMMESSchemaPOMMESPegasusRequestArguments *)self siriPegasusMetadata];
  v12 = [siriPegasusMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v12 suppressMessage];

  if (suppressMessage2)
  {
    [(POMMESSchemaPOMMESPegasusRequestArguments *)self deleteSiriPegasusMetadata];
  }

  clientConversationMetadata = [(POMMESSchemaPOMMESPegasusRequestArguments *)self clientConversationMetadata];
  v15 = [clientConversationMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v15 suppressMessage];

  if (suppressMessage3)
  {
    [(POMMESSchemaPOMMESPegasusRequestArguments *)self deleteClientConversationMetadata];
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