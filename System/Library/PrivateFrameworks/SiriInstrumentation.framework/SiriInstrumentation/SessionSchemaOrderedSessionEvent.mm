@interface SessionSchemaOrderedSessionEvent
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SessionSchemaOrderedSessionEvent)initWithDictionary:(id)a3;
- (SessionSchemaOrderedSessionEvent)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation SessionSchemaOrderedSessionEvent

- (SessionSchemaOrderedSessionEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SessionSchemaOrderedSessionEvent;
  v5 = [(SessionSchemaOrderedSessionEvent *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"logicalEventTimestampInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SessionSchemaOrderedSessionEvent setLogicalEventTimestampInNs:](v5, "setLogicalEventTimestampInNs:", [v6 longLongValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"event"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[SISchemaAnyEvent alloc] initWithDictionary:v7];
      [(SessionSchemaOrderedSessionEvent *)v5 setEvent:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"metadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[SISchemaCommonEventMetadata alloc] initWithDictionary:v9];
      [(SessionSchemaOrderedSessionEvent *)v5 setMetadata:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (SessionSchemaOrderedSessionEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SessionSchemaOrderedSessionEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SessionSchemaOrderedSessionEvent *)self dictionaryRepresentation];
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
  if (self->_event)
  {
    v4 = [(SessionSchemaOrderedSessionEvent *)self event];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"event"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"event"];
    }
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[SessionSchemaOrderedSessionEvent logicalEventTimestampInNs](self, "logicalEventTimestampInNs")}];
    [v3 setObject:v7 forKeyedSubscript:@"logicalEventTimestampInNs"];
  }

  if (self->_metadata)
  {
    v8 = [(SessionSchemaOrderedSessionEvent *)self metadata];
    v9 = [v8 dictionaryRepresentation];
    if (v9)
    {
      [v3 setObject:v9 forKeyedSubscript:@"metadata"];
    }

    else
    {
      v10 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v10 forKeyedSubscript:@"metadata"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_logicalEventTimestampInNs;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(SISchemaAnyEvent *)self->_event hash]^ v3;
  return v4 ^ [(SISchemaCommonEventMetadata *)self->_metadata hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if ((*&self->_has & 1) != (v4[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    logicalEventTimestampInNs = self->_logicalEventTimestampInNs;
    if (logicalEventTimestampInNs != [v4 logicalEventTimestampInNs])
    {
      goto LABEL_15;
    }
  }

  v6 = [(SessionSchemaOrderedSessionEvent *)self event];
  v7 = [v4 event];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_14;
  }

  v8 = [(SessionSchemaOrderedSessionEvent *)self event];
  if (v8)
  {
    v9 = v8;
    v10 = [(SessionSchemaOrderedSessionEvent *)self event];
    v11 = [v4 event];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v6 = [(SessionSchemaOrderedSessionEvent *)self metadata];
  v7 = [v4 metadata];
  if ((v6 != 0) != (v7 == 0))
  {
    v13 = [(SessionSchemaOrderedSessionEvent *)self metadata];
    if (!v13)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = v13;
    v15 = [(SessionSchemaOrderedSessionEvent *)self metadata];
    v16 = [v4 metadata];
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
  v9 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
  }

  v4 = [(SessionSchemaOrderedSessionEvent *)self event];

  if (v4)
  {
    v5 = [(SessionSchemaOrderedSessionEvent *)self event];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(SessionSchemaOrderedSessionEvent *)self metadata];

  v7 = v9;
  if (v6)
  {
    v8 = [(SessionSchemaOrderedSessionEvent *)self metadata];
    PBDataWriterWriteSubmessage();

    v7 = v9;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SessionSchemaOrderedSessionEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(SessionSchemaOrderedSessionEvent *)self event];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(SessionSchemaOrderedSessionEvent *)self deleteEvent];
  }

  v9 = [(SessionSchemaOrderedSessionEvent *)self metadata];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(SessionSchemaOrderedSessionEvent *)self deleteMetadata];
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