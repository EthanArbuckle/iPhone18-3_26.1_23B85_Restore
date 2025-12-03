@interface TTMSchemaTTMOverrideRequestFailed
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (TTMSchemaTTMOverrideRequestFailed)initWithDictionary:(id)dictionary;
- (TTMSchemaTTMOverrideRequestFailed)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addTcuFailures:(id)failures;
- (void)writeTo:(id)to;
@end

@implementation TTMSchemaTTMOverrideRequestFailed

- (TTMSchemaTTMOverrideRequestFailed)initWithDictionary:(id)dictionary
{
  v24 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v22.receiver = self;
  v22.super_class = TTMSchemaTTMOverrideRequestFailed;
  v5 = [(TTMSchemaTTMOverrideRequestFailed *)&v22 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"reason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[TTMSchemaTTMOverrideRequestFailed setReason:](v5, "setReason:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"tcuFailures"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v6;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v8 = v7;
      v9 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v19;
        do
        {
          v12 = 0;
          do
          {
            if (*v19 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v18 + 1) + 8 * v12);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = [[TTMSchemaTTMOverrideTCUFailure alloc] initWithDictionary:v13];
              [(TTMSchemaTTMOverrideRequestFailed *)v5 addTcuFailures:v14];
            }

            ++v12;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
        }

        while (v10);
      }

      v6 = v17;
    }

    v15 = v5;
  }

  return v5;
}

- (TTMSchemaTTMOverrideRequestFailed)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(TTMSchemaTTMOverrideRequestFailed *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(TTMSchemaTTMOverrideRequestFailed *)self dictionaryRepresentation];
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
  v20 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [(TTMSchemaTTMOverrideRequestFailed *)self reason]- 1;
    if (v4 > 2)
    {
      v5 = @"TTMOVERRIDEFAILUREREASON_UNKNOWN";
    }

    else
    {
      v5 = off_1E78E7F50[v4];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"reason"];
  }

  if ([(NSArray *)self->_tcuFailures count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = self->_tcuFailures;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
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

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    [dictionary setObject:array forKeyedSubscript:@"tcuFailures"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v15];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_reason;
  }

  else
  {
    v2 = 0;
  }

  return [(NSArray *)self->_tcuFailures hash]^ v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    if ((*&self->_has & 1) == (equalCopy[24] & 1))
    {
      if ((*&self->_has & 1) == 0 || (reason = self->_reason, reason == [equalCopy reason]))
      {
        tcuFailures = [(TTMSchemaTTMOverrideRequestFailed *)self tcuFailures];
        tcuFailures2 = [equalCopy tcuFailures];
        v8 = tcuFailures2;
        if ((tcuFailures != 0) != (tcuFailures2 == 0))
        {
          tcuFailures3 = [(TTMSchemaTTMOverrideRequestFailed *)self tcuFailures];
          if (!tcuFailures3)
          {

LABEL_13:
            v14 = 1;
            goto LABEL_11;
          }

          v10 = tcuFailures3;
          tcuFailures4 = [(TTMSchemaTTMOverrideRequestFailed *)self tcuFailures];
          tcuFailures5 = [equalCopy tcuFailures];
          v13 = [tcuFailures4 isEqual:tcuFailures5];

          if (v13)
          {
            goto LABEL_13;
          }
        }

        else
        {
        }
      }
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_tcuFailures;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)addTcuFailures:(id)failures
{
  failuresCopy = failures;
  tcuFailures = self->_tcuFailures;
  v8 = failuresCopy;
  if (!tcuFailures)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_tcuFailures;
    self->_tcuFailures = array;

    failuresCopy = v8;
    tcuFailures = self->_tcuFailures;
  }

  [(NSArray *)tcuFailures addObject:failuresCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = TTMSchemaTTMOverrideRequestFailed;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(TTMSchemaTTMOverrideRequestFailed *)self tcuFailures:v9.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:policyCopy];

  [(TTMSchemaTTMOverrideRequestFailed *)self setTcuFailures:v7];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end