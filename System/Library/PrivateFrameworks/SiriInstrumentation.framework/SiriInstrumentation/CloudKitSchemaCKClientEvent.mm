@interface CloudKitSchemaCKClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (CloudKitSchemaCKChangeReported)cloudKitChangeReported;
- (CloudKitSchemaCKClientEvent)initWithDictionary:(id)dictionary;
- (CloudKitSchemaCKClientEvent)initWithJSON:(id)n;
- (CloudKitSchemaCKErrorReported)cloudKitErrorReported;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (unint64_t)hash;
- (void)deleteCloudKitChangeReported;
- (void)deleteCloudKitErrorReported;
- (void)setCloudKitChangeReported:(id)reported;
- (void)setCloudKitErrorReported:(id)reported;
- (void)writeTo:(id)to;
@end

@implementation CloudKitSchemaCKClientEvent

- (CloudKitSchemaCKClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = CloudKitSchemaCKClientEvent;
  v5 = [(CloudKitSchemaCKClientEvent *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[CloudKitSchemaCloudKitEventMetadata alloc] initWithDictionary:v6];
      [(CloudKitSchemaCKClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"cloudKitErrorReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[CloudKitSchemaCKErrorReported alloc] initWithDictionary:v8];
      [(CloudKitSchemaCKClientEvent *)v5 setCloudKitErrorReported:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"cloudKitChangeReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[CloudKitSchemaCKChangeReported alloc] initWithDictionary:v10];
      [(CloudKitSchemaCKClientEvent *)v5 setCloudKitChangeReported:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (CloudKitSchemaCKClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(CloudKitSchemaCKClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(CloudKitSchemaCKClientEvent *)self dictionaryRepresentation];
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
  if (self->_cloudKitChangeReported)
  {
    cloudKitChangeReported = [(CloudKitSchemaCKClientEvent *)self cloudKitChangeReported];
    dictionaryRepresentation = [cloudKitChangeReported dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"cloudKitChangeReported"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"cloudKitChangeReported"];
    }
  }

  if (self->_cloudKitErrorReported)
  {
    cloudKitErrorReported = [(CloudKitSchemaCKClientEvent *)self cloudKitErrorReported];
    dictionaryRepresentation2 = [cloudKitErrorReported dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"cloudKitErrorReported"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"cloudKitErrorReported"];
    }
  }

  if (self->_eventMetadata)
  {
    eventMetadata = [(CloudKitSchemaCKClientEvent *)self eventMetadata];
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
  v3 = [(CloudKitSchemaCloudKitEventMetadata *)self->_eventMetadata hash];
  v4 = [(CloudKitSchemaCKErrorReported *)self->_cloudKitErrorReported hash]^ v3;
  return v4 ^ [(CloudKitSchemaCKChangeReported *)self->_cloudKitChangeReported hash];
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

  eventMetadata = [(CloudKitSchemaCKClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_17;
  }

  eventMetadata3 = [(CloudKitSchemaCKClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(CloudKitSchemaCKClientEvent *)self eventMetadata];
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

  eventMetadata = [(CloudKitSchemaCKClientEvent *)self cloudKitErrorReported];
  eventMetadata2 = [equalCopy cloudKitErrorReported];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_17;
  }

  cloudKitErrorReported = [(CloudKitSchemaCKClientEvent *)self cloudKitErrorReported];
  if (cloudKitErrorReported)
  {
    v14 = cloudKitErrorReported;
    cloudKitErrorReported2 = [(CloudKitSchemaCKClientEvent *)self cloudKitErrorReported];
    cloudKitErrorReported3 = [equalCopy cloudKitErrorReported];
    v17 = [cloudKitErrorReported2 isEqual:cloudKitErrorReported3];

    if (!v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  eventMetadata = [(CloudKitSchemaCKClientEvent *)self cloudKitChangeReported];
  eventMetadata2 = [equalCopy cloudKitChangeReported];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    cloudKitChangeReported = [(CloudKitSchemaCKClientEvent *)self cloudKitChangeReported];
    if (!cloudKitChangeReported)
    {

LABEL_21:
      v23 = 1;
      goto LABEL_19;
    }

    v19 = cloudKitChangeReported;
    cloudKitChangeReported2 = [(CloudKitSchemaCKClientEvent *)self cloudKitChangeReported];
    cloudKitChangeReported3 = [equalCopy cloudKitChangeReported];
    v22 = [cloudKitChangeReported2 isEqual:cloudKitChangeReported3];

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
  eventMetadata = [(CloudKitSchemaCKClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(CloudKitSchemaCKClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  cloudKitErrorReported = [(CloudKitSchemaCKClientEvent *)self cloudKitErrorReported];

  if (cloudKitErrorReported)
  {
    cloudKitErrorReported2 = [(CloudKitSchemaCKClientEvent *)self cloudKitErrorReported];
    PBDataWriterWriteSubmessage();
  }

  cloudKitChangeReported = [(CloudKitSchemaCKClientEvent *)self cloudKitChangeReported];

  v9 = toCopy;
  if (cloudKitChangeReported)
  {
    cloudKitChangeReported2 = [(CloudKitSchemaCKClientEvent *)self cloudKitChangeReported];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

- (void)deleteCloudKitChangeReported
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_cloudKitChangeReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (CloudKitSchemaCKChangeReported)cloudKitChangeReported
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_cloudKitChangeReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCloudKitChangeReported:(id)reported
{
  reportedCopy = reported;
  cloudKitErrorReported = self->_cloudKitErrorReported;
  self->_cloudKitErrorReported = 0;

  v6 = 101;
  if (!reportedCopy)
  {
    v6 = 0;
  }

  self->_whichEvent_Type = v6;
  cloudKitChangeReported = self->_cloudKitChangeReported;
  self->_cloudKitChangeReported = reportedCopy;
}

- (void)deleteCloudKitErrorReported
{
  if (self->_whichEvent_Type == 100)
  {
    self->_whichEvent_Type = 0;
    self->_cloudKitErrorReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (CloudKitSchemaCKErrorReported)cloudKitErrorReported
{
  if (self->_whichEvent_Type == 100)
  {
    v3 = self->_cloudKitErrorReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCloudKitErrorReported:(id)reported
{
  reportedCopy = reported;
  cloudKitChangeReported = self->_cloudKitChangeReported;
  self->_cloudKitChangeReported = 0;

  v6 = 100;
  if (!reportedCopy)
  {
    v6 = 0;
  }

  self->_whichEvent_Type = v6;
  cloudKitErrorReported = self->_cloudKitErrorReported;
  self->_cloudKitErrorReported = reportedCopy;
}

- (id)qualifiedMessageName
{
  whichEvent_Type = [(CloudKitSchemaCKClientEvent *)self whichEvent_Type];
  v3 = @"com.apple.aiml.siri.cloudkit.CKClientEvent";
  if (whichEvent_Type == 101)
  {
    v3 = @"com.apple.aiml.siri.cloudkit.CKClientEvent.CKChangeReported";
  }

  if (whichEvent_Type == 100)
  {
    return @"com.apple.aiml.siri.cloudkit.CKClientEvent.CKErrorReported";
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
  v16.super_class = CloudKitSchemaCKClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  eventMetadata = [(CloudKitSchemaCKClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(CloudKitSchemaCKClientEvent *)self deleteEventMetadata];
  }

  cloudKitErrorReported = [(CloudKitSchemaCKClientEvent *)self cloudKitErrorReported];
  v10 = [cloudKitErrorReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(CloudKitSchemaCKClientEvent *)self deleteCloudKitErrorReported];
  }

  cloudKitChangeReported = [(CloudKitSchemaCKClientEvent *)self cloudKitChangeReported];
  v13 = [cloudKitChangeReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(CloudKitSchemaCKClientEvent *)self deleteCloudKitChangeReported];
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
  eventMetadata = [(CloudKitSchemaCKClientEvent *)self eventMetadata];
  ckId = [eventMetadata ckId];

  if (ckId)
  {
    value = [ckId value];
    if (value)
    {
      value2 = [ckId value];
      v6 = [value2 length];

      if (v6)
      {
        LODWORD(value) = 63;
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
  eventMetadata = [(CloudKitSchemaCKClientEvent *)self eventMetadata];
  ckId = [eventMetadata ckId];

  if (!ckId)
  {
    goto LABEL_5;
  }

  value = [ckId value];
  if (!value)
  {
    goto LABEL_6;
  }

  value2 = [ckId value];
  v6 = [value2 length];

  if (v6)
  {
    value = ckId;
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
  whichEvent_Type = [(CloudKitSchemaCKClientEvent *)self whichEvent_Type];
  if (whichEvent_Type == 100)
  {
    v4 = &OBJC_IVAR___CloudKitSchemaCKClientEvent__cloudKitErrorReported;
    goto LABEL_5;
  }

  if (whichEvent_Type == 101)
  {
    v4 = &OBJC_IVAR___CloudKitSchemaCKClientEvent__cloudKitChangeReported;
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
  v3 = @"cloudKitChangeReported";
  if (tag != 101)
  {
    v3 = 0;
  }

  if (tag == 100)
  {
    return @"cloudKitErrorReported";
  }

  else
  {
    return v3;
  }
}

@end