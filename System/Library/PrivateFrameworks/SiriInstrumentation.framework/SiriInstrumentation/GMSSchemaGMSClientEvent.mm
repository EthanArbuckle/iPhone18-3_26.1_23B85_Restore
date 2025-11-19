@interface GMSSchemaGMSClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (GMSSchemaGMSClientEvent)initWithDictionary:(id)a3;
- (GMSSchemaGMSClientEvent)initWithJSON:(id)a3;
- (GMSSchemaGMSModelRequestContext)gmsModelRequestContext;
- (GMSSchemaGMSPrivateCloudMetricsReceived)gmsPrivateCloudMetricsReceived;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (unint64_t)hash;
- (void)deleteGmsModelRequestContext;
- (void)deleteGmsPrivateCloudMetricsReceived;
- (void)setGmsModelRequestContext:(id)a3;
- (void)setGmsPrivateCloudMetricsReceived:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation GMSSchemaGMSClientEvent

- (GMSSchemaGMSClientEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = GMSSchemaGMSClientEvent;
  v5 = [(GMSSchemaGMSClientEvent *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[GMSSchemaGMSClientEventMetadata alloc] initWithDictionary:v6];
      [(GMSSchemaGMSClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"gmsModelRequestContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[GMSSchemaGMSModelRequestContext alloc] initWithDictionary:v8];
      [(GMSSchemaGMSClientEvent *)v5 setGmsModelRequestContext:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"gmsPrivateCloudMetricsReceived"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[GMSSchemaGMSPrivateCloudMetricsReceived alloc] initWithDictionary:v10];
      [(GMSSchemaGMSClientEvent *)v5 setGmsPrivateCloudMetricsReceived:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (GMSSchemaGMSClientEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(GMSSchemaGMSClientEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(GMSSchemaGMSClientEvent *)self dictionaryRepresentation];
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
    v4 = [(GMSSchemaGMSClientEvent *)self eventMetadata];
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

  if (self->_gmsModelRequestContext)
  {
    v7 = [(GMSSchemaGMSClientEvent *)self gmsModelRequestContext];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"gmsModelRequestContext"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"gmsModelRequestContext"];
    }
  }

  if (self->_gmsPrivateCloudMetricsReceived)
  {
    v10 = [(GMSSchemaGMSClientEvent *)self gmsPrivateCloudMetricsReceived];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"gmsPrivateCloudMetricsReceived"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"gmsPrivateCloudMetricsReceived"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(GMSSchemaGMSClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(GMSSchemaGMSModelRequestContext *)self->_gmsModelRequestContext hash]^ v3;
  return v4 ^ [(GMSSchemaGMSPrivateCloudMetricsReceived *)self->_gmsPrivateCloudMetricsReceived hash];
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

  v6 = [(GMSSchemaGMSClientEvent *)self eventMetadata];
  v7 = [v4 eventMetadata];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_17;
  }

  v8 = [(GMSSchemaGMSClientEvent *)self eventMetadata];
  if (v8)
  {
    v9 = v8;
    v10 = [(GMSSchemaGMSClientEvent *)self eventMetadata];
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

  v6 = [(GMSSchemaGMSClientEvent *)self gmsModelRequestContext];
  v7 = [v4 gmsModelRequestContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_17;
  }

  v13 = [(GMSSchemaGMSClientEvent *)self gmsModelRequestContext];
  if (v13)
  {
    v14 = v13;
    v15 = [(GMSSchemaGMSClientEvent *)self gmsModelRequestContext];
    v16 = [v4 gmsModelRequestContext];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v6 = [(GMSSchemaGMSClientEvent *)self gmsPrivateCloudMetricsReceived];
  v7 = [v4 gmsPrivateCloudMetricsReceived];
  if ((v6 != 0) != (v7 == 0))
  {
    v18 = [(GMSSchemaGMSClientEvent *)self gmsPrivateCloudMetricsReceived];
    if (!v18)
    {

LABEL_21:
      v23 = 1;
      goto LABEL_19;
    }

    v19 = v18;
    v20 = [(GMSSchemaGMSClientEvent *)self gmsPrivateCloudMetricsReceived];
    v21 = [v4 gmsPrivateCloudMetricsReceived];
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
  v4 = [(GMSSchemaGMSClientEvent *)self eventMetadata];

  if (v4)
  {
    v5 = [(GMSSchemaGMSClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(GMSSchemaGMSClientEvent *)self gmsModelRequestContext];

  if (v6)
  {
    v7 = [(GMSSchemaGMSClientEvent *)self gmsModelRequestContext];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(GMSSchemaGMSClientEvent *)self gmsPrivateCloudMetricsReceived];

  v9 = v11;
  if (v8)
  {
    v10 = [(GMSSchemaGMSClientEvent *)self gmsPrivateCloudMetricsReceived];
    PBDataWriterWriteSubmessage();

    v9 = v11;
  }
}

- (void)deleteGmsPrivateCloudMetricsReceived
{
  if (self->_whichEvent_Type == 102)
  {
    self->_whichEvent_Type = 0;
    self->_gmsPrivateCloudMetricsReceived = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (GMSSchemaGMSPrivateCloudMetricsReceived)gmsPrivateCloudMetricsReceived
{
  if (self->_whichEvent_Type == 102)
  {
    v3 = self->_gmsPrivateCloudMetricsReceived;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setGmsPrivateCloudMetricsReceived:(id)a3
{
  v4 = a3;
  gmsModelRequestContext = self->_gmsModelRequestContext;
  self->_gmsModelRequestContext = 0;

  v6 = 102;
  if (!v4)
  {
    v6 = 0;
  }

  self->_whichEvent_Type = v6;
  gmsPrivateCloudMetricsReceived = self->_gmsPrivateCloudMetricsReceived;
  self->_gmsPrivateCloudMetricsReceived = v4;
}

- (void)deleteGmsModelRequestContext
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_gmsModelRequestContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (GMSSchemaGMSModelRequestContext)gmsModelRequestContext
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_gmsModelRequestContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setGmsModelRequestContext:(id)a3
{
  v4 = a3;
  gmsPrivateCloudMetricsReceived = self->_gmsPrivateCloudMetricsReceived;
  self->_gmsPrivateCloudMetricsReceived = 0;

  v6 = 101;
  if (!v4)
  {
    v6 = 0;
  }

  self->_whichEvent_Type = v6;
  gmsModelRequestContext = self->_gmsModelRequestContext;
  self->_gmsModelRequestContext = v4;
}

- (id)qualifiedMessageName
{
  v2 = [(GMSSchemaGMSClientEvent *)self whichEvent_Type];
  v3 = @"com.apple.aiml.siri.gms.GMSClientEvent";
  if (v2 == 102)
  {
    v3 = @"com.apple.aiml.siri.gms.GMSClientEvent.GMSPrivateCloudMetricsReceived";
  }

  if (v2 == 101)
  {
    return @"com.apple.aiml.siri.gms.GMSClientEvent.GMSModelRequestContext";
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
  v16.super_class = GMSSchemaGMSClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:v4];
  v6 = [(GMSSchemaGMSClientEvent *)self eventMetadata];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(GMSSchemaGMSClientEvent *)self deleteEventMetadata];
  }

  v9 = [(GMSSchemaGMSClientEvent *)self gmsModelRequestContext];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(GMSSchemaGMSClientEvent *)self deleteGmsModelRequestContext];
  }

  v12 = [(GMSSchemaGMSClientEvent *)self gmsPrivateCloudMetricsReceived];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(GMSSchemaGMSClientEvent *)self deleteGmsPrivateCloudMetricsReceived];
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
  v2 = [(GMSSchemaGMSClientEvent *)self eventMetadata];
  v3 = [v2 gmsId];

  if (v3)
  {
    v4 = [v3 value];
    if (v4)
    {
      v5 = [v3 value];
      v6 = [v5 length];

      if (v6)
      {
        LODWORD(v4) = 62;
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
  v2 = [(GMSSchemaGMSClientEvent *)self eventMetadata];
  v3 = [v2 gmsId];

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
  v3 = [(GMSSchemaGMSClientEvent *)self whichEvent_Type];
  if (v3 == 101)
  {
    v4 = &OBJC_IVAR___GMSSchemaGMSClientEvent__gmsModelRequestContext;
    goto LABEL_5;
  }

  if (v3 == 102)
  {
    v4 = &OBJC_IVAR___GMSSchemaGMSClientEvent__gmsPrivateCloudMetricsReceived;
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
  v3 = @"gmsPrivateCloudMetricsReceived";
  if (a3 != 102)
  {
    v3 = 0;
  }

  if (a3 == 101)
  {
    return @"gmsModelRequestContext";
  }

  else
  {
    return v3;
  }
}

@end