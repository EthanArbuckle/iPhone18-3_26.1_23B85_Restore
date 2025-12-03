@interface RFSchemaRFClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (RFSchemaRFClientEvent)initWithDictionary:(id)dictionary;
- (RFSchemaRFClientEvent)initWithJSON:(id)n;
- (RFSchemaRFComponentShown)componentShown;
- (RFSchemaRFGradingDialogReportedTier1)rfGradingDialogReportedTier1;
- (RFSchemaRFInteractionPerformed)interactionPerformed;
- (RFSchemaRFPatternExecuted)patternExecuted;
- (RFSchemaRFSnippetRenderingContext)snippetRenderingContext;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (unint64_t)hash;
- (void)deleteComponentShown;
- (void)deleteInteractionPerformed;
- (void)deletePatternExecuted;
- (void)deleteRfGradingDialogReportedTier1;
- (void)deleteSnippetRenderingContext;
- (void)setComponentShown:(id)shown;
- (void)setInteractionPerformed:(id)performed;
- (void)setPatternExecuted:(id)executed;
- (void)setRfGradingDialogReportedTier1:(id)tier1;
- (void)setSnippetRenderingContext:(id)context;
- (void)writeTo:(id)to;
@end

@implementation RFSchemaRFClientEvent

- (id)qualifiedMessageName
{
  whichEvent_Type = [(RFSchemaRFClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 4)
  {
    return @"com.apple.aiml.siri.rf.RFClientEvent";
  }

  else
  {
    return off_1E78E1948[whichEvent_Type - 101];
  }
}

- (RFSchemaRFPatternExecuted)patternExecuted
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_patternExecuted;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (RFSchemaRFInteractionPerformed)interactionPerformed
{
  if (self->_whichEvent_Type == 102)
  {
    v3 = self->_interactionPerformed;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (RFSchemaRFComponentShown)componentShown
{
  if (self->_whichEvent_Type == 103)
  {
    v3 = self->_componentShown;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (RFSchemaRFSnippetRenderingContext)snippetRenderingContext
{
  if (self->_whichEvent_Type == 104)
  {
    v3 = self->_snippetRenderingContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (RFSchemaRFGradingDialogReportedTier1)rfGradingDialogReportedTier1
{
  if (self->_whichEvent_Type == 105)
  {
    v3 = self->_rfGradingDialogReportedTier1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (RFSchemaRFClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v20.receiver = self;
  v20.super_class = RFSchemaRFClientEvent;
  v5 = [(RFSchemaRFClientEvent *)&v20 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[RFSchemaRFClientEventMetadata alloc] initWithDictionary:v6];
      [(RFSchemaRFClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"patternExecuted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[RFSchemaRFPatternExecuted alloc] initWithDictionary:v8];
      [(RFSchemaRFClientEvent *)v5 setPatternExecuted:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"interactionPerformed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[RFSchemaRFInteractionPerformed alloc] initWithDictionary:v10];
      [(RFSchemaRFClientEvent *)v5 setInteractionPerformed:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"componentShown"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[RFSchemaRFComponentShown alloc] initWithDictionary:v12];
      [(RFSchemaRFClientEvent *)v5 setComponentShown:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"snippetRenderingContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[RFSchemaRFSnippetRenderingContext alloc] initWithDictionary:v14];
      [(RFSchemaRFClientEvent *)v5 setSnippetRenderingContext:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"rfGradingDialogReportedTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[RFSchemaRFGradingDialogReportedTier1 alloc] initWithDictionary:v16];
      [(RFSchemaRFClientEvent *)v5 setRfGradingDialogReportedTier1:v17];
    }

    v18 = v5;
  }

  return v5;
}

- (RFSchemaRFClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(RFSchemaRFClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(RFSchemaRFClientEvent *)self dictionaryRepresentation];
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
  if (self->_componentShown)
  {
    componentShown = [(RFSchemaRFClientEvent *)self componentShown];
    dictionaryRepresentation = [componentShown dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"componentShown"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"componentShown"];
    }
  }

  if (self->_eventMetadata)
  {
    eventMetadata = [(RFSchemaRFClientEvent *)self eventMetadata];
    dictionaryRepresentation2 = [eventMetadata dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_interactionPerformed)
  {
    interactionPerformed = [(RFSchemaRFClientEvent *)self interactionPerformed];
    dictionaryRepresentation3 = [interactionPerformed dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"interactionPerformed"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"interactionPerformed"];
    }
  }

  if (self->_patternExecuted)
  {
    patternExecuted = [(RFSchemaRFClientEvent *)self patternExecuted];
    dictionaryRepresentation4 = [patternExecuted dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"patternExecuted"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"patternExecuted"];
    }
  }

  if (self->_rfGradingDialogReportedTier1)
  {
    rfGradingDialogReportedTier1 = [(RFSchemaRFClientEvent *)self rfGradingDialogReportedTier1];
    dictionaryRepresentation5 = [rfGradingDialogReportedTier1 dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"rfGradingDialogReportedTier1"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"rfGradingDialogReportedTier1"];
    }
  }

  if (self->_snippetRenderingContext)
  {
    snippetRenderingContext = [(RFSchemaRFClientEvent *)self snippetRenderingContext];
    dictionaryRepresentation6 = [snippetRenderingContext dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"snippetRenderingContext"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"snippetRenderingContext"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(RFSchemaRFClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(RFSchemaRFPatternExecuted *)self->_patternExecuted hash]^ v3;
  v5 = [(RFSchemaRFInteractionPerformed *)self->_interactionPerformed hash];
  v6 = v4 ^ v5 ^ [(RFSchemaRFComponentShown *)self->_componentShown hash];
  v7 = [(RFSchemaRFSnippetRenderingContext *)self->_snippetRenderingContext hash];
  return v6 ^ v7 ^ [(RFSchemaRFGradingDialogReportedTier1 *)self->_rfGradingDialogReportedTier1 hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_33;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [equalCopy whichEvent_Type])
  {
    goto LABEL_33;
  }

  eventMetadata = [(RFSchemaRFClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_32;
  }

  eventMetadata3 = [(RFSchemaRFClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(RFSchemaRFClientEvent *)self eventMetadata];
    eventMetadata5 = [equalCopy eventMetadata];
    v12 = [eventMetadata4 isEqual:eventMetadata5];

    if (!v12)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  eventMetadata = [(RFSchemaRFClientEvent *)self patternExecuted];
  eventMetadata2 = [equalCopy patternExecuted];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_32;
  }

  patternExecuted = [(RFSchemaRFClientEvent *)self patternExecuted];
  if (patternExecuted)
  {
    v14 = patternExecuted;
    patternExecuted2 = [(RFSchemaRFClientEvent *)self patternExecuted];
    patternExecuted3 = [equalCopy patternExecuted];
    v17 = [patternExecuted2 isEqual:patternExecuted3];

    if (!v17)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  eventMetadata = [(RFSchemaRFClientEvent *)self interactionPerformed];
  eventMetadata2 = [equalCopy interactionPerformed];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_32;
  }

  interactionPerformed = [(RFSchemaRFClientEvent *)self interactionPerformed];
  if (interactionPerformed)
  {
    v19 = interactionPerformed;
    interactionPerformed2 = [(RFSchemaRFClientEvent *)self interactionPerformed];
    interactionPerformed3 = [equalCopy interactionPerformed];
    v22 = [interactionPerformed2 isEqual:interactionPerformed3];

    if (!v22)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  eventMetadata = [(RFSchemaRFClientEvent *)self componentShown];
  eventMetadata2 = [equalCopy componentShown];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_32;
  }

  componentShown = [(RFSchemaRFClientEvent *)self componentShown];
  if (componentShown)
  {
    v24 = componentShown;
    componentShown2 = [(RFSchemaRFClientEvent *)self componentShown];
    componentShown3 = [equalCopy componentShown];
    v27 = [componentShown2 isEqual:componentShown3];

    if (!v27)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  eventMetadata = [(RFSchemaRFClientEvent *)self snippetRenderingContext];
  eventMetadata2 = [equalCopy snippetRenderingContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_32;
  }

  snippetRenderingContext = [(RFSchemaRFClientEvent *)self snippetRenderingContext];
  if (snippetRenderingContext)
  {
    v29 = snippetRenderingContext;
    snippetRenderingContext2 = [(RFSchemaRFClientEvent *)self snippetRenderingContext];
    snippetRenderingContext3 = [equalCopy snippetRenderingContext];
    v32 = [snippetRenderingContext2 isEqual:snippetRenderingContext3];

    if (!v32)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  eventMetadata = [(RFSchemaRFClientEvent *)self rfGradingDialogReportedTier1];
  eventMetadata2 = [equalCopy rfGradingDialogReportedTier1];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    rfGradingDialogReportedTier1 = [(RFSchemaRFClientEvent *)self rfGradingDialogReportedTier1];
    if (!rfGradingDialogReportedTier1)
    {

LABEL_36:
      v38 = 1;
      goto LABEL_34;
    }

    v34 = rfGradingDialogReportedTier1;
    rfGradingDialogReportedTier12 = [(RFSchemaRFClientEvent *)self rfGradingDialogReportedTier1];
    rfGradingDialogReportedTier13 = [equalCopy rfGradingDialogReportedTier1];
    v37 = [rfGradingDialogReportedTier12 isEqual:rfGradingDialogReportedTier13];

    if (v37)
    {
      goto LABEL_36;
    }
  }

  else
  {
LABEL_32:
  }

LABEL_33:
  v38 = 0;
LABEL_34:

  return v38;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  eventMetadata = [(RFSchemaRFClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(RFSchemaRFClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  patternExecuted = [(RFSchemaRFClientEvent *)self patternExecuted];

  if (patternExecuted)
  {
    patternExecuted2 = [(RFSchemaRFClientEvent *)self patternExecuted];
    PBDataWriterWriteSubmessage();
  }

  interactionPerformed = [(RFSchemaRFClientEvent *)self interactionPerformed];

  if (interactionPerformed)
  {
    interactionPerformed2 = [(RFSchemaRFClientEvent *)self interactionPerformed];
    PBDataWriterWriteSubmessage();
  }

  componentShown = [(RFSchemaRFClientEvent *)self componentShown];

  if (componentShown)
  {
    componentShown2 = [(RFSchemaRFClientEvent *)self componentShown];
    PBDataWriterWriteSubmessage();
  }

  snippetRenderingContext = [(RFSchemaRFClientEvent *)self snippetRenderingContext];

  if (snippetRenderingContext)
  {
    snippetRenderingContext2 = [(RFSchemaRFClientEvent *)self snippetRenderingContext];
    PBDataWriterWriteSubmessage();
  }

  rfGradingDialogReportedTier1 = [(RFSchemaRFClientEvent *)self rfGradingDialogReportedTier1];

  v15 = toCopy;
  if (rfGradingDialogReportedTier1)
  {
    rfGradingDialogReportedTier12 = [(RFSchemaRFClientEvent *)self rfGradingDialogReportedTier1];
    PBDataWriterWriteSubmessage();

    v15 = toCopy;
  }
}

- (void)deleteRfGradingDialogReportedTier1
{
  if (self->_whichEvent_Type == 105)
  {
    self->_whichEvent_Type = 0;
    self->_rfGradingDialogReportedTier1 = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setRfGradingDialogReportedTier1:(id)tier1
{
  tier1Copy = tier1;
  patternExecuted = self->_patternExecuted;
  self->_patternExecuted = 0;

  interactionPerformed = self->_interactionPerformed;
  self->_interactionPerformed = 0;

  componentShown = self->_componentShown;
  self->_componentShown = 0;

  snippetRenderingContext = self->_snippetRenderingContext;
  self->_snippetRenderingContext = 0;

  v9 = 105;
  if (!tier1Copy)
  {
    v9 = 0;
  }

  self->_whichEvent_Type = v9;
  rfGradingDialogReportedTier1 = self->_rfGradingDialogReportedTier1;
  self->_rfGradingDialogReportedTier1 = tier1Copy;
}

- (void)deleteSnippetRenderingContext
{
  if (self->_whichEvent_Type == 104)
  {
    self->_whichEvent_Type = 0;
    self->_snippetRenderingContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setSnippetRenderingContext:(id)context
{
  contextCopy = context;
  patternExecuted = self->_patternExecuted;
  self->_patternExecuted = 0;

  interactionPerformed = self->_interactionPerformed;
  self->_interactionPerformed = 0;

  componentShown = self->_componentShown;
  self->_componentShown = 0;

  rfGradingDialogReportedTier1 = self->_rfGradingDialogReportedTier1;
  self->_rfGradingDialogReportedTier1 = 0;

  v9 = 104;
  if (!contextCopy)
  {
    v9 = 0;
  }

  self->_whichEvent_Type = v9;
  snippetRenderingContext = self->_snippetRenderingContext;
  self->_snippetRenderingContext = contextCopy;
}

- (void)deleteComponentShown
{
  if (self->_whichEvent_Type == 103)
  {
    self->_whichEvent_Type = 0;
    self->_componentShown = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setComponentShown:(id)shown
{
  shownCopy = shown;
  patternExecuted = self->_patternExecuted;
  self->_patternExecuted = 0;

  interactionPerformed = self->_interactionPerformed;
  self->_interactionPerformed = 0;

  snippetRenderingContext = self->_snippetRenderingContext;
  self->_snippetRenderingContext = 0;

  rfGradingDialogReportedTier1 = self->_rfGradingDialogReportedTier1;
  self->_rfGradingDialogReportedTier1 = 0;

  v9 = 103;
  if (!shownCopy)
  {
    v9 = 0;
  }

  self->_whichEvent_Type = v9;
  componentShown = self->_componentShown;
  self->_componentShown = shownCopy;
}

- (void)deleteInteractionPerformed
{
  if (self->_whichEvent_Type == 102)
  {
    self->_whichEvent_Type = 0;
    self->_interactionPerformed = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setInteractionPerformed:(id)performed
{
  performedCopy = performed;
  patternExecuted = self->_patternExecuted;
  self->_patternExecuted = 0;

  componentShown = self->_componentShown;
  self->_componentShown = 0;

  snippetRenderingContext = self->_snippetRenderingContext;
  self->_snippetRenderingContext = 0;

  rfGradingDialogReportedTier1 = self->_rfGradingDialogReportedTier1;
  self->_rfGradingDialogReportedTier1 = 0;

  v9 = 102;
  if (!performedCopy)
  {
    v9 = 0;
  }

  self->_whichEvent_Type = v9;
  interactionPerformed = self->_interactionPerformed;
  self->_interactionPerformed = performedCopy;
}

- (void)deletePatternExecuted
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_patternExecuted = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setPatternExecuted:(id)executed
{
  executedCopy = executed;
  interactionPerformed = self->_interactionPerformed;
  self->_interactionPerformed = 0;

  componentShown = self->_componentShown;
  self->_componentShown = 0;

  snippetRenderingContext = self->_snippetRenderingContext;
  self->_snippetRenderingContext = 0;

  rfGradingDialogReportedTier1 = self->_rfGradingDialogReportedTier1;
  self->_rfGradingDialogReportedTier1 = 0;

  v9 = 101;
  if (!executedCopy)
  {
    v9 = 0;
  }

  self->_whichEvent_Type = v9;
  patternExecuted = self->_patternExecuted;
  self->_patternExecuted = executedCopy;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v25.receiver = self;
  v25.super_class = RFSchemaRFClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v25 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(RFSchemaRFClientEvent *)self deleteRfGradingDialogReportedTier1];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(RFSchemaRFClientEvent *)self deleteRfGradingDialogReportedTier1];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(RFSchemaRFClientEvent *)self deleteRfGradingDialogReportedTier1];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(RFSchemaRFClientEvent *)self deleteRfGradingDialogReportedTier1];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(RFSchemaRFClientEvent *)self deleteRfGradingDialogReportedTier1];
  }

  eventMetadata = [(RFSchemaRFClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(RFSchemaRFClientEvent *)self deleteEventMetadata];
  }

  patternExecuted = [(RFSchemaRFClientEvent *)self patternExecuted];
  v10 = [patternExecuted applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(RFSchemaRFClientEvent *)self deletePatternExecuted];
  }

  interactionPerformed = [(RFSchemaRFClientEvent *)self interactionPerformed];
  v13 = [interactionPerformed applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(RFSchemaRFClientEvent *)self deleteInteractionPerformed];
  }

  componentShown = [(RFSchemaRFClientEvent *)self componentShown];
  v16 = [componentShown applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(RFSchemaRFClientEvent *)self deleteComponentShown];
  }

  snippetRenderingContext = [(RFSchemaRFClientEvent *)self snippetRenderingContext];
  v19 = [snippetRenderingContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(RFSchemaRFClientEvent *)self deleteSnippetRenderingContext];
  }

  rfGradingDialogReportedTier1 = [(RFSchemaRFClientEvent *)self rfGradingDialogReportedTier1];
  v22 = [rfGradingDialogReportedTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(RFSchemaRFClientEvent *)self deleteRfGradingDialogReportedTier1];
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
  eventMetadata = [(RFSchemaRFClientEvent *)self eventMetadata];
  turnId = [eventMetadata turnId];

  if (turnId && ([turnId value], (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v6 = v5, objc_msgSend(turnId, "value"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v6, v8))
  {
    LODWORD(value) = 2;
  }

  else
  {
    eventMetadata2 = [(RFSchemaRFClientEvent *)self eventMetadata];
    requestId = [eventMetadata2 requestId];

    if (requestId && ([requestId value], (v12 = objc_claimAutoreleasedReturnValue()) != 0) && (v13 = v12, objc_msgSend(requestId, "value"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "length"), v14, v13, v15))
    {
      LODWORD(value) = 1;
      turnId = requestId;
    }

    else
    {
      eventMetadata3 = [(RFSchemaRFClientEvent *)self eventMetadata];
      turnId = [eventMetadata3 subRequestId];

      if (turnId)
      {
        value = [turnId value];
        if (value)
        {
          value2 = [turnId value];
          v18 = [value2 length];

          if (v18)
          {
            LODWORD(value) = 43;
          }

          else
          {
            LODWORD(value) = 0;
          }
        }
      }

      else
      {
        LODWORD(value) = 0;
      }
    }
  }

  return value;
}

- (id)getComponentId
{
  eventMetadata = [(RFSchemaRFClientEvent *)self eventMetadata];
  turnId = [eventMetadata turnId];

  if (turnId)
  {
    value = [turnId value];
    if (value)
    {
      v6 = value;
      value2 = [turnId value];
      v8 = [value2 length];

      if (v8)
      {
        goto LABEL_11;
      }
    }
  }

  eventMetadata2 = [(RFSchemaRFClientEvent *)self eventMetadata];
  requestId = [eventMetadata2 requestId];

  if (requestId)
  {
    value3 = [requestId value];
    if (value3)
    {
      v12 = value3;
      value4 = [requestId value];
      v14 = [value4 length];

      if (v14)
      {
        turnId = requestId;
LABEL_11:
        value5 = turnId;
        turnId = value5;
        goto LABEL_13;
      }
    }
  }

  eventMetadata3 = [(RFSchemaRFClientEvent *)self eventMetadata];
  turnId = [eventMetadata3 subRequestId];

  if (turnId)
  {
    value5 = [turnId value];
    if (!value5)
    {
      goto LABEL_13;
    }

    value6 = [turnId value];
    v18 = [value6 length];

    if (v18)
    {
      goto LABEL_11;
    }
  }

  value5 = 0;
LABEL_13:

  return value5;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  whichEvent_Type = [(RFSchemaRFClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78EAE68[whichEvent_Type - 101]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)tag
{
  if (tag - 101 > 4)
  {
    return 0;
  }

  else
  {
    return off_1E78EAE90[tag - 101];
  }
}

@end