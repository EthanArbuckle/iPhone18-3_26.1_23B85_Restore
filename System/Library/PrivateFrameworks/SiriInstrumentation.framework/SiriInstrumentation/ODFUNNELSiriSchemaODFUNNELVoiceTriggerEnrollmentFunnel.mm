@interface ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentFunnel
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentFunnel)initWithDictionary:(id)dictionary;
- (ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentFunnel)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)addDigests:(id)digests;
- (void)writeTo:(id)to;
@end

@implementation ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentFunnel

- (ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentFunnel)initWithDictionary:(id)dictionary
{
  v25 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v23.receiver = self;
  v23.super_class = ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentFunnel;
  v5 = [(ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentFunnel *)&v23 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"fixedDimensions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ODDSiriSchemaODDFixedDimensions alloc] initWithDictionary:v6];
      [(ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentFunnel *)v5 setFixedDimensions:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"digests"];
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
              v15 = [[ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentDigest alloc] initWithDictionary:v14];
              [(ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentFunnel *)v5 addDigests:v15];
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

- (ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentFunnel)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentFunnel *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentFunnel *)self dictionaryRepresentation];
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
  if ([(NSArray *)self->_digests count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = self->_digests;
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

    [dictionary setObject:array forKeyedSubscript:@"digests"];
  }

  if (self->_fixedDimensions)
  {
    fixedDimensions = [(ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentFunnel *)self fixedDimensions];
    dictionaryRepresentation2 = [fixedDimensions dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"fixedDimensions"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"fixedDimensions"];
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

  fixedDimensions = [(ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentFunnel *)self fixedDimensions];
  fixedDimensions2 = [equalCopy fixedDimensions];
  if ((fixedDimensions != 0) == (fixedDimensions2 == 0))
  {
    goto LABEL_11;
  }

  fixedDimensions3 = [(ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentFunnel *)self fixedDimensions];
  if (fixedDimensions3)
  {
    v8 = fixedDimensions3;
    fixedDimensions4 = [(ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentFunnel *)self fixedDimensions];
    fixedDimensions5 = [equalCopy fixedDimensions];
    v11 = [fixedDimensions4 isEqual:fixedDimensions5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  fixedDimensions = [(ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentFunnel *)self digests];
  fixedDimensions2 = [equalCopy digests];
  if ((fixedDimensions != 0) != (fixedDimensions2 == 0))
  {
    digests = [(ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentFunnel *)self digests];
    if (!digests)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = digests;
    digests2 = [(ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentFunnel *)self digests];
    digests3 = [equalCopy digests];
    v16 = [digests2 isEqual:digests3];

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
  fixedDimensions = [(ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentFunnel *)self fixedDimensions];

  if (fixedDimensions)
  {
    fixedDimensions2 = [(ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentFunnel *)self fixedDimensions];
    PBDataWriterWriteSubmessage();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = self->_digests;
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
  v12.receiver = self;
  v12.super_class = ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentFunnel;
  v5 = [(SISchemaInstrumentationMessage *)&v12 applySensitiveConditionsPolicy:policyCopy];
  fixedDimensions = [(ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentFunnel *)self fixedDimensions];
  v7 = [fixedDimensions applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentFunnel *)self deleteFixedDimensions];
  }

  digests = [(ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentFunnel *)self digests];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:digests underConditions:policyCopy];
  [(ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentFunnel *)self setDigests:v10];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end