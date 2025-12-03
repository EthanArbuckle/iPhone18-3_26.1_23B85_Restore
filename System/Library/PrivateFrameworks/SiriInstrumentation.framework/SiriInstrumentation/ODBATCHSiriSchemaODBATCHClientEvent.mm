@interface ODBATCHSiriSchemaODBATCHClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODBATCHSiriSchemaODBATCHClientEvent)initWithDictionary:(id)dictionary;
- (ODBATCHSiriSchemaODBATCHClientEvent)initWithJSON:(id)n;
- (ODBATCHSiriSchemaODBATCHDataReported)odbatchDataReported;
- (ODBATCHSiriSchemaODBATCHTurnRestatementScoresReported)turnRestatementScoresReported;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)clockIsolationLevel;
- (unint64_t)hash;
- (void)deleteOdbatchDataReported;
- (void)deleteTurnRestatementScoresReported;
- (void)setOdbatchDataReported:(id)reported;
- (void)setTurnRestatementScoresReported:(id)reported;
- (void)writeTo:(id)to;
@end

@implementation ODBATCHSiriSchemaODBATCHClientEvent

- (ODBATCHSiriSchemaODBATCHClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = ODBATCHSiriSchemaODBATCHClientEvent;
  v5 = [(ODBATCHSiriSchemaODBATCHClientEvent *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ODBATCHSiriSchemaODBATCHClientEventMetadata alloc] initWithDictionary:v6];
      [(ODBATCHSiriSchemaODBATCHClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"odbatchDataReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[ODBATCHSiriSchemaODBATCHDataReported alloc] initWithDictionary:v8];
      [(ODBATCHSiriSchemaODBATCHClientEvent *)v5 setOdbatchDataReported:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"turnRestatementScoresReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[ODBATCHSiriSchemaODBATCHTurnRestatementScoresReported alloc] initWithDictionary:v10];
      [(ODBATCHSiriSchemaODBATCHClientEvent *)v5 setTurnRestatementScoresReported:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (ODBATCHSiriSchemaODBATCHClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODBATCHSiriSchemaODBATCHClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODBATCHSiriSchemaODBATCHClientEvent *)self dictionaryRepresentation];
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
  if (self->_eventMetadata)
  {
    eventMetadata = [(ODBATCHSiriSchemaODBATCHClientEvent *)self eventMetadata];
    dictionaryRepresentation = [eventMetadata dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_odbatchDataReported)
  {
    odbatchDataReported = [(ODBATCHSiriSchemaODBATCHClientEvent *)self odbatchDataReported];
    dictionaryRepresentation2 = [odbatchDataReported dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"odbatchDataReported"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"odbatchDataReported"];
    }
  }

  if (self->_turnRestatementScoresReported)
  {
    turnRestatementScoresReported = [(ODBATCHSiriSchemaODBATCHClientEvent *)self turnRestatementScoresReported];
    dictionaryRepresentation3 = [turnRestatementScoresReported dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"turnRestatementScoresReported"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"turnRestatementScoresReported"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(ODBATCHSiriSchemaODBATCHClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(ODBATCHSiriSchemaODBATCHDataReported *)self->_odbatchDataReported hash]^ v3;
  return v4 ^ [(ODBATCHSiriSchemaODBATCHTurnRestatementScoresReported *)self->_turnRestatementScoresReported hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [equalCopy whichEvent_Type])
  {
    goto LABEL_18;
  }

  eventMetadata = [(ODBATCHSiriSchemaODBATCHClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_17;
  }

  eventMetadata3 = [(ODBATCHSiriSchemaODBATCHClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(ODBATCHSiriSchemaODBATCHClientEvent *)self eventMetadata];
    eventMetadata5 = [equalCopy eventMetadata];
    v12 = [eventMetadata4 isEqual:eventMetadata5];

    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  eventMetadata = [(ODBATCHSiriSchemaODBATCHClientEvent *)self odbatchDataReported];
  eventMetadata2 = [equalCopy odbatchDataReported];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_17;
  }

  odbatchDataReported = [(ODBATCHSiriSchemaODBATCHClientEvent *)self odbatchDataReported];
  if (odbatchDataReported)
  {
    v14 = odbatchDataReported;
    odbatchDataReported2 = [(ODBATCHSiriSchemaODBATCHClientEvent *)self odbatchDataReported];
    odbatchDataReported3 = [equalCopy odbatchDataReported];
    v17 = [odbatchDataReported2 isEqual:odbatchDataReported3];

    if (!v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  eventMetadata = [(ODBATCHSiriSchemaODBATCHClientEvent *)self turnRestatementScoresReported];
  eventMetadata2 = [equalCopy turnRestatementScoresReported];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    turnRestatementScoresReported = [(ODBATCHSiriSchemaODBATCHClientEvent *)self turnRestatementScoresReported];
    if (!turnRestatementScoresReported)
    {

LABEL_21:
      v23 = 1;
      goto LABEL_19;
    }

    v19 = turnRestatementScoresReported;
    turnRestatementScoresReported2 = [(ODBATCHSiriSchemaODBATCHClientEvent *)self turnRestatementScoresReported];
    turnRestatementScoresReported3 = [equalCopy turnRestatementScoresReported];
    v22 = [turnRestatementScoresReported2 isEqual:turnRestatementScoresReported3];

    if (v22)
    {
      goto LABEL_21;
    }
  }

  else
  {
LABEL_17:
  }

LABEL_18:
  v23 = 0;
LABEL_19:

  return v23;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  eventMetadata = [(ODBATCHSiriSchemaODBATCHClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(ODBATCHSiriSchemaODBATCHClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  odbatchDataReported = [(ODBATCHSiriSchemaODBATCHClientEvent *)self odbatchDataReported];

  if (odbatchDataReported)
  {
    odbatchDataReported2 = [(ODBATCHSiriSchemaODBATCHClientEvent *)self odbatchDataReported];
    PBDataWriterWriteSubmessage();
  }

  turnRestatementScoresReported = [(ODBATCHSiriSchemaODBATCHClientEvent *)self turnRestatementScoresReported];

  v9 = toCopy;
  if (turnRestatementScoresReported)
  {
    turnRestatementScoresReported2 = [(ODBATCHSiriSchemaODBATCHClientEvent *)self turnRestatementScoresReported];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

- (void)deleteTurnRestatementScoresReported
{
  if (self->_whichEvent_Type == 11)
  {
    self->_whichEvent_Type = 0;
    self->_turnRestatementScoresReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ODBATCHSiriSchemaODBATCHTurnRestatementScoresReported)turnRestatementScoresReported
{
  if (self->_whichEvent_Type == 11)
  {
    v3 = self->_turnRestatementScoresReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setTurnRestatementScoresReported:(id)reported
{
  reportedCopy = reported;
  odbatchDataReported = self->_odbatchDataReported;
  self->_odbatchDataReported = 0;

  v6 = 11;
  if (!reportedCopy)
  {
    v6 = 0;
  }

  self->_whichEvent_Type = v6;
  turnRestatementScoresReported = self->_turnRestatementScoresReported;
  self->_turnRestatementScoresReported = reportedCopy;
}

- (void)deleteOdbatchDataReported
{
  if (self->_whichEvent_Type == 10)
  {
    self->_whichEvent_Type = 0;
    self->_odbatchDataReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ODBATCHSiriSchemaODBATCHDataReported)odbatchDataReported
{
  if (self->_whichEvent_Type == 10)
  {
    v3 = self->_odbatchDataReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setOdbatchDataReported:(id)reported
{
  reportedCopy = reported;
  turnRestatementScoresReported = self->_turnRestatementScoresReported;
  self->_turnRestatementScoresReported = 0;

  v6 = 10;
  if (!reportedCopy)
  {
    v6 = 0;
  }

  self->_whichEvent_Type = v6;
  odbatchDataReported = self->_odbatchDataReported;
  self->_odbatchDataReported = reportedCopy;
}

- (id)qualifiedMessageName
{
  whichEvent_Type = [(ODBATCHSiriSchemaODBATCHClientEvent *)self whichEvent_Type];
  v3 = @"com.apple.aiml.siri.odbatch.ODBATCHClientEvent";
  if (whichEvent_Type == 11)
  {
    v3 = @"com.apple.aiml.siri.odbatch.ODBATCHClientEvent.ODBATCHTurnRestatementScoresReported";
  }

  if (whichEvent_Type == 10)
  {
    return @"com.apple.aiml.siri.odbatch.ODBATCHClientEvent.ODBATCHDataReported";
  }

  else
  {
    return v3;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v16.receiver = self;
  v16.super_class = ODBATCHSiriSchemaODBATCHClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  eventMetadata = [(ODBATCHSiriSchemaODBATCHClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ODBATCHSiriSchemaODBATCHClientEvent *)self deleteEventMetadata];
  }

  odbatchDataReported = [(ODBATCHSiriSchemaODBATCHClientEvent *)self odbatchDataReported];
  v10 = [odbatchDataReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(ODBATCHSiriSchemaODBATCHClientEvent *)self deleteOdbatchDataReported];
  }

  turnRestatementScoresReported = [(ODBATCHSiriSchemaODBATCHClientEvent *)self turnRestatementScoresReported];
  v13 = [turnRestatementScoresReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(ODBATCHSiriSchemaODBATCHClientEvent *)self deleteTurnRestatementScoresReported];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  whichEvent_Type = [(ODBATCHSiriSchemaODBATCHClientEvent *)self whichEvent_Type];
  if (whichEvent_Type == 10)
  {
    v4 = &OBJC_IVAR___ODBATCHSiriSchemaODBATCHClientEvent__odbatchDataReported;
    goto LABEL_5;
  }

  if (whichEvent_Type == 11)
  {
    v4 = &OBJC_IVAR___ODBATCHSiriSchemaODBATCHClientEvent__turnRestatementScoresReported;
LABEL_5:
    v5 = *(&self->super.super.super.super.isa + *v4);
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

+ (id)getInnerTypeStringByTag:(unint64_t)tag
{
  v3 = @"turnRestatementScoresReported";
  if (tag != 11)
  {
    v3 = 0;
  }

  if (tag == 10)
  {
    return @"odbatchDataReported";
  }

  else
  {
    return v3;
  }
}

- (int)clockIsolationLevel
{
  if (([(ODBATCHSiriSchemaODBATCHClientEvent *)self whichEvent_Type]& 0xFFFFFFFFFFFFFFFELL) == 0xA)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

@end