@interface USOSchemaUSOEntityIdentifierTier1
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (USOSchemaUSOEntityIdentifierTier1)initWithDictionary:(id)dictionary;
- (USOSchemaUSOEntityIdentifierTier1)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation USOSchemaUSOEntityIdentifierTier1

- (USOSchemaUSOEntityIdentifierTier1)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = USOSchemaUSOEntityIdentifierTier1;
  v5 = [(USOSchemaUSOEntityIdentifierTier1 *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"index"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[USOSchemaUSOEntityIdentifierTier1 setIndex:](v5, "setIndex:", [v6 unsignedIntValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"value"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(USOSchemaUSOEntityIdentifierTier1 *)v5 setValue:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"backingAppBundleId"];
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

- (USOSchemaUSOEntityIdentifierTier1)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(USOSchemaUSOEntityIdentifierTier1 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(USOSchemaUSOEntityIdentifierTier1 *)self dictionaryRepresentation];
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
  if (self->_backingAppBundleId)
  {
    backingAppBundleId = [(USOSchemaUSOEntityIdentifierTier1 *)self backingAppBundleId];
    v5 = [backingAppBundleId copy];
    [dictionary setObject:v5 forKeyedSubscript:@"backingAppBundleId"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[USOSchemaUSOEntityIdentifierTier1 index](self, "index")}];
    [dictionary setObject:v6 forKeyedSubscript:@"index"];
  }

  if (self->_value)
  {
    value = [(USOSchemaUSOEntityIdentifierTier1 *)self value];
    v8 = [value copy];
    [dictionary setObject:v8 forKeyedSubscript:@"value"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if ((*&self->_has & 1) != (equalCopy[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    index = self->_index;
    if (index != [equalCopy index])
    {
      goto LABEL_15;
    }
  }

  value = [(USOSchemaUSOEntityIdentifierTier1 *)self value];
  value2 = [equalCopy value];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_14;
  }

  value3 = [(USOSchemaUSOEntityIdentifierTier1 *)self value];
  if (value3)
  {
    v9 = value3;
    value4 = [(USOSchemaUSOEntityIdentifierTier1 *)self value];
    value5 = [equalCopy value];
    v12 = [value4 isEqual:value5];

    if (!v12)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  value = [(USOSchemaUSOEntityIdentifierTier1 *)self backingAppBundleId];
  value2 = [equalCopy backingAppBundleId];
  if ((value != 0) != (value2 == 0))
  {
    backingAppBundleId = [(USOSchemaUSOEntityIdentifierTier1 *)self backingAppBundleId];
    if (!backingAppBundleId)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = backingAppBundleId;
    backingAppBundleId2 = [(USOSchemaUSOEntityIdentifierTier1 *)self backingAppBundleId];
    backingAppBundleId3 = [equalCopy backingAppBundleId];
    v17 = [backingAppBundleId2 isEqual:backingAppBundleId3];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }

  value = [(USOSchemaUSOEntityIdentifierTier1 *)self value];

  if (value)
  {
    PBDataWriterWriteStringField();
  }

  backingAppBundleId = [(USOSchemaUSOEntityIdentifierTier1 *)self backingAppBundleId];

  v6 = toCopy;
  if (backingAppBundleId)
  {
    PBDataWriterWriteStringField();
    v6 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v7.receiver = self;
  v7.super_class = USOSchemaUSOEntityIdentifierTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v7 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(USOSchemaUSOEntityIdentifierTier1 *)self deleteValue];
    [(USOSchemaUSOEntityIdentifierTier1 *)self deleteBackingAppBundleId];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(USOSchemaUSOEntityIdentifierTier1 *)self deleteValue];
    [(USOSchemaUSOEntityIdentifierTier1 *)self deleteBackingAppBundleId];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(USOSchemaUSOEntityIdentifierTier1 *)self deleteValue];
    [(USOSchemaUSOEntityIdentifierTier1 *)self deleteBackingAppBundleId];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(USOSchemaUSOEntityIdentifierTier1 *)self deleteValue];
    [(USOSchemaUSOEntityIdentifierTier1 *)self deleteBackingAppBundleId];
  }

  if ([policyCopy isConditionSet:7])
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