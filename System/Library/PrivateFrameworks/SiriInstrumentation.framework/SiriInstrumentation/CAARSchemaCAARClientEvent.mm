@interface CAARSchemaCAARClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (CAARSchemaCAARClientEvent)initWithDictionary:(id)a3;
- (CAARSchemaCAARClientEvent)initWithJSON:(id)a3;
- (CAARSchemaCAARFeaturesGenerated)featuresGenerated;
- (CAARSchemaCAARModelExecuted)modelExecuted;
- (CAARSchemaCAARRequestContext)caarRequestContext;
- (CAARSchemaCAARTieBreakersExecuted)tieBreakersExecuted;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (unint64_t)hash;
- (void)deleteCaarRequestContext;
- (void)deleteFeaturesGenerated;
- (void)deleteModelExecuted;
- (void)deleteTieBreakersExecuted;
- (void)setCaarRequestContext:(id)a3;
- (void)setFeaturesGenerated:(id)a3;
- (void)setModelExecuted:(id)a3;
- (void)setTieBreakersExecuted:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CAARSchemaCAARClientEvent

- (CAARSchemaCAARClientEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = CAARSchemaCAARClientEvent;
  v5 = [(CAARSchemaCAARClientEvent *)&v18 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[CAARSchemaCAARClientEventMetadata alloc] initWithDictionary:v6];
      [(CAARSchemaCAARClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"caarRequestContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[CAARSchemaCAARRequestContext alloc] initWithDictionary:v8];
      [(CAARSchemaCAARClientEvent *)v5 setCaarRequestContext:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"featuresGenerated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[CAARSchemaCAARFeaturesGenerated alloc] initWithDictionary:v10];
      [(CAARSchemaCAARClientEvent *)v5 setFeaturesGenerated:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"modelExecuted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[CAARSchemaCAARModelExecuted alloc] initWithDictionary:v12];
      [(CAARSchemaCAARClientEvent *)v5 setModelExecuted:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"tieBreakersExecuted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[CAARSchemaCAARTieBreakersExecuted alloc] initWithDictionary:v14];
      [(CAARSchemaCAARClientEvent *)v5 setTieBreakersExecuted:v15];
    }

    v16 = v5;
  }

  return v5;
}

- (CAARSchemaCAARClientEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(CAARSchemaCAARClientEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(CAARSchemaCAARClientEvent *)self dictionaryRepresentation];
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
  if (self->_caarRequestContext)
  {
    v4 = [(CAARSchemaCAARClientEvent *)self caarRequestContext];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"caarRequestContext"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"caarRequestContext"];
    }
  }

  if (self->_eventMetadata)
  {
    v7 = [(CAARSchemaCAARClientEvent *)self eventMetadata];
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

  if (self->_featuresGenerated)
  {
    v10 = [(CAARSchemaCAARClientEvent *)self featuresGenerated];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"featuresGenerated"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"featuresGenerated"];
    }
  }

  if (self->_modelExecuted)
  {
    v13 = [(CAARSchemaCAARClientEvent *)self modelExecuted];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"modelExecuted"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"modelExecuted"];
    }
  }

  if (self->_tieBreakersExecuted)
  {
    v16 = [(CAARSchemaCAARClientEvent *)self tieBreakersExecuted];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"tieBreakersExecuted"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"tieBreakersExecuted"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(CAARSchemaCAARClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(CAARSchemaCAARRequestContext *)self->_caarRequestContext hash]^ v3;
  v5 = [(CAARSchemaCAARFeaturesGenerated *)self->_featuresGenerated hash];
  v6 = v4 ^ v5 ^ [(CAARSchemaCAARModelExecuted *)self->_modelExecuted hash];
  return v6 ^ [(CAARSchemaCAARTieBreakersExecuted *)self->_tieBreakersExecuted hash];
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

  v6 = [(CAARSchemaCAARClientEvent *)self eventMetadata];
  v7 = [v4 eventMetadata];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_27;
  }

  v8 = [(CAARSchemaCAARClientEvent *)self eventMetadata];
  if (v8)
  {
    v9 = v8;
    v10 = [(CAARSchemaCAARClientEvent *)self eventMetadata];
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

  v6 = [(CAARSchemaCAARClientEvent *)self caarRequestContext];
  v7 = [v4 caarRequestContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_27;
  }

  v13 = [(CAARSchemaCAARClientEvent *)self caarRequestContext];
  if (v13)
  {
    v14 = v13;
    v15 = [(CAARSchemaCAARClientEvent *)self caarRequestContext];
    v16 = [v4 caarRequestContext];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  v6 = [(CAARSchemaCAARClientEvent *)self featuresGenerated];
  v7 = [v4 featuresGenerated];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_27;
  }

  v18 = [(CAARSchemaCAARClientEvent *)self featuresGenerated];
  if (v18)
  {
    v19 = v18;
    v20 = [(CAARSchemaCAARClientEvent *)self featuresGenerated];
    v21 = [v4 featuresGenerated];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  v6 = [(CAARSchemaCAARClientEvent *)self modelExecuted];
  v7 = [v4 modelExecuted];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_27;
  }

  v23 = [(CAARSchemaCAARClientEvent *)self modelExecuted];
  if (v23)
  {
    v24 = v23;
    v25 = [(CAARSchemaCAARClientEvent *)self modelExecuted];
    v26 = [v4 modelExecuted];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  v6 = [(CAARSchemaCAARClientEvent *)self tieBreakersExecuted];
  v7 = [v4 tieBreakersExecuted];
  if ((v6 != 0) != (v7 == 0))
  {
    v28 = [(CAARSchemaCAARClientEvent *)self tieBreakersExecuted];
    if (!v28)
    {

LABEL_31:
      v33 = 1;
      goto LABEL_29;
    }

    v29 = v28;
    v30 = [(CAARSchemaCAARClientEvent *)self tieBreakersExecuted];
    v31 = [v4 tieBreakersExecuted];
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
  v4 = [(CAARSchemaCAARClientEvent *)self eventMetadata];

  if (v4)
  {
    v5 = [(CAARSchemaCAARClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(CAARSchemaCAARClientEvent *)self caarRequestContext];

  if (v6)
  {
    v7 = [(CAARSchemaCAARClientEvent *)self caarRequestContext];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(CAARSchemaCAARClientEvent *)self featuresGenerated];

  if (v8)
  {
    v9 = [(CAARSchemaCAARClientEvent *)self featuresGenerated];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(CAARSchemaCAARClientEvent *)self modelExecuted];

  if (v10)
  {
    v11 = [(CAARSchemaCAARClientEvent *)self modelExecuted];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(CAARSchemaCAARClientEvent *)self tieBreakersExecuted];

  v13 = v15;
  if (v12)
  {
    v14 = [(CAARSchemaCAARClientEvent *)self tieBreakersExecuted];
    PBDataWriterWriteSubmessage();

    v13 = v15;
  }
}

- (void)deleteTieBreakersExecuted
{
  if (self->_whichEvent_Type == 104)
  {
    self->_whichEvent_Type = 0;
    self->_tieBreakersExecuted = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (CAARSchemaCAARTieBreakersExecuted)tieBreakersExecuted
{
  if (self->_whichEvent_Type == 104)
  {
    v3 = self->_tieBreakersExecuted;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setTieBreakersExecuted:(id)a3
{
  v4 = a3;
  caarRequestContext = self->_caarRequestContext;
  self->_caarRequestContext = 0;

  featuresGenerated = self->_featuresGenerated;
  self->_featuresGenerated = 0;

  modelExecuted = self->_modelExecuted;
  self->_modelExecuted = 0;

  v8 = 104;
  if (!v4)
  {
    v8 = 0;
  }

  self->_whichEvent_Type = v8;
  tieBreakersExecuted = self->_tieBreakersExecuted;
  self->_tieBreakersExecuted = v4;
}

- (void)deleteModelExecuted
{
  if (self->_whichEvent_Type == 103)
  {
    self->_whichEvent_Type = 0;
    self->_modelExecuted = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (CAARSchemaCAARModelExecuted)modelExecuted
{
  if (self->_whichEvent_Type == 103)
  {
    v3 = self->_modelExecuted;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setModelExecuted:(id)a3
{
  v4 = a3;
  caarRequestContext = self->_caarRequestContext;
  self->_caarRequestContext = 0;

  featuresGenerated = self->_featuresGenerated;
  self->_featuresGenerated = 0;

  tieBreakersExecuted = self->_tieBreakersExecuted;
  self->_tieBreakersExecuted = 0;

  v8 = 103;
  if (!v4)
  {
    v8 = 0;
  }

  self->_whichEvent_Type = v8;
  modelExecuted = self->_modelExecuted;
  self->_modelExecuted = v4;
}

- (void)deleteFeaturesGenerated
{
  if (self->_whichEvent_Type == 102)
  {
    self->_whichEvent_Type = 0;
    self->_featuresGenerated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (CAARSchemaCAARFeaturesGenerated)featuresGenerated
{
  if (self->_whichEvent_Type == 102)
  {
    v3 = self->_featuresGenerated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setFeaturesGenerated:(id)a3
{
  v4 = a3;
  caarRequestContext = self->_caarRequestContext;
  self->_caarRequestContext = 0;

  modelExecuted = self->_modelExecuted;
  self->_modelExecuted = 0;

  tieBreakersExecuted = self->_tieBreakersExecuted;
  self->_tieBreakersExecuted = 0;

  v8 = 102;
  if (!v4)
  {
    v8 = 0;
  }

  self->_whichEvent_Type = v8;
  featuresGenerated = self->_featuresGenerated;
  self->_featuresGenerated = v4;
}

- (void)deleteCaarRequestContext
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_caarRequestContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (CAARSchemaCAARRequestContext)caarRequestContext
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_caarRequestContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCaarRequestContext:(id)a3
{
  v4 = a3;
  featuresGenerated = self->_featuresGenerated;
  self->_featuresGenerated = 0;

  modelExecuted = self->_modelExecuted;
  self->_modelExecuted = 0;

  tieBreakersExecuted = self->_tieBreakersExecuted;
  self->_tieBreakersExecuted = 0;

  v8 = 101;
  if (!v4)
  {
    v8 = 0;
  }

  self->_whichEvent_Type = v8;
  caarRequestContext = self->_caarRequestContext;
  self->_caarRequestContext = v4;
}

- (id)qualifiedMessageName
{
  v2 = [(CAARSchemaCAARClientEvent *)self whichEvent_Type];
  if (v2 - 101 > 3)
  {
    return @"com.apple.aiml.siri.caar.CAARClientEvent";
  }

  else
  {
    return off_1E78D22C8[v2 - 101];
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = CAARSchemaCAARClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v22 applySensitiveConditionsPolicy:v4];
  v6 = [(CAARSchemaCAARClientEvent *)self eventMetadata];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(CAARSchemaCAARClientEvent *)self deleteEventMetadata];
  }

  v9 = [(CAARSchemaCAARClientEvent *)self caarRequestContext];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(CAARSchemaCAARClientEvent *)self deleteCaarRequestContext];
  }

  v12 = [(CAARSchemaCAARClientEvent *)self featuresGenerated];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(CAARSchemaCAARClientEvent *)self deleteFeaturesGenerated];
  }

  v15 = [(CAARSchemaCAARClientEvent *)self modelExecuted];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(CAARSchemaCAARClientEvent *)self deleteModelExecuted];
  }

  v18 = [(CAARSchemaCAARClientEvent *)self tieBreakersExecuted];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(CAARSchemaCAARClientEvent *)self deleteTieBreakersExecuted];
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
  v3 = [(CAARSchemaCAARClientEvent *)self eventMetadata];
  v4 = [v3 caarId];

  if (v4 && ([v4 value], (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v6 = v5, objc_msgSend(v4, "value"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v6, v8))
  {
    LODWORD(v9) = 30;
  }

  else
  {
    v10 = [(CAARSchemaCAARClientEvent *)self eventMetadata];
    v11 = [v10 requestId];

    if (v11 && ([v11 value], (v12 = objc_claimAutoreleasedReturnValue()) != 0) && (v13 = v12, objc_msgSend(v11, "value"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "length"), v14, v13, v15))
    {
      LODWORD(v9) = 1;
      v4 = v11;
    }

    else
    {
      v16 = [(CAARSchemaCAARClientEvent *)self eventMetadata];
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
  v3 = [(CAARSchemaCAARClientEvent *)self eventMetadata];
  v4 = [v3 caarId];

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

  v9 = [(CAARSchemaCAARClientEvent *)self eventMetadata];
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

  v15 = [(CAARSchemaCAARClientEvent *)self eventMetadata];
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
  v3 = [(CAARSchemaCAARClientEvent *)self whichEvent_Type];
  if (v3 - 101 > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78E8FC0[v3 - 101]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)a3
{
  if (a3 - 101 > 3)
  {
    return 0;
  }

  else
  {
    return off_1E78E8FE0[a3 - 101];
  }
}

@end