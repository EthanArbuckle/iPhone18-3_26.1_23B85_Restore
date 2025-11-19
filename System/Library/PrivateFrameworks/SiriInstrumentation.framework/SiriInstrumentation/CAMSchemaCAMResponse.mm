@interface CAMSchemaCAMResponse
- (BOOL)isEqual:(id)a3;
- (CAMSchemaCAMResponse)initWithDictionary:(id)a3;
- (CAMSchemaCAMResponse)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasResponseStatusCode:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CAMSchemaCAMResponse

- (CAMSchemaCAMResponse)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CAMSchemaCAMResponse;
  v5 = [(CAMSchemaCAMResponse *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"action"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAMSchemaCAMResponse setAction:](v5, "setAction:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"responseStatusCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAMSchemaCAMResponse setResponseStatusCode:](v5, "setResponseStatusCode:", [v7 unsignedIntValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"enforcer"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(CAMSchemaCAMResponse *)v5 setEnforcer:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (CAMSchemaCAMResponse)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(CAMSchemaCAMResponse *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(CAMSchemaCAMResponse *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = [(CAMSchemaCAMResponse *)self action]- 1;
    if (v4 > 5)
    {
      v5 = @"CAMACTION_UNKNOWN";
    }

    else
    {
      v5 = off_1E78D2348[v4];
    }

    [v3 setObject:v5 forKeyedSubscript:@"action"];
  }

  if (self->_enforcer)
  {
    v6 = [(CAMSchemaCAMResponse *)self enforcer];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"enforcer"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CAMSchemaCAMResponse responseStatusCode](self, "responseStatusCode")}];
    [v3 setObject:v8 forKeyedSubscript:@"responseStatusCode"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_action;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v7 ^ v6 ^ [(NSString *)self->_enforcer hash:v3];
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761 * self->_responseStatusCode;
  return v7 ^ v6 ^ [(NSString *)self->_enforcer hash:v3];
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
    action = self->_action;
    if (action != [v4 action])
    {
      goto LABEL_14;
    }

    has = self->_has;
    v6 = v4[24];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (!v8 || (responseStatusCode = self->_responseStatusCode, responseStatusCode == [v4 responseStatusCode]))
    {
      v10 = [(CAMSchemaCAMResponse *)self enforcer];
      v11 = [v4 enforcer];
      v12 = v11;
      if ((v10 != 0) != (v11 == 0))
      {
        v13 = [(CAMSchemaCAMResponse *)self enforcer];
        if (!v13)
        {

LABEL_17:
          v18 = 1;
          goto LABEL_15;
        }

        v14 = v13;
        v15 = [(CAMSchemaCAMResponse *)self enforcer];
        v16 = [v4 enforcer];
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
  v7 = a3;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
  }

  v5 = [(CAMSchemaCAMResponse *)self enforcer];

  v6 = v7;
  if (v5)
  {
    PBDataWriterWriteStringField();
    v6 = v7;
  }
}

- (void)setHasResponseStatusCode:(BOOL)a3
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