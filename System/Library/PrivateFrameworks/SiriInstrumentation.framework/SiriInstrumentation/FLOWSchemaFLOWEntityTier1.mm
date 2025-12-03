@interface FLOWSchemaFLOWEntityTier1
- (BOOL)isEqual:(id)equal;
- (FLOWSchemaFLOWEntityTier1)initWithDictionary:(id)dictionary;
- (FLOWSchemaFLOWEntityTier1)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation FLOWSchemaFLOWEntityTier1

- (FLOWSchemaFLOWEntityTier1)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = FLOWSchemaFLOWEntityTier1;
  v5 = [(FLOWSchemaFLOWEntityTier1 *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"entityId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(FLOWSchemaFLOWEntityTier1 *)v5 setEntityId:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (FLOWSchemaFLOWEntityTier1)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWEntityTier1 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(FLOWSchemaFLOWEntityTier1 *)self dictionaryRepresentation];
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
  if (self->_entityId)
  {
    entityId = [(FLOWSchemaFLOWEntityTier1 *)self entityId];
    v5 = [entityId copy];
    [dictionary setObject:v5 forKeyedSubscript:@"entityId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    entityId = [(FLOWSchemaFLOWEntityTier1 *)self entityId];
    entityId2 = [equalCopy entityId];
    v7 = entityId2;
    if ((entityId != 0) != (entityId2 == 0))
    {
      entityId3 = [(FLOWSchemaFLOWEntityTier1 *)self entityId];
      if (!entityId3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = entityId3;
      entityId4 = [(FLOWSchemaFLOWEntityTier1 *)self entityId];
      entityId5 = [equalCopy entityId];
      v12 = [entityId4 isEqual:entityId5];

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
  toCopy = to;
  entityId = [(FLOWSchemaFLOWEntityTier1 *)self entityId];

  if (entityId)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v7.receiver = self;
  v7.super_class = FLOWSchemaFLOWEntityTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v7 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(FLOWSchemaFLOWEntityTier1 *)self deleteEntityId];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(FLOWSchemaFLOWEntityTier1 *)self deleteEntityId];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(FLOWSchemaFLOWEntityTier1 *)self deleteEntityId];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(FLOWSchemaFLOWEntityTier1 *)self deleteEntityId];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(FLOWSchemaFLOWEntityTier1 *)self deleteEntityId];
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