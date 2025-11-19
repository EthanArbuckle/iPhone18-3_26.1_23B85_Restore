@interface SMTSchemaSMTClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (SMTSchemaSMTAppLanguageModelAssetCopyContext)appLanguageModelAssetCopyContext;
- (SMTSchemaSMTAppLanguageModelBuildContext)appLanguageModelBuildContext;
- (SMTSchemaSMTAppLanguageModelProfileRebuildContext)appLanguageModelProfileRebuildContext;
- (SMTSchemaSMTClientEvent)initWithDictionary:(id)a3;
- (SMTSchemaSMTClientEvent)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)clockIsolationLevel;
- (unint64_t)hash;
- (void)deleteAppLanguageModelAssetCopyContext;
- (void)deleteAppLanguageModelBuildContext;
- (void)deleteAppLanguageModelProfileRebuildContext;
- (void)setAppLanguageModelAssetCopyContext:(id)a3;
- (void)setAppLanguageModelBuildContext:(id)a3;
- (void)setAppLanguageModelProfileRebuildContext:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SMTSchemaSMTClientEvent

- (SMTSchemaSMTClientEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = SMTSchemaSMTClientEvent;
  v5 = [(SMTSchemaSMTClientEvent *)&v16 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SMTSchemaSMTClientEventMetadata alloc] initWithDictionary:v6];
      [(SMTSchemaSMTClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"appLanguageModelAssetCopyContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SMTSchemaSMTAppLanguageModelAssetCopyContext alloc] initWithDictionary:v8];
      [(SMTSchemaSMTClientEvent *)v5 setAppLanguageModelAssetCopyContext:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"appLanguageModelBuildContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SMTSchemaSMTAppLanguageModelBuildContext alloc] initWithDictionary:v10];
      [(SMTSchemaSMTClientEvent *)v5 setAppLanguageModelBuildContext:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"appLanguageModelProfileRebuildContext"];
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

- (SMTSchemaSMTClientEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SMTSchemaSMTClientEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SMTSchemaSMTClientEvent *)self dictionaryRepresentation];
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
  if (self->_appLanguageModelAssetCopyContext)
  {
    v4 = [(SMTSchemaSMTClientEvent *)self appLanguageModelAssetCopyContext];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"appLanguageModelAssetCopyContext"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"appLanguageModelAssetCopyContext"];
    }
  }

  if (self->_appLanguageModelBuildContext)
  {
    v7 = [(SMTSchemaSMTClientEvent *)self appLanguageModelBuildContext];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"appLanguageModelBuildContext"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"appLanguageModelBuildContext"];
    }
  }

  if (self->_appLanguageModelProfileRebuildContext)
  {
    v10 = [(SMTSchemaSMTClientEvent *)self appLanguageModelProfileRebuildContext];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"appLanguageModelProfileRebuildContext"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"appLanguageModelProfileRebuildContext"];
    }
  }

  if (self->_eventMetadata)
  {
    v13 = [(SMTSchemaSMTClientEvent *)self eventMetadata];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"eventMetadata"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SMTSchemaSMTClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(SMTSchemaSMTAppLanguageModelAssetCopyContext *)self->_appLanguageModelAssetCopyContext hash]^ v3;
  v5 = [(SMTSchemaSMTAppLanguageModelBuildContext *)self->_appLanguageModelBuildContext hash];
  return v4 ^ v5 ^ [(SMTSchemaSMTAppLanguageModelProfileRebuildContext *)self->_appLanguageModelProfileRebuildContext hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [v4 whichEvent_Type])
  {
    goto LABEL_23;
  }

  v6 = [(SMTSchemaSMTClientEvent *)self eventMetadata];
  v7 = [v4 eventMetadata];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_22;
  }

  v8 = [(SMTSchemaSMTClientEvent *)self eventMetadata];
  if (v8)
  {
    v9 = v8;
    v10 = [(SMTSchemaSMTClientEvent *)self eventMetadata];
    v11 = [v4 eventMetadata];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  v6 = [(SMTSchemaSMTClientEvent *)self appLanguageModelAssetCopyContext];
  v7 = [v4 appLanguageModelAssetCopyContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_22;
  }

  v13 = [(SMTSchemaSMTClientEvent *)self appLanguageModelAssetCopyContext];
  if (v13)
  {
    v14 = v13;
    v15 = [(SMTSchemaSMTClientEvent *)self appLanguageModelAssetCopyContext];
    v16 = [v4 appLanguageModelAssetCopyContext];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  v6 = [(SMTSchemaSMTClientEvent *)self appLanguageModelBuildContext];
  v7 = [v4 appLanguageModelBuildContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_22;
  }

  v18 = [(SMTSchemaSMTClientEvent *)self appLanguageModelBuildContext];
  if (v18)
  {
    v19 = v18;
    v20 = [(SMTSchemaSMTClientEvent *)self appLanguageModelBuildContext];
    v21 = [v4 appLanguageModelBuildContext];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  v6 = [(SMTSchemaSMTClientEvent *)self appLanguageModelProfileRebuildContext];
  v7 = [v4 appLanguageModelProfileRebuildContext];
  if ((v6 != 0) != (v7 == 0))
  {
    v23 = [(SMTSchemaSMTClientEvent *)self appLanguageModelProfileRebuildContext];
    if (!v23)
    {

LABEL_26:
      v28 = 1;
      goto LABEL_24;
    }

    v24 = v23;
    v25 = [(SMTSchemaSMTClientEvent *)self appLanguageModelProfileRebuildContext];
    v26 = [v4 appLanguageModelProfileRebuildContext];
    v27 = [v25 isEqual:v26];

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

- (void)writeTo:(id)a3
{
  v13 = a3;
  v4 = [(SMTSchemaSMTClientEvent *)self eventMetadata];

  if (v4)
  {
    v5 = [(SMTSchemaSMTClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(SMTSchemaSMTClientEvent *)self appLanguageModelAssetCopyContext];

  if (v6)
  {
    v7 = [(SMTSchemaSMTClientEvent *)self appLanguageModelAssetCopyContext];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(SMTSchemaSMTClientEvent *)self appLanguageModelBuildContext];

  if (v8)
  {
    v9 = [(SMTSchemaSMTClientEvent *)self appLanguageModelBuildContext];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(SMTSchemaSMTClientEvent *)self appLanguageModelProfileRebuildContext];

  v11 = v13;
  if (v10)
  {
    v12 = [(SMTSchemaSMTClientEvent *)self appLanguageModelProfileRebuildContext];
    PBDataWriterWriteSubmessage();

    v11 = v13;
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

- (void)setAppLanguageModelProfileRebuildContext:(id)a3
{
  v4 = a3;
  appLanguageModelAssetCopyContext = self->_appLanguageModelAssetCopyContext;
  self->_appLanguageModelAssetCopyContext = 0;

  appLanguageModelBuildContext = self->_appLanguageModelBuildContext;
  self->_appLanguageModelBuildContext = 0;

  v7 = 103;
  if (!v4)
  {
    v7 = 0;
  }

  self->_whichEvent_Type = v7;
  appLanguageModelProfileRebuildContext = self->_appLanguageModelProfileRebuildContext;
  self->_appLanguageModelProfileRebuildContext = v4;
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

- (void)setAppLanguageModelBuildContext:(id)a3
{
  v4 = a3;
  appLanguageModelAssetCopyContext = self->_appLanguageModelAssetCopyContext;
  self->_appLanguageModelAssetCopyContext = 0;

  appLanguageModelProfileRebuildContext = self->_appLanguageModelProfileRebuildContext;
  self->_appLanguageModelProfileRebuildContext = 0;

  v7 = 102;
  if (!v4)
  {
    v7 = 0;
  }

  self->_whichEvent_Type = v7;
  appLanguageModelBuildContext = self->_appLanguageModelBuildContext;
  self->_appLanguageModelBuildContext = v4;
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

- (void)setAppLanguageModelAssetCopyContext:(id)a3
{
  v4 = a3;
  appLanguageModelBuildContext = self->_appLanguageModelBuildContext;
  self->_appLanguageModelBuildContext = 0;

  appLanguageModelProfileRebuildContext = self->_appLanguageModelProfileRebuildContext;
  self->_appLanguageModelProfileRebuildContext = 0;

  v7 = 101;
  if (!v4)
  {
    v7 = 0;
  }

  self->_whichEvent_Type = v7;
  appLanguageModelAssetCopyContext = self->_appLanguageModelAssetCopyContext;
  self->_appLanguageModelAssetCopyContext = v4;
}

- (id)qualifiedMessageName
{
  v2 = [(SMTSchemaSMTClientEvent *)self whichEvent_Type];
  if (v2 - 101 > 2)
  {
    return @"com.apple.aiml.siri.smt.SMTClientEvent";
  }

  else
  {
    return off_1E78E7550[v2 - 101];
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = SMTSchemaSMTClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:v4];
  v6 = [(SMTSchemaSMTClientEvent *)self eventMetadata];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(SMTSchemaSMTClientEvent *)self deleteEventMetadata];
  }

  v9 = [(SMTSchemaSMTClientEvent *)self appLanguageModelAssetCopyContext];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(SMTSchemaSMTClientEvent *)self deleteAppLanguageModelAssetCopyContext];
  }

  v12 = [(SMTSchemaSMTClientEvent *)self appLanguageModelBuildContext];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(SMTSchemaSMTClientEvent *)self deleteAppLanguageModelBuildContext];
  }

  v15 = [(SMTSchemaSMTClientEvent *)self appLanguageModelProfileRebuildContext];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
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
  v2 = [(SMTSchemaSMTClientEvent *)self eventMetadata];
  v3 = [v2 smtId];

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
  v3 = [(SMTSchemaSMTClientEvent *)self whichEvent_Type];
  if (v3 - 101 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78EB148[v3 - 101]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)a3
{
  if (a3 - 101 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E78EB160[a3 - 101];
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