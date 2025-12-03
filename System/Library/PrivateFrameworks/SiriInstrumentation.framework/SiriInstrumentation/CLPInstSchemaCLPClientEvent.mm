@interface CLPInstSchemaCLPClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (CLPInstSchemaCLPCDMReplaySampleContext)cdmReplaySampleContext;
- (CLPInstSchemaCLPCDMReplayTaskContext)cdmReplayTaskContext;
- (CLPInstSchemaCLPClientEvent)initWithDictionary:(id)dictionary;
- (CLPInstSchemaCLPClientEvent)initWithJSON:(id)n;
- (CLPInstSchemaCLPCurareAppIntentSampleClassificationContext)curareAppIntentSampleClassificationContext;
- (CLPInstSchemaCLPCurareAppIntentTaskClassificationContext)curareAppIntentTaskClassificationContext;
- (CLPInstSchemaCLPNLv4SampleEvaluationContext)nlv4SampleEvaluationContext;
- (CLPInstSchemaCLPNLv4TaskEvaluationContext)nlv4TaskEvaluationContext;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (unint64_t)hash;
- (void)deleteCdmReplaySampleContext;
- (void)deleteCdmReplayTaskContext;
- (void)deleteCurareAppIntentSampleClassificationContext;
- (void)deleteCurareAppIntentTaskClassificationContext;
- (void)deleteNlv4SampleEvaluationContext;
- (void)deleteNlv4TaskEvaluationContext;
- (void)setCdmReplaySampleContext:(id)context;
- (void)setCdmReplayTaskContext:(id)context;
- (void)setCurareAppIntentSampleClassificationContext:(id)context;
- (void)setCurareAppIntentTaskClassificationContext:(id)context;
- (void)setNlv4SampleEvaluationContext:(id)context;
- (void)setNlv4TaskEvaluationContext:(id)context;
- (void)writeTo:(id)to;
@end

@implementation CLPInstSchemaCLPClientEvent

- (CLPInstSchemaCLPClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v22.receiver = self;
  v22.super_class = CLPInstSchemaCLPClientEvent;
  v5 = [(CLPInstSchemaCLPClientEvent *)&v22 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[CLPInstSchemaCLPClientEventMetadata alloc] initWithDictionary:v6];
      [(CLPInstSchemaCLPClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"nlv4SampleEvaluationContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[CLPInstSchemaCLPNLv4SampleEvaluationContext alloc] initWithDictionary:v8];
      [(CLPInstSchemaCLPClientEvent *)v5 setNlv4SampleEvaluationContext:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"nlv4TaskEvaluationContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[CLPInstSchemaCLPNLv4TaskEvaluationContext alloc] initWithDictionary:v10];
      [(CLPInstSchemaCLPClientEvent *)v5 setNlv4TaskEvaluationContext:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"curareAppIntentSampleClassificationContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[CLPInstSchemaCLPCurareAppIntentSampleClassificationContext alloc] initWithDictionary:v12];
      [(CLPInstSchemaCLPClientEvent *)v5 setCurareAppIntentSampleClassificationContext:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"curareAppIntentTaskClassificationContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[CLPInstSchemaCLPCurareAppIntentTaskClassificationContext alloc] initWithDictionary:v14];
      [(CLPInstSchemaCLPClientEvent *)v5 setCurareAppIntentTaskClassificationContext:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"cdmReplaySampleContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[CLPInstSchemaCLPCDMReplaySampleContext alloc] initWithDictionary:v16];
      [(CLPInstSchemaCLPClientEvent *)v5 setCdmReplaySampleContext:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"cdmReplayTaskContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[CLPInstSchemaCLPCDMReplayTaskContext alloc] initWithDictionary:v18];
      [(CLPInstSchemaCLPClientEvent *)v5 setCdmReplayTaskContext:v19];
    }

    v20 = v5;
  }

  return v5;
}

- (CLPInstSchemaCLPClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(CLPInstSchemaCLPClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(CLPInstSchemaCLPClientEvent *)self dictionaryRepresentation];
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
  if (self->_cdmReplaySampleContext)
  {
    cdmReplaySampleContext = [(CLPInstSchemaCLPClientEvent *)self cdmReplaySampleContext];
    dictionaryRepresentation = [cdmReplaySampleContext dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"cdmReplaySampleContext"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"cdmReplaySampleContext"];
    }
  }

  if (self->_cdmReplayTaskContext)
  {
    cdmReplayTaskContext = [(CLPInstSchemaCLPClientEvent *)self cdmReplayTaskContext];
    dictionaryRepresentation2 = [cdmReplayTaskContext dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"cdmReplayTaskContext"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"cdmReplayTaskContext"];
    }
  }

  if (self->_curareAppIntentSampleClassificationContext)
  {
    curareAppIntentSampleClassificationContext = [(CLPInstSchemaCLPClientEvent *)self curareAppIntentSampleClassificationContext];
    dictionaryRepresentation3 = [curareAppIntentSampleClassificationContext dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"curareAppIntentSampleClassificationContext"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"curareAppIntentSampleClassificationContext"];
    }
  }

  if (self->_curareAppIntentTaskClassificationContext)
  {
    curareAppIntentTaskClassificationContext = [(CLPInstSchemaCLPClientEvent *)self curareAppIntentTaskClassificationContext];
    dictionaryRepresentation4 = [curareAppIntentTaskClassificationContext dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"curareAppIntentTaskClassificationContext"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"curareAppIntentTaskClassificationContext"];
    }
  }

  if (self->_eventMetadata)
  {
    eventMetadata = [(CLPInstSchemaCLPClientEvent *)self eventMetadata];
    dictionaryRepresentation5 = [eventMetadata dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_nlv4SampleEvaluationContext)
  {
    nlv4SampleEvaluationContext = [(CLPInstSchemaCLPClientEvent *)self nlv4SampleEvaluationContext];
    dictionaryRepresentation6 = [nlv4SampleEvaluationContext dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"nlv4SampleEvaluationContext"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"nlv4SampleEvaluationContext"];
    }
  }

  if (self->_nlv4TaskEvaluationContext)
  {
    nlv4TaskEvaluationContext = [(CLPInstSchemaCLPClientEvent *)self nlv4TaskEvaluationContext];
    dictionaryRepresentation7 = [nlv4TaskEvaluationContext dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"nlv4TaskEvaluationContext"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"nlv4TaskEvaluationContext"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(CLPInstSchemaCLPClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(CLPInstSchemaCLPNLv4SampleEvaluationContext *)self->_nlv4SampleEvaluationContext hash]^ v3;
  v5 = [(CLPInstSchemaCLPNLv4TaskEvaluationContext *)self->_nlv4TaskEvaluationContext hash];
  v6 = v4 ^ v5 ^ [(CLPInstSchemaCLPCurareAppIntentSampleClassificationContext *)self->_curareAppIntentSampleClassificationContext hash];
  v7 = [(CLPInstSchemaCLPCurareAppIntentTaskClassificationContext *)self->_curareAppIntentTaskClassificationContext hash];
  v8 = v7 ^ [(CLPInstSchemaCLPCDMReplaySampleContext *)self->_cdmReplaySampleContext hash];
  return v6 ^ v8 ^ [(CLPInstSchemaCLPCDMReplayTaskContext *)self->_cdmReplayTaskContext hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_38;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [equalCopy whichEvent_Type])
  {
    goto LABEL_38;
  }

  eventMetadata = [(CLPInstSchemaCLPClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_37;
  }

  eventMetadata3 = [(CLPInstSchemaCLPClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(CLPInstSchemaCLPClientEvent *)self eventMetadata];
    eventMetadata5 = [equalCopy eventMetadata];
    v12 = [eventMetadata4 isEqual:eventMetadata5];

    if (!v12)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  eventMetadata = [(CLPInstSchemaCLPClientEvent *)self nlv4SampleEvaluationContext];
  eventMetadata2 = [equalCopy nlv4SampleEvaluationContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_37;
  }

  nlv4SampleEvaluationContext = [(CLPInstSchemaCLPClientEvent *)self nlv4SampleEvaluationContext];
  if (nlv4SampleEvaluationContext)
  {
    v14 = nlv4SampleEvaluationContext;
    nlv4SampleEvaluationContext2 = [(CLPInstSchemaCLPClientEvent *)self nlv4SampleEvaluationContext];
    nlv4SampleEvaluationContext3 = [equalCopy nlv4SampleEvaluationContext];
    v17 = [nlv4SampleEvaluationContext2 isEqual:nlv4SampleEvaluationContext3];

    if (!v17)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  eventMetadata = [(CLPInstSchemaCLPClientEvent *)self nlv4TaskEvaluationContext];
  eventMetadata2 = [equalCopy nlv4TaskEvaluationContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_37;
  }

  nlv4TaskEvaluationContext = [(CLPInstSchemaCLPClientEvent *)self nlv4TaskEvaluationContext];
  if (nlv4TaskEvaluationContext)
  {
    v19 = nlv4TaskEvaluationContext;
    nlv4TaskEvaluationContext2 = [(CLPInstSchemaCLPClientEvent *)self nlv4TaskEvaluationContext];
    nlv4TaskEvaluationContext3 = [equalCopy nlv4TaskEvaluationContext];
    v22 = [nlv4TaskEvaluationContext2 isEqual:nlv4TaskEvaluationContext3];

    if (!v22)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  eventMetadata = [(CLPInstSchemaCLPClientEvent *)self curareAppIntentSampleClassificationContext];
  eventMetadata2 = [equalCopy curareAppIntentSampleClassificationContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_37;
  }

  curareAppIntentSampleClassificationContext = [(CLPInstSchemaCLPClientEvent *)self curareAppIntentSampleClassificationContext];
  if (curareAppIntentSampleClassificationContext)
  {
    v24 = curareAppIntentSampleClassificationContext;
    curareAppIntentSampleClassificationContext2 = [(CLPInstSchemaCLPClientEvent *)self curareAppIntentSampleClassificationContext];
    curareAppIntentSampleClassificationContext3 = [equalCopy curareAppIntentSampleClassificationContext];
    v27 = [curareAppIntentSampleClassificationContext2 isEqual:curareAppIntentSampleClassificationContext3];

    if (!v27)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  eventMetadata = [(CLPInstSchemaCLPClientEvent *)self curareAppIntentTaskClassificationContext];
  eventMetadata2 = [equalCopy curareAppIntentTaskClassificationContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_37;
  }

  curareAppIntentTaskClassificationContext = [(CLPInstSchemaCLPClientEvent *)self curareAppIntentTaskClassificationContext];
  if (curareAppIntentTaskClassificationContext)
  {
    v29 = curareAppIntentTaskClassificationContext;
    curareAppIntentTaskClassificationContext2 = [(CLPInstSchemaCLPClientEvent *)self curareAppIntentTaskClassificationContext];
    curareAppIntentTaskClassificationContext3 = [equalCopy curareAppIntentTaskClassificationContext];
    v32 = [curareAppIntentTaskClassificationContext2 isEqual:curareAppIntentTaskClassificationContext3];

    if (!v32)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  eventMetadata = [(CLPInstSchemaCLPClientEvent *)self cdmReplaySampleContext];
  eventMetadata2 = [equalCopy cdmReplaySampleContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_37;
  }

  cdmReplaySampleContext = [(CLPInstSchemaCLPClientEvent *)self cdmReplaySampleContext];
  if (cdmReplaySampleContext)
  {
    v34 = cdmReplaySampleContext;
    cdmReplaySampleContext2 = [(CLPInstSchemaCLPClientEvent *)self cdmReplaySampleContext];
    cdmReplaySampleContext3 = [equalCopy cdmReplaySampleContext];
    v37 = [cdmReplaySampleContext2 isEqual:cdmReplaySampleContext3];

    if (!v37)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  eventMetadata = [(CLPInstSchemaCLPClientEvent *)self cdmReplayTaskContext];
  eventMetadata2 = [equalCopy cdmReplayTaskContext];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    cdmReplayTaskContext = [(CLPInstSchemaCLPClientEvent *)self cdmReplayTaskContext];
    if (!cdmReplayTaskContext)
    {

LABEL_41:
      v43 = 1;
      goto LABEL_39;
    }

    v39 = cdmReplayTaskContext;
    cdmReplayTaskContext2 = [(CLPInstSchemaCLPClientEvent *)self cdmReplayTaskContext];
    cdmReplayTaskContext3 = [equalCopy cdmReplayTaskContext];
    v42 = [cdmReplayTaskContext2 isEqual:cdmReplayTaskContext3];

    if (v42)
    {
      goto LABEL_41;
    }
  }

  else
  {
LABEL_37:
  }

LABEL_38:
  v43 = 0;
LABEL_39:

  return v43;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  eventMetadata = [(CLPInstSchemaCLPClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(CLPInstSchemaCLPClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  nlv4SampleEvaluationContext = [(CLPInstSchemaCLPClientEvent *)self nlv4SampleEvaluationContext];

  if (nlv4SampleEvaluationContext)
  {
    nlv4SampleEvaluationContext2 = [(CLPInstSchemaCLPClientEvent *)self nlv4SampleEvaluationContext];
    PBDataWriterWriteSubmessage();
  }

  nlv4TaskEvaluationContext = [(CLPInstSchemaCLPClientEvent *)self nlv4TaskEvaluationContext];

  if (nlv4TaskEvaluationContext)
  {
    nlv4TaskEvaluationContext2 = [(CLPInstSchemaCLPClientEvent *)self nlv4TaskEvaluationContext];
    PBDataWriterWriteSubmessage();
  }

  curareAppIntentSampleClassificationContext = [(CLPInstSchemaCLPClientEvent *)self curareAppIntentSampleClassificationContext];

  if (curareAppIntentSampleClassificationContext)
  {
    curareAppIntentSampleClassificationContext2 = [(CLPInstSchemaCLPClientEvent *)self curareAppIntentSampleClassificationContext];
    PBDataWriterWriteSubmessage();
  }

  curareAppIntentTaskClassificationContext = [(CLPInstSchemaCLPClientEvent *)self curareAppIntentTaskClassificationContext];

  if (curareAppIntentTaskClassificationContext)
  {
    curareAppIntentTaskClassificationContext2 = [(CLPInstSchemaCLPClientEvent *)self curareAppIntentTaskClassificationContext];
    PBDataWriterWriteSubmessage();
  }

  cdmReplaySampleContext = [(CLPInstSchemaCLPClientEvent *)self cdmReplaySampleContext];

  if (cdmReplaySampleContext)
  {
    cdmReplaySampleContext2 = [(CLPInstSchemaCLPClientEvent *)self cdmReplaySampleContext];
    PBDataWriterWriteSubmessage();
  }

  cdmReplayTaskContext = [(CLPInstSchemaCLPClientEvent *)self cdmReplayTaskContext];

  v17 = toCopy;
  if (cdmReplayTaskContext)
  {
    cdmReplayTaskContext2 = [(CLPInstSchemaCLPClientEvent *)self cdmReplayTaskContext];
    PBDataWriterWriteSubmessage();

    v17 = toCopy;
  }
}

- (void)deleteCdmReplayTaskContext
{
  if (self->_whichEvent_Type == 106)
  {
    self->_whichEvent_Type = 0;
    self->_cdmReplayTaskContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (CLPInstSchemaCLPCDMReplayTaskContext)cdmReplayTaskContext
{
  if (self->_whichEvent_Type == 106)
  {
    v3 = self->_cdmReplayTaskContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCdmReplayTaskContext:(id)context
{
  contextCopy = context;
  nlv4SampleEvaluationContext = self->_nlv4SampleEvaluationContext;
  self->_nlv4SampleEvaluationContext = 0;

  nlv4TaskEvaluationContext = self->_nlv4TaskEvaluationContext;
  self->_nlv4TaskEvaluationContext = 0;

  curareAppIntentSampleClassificationContext = self->_curareAppIntentSampleClassificationContext;
  self->_curareAppIntentSampleClassificationContext = 0;

  curareAppIntentTaskClassificationContext = self->_curareAppIntentTaskClassificationContext;
  self->_curareAppIntentTaskClassificationContext = 0;

  cdmReplaySampleContext = self->_cdmReplaySampleContext;
  self->_cdmReplaySampleContext = 0;

  v10 = 106;
  if (!contextCopy)
  {
    v10 = 0;
  }

  self->_whichEvent_Type = v10;
  cdmReplayTaskContext = self->_cdmReplayTaskContext;
  self->_cdmReplayTaskContext = contextCopy;
}

- (void)deleteCdmReplaySampleContext
{
  if (self->_whichEvent_Type == 105)
  {
    self->_whichEvent_Type = 0;
    self->_cdmReplaySampleContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (CLPInstSchemaCLPCDMReplaySampleContext)cdmReplaySampleContext
{
  if (self->_whichEvent_Type == 105)
  {
    v3 = self->_cdmReplaySampleContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCdmReplaySampleContext:(id)context
{
  contextCopy = context;
  nlv4SampleEvaluationContext = self->_nlv4SampleEvaluationContext;
  self->_nlv4SampleEvaluationContext = 0;

  nlv4TaskEvaluationContext = self->_nlv4TaskEvaluationContext;
  self->_nlv4TaskEvaluationContext = 0;

  curareAppIntentSampleClassificationContext = self->_curareAppIntentSampleClassificationContext;
  self->_curareAppIntentSampleClassificationContext = 0;

  curareAppIntentTaskClassificationContext = self->_curareAppIntentTaskClassificationContext;
  self->_curareAppIntentTaskClassificationContext = 0;

  cdmReplayTaskContext = self->_cdmReplayTaskContext;
  self->_cdmReplayTaskContext = 0;

  v10 = 105;
  if (!contextCopy)
  {
    v10 = 0;
  }

  self->_whichEvent_Type = v10;
  cdmReplaySampleContext = self->_cdmReplaySampleContext;
  self->_cdmReplaySampleContext = contextCopy;
}

- (void)deleteCurareAppIntentTaskClassificationContext
{
  if (self->_whichEvent_Type == 104)
  {
    self->_whichEvent_Type = 0;
    self->_curareAppIntentTaskClassificationContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (CLPInstSchemaCLPCurareAppIntentTaskClassificationContext)curareAppIntentTaskClassificationContext
{
  if (self->_whichEvent_Type == 104)
  {
    v3 = self->_curareAppIntentTaskClassificationContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCurareAppIntentTaskClassificationContext:(id)context
{
  contextCopy = context;
  nlv4SampleEvaluationContext = self->_nlv4SampleEvaluationContext;
  self->_nlv4SampleEvaluationContext = 0;

  nlv4TaskEvaluationContext = self->_nlv4TaskEvaluationContext;
  self->_nlv4TaskEvaluationContext = 0;

  curareAppIntentSampleClassificationContext = self->_curareAppIntentSampleClassificationContext;
  self->_curareAppIntentSampleClassificationContext = 0;

  cdmReplaySampleContext = self->_cdmReplaySampleContext;
  self->_cdmReplaySampleContext = 0;

  cdmReplayTaskContext = self->_cdmReplayTaskContext;
  self->_cdmReplayTaskContext = 0;

  v10 = 104;
  if (!contextCopy)
  {
    v10 = 0;
  }

  self->_whichEvent_Type = v10;
  curareAppIntentTaskClassificationContext = self->_curareAppIntentTaskClassificationContext;
  self->_curareAppIntentTaskClassificationContext = contextCopy;
}

- (void)deleteCurareAppIntentSampleClassificationContext
{
  if (self->_whichEvent_Type == 103)
  {
    self->_whichEvent_Type = 0;
    self->_curareAppIntentSampleClassificationContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (CLPInstSchemaCLPCurareAppIntentSampleClassificationContext)curareAppIntentSampleClassificationContext
{
  if (self->_whichEvent_Type == 103)
  {
    v3 = self->_curareAppIntentSampleClassificationContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCurareAppIntentSampleClassificationContext:(id)context
{
  contextCopy = context;
  nlv4SampleEvaluationContext = self->_nlv4SampleEvaluationContext;
  self->_nlv4SampleEvaluationContext = 0;

  nlv4TaskEvaluationContext = self->_nlv4TaskEvaluationContext;
  self->_nlv4TaskEvaluationContext = 0;

  curareAppIntentTaskClassificationContext = self->_curareAppIntentTaskClassificationContext;
  self->_curareAppIntentTaskClassificationContext = 0;

  cdmReplaySampleContext = self->_cdmReplaySampleContext;
  self->_cdmReplaySampleContext = 0;

  cdmReplayTaskContext = self->_cdmReplayTaskContext;
  self->_cdmReplayTaskContext = 0;

  v10 = 103;
  if (!contextCopy)
  {
    v10 = 0;
  }

  self->_whichEvent_Type = v10;
  curareAppIntentSampleClassificationContext = self->_curareAppIntentSampleClassificationContext;
  self->_curareAppIntentSampleClassificationContext = contextCopy;
}

- (void)deleteNlv4TaskEvaluationContext
{
  if (self->_whichEvent_Type == 102)
  {
    self->_whichEvent_Type = 0;
    self->_nlv4TaskEvaluationContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (CLPInstSchemaCLPNLv4TaskEvaluationContext)nlv4TaskEvaluationContext
{
  if (self->_whichEvent_Type == 102)
  {
    v3 = self->_nlv4TaskEvaluationContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setNlv4TaskEvaluationContext:(id)context
{
  contextCopy = context;
  nlv4SampleEvaluationContext = self->_nlv4SampleEvaluationContext;
  self->_nlv4SampleEvaluationContext = 0;

  curareAppIntentSampleClassificationContext = self->_curareAppIntentSampleClassificationContext;
  self->_curareAppIntentSampleClassificationContext = 0;

  curareAppIntentTaskClassificationContext = self->_curareAppIntentTaskClassificationContext;
  self->_curareAppIntentTaskClassificationContext = 0;

  cdmReplaySampleContext = self->_cdmReplaySampleContext;
  self->_cdmReplaySampleContext = 0;

  cdmReplayTaskContext = self->_cdmReplayTaskContext;
  self->_cdmReplayTaskContext = 0;

  v10 = 102;
  if (!contextCopy)
  {
    v10 = 0;
  }

  self->_whichEvent_Type = v10;
  nlv4TaskEvaluationContext = self->_nlv4TaskEvaluationContext;
  self->_nlv4TaskEvaluationContext = contextCopy;
}

- (void)deleteNlv4SampleEvaluationContext
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_nlv4SampleEvaluationContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (CLPInstSchemaCLPNLv4SampleEvaluationContext)nlv4SampleEvaluationContext
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_nlv4SampleEvaluationContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setNlv4SampleEvaluationContext:(id)context
{
  contextCopy = context;
  nlv4TaskEvaluationContext = self->_nlv4TaskEvaluationContext;
  self->_nlv4TaskEvaluationContext = 0;

  curareAppIntentSampleClassificationContext = self->_curareAppIntentSampleClassificationContext;
  self->_curareAppIntentSampleClassificationContext = 0;

  curareAppIntentTaskClassificationContext = self->_curareAppIntentTaskClassificationContext;
  self->_curareAppIntentTaskClassificationContext = 0;

  cdmReplaySampleContext = self->_cdmReplaySampleContext;
  self->_cdmReplaySampleContext = 0;

  cdmReplayTaskContext = self->_cdmReplayTaskContext;
  self->_cdmReplayTaskContext = 0;

  v10 = 101;
  if (!contextCopy)
  {
    v10 = 0;
  }

  self->_whichEvent_Type = v10;
  nlv4SampleEvaluationContext = self->_nlv4SampleEvaluationContext;
  self->_nlv4SampleEvaluationContext = contextCopy;
}

- (id)qualifiedMessageName
{
  whichEvent_Type = [(CLPInstSchemaCLPClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 5)
  {
    return @"com.apple.aiml.siri.clp.CLPClientEvent";
  }

  else
  {
    return off_1E78D2A90[whichEvent_Type - 101];
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v28.receiver = self;
  v28.super_class = CLPInstSchemaCLPClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v28 applySensitiveConditionsPolicy:policyCopy];
  eventMetadata = [(CLPInstSchemaCLPClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(CLPInstSchemaCLPClientEvent *)self deleteEventMetadata];
  }

  nlv4SampleEvaluationContext = [(CLPInstSchemaCLPClientEvent *)self nlv4SampleEvaluationContext];
  v10 = [nlv4SampleEvaluationContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(CLPInstSchemaCLPClientEvent *)self deleteNlv4SampleEvaluationContext];
  }

  nlv4TaskEvaluationContext = [(CLPInstSchemaCLPClientEvent *)self nlv4TaskEvaluationContext];
  v13 = [nlv4TaskEvaluationContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(CLPInstSchemaCLPClientEvent *)self deleteNlv4TaskEvaluationContext];
  }

  curareAppIntentSampleClassificationContext = [(CLPInstSchemaCLPClientEvent *)self curareAppIntentSampleClassificationContext];
  v16 = [curareAppIntentSampleClassificationContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(CLPInstSchemaCLPClientEvent *)self deleteCurareAppIntentSampleClassificationContext];
  }

  curareAppIntentTaskClassificationContext = [(CLPInstSchemaCLPClientEvent *)self curareAppIntentTaskClassificationContext];
  v19 = [curareAppIntentTaskClassificationContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(CLPInstSchemaCLPClientEvent *)self deleteCurareAppIntentTaskClassificationContext];
  }

  cdmReplaySampleContext = [(CLPInstSchemaCLPClientEvent *)self cdmReplaySampleContext];
  v22 = [cdmReplaySampleContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(CLPInstSchemaCLPClientEvent *)self deleteCdmReplaySampleContext];
  }

  cdmReplayTaskContext = [(CLPInstSchemaCLPClientEvent *)self cdmReplayTaskContext];
  v25 = [cdmReplayTaskContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage7 = [v25 suppressMessage];

  if (suppressMessage7)
  {
    [(CLPInstSchemaCLPClientEvent *)self deleteCdmReplayTaskContext];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

- (int)componentName
{
  eventMetadata = [(CLPInstSchemaCLPClientEvent *)self eventMetadata];
  clpId = [eventMetadata clpId];

  if (clpId)
  {
    value = [clpId value];
    if (value)
    {
      value2 = [clpId value];
      v6 = [value2 length] != 0;

      LODWORD(value) = 16 * v6;
    }
  }

  else
  {
    LODWORD(value) = 0;
  }

  return value;
}

- (id)getComponentId
{
  eventMetadata = [(CLPInstSchemaCLPClientEvent *)self eventMetadata];
  clpId = [eventMetadata clpId];

  if (!clpId)
  {
    goto LABEL_5;
  }

  value = [clpId value];
  if (!value)
  {
    goto LABEL_6;
  }

  value2 = [clpId value];
  v6 = [value2 length];

  if (v6)
  {
    value = clpId;
  }

  else
  {
LABEL_5:
    value = 0;
  }

LABEL_6:

  return value;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  whichEvent_Type = [(CLPInstSchemaCLPClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78E90C0[whichEvent_Type - 101]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)tag
{
  if (tag - 101 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E78E90F0[tag - 101];
  }
}

@end