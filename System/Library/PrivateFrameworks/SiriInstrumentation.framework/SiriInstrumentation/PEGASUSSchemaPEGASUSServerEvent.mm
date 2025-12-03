@interface PEGASUSSchemaPEGASUSServerEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSAMPPersonalizationLoggingInfo)pegasusAmpPersonalizationLoggingInfo;
- (PEGASUSSchemaPEGASUSAMPSafetyLoggingInfo)pegasusAmpSafetyLoggingInfo;
- (PEGASUSSchemaPEGASUSAsrCorrectionInfo)pegasusAsrCorrectionInfo;
- (PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported)pegasusInfoDomainMultistepAndMultiturnExecutionReported;
- (PEGASUSSchemaPEGASUSRequestContext)pegasusRequestContext;
- (PEGASUSSchemaPEGASUSRequestEndedTier1)pegasusRequestEndedTier1;
- (PEGASUSSchemaPEGASUSRewrittenUtterancesReported)pegasusRewrittenUtterancesReported;
- (PEGASUSSchemaPEGASUSRewrittenUtterancesReportedTier1)pegasusRewrittenUtterancesReportedTier1;
- (PEGASUSSchemaPEGASUSServerEvent)initWithDictionary:(id)dictionary;
- (PEGASUSSchemaPEGASUSServerEvent)initWithJSON:(id)n;
- (PEGASUSSchemaPEGASUSUtteranceUnderstandingReported)pegasusUtteranceUnderstandingReported;
- (PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1)pegasusUtteranceUnderstandingReportedTier1;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (unint64_t)hash;
- (void)deletePegasusAmpPersonalizationLoggingInfo;
- (void)deletePegasusAmpSafetyLoggingInfo;
- (void)deletePegasusAsrCorrectionInfo;
- (void)deletePegasusInfoDomainMultistepAndMultiturnExecutionReported;
- (void)deletePegasusRequestContext;
- (void)deletePegasusRequestEndedTier1;
- (void)deletePegasusRewrittenUtterancesReported;
- (void)deletePegasusRewrittenUtterancesReportedTier1;
- (void)deletePegasusUtteranceUnderstandingReported;
- (void)deletePegasusUtteranceUnderstandingReportedTier1;
- (void)setPegasusAmpPersonalizationLoggingInfo:(id)info;
- (void)setPegasusAmpSafetyLoggingInfo:(id)info;
- (void)setPegasusAsrCorrectionInfo:(id)info;
- (void)setPegasusInfoDomainMultistepAndMultiturnExecutionReported:(id)reported;
- (void)setPegasusRequestContext:(id)context;
- (void)setPegasusRequestEndedTier1:(id)tier1;
- (void)setPegasusRewrittenUtterancesReported:(id)reported;
- (void)setPegasusRewrittenUtterancesReportedTier1:(id)tier1;
- (void)setPegasusUtteranceUnderstandingReported:(id)reported;
- (void)setPegasusUtteranceUnderstandingReportedTier1:(id)tier1;
- (void)writeTo:(id)to;
@end

@implementation PEGASUSSchemaPEGASUSServerEvent

- (PEGASUSSchemaPEGASUSServerEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v35.receiver = self;
  v35.super_class = PEGASUSSchemaPEGASUSServerEvent;
  v5 = [(PEGASUSSchemaPEGASUSServerEvent *)&v35 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[PEGASUSSchemaPEGASUSServerEventMetadata alloc] initWithDictionary:v6];
      [(PEGASUSSchemaPEGASUSServerEvent *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"pegasusRequestContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[PEGASUSSchemaPEGASUSRequestContext alloc] initWithDictionary:v8];
      [(PEGASUSSchemaPEGASUSServerEvent *)v5 setPegasusRequestContext:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"pegasusRewrittenUtterancesReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[PEGASUSSchemaPEGASUSRewrittenUtterancesReported alloc] initWithDictionary:v10];
      [(PEGASUSSchemaPEGASUSServerEvent *)v5 setPegasusRewrittenUtterancesReported:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"pegasusRewrittenUtterancesReportedTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[PEGASUSSchemaPEGASUSRewrittenUtterancesReportedTier1 alloc] initWithDictionary:v12];
      [(PEGASUSSchemaPEGASUSServerEvent *)v5 setPegasusRewrittenUtterancesReportedTier1:v13];
    }

    v32 = v12;
    v14 = [dictionaryCopy objectForKeyedSubscript:@"pegasusUtteranceUnderstandingReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[PEGASUSSchemaPEGASUSUtteranceUnderstandingReported alloc] initWithDictionary:v14];
      [(PEGASUSSchemaPEGASUSServerEvent *)v5 setPegasusUtteranceUnderstandingReported:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:{@"pegasusUtteranceUnderstandingReportedTier1", v14}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1 alloc] initWithDictionary:v16];
      [(PEGASUSSchemaPEGASUSServerEvent *)v5 setPegasusUtteranceUnderstandingReportedTier1:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"pegasusRequestEndedTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[PEGASUSSchemaPEGASUSRequestEndedTier1 alloc] initWithDictionary:v18];
      [(PEGASUSSchemaPEGASUSServerEvent *)v5 setPegasusRequestEndedTier1:v19];
    }

    v33 = v10;
    v34 = v6;
    v20 = [dictionaryCopy objectForKeyedSubscript:@"pegasusInfoDomainMultistepAndMultiturnExecutionReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported alloc] initWithDictionary:v20];
      [(PEGASUSSchemaPEGASUSServerEvent *)v5 setPegasusInfoDomainMultistepAndMultiturnExecutionReported:v21];
    }

    v22 = v8;
    v23 = [dictionaryCopy objectForKeyedSubscript:@"pegasusAmpSafetyLoggingInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [[PEGASUSSchemaPEGASUSAMPSafetyLoggingInfo alloc] initWithDictionary:v23];
      [(PEGASUSSchemaPEGASUSServerEvent *)v5 setPegasusAmpSafetyLoggingInfo:v24];
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"pegasusAsrCorrectionInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = [[PEGASUSSchemaPEGASUSAsrCorrectionInfo alloc] initWithDictionary:v25];
      [(PEGASUSSchemaPEGASUSServerEvent *)v5 setPegasusAsrCorrectionInfo:v26];
    }

    v27 = [dictionaryCopy objectForKeyedSubscript:@"pegasusAmpPersonalizationLoggingInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = [[PEGASUSSchemaPEGASUSAMPPersonalizationLoggingInfo alloc] initWithDictionary:v27];
      [(PEGASUSSchemaPEGASUSServerEvent *)v5 setPegasusAmpPersonalizationLoggingInfo:v28];
    }

    v29 = v5;
  }

  return v5;
}

- (PEGASUSSchemaPEGASUSServerEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSServerEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PEGASUSSchemaPEGASUSServerEvent *)self dictionaryRepresentation];
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
    eventMetadata = [(PEGASUSSchemaPEGASUSServerEvent *)self eventMetadata];
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

  if (self->_pegasusAmpPersonalizationLoggingInfo)
  {
    pegasusAmpPersonalizationLoggingInfo = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusAmpPersonalizationLoggingInfo];
    dictionaryRepresentation2 = [pegasusAmpPersonalizationLoggingInfo dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"pegasusAmpPersonalizationLoggingInfo"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"pegasusAmpPersonalizationLoggingInfo"];
    }
  }

  if (self->_pegasusAmpSafetyLoggingInfo)
  {
    pegasusAmpSafetyLoggingInfo = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusAmpSafetyLoggingInfo];
    dictionaryRepresentation3 = [pegasusAmpSafetyLoggingInfo dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"pegasusAmpSafetyLoggingInfo"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"pegasusAmpSafetyLoggingInfo"];
    }
  }

  if (self->_pegasusAsrCorrectionInfo)
  {
    pegasusAsrCorrectionInfo = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusAsrCorrectionInfo];
    dictionaryRepresentation4 = [pegasusAsrCorrectionInfo dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"pegasusAsrCorrectionInfo"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"pegasusAsrCorrectionInfo"];
    }
  }

  if (self->_pegasusInfoDomainMultistepAndMultiturnExecutionReported)
  {
    pegasusInfoDomainMultistepAndMultiturnExecutionReported = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusInfoDomainMultistepAndMultiturnExecutionReported];
    dictionaryRepresentation5 = [pegasusInfoDomainMultistepAndMultiturnExecutionReported dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"pegasusInfoDomainMultistepAndMultiturnExecutionReported"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"pegasusInfoDomainMultistepAndMultiturnExecutionReported"];
    }
  }

  if (self->_pegasusRequestContext)
  {
    pegasusRequestContext = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusRequestContext];
    dictionaryRepresentation6 = [pegasusRequestContext dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"pegasusRequestContext"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"pegasusRequestContext"];
    }
  }

  if (self->_pegasusRequestEndedTier1)
  {
    pegasusRequestEndedTier1 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusRequestEndedTier1];
    dictionaryRepresentation7 = [pegasusRequestEndedTier1 dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"pegasusRequestEndedTier1"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"pegasusRequestEndedTier1"];
    }
  }

  if (self->_pegasusRewrittenUtterancesReported)
  {
    pegasusRewrittenUtterancesReported = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusRewrittenUtterancesReported];
    dictionaryRepresentation8 = [pegasusRewrittenUtterancesReported dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"pegasusRewrittenUtterancesReported"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"pegasusRewrittenUtterancesReported"];
    }
  }

  if (self->_pegasusRewrittenUtterancesReportedTier1)
  {
    pegasusRewrittenUtterancesReportedTier1 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusRewrittenUtterancesReportedTier1];
    dictionaryRepresentation9 = [pegasusRewrittenUtterancesReportedTier1 dictionaryRepresentation];
    if (dictionaryRepresentation9)
    {
      [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"pegasusRewrittenUtterancesReportedTier1"];
    }

    else
    {
      null9 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null9 forKeyedSubscript:@"pegasusRewrittenUtterancesReportedTier1"];
    }
  }

  if (self->_pegasusUtteranceUnderstandingReported)
  {
    pegasusUtteranceUnderstandingReported = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusUtteranceUnderstandingReported];
    dictionaryRepresentation10 = [pegasusUtteranceUnderstandingReported dictionaryRepresentation];
    if (dictionaryRepresentation10)
    {
      [dictionary setObject:dictionaryRepresentation10 forKeyedSubscript:@"pegasusUtteranceUnderstandingReported"];
    }

    else
    {
      null10 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null10 forKeyedSubscript:@"pegasusUtteranceUnderstandingReported"];
    }
  }

  if (self->_pegasusUtteranceUnderstandingReportedTier1)
  {
    pegasusUtteranceUnderstandingReportedTier1 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusUtteranceUnderstandingReportedTier1];
    dictionaryRepresentation11 = [pegasusUtteranceUnderstandingReportedTier1 dictionaryRepresentation];
    if (dictionaryRepresentation11)
    {
      [dictionary setObject:dictionaryRepresentation11 forKeyedSubscript:@"pegasusUtteranceUnderstandingReportedTier1"];
    }

    else
    {
      null11 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null11 forKeyedSubscript:@"pegasusUtteranceUnderstandingReportedTier1"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(PEGASUSSchemaPEGASUSServerEventMetadata *)self->_eventMetadata hash];
  v4 = [(PEGASUSSchemaPEGASUSRequestContext *)self->_pegasusRequestContext hash]^ v3;
  v5 = [(PEGASUSSchemaPEGASUSRewrittenUtterancesReported *)self->_pegasusRewrittenUtterancesReported hash];
  v6 = v4 ^ v5 ^ [(PEGASUSSchemaPEGASUSRewrittenUtterancesReportedTier1 *)self->_pegasusRewrittenUtterancesReportedTier1 hash];
  v7 = [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReported *)self->_pegasusUtteranceUnderstandingReported hash];
  v8 = v7 ^ [(PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1 *)self->_pegasusUtteranceUnderstandingReportedTier1 hash];
  v9 = v6 ^ v8 ^ [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self->_pegasusRequestEndedTier1 hash];
  v10 = [(PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported *)self->_pegasusInfoDomainMultistepAndMultiturnExecutionReported hash];
  v11 = v10 ^ [(PEGASUSSchemaPEGASUSAMPSafetyLoggingInfo *)self->_pegasusAmpSafetyLoggingInfo hash];
  v12 = v11 ^ [(PEGASUSSchemaPEGASUSAsrCorrectionInfo *)self->_pegasusAsrCorrectionInfo hash];
  return v9 ^ v12 ^ [(PEGASUSSchemaPEGASUSAMPPersonalizationLoggingInfo *)self->_pegasusAmpPersonalizationLoggingInfo hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_58;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [equalCopy whichEvent_Type])
  {
    goto LABEL_58;
  }

  eventMetadata = [(PEGASUSSchemaPEGASUSServerEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_57;
  }

  eventMetadata3 = [(PEGASUSSchemaPEGASUSServerEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(PEGASUSSchemaPEGASUSServerEvent *)self eventMetadata];
    eventMetadata5 = [equalCopy eventMetadata];
    v12 = [eventMetadata4 isEqual:eventMetadata5];

    if (!v12)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  eventMetadata = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusRequestContext];
  eventMetadata2 = [equalCopy pegasusRequestContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_57;
  }

  pegasusRequestContext = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusRequestContext];
  if (pegasusRequestContext)
  {
    v14 = pegasusRequestContext;
    pegasusRequestContext2 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusRequestContext];
    pegasusRequestContext3 = [equalCopy pegasusRequestContext];
    v17 = [pegasusRequestContext2 isEqual:pegasusRequestContext3];

    if (!v17)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  eventMetadata = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusRewrittenUtterancesReported];
  eventMetadata2 = [equalCopy pegasusRewrittenUtterancesReported];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_57;
  }

  pegasusRewrittenUtterancesReported = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusRewrittenUtterancesReported];
  if (pegasusRewrittenUtterancesReported)
  {
    v19 = pegasusRewrittenUtterancesReported;
    pegasusRewrittenUtterancesReported2 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusRewrittenUtterancesReported];
    pegasusRewrittenUtterancesReported3 = [equalCopy pegasusRewrittenUtterancesReported];
    v22 = [pegasusRewrittenUtterancesReported2 isEqual:pegasusRewrittenUtterancesReported3];

    if (!v22)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  eventMetadata = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusRewrittenUtterancesReportedTier1];
  eventMetadata2 = [equalCopy pegasusRewrittenUtterancesReportedTier1];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_57;
  }

  pegasusRewrittenUtterancesReportedTier1 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusRewrittenUtterancesReportedTier1];
  if (pegasusRewrittenUtterancesReportedTier1)
  {
    v24 = pegasusRewrittenUtterancesReportedTier1;
    pegasusRewrittenUtterancesReportedTier12 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusRewrittenUtterancesReportedTier1];
    pegasusRewrittenUtterancesReportedTier13 = [equalCopy pegasusRewrittenUtterancesReportedTier1];
    v27 = [pegasusRewrittenUtterancesReportedTier12 isEqual:pegasusRewrittenUtterancesReportedTier13];

    if (!v27)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  eventMetadata = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusUtteranceUnderstandingReported];
  eventMetadata2 = [equalCopy pegasusUtteranceUnderstandingReported];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_57;
  }

  pegasusUtteranceUnderstandingReported = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusUtteranceUnderstandingReported];
  if (pegasusUtteranceUnderstandingReported)
  {
    v29 = pegasusUtteranceUnderstandingReported;
    pegasusUtteranceUnderstandingReported2 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusUtteranceUnderstandingReported];
    pegasusUtteranceUnderstandingReported3 = [equalCopy pegasusUtteranceUnderstandingReported];
    v32 = [pegasusUtteranceUnderstandingReported2 isEqual:pegasusUtteranceUnderstandingReported3];

    if (!v32)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  eventMetadata = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusUtteranceUnderstandingReportedTier1];
  eventMetadata2 = [equalCopy pegasusUtteranceUnderstandingReportedTier1];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_57;
  }

  pegasusUtteranceUnderstandingReportedTier1 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusUtteranceUnderstandingReportedTier1];
  if (pegasusUtteranceUnderstandingReportedTier1)
  {
    v34 = pegasusUtteranceUnderstandingReportedTier1;
    pegasusUtteranceUnderstandingReportedTier12 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusUtteranceUnderstandingReportedTier1];
    pegasusUtteranceUnderstandingReportedTier13 = [equalCopy pegasusUtteranceUnderstandingReportedTier1];
    v37 = [pegasusUtteranceUnderstandingReportedTier12 isEqual:pegasusUtteranceUnderstandingReportedTier13];

    if (!v37)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  eventMetadata = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusRequestEndedTier1];
  eventMetadata2 = [equalCopy pegasusRequestEndedTier1];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_57;
  }

  pegasusRequestEndedTier1 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusRequestEndedTier1];
  if (pegasusRequestEndedTier1)
  {
    v39 = pegasusRequestEndedTier1;
    pegasusRequestEndedTier12 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusRequestEndedTier1];
    pegasusRequestEndedTier13 = [equalCopy pegasusRequestEndedTier1];
    v42 = [pegasusRequestEndedTier12 isEqual:pegasusRequestEndedTier13];

    if (!v42)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  eventMetadata = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusInfoDomainMultistepAndMultiturnExecutionReported];
  eventMetadata2 = [equalCopy pegasusInfoDomainMultistepAndMultiturnExecutionReported];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_57;
  }

  pegasusInfoDomainMultistepAndMultiturnExecutionReported = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusInfoDomainMultistepAndMultiturnExecutionReported];
  if (pegasusInfoDomainMultistepAndMultiturnExecutionReported)
  {
    v44 = pegasusInfoDomainMultistepAndMultiturnExecutionReported;
    pegasusInfoDomainMultistepAndMultiturnExecutionReported2 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusInfoDomainMultistepAndMultiturnExecutionReported];
    pegasusInfoDomainMultistepAndMultiturnExecutionReported3 = [equalCopy pegasusInfoDomainMultistepAndMultiturnExecutionReported];
    v47 = [pegasusInfoDomainMultistepAndMultiturnExecutionReported2 isEqual:pegasusInfoDomainMultistepAndMultiturnExecutionReported3];

    if (!v47)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  eventMetadata = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusAmpSafetyLoggingInfo];
  eventMetadata2 = [equalCopy pegasusAmpSafetyLoggingInfo];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_57;
  }

  pegasusAmpSafetyLoggingInfo = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusAmpSafetyLoggingInfo];
  if (pegasusAmpSafetyLoggingInfo)
  {
    v49 = pegasusAmpSafetyLoggingInfo;
    pegasusAmpSafetyLoggingInfo2 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusAmpSafetyLoggingInfo];
    pegasusAmpSafetyLoggingInfo3 = [equalCopy pegasusAmpSafetyLoggingInfo];
    v52 = [pegasusAmpSafetyLoggingInfo2 isEqual:pegasusAmpSafetyLoggingInfo3];

    if (!v52)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  eventMetadata = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusAsrCorrectionInfo];
  eventMetadata2 = [equalCopy pegasusAsrCorrectionInfo];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_57;
  }

  pegasusAsrCorrectionInfo = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusAsrCorrectionInfo];
  if (pegasusAsrCorrectionInfo)
  {
    v54 = pegasusAsrCorrectionInfo;
    pegasusAsrCorrectionInfo2 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusAsrCorrectionInfo];
    pegasusAsrCorrectionInfo3 = [equalCopy pegasusAsrCorrectionInfo];
    v57 = [pegasusAsrCorrectionInfo2 isEqual:pegasusAsrCorrectionInfo3];

    if (!v57)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  eventMetadata = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusAmpPersonalizationLoggingInfo];
  eventMetadata2 = [equalCopy pegasusAmpPersonalizationLoggingInfo];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    pegasusAmpPersonalizationLoggingInfo = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusAmpPersonalizationLoggingInfo];
    if (!pegasusAmpPersonalizationLoggingInfo)
    {

LABEL_61:
      v63 = 1;
      goto LABEL_59;
    }

    v59 = pegasusAmpPersonalizationLoggingInfo;
    pegasusAmpPersonalizationLoggingInfo2 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusAmpPersonalizationLoggingInfo];
    pegasusAmpPersonalizationLoggingInfo3 = [equalCopy pegasusAmpPersonalizationLoggingInfo];
    v62 = [pegasusAmpPersonalizationLoggingInfo2 isEqual:pegasusAmpPersonalizationLoggingInfo3];

    if (v62)
    {
      goto LABEL_61;
    }
  }

  else
  {
LABEL_57:
  }

LABEL_58:
  v63 = 0;
LABEL_59:

  return v63;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  eventMetadata = [(PEGASUSSchemaPEGASUSServerEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(PEGASUSSchemaPEGASUSServerEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  pegasusRequestContext = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusRequestContext];

  if (pegasusRequestContext)
  {
    pegasusRequestContext2 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusRequestContext];
    PBDataWriterWriteSubmessage();
  }

  pegasusRewrittenUtterancesReported = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusRewrittenUtterancesReported];

  if (pegasusRewrittenUtterancesReported)
  {
    pegasusRewrittenUtterancesReported2 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusRewrittenUtterancesReported];
    PBDataWriterWriteSubmessage();
  }

  pegasusRewrittenUtterancesReportedTier1 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusRewrittenUtterancesReportedTier1];

  if (pegasusRewrittenUtterancesReportedTier1)
  {
    pegasusRewrittenUtterancesReportedTier12 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusRewrittenUtterancesReportedTier1];
    PBDataWriterWriteSubmessage();
  }

  pegasusUtteranceUnderstandingReported = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusUtteranceUnderstandingReported];

  if (pegasusUtteranceUnderstandingReported)
  {
    pegasusUtteranceUnderstandingReported2 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusUtteranceUnderstandingReported];
    PBDataWriterWriteSubmessage();
  }

  pegasusUtteranceUnderstandingReportedTier1 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusUtteranceUnderstandingReportedTier1];

  if (pegasusUtteranceUnderstandingReportedTier1)
  {
    pegasusUtteranceUnderstandingReportedTier12 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusUtteranceUnderstandingReportedTier1];
    PBDataWriterWriteSubmessage();
  }

  pegasusRequestEndedTier1 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusRequestEndedTier1];

  if (pegasusRequestEndedTier1)
  {
    pegasusRequestEndedTier12 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusRequestEndedTier1];
    PBDataWriterWriteSubmessage();
  }

  pegasusInfoDomainMultistepAndMultiturnExecutionReported = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusInfoDomainMultistepAndMultiturnExecutionReported];

  if (pegasusInfoDomainMultistepAndMultiturnExecutionReported)
  {
    pegasusInfoDomainMultistepAndMultiturnExecutionReported2 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusInfoDomainMultistepAndMultiturnExecutionReported];
    PBDataWriterWriteSubmessage();
  }

  pegasusAmpSafetyLoggingInfo = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusAmpSafetyLoggingInfo];

  if (pegasusAmpSafetyLoggingInfo)
  {
    pegasusAmpSafetyLoggingInfo2 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusAmpSafetyLoggingInfo];
    PBDataWriterWriteSubmessage();
  }

  pegasusAsrCorrectionInfo = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusAsrCorrectionInfo];

  if (pegasusAsrCorrectionInfo)
  {
    pegasusAsrCorrectionInfo2 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusAsrCorrectionInfo];
    PBDataWriterWriteSubmessage();
  }

  pegasusAmpPersonalizationLoggingInfo = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusAmpPersonalizationLoggingInfo];

  v25 = toCopy;
  if (pegasusAmpPersonalizationLoggingInfo)
  {
    pegasusAmpPersonalizationLoggingInfo2 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusAmpPersonalizationLoggingInfo];
    PBDataWriterWriteSubmessage();

    v25 = toCopy;
  }
}

- (void)deletePegasusAmpPersonalizationLoggingInfo
{
  if (self->_whichEvent_Type == 110)
  {
    self->_whichEvent_Type = 0;
    self->_pegasusAmpPersonalizationLoggingInfo = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PEGASUSSchemaPEGASUSAMPPersonalizationLoggingInfo)pegasusAmpPersonalizationLoggingInfo
{
  if (self->_whichEvent_Type == 110)
  {
    v3 = self->_pegasusAmpPersonalizationLoggingInfo;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPegasusAmpPersonalizationLoggingInfo:(id)info
{
  infoCopy = info;
  pegasusRequestContext = self->_pegasusRequestContext;
  self->_pegasusRequestContext = 0;

  pegasusRewrittenUtterancesReported = self->_pegasusRewrittenUtterancesReported;
  self->_pegasusRewrittenUtterancesReported = 0;

  pegasusRewrittenUtterancesReportedTier1 = self->_pegasusRewrittenUtterancesReportedTier1;
  self->_pegasusRewrittenUtterancesReportedTier1 = 0;

  pegasusUtteranceUnderstandingReported = self->_pegasusUtteranceUnderstandingReported;
  self->_pegasusUtteranceUnderstandingReported = 0;

  pegasusUtteranceUnderstandingReportedTier1 = self->_pegasusUtteranceUnderstandingReportedTier1;
  self->_pegasusUtteranceUnderstandingReportedTier1 = 0;

  pegasusRequestEndedTier1 = self->_pegasusRequestEndedTier1;
  self->_pegasusRequestEndedTier1 = 0;

  pegasusInfoDomainMultistepAndMultiturnExecutionReported = self->_pegasusInfoDomainMultistepAndMultiturnExecutionReported;
  self->_pegasusInfoDomainMultistepAndMultiturnExecutionReported = 0;

  pegasusAmpSafetyLoggingInfo = self->_pegasusAmpSafetyLoggingInfo;
  self->_pegasusAmpSafetyLoggingInfo = 0;

  pegasusAsrCorrectionInfo = self->_pegasusAsrCorrectionInfo;
  self->_pegasusAsrCorrectionInfo = 0;

  v14 = 110;
  if (!infoCopy)
  {
    v14 = 0;
  }

  self->_whichEvent_Type = v14;
  pegasusAmpPersonalizationLoggingInfo = self->_pegasusAmpPersonalizationLoggingInfo;
  self->_pegasusAmpPersonalizationLoggingInfo = infoCopy;
}

- (void)deletePegasusAsrCorrectionInfo
{
  if (self->_whichEvent_Type == 109)
  {
    self->_whichEvent_Type = 0;
    self->_pegasusAsrCorrectionInfo = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PEGASUSSchemaPEGASUSAsrCorrectionInfo)pegasusAsrCorrectionInfo
{
  if (self->_whichEvent_Type == 109)
  {
    v3 = self->_pegasusAsrCorrectionInfo;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPegasusAsrCorrectionInfo:(id)info
{
  infoCopy = info;
  pegasusRequestContext = self->_pegasusRequestContext;
  self->_pegasusRequestContext = 0;

  pegasusRewrittenUtterancesReported = self->_pegasusRewrittenUtterancesReported;
  self->_pegasusRewrittenUtterancesReported = 0;

  pegasusRewrittenUtterancesReportedTier1 = self->_pegasusRewrittenUtterancesReportedTier1;
  self->_pegasusRewrittenUtterancesReportedTier1 = 0;

  pegasusUtteranceUnderstandingReported = self->_pegasusUtteranceUnderstandingReported;
  self->_pegasusUtteranceUnderstandingReported = 0;

  pegasusUtteranceUnderstandingReportedTier1 = self->_pegasusUtteranceUnderstandingReportedTier1;
  self->_pegasusUtteranceUnderstandingReportedTier1 = 0;

  pegasusRequestEndedTier1 = self->_pegasusRequestEndedTier1;
  self->_pegasusRequestEndedTier1 = 0;

  pegasusInfoDomainMultistepAndMultiturnExecutionReported = self->_pegasusInfoDomainMultistepAndMultiturnExecutionReported;
  self->_pegasusInfoDomainMultistepAndMultiturnExecutionReported = 0;

  pegasusAmpSafetyLoggingInfo = self->_pegasusAmpSafetyLoggingInfo;
  self->_pegasusAmpSafetyLoggingInfo = 0;

  pegasusAmpPersonalizationLoggingInfo = self->_pegasusAmpPersonalizationLoggingInfo;
  self->_pegasusAmpPersonalizationLoggingInfo = 0;

  v14 = 109;
  if (!infoCopy)
  {
    v14 = 0;
  }

  self->_whichEvent_Type = v14;
  pegasusAsrCorrectionInfo = self->_pegasusAsrCorrectionInfo;
  self->_pegasusAsrCorrectionInfo = infoCopy;
}

- (void)deletePegasusAmpSafetyLoggingInfo
{
  if (self->_whichEvent_Type == 108)
  {
    self->_whichEvent_Type = 0;
    self->_pegasusAmpSafetyLoggingInfo = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PEGASUSSchemaPEGASUSAMPSafetyLoggingInfo)pegasusAmpSafetyLoggingInfo
{
  if (self->_whichEvent_Type == 108)
  {
    v3 = self->_pegasusAmpSafetyLoggingInfo;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPegasusAmpSafetyLoggingInfo:(id)info
{
  infoCopy = info;
  pegasusRequestContext = self->_pegasusRequestContext;
  self->_pegasusRequestContext = 0;

  pegasusRewrittenUtterancesReported = self->_pegasusRewrittenUtterancesReported;
  self->_pegasusRewrittenUtterancesReported = 0;

  pegasusRewrittenUtterancesReportedTier1 = self->_pegasusRewrittenUtterancesReportedTier1;
  self->_pegasusRewrittenUtterancesReportedTier1 = 0;

  pegasusUtteranceUnderstandingReported = self->_pegasusUtteranceUnderstandingReported;
  self->_pegasusUtteranceUnderstandingReported = 0;

  pegasusUtteranceUnderstandingReportedTier1 = self->_pegasusUtteranceUnderstandingReportedTier1;
  self->_pegasusUtteranceUnderstandingReportedTier1 = 0;

  pegasusRequestEndedTier1 = self->_pegasusRequestEndedTier1;
  self->_pegasusRequestEndedTier1 = 0;

  pegasusInfoDomainMultistepAndMultiturnExecutionReported = self->_pegasusInfoDomainMultistepAndMultiturnExecutionReported;
  self->_pegasusInfoDomainMultistepAndMultiturnExecutionReported = 0;

  pegasusAsrCorrectionInfo = self->_pegasusAsrCorrectionInfo;
  self->_pegasusAsrCorrectionInfo = 0;

  pegasusAmpPersonalizationLoggingInfo = self->_pegasusAmpPersonalizationLoggingInfo;
  self->_pegasusAmpPersonalizationLoggingInfo = 0;

  v14 = 108;
  if (!infoCopy)
  {
    v14 = 0;
  }

  self->_whichEvent_Type = v14;
  pegasusAmpSafetyLoggingInfo = self->_pegasusAmpSafetyLoggingInfo;
  self->_pegasusAmpSafetyLoggingInfo = infoCopy;
}

- (void)deletePegasusInfoDomainMultistepAndMultiturnExecutionReported
{
  if (self->_whichEvent_Type == 107)
  {
    self->_whichEvent_Type = 0;
    self->_pegasusInfoDomainMultistepAndMultiturnExecutionReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported)pegasusInfoDomainMultistepAndMultiturnExecutionReported
{
  if (self->_whichEvent_Type == 107)
  {
    v3 = self->_pegasusInfoDomainMultistepAndMultiturnExecutionReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPegasusInfoDomainMultistepAndMultiturnExecutionReported:(id)reported
{
  reportedCopy = reported;
  pegasusRequestContext = self->_pegasusRequestContext;
  self->_pegasusRequestContext = 0;

  pegasusRewrittenUtterancesReported = self->_pegasusRewrittenUtterancesReported;
  self->_pegasusRewrittenUtterancesReported = 0;

  pegasusRewrittenUtterancesReportedTier1 = self->_pegasusRewrittenUtterancesReportedTier1;
  self->_pegasusRewrittenUtterancesReportedTier1 = 0;

  pegasusUtteranceUnderstandingReported = self->_pegasusUtteranceUnderstandingReported;
  self->_pegasusUtteranceUnderstandingReported = 0;

  pegasusUtteranceUnderstandingReportedTier1 = self->_pegasusUtteranceUnderstandingReportedTier1;
  self->_pegasusUtteranceUnderstandingReportedTier1 = 0;

  pegasusRequestEndedTier1 = self->_pegasusRequestEndedTier1;
  self->_pegasusRequestEndedTier1 = 0;

  pegasusAmpSafetyLoggingInfo = self->_pegasusAmpSafetyLoggingInfo;
  self->_pegasusAmpSafetyLoggingInfo = 0;

  pegasusAsrCorrectionInfo = self->_pegasusAsrCorrectionInfo;
  self->_pegasusAsrCorrectionInfo = 0;

  pegasusAmpPersonalizationLoggingInfo = self->_pegasusAmpPersonalizationLoggingInfo;
  self->_pegasusAmpPersonalizationLoggingInfo = 0;

  v14 = 107;
  if (!reportedCopy)
  {
    v14 = 0;
  }

  self->_whichEvent_Type = v14;
  pegasusInfoDomainMultistepAndMultiturnExecutionReported = self->_pegasusInfoDomainMultistepAndMultiturnExecutionReported;
  self->_pegasusInfoDomainMultistepAndMultiturnExecutionReported = reportedCopy;
}

- (void)deletePegasusRequestEndedTier1
{
  if (self->_whichEvent_Type == 106)
  {
    self->_whichEvent_Type = 0;
    self->_pegasusRequestEndedTier1 = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PEGASUSSchemaPEGASUSRequestEndedTier1)pegasusRequestEndedTier1
{
  if (self->_whichEvent_Type == 106)
  {
    v3 = self->_pegasusRequestEndedTier1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPegasusRequestEndedTier1:(id)tier1
{
  tier1Copy = tier1;
  pegasusRequestContext = self->_pegasusRequestContext;
  self->_pegasusRequestContext = 0;

  pegasusRewrittenUtterancesReported = self->_pegasusRewrittenUtterancesReported;
  self->_pegasusRewrittenUtterancesReported = 0;

  pegasusRewrittenUtterancesReportedTier1 = self->_pegasusRewrittenUtterancesReportedTier1;
  self->_pegasusRewrittenUtterancesReportedTier1 = 0;

  pegasusUtteranceUnderstandingReported = self->_pegasusUtteranceUnderstandingReported;
  self->_pegasusUtteranceUnderstandingReported = 0;

  pegasusUtteranceUnderstandingReportedTier1 = self->_pegasusUtteranceUnderstandingReportedTier1;
  self->_pegasusUtteranceUnderstandingReportedTier1 = 0;

  pegasusInfoDomainMultistepAndMultiturnExecutionReported = self->_pegasusInfoDomainMultistepAndMultiturnExecutionReported;
  self->_pegasusInfoDomainMultistepAndMultiturnExecutionReported = 0;

  pegasusAmpSafetyLoggingInfo = self->_pegasusAmpSafetyLoggingInfo;
  self->_pegasusAmpSafetyLoggingInfo = 0;

  pegasusAsrCorrectionInfo = self->_pegasusAsrCorrectionInfo;
  self->_pegasusAsrCorrectionInfo = 0;

  pegasusAmpPersonalizationLoggingInfo = self->_pegasusAmpPersonalizationLoggingInfo;
  self->_pegasusAmpPersonalizationLoggingInfo = 0;

  v14 = 106;
  if (!tier1Copy)
  {
    v14 = 0;
  }

  self->_whichEvent_Type = v14;
  pegasusRequestEndedTier1 = self->_pegasusRequestEndedTier1;
  self->_pegasusRequestEndedTier1 = tier1Copy;
}

- (void)deletePegasusUtteranceUnderstandingReportedTier1
{
  if (self->_whichEvent_Type == 105)
  {
    self->_whichEvent_Type = 0;
    self->_pegasusUtteranceUnderstandingReportedTier1 = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1)pegasusUtteranceUnderstandingReportedTier1
{
  if (self->_whichEvent_Type == 105)
  {
    v3 = self->_pegasusUtteranceUnderstandingReportedTier1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPegasusUtteranceUnderstandingReportedTier1:(id)tier1
{
  tier1Copy = tier1;
  pegasusRequestContext = self->_pegasusRequestContext;
  self->_pegasusRequestContext = 0;

  pegasusRewrittenUtterancesReported = self->_pegasusRewrittenUtterancesReported;
  self->_pegasusRewrittenUtterancesReported = 0;

  pegasusRewrittenUtterancesReportedTier1 = self->_pegasusRewrittenUtterancesReportedTier1;
  self->_pegasusRewrittenUtterancesReportedTier1 = 0;

  pegasusUtteranceUnderstandingReported = self->_pegasusUtteranceUnderstandingReported;
  self->_pegasusUtteranceUnderstandingReported = 0;

  pegasusRequestEndedTier1 = self->_pegasusRequestEndedTier1;
  self->_pegasusRequestEndedTier1 = 0;

  pegasusInfoDomainMultistepAndMultiturnExecutionReported = self->_pegasusInfoDomainMultistepAndMultiturnExecutionReported;
  self->_pegasusInfoDomainMultistepAndMultiturnExecutionReported = 0;

  pegasusAmpSafetyLoggingInfo = self->_pegasusAmpSafetyLoggingInfo;
  self->_pegasusAmpSafetyLoggingInfo = 0;

  pegasusAsrCorrectionInfo = self->_pegasusAsrCorrectionInfo;
  self->_pegasusAsrCorrectionInfo = 0;

  pegasusAmpPersonalizationLoggingInfo = self->_pegasusAmpPersonalizationLoggingInfo;
  self->_pegasusAmpPersonalizationLoggingInfo = 0;

  v14 = 105;
  if (!tier1Copy)
  {
    v14 = 0;
  }

  self->_whichEvent_Type = v14;
  pegasusUtteranceUnderstandingReportedTier1 = self->_pegasusUtteranceUnderstandingReportedTier1;
  self->_pegasusUtteranceUnderstandingReportedTier1 = tier1Copy;
}

- (void)deletePegasusUtteranceUnderstandingReported
{
  if (self->_whichEvent_Type == 104)
  {
    self->_whichEvent_Type = 0;
    self->_pegasusUtteranceUnderstandingReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PEGASUSSchemaPEGASUSUtteranceUnderstandingReported)pegasusUtteranceUnderstandingReported
{
  if (self->_whichEvent_Type == 104)
  {
    v3 = self->_pegasusUtteranceUnderstandingReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPegasusUtteranceUnderstandingReported:(id)reported
{
  reportedCopy = reported;
  pegasusRequestContext = self->_pegasusRequestContext;
  self->_pegasusRequestContext = 0;

  pegasusRewrittenUtterancesReported = self->_pegasusRewrittenUtterancesReported;
  self->_pegasusRewrittenUtterancesReported = 0;

  pegasusRewrittenUtterancesReportedTier1 = self->_pegasusRewrittenUtterancesReportedTier1;
  self->_pegasusRewrittenUtterancesReportedTier1 = 0;

  pegasusUtteranceUnderstandingReportedTier1 = self->_pegasusUtteranceUnderstandingReportedTier1;
  self->_pegasusUtteranceUnderstandingReportedTier1 = 0;

  pegasusRequestEndedTier1 = self->_pegasusRequestEndedTier1;
  self->_pegasusRequestEndedTier1 = 0;

  pegasusInfoDomainMultistepAndMultiturnExecutionReported = self->_pegasusInfoDomainMultistepAndMultiturnExecutionReported;
  self->_pegasusInfoDomainMultistepAndMultiturnExecutionReported = 0;

  pegasusAmpSafetyLoggingInfo = self->_pegasusAmpSafetyLoggingInfo;
  self->_pegasusAmpSafetyLoggingInfo = 0;

  pegasusAsrCorrectionInfo = self->_pegasusAsrCorrectionInfo;
  self->_pegasusAsrCorrectionInfo = 0;

  pegasusAmpPersonalizationLoggingInfo = self->_pegasusAmpPersonalizationLoggingInfo;
  self->_pegasusAmpPersonalizationLoggingInfo = 0;

  v14 = 104;
  if (!reportedCopy)
  {
    v14 = 0;
  }

  self->_whichEvent_Type = v14;
  pegasusUtteranceUnderstandingReported = self->_pegasusUtteranceUnderstandingReported;
  self->_pegasusUtteranceUnderstandingReported = reportedCopy;
}

- (void)deletePegasusRewrittenUtterancesReportedTier1
{
  if (self->_whichEvent_Type == 103)
  {
    self->_whichEvent_Type = 0;
    self->_pegasusRewrittenUtterancesReportedTier1 = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PEGASUSSchemaPEGASUSRewrittenUtterancesReportedTier1)pegasusRewrittenUtterancesReportedTier1
{
  if (self->_whichEvent_Type == 103)
  {
    v3 = self->_pegasusRewrittenUtterancesReportedTier1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPegasusRewrittenUtterancesReportedTier1:(id)tier1
{
  tier1Copy = tier1;
  pegasusRequestContext = self->_pegasusRequestContext;
  self->_pegasusRequestContext = 0;

  pegasusRewrittenUtterancesReported = self->_pegasusRewrittenUtterancesReported;
  self->_pegasusRewrittenUtterancesReported = 0;

  pegasusUtteranceUnderstandingReported = self->_pegasusUtteranceUnderstandingReported;
  self->_pegasusUtteranceUnderstandingReported = 0;

  pegasusUtteranceUnderstandingReportedTier1 = self->_pegasusUtteranceUnderstandingReportedTier1;
  self->_pegasusUtteranceUnderstandingReportedTier1 = 0;

  pegasusRequestEndedTier1 = self->_pegasusRequestEndedTier1;
  self->_pegasusRequestEndedTier1 = 0;

  pegasusInfoDomainMultistepAndMultiturnExecutionReported = self->_pegasusInfoDomainMultistepAndMultiturnExecutionReported;
  self->_pegasusInfoDomainMultistepAndMultiturnExecutionReported = 0;

  pegasusAmpSafetyLoggingInfo = self->_pegasusAmpSafetyLoggingInfo;
  self->_pegasusAmpSafetyLoggingInfo = 0;

  pegasusAsrCorrectionInfo = self->_pegasusAsrCorrectionInfo;
  self->_pegasusAsrCorrectionInfo = 0;

  pegasusAmpPersonalizationLoggingInfo = self->_pegasusAmpPersonalizationLoggingInfo;
  self->_pegasusAmpPersonalizationLoggingInfo = 0;

  v14 = 103;
  if (!tier1Copy)
  {
    v14 = 0;
  }

  self->_whichEvent_Type = v14;
  pegasusRewrittenUtterancesReportedTier1 = self->_pegasusRewrittenUtterancesReportedTier1;
  self->_pegasusRewrittenUtterancesReportedTier1 = tier1Copy;
}

- (void)deletePegasusRewrittenUtterancesReported
{
  if (self->_whichEvent_Type == 102)
  {
    self->_whichEvent_Type = 0;
    self->_pegasusRewrittenUtterancesReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PEGASUSSchemaPEGASUSRewrittenUtterancesReported)pegasusRewrittenUtterancesReported
{
  if (self->_whichEvent_Type == 102)
  {
    v3 = self->_pegasusRewrittenUtterancesReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPegasusRewrittenUtterancesReported:(id)reported
{
  reportedCopy = reported;
  pegasusRequestContext = self->_pegasusRequestContext;
  self->_pegasusRequestContext = 0;

  pegasusRewrittenUtterancesReportedTier1 = self->_pegasusRewrittenUtterancesReportedTier1;
  self->_pegasusRewrittenUtterancesReportedTier1 = 0;

  pegasusUtteranceUnderstandingReported = self->_pegasusUtteranceUnderstandingReported;
  self->_pegasusUtteranceUnderstandingReported = 0;

  pegasusUtteranceUnderstandingReportedTier1 = self->_pegasusUtteranceUnderstandingReportedTier1;
  self->_pegasusUtteranceUnderstandingReportedTier1 = 0;

  pegasusRequestEndedTier1 = self->_pegasusRequestEndedTier1;
  self->_pegasusRequestEndedTier1 = 0;

  pegasusInfoDomainMultistepAndMultiturnExecutionReported = self->_pegasusInfoDomainMultistepAndMultiturnExecutionReported;
  self->_pegasusInfoDomainMultistepAndMultiturnExecutionReported = 0;

  pegasusAmpSafetyLoggingInfo = self->_pegasusAmpSafetyLoggingInfo;
  self->_pegasusAmpSafetyLoggingInfo = 0;

  pegasusAsrCorrectionInfo = self->_pegasusAsrCorrectionInfo;
  self->_pegasusAsrCorrectionInfo = 0;

  pegasusAmpPersonalizationLoggingInfo = self->_pegasusAmpPersonalizationLoggingInfo;
  self->_pegasusAmpPersonalizationLoggingInfo = 0;

  v14 = 102;
  if (!reportedCopy)
  {
    v14 = 0;
  }

  self->_whichEvent_Type = v14;
  pegasusRewrittenUtterancesReported = self->_pegasusRewrittenUtterancesReported;
  self->_pegasusRewrittenUtterancesReported = reportedCopy;
}

- (void)deletePegasusRequestContext
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_pegasusRequestContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PEGASUSSchemaPEGASUSRequestContext)pegasusRequestContext
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_pegasusRequestContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPegasusRequestContext:(id)context
{
  contextCopy = context;
  pegasusRewrittenUtterancesReported = self->_pegasusRewrittenUtterancesReported;
  self->_pegasusRewrittenUtterancesReported = 0;

  pegasusRewrittenUtterancesReportedTier1 = self->_pegasusRewrittenUtterancesReportedTier1;
  self->_pegasusRewrittenUtterancesReportedTier1 = 0;

  pegasusUtteranceUnderstandingReported = self->_pegasusUtteranceUnderstandingReported;
  self->_pegasusUtteranceUnderstandingReported = 0;

  pegasusUtteranceUnderstandingReportedTier1 = self->_pegasusUtteranceUnderstandingReportedTier1;
  self->_pegasusUtteranceUnderstandingReportedTier1 = 0;

  pegasusRequestEndedTier1 = self->_pegasusRequestEndedTier1;
  self->_pegasusRequestEndedTier1 = 0;

  pegasusInfoDomainMultistepAndMultiturnExecutionReported = self->_pegasusInfoDomainMultistepAndMultiturnExecutionReported;
  self->_pegasusInfoDomainMultistepAndMultiturnExecutionReported = 0;

  pegasusAmpSafetyLoggingInfo = self->_pegasusAmpSafetyLoggingInfo;
  self->_pegasusAmpSafetyLoggingInfo = 0;

  pegasusAsrCorrectionInfo = self->_pegasusAsrCorrectionInfo;
  self->_pegasusAsrCorrectionInfo = 0;

  pegasusAmpPersonalizationLoggingInfo = self->_pegasusAmpPersonalizationLoggingInfo;
  self->_pegasusAmpPersonalizationLoggingInfo = 0;

  v14 = 101;
  if (!contextCopy)
  {
    v14 = 0;
  }

  self->_whichEvent_Type = v14;
  pegasusRequestContext = self->_pegasusRequestContext;
  self->_pegasusRequestContext = contextCopy;
}

- (id)qualifiedMessageName
{
  whichEvent_Type = [(PEGASUSSchemaPEGASUSServerEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 9)
  {
    return @"com.apple.aiml.siri.pegasus.PEGASUSServerEvent";
  }

  else
  {
    return off_1E78DFCC0[whichEvent_Type - 101];
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v40.receiver = self;
  v40.super_class = PEGASUSSchemaPEGASUSServerEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v40 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(PEGASUSSchemaPEGASUSServerEvent *)self deletePegasusRewrittenUtterancesReportedTier1];
    [(PEGASUSSchemaPEGASUSServerEvent *)self deletePegasusUtteranceUnderstandingReportedTier1];
    [(PEGASUSSchemaPEGASUSServerEvent *)self deletePegasusRequestEndedTier1];
    [(PEGASUSSchemaPEGASUSServerEvent *)self deletePegasusAsrCorrectionInfo];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(PEGASUSSchemaPEGASUSServerEvent *)self deletePegasusRewrittenUtterancesReportedTier1];
    [(PEGASUSSchemaPEGASUSServerEvent *)self deletePegasusUtteranceUnderstandingReportedTier1];
    [(PEGASUSSchemaPEGASUSServerEvent *)self deletePegasusRequestEndedTier1];
    [(PEGASUSSchemaPEGASUSServerEvent *)self deletePegasusAsrCorrectionInfo];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(PEGASUSSchemaPEGASUSServerEvent *)self deletePegasusRewrittenUtterancesReportedTier1];
    [(PEGASUSSchemaPEGASUSServerEvent *)self deletePegasusUtteranceUnderstandingReportedTier1];
    [(PEGASUSSchemaPEGASUSServerEvent *)self deletePegasusRequestEndedTier1];
    [(PEGASUSSchemaPEGASUSServerEvent *)self deletePegasusAsrCorrectionInfo];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(PEGASUSSchemaPEGASUSServerEvent *)self deletePegasusRewrittenUtterancesReportedTier1];
    [(PEGASUSSchemaPEGASUSServerEvent *)self deletePegasusUtteranceUnderstandingReportedTier1];
    [(PEGASUSSchemaPEGASUSServerEvent *)self deletePegasusRequestEndedTier1];
    [(PEGASUSSchemaPEGASUSServerEvent *)self deletePegasusAsrCorrectionInfo];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(PEGASUSSchemaPEGASUSServerEvent *)self deletePegasusRewrittenUtterancesReportedTier1];
    [(PEGASUSSchemaPEGASUSServerEvent *)self deletePegasusUtteranceUnderstandingReportedTier1];
    [(PEGASUSSchemaPEGASUSServerEvent *)self deletePegasusRequestEndedTier1];
    [(PEGASUSSchemaPEGASUSServerEvent *)self deletePegasusAsrCorrectionInfo];
  }

  eventMetadata = [(PEGASUSSchemaPEGASUSServerEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PEGASUSSchemaPEGASUSServerEvent *)self deleteEventMetadata];
  }

  pegasusRequestContext = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusRequestContext];
  v10 = [pegasusRequestContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(PEGASUSSchemaPEGASUSServerEvent *)self deletePegasusRequestContext];
  }

  pegasusRewrittenUtterancesReported = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusRewrittenUtterancesReported];
  v13 = [pegasusRewrittenUtterancesReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(PEGASUSSchemaPEGASUSServerEvent *)self deletePegasusRewrittenUtterancesReported];
  }

  pegasusRewrittenUtterancesReportedTier1 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusRewrittenUtterancesReportedTier1];
  v16 = [pegasusRewrittenUtterancesReportedTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(PEGASUSSchemaPEGASUSServerEvent *)self deletePegasusRewrittenUtterancesReportedTier1];
  }

  pegasusUtteranceUnderstandingReported = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusUtteranceUnderstandingReported];
  v19 = [pegasusUtteranceUnderstandingReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(PEGASUSSchemaPEGASUSServerEvent *)self deletePegasusUtteranceUnderstandingReported];
  }

  pegasusUtteranceUnderstandingReportedTier1 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusUtteranceUnderstandingReportedTier1];
  v22 = [pegasusUtteranceUnderstandingReportedTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(PEGASUSSchemaPEGASUSServerEvent *)self deletePegasusUtteranceUnderstandingReportedTier1];
  }

  pegasusRequestEndedTier1 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusRequestEndedTier1];
  v25 = [pegasusRequestEndedTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage7 = [v25 suppressMessage];

  if (suppressMessage7)
  {
    [(PEGASUSSchemaPEGASUSServerEvent *)self deletePegasusRequestEndedTier1];
  }

  pegasusInfoDomainMultistepAndMultiturnExecutionReported = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusInfoDomainMultistepAndMultiturnExecutionReported];
  v28 = [pegasusInfoDomainMultistepAndMultiturnExecutionReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage8 = [v28 suppressMessage];

  if (suppressMessage8)
  {
    [(PEGASUSSchemaPEGASUSServerEvent *)self deletePegasusInfoDomainMultistepAndMultiturnExecutionReported];
  }

  pegasusAmpSafetyLoggingInfo = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusAmpSafetyLoggingInfo];
  v31 = [pegasusAmpSafetyLoggingInfo applySensitiveConditionsPolicy:policyCopy];
  suppressMessage9 = [v31 suppressMessage];

  if (suppressMessage9)
  {
    [(PEGASUSSchemaPEGASUSServerEvent *)self deletePegasusAmpSafetyLoggingInfo];
  }

  pegasusAsrCorrectionInfo = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusAsrCorrectionInfo];
  v34 = [pegasusAsrCorrectionInfo applySensitiveConditionsPolicy:policyCopy];
  suppressMessage10 = [v34 suppressMessage];

  if (suppressMessage10)
  {
    [(PEGASUSSchemaPEGASUSServerEvent *)self deletePegasusAsrCorrectionInfo];
  }

  pegasusAmpPersonalizationLoggingInfo = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusAmpPersonalizationLoggingInfo];
  v37 = [pegasusAmpPersonalizationLoggingInfo applySensitiveConditionsPolicy:policyCopy];
  suppressMessage11 = [v37 suppressMessage];

  if (suppressMessage11)
  {
    [(PEGASUSSchemaPEGASUSServerEvent *)self deletePegasusAmpPersonalizationLoggingInfo];
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
  eventMetadata = [(PEGASUSSchemaPEGASUSServerEvent *)self eventMetadata];
  pegasusId = [eventMetadata pegasusId];

  if (pegasusId)
  {
    value = [pegasusId value];
    if (value)
    {
      value2 = [pegasusId value];
      v6 = [value2 length];

      if (v6)
      {
        LODWORD(value) = 24;
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
  eventMetadata = [(PEGASUSSchemaPEGASUSServerEvent *)self eventMetadata];
  pegasusId = [eventMetadata pegasusId];

  if (!pegasusId)
  {
    goto LABEL_5;
  }

  value = [pegasusId value];
  if (!value)
  {
    goto LABEL_6;
  }

  value2 = [pegasusId value];
  v6 = [value2 length];

  if (v6)
  {
    value = pegasusId;
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
  whichEvent_Type = [(PEGASUSSchemaPEGASUSServerEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 9)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78EA8D8[whichEvent_Type - 101]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)tag
{
  if (tag - 101 > 9)
  {
    return 0;
  }

  else
  {
    return off_1E78EA928[tag - 101];
  }
}

@end