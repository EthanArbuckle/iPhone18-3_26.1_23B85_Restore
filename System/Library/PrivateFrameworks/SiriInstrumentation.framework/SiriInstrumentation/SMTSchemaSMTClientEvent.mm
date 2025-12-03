@interface SMTSchemaSMTClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (SMTSchemaSMTAppLanguageModelAssetCopyContext)appLanguageModelAssetCopyContext;
- (SMTSchemaSMTAppLanguageModelBuildContext)appLanguageModelBuildContext;
- (SMTSchemaSMTAppLanguageModelProfileRebuildContext)appLanguageModelProfileRebuildContext;
- (SMTSchemaSMTClientEvent)initWithDictionary:(id)dictionary;
- (SMTSchemaSMTClientEvent)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)clockIsolationLevel;
- (unint64_t)hash;
- (void)deleteAppLanguageModelAssetCopyContext;
- (void)deleteAppLanguageModelBuildContext;
- (void)deleteAppLanguageModelProfileRebuildContext;
- (void)setAppLanguageModelAssetCopyContext:(id)context;
- (void)setAppLanguageModelBuildContext:(id)context;
- (void)setAppLanguageModelProfileRebuildContext:(id)context;
- (void)writeTo:(id)to;
@end

@implementation SMTSchemaSMTClientEvent

- (SMTSchemaSMTClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = SMTSchemaSMTClientEvent;
  v5 = [(SMTSchemaSMTClientEvent *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SMTSchemaSMTClientEventMetadata alloc] initWithDictionary:v6];
      [(SMTSchemaSMTClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"appLanguageModelAssetCopyContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SMTSchemaSMTAppLanguageModelAssetCopyContext alloc] initWithDictionary:v8];
      [(SMTSchemaSMTClientEvent *)v5 setAppLanguageModelAssetCopyContext:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"appLanguageModelBuildContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SMTSchemaSMTAppLanguageModelBuildContext alloc] initWithDictionary:v10];
      [(SMTSchemaSMTClientEvent *)v5 setAppLanguageModelBuildContext:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"appLanguageModelProfileRebuildContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[SMTSchemaSMTAppLanguageModelProfileRebuildContext alloc] initWithDictionary:v12];
      [(SMTSchemaSMTClientEvent *)v5 setAppLanguageModelProfileRebuildContext:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (SMTSchemaSMTClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SMTSchemaSMTClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SMTSchemaSMTClientEvent *)self dictionaryRepresentation];
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
  if (self->_appLanguageModelAssetCopyContext)
  {
    appLanguageModelAssetCopyContext = [(SMTSchemaSMTClientEvent *)self appLanguageModelAssetCopyContext];
    dictionaryRepresentation = [appLanguageModelAssetCopyContext dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"appLanguageModelAssetCopyContext"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"appLanguageModelAssetCopyContext"];
    }
  }

  if (self->_appLanguageModelBuildContext)
  {
    appLanguageModelBuildContext = [(SMTSchemaSMTClientEvent *)self appLanguageModelBuildContext];
    dictionaryRepresentation2 = [appLanguageModelBuildContext dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"appLanguageModelBuildContext"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"appLanguageModelBuildContext"];
    }
  }

  if (self->_appLanguageModelProfileRebuildContext)
  {
    appLanguageModelProfileRebuildContext = [(SMTSchemaSMTClientEvent *)self appLanguageModelProfileRebuildContext];
    dictionaryRepresentation3 = [appLanguageModelProfileRebuildContext dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"appLanguageModelProfileRebuildContext"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"appLanguageModelProfileRebuildContext"];
    }
  }

  if (self->_eventMetadata)
  {
    eventMetadata = [(SMTSchemaSMTClientEvent *)self eventMetadata];
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
  v3 = [(SMTSchemaSMTClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(SMTSchemaSMTAppLanguageModelAssetCopyContext *)self->_appLanguageModelAssetCopyContext hash]^ v3;
  v5 = [(SMTSchemaSMTAppLanguageModelBuildContext *)self->_appLanguageModelBuildContext hash];
  return v4 ^ v5 ^ [(SMTSchemaSMTAppLanguageModelProfileRebuildContext *)self->_appLanguageModelProfileRebuildContext hash];
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

  eventMetadata = [(SMTSchemaSMTClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_22;
  }

  eventMetadata3 = [(SMTSchemaSMTClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(SMTSchemaSMTClientEvent *)self eventMetadata];
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

  eventMetadata = [(SMTSchemaSMTClientEvent *)self appLanguageModelAssetCopyContext];
  eventMetadata2 = [equalCopy appLanguageModelAssetCopyContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_22;
  }

  appLanguageModelAssetCopyContext = [(SMTSchemaSMTClientEvent *)self appLanguageModelAssetCopyContext];
  if (appLanguageModelAssetCopyContext)
  {
    v14 = appLanguageModelAssetCopyContext;
    appLanguageModelAssetCopyContext2 = [(SMTSchemaSMTClientEvent *)self appLanguageModelAssetCopyContext];
    appLanguageModelAssetCopyContext3 = [equalCopy appLanguageModelAssetCopyContext];
    v17 = [appLanguageModelAssetCopyContext2 isEqual:appLanguageModelAssetCopyContext3];

    if (!v17)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  eventMetadata = [(SMTSchemaSMTClientEvent *)self appLanguageModelBuildContext];
  eventMetadata2 = [equalCopy appLanguageModelBuildContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_22;
  }

  appLanguageModelBuildContext = [(SMTSchemaSMTClientEvent *)self appLanguageModelBuildContext];
  if (appLanguageModelBuildContext)
  {
    v19 = appLanguageModelBuildContext;
    appLanguageModelBuildContext2 = [(SMTSchemaSMTClientEvent *)self appLanguageModelBuildContext];
    appLanguageModelBuildContext3 = [equalCopy appLanguageModelBuildContext];
    v22 = [appLanguageModelBuildContext2 isEqual:appLanguageModelBuildContext3];

    if (!v22)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  eventMetadata = [(SMTSchemaSMTClientEvent *)self appLanguageModelProfileRebuildContext];
  eventMetadata2 = [equalCopy appLanguageModelProfileRebuildContext];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    appLanguageModelProfileRebuildContext = [(SMTSchemaSMTClientEvent *)self appLanguageModelProfileRebuildContext];
    if (!appLanguageModelProfileRebuildContext)
    {

LABEL_26:
      v28 = 1;
      goto LABEL_24;
    }

    v24 = appLanguageModelProfileRebuildContext;
    appLanguageModelProfileRebuildContext2 = [(SMTSchemaSMTClientEvent *)self appLanguageModelProfileRebuildContext];
    appLanguageModelProfileRebuildContext3 = [equalCopy appLanguageModelProfileRebuildContext];
    v27 = [appLanguageModelProfileRebuildContext2 isEqual:appLanguageModelProfileRebuildContext3];

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
  eventMetadata = [(SMTSchemaSMTClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(SMTSchemaSMTClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  appLanguageModelAssetCopyContext = [(SMTSchemaSMTClientEvent *)self appLanguageModelAssetCopyContext];

  if (appLanguageModelAssetCopyContext)
  {
    appLanguageModelAssetCopyContext2 = [(SMTSchemaSMTClientEvent *)self appLanguageModelAssetCopyContext];
    PBDataWriterWriteSubmessage();
  }

  appLanguageModelBuildContext = [(SMTSchemaSMTClientEvent *)self appLanguageModelBuildContext];

  if (appLanguageModelBuildContext)
  {
    appLanguageModelBuildContext2 = [(SMTSchemaSMTClientEvent *)self appLanguageModelBuildContext];
    PBDataWriterWriteSubmessage();
  }

  appLanguageModelProfileRebuildContext = [(SMTSchemaSMTClientEvent *)self appLanguageModelProfileRebuildContext];

  v11 = toCopy;
  if (appLanguageModelProfileRebuildContext)
  {
    appLanguageModelProfileRebuildContext2 = [(SMTSchemaSMTClientEvent *)self appLanguageModelProfileRebuildContext];
    PBDataWriterWriteSubmessage();

    v11 = toCopy;
  }
}

- (void)deleteAppLanguageModelProfileRebuildContext
{
  if (self->_whichEvent_Type == 103)
  {
    self->_whichEvent_Type = 0;
    self->_appLanguageModelProfileRebuildContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SMTSchemaSMTAppLanguageModelProfileRebuildContext)appLanguageModelProfileRebuildContext
{
  if (self->_whichEvent_Type == 103)
  {
    v3 = self->_appLanguageModelProfileRebuildContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAppLanguageModelProfileRebuildContext:(id)context
{
  contextCopy = context;
  appLanguageModelAssetCopyContext = self->_appLanguageModelAssetCopyContext;
  self->_appLanguageModelAssetCopyContext = 0;

  appLanguageModelBuildContext = self->_appLanguageModelBuildContext;
  self->_appLanguageModelBuildContext = 0;

  v7 = 103;
  if (!contextCopy)
  {
    v7 = 0;
  }

  self->_whichEvent_Type = v7;
  appLanguageModelProfileRebuildContext = self->_appLanguageModelProfileRebuildContext;
  self->_appLanguageModelProfileRebuildContext = contextCopy;
}

- (void)deleteAppLanguageModelBuildContext
{
  if (self->_whichEvent_Type == 102)
  {
    self->_whichEvent_Type = 0;
    self->_appLanguageModelBuildContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SMTSchemaSMTAppLanguageModelBuildContext)appLanguageModelBuildContext
{
  if (self->_whichEvent_Type == 102)
  {
    v3 = self->_appLanguageModelBuildContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAppLanguageModelBuildContext:(id)context
{
  contextCopy = context;
  appLanguageModelAssetCopyContext = self->_appLanguageModelAssetCopyContext;
  self->_appLanguageModelAssetCopyContext = 0;

  appLanguageModelProfileRebuildContext = self->_appLanguageModelProfileRebuildContext;
  self->_appLanguageModelProfileRebuildContext = 0;

  v7 = 102;
  if (!contextCopy)
  {
    v7 = 0;
  }

  self->_whichEvent_Type = v7;
  appLanguageModelBuildContext = self->_appLanguageModelBuildContext;
  self->_appLanguageModelBuildContext = contextCopy;
}

- (void)deleteAppLanguageModelAssetCopyContext
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_appLanguageModelAssetCopyContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SMTSchemaSMTAppLanguageModelAssetCopyContext)appLanguageModelAssetCopyContext
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_appLanguageModelAssetCopyContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAppLanguageModelAssetCopyContext:(id)context
{
  contextCopy = context;
  appLanguageModelBuildContext = self->_appLanguageModelBuildContext;
  self->_appLanguageModelBuildContext = 0;

  appLanguageModelProfileRebuildContext = self->_appLanguageModelProfileRebuildContext;
  self->_appLanguageModelProfileRebuildContext = 0;

  v7 = 101;
  if (!contextCopy)
  {
    v7 = 0;
  }

  self->_whichEvent_Type = v7;
  appLanguageModelAssetCopyContext = self->_appLanguageModelAssetCopyContext;
  self->_appLanguageModelAssetCopyContext = contextCopy;
}

- (id)qualifiedMessageName
{
  whichEvent_Type = [(SMTSchemaSMTClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 2)
  {
    return @"com.apple.aiml.siri.smt.SMTClientEvent";
  }

  else
  {
    return off_1E78E7550[whichEvent_Type - 101];
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v19.receiver = self;
  v19.super_class = SMTSchemaSMTClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:policyCopy];
  eventMetadata = [(SMTSchemaSMTClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(SMTSchemaSMTClientEvent *)self deleteEventMetadata];
  }

  appLanguageModelAssetCopyContext = [(SMTSchemaSMTClientEvent *)self appLanguageModelAssetCopyContext];
  v10 = [appLanguageModelAssetCopyContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(SMTSchemaSMTClientEvent *)self deleteAppLanguageModelAssetCopyContext];
  }

  appLanguageModelBuildContext = [(SMTSchemaSMTClientEvent *)self appLanguageModelBuildContext];
  v13 = [appLanguageModelBuildContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(SMTSchemaSMTClientEvent *)self deleteAppLanguageModelBuildContext];
  }

  appLanguageModelProfileRebuildContext = [(SMTSchemaSMTClientEvent *)self appLanguageModelProfileRebuildContext];
  v16 = [appLanguageModelProfileRebuildContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(SMTSchemaSMTClientEvent *)self deleteAppLanguageModelProfileRebuildContext];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

- (id)getComponentId
{
  eventMetadata = [(SMTSchemaSMTClientEvent *)self eventMetadata];
  smtId = [eventMetadata smtId];

  if (!smtId)
  {
    goto LABEL_5;
  }

  value = [smtId value];
  if (!value)
  {
    goto LABEL_6;
  }

  value2 = [smtId value];
  v6 = [value2 length];

  if (v6)
  {
    value = smtId;
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
  whichEvent_Type = [(SMTSchemaSMTClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78EB148[whichEvent_Type - 101]);
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
    return off_1E78EB160[tag - 101];
  }
}

- (int)clockIsolationLevel
{
  if ([(SMTSchemaSMTClientEvent *)self whichEvent_Type]- 101 >= 3)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

@end