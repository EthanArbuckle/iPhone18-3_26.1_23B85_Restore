@interface RRSchemaRRClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (RRSchemaRRClientEvent)initWithDictionary:(id)dictionary;
- (RRSchemaRRClientEvent)initWithJSON:(id)n;
- (RRSchemaRREntityPoolResolveContext)entityPoolResolveContext;
- (RRSchemaRREntityPoolReturned)entityPoolReturned;
- (RRSchemaRRPullerContext)pullerContext;
- (RRSchemaRRUsoGraphTier1)rrUsoGraphTier1;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
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
- (void)setEntityPoolResolveContext:(id)context;
- (void)setEntityPoolReturned:(id)returned;
- (void)setPullerContext:(id)context;
- (void)setRrUsoGraphTier1:(id)tier1;
- (void)writeTo:(id)to;
@end

@implementation RRSchemaRRClientEvent

- (RRSchemaRRClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = RRSchemaRRClientEvent;
  v5 = [(RRSchemaRRClientEvent *)&v18 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[RRSchemaRRClientEventMetadata alloc] initWithDictionary:v6];
      [(RRSchemaRRClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"entityPoolReturned"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[RRSchemaRREntityPoolReturned alloc] initWithDictionary:v8];
      [(RRSchemaRRClientEvent *)v5 setEntityPoolReturned:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"entityPoolResolveContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[RRSchemaRREntityPoolResolveContext alloc] initWithDictionary:v10];
      [(RRSchemaRRClientEvent *)v5 setEntityPoolResolveContext:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"rrUsoGraphTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[RRSchemaRRUsoGraphTier1 alloc] initWithDictionary:v12];
      [(RRSchemaRRClientEvent *)v5 setRrUsoGraphTier1:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"pullerContext"];
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

- (RRSchemaRRClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(RRSchemaRRClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(RRSchemaRRClientEvent *)self dictionaryRepresentation];
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
  if (self->_entityPoolResolveContext)
  {
    entityPoolResolveContext = [(RRSchemaRRClientEvent *)self entityPoolResolveContext];
    dictionaryRepresentation = [entityPoolResolveContext dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"entityPoolResolveContext"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"entityPoolResolveContext"];
    }
  }

  if (self->_entityPoolReturned)
  {
    entityPoolReturned = [(RRSchemaRRClientEvent *)self entityPoolReturned];
    dictionaryRepresentation2 = [entityPoolReturned dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"entityPoolReturned"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"entityPoolReturned"];
    }
  }

  if (self->_eventMetadata)
  {
    eventMetadata = [(RRSchemaRRClientEvent *)self eventMetadata];
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

  if (self->_pullerContext)
  {
    pullerContext = [(RRSchemaRRClientEvent *)self pullerContext];
    dictionaryRepresentation4 = [pullerContext dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"pullerContext"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"pullerContext"];
    }
  }

  if (self->_rrUsoGraphTier1)
  {
    rrUsoGraphTier1 = [(RRSchemaRRClientEvent *)self rrUsoGraphTier1];
    dictionaryRepresentation5 = [rrUsoGraphTier1 dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"rrUsoGraphTier1"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"rrUsoGraphTier1"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(RRSchemaRRClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(RRSchemaRREntityPoolReturned *)self->_entityPoolReturned hash]^ v3;
  v5 = [(RRSchemaRREntityPoolResolveContext *)self->_entityPoolResolveContext hash];
  v6 = v4 ^ v5 ^ [(RRSchemaRRUsoGraphTier1 *)self->_rrUsoGraphTier1 hash];
  return v6 ^ [(RRSchemaRRPullerContext *)self->_pullerContext hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [equalCopy whichEvent_Type])
  {
    goto LABEL_28;
  }

  eventMetadata = [(RRSchemaRRClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_27;
  }

  eventMetadata3 = [(RRSchemaRRClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(RRSchemaRRClientEvent *)self eventMetadata];
    eventMetadata5 = [equalCopy eventMetadata];
    v12 = [eventMetadata4 isEqual:eventMetadata5];

    if (!v12)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  eventMetadata = [(RRSchemaRRClientEvent *)self entityPoolReturned];
  eventMetadata2 = [equalCopy entityPoolReturned];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_27;
  }

  entityPoolReturned = [(RRSchemaRRClientEvent *)self entityPoolReturned];
  if (entityPoolReturned)
  {
    v14 = entityPoolReturned;
    entityPoolReturned2 = [(RRSchemaRRClientEvent *)self entityPoolReturned];
    entityPoolReturned3 = [equalCopy entityPoolReturned];
    v17 = [entityPoolReturned2 isEqual:entityPoolReturned3];

    if (!v17)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  eventMetadata = [(RRSchemaRRClientEvent *)self entityPoolResolveContext];
  eventMetadata2 = [equalCopy entityPoolResolveContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_27;
  }

  entityPoolResolveContext = [(RRSchemaRRClientEvent *)self entityPoolResolveContext];
  if (entityPoolResolveContext)
  {
    v19 = entityPoolResolveContext;
    entityPoolResolveContext2 = [(RRSchemaRRClientEvent *)self entityPoolResolveContext];
    entityPoolResolveContext3 = [equalCopy entityPoolResolveContext];
    v22 = [entityPoolResolveContext2 isEqual:entityPoolResolveContext3];

    if (!v22)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  eventMetadata = [(RRSchemaRRClientEvent *)self rrUsoGraphTier1];
  eventMetadata2 = [equalCopy rrUsoGraphTier1];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_27;
  }

  rrUsoGraphTier1 = [(RRSchemaRRClientEvent *)self rrUsoGraphTier1];
  if (rrUsoGraphTier1)
  {
    v24 = rrUsoGraphTier1;
    rrUsoGraphTier12 = [(RRSchemaRRClientEvent *)self rrUsoGraphTier1];
    rrUsoGraphTier13 = [equalCopy rrUsoGraphTier1];
    v27 = [rrUsoGraphTier12 isEqual:rrUsoGraphTier13];

    if (!v27)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  eventMetadata = [(RRSchemaRRClientEvent *)self pullerContext];
  eventMetadata2 = [equalCopy pullerContext];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    pullerContext = [(RRSchemaRRClientEvent *)self pullerContext];
    if (!pullerContext)
    {

LABEL_31:
      v33 = 1;
      goto LABEL_29;
    }

    v29 = pullerContext;
    pullerContext2 = [(RRSchemaRRClientEvent *)self pullerContext];
    pullerContext3 = [equalCopy pullerContext];
    v32 = [pullerContext2 isEqual:pullerContext3];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  eventMetadata = [(RRSchemaRRClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(RRSchemaRRClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  entityPoolReturned = [(RRSchemaRRClientEvent *)self entityPoolReturned];

  if (entityPoolReturned)
  {
    entityPoolReturned2 = [(RRSchemaRRClientEvent *)self entityPoolReturned];
    PBDataWriterWriteSubmessage();
  }

  entityPoolResolveContext = [(RRSchemaRRClientEvent *)self entityPoolResolveContext];

  if (entityPoolResolveContext)
  {
    entityPoolResolveContext2 = [(RRSchemaRRClientEvent *)self entityPoolResolveContext];
    PBDataWriterWriteSubmessage();
  }

  rrUsoGraphTier1 = [(RRSchemaRRClientEvent *)self rrUsoGraphTier1];

  if (rrUsoGraphTier1)
  {
    rrUsoGraphTier12 = [(RRSchemaRRClientEvent *)self rrUsoGraphTier1];
    PBDataWriterWriteSubmessage();
  }

  pullerContext = [(RRSchemaRRClientEvent *)self pullerContext];

  v13 = toCopy;
  if (pullerContext)
  {
    pullerContext2 = [(RRSchemaRRClientEvent *)self pullerContext];
    PBDataWriterWriteSubmessage();

    v13 = toCopy;
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

- (void)setPullerContext:(id)context
{
  contextCopy = context;
  entityPoolReturned = self->_entityPoolReturned;
  self->_entityPoolReturned = 0;

  entityPoolResolveContext = self->_entityPoolResolveContext;
  self->_entityPoolResolveContext = 0;

  rrUsoGraphTier1 = self->_rrUsoGraphTier1;
  self->_rrUsoGraphTier1 = 0;

  v8 = 5;
  if (!contextCopy)
  {
    v8 = 0;
  }

  self->_whichEvent_Type = v8;
  pullerContext = self->_pullerContext;
  self->_pullerContext = contextCopy;
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

- (void)setRrUsoGraphTier1:(id)tier1
{
  tier1Copy = tier1;
  entityPoolReturned = self->_entityPoolReturned;
  self->_entityPoolReturned = 0;

  entityPoolResolveContext = self->_entityPoolResolveContext;
  self->_entityPoolResolveContext = 0;

  pullerContext = self->_pullerContext;
  self->_pullerContext = 0;

  self->_whichEvent_Type = 4 * (tier1Copy != 0);
  rrUsoGraphTier1 = self->_rrUsoGraphTier1;
  self->_rrUsoGraphTier1 = tier1Copy;
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

- (void)setEntityPoolResolveContext:(id)context
{
  contextCopy = context;
  entityPoolReturned = self->_entityPoolReturned;
  self->_entityPoolReturned = 0;

  rrUsoGraphTier1 = self->_rrUsoGraphTier1;
  self->_rrUsoGraphTier1 = 0;

  pullerContext = self->_pullerContext;
  self->_pullerContext = 0;

  v8 = 3;
  if (!contextCopy)
  {
    v8 = 0;
  }

  self->_whichEvent_Type = v8;
  entityPoolResolveContext = self->_entityPoolResolveContext;
  self->_entityPoolResolveContext = contextCopy;
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

- (void)setEntityPoolReturned:(id)returned
{
  returnedCopy = returned;
  entityPoolResolveContext = self->_entityPoolResolveContext;
  self->_entityPoolResolveContext = 0;

  rrUsoGraphTier1 = self->_rrUsoGraphTier1;
  self->_rrUsoGraphTier1 = 0;

  pullerContext = self->_pullerContext;
  self->_pullerContext = 0;

  self->_whichEvent_Type = 2 * (returnedCopy != 0);
  entityPoolReturned = self->_entityPoolReturned;
  self->_entityPoolReturned = returnedCopy;
}

- (id)qualifiedMessageName
{
  whichEvent_Type = [(RRSchemaRRClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 2 > 3)
  {
    return @"com.apple.aiml.siri.rr.RRClientEvent";
  }

  else
  {
    return off_1E78E2088[whichEvent_Type - 2];
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v22.receiver = self;
  v22.super_class = RRSchemaRRClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v22 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(RRSchemaRRClientEvent *)self deleteRrUsoGraphTier1];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(RRSchemaRRClientEvent *)self deleteRrUsoGraphTier1];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(RRSchemaRRClientEvent *)self deleteRrUsoGraphTier1];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(RRSchemaRRClientEvent *)self deleteRrUsoGraphTier1];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(RRSchemaRRClientEvent *)self deleteRrUsoGraphTier1];
  }

  eventMetadata = [(RRSchemaRRClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(RRSchemaRRClientEvent *)self deleteEventMetadata];
  }

  entityPoolReturned = [(RRSchemaRRClientEvent *)self entityPoolReturned];
  v10 = [entityPoolReturned applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(RRSchemaRRClientEvent *)self deleteEntityPoolReturned];
  }

  entityPoolResolveContext = [(RRSchemaRRClientEvent *)self entityPoolResolveContext];
  v13 = [entityPoolResolveContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(RRSchemaRRClientEvent *)self deleteEntityPoolResolveContext];
  }

  rrUsoGraphTier1 = [(RRSchemaRRClientEvent *)self rrUsoGraphTier1];
  v16 = [rrUsoGraphTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(RRSchemaRRClientEvent *)self deleteRrUsoGraphTier1];
  }

  pullerContext = [(RRSchemaRRClientEvent *)self pullerContext];
  v19 = [pullerContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
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
  eventMetadata = [(RRSchemaRRClientEvent *)self eventMetadata];
  rrID = [eventMetadata rrID];

  if (rrID && ([rrID value], (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v6 = v5, objc_msgSend(rrID, "value"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v6, v8))
  {
    LODWORD(value) = 15;
  }

  else
  {
    eventMetadata2 = [(RRSchemaRRClientEvent *)self eventMetadata];
    requestId = [eventMetadata2 requestId];

    if (requestId && ([requestId value], (v12 = objc_claimAutoreleasedReturnValue()) != 0) && (v13 = v12, objc_msgSend(requestId, "value"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "length"), v14, v13, v15))
    {
      LODWORD(value) = 1;
      rrID = requestId;
    }

    else
    {
      eventMetadata3 = [(RRSchemaRRClientEvent *)self eventMetadata];
      rrID = [eventMetadata3 subRequestId];

      if (rrID)
      {
        value = [rrID value];
        if (value)
        {
          value2 = [rrID value];
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
  eventMetadata = [(RRSchemaRRClientEvent *)self eventMetadata];
  rrID = [eventMetadata rrID];

  if (rrID)
  {
    value = [rrID value];
    if (value)
    {
      v6 = value;
      value2 = [rrID value];
      v8 = [value2 length];

      if (v8)
      {
        goto LABEL_11;
      }
    }
  }

  eventMetadata2 = [(RRSchemaRRClientEvent *)self eventMetadata];
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
        rrID = requestId;
LABEL_11:
        value5 = rrID;
        rrID = value5;
        goto LABEL_13;
      }
    }
  }

  eventMetadata3 = [(RRSchemaRRClientEvent *)self eventMetadata];
  rrID = [eventMetadata3 subRequestId];

  if (rrID)
  {
    value5 = [rrID value];
    if (!value5)
    {
      goto LABEL_13;
    }

    value6 = [rrID value];
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
  whichEvent_Type = [(RRSchemaRRClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 2 > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78EAF48[whichEvent_Type - 2]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)tag
{
  if (tag - 2 > 3)
  {
    return 0;
  }

  else
  {
    return off_1E78EAF68[tag - 2];
  }
}

@end