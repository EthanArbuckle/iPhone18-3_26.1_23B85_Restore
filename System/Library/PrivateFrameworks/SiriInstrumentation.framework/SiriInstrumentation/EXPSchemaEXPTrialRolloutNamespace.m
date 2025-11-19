@interface EXPSchemaEXPTrialRolloutNamespace
- (BOOL)isEqual:(id)a3;
- (EXPSchemaEXPTrialRolloutNamespace)initWithDictionary:(id)a3;
- (EXPSchemaEXPTrialRolloutNamespace)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation EXPSchemaEXPTrialRolloutNamespace

- (EXPSchemaEXPTrialRolloutNamespace)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = EXPSchemaEXPTrialRolloutNamespace;
  v5 = [(EXPSchemaEXPTrialRolloutNamespace *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"name"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(EXPSchemaEXPTrialRolloutNamespace *)v5 setName:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"compatibilityVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[EXPSchemaEXPTrialRolloutNamespace setCompatibilityVersion:](v5, "setCompatibilityVersion:", [v8 unsignedIntValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"factorPackId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(EXPSchemaEXPTrialRolloutNamespace *)v5 setFactorPackId:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (EXPSchemaEXPTrialRolloutNamespace)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(EXPSchemaEXPTrialRolloutNamespace *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(EXPSchemaEXPTrialRolloutNamespace *)self dictionaryRepresentation];
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
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[EXPSchemaEXPTrialRolloutNamespace compatibilityVersion](self, "compatibilityVersion")}];
    [v3 setObject:v4 forKeyedSubscript:@"compatibilityVersion"];
  }

  if (self->_factorPackId)
  {
    v5 = [(EXPSchemaEXPTrialRolloutNamespace *)self factorPackId];
    v6 = [v5 copy];
    [v3 setObject:v6 forKeyedSubscript:@"factorPackId"];
  }

  if (self->_name)
  {
    v7 = [(EXPSchemaEXPTrialRolloutNamespace *)self name];
    v8 = [v7 copy];
    [v3 setObject:v8 forKeyedSubscript:@"name"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_compatibilityVersion;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(NSString *)self->_factorPackId hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  v5 = [(EXPSchemaEXPTrialRolloutNamespace *)self name];
  v6 = [v4 name];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_14;
  }

  v7 = [(EXPSchemaEXPTrialRolloutNamespace *)self name];
  if (v7)
  {
    v8 = v7;
    v9 = [(EXPSchemaEXPTrialRolloutNamespace *)self name];
    v10 = [v4 name];
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
    compatibilityVersion = self->_compatibilityVersion;
    if (compatibilityVersion != [v4 compatibilityVersion])
    {
      goto LABEL_15;
    }
  }

  v5 = [(EXPSchemaEXPTrialRolloutNamespace *)self factorPackId];
  v6 = [v4 factorPackId];
  if ((v5 != 0) != (v6 == 0))
  {
    v13 = [(EXPSchemaEXPTrialRolloutNamespace *)self factorPackId];
    if (!v13)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = v13;
    v15 = [(EXPSchemaEXPTrialRolloutNamespace *)self factorPackId];
    v16 = [v4 factorPackId];
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
  v4 = [(EXPSchemaEXPTrialRolloutNamespace *)self name];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }

  v5 = [(EXPSchemaEXPTrialRolloutNamespace *)self factorPackId];

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