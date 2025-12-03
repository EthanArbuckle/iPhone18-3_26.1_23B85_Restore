@interface FLSchemaFLClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (FLSchemaFLActionEvaluationContext)evaluationContext;
- (FLSchemaFLClientEvent)initWithDictionary:(id)dictionary;
- (FLSchemaFLClientEvent)initWithJSON:(id)n;
- (FLSchemaFLInteractionDonationContext)donationContext;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (unint64_t)hash;
- (void)deleteDonationContext;
- (void)deleteEvaluationContext;
- (void)setDonationContext:(id)context;
- (void)setEvaluationContext:(id)context;
- (void)writeTo:(id)to;
@end

@implementation FLSchemaFLClientEvent

- (FLSchemaFLClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = FLSchemaFLClientEvent;
  v5 = [(FLSchemaFLClientEvent *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[FLSchemaFLClientEventMetadata alloc] initWithDictionary:v6];
      [(FLSchemaFLClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"evaluationContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[FLSchemaFLActionEvaluationContext alloc] initWithDictionary:v8];
      [(FLSchemaFLClientEvent *)v5 setEvaluationContext:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"donationContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[FLSchemaFLInteractionDonationContext alloc] initWithDictionary:v10];
      [(FLSchemaFLClientEvent *)v5 setDonationContext:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (FLSchemaFLClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(FLSchemaFLClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(FLSchemaFLClientEvent *)self dictionaryRepresentation];
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
  if (self->_donationContext)
  {
    donationContext = [(FLSchemaFLClientEvent *)self donationContext];
    dictionaryRepresentation = [donationContext dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"donationContext"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"donationContext"];
    }
  }

  if (self->_evaluationContext)
  {
    evaluationContext = [(FLSchemaFLClientEvent *)self evaluationContext];
    dictionaryRepresentation2 = [evaluationContext dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"evaluationContext"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"evaluationContext"];
    }
  }

  if (self->_eventMetadata)
  {
    eventMetadata = [(FLSchemaFLClientEvent *)self eventMetadata];
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

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(FLSchemaFLClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(FLSchemaFLActionEvaluationContext *)self->_evaluationContext hash]^ v3;
  return v4 ^ [(FLSchemaFLInteractionDonationContext *)self->_donationContext hash];
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

  eventMetadata = [(FLSchemaFLClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_17;
  }

  eventMetadata3 = [(FLSchemaFLClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(FLSchemaFLClientEvent *)self eventMetadata];
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

  eventMetadata = [(FLSchemaFLClientEvent *)self evaluationContext];
  eventMetadata2 = [equalCopy evaluationContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_17;
  }

  evaluationContext = [(FLSchemaFLClientEvent *)self evaluationContext];
  if (evaluationContext)
  {
    v14 = evaluationContext;
    evaluationContext2 = [(FLSchemaFLClientEvent *)self evaluationContext];
    evaluationContext3 = [equalCopy evaluationContext];
    v17 = [evaluationContext2 isEqual:evaluationContext3];

    if (!v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  eventMetadata = [(FLSchemaFLClientEvent *)self donationContext];
  eventMetadata2 = [equalCopy donationContext];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    donationContext = [(FLSchemaFLClientEvent *)self donationContext];
    if (!donationContext)
    {

LABEL_21:
      v23 = 1;
      goto LABEL_19;
    }

    v19 = donationContext;
    donationContext2 = [(FLSchemaFLClientEvent *)self donationContext];
    donationContext3 = [equalCopy donationContext];
    v22 = [donationContext2 isEqual:donationContext3];

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
  eventMetadata = [(FLSchemaFLClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(FLSchemaFLClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  evaluationContext = [(FLSchemaFLClientEvent *)self evaluationContext];

  if (evaluationContext)
  {
    evaluationContext2 = [(FLSchemaFLClientEvent *)self evaluationContext];
    PBDataWriterWriteSubmessage();
  }

  donationContext = [(FLSchemaFLClientEvent *)self donationContext];

  v9 = toCopy;
  if (donationContext)
  {
    donationContext2 = [(FLSchemaFLClientEvent *)self donationContext];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

- (void)deleteDonationContext
{
  if (self->_whichEvent_Type == 102)
  {
    self->_whichEvent_Type = 0;
    self->_donationContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (FLSchemaFLInteractionDonationContext)donationContext
{
  if (self->_whichEvent_Type == 102)
  {
    v3 = self->_donationContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setDonationContext:(id)context
{
  contextCopy = context;
  evaluationContext = self->_evaluationContext;
  self->_evaluationContext = 0;

  v6 = 102;
  if (!contextCopy)
  {
    v6 = 0;
  }

  self->_whichEvent_Type = v6;
  donationContext = self->_donationContext;
  self->_donationContext = contextCopy;
}

- (void)deleteEvaluationContext
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_evaluationContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (FLSchemaFLActionEvaluationContext)evaluationContext
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_evaluationContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setEvaluationContext:(id)context
{
  contextCopy = context;
  donationContext = self->_donationContext;
  self->_donationContext = 0;

  v6 = 101;
  if (!contextCopy)
  {
    v6 = 0;
  }

  self->_whichEvent_Type = v6;
  evaluationContext = self->_evaluationContext;
  self->_evaluationContext = contextCopy;
}

- (id)qualifiedMessageName
{
  whichEvent_Type = [(FLSchemaFLClientEvent *)self whichEvent_Type];
  v3 = @"com.apple.aiml.siri.fl.FLClientEvent";
  if (whichEvent_Type == 102)
  {
    v3 = @"com.apple.aiml.siri.fl.FLClientEvent.FLInteractionDonationContext";
  }

  if (whichEvent_Type == 101)
  {
    return @"com.apple.aiml.siri.fl.FLClientEvent.FLActionEvaluationContext";
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
  v16.super_class = FLSchemaFLClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  eventMetadata = [(FLSchemaFLClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(FLSchemaFLClientEvent *)self deleteEventMetadata];
  }

  evaluationContext = [(FLSchemaFLClientEvent *)self evaluationContext];
  v10 = [evaluationContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(FLSchemaFLClientEvent *)self deleteEvaluationContext];
  }

  donationContext = [(FLSchemaFLClientEvent *)self donationContext];
  v13 = [donationContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(FLSchemaFLClientEvent *)self deleteDonationContext];
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
  eventMetadata = [(FLSchemaFLClientEvent *)self eventMetadata];
  flId = [eventMetadata flId];

  if (flId)
  {
    value = [flId value];
    if (value)
    {
      value2 = [flId value];
      v6 = [value2 length];

      if (v6)
      {
        LODWORD(value) = 54;
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

  return value;
}

- (id)getComponentId
{
  eventMetadata = [(FLSchemaFLClientEvent *)self eventMetadata];
  flId = [eventMetadata flId];

  if (!flId)
  {
    goto LABEL_5;
  }

  value = [flId value];
  if (!value)
  {
    goto LABEL_6;
  }

  value2 = [flId value];
  v6 = [value2 length];

  if (v6)
  {
    value = flId;
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
  whichEvent_Type = [(FLSchemaFLClientEvent *)self whichEvent_Type];
  if (whichEvent_Type == 101)
  {
    v4 = &OBJC_IVAR___FLSchemaFLClientEvent__evaluationContext;
    goto LABEL_5;
  }

  if (whichEvent_Type == 102)
  {
    v4 = &OBJC_IVAR___FLSchemaFLClientEvent__donationContext;
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
  v3 = @"donationContext";
  if (tag != 102)
  {
    v3 = 0;
  }

  if (tag == 101)
  {
    return @"evaluationContext";
  }

  else
  {
    return v3;
  }
}

@end