@interface TTMSchemaTTMOverrideTCUFailure
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (TTMSchemaTTMOverrideTCUFailure)initWithDictionary:(id)dictionary;
- (TTMSchemaTTMOverrideTCUFailure)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)addFailures:(id)failures;
- (void)writeTo:(id)to;
@end

@implementation TTMSchemaTTMOverrideTCUFailure

- (TTMSchemaTTMOverrideTCUFailure)initWithDictionary:(id)dictionary
{
  v25 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v23.receiver = self;
  v23.super_class = TTMSchemaTTMOverrideTCUFailure;
  v5 = [(TTMSchemaTTMOverrideTCUFailure *)&v23 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"tcuId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(TTMSchemaTTMOverrideTCUFailure *)v5 setTcuId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"failures"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v6;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v20;
        do
        {
          v13 = 0;
          do
          {
            if (*v20 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v19 + 1) + 8 * v13);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [[TTMSchemaTTMOverrideFailure alloc] initWithDictionary:v14];
              [(TTMSchemaTTMOverrideTCUFailure *)v5 addFailures:v15];
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
        }

        while (v11);
      }

      v6 = v18;
    }

    v16 = v5;
  }

  return v5;
}

- (TTMSchemaTTMOverrideTCUFailure)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(TTMSchemaTTMOverrideTCUFailure *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(TTMSchemaTTMOverrideTCUFailure *)self dictionaryRepresentation];
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
  v21 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_failures count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = self->_failures;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v16 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation)
          {
            [array addObject:dictionaryRepresentation];
          }

          else
          {
            null = [MEMORY[0x1E695DFB0] null];
            [array addObject:null];
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"failures"];
  }

  if (self->_tcuId)
  {
    tcuId = [(TTMSchemaTTMOverrideTCUFailure *)self tcuId];
    dictionaryRepresentation2 = [tcuId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"tcuId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"tcuId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v16];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  tcuId = [(TTMSchemaTTMOverrideTCUFailure *)self tcuId];
  tcuId2 = [equalCopy tcuId];
  if ((tcuId != 0) == (tcuId2 == 0))
  {
    goto LABEL_11;
  }

  tcuId3 = [(TTMSchemaTTMOverrideTCUFailure *)self tcuId];
  if (tcuId3)
  {
    v8 = tcuId3;
    tcuId4 = [(TTMSchemaTTMOverrideTCUFailure *)self tcuId];
    tcuId5 = [equalCopy tcuId];
    v11 = [tcuId4 isEqual:tcuId5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  tcuId = [(TTMSchemaTTMOverrideTCUFailure *)self failures];
  tcuId2 = [equalCopy failures];
  if ((tcuId != 0) != (tcuId2 == 0))
  {
    failures = [(TTMSchemaTTMOverrideTCUFailure *)self failures];
    if (!failures)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = failures;
    failures2 = [(TTMSchemaTTMOverrideTCUFailure *)self failures];
    failures3 = [equalCopy failures];
    v16 = [failures2 isEqual:failures3];

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
  tcuId = [(TTMSchemaTTMOverrideTCUFailure *)self tcuId];

  if (tcuId)
  {
    tcuId2 = [(TTMSchemaTTMOverrideTCUFailure *)self tcuId];
    PBDataWriterWriteSubmessage();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = self->_failures;
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

        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)addFailures:(id)failures
{
  failuresCopy = failures;
  failures = self->_failures;
  v8 = failuresCopy;
  if (!failures)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_failures;
    self->_failures = array;

    failuresCopy = v8;
    failures = self->_failures;
  }

  [(NSArray *)failures addObject:failuresCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v12.receiver = self;
  v12.super_class = TTMSchemaTTMOverrideTCUFailure;
  v5 = [(SISchemaInstrumentationMessage *)&v12 applySensitiveConditionsPolicy:policyCopy];
  tcuId = [(TTMSchemaTTMOverrideTCUFailure *)self tcuId];
  v7 = [tcuId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(TTMSchemaTTMOverrideTCUFailure *)self deleteTcuId];
  }

  failures = [(TTMSchemaTTMOverrideTCUFailure *)self failures];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:failures underConditions:policyCopy];
  [(TTMSchemaTTMOverrideTCUFailure *)self setFailures:v10];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end