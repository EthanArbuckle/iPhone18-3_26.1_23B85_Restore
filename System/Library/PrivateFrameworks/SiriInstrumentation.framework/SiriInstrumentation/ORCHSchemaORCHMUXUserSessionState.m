@interface ORCHSchemaORCHMUXUserSessionState
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ORCHSchemaORCHMUXUserSessionState)initWithDictionary:(id)a3;
- (ORCHSchemaORCHMUXUserSessionState)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAccessLevel:(BOOL)a3;
- (void)setHasIsEndOfRequest:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ORCHSchemaORCHMUXUserSessionState

- (ORCHSchemaORCHMUXUserSessionState)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ORCHSchemaORCHMUXUserSessionState;
  v5 = [(ORCHSchemaORCHMUXUserSessionState *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"state"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHMUXUserSessionState setState:](v5, "setState:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"accessLevel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHMUXUserSessionState setAccessLevel:](v5, "setAccessLevel:", [v7 intValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"isEndOfRequest"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHMUXUserSessionState setIsEndOfRequest:](v5, "setIsEndOfRequest:", [v8 BOOLValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (ORCHSchemaORCHMUXUserSessionState)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ORCHSchemaORCHMUXUserSessionState *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ORCHSchemaORCHMUXUserSessionState *)self dictionaryRepresentation];
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
  v4 = *(&self->_isEndOfRequest + 1);
  if ((v4 & 2) == 0)
  {
    if ((*(&self->_isEndOfRequest + 1) & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_11:
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[ORCHSchemaORCHMUXUserSessionState isEndOfRequest](self, "isEndOfRequest")}];
    [v3 setObject:v8 forKeyedSubscript:@"isEndOfRequest"];

    if (!*(&self->_isEndOfRequest + 1))
    {
      goto LABEL_16;
    }

LABEL_12:
    v9 = [(ORCHSchemaORCHMUXUserSessionState *)self state]- 1;
    if (v9 > 2)
    {
      v10 = @"ORCHUSERSESSIONSTATE_UNKNOWN";
    }

    else
    {
      v10 = off_1E78DECD8[v9];
    }

    [v3 setObject:v10 forKeyedSubscript:@"state"];
    goto LABEL_16;
  }

  v5 = [(ORCHSchemaORCHMUXUserSessionState *)self accessLevel];
  v6 = @"ORCHUSERSESSIONACCESSLEVEL_UNKNOWN";
  if (v5 == 1)
  {
    v6 = @"ORCHUSERSESSIONACCESSLEVEL_LOW";
  }

  if (v5 == 2)
  {
    v7 = @"ORCHUSERSESSIONACCESSLEVEL_HIGH";
  }

  else
  {
    v7 = v6;
  }

  [v3 setObject:v7 forKeyedSubscript:@"accessLevel"];
  v4 = *(&self->_isEndOfRequest + 1);
  if ((v4 & 4) != 0)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v4)
  {
    goto LABEL_12;
  }

LABEL_16:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (!*(&self->_isEndOfRequest + 1))
  {
    v2 = 0;
    if ((*(&self->_isEndOfRequest + 1) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = 0;
    if ((*(&self->_isEndOfRequest + 1) & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v4 = 0;
    return v3 ^ v2 ^ v4;
  }

  v2 = 2654435761 * self->_state;
  if ((*(&self->_isEndOfRequest + 1) & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761 * self->_accessLevel;
  if ((*(&self->_isEndOfRequest + 1) & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761 * self->_isEndOfRequest;
  return v3 ^ v2 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  v5 = *(&self->_isEndOfRequest + 1);
  v6 = v4[17];
  if ((v5 & 1) != (v6 & 1))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    state = self->_state;
    if (state != [v4 state])
    {
      goto LABEL_14;
    }

    v5 = *(&self->_isEndOfRequest + 1);
    v6 = v4[17];
  }

  v8 = (v5 >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    accessLevel = self->_accessLevel;
    if (accessLevel == [v4 accessLevel])
    {
      v5 = *(&self->_isEndOfRequest + 1);
      v6 = v4[17];
      goto LABEL_10;
    }

LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

LABEL_10:
  v10 = (v5 >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_14;
  }

  if (v10)
  {
    isEndOfRequest = self->_isEndOfRequest;
    if (isEndOfRequest != [v4 isEndOfRequest])
    {
      goto LABEL_14;
    }
  }

  v12 = 1;
LABEL_15:

  return v12;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = *(&self->_isEndOfRequest + 1);
  v6 = v4;
  if (v5)
  {
    PBDataWriterWriteInt32Field();
    v4 = v6;
    v5 = *(&self->_isEndOfRequest + 1);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(&self->_isEndOfRequest + 1) & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteInt32Field();
  v4 = v6;
  if ((*(&self->_isEndOfRequest + 1) & 4) != 0)
  {
LABEL_4:
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }

LABEL_5:
}

- (void)setHasIsEndOfRequest:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isEndOfRequest + 1) = *(&self->_isEndOfRequest + 1) & 0xFB | v3;
}

- (void)setHasAccessLevel:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isEndOfRequest + 1) = *(&self->_isEndOfRequest + 1) & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end