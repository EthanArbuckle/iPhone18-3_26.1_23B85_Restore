@interface QDSchemaQDClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (QDSchemaQDAppPreLaunchTriggered)appPreLaunchTriggered;
- (QDSchemaQDClientEvent)initWithDictionary:(id)dictionary;
- (QDSchemaQDClientEvent)initWithJSON:(id)n;
- (QDSchemaQDCollectionContext)collectionContext;
- (QDSchemaQDContextStatementIdsReported)contextStatementIdsReported;
- (QDSchemaQDEntitiesCollected)entitiesCollected;
- (QDSchemaQDEntitiesRanked)entitiesRanked;
- (QDSchemaQDSubComponentContext)subComponentContext;
- (QDSchemaQDToolboxSizeReported)toolboxSizeReported;
- (QDSchemaQDTuplesGenerated)tuplesGenerated;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (unint64_t)hash;
- (void)deleteAppPreLaunchTriggered;
- (void)deleteCollectionContext;
- (void)deleteContextStatementIdsReported;
- (void)deleteEntitiesCollected;
- (void)deleteEntitiesRanked;
- (void)deleteSubComponentContext;
- (void)deleteToolboxSizeReported;
- (void)deleteTuplesGenerated;
- (void)setAppPreLaunchTriggered:(id)triggered;
- (void)setCollectionContext:(id)context;
- (void)setContextStatementIdsReported:(id)reported;
- (void)setEntitiesCollected:(id)collected;
- (void)setEntitiesRanked:(id)ranked;
- (void)setSubComponentContext:(id)context;
- (void)setToolboxSizeReported:(id)reported;
- (void)setTuplesGenerated:(id)generated;
- (void)writeTo:(id)to;
@end

@implementation QDSchemaQDClientEvent

- (QDSchemaQDClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v28.receiver = self;
  v28.super_class = QDSchemaQDClientEvent;
  v5 = [(QDSchemaQDClientEvent *)&v28 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[QDSchemaQDClientEventMetadata alloc] initWithDictionary:v6];
      [(QDSchemaQDClientEvent *)v5 setEventMetadata:v7];
    }

    v27 = v6;
    v8 = [dictionaryCopy objectForKeyedSubscript:@"collectionContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[QDSchemaQDCollectionContext alloc] initWithDictionary:v8];
      [(QDSchemaQDClientEvent *)v5 setCollectionContext:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:{@"entitiesCollected", v8}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[QDSchemaQDEntitiesCollected alloc] initWithDictionary:v10];
      [(QDSchemaQDClientEvent *)v5 setEntitiesCollected:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"tuplesGenerated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[QDSchemaQDTuplesGenerated alloc] initWithDictionary:v12];
      [(QDSchemaQDClientEvent *)v5 setTuplesGenerated:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"entitiesRanked"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[QDSchemaQDEntitiesRanked alloc] initWithDictionary:v14];
      [(QDSchemaQDClientEvent *)v5 setEntitiesRanked:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"subComponentContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[QDSchemaQDSubComponentContext alloc] initWithDictionary:v16];
      [(QDSchemaQDClientEvent *)v5 setSubComponentContext:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"contextStatementIdsReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[QDSchemaQDContextStatementIdsReported alloc] initWithDictionary:v18];
      [(QDSchemaQDClientEvent *)v5 setContextStatementIdsReported:v19];
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"appPreLaunchTriggered"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[QDSchemaQDAppPreLaunchTriggered alloc] initWithDictionary:v20];
      [(QDSchemaQDClientEvent *)v5 setAppPreLaunchTriggered:v21];
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"toolboxSizeReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [[QDSchemaQDToolboxSizeReported alloc] initWithDictionary:v22];
      [(QDSchemaQDClientEvent *)v5 setToolboxSizeReported:v23];
    }

    v24 = v5;
  }

  return v5;
}

- (QDSchemaQDClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(QDSchemaQDClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(QDSchemaQDClientEvent *)self dictionaryRepresentation];
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
  if (self->_appPreLaunchTriggered)
  {
    appPreLaunchTriggered = [(QDSchemaQDClientEvent *)self appPreLaunchTriggered];
    dictionaryRepresentation = [appPreLaunchTriggered dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"appPreLaunchTriggered"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"appPreLaunchTriggered"];
    }
  }

  if (self->_collectionContext)
  {
    collectionContext = [(QDSchemaQDClientEvent *)self collectionContext];
    dictionaryRepresentation2 = [collectionContext dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"collectionContext"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"collectionContext"];
    }
  }

  if (self->_contextStatementIdsReported)
  {
    contextStatementIdsReported = [(QDSchemaQDClientEvent *)self contextStatementIdsReported];
    dictionaryRepresentation3 = [contextStatementIdsReported dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"contextStatementIdsReported"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"contextStatementIdsReported"];
    }
  }

  if (self->_entitiesCollected)
  {
    entitiesCollected = [(QDSchemaQDClientEvent *)self entitiesCollected];
    dictionaryRepresentation4 = [entitiesCollected dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"entitiesCollected"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"entitiesCollected"];
    }
  }

  if (self->_entitiesRanked)
  {
    entitiesRanked = [(QDSchemaQDClientEvent *)self entitiesRanked];
    dictionaryRepresentation5 = [entitiesRanked dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"entitiesRanked"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"entitiesRanked"];
    }
  }

  if (self->_eventMetadata)
  {
    eventMetadata = [(QDSchemaQDClientEvent *)self eventMetadata];
    dictionaryRepresentation6 = [eventMetadata dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_subComponentContext)
  {
    subComponentContext = [(QDSchemaQDClientEvent *)self subComponentContext];
    dictionaryRepresentation7 = [subComponentContext dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"subComponentContext"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"subComponentContext"];
    }
  }

  if (self->_toolboxSizeReported)
  {
    toolboxSizeReported = [(QDSchemaQDClientEvent *)self toolboxSizeReported];
    dictionaryRepresentation8 = [toolboxSizeReported dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"toolboxSizeReported"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"toolboxSizeReported"];
    }
  }

  if (self->_tuplesGenerated)
  {
    tuplesGenerated = [(QDSchemaQDClientEvent *)self tuplesGenerated];
    dictionaryRepresentation9 = [tuplesGenerated dictionaryRepresentation];
    if (dictionaryRepresentation9)
    {
      [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"tuplesGenerated"];
    }

    else
    {
      null9 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null9 forKeyedSubscript:@"tuplesGenerated"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(QDSchemaQDClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(QDSchemaQDCollectionContext *)self->_collectionContext hash]^ v3;
  v5 = [(QDSchemaQDEntitiesCollected *)self->_entitiesCollected hash];
  v6 = v4 ^ v5 ^ [(QDSchemaQDTuplesGenerated *)self->_tuplesGenerated hash];
  v7 = [(QDSchemaQDEntitiesRanked *)self->_entitiesRanked hash];
  v8 = v7 ^ [(QDSchemaQDSubComponentContext *)self->_subComponentContext hash];
  v9 = v6 ^ v8 ^ [(QDSchemaQDContextStatementIdsReported *)self->_contextStatementIdsReported hash];
  v10 = [(QDSchemaQDAppPreLaunchTriggered *)self->_appPreLaunchTriggered hash];
  return v9 ^ v10 ^ [(QDSchemaQDToolboxSizeReported *)self->_toolboxSizeReported hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_48;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [equalCopy whichEvent_Type])
  {
    goto LABEL_48;
  }

  eventMetadata = [(QDSchemaQDClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_47;
  }

  eventMetadata3 = [(QDSchemaQDClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(QDSchemaQDClientEvent *)self eventMetadata];
    eventMetadata5 = [equalCopy eventMetadata];
    v12 = [eventMetadata4 isEqual:eventMetadata5];

    if (!v12)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  eventMetadata = [(QDSchemaQDClientEvent *)self collectionContext];
  eventMetadata2 = [equalCopy collectionContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_47;
  }

  collectionContext = [(QDSchemaQDClientEvent *)self collectionContext];
  if (collectionContext)
  {
    v14 = collectionContext;
    collectionContext2 = [(QDSchemaQDClientEvent *)self collectionContext];
    collectionContext3 = [equalCopy collectionContext];
    v17 = [collectionContext2 isEqual:collectionContext3];

    if (!v17)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  eventMetadata = [(QDSchemaQDClientEvent *)self entitiesCollected];
  eventMetadata2 = [equalCopy entitiesCollected];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_47;
  }

  entitiesCollected = [(QDSchemaQDClientEvent *)self entitiesCollected];
  if (entitiesCollected)
  {
    v19 = entitiesCollected;
    entitiesCollected2 = [(QDSchemaQDClientEvent *)self entitiesCollected];
    entitiesCollected3 = [equalCopy entitiesCollected];
    v22 = [entitiesCollected2 isEqual:entitiesCollected3];

    if (!v22)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  eventMetadata = [(QDSchemaQDClientEvent *)self tuplesGenerated];
  eventMetadata2 = [equalCopy tuplesGenerated];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_47;
  }

  tuplesGenerated = [(QDSchemaQDClientEvent *)self tuplesGenerated];
  if (tuplesGenerated)
  {
    v24 = tuplesGenerated;
    tuplesGenerated2 = [(QDSchemaQDClientEvent *)self tuplesGenerated];
    tuplesGenerated3 = [equalCopy tuplesGenerated];
    v27 = [tuplesGenerated2 isEqual:tuplesGenerated3];

    if (!v27)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  eventMetadata = [(QDSchemaQDClientEvent *)self entitiesRanked];
  eventMetadata2 = [equalCopy entitiesRanked];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_47;
  }

  entitiesRanked = [(QDSchemaQDClientEvent *)self entitiesRanked];
  if (entitiesRanked)
  {
    v29 = entitiesRanked;
    entitiesRanked2 = [(QDSchemaQDClientEvent *)self entitiesRanked];
    entitiesRanked3 = [equalCopy entitiesRanked];
    v32 = [entitiesRanked2 isEqual:entitiesRanked3];

    if (!v32)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  eventMetadata = [(QDSchemaQDClientEvent *)self subComponentContext];
  eventMetadata2 = [equalCopy subComponentContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_47;
  }

  subComponentContext = [(QDSchemaQDClientEvent *)self subComponentContext];
  if (subComponentContext)
  {
    v34 = subComponentContext;
    subComponentContext2 = [(QDSchemaQDClientEvent *)self subComponentContext];
    subComponentContext3 = [equalCopy subComponentContext];
    v37 = [subComponentContext2 isEqual:subComponentContext3];

    if (!v37)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  eventMetadata = [(QDSchemaQDClientEvent *)self contextStatementIdsReported];
  eventMetadata2 = [equalCopy contextStatementIdsReported];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_47;
  }

  contextStatementIdsReported = [(QDSchemaQDClientEvent *)self contextStatementIdsReported];
  if (contextStatementIdsReported)
  {
    v39 = contextStatementIdsReported;
    contextStatementIdsReported2 = [(QDSchemaQDClientEvent *)self contextStatementIdsReported];
    contextStatementIdsReported3 = [equalCopy contextStatementIdsReported];
    v42 = [contextStatementIdsReported2 isEqual:contextStatementIdsReported3];

    if (!v42)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  eventMetadata = [(QDSchemaQDClientEvent *)self appPreLaunchTriggered];
  eventMetadata2 = [equalCopy appPreLaunchTriggered];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_47;
  }

  appPreLaunchTriggered = [(QDSchemaQDClientEvent *)self appPreLaunchTriggered];
  if (appPreLaunchTriggered)
  {
    v44 = appPreLaunchTriggered;
    appPreLaunchTriggered2 = [(QDSchemaQDClientEvent *)self appPreLaunchTriggered];
    appPreLaunchTriggered3 = [equalCopy appPreLaunchTriggered];
    v47 = [appPreLaunchTriggered2 isEqual:appPreLaunchTriggered3];

    if (!v47)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  eventMetadata = [(QDSchemaQDClientEvent *)self toolboxSizeReported];
  eventMetadata2 = [equalCopy toolboxSizeReported];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    toolboxSizeReported = [(QDSchemaQDClientEvent *)self toolboxSizeReported];
    if (!toolboxSizeReported)
    {

LABEL_51:
      v53 = 1;
      goto LABEL_49;
    }

    v49 = toolboxSizeReported;
    toolboxSizeReported2 = [(QDSchemaQDClientEvent *)self toolboxSizeReported];
    toolboxSizeReported3 = [equalCopy toolboxSizeReported];
    v52 = [toolboxSizeReported2 isEqual:toolboxSizeReported3];

    if (v52)
    {
      goto LABEL_51;
    }
  }

  else
  {
LABEL_47:
  }

LABEL_48:
  v53 = 0;
LABEL_49:

  return v53;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  eventMetadata = [(QDSchemaQDClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(QDSchemaQDClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  collectionContext = [(QDSchemaQDClientEvent *)self collectionContext];

  if (collectionContext)
  {
    collectionContext2 = [(QDSchemaQDClientEvent *)self collectionContext];
    PBDataWriterWriteSubmessage();
  }

  entitiesCollected = [(QDSchemaQDClientEvent *)self entitiesCollected];

  if (entitiesCollected)
  {
    entitiesCollected2 = [(QDSchemaQDClientEvent *)self entitiesCollected];
    PBDataWriterWriteSubmessage();
  }

  tuplesGenerated = [(QDSchemaQDClientEvent *)self tuplesGenerated];

  if (tuplesGenerated)
  {
    tuplesGenerated2 = [(QDSchemaQDClientEvent *)self tuplesGenerated];
    PBDataWriterWriteSubmessage();
  }

  entitiesRanked = [(QDSchemaQDClientEvent *)self entitiesRanked];

  if (entitiesRanked)
  {
    entitiesRanked2 = [(QDSchemaQDClientEvent *)self entitiesRanked];
    PBDataWriterWriteSubmessage();
  }

  subComponentContext = [(QDSchemaQDClientEvent *)self subComponentContext];

  if (subComponentContext)
  {
    subComponentContext2 = [(QDSchemaQDClientEvent *)self subComponentContext];
    PBDataWriterWriteSubmessage();
  }

  contextStatementIdsReported = [(QDSchemaQDClientEvent *)self contextStatementIdsReported];

  if (contextStatementIdsReported)
  {
    contextStatementIdsReported2 = [(QDSchemaQDClientEvent *)self contextStatementIdsReported];
    PBDataWriterWriteSubmessage();
  }

  appPreLaunchTriggered = [(QDSchemaQDClientEvent *)self appPreLaunchTriggered];

  if (appPreLaunchTriggered)
  {
    appPreLaunchTriggered2 = [(QDSchemaQDClientEvent *)self appPreLaunchTriggered];
    PBDataWriterWriteSubmessage();
  }

  toolboxSizeReported = [(QDSchemaQDClientEvent *)self toolboxSizeReported];

  v21 = toCopy;
  if (toolboxSizeReported)
  {
    toolboxSizeReported2 = [(QDSchemaQDClientEvent *)self toolboxSizeReported];
    PBDataWriterWriteSubmessage();

    v21 = toCopy;
  }
}

- (void)deleteToolboxSizeReported
{
  if (self->_whichEvent_Type == 107)
  {
    self->_whichEvent_Type = 0;
    self->_toolboxSizeReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (QDSchemaQDToolboxSizeReported)toolboxSizeReported
{
  if (self->_whichEvent_Type == 107)
  {
    v3 = self->_toolboxSizeReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setToolboxSizeReported:(id)reported
{
  reportedCopy = reported;
  collectionContext = self->_collectionContext;
  self->_collectionContext = 0;

  entitiesCollected = self->_entitiesCollected;
  self->_entitiesCollected = 0;

  tuplesGenerated = self->_tuplesGenerated;
  self->_tuplesGenerated = 0;

  entitiesRanked = self->_entitiesRanked;
  self->_entitiesRanked = 0;

  subComponentContext = self->_subComponentContext;
  self->_subComponentContext = 0;

  contextStatementIdsReported = self->_contextStatementIdsReported;
  self->_contextStatementIdsReported = 0;

  appPreLaunchTriggered = self->_appPreLaunchTriggered;
  self->_appPreLaunchTriggered = 0;

  v12 = 107;
  if (!reportedCopy)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  toolboxSizeReported = self->_toolboxSizeReported;
  self->_toolboxSizeReported = reportedCopy;
}

- (void)deleteAppPreLaunchTriggered
{
  if (self->_whichEvent_Type == 106)
  {
    self->_whichEvent_Type = 0;
    self->_appPreLaunchTriggered = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (QDSchemaQDAppPreLaunchTriggered)appPreLaunchTriggered
{
  if (self->_whichEvent_Type == 106)
  {
    v3 = self->_appPreLaunchTriggered;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAppPreLaunchTriggered:(id)triggered
{
  triggeredCopy = triggered;
  collectionContext = self->_collectionContext;
  self->_collectionContext = 0;

  entitiesCollected = self->_entitiesCollected;
  self->_entitiesCollected = 0;

  tuplesGenerated = self->_tuplesGenerated;
  self->_tuplesGenerated = 0;

  entitiesRanked = self->_entitiesRanked;
  self->_entitiesRanked = 0;

  subComponentContext = self->_subComponentContext;
  self->_subComponentContext = 0;

  contextStatementIdsReported = self->_contextStatementIdsReported;
  self->_contextStatementIdsReported = 0;

  toolboxSizeReported = self->_toolboxSizeReported;
  self->_toolboxSizeReported = 0;

  v12 = 106;
  if (!triggeredCopy)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  appPreLaunchTriggered = self->_appPreLaunchTriggered;
  self->_appPreLaunchTriggered = triggeredCopy;
}

- (void)deleteContextStatementIdsReported
{
  if (self->_whichEvent_Type == 105)
  {
    self->_whichEvent_Type = 0;
    self->_contextStatementIdsReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (QDSchemaQDContextStatementIdsReported)contextStatementIdsReported
{
  if (self->_whichEvent_Type == 105)
  {
    v3 = self->_contextStatementIdsReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContextStatementIdsReported:(id)reported
{
  reportedCopy = reported;
  collectionContext = self->_collectionContext;
  self->_collectionContext = 0;

  entitiesCollected = self->_entitiesCollected;
  self->_entitiesCollected = 0;

  tuplesGenerated = self->_tuplesGenerated;
  self->_tuplesGenerated = 0;

  entitiesRanked = self->_entitiesRanked;
  self->_entitiesRanked = 0;

  subComponentContext = self->_subComponentContext;
  self->_subComponentContext = 0;

  appPreLaunchTriggered = self->_appPreLaunchTriggered;
  self->_appPreLaunchTriggered = 0;

  toolboxSizeReported = self->_toolboxSizeReported;
  self->_toolboxSizeReported = 0;

  v12 = 105;
  if (!reportedCopy)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  contextStatementIdsReported = self->_contextStatementIdsReported;
  self->_contextStatementIdsReported = reportedCopy;
}

- (void)deleteSubComponentContext
{
  if (self->_whichEvent_Type == 104)
  {
    self->_whichEvent_Type = 0;
    self->_subComponentContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (QDSchemaQDSubComponentContext)subComponentContext
{
  if (self->_whichEvent_Type == 104)
  {
    v3 = self->_subComponentContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSubComponentContext:(id)context
{
  contextCopy = context;
  collectionContext = self->_collectionContext;
  self->_collectionContext = 0;

  entitiesCollected = self->_entitiesCollected;
  self->_entitiesCollected = 0;

  tuplesGenerated = self->_tuplesGenerated;
  self->_tuplesGenerated = 0;

  entitiesRanked = self->_entitiesRanked;
  self->_entitiesRanked = 0;

  contextStatementIdsReported = self->_contextStatementIdsReported;
  self->_contextStatementIdsReported = 0;

  appPreLaunchTriggered = self->_appPreLaunchTriggered;
  self->_appPreLaunchTriggered = 0;

  toolboxSizeReported = self->_toolboxSizeReported;
  self->_toolboxSizeReported = 0;

  v12 = 104;
  if (!contextCopy)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  subComponentContext = self->_subComponentContext;
  self->_subComponentContext = contextCopy;
}

- (void)deleteEntitiesRanked
{
  if (self->_whichEvent_Type == 103)
  {
    self->_whichEvent_Type = 0;
    self->_entitiesRanked = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (QDSchemaQDEntitiesRanked)entitiesRanked
{
  if (self->_whichEvent_Type == 103)
  {
    v3 = self->_entitiesRanked;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setEntitiesRanked:(id)ranked
{
  rankedCopy = ranked;
  collectionContext = self->_collectionContext;
  self->_collectionContext = 0;

  entitiesCollected = self->_entitiesCollected;
  self->_entitiesCollected = 0;

  tuplesGenerated = self->_tuplesGenerated;
  self->_tuplesGenerated = 0;

  subComponentContext = self->_subComponentContext;
  self->_subComponentContext = 0;

  contextStatementIdsReported = self->_contextStatementIdsReported;
  self->_contextStatementIdsReported = 0;

  appPreLaunchTriggered = self->_appPreLaunchTriggered;
  self->_appPreLaunchTriggered = 0;

  toolboxSizeReported = self->_toolboxSizeReported;
  self->_toolboxSizeReported = 0;

  v12 = 103;
  if (!rankedCopy)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  entitiesRanked = self->_entitiesRanked;
  self->_entitiesRanked = rankedCopy;
}

- (void)deleteTuplesGenerated
{
  if (self->_whichEvent_Type == 102)
  {
    self->_whichEvent_Type = 0;
    self->_tuplesGenerated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (QDSchemaQDTuplesGenerated)tuplesGenerated
{
  if (self->_whichEvent_Type == 102)
  {
    v3 = self->_tuplesGenerated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setTuplesGenerated:(id)generated
{
  generatedCopy = generated;
  collectionContext = self->_collectionContext;
  self->_collectionContext = 0;

  entitiesCollected = self->_entitiesCollected;
  self->_entitiesCollected = 0;

  entitiesRanked = self->_entitiesRanked;
  self->_entitiesRanked = 0;

  subComponentContext = self->_subComponentContext;
  self->_subComponentContext = 0;

  contextStatementIdsReported = self->_contextStatementIdsReported;
  self->_contextStatementIdsReported = 0;

  appPreLaunchTriggered = self->_appPreLaunchTriggered;
  self->_appPreLaunchTriggered = 0;

  toolboxSizeReported = self->_toolboxSizeReported;
  self->_toolboxSizeReported = 0;

  v12 = 102;
  if (!generatedCopy)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  tuplesGenerated = self->_tuplesGenerated;
  self->_tuplesGenerated = generatedCopy;
}

- (void)deleteEntitiesCollected
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_entitiesCollected = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (QDSchemaQDEntitiesCollected)entitiesCollected
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_entitiesCollected;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setEntitiesCollected:(id)collected
{
  collectedCopy = collected;
  collectionContext = self->_collectionContext;
  self->_collectionContext = 0;

  tuplesGenerated = self->_tuplesGenerated;
  self->_tuplesGenerated = 0;

  entitiesRanked = self->_entitiesRanked;
  self->_entitiesRanked = 0;

  subComponentContext = self->_subComponentContext;
  self->_subComponentContext = 0;

  contextStatementIdsReported = self->_contextStatementIdsReported;
  self->_contextStatementIdsReported = 0;

  appPreLaunchTriggered = self->_appPreLaunchTriggered;
  self->_appPreLaunchTriggered = 0;

  toolboxSizeReported = self->_toolboxSizeReported;
  self->_toolboxSizeReported = 0;

  v12 = 101;
  if (!collectedCopy)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  entitiesCollected = self->_entitiesCollected;
  self->_entitiesCollected = collectedCopy;
}

- (void)deleteCollectionContext
{
  if (self->_whichEvent_Type == 100)
  {
    self->_whichEvent_Type = 0;
    self->_collectionContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (QDSchemaQDCollectionContext)collectionContext
{
  if (self->_whichEvent_Type == 100)
  {
    v3 = self->_collectionContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCollectionContext:(id)context
{
  contextCopy = context;
  entitiesCollected = self->_entitiesCollected;
  self->_entitiesCollected = 0;

  tuplesGenerated = self->_tuplesGenerated;
  self->_tuplesGenerated = 0;

  entitiesRanked = self->_entitiesRanked;
  self->_entitiesRanked = 0;

  subComponentContext = self->_subComponentContext;
  self->_subComponentContext = 0;

  contextStatementIdsReported = self->_contextStatementIdsReported;
  self->_contextStatementIdsReported = 0;

  appPreLaunchTriggered = self->_appPreLaunchTriggered;
  self->_appPreLaunchTriggered = 0;

  toolboxSizeReported = self->_toolboxSizeReported;
  self->_toolboxSizeReported = 0;

  v12 = 100;
  if (!contextCopy)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  collectionContext = self->_collectionContext;
  self->_collectionContext = contextCopy;
}

- (id)qualifiedMessageName
{
  whichEvent_Type = [(QDSchemaQDClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 100 > 7)
  {
    return @"com.apple.aiml.siri.qd.QDClientEvent";
  }

  else
  {
    return off_1E78E1698[whichEvent_Type - 100];
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v34.receiver = self;
  v34.super_class = QDSchemaQDClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v34 applySensitiveConditionsPolicy:policyCopy];
  eventMetadata = [(QDSchemaQDClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(QDSchemaQDClientEvent *)self deleteEventMetadata];
  }

  collectionContext = [(QDSchemaQDClientEvent *)self collectionContext];
  v10 = [collectionContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(QDSchemaQDClientEvent *)self deleteCollectionContext];
  }

  entitiesCollected = [(QDSchemaQDClientEvent *)self entitiesCollected];
  v13 = [entitiesCollected applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(QDSchemaQDClientEvent *)self deleteEntitiesCollected];
  }

  tuplesGenerated = [(QDSchemaQDClientEvent *)self tuplesGenerated];
  v16 = [tuplesGenerated applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(QDSchemaQDClientEvent *)self deleteTuplesGenerated];
  }

  entitiesRanked = [(QDSchemaQDClientEvent *)self entitiesRanked];
  v19 = [entitiesRanked applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(QDSchemaQDClientEvent *)self deleteEntitiesRanked];
  }

  subComponentContext = [(QDSchemaQDClientEvent *)self subComponentContext];
  v22 = [subComponentContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(QDSchemaQDClientEvent *)self deleteSubComponentContext];
  }

  contextStatementIdsReported = [(QDSchemaQDClientEvent *)self contextStatementIdsReported];
  v25 = [contextStatementIdsReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage7 = [v25 suppressMessage];

  if (suppressMessage7)
  {
    [(QDSchemaQDClientEvent *)self deleteContextStatementIdsReported];
  }

  appPreLaunchTriggered = [(QDSchemaQDClientEvent *)self appPreLaunchTriggered];
  v28 = [appPreLaunchTriggered applySensitiveConditionsPolicy:policyCopy];
  suppressMessage8 = [v28 suppressMessage];

  if (suppressMessage8)
  {
    [(QDSchemaQDClientEvent *)self deleteAppPreLaunchTriggered];
  }

  toolboxSizeReported = [(QDSchemaQDClientEvent *)self toolboxSizeReported];
  v31 = [toolboxSizeReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage9 = [v31 suppressMessage];

  if (suppressMessage9)
  {
    [(QDSchemaQDClientEvent *)self deleteToolboxSizeReported];
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
  eventMetadata = [(QDSchemaQDClientEvent *)self eventMetadata];
  qdId = [eventMetadata qdId];

  if (qdId)
  {
    value = [qdId value];
    if (value)
    {
      value2 = [qdId value];
      v6 = [value2 length];

      if (v6)
      {
        LODWORD(value) = 50;
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
  eventMetadata = [(QDSchemaQDClientEvent *)self eventMetadata];
  qdId = [eventMetadata qdId];

  if (!qdId)
  {
    goto LABEL_5;
  }

  value = [qdId value];
  if (!value)
  {
    goto LABEL_6;
  }

  value2 = [qdId value];
  v6 = [value2 length];

  if (v6)
  {
    value = qdId;
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
  whichEvent_Type = [(QDSchemaQDClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 100 > 7)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78EADB8[whichEvent_Type - 100]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)tag
{
  if (tag - 100 > 7)
  {
    return 0;
  }

  else
  {
    return off_1E78EADF8[tag - 100];
  }
}

@end