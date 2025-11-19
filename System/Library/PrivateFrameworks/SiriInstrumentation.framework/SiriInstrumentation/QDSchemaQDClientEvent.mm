@interface QDSchemaQDClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (QDSchemaQDAppPreLaunchTriggered)appPreLaunchTriggered;
- (QDSchemaQDClientEvent)initWithDictionary:(id)a3;
- (QDSchemaQDClientEvent)initWithJSON:(id)a3;
- (QDSchemaQDCollectionContext)collectionContext;
- (QDSchemaQDContextStatementIdsReported)contextStatementIdsReported;
- (QDSchemaQDEntitiesCollected)entitiesCollected;
- (QDSchemaQDEntitiesRanked)entitiesRanked;
- (QDSchemaQDSubComponentContext)subComponentContext;
- (QDSchemaQDToolboxSizeReported)toolboxSizeReported;
- (QDSchemaQDTuplesGenerated)tuplesGenerated;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)a3;
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
- (void)setAppPreLaunchTriggered:(id)a3;
- (void)setCollectionContext:(id)a3;
- (void)setContextStatementIdsReported:(id)a3;
- (void)setEntitiesCollected:(id)a3;
- (void)setEntitiesRanked:(id)a3;
- (void)setSubComponentContext:(id)a3;
- (void)setToolboxSizeReported:(id)a3;
- (void)setTuplesGenerated:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation QDSchemaQDClientEvent

- (QDSchemaQDClientEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = QDSchemaQDClientEvent;
  v5 = [(QDSchemaQDClientEvent *)&v28 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[QDSchemaQDClientEventMetadata alloc] initWithDictionary:v6];
      [(QDSchemaQDClientEvent *)v5 setEventMetadata:v7];
    }

    v27 = v6;
    v8 = [v4 objectForKeyedSubscript:@"collectionContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[QDSchemaQDCollectionContext alloc] initWithDictionary:v8];
      [(QDSchemaQDClientEvent *)v5 setCollectionContext:v9];
    }

    v10 = [v4 objectForKeyedSubscript:{@"entitiesCollected", v8}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[QDSchemaQDEntitiesCollected alloc] initWithDictionary:v10];
      [(QDSchemaQDClientEvent *)v5 setEntitiesCollected:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"tuplesGenerated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[QDSchemaQDTuplesGenerated alloc] initWithDictionary:v12];
      [(QDSchemaQDClientEvent *)v5 setTuplesGenerated:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"entitiesRanked"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[QDSchemaQDEntitiesRanked alloc] initWithDictionary:v14];
      [(QDSchemaQDClientEvent *)v5 setEntitiesRanked:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"subComponentContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[QDSchemaQDSubComponentContext alloc] initWithDictionary:v16];
      [(QDSchemaQDClientEvent *)v5 setSubComponentContext:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"contextStatementIdsReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[QDSchemaQDContextStatementIdsReported alloc] initWithDictionary:v18];
      [(QDSchemaQDClientEvent *)v5 setContextStatementIdsReported:v19];
    }

    v20 = [v4 objectForKeyedSubscript:@"appPreLaunchTriggered"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[QDSchemaQDAppPreLaunchTriggered alloc] initWithDictionary:v20];
      [(QDSchemaQDClientEvent *)v5 setAppPreLaunchTriggered:v21];
    }

    v22 = [v4 objectForKeyedSubscript:@"toolboxSizeReported"];
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

- (QDSchemaQDClientEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(QDSchemaQDClientEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(QDSchemaQDClientEvent *)self dictionaryRepresentation];
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
  if (self->_appPreLaunchTriggered)
  {
    v4 = [(QDSchemaQDClientEvent *)self appPreLaunchTriggered];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"appPreLaunchTriggered"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"appPreLaunchTriggered"];
    }
  }

  if (self->_collectionContext)
  {
    v7 = [(QDSchemaQDClientEvent *)self collectionContext];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"collectionContext"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"collectionContext"];
    }
  }

  if (self->_contextStatementIdsReported)
  {
    v10 = [(QDSchemaQDClientEvent *)self contextStatementIdsReported];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"contextStatementIdsReported"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"contextStatementIdsReported"];
    }
  }

  if (self->_entitiesCollected)
  {
    v13 = [(QDSchemaQDClientEvent *)self entitiesCollected];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"entitiesCollected"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"entitiesCollected"];
    }
  }

  if (self->_entitiesRanked)
  {
    v16 = [(QDSchemaQDClientEvent *)self entitiesRanked];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"entitiesRanked"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"entitiesRanked"];
    }
  }

  if (self->_eventMetadata)
  {
    v19 = [(QDSchemaQDClientEvent *)self eventMetadata];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_subComponentContext)
  {
    v22 = [(QDSchemaQDClientEvent *)self subComponentContext];
    v23 = [v22 dictionaryRepresentation];
    if (v23)
    {
      [v3 setObject:v23 forKeyedSubscript:@"subComponentContext"];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v24 forKeyedSubscript:@"subComponentContext"];
    }
  }

  if (self->_toolboxSizeReported)
  {
    v25 = [(QDSchemaQDClientEvent *)self toolboxSizeReported];
    v26 = [v25 dictionaryRepresentation];
    if (v26)
    {
      [v3 setObject:v26 forKeyedSubscript:@"toolboxSizeReported"];
    }

    else
    {
      v27 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v27 forKeyedSubscript:@"toolboxSizeReported"];
    }
  }

  if (self->_tuplesGenerated)
  {
    v28 = [(QDSchemaQDClientEvent *)self tuplesGenerated];
    v29 = [v28 dictionaryRepresentation];
    if (v29)
    {
      [v3 setObject:v29 forKeyedSubscript:@"tuplesGenerated"];
    }

    else
    {
      v30 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v30 forKeyedSubscript:@"tuplesGenerated"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_48;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [v4 whichEvent_Type])
  {
    goto LABEL_48;
  }

  v6 = [(QDSchemaQDClientEvent *)self eventMetadata];
  v7 = [v4 eventMetadata];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_47;
  }

  v8 = [(QDSchemaQDClientEvent *)self eventMetadata];
  if (v8)
  {
    v9 = v8;
    v10 = [(QDSchemaQDClientEvent *)self eventMetadata];
    v11 = [v4 eventMetadata];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  v6 = [(QDSchemaQDClientEvent *)self collectionContext];
  v7 = [v4 collectionContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_47;
  }

  v13 = [(QDSchemaQDClientEvent *)self collectionContext];
  if (v13)
  {
    v14 = v13;
    v15 = [(QDSchemaQDClientEvent *)self collectionContext];
    v16 = [v4 collectionContext];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  v6 = [(QDSchemaQDClientEvent *)self entitiesCollected];
  v7 = [v4 entitiesCollected];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_47;
  }

  v18 = [(QDSchemaQDClientEvent *)self entitiesCollected];
  if (v18)
  {
    v19 = v18;
    v20 = [(QDSchemaQDClientEvent *)self entitiesCollected];
    v21 = [v4 entitiesCollected];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  v6 = [(QDSchemaQDClientEvent *)self tuplesGenerated];
  v7 = [v4 tuplesGenerated];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_47;
  }

  v23 = [(QDSchemaQDClientEvent *)self tuplesGenerated];
  if (v23)
  {
    v24 = v23;
    v25 = [(QDSchemaQDClientEvent *)self tuplesGenerated];
    v26 = [v4 tuplesGenerated];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  v6 = [(QDSchemaQDClientEvent *)self entitiesRanked];
  v7 = [v4 entitiesRanked];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_47;
  }

  v28 = [(QDSchemaQDClientEvent *)self entitiesRanked];
  if (v28)
  {
    v29 = v28;
    v30 = [(QDSchemaQDClientEvent *)self entitiesRanked];
    v31 = [v4 entitiesRanked];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  v6 = [(QDSchemaQDClientEvent *)self subComponentContext];
  v7 = [v4 subComponentContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_47;
  }

  v33 = [(QDSchemaQDClientEvent *)self subComponentContext];
  if (v33)
  {
    v34 = v33;
    v35 = [(QDSchemaQDClientEvent *)self subComponentContext];
    v36 = [v4 subComponentContext];
    v37 = [v35 isEqual:v36];

    if (!v37)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  v6 = [(QDSchemaQDClientEvent *)self contextStatementIdsReported];
  v7 = [v4 contextStatementIdsReported];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_47;
  }

  v38 = [(QDSchemaQDClientEvent *)self contextStatementIdsReported];
  if (v38)
  {
    v39 = v38;
    v40 = [(QDSchemaQDClientEvent *)self contextStatementIdsReported];
    v41 = [v4 contextStatementIdsReported];
    v42 = [v40 isEqual:v41];

    if (!v42)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  v6 = [(QDSchemaQDClientEvent *)self appPreLaunchTriggered];
  v7 = [v4 appPreLaunchTriggered];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_47;
  }

  v43 = [(QDSchemaQDClientEvent *)self appPreLaunchTriggered];
  if (v43)
  {
    v44 = v43;
    v45 = [(QDSchemaQDClientEvent *)self appPreLaunchTriggered];
    v46 = [v4 appPreLaunchTriggered];
    v47 = [v45 isEqual:v46];

    if (!v47)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  v6 = [(QDSchemaQDClientEvent *)self toolboxSizeReported];
  v7 = [v4 toolboxSizeReported];
  if ((v6 != 0) != (v7 == 0))
  {
    v48 = [(QDSchemaQDClientEvent *)self toolboxSizeReported];
    if (!v48)
    {

LABEL_51:
      v53 = 1;
      goto LABEL_49;
    }

    v49 = v48;
    v50 = [(QDSchemaQDClientEvent *)self toolboxSizeReported];
    v51 = [v4 toolboxSizeReported];
    v52 = [v50 isEqual:v51];

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

- (void)writeTo:(id)a3
{
  v23 = a3;
  v4 = [(QDSchemaQDClientEvent *)self eventMetadata];

  if (v4)
  {
    v5 = [(QDSchemaQDClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(QDSchemaQDClientEvent *)self collectionContext];

  if (v6)
  {
    v7 = [(QDSchemaQDClientEvent *)self collectionContext];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(QDSchemaQDClientEvent *)self entitiesCollected];

  if (v8)
  {
    v9 = [(QDSchemaQDClientEvent *)self entitiesCollected];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(QDSchemaQDClientEvent *)self tuplesGenerated];

  if (v10)
  {
    v11 = [(QDSchemaQDClientEvent *)self tuplesGenerated];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(QDSchemaQDClientEvent *)self entitiesRanked];

  if (v12)
  {
    v13 = [(QDSchemaQDClientEvent *)self entitiesRanked];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(QDSchemaQDClientEvent *)self subComponentContext];

  if (v14)
  {
    v15 = [(QDSchemaQDClientEvent *)self subComponentContext];
    PBDataWriterWriteSubmessage();
  }

  v16 = [(QDSchemaQDClientEvent *)self contextStatementIdsReported];

  if (v16)
  {
    v17 = [(QDSchemaQDClientEvent *)self contextStatementIdsReported];
    PBDataWriterWriteSubmessage();
  }

  v18 = [(QDSchemaQDClientEvent *)self appPreLaunchTriggered];

  if (v18)
  {
    v19 = [(QDSchemaQDClientEvent *)self appPreLaunchTriggered];
    PBDataWriterWriteSubmessage();
  }

  v20 = [(QDSchemaQDClientEvent *)self toolboxSizeReported];

  v21 = v23;
  if (v20)
  {
    v22 = [(QDSchemaQDClientEvent *)self toolboxSizeReported];
    PBDataWriterWriteSubmessage();

    v21 = v23;
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

- (void)setToolboxSizeReported:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  toolboxSizeReported = self->_toolboxSizeReported;
  self->_toolboxSizeReported = v4;
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

- (void)setAppPreLaunchTriggered:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  appPreLaunchTriggered = self->_appPreLaunchTriggered;
  self->_appPreLaunchTriggered = v4;
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

- (void)setContextStatementIdsReported:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  contextStatementIdsReported = self->_contextStatementIdsReported;
  self->_contextStatementIdsReported = v4;
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

- (void)setSubComponentContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  subComponentContext = self->_subComponentContext;
  self->_subComponentContext = v4;
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

- (void)setEntitiesRanked:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  entitiesRanked = self->_entitiesRanked;
  self->_entitiesRanked = v4;
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

- (void)setTuplesGenerated:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  tuplesGenerated = self->_tuplesGenerated;
  self->_tuplesGenerated = v4;
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

- (void)setEntitiesCollected:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  entitiesCollected = self->_entitiesCollected;
  self->_entitiesCollected = v4;
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

- (void)setCollectionContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  collectionContext = self->_collectionContext;
  self->_collectionContext = v4;
}

- (id)qualifiedMessageName
{
  v2 = [(QDSchemaQDClientEvent *)self whichEvent_Type];
  if (v2 - 100 > 7)
  {
    return @"com.apple.aiml.siri.qd.QDClientEvent";
  }

  else
  {
    return off_1E78E1698[v2 - 100];
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v34.receiver = self;
  v34.super_class = QDSchemaQDClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v34 applySensitiveConditionsPolicy:v4];
  v6 = [(QDSchemaQDClientEvent *)self eventMetadata];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(QDSchemaQDClientEvent *)self deleteEventMetadata];
  }

  v9 = [(QDSchemaQDClientEvent *)self collectionContext];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(QDSchemaQDClientEvent *)self deleteCollectionContext];
  }

  v12 = [(QDSchemaQDClientEvent *)self entitiesCollected];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(QDSchemaQDClientEvent *)self deleteEntitiesCollected];
  }

  v15 = [(QDSchemaQDClientEvent *)self tuplesGenerated];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(QDSchemaQDClientEvent *)self deleteTuplesGenerated];
  }

  v18 = [(QDSchemaQDClientEvent *)self entitiesRanked];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(QDSchemaQDClientEvent *)self deleteEntitiesRanked];
  }

  v21 = [(QDSchemaQDClientEvent *)self subComponentContext];
  v22 = [v21 applySensitiveConditionsPolicy:v4];
  v23 = [v22 suppressMessage];

  if (v23)
  {
    [(QDSchemaQDClientEvent *)self deleteSubComponentContext];
  }

  v24 = [(QDSchemaQDClientEvent *)self contextStatementIdsReported];
  v25 = [v24 applySensitiveConditionsPolicy:v4];
  v26 = [v25 suppressMessage];

  if (v26)
  {
    [(QDSchemaQDClientEvent *)self deleteContextStatementIdsReported];
  }

  v27 = [(QDSchemaQDClientEvent *)self appPreLaunchTriggered];
  v28 = [v27 applySensitiveConditionsPolicy:v4];
  v29 = [v28 suppressMessage];

  if (v29)
  {
    [(QDSchemaQDClientEvent *)self deleteAppPreLaunchTriggered];
  }

  v30 = [(QDSchemaQDClientEvent *)self toolboxSizeReported];
  v31 = [v30 applySensitiveConditionsPolicy:v4];
  v32 = [v31 suppressMessage];

  if (v32)
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
  v2 = [(QDSchemaQDClientEvent *)self eventMetadata];
  v3 = [v2 qdId];

  if (v3)
  {
    v4 = [v3 value];
    if (v4)
    {
      v5 = [v3 value];
      v6 = [v5 length];

      if (v6)
      {
        LODWORD(v4) = 50;
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
  v2 = [(QDSchemaQDClientEvent *)self eventMetadata];
  v3 = [v2 qdId];

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
  v3 = [(QDSchemaQDClientEvent *)self whichEvent_Type];
  if (v3 - 100 > 7)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78EADB8[v3 - 100]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)a3
{
  if (a3 - 100 > 7)
  {
    return 0;
  }

  else
  {
    return off_1E78EADF8[a3 - 100];
  }
}

@end