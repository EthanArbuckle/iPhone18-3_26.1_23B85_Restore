@interface SISchemaABClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaABClientEvent)initWithDictionary:(id)dictionary;
- (SISchemaABClientEvent)initWithJSON:(id)n;
- (SISchemaABExperimentAllocationChanged)allocationChanged;
- (SISchemaABExperimentAssetRetrievalStatusChanged)assetRetrievalStatusChanged;
- (SISchemaABExperimentClientFeatureTriggered)clientFeatureTriggered;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteAllocationChanged;
- (void)deleteAssetRetrievalStatusChanged;
- (void)deleteClientFeatureTriggered;
- (void)setAllocationChanged:(id)changed;
- (void)setAssetRetrievalStatusChanged:(id)changed;
- (void)setClientFeatureTriggered:(id)triggered;
- (void)writeTo:(id)to;
@end

@implementation SISchemaABClientEvent

- (SISchemaABClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = SISchemaABClientEvent;
  v5 = [(SISchemaABClientEvent *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaABClientEventMetadata alloc] initWithDictionary:v6];
      [(SISchemaABClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"allocationChanged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaABExperimentAllocationChanged alloc] initWithDictionary:v8];
      [(SISchemaABClientEvent *)v5 setAllocationChanged:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"assetRetrievalStatusChanged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaABExperimentAssetRetrievalStatusChanged alloc] initWithDictionary:v10];
      [(SISchemaABClientEvent *)v5 setAssetRetrievalStatusChanged:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"clientFeatureTriggered"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[SISchemaABExperimentClientFeatureTriggered alloc] initWithDictionary:v12];
      [(SISchemaABClientEvent *)v5 setClientFeatureTriggered:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (SISchemaABClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaABClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaABClientEvent *)self dictionaryRepresentation];
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
  if (self->_allocationChanged)
  {
    allocationChanged = [(SISchemaABClientEvent *)self allocationChanged];
    dictionaryRepresentation = [allocationChanged dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"allocationChanged"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"allocationChanged"];
    }
  }

  if (self->_assetRetrievalStatusChanged)
  {
    assetRetrievalStatusChanged = [(SISchemaABClientEvent *)self assetRetrievalStatusChanged];
    dictionaryRepresentation2 = [assetRetrievalStatusChanged dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"assetRetrievalStatusChanged"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"assetRetrievalStatusChanged"];
    }
  }

  if (self->_clientFeatureTriggered)
  {
    clientFeatureTriggered = [(SISchemaABClientEvent *)self clientFeatureTriggered];
    dictionaryRepresentation3 = [clientFeatureTriggered dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"clientFeatureTriggered"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"clientFeatureTriggered"];
    }
  }

  if (self->_eventMetadata)
  {
    eventMetadata = [(SISchemaABClientEvent *)self eventMetadata];
    dictionaryRepresentation4 = [eventMetadata dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"eventMetadata"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaABClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(SISchemaABExperimentAllocationChanged *)self->_allocationChanged hash]^ v3;
  v5 = [(SISchemaABExperimentAssetRetrievalStatusChanged *)self->_assetRetrievalStatusChanged hash];
  return v4 ^ v5 ^ [(SISchemaABExperimentClientFeatureTriggered *)self->_clientFeatureTriggered hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [equalCopy whichEvent_Type])
  {
    goto LABEL_23;
  }

  eventMetadata = [(SISchemaABClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_22;
  }

  eventMetadata3 = [(SISchemaABClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(SISchemaABClientEvent *)self eventMetadata];
    eventMetadata5 = [equalCopy eventMetadata];
    v12 = [eventMetadata4 isEqual:eventMetadata5];

    if (!v12)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaABClientEvent *)self allocationChanged];
  eventMetadata2 = [equalCopy allocationChanged];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_22;
  }

  allocationChanged = [(SISchemaABClientEvent *)self allocationChanged];
  if (allocationChanged)
  {
    v14 = allocationChanged;
    allocationChanged2 = [(SISchemaABClientEvent *)self allocationChanged];
    allocationChanged3 = [equalCopy allocationChanged];
    v17 = [allocationChanged2 isEqual:allocationChanged3];

    if (!v17)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaABClientEvent *)self assetRetrievalStatusChanged];
  eventMetadata2 = [equalCopy assetRetrievalStatusChanged];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_22;
  }

  assetRetrievalStatusChanged = [(SISchemaABClientEvent *)self assetRetrievalStatusChanged];
  if (assetRetrievalStatusChanged)
  {
    v19 = assetRetrievalStatusChanged;
    assetRetrievalStatusChanged2 = [(SISchemaABClientEvent *)self assetRetrievalStatusChanged];
    assetRetrievalStatusChanged3 = [equalCopy assetRetrievalStatusChanged];
    v22 = [assetRetrievalStatusChanged2 isEqual:assetRetrievalStatusChanged3];

    if (!v22)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaABClientEvent *)self clientFeatureTriggered];
  eventMetadata2 = [equalCopy clientFeatureTriggered];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    clientFeatureTriggered = [(SISchemaABClientEvent *)self clientFeatureTriggered];
    if (!clientFeatureTriggered)
    {

LABEL_26:
      v28 = 1;
      goto LABEL_24;
    }

    v24 = clientFeatureTriggered;
    clientFeatureTriggered2 = [(SISchemaABClientEvent *)self clientFeatureTriggered];
    clientFeatureTriggered3 = [equalCopy clientFeatureTriggered];
    v27 = [clientFeatureTriggered2 isEqual:clientFeatureTriggered3];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  eventMetadata = [(SISchemaABClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(SISchemaABClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  allocationChanged = [(SISchemaABClientEvent *)self allocationChanged];

  if (allocationChanged)
  {
    allocationChanged2 = [(SISchemaABClientEvent *)self allocationChanged];
    PBDataWriterWriteSubmessage();
  }

  assetRetrievalStatusChanged = [(SISchemaABClientEvent *)self assetRetrievalStatusChanged];

  if (assetRetrievalStatusChanged)
  {
    assetRetrievalStatusChanged2 = [(SISchemaABClientEvent *)self assetRetrievalStatusChanged];
    PBDataWriterWriteSubmessage();
  }

  clientFeatureTriggered = [(SISchemaABClientEvent *)self clientFeatureTriggered];

  v11 = toCopy;
  if (clientFeatureTriggered)
  {
    clientFeatureTriggered2 = [(SISchemaABClientEvent *)self clientFeatureTriggered];
    PBDataWriterWriteSubmessage();

    v11 = toCopy;
  }
}

- (void)deleteClientFeatureTriggered
{
  if (self->_whichEvent_Type == 103)
  {
    self->_whichEvent_Type = 0;
    self->_clientFeatureTriggered = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SISchemaABExperimentClientFeatureTriggered)clientFeatureTriggered
{
  if (self->_whichEvent_Type == 103)
  {
    v3 = self->_clientFeatureTriggered;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setClientFeatureTriggered:(id)triggered
{
  triggeredCopy = triggered;
  allocationChanged = self->_allocationChanged;
  self->_allocationChanged = 0;

  assetRetrievalStatusChanged = self->_assetRetrievalStatusChanged;
  self->_assetRetrievalStatusChanged = 0;

  v7 = 103;
  if (!triggeredCopy)
  {
    v7 = 0;
  }

  self->_whichEvent_Type = v7;
  clientFeatureTriggered = self->_clientFeatureTriggered;
  self->_clientFeatureTriggered = triggeredCopy;
}

- (void)deleteAssetRetrievalStatusChanged
{
  if (self->_whichEvent_Type == 102)
  {
    self->_whichEvent_Type = 0;
    self->_assetRetrievalStatusChanged = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SISchemaABExperimentAssetRetrievalStatusChanged)assetRetrievalStatusChanged
{
  if (self->_whichEvent_Type == 102)
  {
    v3 = self->_assetRetrievalStatusChanged;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAssetRetrievalStatusChanged:(id)changed
{
  changedCopy = changed;
  allocationChanged = self->_allocationChanged;
  self->_allocationChanged = 0;

  clientFeatureTriggered = self->_clientFeatureTriggered;
  self->_clientFeatureTriggered = 0;

  v7 = 102;
  if (!changedCopy)
  {
    v7 = 0;
  }

  self->_whichEvent_Type = v7;
  assetRetrievalStatusChanged = self->_assetRetrievalStatusChanged;
  self->_assetRetrievalStatusChanged = changedCopy;
}

- (void)deleteAllocationChanged
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_allocationChanged = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SISchemaABExperimentAllocationChanged)allocationChanged
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_allocationChanged;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAllocationChanged:(id)changed
{
  changedCopy = changed;
  assetRetrievalStatusChanged = self->_assetRetrievalStatusChanged;
  self->_assetRetrievalStatusChanged = 0;

  clientFeatureTriggered = self->_clientFeatureTriggered;
  self->_clientFeatureTriggered = 0;

  v7 = 101;
  if (!changedCopy)
  {
    v7 = 0;
  }

  self->_whichEvent_Type = v7;
  allocationChanged = self->_allocationChanged;
  self->_allocationChanged = changedCopy;
}

- (id)qualifiedMessageName
{
  whichEvent_Type = [(SISchemaABClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 2)
  {
    return @"com.apple.aiml.siri.abe.ABClientEvent";
  }

  else
  {
    return off_1E78E2E10[whichEvent_Type - 101];
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v19.receiver = self;
  v19.super_class = SISchemaABClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:policyCopy];
  eventMetadata = [(SISchemaABClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(SISchemaABClientEvent *)self deleteEventMetadata];
  }

  allocationChanged = [(SISchemaABClientEvent *)self allocationChanged];
  v10 = [allocationChanged applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(SISchemaABClientEvent *)self deleteAllocationChanged];
  }

  assetRetrievalStatusChanged = [(SISchemaABClientEvent *)self assetRetrievalStatusChanged];
  v13 = [assetRetrievalStatusChanged applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(SISchemaABClientEvent *)self deleteAssetRetrievalStatusChanged];
  }

  clientFeatureTriggered = [(SISchemaABClientEvent *)self clientFeatureTriggered];
  v16 = [clientFeatureTriggered applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(SISchemaABClientEvent *)self deleteClientFeatureTriggered];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  whichEvent_Type = [(SISchemaABClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78E8CA0[whichEvent_Type - 101]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)tag
{
  if (tag - 101 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E78E8CB8[tag - 101];
  }
}

@end