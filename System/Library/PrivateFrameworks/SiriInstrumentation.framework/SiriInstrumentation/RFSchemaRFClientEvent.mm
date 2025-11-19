@interface RFSchemaRFClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (RFSchemaRFClientEvent)initWithDictionary:(id)a3;
- (RFSchemaRFClientEvent)initWithJSON:(id)a3;
- (RFSchemaRFComponentShown)componentShown;
- (RFSchemaRFGradingDialogReportedTier1)rfGradingDialogReportedTier1;
- (RFSchemaRFInteractionPerformed)interactionPerformed;
- (RFSchemaRFPatternExecuted)patternExecuted;
- (RFSchemaRFSnippetRenderingContext)snippetRenderingContext;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)a3;
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
- (void)setComponentShown:(id)a3;
- (void)setInteractionPerformed:(id)a3;
- (void)setPatternExecuted:(id)a3;
- (void)setRfGradingDialogReportedTier1:(id)a3;
- (void)setSnippetRenderingContext:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation RFSchemaRFClientEvent

- (id)qualifiedMessageName
{
  v2 = [(RFSchemaRFClientEvent *)self whichEvent_Type];
  if (v2 - 101 > 4)
  {
    return @"com.apple.aiml.siri.rf.RFClientEvent";
  }

  else
  {
    return off_1E78E1948[v2 - 101];
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

- (RFSchemaRFClientEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = RFSchemaRFClientEvent;
  v5 = [(RFSchemaRFClientEvent *)&v20 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[RFSchemaRFClientEventMetadata alloc] initWithDictionary:v6];
      [(RFSchemaRFClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"patternExecuted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[RFSchemaRFPatternExecuted alloc] initWithDictionary:v8];
      [(RFSchemaRFClientEvent *)v5 setPatternExecuted:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"interactionPerformed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[RFSchemaRFInteractionPerformed alloc] initWithDictionary:v10];
      [(RFSchemaRFClientEvent *)v5 setInteractionPerformed:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"componentShown"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[RFSchemaRFComponentShown alloc] initWithDictionary:v12];
      [(RFSchemaRFClientEvent *)v5 setComponentShown:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"snippetRenderingContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[RFSchemaRFSnippetRenderingContext alloc] initWithDictionary:v14];
      [(RFSchemaRFClientEvent *)v5 setSnippetRenderingContext:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"rfGradingDialogReportedTier1"];
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

- (RFSchemaRFClientEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(RFSchemaRFClientEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(RFSchemaRFClientEvent *)self dictionaryRepresentation];
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
  if (self->_componentShown)
  {
    v4 = [(RFSchemaRFClientEvent *)self componentShown];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"componentShown"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"componentShown"];
    }
  }

  if (self->_eventMetadata)
  {
    v7 = [(RFSchemaRFClientEvent *)self eventMetadata];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_interactionPerformed)
  {
    v10 = [(RFSchemaRFClientEvent *)self interactionPerformed];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"interactionPerformed"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"interactionPerformed"];
    }
  }

  if (self->_patternExecuted)
  {
    v13 = [(RFSchemaRFClientEvent *)self patternExecuted];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"patternExecuted"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"patternExecuted"];
    }
  }

  if (self->_rfGradingDialogReportedTier1)
  {
    v16 = [(RFSchemaRFClientEvent *)self rfGradingDialogReportedTier1];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"rfGradingDialogReportedTier1"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"rfGradingDialogReportedTier1"];
    }
  }

  if (self->_snippetRenderingContext)
  {
    v19 = [(RFSchemaRFClientEvent *)self snippetRenderingContext];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"snippetRenderingContext"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"snippetRenderingContext"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_33;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [v4 whichEvent_Type])
  {
    goto LABEL_33;
  }

  v6 = [(RFSchemaRFClientEvent *)self eventMetadata];
  v7 = [v4 eventMetadata];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_32;
  }

  v8 = [(RFSchemaRFClientEvent *)self eventMetadata];
  if (v8)
  {
    v9 = v8;
    v10 = [(RFSchemaRFClientEvent *)self eventMetadata];
    v11 = [v4 eventMetadata];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  v6 = [(RFSchemaRFClientEvent *)self patternExecuted];
  v7 = [v4 patternExecuted];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_32;
  }

  v13 = [(RFSchemaRFClientEvent *)self patternExecuted];
  if (v13)
  {
    v14 = v13;
    v15 = [(RFSchemaRFClientEvent *)self patternExecuted];
    v16 = [v4 patternExecuted];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  v6 = [(RFSchemaRFClientEvent *)self interactionPerformed];
  v7 = [v4 interactionPerformed];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_32;
  }

  v18 = [(RFSchemaRFClientEvent *)self interactionPerformed];
  if (v18)
  {
    v19 = v18;
    v20 = [(RFSchemaRFClientEvent *)self interactionPerformed];
    v21 = [v4 interactionPerformed];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  v6 = [(RFSchemaRFClientEvent *)self componentShown];
  v7 = [v4 componentShown];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_32;
  }

  v23 = [(RFSchemaRFClientEvent *)self componentShown];
  if (v23)
  {
    v24 = v23;
    v25 = [(RFSchemaRFClientEvent *)self componentShown];
    v26 = [v4 componentShown];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  v6 = [(RFSchemaRFClientEvent *)self snippetRenderingContext];
  v7 = [v4 snippetRenderingContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_32;
  }

  v28 = [(RFSchemaRFClientEvent *)self snippetRenderingContext];
  if (v28)
  {
    v29 = v28;
    v30 = [(RFSchemaRFClientEvent *)self snippetRenderingContext];
    v31 = [v4 snippetRenderingContext];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  v6 = [(RFSchemaRFClientEvent *)self rfGradingDialogReportedTier1];
  v7 = [v4 rfGradingDialogReportedTier1];
  if ((v6 != 0) != (v7 == 0))
  {
    v33 = [(RFSchemaRFClientEvent *)self rfGradingDialogReportedTier1];
    if (!v33)
    {

LABEL_36:
      v38 = 1;
      goto LABEL_34;
    }

    v34 = v33;
    v35 = [(RFSchemaRFClientEvent *)self rfGradingDialogReportedTier1];
    v36 = [v4 rfGradingDialogReportedTier1];
    v37 = [v35 isEqual:v36];

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

- (void)writeTo:(id)a3
{
  v17 = a3;
  v4 = [(RFSchemaRFClientEvent *)self eventMetadata];

  if (v4)
  {
    v5 = [(RFSchemaRFClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(RFSchemaRFClientEvent *)self patternExecuted];

  if (v6)
  {
    v7 = [(RFSchemaRFClientEvent *)self patternExecuted];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(RFSchemaRFClientEvent *)self interactionPerformed];

  if (v8)
  {
    v9 = [(RFSchemaRFClientEvent *)self interactionPerformed];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(RFSchemaRFClientEvent *)self componentShown];

  if (v10)
  {
    v11 = [(RFSchemaRFClientEvent *)self componentShown];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(RFSchemaRFClientEvent *)self snippetRenderingContext];

  if (v12)
  {
    v13 = [(RFSchemaRFClientEvent *)self snippetRenderingContext];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(RFSchemaRFClientEvent *)self rfGradingDialogReportedTier1];

  v15 = v17;
  if (v14)
  {
    v16 = [(RFSchemaRFClientEvent *)self rfGradingDialogReportedTier1];
    PBDataWriterWriteSubmessage();

    v15 = v17;
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

- (void)setRfGradingDialogReportedTier1:(id)a3
{
  v4 = a3;
  patternExecuted = self->_patternExecuted;
  self->_patternExecuted = 0;

  interactionPerformed = self->_interactionPerformed;
  self->_interactionPerformed = 0;

  componentShown = self->_componentShown;
  self->_componentShown = 0;

  snippetRenderingContext = self->_snippetRenderingContext;
  self->_snippetRenderingContext = 0;

  v9 = 105;
  if (!v4)
  {
    v9 = 0;
  }

  self->_whichEvent_Type = v9;
  rfGradingDialogReportedTier1 = self->_rfGradingDialogReportedTier1;
  self->_rfGradingDialogReportedTier1 = v4;
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

- (void)setSnippetRenderingContext:(id)a3
{
  v4 = a3;
  patternExecuted = self->_patternExecuted;
  self->_patternExecuted = 0;

  interactionPerformed = self->_interactionPerformed;
  self->_interactionPerformed = 0;

  componentShown = self->_componentShown;
  self->_componentShown = 0;

  rfGradingDialogReportedTier1 = self->_rfGradingDialogReportedTier1;
  self->_rfGradingDialogReportedTier1 = 0;

  v9 = 104;
  if (!v4)
  {
    v9 = 0;
  }

  self->_whichEvent_Type = v9;
  snippetRenderingContext = self->_snippetRenderingContext;
  self->_snippetRenderingContext = v4;
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

- (void)setComponentShown:(id)a3
{
  v4 = a3;
  patternExecuted = self->_patternExecuted;
  self->_patternExecuted = 0;

  interactionPerformed = self->_interactionPerformed;
  self->_interactionPerformed = 0;

  snippetRenderingContext = self->_snippetRenderingContext;
  self->_snippetRenderingContext = 0;

  rfGradingDialogReportedTier1 = self->_rfGradingDialogReportedTier1;
  self->_rfGradingDialogReportedTier1 = 0;

  v9 = 103;
  if (!v4)
  {
    v9 = 0;
  }

  self->_whichEvent_Type = v9;
  componentShown = self->_componentShown;
  self->_componentShown = v4;
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

- (void)setInteractionPerformed:(id)a3
{
  v4 = a3;
  patternExecuted = self->_patternExecuted;
  self->_patternExecuted = 0;

  componentShown = self->_componentShown;
  self->_componentShown = 0;

  snippetRenderingContext = self->_snippetRenderingContext;
  self->_snippetRenderingContext = 0;

  rfGradingDialogReportedTier1 = self->_rfGradingDialogReportedTier1;
  self->_rfGradingDialogReportedTier1 = 0;

  v9 = 102;
  if (!v4)
  {
    v9 = 0;
  }

  self->_whichEvent_Type = v9;
  interactionPerformed = self->_interactionPerformed;
  self->_interactionPerformed = v4;
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

- (void)setPatternExecuted:(id)a3
{
  v4 = a3;
  interactionPerformed = self->_interactionPerformed;
  self->_interactionPerformed = 0;

  componentShown = self->_componentShown;
  self->_componentShown = 0;

  snippetRenderingContext = self->_snippetRenderingContext;
  self->_snippetRenderingContext = 0;

  rfGradingDialogReportedTier1 = self->_rfGradingDialogReportedTier1;
  self->_rfGradingDialogReportedTier1 = 0;

  v9 = 101;
  if (!v4)
  {
    v9 = 0;
  }

  self->_whichEvent_Type = v9;
  patternExecuted = self->_patternExecuted;
  self->_patternExecuted = v4;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = RFSchemaRFClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v25 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:2])
  {
    [(RFSchemaRFClientEvent *)self deleteRfGradingDialogReportedTier1];
  }

  if ([v4 isConditionSet:4])
  {
    [(RFSchemaRFClientEvent *)self deleteRfGradingDialogReportedTier1];
  }

  if ([v4 isConditionSet:5])
  {
    [(RFSchemaRFClientEvent *)self deleteRfGradingDialogReportedTier1];
  }

  if ([v4 isConditionSet:6])
  {
    [(RFSchemaRFClientEvent *)self deleteRfGradingDialogReportedTier1];
  }

  if ([v4 isConditionSet:7])
  {
    [(RFSchemaRFClientEvent *)self deleteRfGradingDialogReportedTier1];
  }

  v6 = [(RFSchemaRFClientEvent *)self eventMetadata];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(RFSchemaRFClientEvent *)self deleteEventMetadata];
  }

  v9 = [(RFSchemaRFClientEvent *)self patternExecuted];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(RFSchemaRFClientEvent *)self deletePatternExecuted];
  }

  v12 = [(RFSchemaRFClientEvent *)self interactionPerformed];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(RFSchemaRFClientEvent *)self deleteInteractionPerformed];
  }

  v15 = [(RFSchemaRFClientEvent *)self componentShown];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(RFSchemaRFClientEvent *)self deleteComponentShown];
  }

  v18 = [(RFSchemaRFClientEvent *)self snippetRenderingContext];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(RFSchemaRFClientEvent *)self deleteSnippetRenderingContext];
  }

  v21 = [(RFSchemaRFClientEvent *)self rfGradingDialogReportedTier1];
  v22 = [v21 applySensitiveConditionsPolicy:v4];
  v23 = [v22 suppressMessage];

  if (v23)
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
  v3 = [(RFSchemaRFClientEvent *)self eventMetadata];
  v4 = [v3 turnId];

  if (v4 && ([v4 value], (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v6 = v5, objc_msgSend(v4, "value"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v6, v8))
  {
    LODWORD(v9) = 2;
  }

  else
  {
    v10 = [(RFSchemaRFClientEvent *)self eventMetadata];
    v11 = [v10 requestId];

    if (v11 && ([v11 value], (v12 = objc_claimAutoreleasedReturnValue()) != 0) && (v13 = v12, objc_msgSend(v11, "value"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "length"), v14, v13, v15))
    {
      LODWORD(v9) = 1;
      v4 = v11;
    }

    else
    {
      v16 = [(RFSchemaRFClientEvent *)self eventMetadata];
      v4 = [v16 subRequestId];

      if (v4)
      {
        v9 = [v4 value];
        if (v9)
        {
          v17 = [v4 value];
          v18 = [v17 length];

          if (v18)
          {
            LODWORD(v9) = 43;
          }

          else
          {
            LODWORD(v9) = 0;
          }
        }
      }

      else
      {
        LODWORD(v9) = 0;
      }
    }
  }

  return v9;
}

- (id)getComponentId
{
  v3 = [(RFSchemaRFClientEvent *)self eventMetadata];
  v4 = [v3 turnId];

  if (v4)
  {
    v5 = [v4 value];
    if (v5)
    {
      v6 = v5;
      v7 = [v4 value];
      v8 = [v7 length];

      if (v8)
      {
        goto LABEL_11;
      }
    }
  }

  v9 = [(RFSchemaRFClientEvent *)self eventMetadata];
  v10 = [v9 requestId];

  if (v10)
  {
    v11 = [v10 value];
    if (v11)
    {
      v12 = v11;
      v13 = [v10 value];
      v14 = [v13 length];

      if (v14)
      {
        v4 = v10;
LABEL_11:
        v16 = v4;
        v4 = v16;
        goto LABEL_13;
      }
    }
  }

  v15 = [(RFSchemaRFClientEvent *)self eventMetadata];
  v4 = [v15 subRequestId];

  if (v4)
  {
    v16 = [v4 value];
    if (!v16)
    {
      goto LABEL_13;
    }

    v17 = [v4 value];
    v18 = [v17 length];

    if (v18)
    {
      goto LABEL_11;
    }
  }

  v16 = 0;
LABEL_13:

  return v16;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  v3 = [(RFSchemaRFClientEvent *)self whichEvent_Type];
  if (v3 - 101 > 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78EAE68[v3 - 101]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)a3
{
  if (a3 - 101 > 4)
  {
    return 0;
  }

  else
  {
    return off_1E78EAE90[a3 - 101];
  }
}

@end