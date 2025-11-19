@interface SISchemaGradingOptInStateChange
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SISchemaGradingOptInStateChange)initWithDictionary:(id)a3;
- (SISchemaGradingOptInStateChange)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasEpochEventTimestampInSeconds:(BOOL)a3;
- (void)setHasNewOptInState:(BOOL)a3;
- (void)setHasSource:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SISchemaGradingOptInStateChange

- (SISchemaGradingOptInStateChange)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = SISchemaGradingOptInStateChange;
  v5 = [(SISchemaGradingOptInStateChange *)&v16 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"prevOptInState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaGradingOptInStateChange setPrevOptInState:](v5, "setPrevOptInState:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"newOptInState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaGradingOptInStateChange setNewOptInState:](v5, "setNewOptInState:", [v7 intValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"source"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaGradingOptInStateChange setSource:](v5, "setSource:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"reason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(SISchemaGradingOptInStateChange *)v5 setReason:v10];
    }

    v11 = [v4 objectForKeyedSubscript:@"systemBuild"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 copy];
      [(SISchemaGradingOptInStateChange *)v5 setSystemBuild:v12];
    }

    v13 = [v4 objectForKeyedSubscript:@"epochEventTimestampInSeconds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaGradingOptInStateChange setEpochEventTimestampInSeconds:](v5, "setEpochEventTimestampInSeconds:", [v13 unsignedLongLongValue]);
    }

    v14 = v5;
  }

  return v5;
}

- (SISchemaGradingOptInStateChange)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SISchemaGradingOptInStateChange *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SISchemaGradingOptInStateChange *)self dictionaryRepresentation];
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
  has = self->_has;
  if ((has & 8) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[SISchemaGradingOptInStateChange epochEventTimestampInSeconds](self, "epochEventTimestampInSeconds")}];
    [v3 setObject:v5 forKeyedSubscript:@"epochEventTimestampInSeconds"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v6 = [(SISchemaGradingOptInStateChange *)self newOptInState]- 1;
  if (v6 > 2)
  {
    v7 = @"UNKNOWN";
  }

  else
  {
    v7 = off_1E78E4BE0[v6];
  }

  [v3 setObject:v7 forKeyedSubscript:@"newOptInState"];
  if (*&self->_has)
  {
LABEL_10:
    v8 = [(SISchemaGradingOptInStateChange *)self prevOptInState]- 1;
    if (v8 > 2)
    {
      v9 = @"UNKNOWN";
    }

    else
    {
      v9 = off_1E78E4BE0[v8];
    }

    [v3 setObject:v9 forKeyedSubscript:@"prevOptInState"];
  }

LABEL_14:
  if (self->_reason)
  {
    v10 = [(SISchemaGradingOptInStateChange *)self reason];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"reason"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v12 = [(SISchemaGradingOptInStateChange *)self source]- 1;
    if (v12 > 0xB)
    {
      v13 = @"GRADINGOPTINSTATECHANGESOURCE_UNKNOWN";
    }

    else
    {
      v13 = off_1E78E4BF8[v12];
    }

    [v3 setObject:v13 forKeyedSubscript:@"source"];
  }

  if (self->_systemBuild)
  {
    v14 = [(SISchemaGradingOptInStateChange *)self systemBuild];
    v15 = [v14 copy];
    [v3 setObject:v15 forKeyedSubscript:@"systemBuild"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v3 = 2654435761 * self->_prevOptInState;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v4 = 2654435761 * self->_newOptInState;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_source;
    goto LABEL_8;
  }

LABEL_7:
  v5 = 0;
LABEL_8:
  v6 = [(NSString *)self->_reason hash];
  v7 = [(NSString *)self->_systemBuild hash];
  if ((*&self->_has & 8) != 0)
  {
    v8 = 2654435761u * self->_epochEventTimestampInSeconds;
  }

  else
  {
    v8 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  has = self->_has;
  v6 = v4[48];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_23;
  }

  if (*&has)
  {
    prevOptInState = self->_prevOptInState;
    if (prevOptInState != [v4 prevOptInState])
    {
      goto LABEL_23;
    }

    has = self->_has;
    v6 = v4[48];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (v8)
    {
      newOptInState = self->_newOptInState;
      if (newOptInState != [v4 newOptInState])
      {
        goto LABEL_23;
      }

      has = self->_has;
      v6 = v4[48];
    }

    v10 = (*&has >> 2) & 1;
    if (v10 != ((v6 >> 2) & 1))
    {
      goto LABEL_23;
    }

    if (v10)
    {
      source = self->_source;
      if (source != [v4 source])
      {
        goto LABEL_23;
      }
    }

    v12 = [(SISchemaGradingOptInStateChange *)self reason];
    v13 = [v4 reason];
    if ((v12 != 0) == (v13 == 0))
    {
      goto LABEL_22;
    }

    v14 = [(SISchemaGradingOptInStateChange *)self reason];
    if (v14)
    {
      v15 = v14;
      v16 = [(SISchemaGradingOptInStateChange *)self reason];
      v17 = [v4 reason];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_23;
      }
    }

    else
    {
    }

    v12 = [(SISchemaGradingOptInStateChange *)self systemBuild];
    v13 = [v4 systemBuild];
    if ((v12 != 0) == (v13 == 0))
    {
LABEL_22:

      goto LABEL_23;
    }

    v19 = [(SISchemaGradingOptInStateChange *)self systemBuild];
    if (v19)
    {
      v20 = v19;
      v21 = [(SISchemaGradingOptInStateChange *)self systemBuild];
      v22 = [v4 systemBuild];
      v23 = [v21 isEqual:v22];

      if (!v23)
      {
        goto LABEL_23;
      }
    }

    else
    {
    }

    v26 = (*&self->_has >> 3) & 1;
    if (v26 == ((v4[48] >> 3) & 1))
    {
      if (!v26 || (epochEventTimestampInSeconds = self->_epochEventTimestampInSeconds, epochEventTimestampInSeconds == [v4 epochEventTimestampInSeconds]))
      {
        v24 = 1;
        goto LABEL_24;
      }
    }
  }

LABEL_23:
  v24 = 0;
LABEL_24:

  return v24;
}

- (void)writeTo:(id)a3
{
  v7 = a3;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    PBDataWriterWriteInt32Field();
  }

LABEL_5:
  v5 = [(SISchemaGradingOptInStateChange *)self reason];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(SISchemaGradingOptInStateChange *)self systemBuild];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 8) != 0)
  {
    PBDataWriterWriteUint64Field();
  }
}

- (void)setHasEpochEventTimestampInSeconds:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasSource:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasNewOptInState:(BOOL)a3
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