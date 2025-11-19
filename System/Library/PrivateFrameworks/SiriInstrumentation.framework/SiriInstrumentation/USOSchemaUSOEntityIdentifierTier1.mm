@interface USOSchemaUSOEntityIdentifierTier1
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (USOSchemaUSOEntityIdentifierTier1)initWithDictionary:(id)a3;
- (USOSchemaUSOEntityIdentifierTier1)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation USOSchemaUSOEntityIdentifierTier1

- (USOSchemaUSOEntityIdentifierTier1)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = USOSchemaUSOEntityIdentifierTier1;
  v5 = [(USOSchemaUSOEntityIdentifierTier1 *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"index"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[USOSchemaUSOEntityIdentifierTier1 setIndex:](v5, "setIndex:", [v6 unsignedIntValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"value"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(USOSchemaUSOEntityIdentifierTier1 *)v5 setValue:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"backingAppBundleId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(USOSchemaUSOEntityIdentifierTier1 *)v5 setBackingAppBundleId:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (USOSchemaUSOEntityIdentifierTier1)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(USOSchemaUSOEntityIdentifierTier1 *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(USOSchemaUSOEntityIdentifierTier1 *)self dictionaryRepresentation];
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
  if (self->_backingAppBundleId)
  {
    v4 = [(USOSchemaUSOEntityIdentifierTier1 *)self backingAppBundleId];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"backingAppBundleId"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[USOSchemaUSOEntityIdentifierTier1 index](self, "index")}];
    [v3 setObject:v6 forKeyedSubscript:@"index"];
  }

  if (self->_value)
  {
    v7 = [(USOSchemaUSOEntityIdentifierTier1 *)self value];
    v8 = [v7 copy];
    [v3 setObject:v8 forKeyedSubscript:@"value"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_index;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_value hash]^ v3;
  return v4 ^ [(NSString *)self->_backingAppBundleId hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if ((*&self->_has & 1) != (v4[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    index = self->_index;
    if (index != [v4 index])
    {
      goto LABEL_15;
    }
  }

  v6 = [(USOSchemaUSOEntityIdentifierTier1 *)self value];
  v7 = [v4 value];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_14;
  }

  v8 = [(USOSchemaUSOEntityIdentifierTier1 *)self value];
  if (v8)
  {
    v9 = v8;
    v10 = [(USOSchemaUSOEntityIdentifierTier1 *)self value];
    v11 = [v4 value];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v6 = [(USOSchemaUSOEntityIdentifierTier1 *)self backingAppBundleId];
  v7 = [v4 backingAppBundleId];
  if ((v6 != 0) != (v7 == 0))
  {
    v13 = [(USOSchemaUSOEntityIdentifierTier1 *)self backingAppBundleId];
    if (!v13)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = v13;
    v15 = [(USOSchemaUSOEntityIdentifierTier1 *)self backingAppBundleId];
    v16 = [v4 backingAppBundleId];
    v17 = [v15 isEqual:v16];

    if (v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
LABEL_14:
  }

LABEL_15:
  v18 = 0;
LABEL_16:

  return v18;
}

- (void)writeTo:(id)a3
{
  v7 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }

  v4 = [(USOSchemaUSOEntityIdentifierTier1 *)self value];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(USOSchemaUSOEntityIdentifierTier1 *)self backingAppBundleId];

  v6 = v7;
  if (v5)
  {
    PBDataWriterWriteStringField();
    v6 = v7;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = USOSchemaUSOEntityIdentifierTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v7 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:2])
  {
    [(USOSchemaUSOEntityIdentifierTier1 *)self deleteValue];
    [(USOSchemaUSOEntityIdentifierTier1 *)self deleteBackingAppBundleId];
  }

  if ([v4 isConditionSet:4])
  {
    [(USOSchemaUSOEntityIdentifierTier1 *)self deleteValue];
    [(USOSchemaUSOEntityIdentifierTier1 *)self deleteBackingAppBundleId];
  }

  if ([v4 isConditionSet:5])
  {
    [(USOSchemaUSOEntityIdentifierTier1 *)self deleteValue];
    [(USOSchemaUSOEntityIdentifierTier1 *)self deleteBackingAppBundleId];
  }

  if ([v4 isConditionSet:6])
  {
    [(USOSchemaUSOEntityIdentifierTier1 *)self deleteValue];
    [(USOSchemaUSOEntityIdentifierTier1 *)self deleteBackingAppBundleId];
  }

  if ([v4 isConditionSet:7])
  {
    [(USOSchemaUSOEntityIdentifierTier1 *)self deleteValue];
    [(USOSchemaUSOEntityIdentifierTier1 *)self deleteBackingAppBundleId];
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