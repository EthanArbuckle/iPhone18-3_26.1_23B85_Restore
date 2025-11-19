@interface SADSchemaSADTrialRollout
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SADSchemaSADTrialRollout)initWithDictionary:(id)a3;
- (SADSchemaSADTrialRollout)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation SADSchemaSADTrialRollout

- (SADSchemaSADTrialRollout)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SADSchemaSADTrialRollout;
  v5 = [(SADSchemaSADTrialRollout *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"rolloutId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SADSchemaSADTrialRollout *)v5 setRolloutId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"deployment"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SADSchemaSADTrialRollout setDeployment:](v5, "setDeployment:", [v8 unsignedIntValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"factorPack"];
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

- (SADSchemaSADTrialRollout)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SADSchemaSADTrialRollout *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SADSchemaSADTrialRollout *)self dictionaryRepresentation];
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
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SADSchemaSADTrialRollout deployment](self, "deployment")}];
    [v3 setObject:v4 forKeyedSubscript:@"deployment"];
  }

  if (self->_factorPack)
  {
    v5 = [(SADSchemaSADTrialRollout *)self factorPack];
    v6 = [v5 copy];
    [v3 setObject:v6 forKeyedSubscript:@"factorPack"];
  }

  if (self->_rolloutId)
  {
    v7 = [(SADSchemaSADTrialRollout *)self rolloutId];
    v8 = [v7 copy];
    [v3 setObject:v8 forKeyedSubscript:@"rolloutId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  v5 = [(SADSchemaSADTrialRollout *)self rolloutId];
  v6 = [v4 rolloutId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_14;
  }

  v7 = [(SADSchemaSADTrialRollout *)self rolloutId];
  if (v7)
  {
    v8 = v7;
    v9 = [(SADSchemaSADTrialRollout *)self rolloutId];
    v10 = [v4 rolloutId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    deployment = self->_deployment;
    if (deployment != [v4 deployment])
    {
      goto LABEL_15;
    }
  }

  v5 = [(SADSchemaSADTrialRollout *)self factorPack];
  v6 = [v4 factorPack];
  if ((v5 != 0) != (v6 == 0))
  {
    v13 = [(SADSchemaSADTrialRollout *)self factorPack];
    if (!v13)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = v13;
    v15 = [(SADSchemaSADTrialRollout *)self factorPack];
    v16 = [v4 factorPack];
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
  v4 = [(SADSchemaSADTrialRollout *)self rolloutId];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }

  v5 = [(SADSchemaSADTrialRollout *)self factorPack];

  v6 = v7;
  if (v5)
  {
    PBDataWriterWriteStringField();
    v6 = v7;
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end