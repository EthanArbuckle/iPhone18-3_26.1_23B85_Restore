@interface SISchemaUEISiriWasUnavailable
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SISchemaUEISiriWasUnavailable)initWithDictionary:(id)a3;
- (SISchemaUEISiriWasUnavailable)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int)assetTypeAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)addAssetType:(int)a3;
- (void)setHasReason:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SISchemaUEISiriWasUnavailable

- (SISchemaUEISiriWasUnavailable)initWithDictionary:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v22.receiver = self;
  v22.super_class = SISchemaUEISiriWasUnavailable;
  v5 = [(SISchemaUEISiriWasUnavailable *)&v22 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"product"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaUEISiriWasUnavailable setProduct:](v5, "setProduct:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"reason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaUEISiriWasUnavailable setReason:](v5, "setReason:", [v7 intValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"assetType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v6;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v19;
        do
        {
          v13 = 0;
          do
          {
            if (*v19 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v18 + 1) + 8 * v13);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[SISchemaUEISiriWasUnavailable addAssetType:](v5, "addAssetType:", [v14 intValue]);
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
        }

        while (v11);
      }

      v6 = v17;
    }

    v15 = v5;
  }

  return v5;
}

- (SISchemaUEISiriWasUnavailable)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SISchemaUEISiriWasUnavailable *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SISchemaUEISiriWasUnavailable *)self dictionaryRepresentation];
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_assetTypes count])
  {
    v4 = [(SISchemaUEISiriWasUnavailable *)self assetTypes];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"assetType"];
  }

  has = self->_has;
  if (has)
  {
    v7 = [(SISchemaUEISiriWasUnavailable *)self product];
    v8 = @"PRODUCT_UNKNOWN";
    if (v7 == 1)
    {
      v8 = @"PRODUCT_ASSISTANT";
    }

    if (v7 == 2)
    {
      v9 = @"PRODUCT_DICTATION";
    }

    else
    {
      v9 = v8;
    }

    [v3 setObject:v9 forKeyedSubscript:@"product"];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v10 = [(SISchemaUEISiriWasUnavailable *)self reason];
    v11 = @"SIRIUNAVAILABLEREASON_UNKNOWN";
    if (v10 == 1)
    {
      v11 = @"SIRIUNAVAILABLEREASON_THERMAL_MITIGATION";
    }

    if (v10 == 2)
    {
      v12 = @"SIRIUNAVAILABLEREASON_MISSING_ASSET";
    }

    else
    {
      v12 = v11;
    }

    [v3 setObject:v12 forKeyedSubscript:@"reason"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_product;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v7 ^ v6 ^ [(NSArray *)self->_assetTypes hash:v3];
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761 * self->_reason;
  return v7 ^ v6 ^ [(NSArray *)self->_assetTypes hash:v3];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  has = self->_has;
  v6 = v4[24];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_14;
  }

  if (*&has)
  {
    product = self->_product;
    if (product != [v4 product])
    {
      goto LABEL_14;
    }

    has = self->_has;
    v6 = v4[24];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (!v8 || (reason = self->_reason, reason == [v4 reason]))
    {
      v10 = [(SISchemaUEISiriWasUnavailable *)self assetTypes];
      v11 = [v4 assetTypes];
      v12 = v11;
      if ((v10 != 0) != (v11 == 0))
      {
        v13 = [(SISchemaUEISiriWasUnavailable *)self assetTypes];
        if (!v13)
        {

LABEL_17:
          v18 = 1;
          goto LABEL_15;
        }

        v14 = v13;
        v15 = [(SISchemaUEISiriWasUnavailable *)self assetTypes];
        v16 = [v4 assetTypes];
        v17 = [v15 isEqual:v16];

        if (v17)
        {
          goto LABEL_17;
        }
      }

      else
      {
      }
    }
  }

LABEL_14:
  v18 = 0;
LABEL_15:

  return v18;
}

- (void)writeTo:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_assetTypes;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * i) intValue];
        PBDataWriterWriteInt32Field();
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (int)assetTypeAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_assetTypes objectAtIndexedSubscript:a3];
  v4 = [v3 intValue];

  return v4;
}

- (void)addAssetType:(int)a3
{
  v3 = *&a3;
  assetTypes = self->_assetTypes;
  if (!assetTypes)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_assetTypes;
    self->_assetTypes = v6;

    assetTypes = self->_assetTypes;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)assetTypes addObject:v8];
}

- (void)setHasReason:(BOOL)a3
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

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end