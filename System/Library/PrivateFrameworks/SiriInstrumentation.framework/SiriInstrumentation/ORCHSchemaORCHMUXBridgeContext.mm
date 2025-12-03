@interface ORCHSchemaORCHMUXBridgeContext
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ORCHSchemaORCHMUXBridgeContext)initWithDictionary:(id)dictionary;
- (ORCHSchemaORCHMUXBridgeContext)initWithJSON:(id)n;
- (ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMapContext)ephemeralToAggregationIdentifierMap;
- (ORCHSchemaORCHMUXRequestEnded)ended;
- (ORCHSchemaORCHMUXRequestStarted)startedOrChanged;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteEnded;
- (void)deleteEphemeralToAggregationIdentifierMap;
- (void)deleteStartedOrChanged;
- (void)setEnded:(id)ended;
- (void)setEphemeralToAggregationIdentifierMap:(id)map;
- (void)setStartedOrChanged:(id)changed;
- (void)writeTo:(id)to;
@end

@implementation ORCHSchemaORCHMUXBridgeContext

- (ORCHSchemaORCHMUXBridgeContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = ORCHSchemaORCHMUXBridgeContext;
  v5 = [(ORCHSchemaORCHMUXBridgeContext *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"startedOrChanged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ORCHSchemaORCHMUXRequestStarted alloc] initWithDictionary:v6];
      [(ORCHSchemaORCHMUXBridgeContext *)v5 setStartedOrChanged:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"ended"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[ORCHSchemaORCHMUXRequestEnded alloc] initWithDictionary:v8];
      [(ORCHSchemaORCHMUXBridgeContext *)v5 setEnded:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"ephemeralToAggregationIdentifierMap"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMapContext alloc] initWithDictionary:v10];
      [(ORCHSchemaORCHMUXBridgeContext *)v5 setEphemeralToAggregationIdentifierMap:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (ORCHSchemaORCHMUXBridgeContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ORCHSchemaORCHMUXBridgeContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ORCHSchemaORCHMUXBridgeContext *)self dictionaryRepresentation];
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
  if (self->_ended)
  {
    ended = [(ORCHSchemaORCHMUXBridgeContext *)self ended];
    dictionaryRepresentation = [ended dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"ended"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"ended"];
    }
  }

  if (self->_ephemeralToAggregationIdentifierMap)
  {
    ephemeralToAggregationIdentifierMap = [(ORCHSchemaORCHMUXBridgeContext *)self ephemeralToAggregationIdentifierMap];
    dictionaryRepresentation2 = [ephemeralToAggregationIdentifierMap dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"ephemeralToAggregationIdentifierMap"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"ephemeralToAggregationIdentifierMap"];
    }
  }

  if (self->_startedOrChanged)
  {
    startedOrChanged = [(ORCHSchemaORCHMUXBridgeContext *)self startedOrChanged];
    dictionaryRepresentation3 = [startedOrChanged dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"startedOrChanged"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"startedOrChanged"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(ORCHSchemaORCHMUXRequestStarted *)self->_startedOrChanged hash];
  v4 = [(ORCHSchemaORCHMUXRequestEnded *)self->_ended hash]^ v3;
  return v4 ^ [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMapContext *)self->_ephemeralToAggregationIdentifierMap hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  whichContextevent = self->_whichContextevent;
  if (whichContextevent != [equalCopy whichContextevent])
  {
    goto LABEL_18;
  }

  startedOrChanged = [(ORCHSchemaORCHMUXBridgeContext *)self startedOrChanged];
  startedOrChanged2 = [equalCopy startedOrChanged];
  if ((startedOrChanged != 0) == (startedOrChanged2 == 0))
  {
    goto LABEL_17;
  }

  startedOrChanged3 = [(ORCHSchemaORCHMUXBridgeContext *)self startedOrChanged];
  if (startedOrChanged3)
  {
    v9 = startedOrChanged3;
    startedOrChanged4 = [(ORCHSchemaORCHMUXBridgeContext *)self startedOrChanged];
    startedOrChanged5 = [equalCopy startedOrChanged];
    v12 = [startedOrChanged4 isEqual:startedOrChanged5];

    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  startedOrChanged = [(ORCHSchemaORCHMUXBridgeContext *)self ended];
  startedOrChanged2 = [equalCopy ended];
  if ((startedOrChanged != 0) == (startedOrChanged2 == 0))
  {
    goto LABEL_17;
  }

  ended = [(ORCHSchemaORCHMUXBridgeContext *)self ended];
  if (ended)
  {
    v14 = ended;
    ended2 = [(ORCHSchemaORCHMUXBridgeContext *)self ended];
    ended3 = [equalCopy ended];
    v17 = [ended2 isEqual:ended3];

    if (!v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  startedOrChanged = [(ORCHSchemaORCHMUXBridgeContext *)self ephemeralToAggregationIdentifierMap];
  startedOrChanged2 = [equalCopy ephemeralToAggregationIdentifierMap];
  if ((startedOrChanged != 0) != (startedOrChanged2 == 0))
  {
    ephemeralToAggregationIdentifierMap = [(ORCHSchemaORCHMUXBridgeContext *)self ephemeralToAggregationIdentifierMap];
    if (!ephemeralToAggregationIdentifierMap)
    {

LABEL_21:
      v23 = 1;
      goto LABEL_19;
    }

    v19 = ephemeralToAggregationIdentifierMap;
    ephemeralToAggregationIdentifierMap2 = [(ORCHSchemaORCHMUXBridgeContext *)self ephemeralToAggregationIdentifierMap];
    ephemeralToAggregationIdentifierMap3 = [equalCopy ephemeralToAggregationIdentifierMap];
    v22 = [ephemeralToAggregationIdentifierMap2 isEqual:ephemeralToAggregationIdentifierMap3];

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
  startedOrChanged = [(ORCHSchemaORCHMUXBridgeContext *)self startedOrChanged];

  if (startedOrChanged)
  {
    startedOrChanged2 = [(ORCHSchemaORCHMUXBridgeContext *)self startedOrChanged];
    PBDataWriterWriteSubmessage();
  }

  ended = [(ORCHSchemaORCHMUXBridgeContext *)self ended];

  if (ended)
  {
    ended2 = [(ORCHSchemaORCHMUXBridgeContext *)self ended];
    PBDataWriterWriteSubmessage();
  }

  ephemeralToAggregationIdentifierMap = [(ORCHSchemaORCHMUXBridgeContext *)self ephemeralToAggregationIdentifierMap];

  v9 = toCopy;
  if (ephemeralToAggregationIdentifierMap)
  {
    ephemeralToAggregationIdentifierMap2 = [(ORCHSchemaORCHMUXBridgeContext *)self ephemeralToAggregationIdentifierMap];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

- (void)deleteEphemeralToAggregationIdentifierMap
{
  if (self->_whichContextevent == 3)
  {
    self->_whichContextevent = 0;
    self->_ephemeralToAggregationIdentifierMap = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMapContext)ephemeralToAggregationIdentifierMap
{
  if (self->_whichContextevent == 3)
  {
    v3 = self->_ephemeralToAggregationIdentifierMap;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setEphemeralToAggregationIdentifierMap:(id)map
{
  mapCopy = map;
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = 0;

  ended = self->_ended;
  self->_ended = 0;

  v7 = 3;
  if (!mapCopy)
  {
    v7 = 0;
  }

  self->_whichContextevent = v7;
  ephemeralToAggregationIdentifierMap = self->_ephemeralToAggregationIdentifierMap;
  self->_ephemeralToAggregationIdentifierMap = mapCopy;
}

- (void)deleteEnded
{
  if (self->_whichContextevent == 2)
  {
    self->_whichContextevent = 0;
    self->_ended = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ORCHSchemaORCHMUXRequestEnded)ended
{
  if (self->_whichContextevent == 2)
  {
    v3 = self->_ended;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setEnded:(id)ended
{
  endedCopy = ended;
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = 0;

  ephemeralToAggregationIdentifierMap = self->_ephemeralToAggregationIdentifierMap;
  self->_ephemeralToAggregationIdentifierMap = 0;

  self->_whichContextevent = 2 * (endedCopy != 0);
  ended = self->_ended;
  self->_ended = endedCopy;
}

- (void)deleteStartedOrChanged
{
  if (self->_whichContextevent == 1)
  {
    self->_whichContextevent = 0;
    self->_startedOrChanged = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ORCHSchemaORCHMUXRequestStarted)startedOrChanged
{
  if (self->_whichContextevent == 1)
  {
    v3 = self->_startedOrChanged;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setStartedOrChanged:(id)changed
{
  changedCopy = changed;
  ended = self->_ended;
  self->_ended = 0;

  ephemeralToAggregationIdentifierMap = self->_ephemeralToAggregationIdentifierMap;
  self->_ephemeralToAggregationIdentifierMap = 0;

  self->_whichContextevent = changedCopy != 0;
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = changedCopy;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v16.receiver = self;
  v16.super_class = ORCHSchemaORCHMUXBridgeContext;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  startedOrChanged = [(ORCHSchemaORCHMUXBridgeContext *)self startedOrChanged];
  v7 = [startedOrChanged applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ORCHSchemaORCHMUXBridgeContext *)self deleteStartedOrChanged];
  }

  ended = [(ORCHSchemaORCHMUXBridgeContext *)self ended];
  v10 = [ended applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(ORCHSchemaORCHMUXBridgeContext *)self deleteEnded];
  }

  ephemeralToAggregationIdentifierMap = [(ORCHSchemaORCHMUXBridgeContext *)self ephemeralToAggregationIdentifierMap];
  v13 = [ephemeralToAggregationIdentifierMap applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(ORCHSchemaORCHMUXBridgeContext *)self deleteEphemeralToAggregationIdentifierMap];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end