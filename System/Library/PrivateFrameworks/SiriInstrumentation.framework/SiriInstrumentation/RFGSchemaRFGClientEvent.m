@interface RFGSchemaRFGClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (RFGSchemaRFGClientEvent)initWithDictionary:(id)a3;
- (RFGSchemaRFGClientEvent)initWithJSON:(id)a3;
- (RFSchemaRFGVisualResponseShownLink)visualResponseShownLink;
- (RFSchemaRFGVisualResponseShownTier1)visualResponseShownTier1;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (unint64_t)hash;
- (void)deleteVisualResponseShownLink;
- (void)deleteVisualResponseShownTier1;
- (void)setVisualResponseShownLink:(id)a3;
- (void)setVisualResponseShownTier1:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation RFGSchemaRFGClientEvent

- (id)qualifiedMessageName
{
  v2 = [(RFGSchemaRFGClientEvent *)self whichEvent_Type];
  v3 = @"com.apple.aiml.siri.rf.RFGClientEvent";
  if (v2 == 102)
  {
    v3 = @"com.apple.aiml.siri.rf.RFGClientEvent.RFGVisualResponseShownLink";
  }

  if (v2 == 101)
  {
    return @"com.apple.aiml.siri.rf.RFGClientEvent.RFGVisualResponseShownTier1";
  }

  else
  {
    return v3;
  }
}

- (RFSchemaRFGVisualResponseShownLink)visualResponseShownLink
{
  if (self->_whichEvent_Type == 102)
  {
    v3 = self->_visualResponseShownLink;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (RFSchemaRFGVisualResponseShownTier1)visualResponseShownTier1
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_visualResponseShownTier1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (RFGSchemaRFGClientEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = RFGSchemaRFGClientEvent;
  v5 = [(RFGSchemaRFGClientEvent *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[RFSchemaRFGClientEventMetadata alloc] initWithDictionary:v6];
      [(RFGSchemaRFGClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"visualResponseShownTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[RFSchemaRFGVisualResponseShownTier1 alloc] initWithDictionary:v8];
      [(RFGSchemaRFGClientEvent *)v5 setVisualResponseShownTier1:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"visualResponseShownLink"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[RFSchemaRFGVisualResponseShownLink alloc] initWithDictionary:v10];
      [(RFGSchemaRFGClientEvent *)v5 setVisualResponseShownLink:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (RFGSchemaRFGClientEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(RFGSchemaRFGClientEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(RFGSchemaRFGClientEvent *)self dictionaryRepresentation];
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
  if (self->_eventMetadata)
  {
    v4 = [(RFGSchemaRFGClientEvent *)self eventMetadata];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_visualResponseShownLink)
  {
    v7 = [(RFGSchemaRFGClientEvent *)self visualResponseShownLink];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"visualResponseShownLink"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"visualResponseShownLink"];
    }
  }

  if (self->_visualResponseShownTier1)
  {
    v10 = [(RFGSchemaRFGClientEvent *)self visualResponseShownTier1];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"visualResponseShownTier1"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"visualResponseShownTier1"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(RFSchemaRFGClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(RFSchemaRFGVisualResponseShownTier1 *)self->_visualResponseShownTier1 hash]^ v3;
  return v4 ^ [(RFSchemaRFGVisualResponseShownLink *)self->_visualResponseShownLink hash];
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

  v6 = [(RFGSchemaRFGClientEvent *)self eventMetadata];
  v7 = [v4 eventMetadata];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_17;
  }

  v8 = [(RFGSchemaRFGClientEvent *)self eventMetadata];
  if (v8)
  {
    v9 = v8;
    v10 = [(RFGSchemaRFGClientEvent *)self eventMetadata];
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

  v6 = [(RFGSchemaRFGClientEvent *)self visualResponseShownTier1];
  v7 = [v4 visualResponseShownTier1];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_17;
  }

  v13 = [(RFGSchemaRFGClientEvent *)self visualResponseShownTier1];
  if (v13)
  {
    v14 = v13;
    v15 = [(RFGSchemaRFGClientEvent *)self visualResponseShownTier1];
    v16 = [v4 visualResponseShownTier1];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v6 = [(RFGSchemaRFGClientEvent *)self visualResponseShownLink];
  v7 = [v4 visualResponseShownLink];
  if ((v6 != 0) != (v7 == 0))
  {
    v18 = [(RFGSchemaRFGClientEvent *)self visualResponseShownLink];
    if (!v18)
    {

LABEL_21:
      v23 = 1;
      goto LABEL_19;
    }

    v19 = v18;
    v20 = [(RFGSchemaRFGClientEvent *)self visualResponseShownLink];
    v21 = [v4 visualResponseShownLink];
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
  v4 = [(RFGSchemaRFGClientEvent *)self eventMetadata];

  if (v4)
  {
    v5 = [(RFGSchemaRFGClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(RFGSchemaRFGClientEvent *)self visualResponseShownTier1];

  if (v6)
  {
    v7 = [(RFGSchemaRFGClientEvent *)self visualResponseShownTier1];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(RFGSchemaRFGClientEvent *)self visualResponseShownLink];

  v9 = v11;
  if (v8)
  {
    v10 = [(RFGSchemaRFGClientEvent *)self visualResponseShownLink];
    PBDataWriterWriteSubmessage();

    v9 = v11;
  }
}

- (void)deleteVisualResponseShownLink
{
  if (self->_whichEvent_Type == 102)
  {
    self->_whichEvent_Type = 0;
    self->_visualResponseShownLink = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setVisualResponseShownLink:(id)a3
{
  v4 = a3;
  visualResponseShownTier1 = self->_visualResponseShownTier1;
  self->_visualResponseShownTier1 = 0;

  v6 = 102;
  if (!v4)
  {
    v6 = 0;
  }

  self->_whichEvent_Type = v6;
  visualResponseShownLink = self->_visualResponseShownLink;
  self->_visualResponseShownLink = v4;
}

- (void)deleteVisualResponseShownTier1
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_visualResponseShownTier1 = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setVisualResponseShownTier1:(id)a3
{
  v4 = a3;
  visualResponseShownLink = self->_visualResponseShownLink;
  self->_visualResponseShownLink = 0;

  v6 = 101;
  if (!v4)
  {
    v6 = 0;
  }

  self->_whichEvent_Type = v6;
  visualResponseShownTier1 = self->_visualResponseShownTier1;
  self->_visualResponseShownTier1 = v4;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = RFGSchemaRFGClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:2])
  {
    [(RFGSchemaRFGClientEvent *)self deleteVisualResponseShownTier1];
  }

  if ([v4 isConditionSet:4])
  {
    [(RFGSchemaRFGClientEvent *)self deleteVisualResponseShownTier1];
  }

  if ([v4 isConditionSet:5])
  {
    [(RFGSchemaRFGClientEvent *)self deleteVisualResponseShownTier1];
  }

  if ([v4 isConditionSet:6])
  {
    [(RFGSchemaRFGClientEvent *)self deleteVisualResponseShownTier1];
  }

  if ([v4 isConditionSet:7])
  {
    [(RFGSchemaRFGClientEvent *)self deleteVisualResponseShownTier1];
  }

  if ([v4 isConditionSet:11])
  {
    [(RFGSchemaRFGClientEvent *)self deleteVisualResponseShownTier1];
  }

  v6 = [(RFGSchemaRFGClientEvent *)self eventMetadata];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(RFGSchemaRFGClientEvent *)self deleteEventMetadata];
  }

  v9 = [(RFGSchemaRFGClientEvent *)self visualResponseShownTier1];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(RFGSchemaRFGClientEvent *)self deleteVisualResponseShownTier1];
  }

  v12 = [(RFGSchemaRFGClientEvent *)self visualResponseShownLink];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(RFGSchemaRFGClientEvent *)self deleteVisualResponseShownLink];
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
  v2 = [(RFGSchemaRFGClientEvent *)self eventMetadata];
  v3 = [v2 rfId];

  if (v3)
  {
    v4 = [v3 value];
    if (v4)
    {
      v5 = [v3 value];
      v6 = [v5 length];

      if (v6)
      {
        LODWORD(v4) = 28;
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
  v2 = [(RFGSchemaRFGClientEvent *)self eventMetadata];
  v3 = [v2 rfId];

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
  v3 = [(RFGSchemaRFGClientEvent *)self whichEvent_Type];
  if (v3 == 101)
  {
    v4 = &OBJC_IVAR___RFGSchemaRFGClientEvent__visualResponseShownTier1;
    goto LABEL_5;
  }

  if (v3 == 102)
  {
    v4 = &OBJC_IVAR___RFGSchemaRFGClientEvent__visualResponseShownLink;
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
  v3 = @"visualResponseShownLink";
  if (a3 != 102)
  {
    v3 = 0;
  }

  if (a3 == 101)
  {
    return @"visualResponseShownTier1";
  }

  else
  {
    return v3;
  }
}

@end