@interface ODDSiriSchemaODDMobileAssetErrorsReported
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODDSiriSchemaODDMobileAssetErrorsReported)initWithDictionary:(id)dictionary;
- (ODDSiriSchemaODDMobileAssetErrorsReported)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addMaErrorsDigest:(id)digest;
- (void)writeTo:(id)to;
@end

@implementation ODDSiriSchemaODDMobileAssetErrorsReported

- (ODDSiriSchemaODDMobileAssetErrorsReported)initWithDictionary:(id)dictionary
{
  v26 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v24.receiver = self;
  v24.super_class = ODDSiriSchemaODDMobileAssetErrorsReported;
  v5 = [(ODDSiriSchemaODDMobileAssetErrorsReported *)&v24 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"fixedDimensions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ODDSiriSchemaODDFixedDimensions alloc] initWithDictionary:v6];
      [(ODDSiriSchemaODDMobileAssetErrorsReported *)v5 setFixedDimensions:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"maErrorsDigest"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v6;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v21;
        do
        {
          v13 = 0;
          do
          {
            if (*v21 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v20 + 1) + 8 * v13);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [[ODDSiriSchemaODDMAErrorsDigest alloc] initWithDictionary:v14];
              [(ODDSiriSchemaODDMobileAssetErrorsReported *)v5 addMaErrorsDigest:v15];
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
        }

        while (v11);
      }

      v6 = v19;
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"maEventType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDMobileAssetErrorsReported setMaEventType:](v5, "setMaEventType:", [v16 intValue]);
    }

    v17 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDMobileAssetErrorsReported)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDMobileAssetErrorsReported *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODDSiriSchemaODDMobileAssetErrorsReported *)self dictionaryRepresentation];
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
  if (self->_fixedDimensions)
  {
    fixedDimensions = [(ODDSiriSchemaODDMobileAssetErrorsReported *)self fixedDimensions];
    dictionaryRepresentation = [fixedDimensions dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"fixedDimensions"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"fixedDimensions"];
    }
  }

  if ([(NSArray *)self->_maErrorsDigests count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = self->_maErrorsDigests;
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

    [dictionary setObject:array forKeyedSubscript:@"maErrorsDigest"];
  }

  if (*&self->_has)
  {
    maEventType = [(ODDSiriSchemaODDMobileAssetErrorsReported *)self maEventType];
    v16 = @"ODDMAEVENTTYPE_UNKNOWN";
    if (maEventType == 1)
    {
      v16 = @"ODDMAEVENTTYPE_DOWNLOAD_ERROR";
    }

    if (maEventType == 2)
    {
      v17 = @"ODDMAEVENTTYPE_SECURE_DETAIL";
    }

    else
    {
      v17 = v16;
    }

    [dictionary setObject:v17 forKeyedSubscript:{@"maEventType", v19}];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v19];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(ODDSiriSchemaODDFixedDimensions *)self->_fixedDimensions hash];
  v4 = [(NSArray *)self->_maErrorsDigests hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_maEventType;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  fixedDimensions = [(ODDSiriSchemaODDMobileAssetErrorsReported *)self fixedDimensions];
  fixedDimensions2 = [equalCopy fixedDimensions];
  if ((fixedDimensions != 0) == (fixedDimensions2 == 0))
  {
    goto LABEL_11;
  }

  fixedDimensions3 = [(ODDSiriSchemaODDMobileAssetErrorsReported *)self fixedDimensions];
  if (fixedDimensions3)
  {
    v8 = fixedDimensions3;
    fixedDimensions4 = [(ODDSiriSchemaODDMobileAssetErrorsReported *)self fixedDimensions];
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

  fixedDimensions = [(ODDSiriSchemaODDMobileAssetErrorsReported *)self maErrorsDigests];
  fixedDimensions2 = [equalCopy maErrorsDigests];
  if ((fixedDimensions != 0) == (fixedDimensions2 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  maErrorsDigests = [(ODDSiriSchemaODDMobileAssetErrorsReported *)self maErrorsDigests];
  if (maErrorsDigests)
  {
    v13 = maErrorsDigests;
    maErrorsDigests2 = [(ODDSiriSchemaODDMobileAssetErrorsReported *)self maErrorsDigests];
    maErrorsDigests3 = [equalCopy maErrorsDigests];
    v16 = [maErrorsDigests2 isEqual:maErrorsDigests3];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) == (equalCopy[28] & 1))
  {
    if ((*&self->_has & 1) == 0 || (maEventType = self->_maEventType, maEventType == [equalCopy maEventType]))
    {
      v17 = 1;
      goto LABEL_13;
    }
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
  fixedDimensions = [(ODDSiriSchemaODDMobileAssetErrorsReported *)self fixedDimensions];

  if (fixedDimensions)
  {
    fixedDimensions2 = [(ODDSiriSchemaODDMobileAssetErrorsReported *)self fixedDimensions];
    PBDataWriterWriteSubmessage();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = self->_maErrorsDigests;
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

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)addMaErrorsDigest:(id)digest
{
  digestCopy = digest;
  maErrorsDigests = self->_maErrorsDigests;
  v8 = digestCopy;
  if (!maErrorsDigests)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_maErrorsDigests;
    self->_maErrorsDigests = array;

    digestCopy = v8;
    maErrorsDigests = self->_maErrorsDigests;
  }

  [(NSArray *)maErrorsDigests addObject:digestCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v12.receiver = self;
  v12.super_class = ODDSiriSchemaODDMobileAssetErrorsReported;
  v5 = [(SISchemaInstrumentationMessage *)&v12 applySensitiveConditionsPolicy:policyCopy];
  fixedDimensions = [(ODDSiriSchemaODDMobileAssetErrorsReported *)self fixedDimensions];
  v7 = [fixedDimensions applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ODDSiriSchemaODDMobileAssetErrorsReported *)self deleteFixedDimensions];
  }

  maErrorsDigests = [(ODDSiriSchemaODDMobileAssetErrorsReported *)self maErrorsDigests];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:maErrorsDigests underConditions:policyCopy];
  [(ODDSiriSchemaODDMobileAssetErrorsReported *)self setMaErrorsDigests:v10];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end