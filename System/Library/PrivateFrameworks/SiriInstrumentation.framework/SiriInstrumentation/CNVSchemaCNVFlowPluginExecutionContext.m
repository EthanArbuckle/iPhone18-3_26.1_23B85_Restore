@interface CNVSchemaCNVFlowPluginExecutionContext
- (BOOL)isEqual:(id)a3;
- (CNVSchemaCNVFlowPluginExecutionContext)initWithDictionary:(id)a3;
- (CNVSchemaCNVFlowPluginExecutionContext)initWithJSON:(id)a3;
- (CNVSchemaCNVFlowPluginExecutionEnded)ended;
- (CNVSchemaCNVFlowPluginExecutionStarted)startedOrChanged;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteEnded;
- (void)deleteStartedOrChanged;
- (void)setEnded:(id)a3;
- (void)setStartedOrChanged:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CNVSchemaCNVFlowPluginExecutionContext

- (CNVSchemaCNVFlowPluginExecutionContext)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CNVSchemaCNVFlowPluginExecutionContext;
  v5 = [(CNVSchemaCNVFlowPluginExecutionContext *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"contextId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(CNVSchemaCNVFlowPluginExecutionContext *)v5 setContextId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"startedOrChanged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[CNVSchemaCNVFlowPluginExecutionStarted alloc] initWithDictionary:v8];
      [(CNVSchemaCNVFlowPluginExecutionContext *)v5 setStartedOrChanged:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"ended"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[CNVSchemaCNVFlowPluginExecutionEnded alloc] initWithDictionary:v10];
      [(CNVSchemaCNVFlowPluginExecutionContext *)v5 setEnded:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (CNVSchemaCNVFlowPluginExecutionContext)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(CNVSchemaCNVFlowPluginExecutionContext *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(CNVSchemaCNVFlowPluginExecutionContext *)self dictionaryRepresentation];
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
  if (self->_contextId)
  {
    v4 = [(CNVSchemaCNVFlowPluginExecutionContext *)self contextId];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"contextId"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"contextId"];
    }
  }

  if (self->_ended)
  {
    v7 = [(CNVSchemaCNVFlowPluginExecutionContext *)self ended];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"ended"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"ended"];
    }
  }

  if (self->_startedOrChanged)
  {
    v10 = [(CNVSchemaCNVFlowPluginExecutionContext *)self startedOrChanged];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"startedOrChanged"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"startedOrChanged"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_contextId hash];
  v4 = [(CNVSchemaCNVFlowPluginExecutionStarted *)self->_startedOrChanged hash]^ v3;
  return v4 ^ [(CNVSchemaCNVFlowPluginExecutionEnded *)self->_ended hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  whichContextevent = self->_whichContextevent;
  if (whichContextevent != [v4 whichContextevent])
  {
    goto LABEL_18;
  }

  v6 = [(CNVSchemaCNVFlowPluginExecutionContext *)self contextId];
  v7 = [v4 contextId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_17;
  }

  v8 = [(CNVSchemaCNVFlowPluginExecutionContext *)self contextId];
  if (v8)
  {
    v9 = v8;
    v10 = [(CNVSchemaCNVFlowPluginExecutionContext *)self contextId];
    v11 = [v4 contextId];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v6 = [(CNVSchemaCNVFlowPluginExecutionContext *)self startedOrChanged];
  v7 = [v4 startedOrChanged];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_17;
  }

  v13 = [(CNVSchemaCNVFlowPluginExecutionContext *)self startedOrChanged];
  if (v13)
  {
    v14 = v13;
    v15 = [(CNVSchemaCNVFlowPluginExecutionContext *)self startedOrChanged];
    v16 = [v4 startedOrChanged];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v6 = [(CNVSchemaCNVFlowPluginExecutionContext *)self ended];
  v7 = [v4 ended];
  if ((v6 != 0) != (v7 == 0))
  {
    v18 = [(CNVSchemaCNVFlowPluginExecutionContext *)self ended];
    if (!v18)
    {

LABEL_21:
      v23 = 1;
      goto LABEL_19;
    }

    v19 = v18;
    v20 = [(CNVSchemaCNVFlowPluginExecutionContext *)self ended];
    v21 = [v4 ended];
    v22 = [v20 isEqual:v21];

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

- (void)writeTo:(id)a3
{
  v11 = a3;
  v4 = [(CNVSchemaCNVFlowPluginExecutionContext *)self contextId];

  if (v4)
  {
    v5 = [(CNVSchemaCNVFlowPluginExecutionContext *)self contextId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(CNVSchemaCNVFlowPluginExecutionContext *)self startedOrChanged];

  if (v6)
  {
    v7 = [(CNVSchemaCNVFlowPluginExecutionContext *)self startedOrChanged];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(CNVSchemaCNVFlowPluginExecutionContext *)self ended];

  v9 = v11;
  if (v8)
  {
    v10 = [(CNVSchemaCNVFlowPluginExecutionContext *)self ended];
    PBDataWriterWriteSubmessage();

    v9 = v11;
  }
}

- (void)deleteEnded
{
  if (self->_whichContextevent == 3)
  {
    self->_whichContextevent = 0;
    self->_ended = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (CNVSchemaCNVFlowPluginExecutionEnded)ended
{
  if (self->_whichContextevent == 3)
  {
    v3 = self->_ended;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setEnded:(id)a3
{
  v4 = a3;
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = 0;

  v6 = 3;
  if (!v4)
  {
    v6 = 0;
  }

  self->_whichContextevent = v6;
  ended = self->_ended;
  self->_ended = v4;
}

- (void)deleteStartedOrChanged
{
  if (self->_whichContextevent == 2)
  {
    self->_whichContextevent = 0;
    self->_startedOrChanged = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (CNVSchemaCNVFlowPluginExecutionStarted)startedOrChanged
{
  if (self->_whichContextevent == 2)
  {
    v3 = self->_startedOrChanged;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setStartedOrChanged:(id)a3
{
  v4 = a3;
  ended = self->_ended;
  self->_ended = 0;

  self->_whichContextevent = 2 * (v4 != 0);
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = v4;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = CNVSchemaCNVFlowPluginExecutionContext;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:v4];
  v6 = [(CNVSchemaCNVFlowPluginExecutionContext *)self contextId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(CNVSchemaCNVFlowPluginExecutionContext *)self deleteContextId];
  }

  v9 = [(CNVSchemaCNVFlowPluginExecutionContext *)self startedOrChanged];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(CNVSchemaCNVFlowPluginExecutionContext *)self deleteStartedOrChanged];
  }

  v12 = [(CNVSchemaCNVFlowPluginExecutionContext *)self ended];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(CNVSchemaCNVFlowPluginExecutionContext *)self deleteEnded];
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