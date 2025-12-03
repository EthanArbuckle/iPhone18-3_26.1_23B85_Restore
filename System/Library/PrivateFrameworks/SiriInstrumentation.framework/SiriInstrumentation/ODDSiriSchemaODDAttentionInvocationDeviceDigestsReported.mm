@interface ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported)initWithDictionary:(id)dictionary;
- (ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addDigests:(id)digests;
- (void)writeTo:(id)to;
@end

@implementation ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported

- (ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported)initWithDictionary:(id)dictionary
{
  v27 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v25.receiver = self;
  v25.super_class = ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported;
  v5 = [(ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported *)&v25 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"fixedDimensions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ODDSiriSchemaODDFixedDimensions alloc] initWithDictionary:v6];
      [(ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported *)v5 setFixedDimensions:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"digests"];
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

    v16 = [dictionaryCopy objectForKeyedSubscript:@"attentionInvocationFixedDimensions"];
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

- (ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported *)self dictionaryRepresentation];
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
  if (self->_attentionInvocationFixedDimensions)
  {
    attentionInvocationFixedDimensions = [(ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported *)self attentionInvocationFixedDimensions];
    dictionaryRepresentation = [attentionInvocationFixedDimensions dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"attentionInvocationFixedDimensions"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"attentionInvocationFixedDimensions"];
    }
  }

  if ([(NSArray *)self->_digests count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation2 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
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

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    [dictionary setObject:array forKeyedSubscript:@"digests"];
  }

  if (self->_fixedDimensions)
  {
    fixedDimensions = [(ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported *)self fixedDimensions];
    dictionaryRepresentation3 = [fixedDimensions dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"fixedDimensions"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"fixedDimensions"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v19];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(ODDSiriSchemaODDFixedDimensions *)self->_fixedDimensions hash];
  v4 = [(NSArray *)self->_digests hash]^ v3;
  return v4 ^ [(ODDSiriSchemaODDAttentionInvocationFixedDimensions *)self->_attentionInvocationFixedDimensions hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  fixedDimensions = [(ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported *)self fixedDimensions];
  fixedDimensions2 = [equalCopy fixedDimensions];
  if ((fixedDimensions != 0) == (fixedDimensions2 == 0))
  {
    goto LABEL_16;
  }

  fixedDimensions3 = [(ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported *)self fixedDimensions];
  if (fixedDimensions3)
  {
    v8 = fixedDimensions3;
    fixedDimensions4 = [(ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported *)self fixedDimensions];
    fixedDimensions5 = [equalCopy fixedDimensions];
    v11 = [fixedDimensions4 isEqual:fixedDimensions5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  fixedDimensions = [(ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported *)self digests];
  fixedDimensions2 = [equalCopy digests];
  if ((fixedDimensions != 0) == (fixedDimensions2 == 0))
  {
    goto LABEL_16;
  }

  digests = [(ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported *)self digests];
  if (digests)
  {
    v13 = digests;
    digests2 = [(ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported *)self digests];
    digests3 = [equalCopy digests];
    v16 = [digests2 isEqual:digests3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  fixedDimensions = [(ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported *)self attentionInvocationFixedDimensions];
  fixedDimensions2 = [equalCopy attentionInvocationFixedDimensions];
  if ((fixedDimensions != 0) != (fixedDimensions2 == 0))
  {
    attentionInvocationFixedDimensions = [(ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported *)self attentionInvocationFixedDimensions];
    if (!attentionInvocationFixedDimensions)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = attentionInvocationFixedDimensions;
    attentionInvocationFixedDimensions2 = [(ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported *)self attentionInvocationFixedDimensions];
    attentionInvocationFixedDimensions3 = [equalCopy attentionInvocationFixedDimensions];
    v21 = [attentionInvocationFixedDimensions2 isEqual:attentionInvocationFixedDimensions3];

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
  fixedDimensions = [(ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported *)self fixedDimensions];

  if (fixedDimensions)
  {
    fixedDimensions2 = [(ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported *)self fixedDimensions];
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

  attentionInvocationFixedDimensions = [(ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported *)self attentionInvocationFixedDimensions];

  if (attentionInvocationFixedDimensions)
  {
    attentionInvocationFixedDimensions2 = [(ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported *)self attentionInvocationFixedDimensions];
    PBDataWriterWriteSubmessage();
  }
}

- (void)addDigests:(id)digests
{
  digestsCopy = digests;
  digests = self->_digests;
  v8 = digestsCopy;
  if (!digests)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_digests;
    self->_digests = array;

    digestsCopy = v8;
    digests = self->_digests;
  }

  [(NSArray *)digests addObject:digestsCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v15.receiver = self;
  v15.super_class = ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported;
  v5 = [(SISchemaInstrumentationMessage *)&v15 applySensitiveConditionsPolicy:policyCopy];
  fixedDimensions = [(ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported *)self fixedDimensions];
  v7 = [fixedDimensions applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported *)self deleteFixedDimensions];
  }

  digests = [(ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported *)self digests];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:digests underConditions:policyCopy];
  [(ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported *)self setDigests:v10];

  attentionInvocationFixedDimensions = [(ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported *)self attentionInvocationFixedDimensions];
  v12 = [attentionInvocationFixedDimensions applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v12 suppressMessage];

  if (suppressMessage2)
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