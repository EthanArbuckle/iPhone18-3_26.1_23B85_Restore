@interface PFAPFAClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PFAIngestionExtensionStreamStatistics)ingestionExtensionStreamStatistics;
- (PFAPFAClientEvent)initWithDictionary:(id)dictionary;
- (PFAPFAClientEvent)initWithJSON:(id)n;
- (PFAPreprocessorExecutionContext)preprocessorExecutionContext;
- (PFAPreprocessorOrchestratorResultsStatsReported)orchestratorResultsStatsReported;
- (PFAPreprocessorSessionEndStatsReported)preprocessorSessionEndStatsReported;
- (PFAPreprocessorSessionStartStatsReported)preprocessorSessionStartStatsReported;
- (PFARepackagingExecution)repackagingExecution;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteIngestionExtensionStreamStatistics;
- (void)deleteOrchestratorResultsStatsReported;
- (void)deletePreprocessorExecutionContext;
- (void)deletePreprocessorSessionEndStatsReported;
- (void)deletePreprocessorSessionStartStatsReported;
- (void)deleteRepackagingExecution;
- (void)setIngestionExtensionStreamStatistics:(id)statistics;
- (void)setOrchestratorResultsStatsReported:(id)reported;
- (void)setPreprocessorExecutionContext:(id)context;
- (void)setPreprocessorSessionEndStatsReported:(id)reported;
- (void)setPreprocessorSessionStartStatsReported:(id)reported;
- (void)setRepackagingExecution:(id)execution;
- (void)writeTo:(id)to;
@end

@implementation PFAPFAClientEvent

- (PFAPFAClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v22.receiver = self;
  v22.super_class = PFAPFAClientEvent;
  v5 = [(PFAPFAClientEvent *)&v22 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[PFAPFAEventMetadata alloc] initWithDictionary:v6];
      [(PFAPFAClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"repackagingExecution"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[PFARepackagingExecution alloc] initWithDictionary:v8];
      [(PFAPFAClientEvent *)v5 setRepackagingExecution:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"preprocessorExecutionContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[PFAPreprocessorExecutionContext alloc] initWithDictionary:v10];
      [(PFAPFAClientEvent *)v5 setPreprocessorExecutionContext:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"preprocessorSessionStartStatsReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[PFAPreprocessorSessionStartStatsReported alloc] initWithDictionary:v12];
      [(PFAPFAClientEvent *)v5 setPreprocessorSessionStartStatsReported:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"preprocessorSessionEndStatsReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[PFAPreprocessorSessionEndStatsReported alloc] initWithDictionary:v14];
      [(PFAPFAClientEvent *)v5 setPreprocessorSessionEndStatsReported:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"orchestratorResultsStatsReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[PFAPreprocessorOrchestratorResultsStatsReported alloc] initWithDictionary:v16];
      [(PFAPFAClientEvent *)v5 setOrchestratorResultsStatsReported:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"ingestionExtensionStreamStatistics"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[PFAIngestionExtensionStreamStatistics alloc] initWithDictionary:v18];
      [(PFAPFAClientEvent *)v5 setIngestionExtensionStreamStatistics:v19];
    }

    v20 = v5;
  }

  return v5;
}

- (PFAPFAClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PFAPFAClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PFAPFAClientEvent *)self dictionaryRepresentation];
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
  if (self->_eventMetadata)
  {
    eventMetadata = [(PFAPFAClientEvent *)self eventMetadata];
    dictionaryRepresentation = [eventMetadata dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_ingestionExtensionStreamStatistics)
  {
    ingestionExtensionStreamStatistics = [(PFAPFAClientEvent *)self ingestionExtensionStreamStatistics];
    dictionaryRepresentation2 = [ingestionExtensionStreamStatistics dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"ingestionExtensionStreamStatistics"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"ingestionExtensionStreamStatistics"];
    }
  }

  if (self->_orchestratorResultsStatsReported)
  {
    orchestratorResultsStatsReported = [(PFAPFAClientEvent *)self orchestratorResultsStatsReported];
    dictionaryRepresentation3 = [orchestratorResultsStatsReported dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"orchestratorResultsStatsReported"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"orchestratorResultsStatsReported"];
    }
  }

  if (self->_preprocessorExecutionContext)
  {
    preprocessorExecutionContext = [(PFAPFAClientEvent *)self preprocessorExecutionContext];
    dictionaryRepresentation4 = [preprocessorExecutionContext dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"preprocessorExecutionContext"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"preprocessorExecutionContext"];
    }
  }

  if (self->_preprocessorSessionEndStatsReported)
  {
    preprocessorSessionEndStatsReported = [(PFAPFAClientEvent *)self preprocessorSessionEndStatsReported];
    dictionaryRepresentation5 = [preprocessorSessionEndStatsReported dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"preprocessorSessionEndStatsReported"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"preprocessorSessionEndStatsReported"];
    }
  }

  if (self->_preprocessorSessionStartStatsReported)
  {
    preprocessorSessionStartStatsReported = [(PFAPFAClientEvent *)self preprocessorSessionStartStatsReported];
    dictionaryRepresentation6 = [preprocessorSessionStartStatsReported dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"preprocessorSessionStartStatsReported"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"preprocessorSessionStartStatsReported"];
    }
  }

  if (self->_repackagingExecution)
  {
    repackagingExecution = [(PFAPFAClientEvent *)self repackagingExecution];
    dictionaryRepresentation7 = [repackagingExecution dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"repackagingExecution"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"repackagingExecution"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(PFAPFAEventMetadata *)self->_eventMetadata hash];
  v4 = [(PFARepackagingExecution *)self->_repackagingExecution hash]^ v3;
  v5 = [(PFAPreprocessorExecutionContext *)self->_preprocessorExecutionContext hash];
  v6 = v4 ^ v5 ^ [(PFAPreprocessorSessionStartStatsReported *)self->_preprocessorSessionStartStatsReported hash];
  v7 = [(PFAPreprocessorSessionEndStatsReported *)self->_preprocessorSessionEndStatsReported hash];
  v8 = v7 ^ [(PFAPreprocessorOrchestratorResultsStatsReported *)self->_orchestratorResultsStatsReported hash];
  return v6 ^ v8 ^ [(PFAIngestionExtensionStreamStatistics *)self->_ingestionExtensionStreamStatistics hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_38;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [equalCopy whichEvent_Type])
  {
    goto LABEL_38;
  }

  eventMetadata = [(PFAPFAClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_37;
  }

  eventMetadata3 = [(PFAPFAClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(PFAPFAClientEvent *)self eventMetadata];
    eventMetadata5 = [equalCopy eventMetadata];
    v12 = [eventMetadata4 isEqual:eventMetadata5];

    if (!v12)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  eventMetadata = [(PFAPFAClientEvent *)self repackagingExecution];
  eventMetadata2 = [equalCopy repackagingExecution];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_37;
  }

  repackagingExecution = [(PFAPFAClientEvent *)self repackagingExecution];
  if (repackagingExecution)
  {
    v14 = repackagingExecution;
    repackagingExecution2 = [(PFAPFAClientEvent *)self repackagingExecution];
    repackagingExecution3 = [equalCopy repackagingExecution];
    v17 = [repackagingExecution2 isEqual:repackagingExecution3];

    if (!v17)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  eventMetadata = [(PFAPFAClientEvent *)self preprocessorExecutionContext];
  eventMetadata2 = [equalCopy preprocessorExecutionContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_37;
  }

  preprocessorExecutionContext = [(PFAPFAClientEvent *)self preprocessorExecutionContext];
  if (preprocessorExecutionContext)
  {
    v19 = preprocessorExecutionContext;
    preprocessorExecutionContext2 = [(PFAPFAClientEvent *)self preprocessorExecutionContext];
    preprocessorExecutionContext3 = [equalCopy preprocessorExecutionContext];
    v22 = [preprocessorExecutionContext2 isEqual:preprocessorExecutionContext3];

    if (!v22)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  eventMetadata = [(PFAPFAClientEvent *)self preprocessorSessionStartStatsReported];
  eventMetadata2 = [equalCopy preprocessorSessionStartStatsReported];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_37;
  }

  preprocessorSessionStartStatsReported = [(PFAPFAClientEvent *)self preprocessorSessionStartStatsReported];
  if (preprocessorSessionStartStatsReported)
  {
    v24 = preprocessorSessionStartStatsReported;
    preprocessorSessionStartStatsReported2 = [(PFAPFAClientEvent *)self preprocessorSessionStartStatsReported];
    preprocessorSessionStartStatsReported3 = [equalCopy preprocessorSessionStartStatsReported];
    v27 = [preprocessorSessionStartStatsReported2 isEqual:preprocessorSessionStartStatsReported3];

    if (!v27)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  eventMetadata = [(PFAPFAClientEvent *)self preprocessorSessionEndStatsReported];
  eventMetadata2 = [equalCopy preprocessorSessionEndStatsReported];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_37;
  }

  preprocessorSessionEndStatsReported = [(PFAPFAClientEvent *)self preprocessorSessionEndStatsReported];
  if (preprocessorSessionEndStatsReported)
  {
    v29 = preprocessorSessionEndStatsReported;
    preprocessorSessionEndStatsReported2 = [(PFAPFAClientEvent *)self preprocessorSessionEndStatsReported];
    preprocessorSessionEndStatsReported3 = [equalCopy preprocessorSessionEndStatsReported];
    v32 = [preprocessorSessionEndStatsReported2 isEqual:preprocessorSessionEndStatsReported3];

    if (!v32)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  eventMetadata = [(PFAPFAClientEvent *)self orchestratorResultsStatsReported];
  eventMetadata2 = [equalCopy orchestratorResultsStatsReported];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_37;
  }

  orchestratorResultsStatsReported = [(PFAPFAClientEvent *)self orchestratorResultsStatsReported];
  if (orchestratorResultsStatsReported)
  {
    v34 = orchestratorResultsStatsReported;
    orchestratorResultsStatsReported2 = [(PFAPFAClientEvent *)self orchestratorResultsStatsReported];
    orchestratorResultsStatsReported3 = [equalCopy orchestratorResultsStatsReported];
    v37 = [orchestratorResultsStatsReported2 isEqual:orchestratorResultsStatsReported3];

    if (!v37)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  eventMetadata = [(PFAPFAClientEvent *)self ingestionExtensionStreamStatistics];
  eventMetadata2 = [equalCopy ingestionExtensionStreamStatistics];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    ingestionExtensionStreamStatistics = [(PFAPFAClientEvent *)self ingestionExtensionStreamStatistics];
    if (!ingestionExtensionStreamStatistics)
    {

LABEL_41:
      v43 = 1;
      goto LABEL_39;
    }

    v39 = ingestionExtensionStreamStatistics;
    ingestionExtensionStreamStatistics2 = [(PFAPFAClientEvent *)self ingestionExtensionStreamStatistics];
    ingestionExtensionStreamStatistics3 = [equalCopy ingestionExtensionStreamStatistics];
    v42 = [ingestionExtensionStreamStatistics2 isEqual:ingestionExtensionStreamStatistics3];

    if (v42)
    {
      goto LABEL_41;
    }
  }

  else
  {
LABEL_37:
  }

LABEL_38:
  v43 = 0;
LABEL_39:

  return v43;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  eventMetadata = [(PFAPFAClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(PFAPFAClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  repackagingExecution = [(PFAPFAClientEvent *)self repackagingExecution];

  if (repackagingExecution)
  {
    repackagingExecution2 = [(PFAPFAClientEvent *)self repackagingExecution];
    PBDataWriterWriteSubmessage();
  }

  preprocessorExecutionContext = [(PFAPFAClientEvent *)self preprocessorExecutionContext];

  if (preprocessorExecutionContext)
  {
    preprocessorExecutionContext2 = [(PFAPFAClientEvent *)self preprocessorExecutionContext];
    PBDataWriterWriteSubmessage();
  }

  preprocessorSessionStartStatsReported = [(PFAPFAClientEvent *)self preprocessorSessionStartStatsReported];

  if (preprocessorSessionStartStatsReported)
  {
    preprocessorSessionStartStatsReported2 = [(PFAPFAClientEvent *)self preprocessorSessionStartStatsReported];
    PBDataWriterWriteSubmessage();
  }

  preprocessorSessionEndStatsReported = [(PFAPFAClientEvent *)self preprocessorSessionEndStatsReported];

  if (preprocessorSessionEndStatsReported)
  {
    preprocessorSessionEndStatsReported2 = [(PFAPFAClientEvent *)self preprocessorSessionEndStatsReported];
    PBDataWriterWriteSubmessage();
  }

  orchestratorResultsStatsReported = [(PFAPFAClientEvent *)self orchestratorResultsStatsReported];

  if (orchestratorResultsStatsReported)
  {
    orchestratorResultsStatsReported2 = [(PFAPFAClientEvent *)self orchestratorResultsStatsReported];
    PBDataWriterWriteSubmessage();
  }

  ingestionExtensionStreamStatistics = [(PFAPFAClientEvent *)self ingestionExtensionStreamStatistics];

  v17 = toCopy;
  if (ingestionExtensionStreamStatistics)
  {
    ingestionExtensionStreamStatistics2 = [(PFAPFAClientEvent *)self ingestionExtensionStreamStatistics];
    PBDataWriterWriteSubmessage();

    v17 = toCopy;
  }
}

- (void)deleteIngestionExtensionStreamStatistics
{
  if (self->_whichEvent_Type == 106)
  {
    self->_whichEvent_Type = 0;
    self->_ingestionExtensionStreamStatistics = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PFAIngestionExtensionStreamStatistics)ingestionExtensionStreamStatistics
{
  if (self->_whichEvent_Type == 106)
  {
    v3 = self->_ingestionExtensionStreamStatistics;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setIngestionExtensionStreamStatistics:(id)statistics
{
  statisticsCopy = statistics;
  repackagingExecution = self->_repackagingExecution;
  self->_repackagingExecution = 0;

  preprocessorExecutionContext = self->_preprocessorExecutionContext;
  self->_preprocessorExecutionContext = 0;

  preprocessorSessionStartStatsReported = self->_preprocessorSessionStartStatsReported;
  self->_preprocessorSessionStartStatsReported = 0;

  preprocessorSessionEndStatsReported = self->_preprocessorSessionEndStatsReported;
  self->_preprocessorSessionEndStatsReported = 0;

  orchestratorResultsStatsReported = self->_orchestratorResultsStatsReported;
  self->_orchestratorResultsStatsReported = 0;

  v10 = 106;
  if (!statisticsCopy)
  {
    v10 = 0;
  }

  self->_whichEvent_Type = v10;
  ingestionExtensionStreamStatistics = self->_ingestionExtensionStreamStatistics;
  self->_ingestionExtensionStreamStatistics = statisticsCopy;
}

- (void)deleteOrchestratorResultsStatsReported
{
  if (self->_whichEvent_Type == 105)
  {
    self->_whichEvent_Type = 0;
    self->_orchestratorResultsStatsReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PFAPreprocessorOrchestratorResultsStatsReported)orchestratorResultsStatsReported
{
  if (self->_whichEvent_Type == 105)
  {
    v3 = self->_orchestratorResultsStatsReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setOrchestratorResultsStatsReported:(id)reported
{
  reportedCopy = reported;
  repackagingExecution = self->_repackagingExecution;
  self->_repackagingExecution = 0;

  preprocessorExecutionContext = self->_preprocessorExecutionContext;
  self->_preprocessorExecutionContext = 0;

  preprocessorSessionStartStatsReported = self->_preprocessorSessionStartStatsReported;
  self->_preprocessorSessionStartStatsReported = 0;

  preprocessorSessionEndStatsReported = self->_preprocessorSessionEndStatsReported;
  self->_preprocessorSessionEndStatsReported = 0;

  ingestionExtensionStreamStatistics = self->_ingestionExtensionStreamStatistics;
  self->_ingestionExtensionStreamStatistics = 0;

  v10 = 105;
  if (!reportedCopy)
  {
    v10 = 0;
  }

  self->_whichEvent_Type = v10;
  orchestratorResultsStatsReported = self->_orchestratorResultsStatsReported;
  self->_orchestratorResultsStatsReported = reportedCopy;
}

- (void)deletePreprocessorSessionEndStatsReported
{
  if (self->_whichEvent_Type == 104)
  {
    self->_whichEvent_Type = 0;
    self->_preprocessorSessionEndStatsReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PFAPreprocessorSessionEndStatsReported)preprocessorSessionEndStatsReported
{
  if (self->_whichEvent_Type == 104)
  {
    v3 = self->_preprocessorSessionEndStatsReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPreprocessorSessionEndStatsReported:(id)reported
{
  reportedCopy = reported;
  repackagingExecution = self->_repackagingExecution;
  self->_repackagingExecution = 0;

  preprocessorExecutionContext = self->_preprocessorExecutionContext;
  self->_preprocessorExecutionContext = 0;

  preprocessorSessionStartStatsReported = self->_preprocessorSessionStartStatsReported;
  self->_preprocessorSessionStartStatsReported = 0;

  orchestratorResultsStatsReported = self->_orchestratorResultsStatsReported;
  self->_orchestratorResultsStatsReported = 0;

  ingestionExtensionStreamStatistics = self->_ingestionExtensionStreamStatistics;
  self->_ingestionExtensionStreamStatistics = 0;

  v10 = 104;
  if (!reportedCopy)
  {
    v10 = 0;
  }

  self->_whichEvent_Type = v10;
  preprocessorSessionEndStatsReported = self->_preprocessorSessionEndStatsReported;
  self->_preprocessorSessionEndStatsReported = reportedCopy;
}

- (void)deletePreprocessorSessionStartStatsReported
{
  if (self->_whichEvent_Type == 103)
  {
    self->_whichEvent_Type = 0;
    self->_preprocessorSessionStartStatsReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PFAPreprocessorSessionStartStatsReported)preprocessorSessionStartStatsReported
{
  if (self->_whichEvent_Type == 103)
  {
    v3 = self->_preprocessorSessionStartStatsReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPreprocessorSessionStartStatsReported:(id)reported
{
  reportedCopy = reported;
  repackagingExecution = self->_repackagingExecution;
  self->_repackagingExecution = 0;

  preprocessorExecutionContext = self->_preprocessorExecutionContext;
  self->_preprocessorExecutionContext = 0;

  preprocessorSessionEndStatsReported = self->_preprocessorSessionEndStatsReported;
  self->_preprocessorSessionEndStatsReported = 0;

  orchestratorResultsStatsReported = self->_orchestratorResultsStatsReported;
  self->_orchestratorResultsStatsReported = 0;

  ingestionExtensionStreamStatistics = self->_ingestionExtensionStreamStatistics;
  self->_ingestionExtensionStreamStatistics = 0;

  v10 = 103;
  if (!reportedCopy)
  {
    v10 = 0;
  }

  self->_whichEvent_Type = v10;
  preprocessorSessionStartStatsReported = self->_preprocessorSessionStartStatsReported;
  self->_preprocessorSessionStartStatsReported = reportedCopy;
}

- (void)deletePreprocessorExecutionContext
{
  if (self->_whichEvent_Type == 102)
  {
    self->_whichEvent_Type = 0;
    self->_preprocessorExecutionContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PFAPreprocessorExecutionContext)preprocessorExecutionContext
{
  if (self->_whichEvent_Type == 102)
  {
    v3 = self->_preprocessorExecutionContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPreprocessorExecutionContext:(id)context
{
  contextCopy = context;
  repackagingExecution = self->_repackagingExecution;
  self->_repackagingExecution = 0;

  preprocessorSessionStartStatsReported = self->_preprocessorSessionStartStatsReported;
  self->_preprocessorSessionStartStatsReported = 0;

  preprocessorSessionEndStatsReported = self->_preprocessorSessionEndStatsReported;
  self->_preprocessorSessionEndStatsReported = 0;

  orchestratorResultsStatsReported = self->_orchestratorResultsStatsReported;
  self->_orchestratorResultsStatsReported = 0;

  ingestionExtensionStreamStatistics = self->_ingestionExtensionStreamStatistics;
  self->_ingestionExtensionStreamStatistics = 0;

  v10 = 102;
  if (!contextCopy)
  {
    v10 = 0;
  }

  self->_whichEvent_Type = v10;
  preprocessorExecutionContext = self->_preprocessorExecutionContext;
  self->_preprocessorExecutionContext = contextCopy;
}

- (void)deleteRepackagingExecution
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_repackagingExecution = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PFARepackagingExecution)repackagingExecution
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_repackagingExecution;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setRepackagingExecution:(id)execution
{
  executionCopy = execution;
  preprocessorExecutionContext = self->_preprocessorExecutionContext;
  self->_preprocessorExecutionContext = 0;

  preprocessorSessionStartStatsReported = self->_preprocessorSessionStartStatsReported;
  self->_preprocessorSessionStartStatsReported = 0;

  preprocessorSessionEndStatsReported = self->_preprocessorSessionEndStatsReported;
  self->_preprocessorSessionEndStatsReported = 0;

  orchestratorResultsStatsReported = self->_orchestratorResultsStatsReported;
  self->_orchestratorResultsStatsReported = 0;

  ingestionExtensionStreamStatistics = self->_ingestionExtensionStreamStatistics;
  self->_ingestionExtensionStreamStatistics = 0;

  v10 = 101;
  if (!executionCopy)
  {
    v10 = 0;
  }

  self->_whichEvent_Type = v10;
  repackagingExecution = self->_repackagingExecution;
  self->_repackagingExecution = executionCopy;
}

- (id)qualifiedMessageName
{
  whichEvent_Type = [(PFAPFAClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 5)
  {
    return @"com.apple.aiml.lighthouse.pfa.PFAClientEvent";
  }

  else
  {
    return off_1E78E0250[whichEvent_Type - 101];
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v28.receiver = self;
  v28.super_class = PFAPFAClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v28 applySensitiveConditionsPolicy:policyCopy];
  eventMetadata = [(PFAPFAClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PFAPFAClientEvent *)self deleteEventMetadata];
  }

  repackagingExecution = [(PFAPFAClientEvent *)self repackagingExecution];
  v10 = [repackagingExecution applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(PFAPFAClientEvent *)self deleteRepackagingExecution];
  }

  preprocessorExecutionContext = [(PFAPFAClientEvent *)self preprocessorExecutionContext];
  v13 = [preprocessorExecutionContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(PFAPFAClientEvent *)self deletePreprocessorExecutionContext];
  }

  preprocessorSessionStartStatsReported = [(PFAPFAClientEvent *)self preprocessorSessionStartStatsReported];
  v16 = [preprocessorSessionStartStatsReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(PFAPFAClientEvent *)self deletePreprocessorSessionStartStatsReported];
  }

  preprocessorSessionEndStatsReported = [(PFAPFAClientEvent *)self preprocessorSessionEndStatsReported];
  v19 = [preprocessorSessionEndStatsReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(PFAPFAClientEvent *)self deletePreprocessorSessionEndStatsReported];
  }

  orchestratorResultsStatsReported = [(PFAPFAClientEvent *)self orchestratorResultsStatsReported];
  v22 = [orchestratorResultsStatsReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(PFAPFAClientEvent *)self deleteOrchestratorResultsStatsReported];
  }

  ingestionExtensionStreamStatistics = [(PFAPFAClientEvent *)self ingestionExtensionStreamStatistics];
  v25 = [ingestionExtensionStreamStatistics applySensitiveConditionsPolicy:policyCopy];
  suppressMessage7 = [v25 suppressMessage];

  if (suppressMessage7)
  {
    [(PFAPFAClientEvent *)self deleteIngestionExtensionStreamStatistics];
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
  whichEvent_Type = [(PFAPFAClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78EA978[whichEvent_Type - 101]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)tag
{
  if (tag - 101 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E78EA9A8[tag - 101];
  }
}

@end