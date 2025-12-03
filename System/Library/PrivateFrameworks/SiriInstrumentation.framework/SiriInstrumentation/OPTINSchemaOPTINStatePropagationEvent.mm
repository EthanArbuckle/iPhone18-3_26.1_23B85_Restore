@interface OPTINSchemaOPTINStatePropagationEvent
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (OPTINSchemaOPTINStatePropagationEvent)initWithDictionary:(id)dictionary;
- (OPTINSchemaOPTINStatePropagationEvent)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasPropagationState:(BOOL)state;
- (void)writeTo:(id)to;
@end

@implementation OPTINSchemaOPTINStatePropagationEvent

- (OPTINSchemaOPTINStatePropagationEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = OPTINSchemaOPTINStatePropagationEvent;
  v5 = [(OPTINSchemaOPTINStatePropagationEvent *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"optInState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[OPTINSchemaOPTINStatePropagationEvent setOptInState:](v5, "setOptInState:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"propagationState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[OPTINSchemaOPTINStatePropagationEvent setPropagationState:](v5, "setPropagationState:", [v7 intValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"hashedHomeKitAccessoryId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(OPTINSchemaOPTINStatePropagationEvent *)v5 setHashedHomeKitAccessoryId:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (OPTINSchemaOPTINStatePropagationEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(OPTINSchemaOPTINStatePropagationEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(OPTINSchemaOPTINStatePropagationEvent *)self dictionaryRepresentation];
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
  if (self->_hashedHomeKitAccessoryId)
  {
    hashedHomeKitAccessoryId = [(OPTINSchemaOPTINStatePropagationEvent *)self hashedHomeKitAccessoryId];
    dictionaryRepresentation = [hashedHomeKitAccessoryId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"hashedHomeKitAccessoryId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"hashedHomeKitAccessoryId"];
    }
  }

  has = self->_has;
  if (has)
  {
    v8 = [(OPTINSchemaOPTINStatePropagationEvent *)self optInState]- 1;
    if (v8 > 2)
    {
      v9 = @"UNKNOWN";
    }

    else
    {
      v9 = off_1E78DE618[v8];
    }

    [dictionary setObject:v9 forKeyedSubscript:@"optInState"];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v10 = [(OPTINSchemaOPTINStatePropagationEvent *)self propagationState]- 1;
    if (v10 > 3)
    {
      v11 = @"OPTINPROPAGATIONSTATE_UNKNOWN";
    }

    else
    {
      v11 = off_1E78DE630[v10];
    }

    [dictionary setObject:v11 forKeyedSubscript:@"propagationState"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_optInState;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v7 ^ v6 ^ [(SISchemaUUID *)self->_hashedHomeKitAccessoryId hash:v3];
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761 * self->_propagationState;
  return v7 ^ v6 ^ [(SISchemaUUID *)self->_hashedHomeKitAccessoryId hash:v3];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  has = self->_has;
  v6 = equalCopy[24];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_14;
  }

  if (*&has)
  {
    optInState = self->_optInState;
    if (optInState != [equalCopy optInState])
    {
      goto LABEL_14;
    }

    has = self->_has;
    v6 = equalCopy[24];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (!v8 || (propagationState = self->_propagationState, propagationState == [equalCopy propagationState]))
    {
      hashedHomeKitAccessoryId = [(OPTINSchemaOPTINStatePropagationEvent *)self hashedHomeKitAccessoryId];
      hashedHomeKitAccessoryId2 = [equalCopy hashedHomeKitAccessoryId];
      v12 = hashedHomeKitAccessoryId2;
      if ((hashedHomeKitAccessoryId != 0) != (hashedHomeKitAccessoryId2 == 0))
      {
        hashedHomeKitAccessoryId3 = [(OPTINSchemaOPTINStatePropagationEvent *)self hashedHomeKitAccessoryId];
        if (!hashedHomeKitAccessoryId3)
        {

LABEL_17:
          v18 = 1;
          goto LABEL_15;
        }

        v14 = hashedHomeKitAccessoryId3;
        hashedHomeKitAccessoryId4 = [(OPTINSchemaOPTINStatePropagationEvent *)self hashedHomeKitAccessoryId];
        hashedHomeKitAccessoryId5 = [equalCopy hashedHomeKitAccessoryId];
        v17 = [hashedHomeKitAccessoryId4 isEqual:hashedHomeKitAccessoryId5];

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

- (void)writeTo:(id)to
{
  toCopy = to;
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

  hashedHomeKitAccessoryId = [(OPTINSchemaOPTINStatePropagationEvent *)self hashedHomeKitAccessoryId];

  v6 = toCopy;
  if (hashedHomeKitAccessoryId)
  {
    hashedHomeKitAccessoryId2 = [(OPTINSchemaOPTINStatePropagationEvent *)self hashedHomeKitAccessoryId];
    PBDataWriterWriteSubmessage();

    v6 = toCopy;
  }
}

- (void)setHasPropagationState:(BOOL)state
{
  if (state)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = OPTINSchemaOPTINStatePropagationEvent;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(OPTINSchemaOPTINStatePropagationEvent *)self hashedHomeKitAccessoryId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(OPTINSchemaOPTINStatePropagationEvent *)self deleteHashedHomeKitAccessoryId];
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