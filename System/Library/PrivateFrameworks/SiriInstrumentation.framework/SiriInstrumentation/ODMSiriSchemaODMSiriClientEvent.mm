@interface ODMSiriSchemaODMSiriClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODMSiriSchemaODMSiriClientEvent)initWithDictionary:(id)dictionary;
- (ODMSiriSchemaODMSiriClientEvent)initWithJSON:(id)n;
- (ODMSiriSchemaODMSiriCountsReported)countsReported;
- (ODMSiriSchemaODMSiriCountsReportedAll)countsReportedAll;
- (ODMSiriSchemaODMSiriTaskCountsReported)taskCountsReported;
- (ODMSiriSchemaODMSiriTurnRestatementScoresReported)turnRestatementScoresReported;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)clockIsolationLevel;
- (unint64_t)hash;
- (void)deleteCountsReported;
- (void)deleteCountsReportedAll;
- (void)deleteTaskCountsReported;
- (void)deleteTurnRestatementScoresReported;
- (void)setCountsReported:(id)reported;
- (void)setCountsReportedAll:(id)all;
- (void)setTaskCountsReported:(id)reported;
- (void)setTurnRestatementScoresReported:(id)reported;
- (void)writeTo:(id)to;
@end

@implementation ODMSiriSchemaODMSiriClientEvent

- (ODMSiriSchemaODMSiriClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = ODMSiriSchemaODMSiriClientEvent;
  v5 = [(ODMSiriSchemaODMSiriClientEvent *)&v18 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ODMSiriSchemaODMSiriEventMetadata alloc] initWithDictionary:v6];
      [(ODMSiriSchemaODMSiriClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"taskCountsReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[ODMSiriSchemaODMSiriTaskCountsReported alloc] initWithDictionary:v8];
      [(ODMSiriSchemaODMSiriClientEvent *)v5 setTaskCountsReported:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"countsReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[ODMSiriSchemaODMSiriCountsReported alloc] initWithDictionary:v10];
      [(ODMSiriSchemaODMSiriClientEvent *)v5 setCountsReported:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"countsReportedAll"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[ODMSiriSchemaODMSiriCountsReportedAll alloc] initWithDictionary:v12];
      [(ODMSiriSchemaODMSiriClientEvent *)v5 setCountsReportedAll:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"turnRestatementScoresReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[ODMSiriSchemaODMSiriTurnRestatementScoresReported alloc] initWithDictionary:v14];
      [(ODMSiriSchemaODMSiriClientEvent *)v5 setTurnRestatementScoresReported:v15];
    }

    v16 = v5;
  }

  return v5;
}

- (ODMSiriSchemaODMSiriClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODMSiriSchemaODMSiriClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODMSiriSchemaODMSiriClientEvent *)self dictionaryRepresentation];
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
  if (self->_countsReported)
  {
    countsReported = [(ODMSiriSchemaODMSiriClientEvent *)self countsReported];
    dictionaryRepresentation = [countsReported dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"countsReported"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"countsReported"];
    }
  }

  if (self->_countsReportedAll)
  {
    countsReportedAll = [(ODMSiriSchemaODMSiriClientEvent *)self countsReportedAll];
    dictionaryRepresentation2 = [countsReportedAll dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"countsReportedAll"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"countsReportedAll"];
    }
  }

  if (self->_eventMetadata)
  {
    eventMetadata = [(ODMSiriSchemaODMSiriClientEvent *)self eventMetadata];
    dictionaryRepresentation3 = [eventMetadata dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_taskCountsReported)
  {
    taskCountsReported = [(ODMSiriSchemaODMSiriClientEvent *)self taskCountsReported];
    dictionaryRepresentation4 = [taskCountsReported dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"taskCountsReported"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"taskCountsReported"];
    }
  }

  if (self->_turnRestatementScoresReported)
  {
    turnRestatementScoresReported = [(ODMSiriSchemaODMSiriClientEvent *)self turnRestatementScoresReported];
    dictionaryRepresentation5 = [turnRestatementScoresReported dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"turnRestatementScoresReported"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"turnRestatementScoresReported"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(ODMSiriSchemaODMSiriEventMetadata *)self->_eventMetadata hash];
  v4 = [(ODMSiriSchemaODMSiriTaskCountsReported *)self->_taskCountsReported hash]^ v3;
  v5 = [(ODMSiriSchemaODMSiriCountsReported *)self->_countsReported hash];
  v6 = v4 ^ v5 ^ [(ODMSiriSchemaODMSiriCountsReportedAll *)self->_countsReportedAll hash];
  return v6 ^ [(ODMSiriSchemaODMSiriTurnRestatementScoresReported *)self->_turnRestatementScoresReported hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [equalCopy whichEvent_Type])
  {
    goto LABEL_28;
  }

  eventMetadata = [(ODMSiriSchemaODMSiriClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_27;
  }

  eventMetadata3 = [(ODMSiriSchemaODMSiriClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(ODMSiriSchemaODMSiriClientEvent *)self eventMetadata];
    eventMetadata5 = [equalCopy eventMetadata];
    v12 = [eventMetadata4 isEqual:eventMetadata5];

    if (!v12)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  eventMetadata = [(ODMSiriSchemaODMSiriClientEvent *)self taskCountsReported];
  eventMetadata2 = [equalCopy taskCountsReported];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_27;
  }

  taskCountsReported = [(ODMSiriSchemaODMSiriClientEvent *)self taskCountsReported];
  if (taskCountsReported)
  {
    v14 = taskCountsReported;
    taskCountsReported2 = [(ODMSiriSchemaODMSiriClientEvent *)self taskCountsReported];
    taskCountsReported3 = [equalCopy taskCountsReported];
    v17 = [taskCountsReported2 isEqual:taskCountsReported3];

    if (!v17)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  eventMetadata = [(ODMSiriSchemaODMSiriClientEvent *)self countsReported];
  eventMetadata2 = [equalCopy countsReported];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_27;
  }

  countsReported = [(ODMSiriSchemaODMSiriClientEvent *)self countsReported];
  if (countsReported)
  {
    v19 = countsReported;
    countsReported2 = [(ODMSiriSchemaODMSiriClientEvent *)self countsReported];
    countsReported3 = [equalCopy countsReported];
    v22 = [countsReported2 isEqual:countsReported3];

    if (!v22)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  eventMetadata = [(ODMSiriSchemaODMSiriClientEvent *)self countsReportedAll];
  eventMetadata2 = [equalCopy countsReportedAll];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_27;
  }

  countsReportedAll = [(ODMSiriSchemaODMSiriClientEvent *)self countsReportedAll];
  if (countsReportedAll)
  {
    v24 = countsReportedAll;
    countsReportedAll2 = [(ODMSiriSchemaODMSiriClientEvent *)self countsReportedAll];
    countsReportedAll3 = [equalCopy countsReportedAll];
    v27 = [countsReportedAll2 isEqual:countsReportedAll3];

    if (!v27)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  eventMetadata = [(ODMSiriSchemaODMSiriClientEvent *)self turnRestatementScoresReported];
  eventMetadata2 = [equalCopy turnRestatementScoresReported];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    turnRestatementScoresReported = [(ODMSiriSchemaODMSiriClientEvent *)self turnRestatementScoresReported];
    if (!turnRestatementScoresReported)
    {

LABEL_31:
      v33 = 1;
      goto LABEL_29;
    }

    v29 = turnRestatementScoresReported;
    turnRestatementScoresReported2 = [(ODMSiriSchemaODMSiriClientEvent *)self turnRestatementScoresReported];
    turnRestatementScoresReported3 = [equalCopy turnRestatementScoresReported];
    v32 = [turnRestatementScoresReported2 isEqual:turnRestatementScoresReported3];

    if (v32)
    {
      goto LABEL_31;
    }
  }

  else
  {
LABEL_27:
  }

LABEL_28:
  v33 = 0;
LABEL_29:

  return v33;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  eventMetadata = [(ODMSiriSchemaODMSiriClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(ODMSiriSchemaODMSiriClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  taskCountsReported = [(ODMSiriSchemaODMSiriClientEvent *)self taskCountsReported];

  if (taskCountsReported)
  {
    taskCountsReported2 = [(ODMSiriSchemaODMSiriClientEvent *)self taskCountsReported];
    PBDataWriterWriteSubmessage();
  }

  countsReported = [(ODMSiriSchemaODMSiriClientEvent *)self countsReported];

  if (countsReported)
  {
    countsReported2 = [(ODMSiriSchemaODMSiriClientEvent *)self countsReported];
    PBDataWriterWriteSubmessage();
  }

  countsReportedAll = [(ODMSiriSchemaODMSiriClientEvent *)self countsReportedAll];

  if (countsReportedAll)
  {
    countsReportedAll2 = [(ODMSiriSchemaODMSiriClientEvent *)self countsReportedAll];
    PBDataWriterWriteSubmessage();
  }

  turnRestatementScoresReported = [(ODMSiriSchemaODMSiriClientEvent *)self turnRestatementScoresReported];

  v13 = toCopy;
  if (turnRestatementScoresReported)
  {
    turnRestatementScoresReported2 = [(ODMSiriSchemaODMSiriClientEvent *)self turnRestatementScoresReported];
    PBDataWriterWriteSubmessage();

    v13 = toCopy;
  }
}

- (void)deleteTurnRestatementScoresReported
{
  if (self->_whichEvent_Type == 5)
  {
    self->_whichEvent_Type = 0;
    self->_turnRestatementScoresReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ODMSiriSchemaODMSiriTurnRestatementScoresReported)turnRestatementScoresReported
{
  if (self->_whichEvent_Type == 5)
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
  taskCountsReported = self->_taskCountsReported;
  self->_taskCountsReported = 0;

  countsReported = self->_countsReported;
  self->_countsReported = 0;

  countsReportedAll = self->_countsReportedAll;
  self->_countsReportedAll = 0;

  v8 = 5;
  if (!reportedCopy)
  {
    v8 = 0;
  }

  self->_whichEvent_Type = v8;
  turnRestatementScoresReported = self->_turnRestatementScoresReported;
  self->_turnRestatementScoresReported = reportedCopy;
}

- (void)deleteCountsReportedAll
{
  if (self->_whichEvent_Type == 4)
  {
    self->_whichEvent_Type = 0;
    self->_countsReportedAll = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ODMSiriSchemaODMSiriCountsReportedAll)countsReportedAll
{
  if (self->_whichEvent_Type == 4)
  {
    v3 = self->_countsReportedAll;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCountsReportedAll:(id)all
{
  allCopy = all;
  taskCountsReported = self->_taskCountsReported;
  self->_taskCountsReported = 0;

  countsReported = self->_countsReported;
  self->_countsReported = 0;

  turnRestatementScoresReported = self->_turnRestatementScoresReported;
  self->_turnRestatementScoresReported = 0;

  self->_whichEvent_Type = 4 * (allCopy != 0);
  countsReportedAll = self->_countsReportedAll;
  self->_countsReportedAll = allCopy;
}

- (void)deleteCountsReported
{
  if (self->_whichEvent_Type == 3)
  {
    self->_whichEvent_Type = 0;
    self->_countsReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ODMSiriSchemaODMSiriCountsReported)countsReported
{
  if (self->_whichEvent_Type == 3)
  {
    v3 = self->_countsReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCountsReported:(id)reported
{
  reportedCopy = reported;
  taskCountsReported = self->_taskCountsReported;
  self->_taskCountsReported = 0;

  countsReportedAll = self->_countsReportedAll;
  self->_countsReportedAll = 0;

  turnRestatementScoresReported = self->_turnRestatementScoresReported;
  self->_turnRestatementScoresReported = 0;

  v8 = 3;
  if (!reportedCopy)
  {
    v8 = 0;
  }

  self->_whichEvent_Type = v8;
  countsReported = self->_countsReported;
  self->_countsReported = reportedCopy;
}

- (void)deleteTaskCountsReported
{
  if (self->_whichEvent_Type == 2)
  {
    self->_whichEvent_Type = 0;
    self->_taskCountsReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ODMSiriSchemaODMSiriTaskCountsReported)taskCountsReported
{
  if (self->_whichEvent_Type == 2)
  {
    v3 = self->_taskCountsReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setTaskCountsReported:(id)reported
{
  reportedCopy = reported;
  countsReported = self->_countsReported;
  self->_countsReported = 0;

  countsReportedAll = self->_countsReportedAll;
  self->_countsReportedAll = 0;

  turnRestatementScoresReported = self->_turnRestatementScoresReported;
  self->_turnRestatementScoresReported = 0;

  self->_whichEvent_Type = 2 * (reportedCopy != 0);
  taskCountsReported = self->_taskCountsReported;
  self->_taskCountsReported = reportedCopy;
}

- (id)qualifiedMessageName
{
  whichEvent_Type = [(ODMSiriSchemaODMSiriClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 2 > 3)
  {
    return @"com.apple.aiml.odm.siri.ODMSiriClientEvent";
  }

  else
  {
    return off_1E78DE110[whichEvent_Type - 2];
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v22.receiver = self;
  v22.super_class = ODMSiriSchemaODMSiriClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v22 applySensitiveConditionsPolicy:policyCopy];
  eventMetadata = [(ODMSiriSchemaODMSiriClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ODMSiriSchemaODMSiriClientEvent *)self deleteEventMetadata];
  }

  taskCountsReported = [(ODMSiriSchemaODMSiriClientEvent *)self taskCountsReported];
  v10 = [taskCountsReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(ODMSiriSchemaODMSiriClientEvent *)self deleteTaskCountsReported];
  }

  countsReported = [(ODMSiriSchemaODMSiriClientEvent *)self countsReported];
  v13 = [countsReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(ODMSiriSchemaODMSiriClientEvent *)self deleteCountsReported];
  }

  countsReportedAll = [(ODMSiriSchemaODMSiriClientEvent *)self countsReportedAll];
  v16 = [countsReportedAll applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(ODMSiriSchemaODMSiriClientEvent *)self deleteCountsReportedAll];
  }

  turnRestatementScoresReported = [(ODMSiriSchemaODMSiriClientEvent *)self turnRestatementScoresReported];
  v19 = [turnRestatementScoresReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(ODMSiriSchemaODMSiriClientEvent *)self deleteTurnRestatementScoresReported];
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
  whichEvent_Type = [(ODMSiriSchemaODMSiriClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 2 > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78EA5D8[whichEvent_Type - 2]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)tag
{
  if (tag - 2 > 3)
  {
    return 0;
  }

  else
  {
    return off_1E78EA5F8[tag - 2];
  }
}

- (int)clockIsolationLevel
{
  if (([(ODMSiriSchemaODMSiriClientEvent *)self whichEvent_Type]& 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

@end