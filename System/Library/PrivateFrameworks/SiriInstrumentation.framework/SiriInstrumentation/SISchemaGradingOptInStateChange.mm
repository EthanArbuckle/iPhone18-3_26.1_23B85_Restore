@interface SISchemaGradingOptInStateChange
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaGradingOptInStateChange)initWithDictionary:(id)dictionary;
- (SISchemaGradingOptInStateChange)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasEpochEventTimestampInSeconds:(BOOL)seconds;
- (void)setHasNewOptInState:(BOOL)state;
- (void)setHasSource:(BOOL)source;
- (void)writeTo:(id)to;
@end

@implementation SISchemaGradingOptInStateChange

- (SISchemaGradingOptInStateChange)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = SISchemaGradingOptInStateChange;
  v5 = [(SISchemaGradingOptInStateChange *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"prevOptInState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaGradingOptInStateChange setPrevOptInState:](v5, "setPrevOptInState:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"newOptInState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaGradingOptInStateChange setNewOptInState:](v5, "setNewOptInState:", [v7 intValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"source"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaGradingOptInStateChange setSource:](v5, "setSource:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"reason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(SISchemaGradingOptInStateChange *)v5 setReason:v10];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"systemBuild"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 copy];
      [(SISchemaGradingOptInStateChange *)v5 setSystemBuild:v12];
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"epochEventTimestampInSeconds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaGradingOptInStateChange setEpochEventTimestampInSeconds:](v5, "setEpochEventTimestampInSeconds:", [v13 unsignedLongLongValue]);
    }

    v14 = v5;
  }

  return v5;
}

- (SISchemaGradingOptInStateChange)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaGradingOptInStateChange *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaGradingOptInStateChange *)self dictionaryRepresentation];
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
  has = self->_has;
  if ((has & 8) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[SISchemaGradingOptInStateChange epochEventTimestampInSeconds](self, "epochEventTimestampInSeconds")}];
    [dictionary setObject:v5 forKeyedSubscript:@"epochEventTimestampInSeconds"];

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

  [dictionary setObject:v7 forKeyedSubscript:@"newOptInState"];
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

    [dictionary setObject:v9 forKeyedSubscript:@"prevOptInState"];
  }

LABEL_14:
  if (self->_reason)
  {
    reason = [(SISchemaGradingOptInStateChange *)self reason];
    v11 = [reason copy];
    [dictionary setObject:v11 forKeyedSubscript:@"reason"];
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

    [dictionary setObject:v13 forKeyedSubscript:@"source"];
  }

  if (self->_systemBuild)
  {
    systemBuild = [(SISchemaGradingOptInStateChange *)self systemBuild];
    v15 = [systemBuild copy];
    [dictionary setObject:v15 forKeyedSubscript:@"systemBuild"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  has = self->_has;
  v6 = equalCopy[48];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_23;
  }

  if (*&has)
  {
    prevOptInState = self->_prevOptInState;
    if (prevOptInState != [equalCopy prevOptInState])
    {
      goto LABEL_23;
    }

    has = self->_has;
    v6 = equalCopy[48];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (v8)
    {
      newOptInState = self->_newOptInState;
      if (newOptInState != [equalCopy newOptInState])
      {
        goto LABEL_23;
      }

      has = self->_has;
      v6 = equalCopy[48];
    }

    v10 = (*&has >> 2) & 1;
    if (v10 != ((v6 >> 2) & 1))
    {
      goto LABEL_23;
    }

    if (v10)
    {
      source = self->_source;
      if (source != [equalCopy source])
      {
        goto LABEL_23;
      }
    }

    reason = [(SISchemaGradingOptInStateChange *)self reason];
    reason2 = [equalCopy reason];
    if ((reason != 0) == (reason2 == 0))
    {
      goto LABEL_22;
    }

    reason3 = [(SISchemaGradingOptInStateChange *)self reason];
    if (reason3)
    {
      v15 = reason3;
      reason4 = [(SISchemaGradingOptInStateChange *)self reason];
      reason5 = [equalCopy reason];
      v18 = [reason4 isEqual:reason5];

      if (!v18)
      {
        goto LABEL_23;
      }
    }

    else
    {
    }

    reason = [(SISchemaGradingOptInStateChange *)self systemBuild];
    reason2 = [equalCopy systemBuild];
    if ((reason != 0) == (reason2 == 0))
    {
LABEL_22:

      goto LABEL_23;
    }

    systemBuild = [(SISchemaGradingOptInStateChange *)self systemBuild];
    if (systemBuild)
    {
      v20 = systemBuild;
      systemBuild2 = [(SISchemaGradingOptInStateChange *)self systemBuild];
      systemBuild3 = [equalCopy systemBuild];
      v23 = [systemBuild2 isEqual:systemBuild3];

      if (!v23)
      {
        goto LABEL_23;
      }
    }

    else
    {
    }

    v26 = (*&self->_has >> 3) & 1;
    if (v26 == ((equalCopy[48] >> 3) & 1))
    {
      if (!v26 || (epochEventTimestampInSeconds = self->_epochEventTimestampInSeconds, epochEventTimestampInSeconds == [equalCopy epochEventTimestampInSeconds]))
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

- (void)writeTo:(id)to
{
  toCopy = to;
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
  reason = [(SISchemaGradingOptInStateChange *)self reason];

  if (reason)
  {
    PBDataWriterWriteStringField();
  }

  systemBuild = [(SISchemaGradingOptInStateChange *)self systemBuild];

  if (systemBuild)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 8) != 0)
  {
    PBDataWriterWriteUint64Field();
  }
}

- (void)setHasEpochEventTimestampInSeconds:(BOOL)seconds
{
  if (seconds)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasSource:(BOOL)source
{
  if (source)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasNewOptInState:(BOOL)state
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

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end