@interface CNVSchemaCNVFlowPluginInputContext
- (BOOL)isEqual:(id)equal;
- (CNVSchemaCNVFlowPluginInputContext)initWithDictionary:(id)dictionary;
- (CNVSchemaCNVFlowPluginInputContext)initWithJSON:(id)n;
- (CNVSchemaCNVFlowPluginInputEnded)ended;
- (CNVSchemaCNVFlowPluginInputStarted)startedOrChanged;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteEnded;
- (void)deleteStartedOrChanged;
- (void)setEnded:(id)ended;
- (void)setStartedOrChanged:(id)changed;
- (void)writeTo:(id)to;
@end

@implementation CNVSchemaCNVFlowPluginInputContext

- (CNVSchemaCNVFlowPluginInputStarted)startedOrChanged
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

- (CNVSchemaCNVFlowPluginInputEnded)ended
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

- (CNVSchemaCNVFlowPluginInputContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = CNVSchemaCNVFlowPluginInputContext;
  v5 = [(CNVSchemaCNVFlowPluginInputContext *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"contextId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(CNVSchemaCNVFlowPluginInputContext *)v5 setContextId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"startedOrChanged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[CNVSchemaCNVFlowPluginInputStarted alloc] initWithDictionary:v8];
      [(CNVSchemaCNVFlowPluginInputContext *)v5 setStartedOrChanged:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"ended"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[CNVSchemaCNVFlowPluginInputEnded alloc] initWithDictionary:v10];
      [(CNVSchemaCNVFlowPluginInputContext *)v5 setEnded:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"hypothesisId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[SISchemaUUID alloc] initWithDictionary:v12];
      [(CNVSchemaCNVFlowPluginInputContext *)v5 setHypothesisId:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (CNVSchemaCNVFlowPluginInputContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(CNVSchemaCNVFlowPluginInputContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(CNVSchemaCNVFlowPluginInputContext *)self dictionaryRepresentation];
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
  if (self->_contextId)
  {
    contextId = [(CNVSchemaCNVFlowPluginInputContext *)self contextId];
    dictionaryRepresentation = [contextId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"contextId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"contextId"];
    }
  }

  if (self->_ended)
  {
    ended = [(CNVSchemaCNVFlowPluginInputContext *)self ended];
    dictionaryRepresentation2 = [ended dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"ended"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"ended"];
    }
  }

  if (self->_hypothesisId)
  {
    hypothesisId = [(CNVSchemaCNVFlowPluginInputContext *)self hypothesisId];
    dictionaryRepresentation3 = [hypothesisId dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"hypothesisId"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"hypothesisId"];
    }
  }

  if (self->_startedOrChanged)
  {
    startedOrChanged = [(CNVSchemaCNVFlowPluginInputContext *)self startedOrChanged];
    dictionaryRepresentation4 = [startedOrChanged dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"startedOrChanged"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"startedOrChanged"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_contextId hash];
  v4 = [(CNVSchemaCNVFlowPluginInputStarted *)self->_startedOrChanged hash]^ v3;
  v5 = [(CNVSchemaCNVFlowPluginInputEnded *)self->_ended hash];
  return v4 ^ v5 ^ [(SISchemaUUID *)self->_hypothesisId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  whichContextevent = self->_whichContextevent;
  if (whichContextevent != [equalCopy whichContextevent])
  {
    goto LABEL_23;
  }

  contextId = [(CNVSchemaCNVFlowPluginInputContext *)self contextId];
  contextId2 = [equalCopy contextId];
  if ((contextId != 0) == (contextId2 == 0))
  {
    goto LABEL_22;
  }

  contextId3 = [(CNVSchemaCNVFlowPluginInputContext *)self contextId];
  if (contextId3)
  {
    v9 = contextId3;
    contextId4 = [(CNVSchemaCNVFlowPluginInputContext *)self contextId];
    contextId5 = [equalCopy contextId];
    v12 = [contextId4 isEqual:contextId5];

    if (!v12)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  contextId = [(CNVSchemaCNVFlowPluginInputContext *)self startedOrChanged];
  contextId2 = [equalCopy startedOrChanged];
  if ((contextId != 0) == (contextId2 == 0))
  {
    goto LABEL_22;
  }

  startedOrChanged = [(CNVSchemaCNVFlowPluginInputContext *)self startedOrChanged];
  if (startedOrChanged)
  {
    v14 = startedOrChanged;
    startedOrChanged2 = [(CNVSchemaCNVFlowPluginInputContext *)self startedOrChanged];
    startedOrChanged3 = [equalCopy startedOrChanged];
    v17 = [startedOrChanged2 isEqual:startedOrChanged3];

    if (!v17)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  contextId = [(CNVSchemaCNVFlowPluginInputContext *)self ended];
  contextId2 = [equalCopy ended];
  if ((contextId != 0) == (contextId2 == 0))
  {
    goto LABEL_22;
  }

  ended = [(CNVSchemaCNVFlowPluginInputContext *)self ended];
  if (ended)
  {
    v19 = ended;
    ended2 = [(CNVSchemaCNVFlowPluginInputContext *)self ended];
    ended3 = [equalCopy ended];
    v22 = [ended2 isEqual:ended3];

    if (!v22)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  contextId = [(CNVSchemaCNVFlowPluginInputContext *)self hypothesisId];
  contextId2 = [equalCopy hypothesisId];
  if ((contextId != 0) != (contextId2 == 0))
  {
    hypothesisId = [(CNVSchemaCNVFlowPluginInputContext *)self hypothesisId];
    if (!hypothesisId)
    {

LABEL_26:
      v28 = 1;
      goto LABEL_24;
    }

    v24 = hypothesisId;
    hypothesisId2 = [(CNVSchemaCNVFlowPluginInputContext *)self hypothesisId];
    hypothesisId3 = [equalCopy hypothesisId];
    v27 = [hypothesisId2 isEqual:hypothesisId3];

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
  contextId = [(CNVSchemaCNVFlowPluginInputContext *)self contextId];

  if (contextId)
  {
    contextId2 = [(CNVSchemaCNVFlowPluginInputContext *)self contextId];
    PBDataWriterWriteSubmessage();
  }

  startedOrChanged = [(CNVSchemaCNVFlowPluginInputContext *)self startedOrChanged];

  if (startedOrChanged)
  {
    startedOrChanged2 = [(CNVSchemaCNVFlowPluginInputContext *)self startedOrChanged];
    PBDataWriterWriteSubmessage();
  }

  ended = [(CNVSchemaCNVFlowPluginInputContext *)self ended];

  if (ended)
  {
    ended2 = [(CNVSchemaCNVFlowPluginInputContext *)self ended];
    PBDataWriterWriteSubmessage();
  }

  hypothesisId = [(CNVSchemaCNVFlowPluginInputContext *)self hypothesisId];

  v11 = toCopy;
  if (hypothesisId)
  {
    hypothesisId2 = [(CNVSchemaCNVFlowPluginInputContext *)self hypothesisId];
    PBDataWriterWriteSubmessage();

    v11 = toCopy;
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

- (void)setEnded:(id)ended
{
  endedCopy = ended;
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = 0;

  v6 = 3;
  if (!endedCopy)
  {
    v6 = 0;
  }

  self->_whichContextevent = v6;
  ended = self->_ended;
  self->_ended = endedCopy;
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

- (void)setStartedOrChanged:(id)changed
{
  changedCopy = changed;
  ended = self->_ended;
  self->_ended = 0;

  self->_whichContextevent = 2 * (changedCopy != 0);
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = changedCopy;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v19.receiver = self;
  v19.super_class = CNVSchemaCNVFlowPluginInputContext;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:policyCopy];
  contextId = [(CNVSchemaCNVFlowPluginInputContext *)self contextId];
  v7 = [contextId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(CNVSchemaCNVFlowPluginInputContext *)self deleteContextId];
  }

  startedOrChanged = [(CNVSchemaCNVFlowPluginInputContext *)self startedOrChanged];
  v10 = [startedOrChanged applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(CNVSchemaCNVFlowPluginInputContext *)self deleteStartedOrChanged];
  }

  ended = [(CNVSchemaCNVFlowPluginInputContext *)self ended];
  v13 = [ended applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(CNVSchemaCNVFlowPluginInputContext *)self deleteEnded];
  }

  hypothesisId = [(CNVSchemaCNVFlowPluginInputContext *)self hypothesisId];
  v16 = [hypothesisId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(CNVSchemaCNVFlowPluginInputContext *)self deleteHypothesisId];
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