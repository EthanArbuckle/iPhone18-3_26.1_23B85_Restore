@interface SADSchemaSADTrialRollout
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SADSchemaSADTrialRollout)initWithDictionary:(id)dictionary;
- (SADSchemaSADTrialRollout)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation SADSchemaSADTrialRollout

- (SADSchemaSADTrialRollout)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = SADSchemaSADTrialRollout;
  v5 = [(SADSchemaSADTrialRollout *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"rolloutId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SADSchemaSADTrialRollout *)v5 setRolloutId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"deployment"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SADSchemaSADTrialRollout setDeployment:](v5, "setDeployment:", [v8 unsignedIntValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"factorPack"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(SADSchemaSADTrialRollout *)v5 setFactorPack:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (SADSchemaSADTrialRollout)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SADSchemaSADTrialRollout *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SADSchemaSADTrialRollout *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SADSchemaSADTrialRollout deployment](self, "deployment")}];
    [dictionary setObject:v4 forKeyedSubscript:@"deployment"];
  }

  if (self->_factorPack)
  {
    factorPack = [(SADSchemaSADTrialRollout *)self factorPack];
    v6 = [factorPack copy];
    [dictionary setObject:v6 forKeyedSubscript:@"factorPack"];
  }

  if (self->_rolloutId)
  {
    rolloutId = [(SADSchemaSADTrialRollout *)self rolloutId];
    v8 = [rolloutId copy];
    [dictionary setObject:v8 forKeyedSubscript:@"rolloutId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_rolloutId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_deployment;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(NSString *)self->_factorPack hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  rolloutId = [(SADSchemaSADTrialRollout *)self rolloutId];
  rolloutId2 = [equalCopy rolloutId];
  if ((rolloutId != 0) == (rolloutId2 == 0))
  {
    goto LABEL_14;
  }

  rolloutId3 = [(SADSchemaSADTrialRollout *)self rolloutId];
  if (rolloutId3)
  {
    v8 = rolloutId3;
    rolloutId4 = [(SADSchemaSADTrialRollout *)self rolloutId];
    rolloutId5 = [equalCopy rolloutId];
    v11 = [rolloutId4 isEqual:rolloutId5];

    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    deployment = self->_deployment;
    if (deployment != [equalCopy deployment])
    {
      goto LABEL_15;
    }
  }

  rolloutId = [(SADSchemaSADTrialRollout *)self factorPack];
  rolloutId2 = [equalCopy factorPack];
  if ((rolloutId != 0) != (rolloutId2 == 0))
  {
    factorPack = [(SADSchemaSADTrialRollout *)self factorPack];
    if (!factorPack)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = factorPack;
    factorPack2 = [(SADSchemaSADTrialRollout *)self factorPack];
    factorPack3 = [equalCopy factorPack];
    v17 = [factorPack2 isEqual:factorPack3];

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
  rolloutId = [(SADSchemaSADTrialRollout *)self rolloutId];

  if (rolloutId)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }

  factorPack = [(SADSchemaSADTrialRollout *)self factorPack];

  v6 = toCopy;
  if (factorPack)
  {
    PBDataWriterWriteStringField();
    v6 = toCopy;
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end