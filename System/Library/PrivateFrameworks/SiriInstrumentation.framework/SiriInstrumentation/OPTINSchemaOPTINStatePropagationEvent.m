@interface OPTINSchemaOPTINStatePropagationEvent
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (OPTINSchemaOPTINStatePropagationEvent)initWithDictionary:(id)a3;
- (OPTINSchemaOPTINStatePropagationEvent)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasPropagationState:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation OPTINSchemaOPTINStatePropagationEvent

- (OPTINSchemaOPTINStatePropagationEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = OPTINSchemaOPTINStatePropagationEvent;
  v5 = [(OPTINSchemaOPTINStatePropagationEvent *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"optInState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[OPTINSchemaOPTINStatePropagationEvent setOptInState:](v5, "setOptInState:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"propagationState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[OPTINSchemaOPTINStatePropagationEvent setPropagationState:](v5, "setPropagationState:", [v7 intValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"hashedHomeKitAccessoryId"];
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

- (OPTINSchemaOPTINStatePropagationEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(OPTINSchemaOPTINStatePropagationEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(OPTINSchemaOPTINStatePropagationEvent *)self dictionaryRepresentation];
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
  if (self->_hashedHomeKitAccessoryId)
  {
    v4 = [(OPTINSchemaOPTINStatePropagationEvent *)self hashedHomeKitAccessoryId];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"hashedHomeKitAccessoryId"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"hashedHomeKitAccessoryId"];
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

    [v3 setObject:v9 forKeyedSubscript:@"optInState"];
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

    [v3 setObject:v11 forKeyedSubscript:@"propagationState"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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
    optInState = self->_optInState;
    if (optInState != [v4 optInState])
    {
      goto LABEL_14;
    }

    has = self->_has;
    v6 = v4[24];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (!v8 || (propagationState = self->_propagationState, propagationState == [v4 propagationState]))
    {
      v10 = [(OPTINSchemaOPTINStatePropagationEvent *)self hashedHomeKitAccessoryId];
      v11 = [v4 hashedHomeKitAccessoryId];
      v12 = v11;
      if ((v10 != 0) != (v11 == 0))
      {
        v13 = [(OPTINSchemaOPTINStatePropagationEvent *)self hashedHomeKitAccessoryId];
        if (!v13)
        {

LABEL_17:
          v18 = 1;
          goto LABEL_15;
        }

        v14 = v13;
        v15 = [(OPTINSchemaOPTINStatePropagationEvent *)self hashedHomeKitAccessoryId];
        v16 = [v4 hashedHomeKitAccessoryId];
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
  v8 = a3;
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

  v5 = [(OPTINSchemaOPTINStatePropagationEvent *)self hashedHomeKitAccessoryId];

  v6 = v8;
  if (v5)
  {
    v7 = [(OPTINSchemaOPTINStatePropagationEvent *)self hashedHomeKitAccessoryId];
    PBDataWriterWriteSubmessage();

    v6 = v8;
  }
}

- (void)setHasPropagationState:(BOOL)a3
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

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = OPTINSchemaOPTINStatePropagationEvent;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(OPTINSchemaOPTINStatePropagationEvent *)self hashedHomeKitAccessoryId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
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