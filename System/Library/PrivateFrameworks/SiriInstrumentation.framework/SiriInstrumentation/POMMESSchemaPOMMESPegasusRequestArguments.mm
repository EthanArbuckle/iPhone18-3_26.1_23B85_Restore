@interface POMMESSchemaPOMMESPegasusRequestArguments
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (POMMESSchemaPOMMESPegasusRequestArguments)initWithDictionary:(id)a3;
- (POMMESSchemaPOMMESPegasusRequestArguments)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addQueries:(id)a3;
- (void)setHasConversationContextBytesLength:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation POMMESSchemaPOMMESPegasusRequestArguments

- (POMMESSchemaPOMMESPegasusRequestArguments)initWithDictionary:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v33.receiver = self;
  v33.super_class = POMMESSchemaPOMMESPegasusRequestArguments;
  v5 = [(POMMESSchemaPOMMESPegasusRequestArguments *)&v33 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"queries"];
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

    v14 = [v4 objectForKeyedSubscript:@"queryMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[POMMESSchemaPOMMESPegasusQueryMetadata alloc] initWithDictionary:v14];
      [(POMMESSchemaPOMMESPegasusRequestArguments *)v5 setQueryMetadata:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"featureFlag"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(POMMESSchemaPOMMESPegasusRequestArguments *)v5 setFeatureFlag:v17];
    }

    v28 = v6;
    v18 = [v4 objectForKeyedSubscript:@"siriPegasusMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[POMMESSchemaPOMMESSiriPegasusMetadata alloc] initWithDictionary:v18];
      [(POMMESSchemaPOMMESPegasusRequestArguments *)v5 setSiriPegasusMetadata:v19];
    }

    v20 = [v4 objectForKeyedSubscript:@"isDataOnlyRequest"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESPegasusRequestArguments setIsDataOnlyRequest:](v5, "setIsDataOnlyRequest:", [v20 BOOLValue]);
    }

    v21 = [v4 objectForKeyedSubscript:@"clientConversationMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [[POMMESSchemaPOMMESClientConversationMetadata alloc] initWithDictionary:v21];
      [(POMMESSchemaPOMMESPegasusRequestArguments *)v5 setClientConversationMetadata:v22];
    }

    v23 = [v4 objectForKeyedSubscript:@"conversationContextBytesLength"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESPegasusRequestArguments setConversationContextBytesLength:](v5, "setConversationContextBytesLength:", [v23 unsignedIntValue]);
    }

    v24 = [v4 objectForKeyedSubscript:@"personalDomainFallback"];
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

- (POMMESSchemaPOMMESPegasusRequestArguments)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(POMMESSchemaPOMMESPegasusRequestArguments *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(POMMESSchemaPOMMESPegasusRequestArguments *)self dictionaryRepresentation];
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
  v33 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_clientConversationMetadata)
  {
    v4 = [(POMMESSchemaPOMMESPegasusRequestArguments *)self clientConversationMetadata];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"clientConversationMetadata"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"clientConversationMetadata"];
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[POMMESSchemaPOMMESPegasusRequestArguments conversationContextBytesLength](self, "conversationContextBytesLength")}];
    [v3 setObject:v7 forKeyedSubscript:@"conversationContextBytesLength"];
  }

  if (self->_featureFlag)
  {
    v8 = [(POMMESSchemaPOMMESPegasusRequestArguments *)self featureFlag];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"featureFlag"];
  }

  if (*&self->_has)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[POMMESSchemaPOMMESPegasusRequestArguments isDataOnlyRequest](self, "isDataOnlyRequest")}];
    [v3 setObject:v10 forKeyedSubscript:@"isDataOnlyRequest"];
  }

  if (self->_personalDomainFallback)
  {
    v11 = [(POMMESSchemaPOMMESPegasusRequestArguments *)self personalDomainFallback];
    v12 = [v11 copy];
    [v3 setObject:v12 forKeyedSubscript:@"personalDomainFallback"];
  }

  if ([(NSArray *)self->_queries count])
  {
    v13 = [MEMORY[0x1E695DF70] array];
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

          v19 = [*(*(&v28 + 1) + 8 * i) dictionaryRepresentation];
          if (v19)
          {
            [v13 addObject:v19];
          }

          else
          {
            v20 = [MEMORY[0x1E695DFB0] null];
            [v13 addObject:v20];
          }
        }

        v16 = [(NSArray *)v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v16);
    }

    [v3 setObject:v13 forKeyedSubscript:@"queries"];
  }

  if (self->_queryMetadata)
  {
    v21 = [(POMMESSchemaPOMMESPegasusRequestArguments *)self queryMetadata];
    v22 = [v21 dictionaryRepresentation];
    if (v22)
    {
      [v3 setObject:v22 forKeyedSubscript:@"queryMetadata"];
    }

    else
    {
      v23 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v23 forKeyedSubscript:@"queryMetadata"];
    }
  }

  if (self->_siriPegasusMetadata)
  {
    v24 = [(POMMESSchemaPOMMESPegasusRequestArguments *)self siriPegasusMetadata];
    v25 = [v24 dictionaryRepresentation];
    if (v25)
    {
      [v3 setObject:v25 forKeyedSubscript:@"siriPegasusMetadata"];
    }

    else
    {
      v26 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v26 forKeyedSubscript:@"siriPegasusMetadata"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v28];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_38;
  }

  v5 = [(POMMESSchemaPOMMESPegasusRequestArguments *)self queries];
  v6 = [v4 queries];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_37;
  }

  v7 = [(POMMESSchemaPOMMESPegasusRequestArguments *)self queries];
  if (v7)
  {
    v8 = v7;
    v9 = [(POMMESSchemaPOMMESPegasusRequestArguments *)self queries];
    v10 = [v4 queries];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  v5 = [(POMMESSchemaPOMMESPegasusRequestArguments *)self queryMetadata];
  v6 = [v4 queryMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_37;
  }

  v12 = [(POMMESSchemaPOMMESPegasusRequestArguments *)self queryMetadata];
  if (v12)
  {
    v13 = v12;
    v14 = [(POMMESSchemaPOMMESPegasusRequestArguments *)self queryMetadata];
    v15 = [v4 queryMetadata];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  v5 = [(POMMESSchemaPOMMESPegasusRequestArguments *)self featureFlag];
  v6 = [v4 featureFlag];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_37;
  }

  v17 = [(POMMESSchemaPOMMESPegasusRequestArguments *)self featureFlag];
  if (v17)
  {
    v18 = v17;
    v19 = [(POMMESSchemaPOMMESPegasusRequestArguments *)self featureFlag];
    v20 = [v4 featureFlag];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  v5 = [(POMMESSchemaPOMMESPegasusRequestArguments *)self siriPegasusMetadata];
  v6 = [v4 siriPegasusMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_37;
  }

  v22 = [(POMMESSchemaPOMMESPegasusRequestArguments *)self siriPegasusMetadata];
  if (v22)
  {
    v23 = v22;
    v24 = [(POMMESSchemaPOMMESPegasusRequestArguments *)self siriPegasusMetadata];
    v25 = [v4 siriPegasusMetadata];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[72] & 1))
  {
    goto LABEL_38;
  }

  if (*&self->_has)
  {
    isDataOnlyRequest = self->_isDataOnlyRequest;
    if (isDataOnlyRequest != [v4 isDataOnlyRequest])
    {
      goto LABEL_38;
    }
  }

  v5 = [(POMMESSchemaPOMMESPegasusRequestArguments *)self clientConversationMetadata];
  v6 = [v4 clientConversationMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_37;
  }

  v28 = [(POMMESSchemaPOMMESPegasusRequestArguments *)self clientConversationMetadata];
  if (v28)
  {
    v29 = v28;
    v30 = [(POMMESSchemaPOMMESPegasusRequestArguments *)self clientConversationMetadata];
    v31 = [v4 clientConversationMetadata];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  v33 = (*&self->_has >> 1) & 1;
  if (v33 != ((v4[72] >> 1) & 1))
  {
    goto LABEL_38;
  }

  if (v33)
  {
    conversationContextBytesLength = self->_conversationContextBytesLength;
    if (conversationContextBytesLength != [v4 conversationContextBytesLength])
    {
      goto LABEL_38;
    }
  }

  v5 = [(POMMESSchemaPOMMESPegasusRequestArguments *)self personalDomainFallback];
  v6 = [v4 personalDomainFallback];
  if ((v5 != 0) != (v6 == 0))
  {
    v35 = [(POMMESSchemaPOMMESPegasusRequestArguments *)self personalDomainFallback];
    if (!v35)
    {

LABEL_41:
      v40 = 1;
      goto LABEL_39;
    }

    v36 = v35;
    v37 = [(POMMESSchemaPOMMESPegasusRequestArguments *)self personalDomainFallback];
    v38 = [v4 personalDomainFallback];
    v39 = [v37 isEqual:v38];

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

- (void)writeTo:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

  v10 = [(POMMESSchemaPOMMESPegasusRequestArguments *)self queryMetadata];

  if (v10)
  {
    v11 = [(POMMESSchemaPOMMESPegasusRequestArguments *)self queryMetadata];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(POMMESSchemaPOMMESPegasusRequestArguments *)self featureFlag];

  if (v12)
  {
    PBDataWriterWriteStringField();
  }

  v13 = [(POMMESSchemaPOMMESPegasusRequestArguments *)self siriPegasusMetadata];

  if (v13)
  {
    v14 = [(POMMESSchemaPOMMESPegasusRequestArguments *)self siriPegasusMetadata];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  v15 = [(POMMESSchemaPOMMESPegasusRequestArguments *)self clientConversationMetadata];

  if (v15)
  {
    v16 = [(POMMESSchemaPOMMESPegasusRequestArguments *)self clientConversationMetadata];
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
  }

  v17 = [(POMMESSchemaPOMMESPegasusRequestArguments *)self personalDomainFallback];

  if (v17)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setHasConversationContextBytesLength:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addQueries:(id)a3
{
  v4 = a3;
  queries = self->_queries;
  v8 = v4;
  if (!queries)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_queries;
    self->_queries = v6;

    v4 = v8;
    queries = self->_queries;
  }

  [(NSArray *)queries addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = POMMESSchemaPOMMESPegasusRequestArguments;
  v5 = [(SISchemaInstrumentationMessage *)&v18 applySensitiveConditionsPolicy:v4];
  v6 = [(POMMESSchemaPOMMESPegasusRequestArguments *)self queries];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:v4];
  [(POMMESSchemaPOMMESPegasusRequestArguments *)self setQueries:v7];

  v8 = [(POMMESSchemaPOMMESPegasusRequestArguments *)self queryMetadata];
  v9 = [v8 applySensitiveConditionsPolicy:v4];
  v10 = [v9 suppressMessage];

  if (v10)
  {
    [(POMMESSchemaPOMMESPegasusRequestArguments *)self deleteQueryMetadata];
  }

  v11 = [(POMMESSchemaPOMMESPegasusRequestArguments *)self siriPegasusMetadata];
  v12 = [v11 applySensitiveConditionsPolicy:v4];
  v13 = [v12 suppressMessage];

  if (v13)
  {
    [(POMMESSchemaPOMMESPegasusRequestArguments *)self deleteSiriPegasusMetadata];
  }

  v14 = [(POMMESSchemaPOMMESPegasusRequestArguments *)self clientConversationMetadata];
  v15 = [v14 applySensitiveConditionsPolicy:v4];
  v16 = [v15 suppressMessage];

  if (v16)
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