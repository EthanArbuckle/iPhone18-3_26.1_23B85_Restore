@interface GRRSchemaGRRClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (GRRSchemaGRRClientEvent)initWithDictionary:(id)a3;
- (GRRSchemaGRRClientEvent)initWithJSON:(id)a3;
- (GRRSchemaGRRFeatureExtractionContext)featureExtractionContext;
- (GRRSchemaGRRHypothesisRankingContext)hypothesisRankingContext;
- (GRRSchemaGRRSystemErrorOccurred)systemErrorOccurred;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (unint64_t)hash;
- (void)deleteFeatureExtractionContext;
- (void)deleteHypothesisRankingContext;
- (void)deleteSystemErrorOccurred;
- (void)setFeatureExtractionContext:(id)a3;
- (void)setHypothesisRankingContext:(id)a3;
- (void)setSystemErrorOccurred:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation GRRSchemaGRRClientEvent

- (GRRSchemaGRRClientEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = GRRSchemaGRRClientEvent;
  v5 = [(GRRSchemaGRRClientEvent *)&v16 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[GRRSchemaGRRClientEventMetadata alloc] initWithDictionary:v6];
      [(GRRSchemaGRRClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"featureExtractionContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[GRRSchemaGRRFeatureExtractionContext alloc] initWithDictionary:v8];
      [(GRRSchemaGRRClientEvent *)v5 setFeatureExtractionContext:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"hypothesisRankingContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[GRRSchemaGRRHypothesisRankingContext alloc] initWithDictionary:v10];
      [(GRRSchemaGRRClientEvent *)v5 setHypothesisRankingContext:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"systemErrorOccurred"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[GRRSchemaGRRSystemErrorOccurred alloc] initWithDictionary:v12];
      [(GRRSchemaGRRClientEvent *)v5 setSystemErrorOccurred:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (GRRSchemaGRRClientEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(GRRSchemaGRRClientEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(GRRSchemaGRRClientEvent *)self dictionaryRepresentation];
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
    v4 = [(GRRSchemaGRRClientEvent *)self eventMetadata];
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

  if (self->_featureExtractionContext)
  {
    v7 = [(GRRSchemaGRRClientEvent *)self featureExtractionContext];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"featureExtractionContext"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"featureExtractionContext"];
    }
  }

  if (self->_hypothesisRankingContext)
  {
    v10 = [(GRRSchemaGRRClientEvent *)self hypothesisRankingContext];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"hypothesisRankingContext"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"hypothesisRankingContext"];
    }
  }

  if (self->_systemErrorOccurred)
  {
    v13 = [(GRRSchemaGRRClientEvent *)self systemErrorOccurred];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"systemErrorOccurred"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"systemErrorOccurred"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(GRRSchemaGRRClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(GRRSchemaGRRFeatureExtractionContext *)self->_featureExtractionContext hash]^ v3;
  v5 = [(GRRSchemaGRRHypothesisRankingContext *)self->_hypothesisRankingContext hash];
  return v4 ^ v5 ^ [(GRRSchemaGRRSystemErrorOccurred *)self->_systemErrorOccurred hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [v4 whichEvent_Type])
  {
    goto LABEL_23;
  }

  v6 = [(GRRSchemaGRRClientEvent *)self eventMetadata];
  v7 = [v4 eventMetadata];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_22;
  }

  v8 = [(GRRSchemaGRRClientEvent *)self eventMetadata];
  if (v8)
  {
    v9 = v8;
    v10 = [(GRRSchemaGRRClientEvent *)self eventMetadata];
    v11 = [v4 eventMetadata];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  v6 = [(GRRSchemaGRRClientEvent *)self featureExtractionContext];
  v7 = [v4 featureExtractionContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_22;
  }

  v13 = [(GRRSchemaGRRClientEvent *)self featureExtractionContext];
  if (v13)
  {
    v14 = v13;
    v15 = [(GRRSchemaGRRClientEvent *)self featureExtractionContext];
    v16 = [v4 featureExtractionContext];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  v6 = [(GRRSchemaGRRClientEvent *)self hypothesisRankingContext];
  v7 = [v4 hypothesisRankingContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_22;
  }

  v18 = [(GRRSchemaGRRClientEvent *)self hypothesisRankingContext];
  if (v18)
  {
    v19 = v18;
    v20 = [(GRRSchemaGRRClientEvent *)self hypothesisRankingContext];
    v21 = [v4 hypothesisRankingContext];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  v6 = [(GRRSchemaGRRClientEvent *)self systemErrorOccurred];
  v7 = [v4 systemErrorOccurred];
  if ((v6 != 0) != (v7 == 0))
  {
    v23 = [(GRRSchemaGRRClientEvent *)self systemErrorOccurred];
    if (!v23)
    {

LABEL_26:
      v28 = 1;
      goto LABEL_24;
    }

    v24 = v23;
    v25 = [(GRRSchemaGRRClientEvent *)self systemErrorOccurred];
    v26 = [v4 systemErrorOccurred];
    v27 = [v25 isEqual:v26];

    if (v27)
    {
      goto LABEL_26;
    }
  }

  else
  {
LABEL_22:
  }

LABEL_23:
  v28 = 0;
LABEL_24:

  return v28;
}

- (void)writeTo:(id)a3
{
  v13 = a3;
  v4 = [(GRRSchemaGRRClientEvent *)self eventMetadata];

  if (v4)
  {
    v5 = [(GRRSchemaGRRClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(GRRSchemaGRRClientEvent *)self featureExtractionContext];

  if (v6)
  {
    v7 = [(GRRSchemaGRRClientEvent *)self featureExtractionContext];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(GRRSchemaGRRClientEvent *)self hypothesisRankingContext];

  if (v8)
  {
    v9 = [(GRRSchemaGRRClientEvent *)self hypothesisRankingContext];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(GRRSchemaGRRClientEvent *)self systemErrorOccurred];

  v11 = v13;
  if (v10)
  {
    v12 = [(GRRSchemaGRRClientEvent *)self systemErrorOccurred];
    PBDataWriterWriteSubmessage();

    v11 = v13;
  }
}

- (void)deleteSystemErrorOccurred
{
  if (self->_whichEvent_Type == 103)
  {
    self->_whichEvent_Type = 0;
    self->_systemErrorOccurred = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (GRRSchemaGRRSystemErrorOccurred)systemErrorOccurred
{
  if (self->_whichEvent_Type == 103)
  {
    v3 = self->_systemErrorOccurred;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSystemErrorOccurred:(id)a3
{
  v4 = a3;
  featureExtractionContext = self->_featureExtractionContext;
  self->_featureExtractionContext = 0;

  hypothesisRankingContext = self->_hypothesisRankingContext;
  self->_hypothesisRankingContext = 0;

  v7 = 103;
  if (!v4)
  {
    v7 = 0;
  }

  self->_whichEvent_Type = v7;
  systemErrorOccurred = self->_systemErrorOccurred;
  self->_systemErrorOccurred = v4;
}

- (void)deleteHypothesisRankingContext
{
  if (self->_whichEvent_Type == 102)
  {
    self->_whichEvent_Type = 0;
    self->_hypothesisRankingContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (GRRSchemaGRRHypothesisRankingContext)hypothesisRankingContext
{
  if (self->_whichEvent_Type == 102)
  {
    v3 = self->_hypothesisRankingContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setHypothesisRankingContext:(id)a3
{
  v4 = a3;
  featureExtractionContext = self->_featureExtractionContext;
  self->_featureExtractionContext = 0;

  systemErrorOccurred = self->_systemErrorOccurred;
  self->_systemErrorOccurred = 0;

  v7 = 102;
  if (!v4)
  {
    v7 = 0;
  }

  self->_whichEvent_Type = v7;
  hypothesisRankingContext = self->_hypothesisRankingContext;
  self->_hypothesisRankingContext = v4;
}

- (void)deleteFeatureExtractionContext
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_featureExtractionContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (GRRSchemaGRRFeatureExtractionContext)featureExtractionContext
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_featureExtractionContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setFeatureExtractionContext:(id)a3
{
  v4 = a3;
  hypothesisRankingContext = self->_hypothesisRankingContext;
  self->_hypothesisRankingContext = 0;

  systemErrorOccurred = self->_systemErrorOccurred;
  self->_systemErrorOccurred = 0;

  v7 = 101;
  if (!v4)
  {
    v7 = 0;
  }

  self->_whichEvent_Type = v7;
  featureExtractionContext = self->_featureExtractionContext;
  self->_featureExtractionContext = v4;
}

- (id)qualifiedMessageName
{
  v2 = [(GRRSchemaGRRClientEvent *)self whichEvent_Type];
  if (v2 - 101 > 2)
  {
    return @"com.apple.aiml.siri.grr.GRRClientEvent";
  }

  else
  {
    return off_1E78D7970[v2 - 101];
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = GRRSchemaGRRClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:v4];
  v6 = [(GRRSchemaGRRClientEvent *)self eventMetadata];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(GRRSchemaGRRClientEvent *)self deleteEventMetadata];
  }

  v9 = [(GRRSchemaGRRClientEvent *)self featureExtractionContext];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(GRRSchemaGRRClientEvent *)self deleteFeatureExtractionContext];
  }

  v12 = [(GRRSchemaGRRClientEvent *)self hypothesisRankingContext];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(GRRSchemaGRRClientEvent *)self deleteHypothesisRankingContext];
  }

  v15 = [(GRRSchemaGRRClientEvent *)self systemErrorOccurred];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(GRRSchemaGRRClientEvent *)self deleteSystemErrorOccurred];
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
  v2 = [(GRRSchemaGRRClientEvent *)self eventMetadata];
  v3 = [v2 grrId];

  if (v3)
  {
    v4 = [v3 value];
    if (v4)
    {
      v5 = [v3 value];
      v6 = [v5 length];

      if (v6)
      {
        LODWORD(v4) = 5;
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
  v2 = [(GRRSchemaGRRClientEvent *)self eventMetadata];
  v3 = [v2 grrId];

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
  v3 = [(GRRSchemaGRRClientEvent *)self whichEvent_Type];
  if (v3 - 101 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78E98E8[v3 - 101]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)a3
{
  if (a3 - 101 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E78E9900[a3 - 101];
  }
}

@end