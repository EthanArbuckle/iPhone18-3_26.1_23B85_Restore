@interface RRSchemaRRClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (RRSchemaRRClientEvent)initWithDictionary:(id)a3;
- (RRSchemaRRClientEvent)initWithJSON:(id)a3;
- (RRSchemaRREntityPoolResolveContext)entityPoolResolveContext;
- (RRSchemaRREntityPoolReturned)entityPoolReturned;
- (RRSchemaRRPullerContext)pullerContext;
- (RRSchemaRRUsoGraphTier1)rrUsoGraphTier1;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (unint64_t)hash;
- (void)deleteEntityPoolResolveContext;
- (void)deleteEntityPoolReturned;
- (void)deletePullerContext;
- (void)deleteRrUsoGraphTier1;
- (void)setEntityPoolResolveContext:(id)a3;
- (void)setEntityPoolReturned:(id)a3;
- (void)setPullerContext:(id)a3;
- (void)setRrUsoGraphTier1:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation RRSchemaRRClientEvent

- (RRSchemaRRClientEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = RRSchemaRRClientEvent;
  v5 = [(RRSchemaRRClientEvent *)&v18 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[RRSchemaRRClientEventMetadata alloc] initWithDictionary:v6];
      [(RRSchemaRRClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"entityPoolReturned"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[RRSchemaRREntityPoolReturned alloc] initWithDictionary:v8];
      [(RRSchemaRRClientEvent *)v5 setEntityPoolReturned:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"entityPoolResolveContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[RRSchemaRREntityPoolResolveContext alloc] initWithDictionary:v10];
      [(RRSchemaRRClientEvent *)v5 setEntityPoolResolveContext:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"rrUsoGraphTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[RRSchemaRRUsoGraphTier1 alloc] initWithDictionary:v12];
      [(RRSchemaRRClientEvent *)v5 setRrUsoGraphTier1:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"pullerContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[RRSchemaRRPullerContext alloc] initWithDictionary:v14];
      [(RRSchemaRRClientEvent *)v5 setPullerContext:v15];
    }

    v16 = v5;
  }

  return v5;
}

- (RRSchemaRRClientEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(RRSchemaRRClientEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(RRSchemaRRClientEvent *)self dictionaryRepresentation];
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
  if (self->_entityPoolResolveContext)
  {
    v4 = [(RRSchemaRRClientEvent *)self entityPoolResolveContext];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"entityPoolResolveContext"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"entityPoolResolveContext"];
    }
  }

  if (self->_entityPoolReturned)
  {
    v7 = [(RRSchemaRRClientEvent *)self entityPoolReturned];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"entityPoolReturned"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"entityPoolReturned"];
    }
  }

  if (self->_eventMetadata)
  {
    v10 = [(RRSchemaRRClientEvent *)self eventMetadata];
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

  if (self->_pullerContext)
  {
    v13 = [(RRSchemaRRClientEvent *)self pullerContext];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"pullerContext"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"pullerContext"];
    }
  }

  if (self->_rrUsoGraphTier1)
  {
    v16 = [(RRSchemaRRClientEvent *)self rrUsoGraphTier1];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"rrUsoGraphTier1"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"rrUsoGraphTier1"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(RRSchemaRRClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(RRSchemaRREntityPoolReturned *)self->_entityPoolReturned hash]^ v3;
  v5 = [(RRSchemaRREntityPoolResolveContext *)self->_entityPoolResolveContext hash];
  v6 = v4 ^ v5 ^ [(RRSchemaRRUsoGraphTier1 *)self->_rrUsoGraphTier1 hash];
  return v6 ^ [(RRSchemaRRPullerContext *)self->_pullerContext hash];
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

  v6 = [(RRSchemaRRClientEvent *)self eventMetadata];
  v7 = [v4 eventMetadata];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_27;
  }

  v8 = [(RRSchemaRRClientEvent *)self eventMetadata];
  if (v8)
  {
    v9 = v8;
    v10 = [(RRSchemaRRClientEvent *)self eventMetadata];
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

  v6 = [(RRSchemaRRClientEvent *)self entityPoolReturned];
  v7 = [v4 entityPoolReturned];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_27;
  }

  v13 = [(RRSchemaRRClientEvent *)self entityPoolReturned];
  if (v13)
  {
    v14 = v13;
    v15 = [(RRSchemaRRClientEvent *)self entityPoolReturned];
    v16 = [v4 entityPoolReturned];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  v6 = [(RRSchemaRRClientEvent *)self entityPoolResolveContext];
  v7 = [v4 entityPoolResolveContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_27;
  }

  v18 = [(RRSchemaRRClientEvent *)self entityPoolResolveContext];
  if (v18)
  {
    v19 = v18;
    v20 = [(RRSchemaRRClientEvent *)self entityPoolResolveContext];
    v21 = [v4 entityPoolResolveContext];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  v6 = [(RRSchemaRRClientEvent *)self rrUsoGraphTier1];
  v7 = [v4 rrUsoGraphTier1];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_27;
  }

  v23 = [(RRSchemaRRClientEvent *)self rrUsoGraphTier1];
  if (v23)
  {
    v24 = v23;
    v25 = [(RRSchemaRRClientEvent *)self rrUsoGraphTier1];
    v26 = [v4 rrUsoGraphTier1];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  v6 = [(RRSchemaRRClientEvent *)self pullerContext];
  v7 = [v4 pullerContext];
  if ((v6 != 0) != (v7 == 0))
  {
    v28 = [(RRSchemaRRClientEvent *)self pullerContext];
    if (!v28)
    {

LABEL_31:
      v33 = 1;
      goto LABEL_29;
    }

    v29 = v28;
    v30 = [(RRSchemaRRClientEvent *)self pullerContext];
    v31 = [v4 pullerContext];
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
  v4 = [(RRSchemaRRClientEvent *)self eventMetadata];

  if (v4)
  {
    v5 = [(RRSchemaRRClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(RRSchemaRRClientEvent *)self entityPoolReturned];

  if (v6)
  {
    v7 = [(RRSchemaRRClientEvent *)self entityPoolReturned];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(RRSchemaRRClientEvent *)self entityPoolResolveContext];

  if (v8)
  {
    v9 = [(RRSchemaRRClientEvent *)self entityPoolResolveContext];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(RRSchemaRRClientEvent *)self rrUsoGraphTier1];

  if (v10)
  {
    v11 = [(RRSchemaRRClientEvent *)self rrUsoGraphTier1];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(RRSchemaRRClientEvent *)self pullerContext];

  v13 = v15;
  if (v12)
  {
    v14 = [(RRSchemaRRClientEvent *)self pullerContext];
    PBDataWriterWriteSubmessage();

    v13 = v15;
  }
}

- (void)deletePullerContext
{
  if (self->_whichEvent_Type == 5)
  {
    self->_whichEvent_Type = 0;
    self->_pullerContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (RRSchemaRRPullerContext)pullerContext
{
  if (self->_whichEvent_Type == 5)
  {
    v3 = self->_pullerContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPullerContext:(id)a3
{
  v4 = a3;
  entityPoolReturned = self->_entityPoolReturned;
  self->_entityPoolReturned = 0;

  entityPoolResolveContext = self->_entityPoolResolveContext;
  self->_entityPoolResolveContext = 0;

  rrUsoGraphTier1 = self->_rrUsoGraphTier1;
  self->_rrUsoGraphTier1 = 0;

  v8 = 5;
  if (!v4)
  {
    v8 = 0;
  }

  self->_whichEvent_Type = v8;
  pullerContext = self->_pullerContext;
  self->_pullerContext = v4;
}

- (void)deleteRrUsoGraphTier1
{
  if (self->_whichEvent_Type == 4)
  {
    self->_whichEvent_Type = 0;
    self->_rrUsoGraphTier1 = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (RRSchemaRRUsoGraphTier1)rrUsoGraphTier1
{
  if (self->_whichEvent_Type == 4)
  {
    v3 = self->_rrUsoGraphTier1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setRrUsoGraphTier1:(id)a3
{
  v4 = a3;
  entityPoolReturned = self->_entityPoolReturned;
  self->_entityPoolReturned = 0;

  entityPoolResolveContext = self->_entityPoolResolveContext;
  self->_entityPoolResolveContext = 0;

  pullerContext = self->_pullerContext;
  self->_pullerContext = 0;

  self->_whichEvent_Type = 4 * (v4 != 0);
  rrUsoGraphTier1 = self->_rrUsoGraphTier1;
  self->_rrUsoGraphTier1 = v4;
}

- (void)deleteEntityPoolResolveContext
{
  if (self->_whichEvent_Type == 3)
  {
    self->_whichEvent_Type = 0;
    self->_entityPoolResolveContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (RRSchemaRREntityPoolResolveContext)entityPoolResolveContext
{
  if (self->_whichEvent_Type == 3)
  {
    v3 = self->_entityPoolResolveContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setEntityPoolResolveContext:(id)a3
{
  v4 = a3;
  entityPoolReturned = self->_entityPoolReturned;
  self->_entityPoolReturned = 0;

  rrUsoGraphTier1 = self->_rrUsoGraphTier1;
  self->_rrUsoGraphTier1 = 0;

  pullerContext = self->_pullerContext;
  self->_pullerContext = 0;

  v8 = 3;
  if (!v4)
  {
    v8 = 0;
  }

  self->_whichEvent_Type = v8;
  entityPoolResolveContext = self->_entityPoolResolveContext;
  self->_entityPoolResolveContext = v4;
}

- (void)deleteEntityPoolReturned
{
  if (self->_whichEvent_Type == 2)
  {
    self->_whichEvent_Type = 0;
    self->_entityPoolReturned = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (RRSchemaRREntityPoolReturned)entityPoolReturned
{
  if (self->_whichEvent_Type == 2)
  {
    v3 = self->_entityPoolReturned;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setEntityPoolReturned:(id)a3
{
  v4 = a3;
  entityPoolResolveContext = self->_entityPoolResolveContext;
  self->_entityPoolResolveContext = 0;

  rrUsoGraphTier1 = self->_rrUsoGraphTier1;
  self->_rrUsoGraphTier1 = 0;

  pullerContext = self->_pullerContext;
  self->_pullerContext = 0;

  self->_whichEvent_Type = 2 * (v4 != 0);
  entityPoolReturned = self->_entityPoolReturned;
  self->_entityPoolReturned = v4;
}

- (id)qualifiedMessageName
{
  v2 = [(RRSchemaRRClientEvent *)self whichEvent_Type];
  if (v2 - 2 > 3)
  {
    return @"com.apple.aiml.siri.rr.RRClientEvent";
  }

  else
  {
    return off_1E78E2088[v2 - 2];
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = RRSchemaRRClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v22 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:2])
  {
    [(RRSchemaRRClientEvent *)self deleteRrUsoGraphTier1];
  }

  if ([v4 isConditionSet:4])
  {
    [(RRSchemaRRClientEvent *)self deleteRrUsoGraphTier1];
  }

  if ([v4 isConditionSet:5])
  {
    [(RRSchemaRRClientEvent *)self deleteRrUsoGraphTier1];
  }

  if ([v4 isConditionSet:6])
  {
    [(RRSchemaRRClientEvent *)self deleteRrUsoGraphTier1];
  }

  if ([v4 isConditionSet:7])
  {
    [(RRSchemaRRClientEvent *)self deleteRrUsoGraphTier1];
  }

  v6 = [(RRSchemaRRClientEvent *)self eventMetadata];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(RRSchemaRRClientEvent *)self deleteEventMetadata];
  }

  v9 = [(RRSchemaRRClientEvent *)self entityPoolReturned];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(RRSchemaRRClientEvent *)self deleteEntityPoolReturned];
  }

  v12 = [(RRSchemaRRClientEvent *)self entityPoolResolveContext];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(RRSchemaRRClientEvent *)self deleteEntityPoolResolveContext];
  }

  v15 = [(RRSchemaRRClientEvent *)self rrUsoGraphTier1];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(RRSchemaRRClientEvent *)self deleteRrUsoGraphTier1];
  }

  v18 = [(RRSchemaRRClientEvent *)self pullerContext];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(RRSchemaRRClientEvent *)self deletePullerContext];
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
  v3 = [(RRSchemaRRClientEvent *)self eventMetadata];
  v4 = [v3 rrID];

  if (v4 && ([v4 value], (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v6 = v5, objc_msgSend(v4, "value"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v6, v8))
  {
    LODWORD(v9) = 15;
  }

  else
  {
    v10 = [(RRSchemaRRClientEvent *)self eventMetadata];
    v11 = [v10 requestId];

    if (v11 && ([v11 value], (v12 = objc_claimAutoreleasedReturnValue()) != 0) && (v13 = v12, objc_msgSend(v11, "value"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "length"), v14, v13, v15))
    {
      LODWORD(v9) = 1;
      v4 = v11;
    }

    else
    {
      v16 = [(RRSchemaRRClientEvent *)self eventMetadata];
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
  v3 = [(RRSchemaRRClientEvent *)self eventMetadata];
  v4 = [v3 rrID];

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

  v9 = [(RRSchemaRRClientEvent *)self eventMetadata];
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

  v15 = [(RRSchemaRRClientEvent *)self eventMetadata];
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
  v3 = [(RRSchemaRRClientEvent *)self whichEvent_Type];
  if (v3 - 2 > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78EAF48[v3 - 2]);
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
    return off_1E78EAF68[a3 - 2];
  }
}

@end