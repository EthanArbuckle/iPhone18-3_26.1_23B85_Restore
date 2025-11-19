@interface FLSchemaFLClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (FLSchemaFLActionEvaluationContext)evaluationContext;
- (FLSchemaFLClientEvent)initWithDictionary:(id)a3;
- (FLSchemaFLClientEvent)initWithJSON:(id)a3;
- (FLSchemaFLInteractionDonationContext)donationContext;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (unint64_t)hash;
- (void)deleteDonationContext;
- (void)deleteEvaluationContext;
- (void)setDonationContext:(id)a3;
- (void)setEvaluationContext:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation FLSchemaFLClientEvent

- (FLSchemaFLClientEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = FLSchemaFLClientEvent;
  v5 = [(FLSchemaFLClientEvent *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[FLSchemaFLClientEventMetadata alloc] initWithDictionary:v6];
      [(FLSchemaFLClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"evaluationContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[FLSchemaFLActionEvaluationContext alloc] initWithDictionary:v8];
      [(FLSchemaFLClientEvent *)v5 setEvaluationContext:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"donationContext"];
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

- (FLSchemaFLClientEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(FLSchemaFLClientEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(FLSchemaFLClientEvent *)self dictionaryRepresentation];
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
  if (self->_donationContext)
  {
    v4 = [(FLSchemaFLClientEvent *)self donationContext];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"donationContext"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"donationContext"];
    }
  }

  if (self->_evaluationContext)
  {
    v7 = [(FLSchemaFLClientEvent *)self evaluationContext];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"evaluationContext"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"evaluationContext"];
    }
  }

  if (self->_eventMetadata)
  {
    v10 = [(FLSchemaFLClientEvent *)self eventMetadata];
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

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(FLSchemaFLClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(FLSchemaFLActionEvaluationContext *)self->_evaluationContext hash]^ v3;
  return v4 ^ [(FLSchemaFLInteractionDonationContext *)self->_donationContext hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [v4 whichEvent_Type])
  {
    goto LABEL_18;
  }

  v6 = [(FLSchemaFLClientEvent *)self eventMetadata];
  v7 = [v4 eventMetadata];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_17;
  }

  v8 = [(FLSchemaFLClientEvent *)self eventMetadata];
  if (v8)
  {
    v9 = v8;
    v10 = [(FLSchemaFLClientEvent *)self eventMetadata];
    v11 = [v4 eventMetadata];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v6 = [(FLSchemaFLClientEvent *)self evaluationContext];
  v7 = [v4 evaluationContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_17;
  }

  v13 = [(FLSchemaFLClientEvent *)self evaluationContext];
  if (v13)
  {
    v14 = v13;
    v15 = [(FLSchemaFLClientEvent *)self evaluationContext];
    v16 = [v4 evaluationContext];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v6 = [(FLSchemaFLClientEvent *)self donationContext];
  v7 = [v4 donationContext];
  if ((v6 != 0) != (v7 == 0))
  {
    v18 = [(FLSchemaFLClientEvent *)self donationContext];
    if (!v18)
    {

LABEL_21:
      v23 = 1;
      goto LABEL_19;
    }

    v19 = v18;
    v20 = [(FLSchemaFLClientEvent *)self donationContext];
    v21 = [v4 donationContext];
    v22 = [v20 isEqual:v21];

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

- (void)writeTo:(id)a3
{
  v11 = a3;
  v4 = [(FLSchemaFLClientEvent *)self eventMetadata];

  if (v4)
  {
    v5 = [(FLSchemaFLClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(FLSchemaFLClientEvent *)self evaluationContext];

  if (v6)
  {
    v7 = [(FLSchemaFLClientEvent *)self evaluationContext];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(FLSchemaFLClientEvent *)self donationContext];

  v9 = v11;
  if (v8)
  {
    v10 = [(FLSchemaFLClientEvent *)self donationContext];
    PBDataWriterWriteSubmessage();

    v9 = v11;
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

- (void)setDonationContext:(id)a3
{
  v4 = a3;
  evaluationContext = self->_evaluationContext;
  self->_evaluationContext = 0;

  v6 = 102;
  if (!v4)
  {
    v6 = 0;
  }

  self->_whichEvent_Type = v6;
  donationContext = self->_donationContext;
  self->_donationContext = v4;
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

- (void)setEvaluationContext:(id)a3
{
  v4 = a3;
  donationContext = self->_donationContext;
  self->_donationContext = 0;

  v6 = 101;
  if (!v4)
  {
    v6 = 0;
  }

  self->_whichEvent_Type = v6;
  evaluationContext = self->_evaluationContext;
  self->_evaluationContext = v4;
}

- (id)qualifiedMessageName
{
  v2 = [(FLSchemaFLClientEvent *)self whichEvent_Type];
  v3 = @"com.apple.aiml.siri.fl.FLClientEvent";
  if (v2 == 102)
  {
    v3 = @"com.apple.aiml.siri.fl.FLClientEvent.FLInteractionDonationContext";
  }

  if (v2 == 101)
  {
    return @"com.apple.aiml.siri.fl.FLClientEvent.FLActionEvaluationContext";
  }

  else
  {
    return v3;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = FLSchemaFLClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:v4];
  v6 = [(FLSchemaFLClientEvent *)self eventMetadata];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(FLSchemaFLClientEvent *)self deleteEventMetadata];
  }

  v9 = [(FLSchemaFLClientEvent *)self evaluationContext];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(FLSchemaFLClientEvent *)self deleteEvaluationContext];
  }

  v12 = [(FLSchemaFLClientEvent *)self donationContext];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
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
  v2 = [(FLSchemaFLClientEvent *)self eventMetadata];
  v3 = [v2 flId];

  if (v3)
  {
    v4 = [v3 value];
    if (v4)
    {
      v5 = [v3 value];
      v6 = [v5 length];

      if (v6)
      {
        LODWORD(v4) = 54;
      }

      else
      {
        LODWORD(v4) = 0;
      }
    }
  }

  else
  {
    LODWORD(v4) = 0;
  }

  return v4;
}

- (id)getComponentId
{
  v2 = [(FLSchemaFLClientEvent *)self eventMetadata];
  v3 = [v2 flId];

  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = [v3 value];
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = [v3 value];
  v6 = [v5 length];

  if (v6)
  {
    v4 = v3;
  }

  else
  {
LABEL_5:
    v4 = 0;
  }

LABEL_6:

  return v4;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  v3 = [(FLSchemaFLClientEvent *)self whichEvent_Type];
  if (v3 == 101)
  {
    v4 = &OBJC_IVAR___FLSchemaFLClientEvent__evaluationContext;
    goto LABEL_5;
  }

  if (v3 == 102)
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

+ (id)getInnerTypeStringByTag:(unint64_t)a3
{
  v3 = @"donationContext";
  if (a3 != 102)
  {
    v3 = 0;
  }

  if (a3 == 101)
  {
    return @"evaluationContext";
  }

  else
  {
    return v3;
  }
}

@end