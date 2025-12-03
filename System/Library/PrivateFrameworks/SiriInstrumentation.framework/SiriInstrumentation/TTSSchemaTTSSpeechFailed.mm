@interface TTSSchemaTTSSpeechFailed
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (TTSSchemaTTSSpeechFailed)initWithDictionary:(id)dictionary;
- (TTSSchemaTTSSpeechFailed)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int)errorCodesAtIndex:(unint64_t)index;
- (void)addErrorCodes:(int)codes;
- (void)writeTo:(id)to;
@end

@implementation TTSSchemaTTSSpeechFailed

- (TTSSchemaTTSSpeechFailed)initWithDictionary:(id)dictionary
{
  v21 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v19.receiver = self;
  v19.super_class = TTSSchemaTTSSpeechFailed;
  v5 = [(TTSSchemaTTSSpeechFailed *)&v19 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"errorCodes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v16;
        do
        {
          v11 = 0;
          do
          {
            if (*v16 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v15 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[TTSSchemaTTSSpeechFailed addErrorCodes:](v5, "addErrorCodes:", [v12 intValue]);
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
        }

        while (v9);
      }
    }

    v13 = v5;
  }

  return v5;
}

- (TTSSchemaTTSSpeechFailed)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(TTSSchemaTTSSpeechFailed *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(TTSSchemaTTSSpeechFailed *)self dictionaryRepresentation];
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
  if ([(NSArray *)self->_errorCodes count])
  {
    errorCodes = [(TTSSchemaTTSSpeechFailed *)self errorCodes];
    v5 = [errorCodes copy];
    [dictionary setObject:v5 forKeyedSubscript:@"errorCodes"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    errorCodes = [(TTSSchemaTTSSpeechFailed *)self errorCodes];
    errorCodes2 = [equalCopy errorCodes];
    v7 = errorCodes2;
    if ((errorCodes != 0) != (errorCodes2 == 0))
    {
      errorCodes3 = [(TTSSchemaTTSSpeechFailed *)self errorCodes];
      if (!errorCodes3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = errorCodes3;
      errorCodes4 = [(TTSSchemaTTSSpeechFailed *)self errorCodes];
      errorCodes5 = [equalCopy errorCodes];
      v12 = [errorCodes4 isEqual:errorCodes5];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_errorCodes;
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

        [*(*(&v10 + 1) + 8 * v9) intValue];
        PBDataWriterWriteInt32Field();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (int)errorCodesAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_errorCodes objectAtIndexedSubscript:index];
  intValue = [v3 intValue];

  return intValue;
}

- (void)addErrorCodes:(int)codes
{
  v3 = *&codes;
  errorCodes = self->_errorCodes;
  if (!errorCodes)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_errorCodes;
    self->_errorCodes = array;

    errorCodes = self->_errorCodes;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)errorCodes addObject:v8];
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end