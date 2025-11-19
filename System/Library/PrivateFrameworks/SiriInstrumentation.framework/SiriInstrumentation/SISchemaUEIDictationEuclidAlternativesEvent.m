@interface SISchemaUEIDictationEuclidAlternativesEvent
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SISchemaUEIDictationEuclidAlternativesEvent)initWithDictionary:(id)a3;
- (SISchemaUEIDictationEuclidAlternativesEvent)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAlternativesIndexSelectedByUser:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SISchemaUEIDictationEuclidAlternativesEvent

- (SISchemaUEIDictationEuclidAlternativesEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SISchemaUEIDictationEuclidAlternativesEvent;
  v5 = [(SISchemaUEIDictationEuclidAlternativesEvent *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"eventType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaUEIDictationEuclidAlternativesEvent setEventType:](v5, "setEventType:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"alternativesIndexSelectedByUser"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaUEIDictationEuclidAlternativesEvent setAlternativesIndexSelectedByUser:](v5, "setAlternativesIndexSelectedByUser:", [v7 longLongValue]);
    }

    v8 = v5;
  }

  return v5;
}

- (SISchemaUEIDictationEuclidAlternativesEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SISchemaUEIDictationEuclidAlternativesEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SISchemaUEIDictationEuclidAlternativesEvent *)self dictionaryRepresentation];
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
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[SISchemaUEIDictationEuclidAlternativesEvent alternativesIndexSelectedByUser](self, "alternativesIndexSelectedByUser")}];
    [v3 setObject:v5 forKeyedSubscript:@"alternativesIndexSelectedByUser"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [(SISchemaUEIDictationEuclidAlternativesEvent *)self eventType];
    v7 = @"EUCLID_ALTERNATIVES_EVENT_UNKNOWN";
    if (v6 == 1)
    {
      v7 = @"EUCLID_ALTERNATIVES_EVENT_EUCLID_REQUESTED";
    }

    if (v6 == 2)
    {
      v8 = @"EUCLID_ALTERNATIVES_EVENT_EUCLID_SELECTED_FROM_QUICKTYPE_BAR";
    }

    else
    {
      v8 = v7;
    }

    [v3 setObject:v8 forKeyedSubscript:@"eventType"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_eventType;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 ^ v2;
  }

  v2 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = 2654435761 * self->_alternativesIndexSelectedByUser;
  return v3 ^ v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  has = self->_has;
  v6 = v4[24];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_10;
  }

  if (*&has)
  {
    eventType = self->_eventType;
    if (eventType != [v4 eventType])
    {
LABEL_10:
      v10 = 0;
      goto LABEL_11;
    }

    has = self->_has;
    v6 = v4[24];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_10;
  }

  if (v8)
  {
    alternativesIndexSelectedByUser = self->_alternativesIndexSelectedByUser;
    if (alternativesIndexSelectedByUser != [v4 alternativesIndexSelectedByUser])
    {
      goto LABEL_10;
    }
  }

  v10 = 1;
LABEL_11:

  return v10;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v6 = v4;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    v4 = v6;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt64Field();
    v4 = v6;
  }
}

- (void)setHasAlternativesIndexSelectedByUser:(BOOL)a3
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