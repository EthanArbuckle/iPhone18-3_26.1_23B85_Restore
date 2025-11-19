@interface ODDSiriSchemaODDMobileAssetErrorsReported
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ODDSiriSchemaODDMobileAssetErrorsReported)initWithDictionary:(id)a3;
- (ODDSiriSchemaODDMobileAssetErrorsReported)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addMaErrorsDigest:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ODDSiriSchemaODDMobileAssetErrorsReported

- (ODDSiriSchemaODDMobileAssetErrorsReported)initWithDictionary:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v24.receiver = self;
  v24.super_class = ODDSiriSchemaODDMobileAssetErrorsReported;
  v5 = [(ODDSiriSchemaODDMobileAssetErrorsReported *)&v24 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"fixedDimensions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ODDSiriSchemaODDFixedDimensions alloc] initWithDictionary:v6];
      [(ODDSiriSchemaODDMobileAssetErrorsReported *)v5 setFixedDimensions:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"maErrorsDigest"];
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

    v16 = [v4 objectForKeyedSubscript:@"maEventType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDMobileAssetErrorsReported setMaEventType:](v5, "setMaEventType:", [v16 intValue]);
    }

    v17 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDMobileAssetErrorsReported)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDMobileAssetErrorsReported *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ODDSiriSchemaODDMobileAssetErrorsReported *)self dictionaryRepresentation];
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
  if (self->_fixedDimensions)
  {
    v4 = [(ODDSiriSchemaODDMobileAssetErrorsReported *)self fixedDimensions];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"fixedDimensions"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"fixedDimensions"];
    }
  }

  if ([(NSArray *)self->_maErrorsDigests count])
  {
    v7 = [MEMORY[0x1E695DF70] array];
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

    [v3 setObject:v7 forKeyedSubscript:@"maErrorsDigest"];
  }

  if (*&self->_has)
  {
    v15 = [(ODDSiriSchemaODDMobileAssetErrorsReported *)self maEventType];
    v16 = @"ODDMAEVENTTYPE_UNKNOWN";
    if (v15 == 1)
    {
      v16 = @"ODDMAEVENTTYPE_DOWNLOAD_ERROR";
    }

    if (v15 == 2)
    {
      v17 = @"ODDMAEVENTTYPE_SECURE_DETAIL";
    }

    else
    {
      v17 = v16;
    }

    [v3 setObject:v17 forKeyedSubscript:{@"maEventType", v19}];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v19];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(ODDSiriSchemaODDMobileAssetErrorsReported *)self fixedDimensions];
  v6 = [v4 fixedDimensions];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(ODDSiriSchemaODDMobileAssetErrorsReported *)self fixedDimensions];
  if (v7)
  {
    v8 = v7;
    v9 = [(ODDSiriSchemaODDMobileAssetErrorsReported *)self fixedDimensions];
    v10 = [v4 fixedDimensions];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(ODDSiriSchemaODDMobileAssetErrorsReported *)self maErrorsDigests];
  v6 = [v4 maErrorsDigests];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  v12 = [(ODDSiriSchemaODDMobileAssetErrorsReported *)self maErrorsDigests];
  if (v12)
  {
    v13 = v12;
    v14 = [(ODDSiriSchemaODDMobileAssetErrorsReported *)self maErrorsDigests];
    v15 = [v4 maErrorsDigests];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) == (v4[28] & 1))
  {
    if ((*&self->_has & 1) == 0 || (maEventType = self->_maEventType, maEventType == [v4 maEventType]))
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

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(ODDSiriSchemaODDMobileAssetErrorsReported *)self fixedDimensions];

  if (v5)
  {
    v6 = [(ODDSiriSchemaODDMobileAssetErrorsReported *)self fixedDimensions];
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

- (void)addMaErrorsDigest:(id)a3
{
  v4 = a3;
  maErrorsDigests = self->_maErrorsDigests;
  v8 = v4;
  if (!maErrorsDigests)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_maErrorsDigests;
    self->_maErrorsDigests = v6;

    v4 = v8;
    maErrorsDigests = self->_maErrorsDigests;
  }

  [(NSArray *)maErrorsDigests addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = ODDSiriSchemaODDMobileAssetErrorsReported;
  v5 = [(SISchemaInstrumentationMessage *)&v12 applySensitiveConditionsPolicy:v4];
  v6 = [(ODDSiriSchemaODDMobileAssetErrorsReported *)self fixedDimensions];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(ODDSiriSchemaODDMobileAssetErrorsReported *)self deleteFixedDimensions];
  }

  v9 = [(ODDSiriSchemaODDMobileAssetErrorsReported *)self maErrorsDigests];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v9 underConditions:v4];
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