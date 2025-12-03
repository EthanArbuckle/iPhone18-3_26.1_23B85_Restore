@interface RRSchemaProvisionalRRClientEvent
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (RRSchemaProvisionalPullerContext)pullerContext;
- (RRSchemaProvisionalRRClientEvent)initWithDictionary:(id)dictionary;
- (RRSchemaProvisionalRRClientEvent)initWithJSON:(id)n;
- (RRSchemaProvisionalRREntityPoolResolveContext)entityPoolResolveContext;
- (RRSchemaProvisionalRREntityPoolReturned)entityPoolReturned;
- (RRSchemaProvisionalRRUsoGraphTier1)rrUsoGraphTier1;
- (id)dictionaryRepresentation;
- (id)qualifiedMessageName;
- (unint64_t)hash;
- (void)setEntityPoolResolveContext:(id)context;
- (void)setEntityPoolReturned:(id)returned;
- (void)setPullerContext:(id)context;
- (void)setRrUsoGraphTier1:(id)tier1;
- (void)writeTo:(id)to;
@end

@implementation RRSchemaProvisionalRRClientEvent

- (RRSchemaProvisionalRRClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = RRSchemaProvisionalRRClientEvent;
  v5 = [(RRSchemaProvisionalRRClientEvent *)&v18 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[RRSchemaProvisionalRRClientEventMetadata alloc] initWithDictionary:v6];
      [(RRSchemaProvisionalRRClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"pullerContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[RRSchemaProvisionalPullerContext alloc] initWithDictionary:v8];
      [(RRSchemaProvisionalRRClientEvent *)v5 setPullerContext:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"entityPoolReturned"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[RRSchemaProvisionalRREntityPoolReturned alloc] initWithDictionary:v10];
      [(RRSchemaProvisionalRRClientEvent *)v5 setEntityPoolReturned:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"entityPoolResolveContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[RRSchemaProvisionalRREntityPoolResolveContext alloc] initWithDictionary:v12];
      [(RRSchemaProvisionalRRClientEvent *)v5 setEntityPoolResolveContext:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"rrUsoGraphTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[RRSchemaProvisionalRRUsoGraphTier1 alloc] initWithDictionary:v14];
      [(RRSchemaProvisionalRRClientEvent *)v5 setRrUsoGraphTier1:v15];
    }

    v16 = v5;
  }

  return v5;
}

- (RRSchemaProvisionalRRClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(RRSchemaProvisionalRRClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(RRSchemaProvisionalRRClientEvent *)self dictionaryRepresentation];
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
    entityPoolResolveContext = [(RRSchemaProvisionalRRClientEvent *)self entityPoolResolveContext];
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
    entityPoolReturned = [(RRSchemaProvisionalRRClientEvent *)self entityPoolReturned];
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
    eventMetadata = [(RRSchemaProvisionalRRClientEvent *)self eventMetadata];
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
    pullerContext = [(RRSchemaProvisionalRRClientEvent *)self pullerContext];
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
    rrUsoGraphTier1 = [(RRSchemaProvisionalRRClientEvent *)self rrUsoGraphTier1];
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

  [(RRSchemaProvisionalRRClientEvent *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(RRSchemaProvisionalRRClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(RRSchemaProvisionalPullerContext *)self->_pullerContext hash]^ v3;
  v5 = [(RRSchemaProvisionalRREntityPoolReturned *)self->_entityPoolReturned hash];
  v6 = v4 ^ v5 ^ [(RRSchemaProvisionalRREntityPoolResolveContext *)self->_entityPoolResolveContext hash];
  return v6 ^ [(RRSchemaProvisionalRRUsoGraphTier1 *)self->_rrUsoGraphTier1 hash];
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

  eventMetadata = [(RRSchemaProvisionalRRClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_27;
  }

  eventMetadata3 = [(RRSchemaProvisionalRRClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(RRSchemaProvisionalRRClientEvent *)self eventMetadata];
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

  eventMetadata = [(RRSchemaProvisionalRRClientEvent *)self pullerContext];
  eventMetadata2 = [equalCopy pullerContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_27;
  }

  pullerContext = [(RRSchemaProvisionalRRClientEvent *)self pullerContext];
  if (pullerContext)
  {
    v14 = pullerContext;
    pullerContext2 = [(RRSchemaProvisionalRRClientEvent *)self pullerContext];
    pullerContext3 = [equalCopy pullerContext];
    v17 = [pullerContext2 isEqual:pullerContext3];

    if (!v17)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  eventMetadata = [(RRSchemaProvisionalRRClientEvent *)self entityPoolReturned];
  eventMetadata2 = [equalCopy entityPoolReturned];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_27;
  }

  entityPoolReturned = [(RRSchemaProvisionalRRClientEvent *)self entityPoolReturned];
  if (entityPoolReturned)
  {
    v19 = entityPoolReturned;
    entityPoolReturned2 = [(RRSchemaProvisionalRRClientEvent *)self entityPoolReturned];
    entityPoolReturned3 = [equalCopy entityPoolReturned];
    v22 = [entityPoolReturned2 isEqual:entityPoolReturned3];

    if (!v22)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  eventMetadata = [(RRSchemaProvisionalRRClientEvent *)self entityPoolResolveContext];
  eventMetadata2 = [equalCopy entityPoolResolveContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_27;
  }

  entityPoolResolveContext = [(RRSchemaProvisionalRRClientEvent *)self entityPoolResolveContext];
  if (entityPoolResolveContext)
  {
    v24 = entityPoolResolveContext;
    entityPoolResolveContext2 = [(RRSchemaProvisionalRRClientEvent *)self entityPoolResolveContext];
    entityPoolResolveContext3 = [equalCopy entityPoolResolveContext];
    v27 = [entityPoolResolveContext2 isEqual:entityPoolResolveContext3];

    if (!v27)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  eventMetadata = [(RRSchemaProvisionalRRClientEvent *)self rrUsoGraphTier1];
  eventMetadata2 = [equalCopy rrUsoGraphTier1];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    rrUsoGraphTier1 = [(RRSchemaProvisionalRRClientEvent *)self rrUsoGraphTier1];
    if (!rrUsoGraphTier1)
    {

LABEL_31:
      v33 = 1;
      goto LABEL_29;
    }

    v29 = rrUsoGraphTier1;
    rrUsoGraphTier12 = [(RRSchemaProvisionalRRClientEvent *)self rrUsoGraphTier1];
    rrUsoGraphTier13 = [equalCopy rrUsoGraphTier1];
    v32 = [rrUsoGraphTier12 isEqual:rrUsoGraphTier13];

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
  eventMetadata = [(RRSchemaProvisionalRRClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(RRSchemaProvisionalRRClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  pullerContext = [(RRSchemaProvisionalRRClientEvent *)self pullerContext];

  if (pullerContext)
  {
    pullerContext2 = [(RRSchemaProvisionalRRClientEvent *)self pullerContext];
    PBDataWriterWriteSubmessage();
  }

  entityPoolReturned = [(RRSchemaProvisionalRRClientEvent *)self entityPoolReturned];

  if (entityPoolReturned)
  {
    entityPoolReturned2 = [(RRSchemaProvisionalRRClientEvent *)self entityPoolReturned];
    PBDataWriterWriteSubmessage();
  }

  entityPoolResolveContext = [(RRSchemaProvisionalRRClientEvent *)self entityPoolResolveContext];

  if (entityPoolResolveContext)
  {
    entityPoolResolveContext2 = [(RRSchemaProvisionalRRClientEvent *)self entityPoolResolveContext];
    PBDataWriterWriteSubmessage();
  }

  rrUsoGraphTier1 = [(RRSchemaProvisionalRRClientEvent *)self rrUsoGraphTier1];

  v13 = toCopy;
  if (rrUsoGraphTier1)
  {
    rrUsoGraphTier12 = [(RRSchemaProvisionalRRClientEvent *)self rrUsoGraphTier1];
    PBDataWriterWriteSubmessage();

    v13 = toCopy;
  }
}

- (RRSchemaProvisionalRRUsoGraphTier1)rrUsoGraphTier1
{
  if (self->_whichEvent_Type == 104)
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
  pullerContext = self->_pullerContext;
  self->_pullerContext = 0;

  entityPoolReturned = self->_entityPoolReturned;
  self->_entityPoolReturned = 0;

  entityPoolResolveContext = self->_entityPoolResolveContext;
  self->_entityPoolResolveContext = 0;

  v8 = 104;
  if (!tier1Copy)
  {
    v8 = 0;
  }

  self->_whichEvent_Type = v8;
  rrUsoGraphTier1 = self->_rrUsoGraphTier1;
  self->_rrUsoGraphTier1 = tier1Copy;
}

- (RRSchemaProvisionalRREntityPoolResolveContext)entityPoolResolveContext
{
  if (self->_whichEvent_Type == 103)
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
  pullerContext = self->_pullerContext;
  self->_pullerContext = 0;

  entityPoolReturned = self->_entityPoolReturned;
  self->_entityPoolReturned = 0;

  rrUsoGraphTier1 = self->_rrUsoGraphTier1;
  self->_rrUsoGraphTier1 = 0;

  v8 = 103;
  if (!contextCopy)
  {
    v8 = 0;
  }

  self->_whichEvent_Type = v8;
  entityPoolResolveContext = self->_entityPoolResolveContext;
  self->_entityPoolResolveContext = contextCopy;
}

- (RRSchemaProvisionalRREntityPoolReturned)entityPoolReturned
{
  if (self->_whichEvent_Type == 102)
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
  pullerContext = self->_pullerContext;
  self->_pullerContext = 0;

  entityPoolResolveContext = self->_entityPoolResolveContext;
  self->_entityPoolResolveContext = 0;

  rrUsoGraphTier1 = self->_rrUsoGraphTier1;
  self->_rrUsoGraphTier1 = 0;

  v8 = 102;
  if (!returnedCopy)
  {
    v8 = 0;
  }

  self->_whichEvent_Type = v8;
  entityPoolReturned = self->_entityPoolReturned;
  self->_entityPoolReturned = returnedCopy;
}

- (RRSchemaProvisionalPullerContext)pullerContext
{
  if (self->_whichEvent_Type == 101)
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

  v8 = 101;
  if (!contextCopy)
  {
    v8 = 0;
  }

  self->_whichEvent_Type = v8;
  pullerContext = self->_pullerContext;
  self->_pullerContext = contextCopy;
}

- (id)qualifiedMessageName
{
  whichEvent_Type = [(RRSchemaProvisionalRRClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 3)
  {
    return @"com.apple.aiml.siri.rr.provisional.ProvisionalRRClientEvent";
  }

  else
  {
    return off_1E8651D80[whichEvent_Type - 101];
  }
}

@end