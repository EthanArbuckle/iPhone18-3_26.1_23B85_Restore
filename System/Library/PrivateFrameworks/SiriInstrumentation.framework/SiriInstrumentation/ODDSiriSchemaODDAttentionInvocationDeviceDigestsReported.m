@interface ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported)initWithDictionary:(id)a3;
- (ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addDigests:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported

- (ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported)initWithDictionary:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported;
  v5 = [(ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported *)&v25 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"fixedDimensions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ODDSiriSchemaODDFixedDimensions alloc] initWithDictionary:v6];
      [(ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported *)v5 setFixedDimensions:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"digests"];
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
              v15 = [[ODDSiriSchemaODDAttentionInvocationDigest alloc] initWithDictionary:v14];
              [(ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported *)v5 addDigests:v15];
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

    v16 = [v4 objectForKeyedSubscript:@"attentionInvocationFixedDimensions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[ODDSiriSchemaODDAttentionInvocationFixedDimensions alloc] initWithDictionary:v16];
      [(ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported *)v5 setAttentionInvocationFixedDimensions:v17];
    }

    v18 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported *)self dictionaryRepresentation];
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
  v24 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_attentionInvocationFixedDimensions)
  {
    v4 = [(ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported *)self attentionInvocationFixedDimensions];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"attentionInvocationFixedDimensions"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"attentionInvocationFixedDimensions"];
    }
  }

  if ([(NSArray *)self->_digests count])
  {
    v7 = [MEMORY[0x1E695DF70] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = self->_digests;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          if (v13)
          {
            [v7 addObject:v13];
          }

          else
          {
            v14 = [MEMORY[0x1E695DFB0] null];
            [v7 addObject:v14];
          }
        }

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    [v3 setObject:v7 forKeyedSubscript:@"digests"];
  }

  if (self->_fixedDimensions)
  {
    v15 = [(ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported *)self fixedDimensions];
    v16 = [v15 dictionaryRepresentation];
    if (v16)
    {
      [v3 setObject:v16 forKeyedSubscript:@"fixedDimensions"];
    }

    else
    {
      v17 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v17 forKeyedSubscript:@"fixedDimensions"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v19];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(ODDSiriSchemaODDFixedDimensions *)self->_fixedDimensions hash];
  v4 = [(NSArray *)self->_digests hash]^ v3;
  return v4 ^ [(ODDSiriSchemaODDAttentionInvocationFixedDimensions *)self->_attentionInvocationFixedDimensions hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported *)self fixedDimensions];
  v6 = [v4 fixedDimensions];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported *)self fixedDimensions];
  if (v7)
  {
    v8 = v7;
    v9 = [(ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported *)self fixedDimensions];
    v10 = [v4 fixedDimensions];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported *)self digests];
  v6 = [v4 digests];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported *)self digests];
  if (v12)
  {
    v13 = v12;
    v14 = [(ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported *)self digests];
    v15 = [v4 digests];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported *)self attentionInvocationFixedDimensions];
  v6 = [v4 attentionInvocationFixedDimensions];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported *)self attentionInvocationFixedDimensions];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported *)self attentionInvocationFixedDimensions];
    v20 = [v4 attentionInvocationFixedDimensions];
    v21 = [v19 isEqual:v20];

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

- (void)writeTo:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported *)self fixedDimensions];

  if (v5)
  {
    v6 = [(ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported *)self fixedDimensions];
    PBDataWriterWriteSubmessage();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_digests;
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

  v12 = [(ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported *)self attentionInvocationFixedDimensions];

  if (v12)
  {
    v13 = [(ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported *)self attentionInvocationFixedDimensions];
    PBDataWriterWriteSubmessage();
  }
}

- (void)addDigests:(id)a3
{
  v4 = a3;
  digests = self->_digests;
  v8 = v4;
  if (!digests)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_digests;
    self->_digests = v6;

    v4 = v8;
    digests = self->_digests;
  }

  [(NSArray *)digests addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported;
  v5 = [(SISchemaInstrumentationMessage *)&v15 applySensitiveConditionsPolicy:v4];
  v6 = [(ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported *)self fixedDimensions];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported *)self deleteFixedDimensions];
  }

  v9 = [(ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported *)self digests];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v9 underConditions:v4];
  [(ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported *)self setDigests:v10];

  v11 = [(ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported *)self attentionInvocationFixedDimensions];
  v12 = [v11 applySensitiveConditionsPolicy:v4];
  v13 = [v12 suppressMessage];

  if (v13)
  {
    [(ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported *)self deleteAttentionInvocationFixedDimensions];
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