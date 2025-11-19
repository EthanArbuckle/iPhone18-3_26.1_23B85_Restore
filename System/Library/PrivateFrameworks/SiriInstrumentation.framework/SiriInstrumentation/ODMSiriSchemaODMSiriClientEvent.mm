@interface ODMSiriSchemaODMSiriClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ODMSiriSchemaODMSiriClientEvent)initWithDictionary:(id)a3;
- (ODMSiriSchemaODMSiriClientEvent)initWithJSON:(id)a3;
- (ODMSiriSchemaODMSiriCountsReported)countsReported;
- (ODMSiriSchemaODMSiriCountsReportedAll)countsReportedAll;
- (ODMSiriSchemaODMSiriTaskCountsReported)taskCountsReported;
- (ODMSiriSchemaODMSiriTurnRestatementScoresReported)turnRestatementScoresReported;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)clockIsolationLevel;
- (unint64_t)hash;
- (void)deleteCountsReported;
- (void)deleteCountsReportedAll;
- (void)deleteTaskCountsReported;
- (void)deleteTurnRestatementScoresReported;
- (void)setCountsReported:(id)a3;
- (void)setCountsReportedAll:(id)a3;
- (void)setTaskCountsReported:(id)a3;
- (void)setTurnRestatementScoresReported:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ODMSiriSchemaODMSiriClientEvent

- (ODMSiriSchemaODMSiriClientEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = ODMSiriSchemaODMSiriClientEvent;
  v5 = [(ODMSiriSchemaODMSiriClientEvent *)&v18 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ODMSiriSchemaODMSiriEventMetadata alloc] initWithDictionary:v6];
      [(ODMSiriSchemaODMSiriClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"taskCountsReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[ODMSiriSchemaODMSiriTaskCountsReported alloc] initWithDictionary:v8];
      [(ODMSiriSchemaODMSiriClientEvent *)v5 setTaskCountsReported:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"countsReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[ODMSiriSchemaODMSiriCountsReported alloc] initWithDictionary:v10];
      [(ODMSiriSchemaODMSiriClientEvent *)v5 setCountsReported:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"countsReportedAll"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[ODMSiriSchemaODMSiriCountsReportedAll alloc] initWithDictionary:v12];
      [(ODMSiriSchemaODMSiriClientEvent *)v5 setCountsReportedAll:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"turnRestatementScoresReported"];
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

- (ODMSiriSchemaODMSiriClientEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ODMSiriSchemaODMSiriClientEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ODMSiriSchemaODMSiriClientEvent *)self dictionaryRepresentation];
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
  if (self->_countsReported)
  {
    v4 = [(ODMSiriSchemaODMSiriClientEvent *)self countsReported];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"countsReported"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"countsReported"];
    }
  }

  if (self->_countsReportedAll)
  {
    v7 = [(ODMSiriSchemaODMSiriClientEvent *)self countsReportedAll];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"countsReportedAll"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"countsReportedAll"];
    }
  }

  if (self->_eventMetadata)
  {
    v10 = [(ODMSiriSchemaODMSiriClientEvent *)self eventMetadata];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_taskCountsReported)
  {
    v13 = [(ODMSiriSchemaODMSiriClientEvent *)self taskCountsReported];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"taskCountsReported"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"taskCountsReported"];
    }
  }

  if (self->_turnRestatementScoresReported)
  {
    v16 = [(ODMSiriSchemaODMSiriClientEvent *)self turnRestatementScoresReported];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"turnRestatementScoresReported"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"turnRestatementScoresReported"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(ODMSiriSchemaODMSiriEventMetadata *)self->_eventMetadata hash];
  v4 = [(ODMSiriSchemaODMSiriTaskCountsReported *)self->_taskCountsReported hash]^ v3;
  v5 = [(ODMSiriSchemaODMSiriCountsReported *)self->_countsReported hash];
  v6 = v4 ^ v5 ^ [(ODMSiriSchemaODMSiriCountsReportedAll *)self->_countsReportedAll hash];
  return v6 ^ [(ODMSiriSchemaODMSiriTurnRestatementScoresReported *)self->_turnRestatementScoresReported hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [v4 whichEvent_Type])
  {
    goto LABEL_28;
  }

  v6 = [(ODMSiriSchemaODMSiriClientEvent *)self eventMetadata];
  v7 = [v4 eventMetadata];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_27;
  }

  v8 = [(ODMSiriSchemaODMSiriClientEvent *)self eventMetadata];
  if (v8)
  {
    v9 = v8;
    v10 = [(ODMSiriSchemaODMSiriClientEvent *)self eventMetadata];
    v11 = [v4 eventMetadata];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  v6 = [(ODMSiriSchemaODMSiriClientEvent *)self taskCountsReported];
  v7 = [v4 taskCountsReported];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_27;
  }

  v13 = [(ODMSiriSchemaODMSiriClientEvent *)self taskCountsReported];
  if (v13)
  {
    v14 = v13;
    v15 = [(ODMSiriSchemaODMSiriClientEvent *)self taskCountsReported];
    v16 = [v4 taskCountsReported];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  v6 = [(ODMSiriSchemaODMSiriClientEvent *)self countsReported];
  v7 = [v4 countsReported];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_27;
  }

  v18 = [(ODMSiriSchemaODMSiriClientEvent *)self countsReported];
  if (v18)
  {
    v19 = v18;
    v20 = [(ODMSiriSchemaODMSiriClientEvent *)self countsReported];
    v21 = [v4 countsReported];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  v6 = [(ODMSiriSchemaODMSiriClientEvent *)self countsReportedAll];
  v7 = [v4 countsReportedAll];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_27;
  }

  v23 = [(ODMSiriSchemaODMSiriClientEvent *)self countsReportedAll];
  if (v23)
  {
    v24 = v23;
    v25 = [(ODMSiriSchemaODMSiriClientEvent *)self countsReportedAll];
    v26 = [v4 countsReportedAll];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  v6 = [(ODMSiriSchemaODMSiriClientEvent *)self turnRestatementScoresReported];
  v7 = [v4 turnRestatementScoresReported];
  if ((v6 != 0) != (v7 == 0))
  {
    v28 = [(ODMSiriSchemaODMSiriClientEvent *)self turnRestatementScoresReported];
    if (!v28)
    {

LABEL_31:
      v33 = 1;
      goto LABEL_29;
    }

    v29 = v28;
    v30 = [(ODMSiriSchemaODMSiriClientEvent *)self turnRestatementScoresReported];
    v31 = [v4 turnRestatementScoresReported];
    v32 = [v30 isEqual:v31];

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

- (void)writeTo:(id)a3
{
  v15 = a3;
  v4 = [(ODMSiriSchemaODMSiriClientEvent *)self eventMetadata];

  if (v4)
  {
    v5 = [(ODMSiriSchemaODMSiriClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(ODMSiriSchemaODMSiriClientEvent *)self taskCountsReported];

  if (v6)
  {
    v7 = [(ODMSiriSchemaODMSiriClientEvent *)self taskCountsReported];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(ODMSiriSchemaODMSiriClientEvent *)self countsReported];

  if (v8)
  {
    v9 = [(ODMSiriSchemaODMSiriClientEvent *)self countsReported];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(ODMSiriSchemaODMSiriClientEvent *)self countsReportedAll];

  if (v10)
  {
    v11 = [(ODMSiriSchemaODMSiriClientEvent *)self countsReportedAll];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(ODMSiriSchemaODMSiriClientEvent *)self turnRestatementScoresReported];

  v13 = v15;
  if (v12)
  {
    v14 = [(ODMSiriSchemaODMSiriClientEvent *)self turnRestatementScoresReported];
    PBDataWriterWriteSubmessage();

    v13 = v15;
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

- (void)setTurnRestatementScoresReported:(id)a3
{
  v4 = a3;
  taskCountsReported = self->_taskCountsReported;
  self->_taskCountsReported = 0;

  countsReported = self->_countsReported;
  self->_countsReported = 0;

  countsReportedAll = self->_countsReportedAll;
  self->_countsReportedAll = 0;

  v8 = 5;
  if (!v4)
  {
    v8 = 0;
  }

  self->_whichEvent_Type = v8;
  turnRestatementScoresReported = self->_turnRestatementScoresReported;
  self->_turnRestatementScoresReported = v4;
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

- (void)setCountsReportedAll:(id)a3
{
  v4 = a3;
  taskCountsReported = self->_taskCountsReported;
  self->_taskCountsReported = 0;

  countsReported = self->_countsReported;
  self->_countsReported = 0;

  turnRestatementScoresReported = self->_turnRestatementScoresReported;
  self->_turnRestatementScoresReported = 0;

  self->_whichEvent_Type = 4 * (v4 != 0);
  countsReportedAll = self->_countsReportedAll;
  self->_countsReportedAll = v4;
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

- (void)setCountsReported:(id)a3
{
  v4 = a3;
  taskCountsReported = self->_taskCountsReported;
  self->_taskCountsReported = 0;

  countsReportedAll = self->_countsReportedAll;
  self->_countsReportedAll = 0;

  turnRestatementScoresReported = self->_turnRestatementScoresReported;
  self->_turnRestatementScoresReported = 0;

  v8 = 3;
  if (!v4)
  {
    v8 = 0;
  }

  self->_whichEvent_Type = v8;
  countsReported = self->_countsReported;
  self->_countsReported = v4;
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

- (void)setTaskCountsReported:(id)a3
{
  v4 = a3;
  countsReported = self->_countsReported;
  self->_countsReported = 0;

  countsReportedAll = self->_countsReportedAll;
  self->_countsReportedAll = 0;

  turnRestatementScoresReported = self->_turnRestatementScoresReported;
  self->_turnRestatementScoresReported = 0;

  self->_whichEvent_Type = 2 * (v4 != 0);
  taskCountsReported = self->_taskCountsReported;
  self->_taskCountsReported = v4;
}

- (id)qualifiedMessageName
{
  v2 = [(ODMSiriSchemaODMSiriClientEvent *)self whichEvent_Type];
  if (v2 - 2 > 3)
  {
    return @"com.apple.aiml.odm.siri.ODMSiriClientEvent";
  }

  else
  {
    return off_1E78DE110[v2 - 2];
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = ODMSiriSchemaODMSiriClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v22 applySensitiveConditionsPolicy:v4];
  v6 = [(ODMSiriSchemaODMSiriClientEvent *)self eventMetadata];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(ODMSiriSchemaODMSiriClientEvent *)self deleteEventMetadata];
  }

  v9 = [(ODMSiriSchemaODMSiriClientEvent *)self taskCountsReported];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(ODMSiriSchemaODMSiriClientEvent *)self deleteTaskCountsReported];
  }

  v12 = [(ODMSiriSchemaODMSiriClientEvent *)self countsReported];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(ODMSiriSchemaODMSiriClientEvent *)self deleteCountsReported];
  }

  v15 = [(ODMSiriSchemaODMSiriClientEvent *)self countsReportedAll];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(ODMSiriSchemaODMSiriClientEvent *)self deleteCountsReportedAll];
  }

  v18 = [(ODMSiriSchemaODMSiriClientEvent *)self turnRestatementScoresReported];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
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
  v3 = [(ODMSiriSchemaODMSiriClientEvent *)self whichEvent_Type];
  if (v3 - 2 > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78EA5D8[v3 - 2]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)a3
{
  if (a3 - 2 > 3)
  {
    return 0;
  }

  else
  {
    return off_1E78EA5F8[a3 - 2];
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