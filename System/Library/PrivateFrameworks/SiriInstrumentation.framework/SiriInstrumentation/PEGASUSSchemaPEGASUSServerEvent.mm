@interface PEGASUSSchemaPEGASUSServerEvent
+ (id)getInnerTypeStringByTag:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSAMPPersonalizationLoggingInfo)pegasusAmpPersonalizationLoggingInfo;
- (PEGASUSSchemaPEGASUSAMPSafetyLoggingInfo)pegasusAmpSafetyLoggingInfo;
- (PEGASUSSchemaPEGASUSAsrCorrectionInfo)pegasusAsrCorrectionInfo;
- (PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported)pegasusInfoDomainMultistepAndMultiturnExecutionReported;
- (PEGASUSSchemaPEGASUSRequestContext)pegasusRequestContext;
- (PEGASUSSchemaPEGASUSRequestEndedTier1)pegasusRequestEndedTier1;
- (PEGASUSSchemaPEGASUSRewrittenUtterancesReported)pegasusRewrittenUtterancesReported;
- (PEGASUSSchemaPEGASUSRewrittenUtterancesReportedTier1)pegasusRewrittenUtterancesReportedTier1;
- (PEGASUSSchemaPEGASUSServerEvent)initWithDictionary:(id)a3;
- (PEGASUSSchemaPEGASUSServerEvent)initWithJSON:(id)a3;
- (PEGASUSSchemaPEGASUSUtteranceUnderstandingReported)pegasusUtteranceUnderstandingReported;
- (PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1)pegasusUtteranceUnderstandingReportedTier1;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)a3;
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
- (void)setPegasusAmpPersonalizationLoggingInfo:(id)a3;
- (void)setPegasusAmpSafetyLoggingInfo:(id)a3;
- (void)setPegasusAsrCorrectionInfo:(id)a3;
- (void)setPegasusInfoDomainMultistepAndMultiturnExecutionReported:(id)a3;
- (void)setPegasusRequestContext:(id)a3;
- (void)setPegasusRequestEndedTier1:(id)a3;
- (void)setPegasusRewrittenUtterancesReported:(id)a3;
- (void)setPegasusRewrittenUtterancesReportedTier1:(id)a3;
- (void)setPegasusUtteranceUnderstandingReported:(id)a3;
- (void)setPegasusUtteranceUnderstandingReportedTier1:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PEGASUSSchemaPEGASUSServerEvent

- (PEGASUSSchemaPEGASUSServerEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = PEGASUSSchemaPEGASUSServerEvent;
  v5 = [(PEGASUSSchemaPEGASUSServerEvent *)&v35 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[PEGASUSSchemaPEGASUSServerEventMetadata alloc] initWithDictionary:v6];
      [(PEGASUSSchemaPEGASUSServerEvent *)v5 setEventMetadata:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"pegasusRequestContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[PEGASUSSchemaPEGASUSRequestContext alloc] initWithDictionary:v8];
      [(PEGASUSSchemaPEGASUSServerEvent *)v5 setPegasusRequestContext:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"pegasusRewrittenUtterancesReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[PEGASUSSchemaPEGASUSRewrittenUtterancesReported alloc] initWithDictionary:v10];
      [(PEGASUSSchemaPEGASUSServerEvent *)v5 setPegasusRewrittenUtterancesReported:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"pegasusRewrittenUtterancesReportedTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[PEGASUSSchemaPEGASUSRewrittenUtterancesReportedTier1 alloc] initWithDictionary:v12];
      [(PEGASUSSchemaPEGASUSServerEvent *)v5 setPegasusRewrittenUtterancesReportedTier1:v13];
    }

    v32 = v12;
    v14 = [v4 objectForKeyedSubscript:@"pegasusUtteranceUnderstandingReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[PEGASUSSchemaPEGASUSUtteranceUnderstandingReported alloc] initWithDictionary:v14];
      [(PEGASUSSchemaPEGASUSServerEvent *)v5 setPegasusUtteranceUnderstandingReported:v15];
    }

    v16 = [v4 objectForKeyedSubscript:{@"pegasusUtteranceUnderstandingReportedTier1", v14}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1 alloc] initWithDictionary:v16];
      [(PEGASUSSchemaPEGASUSServerEvent *)v5 setPegasusUtteranceUnderstandingReportedTier1:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"pegasusRequestEndedTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[PEGASUSSchemaPEGASUSRequestEndedTier1 alloc] initWithDictionary:v18];
      [(PEGASUSSchemaPEGASUSServerEvent *)v5 setPegasusRequestEndedTier1:v19];
    }

    v33 = v10;
    v34 = v6;
    v20 = [v4 objectForKeyedSubscript:@"pegasusInfoDomainMultistepAndMultiturnExecutionReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported alloc] initWithDictionary:v20];
      [(PEGASUSSchemaPEGASUSServerEvent *)v5 setPegasusInfoDomainMultistepAndMultiturnExecutionReported:v21];
    }

    v22 = v8;
    v23 = [v4 objectForKeyedSubscript:@"pegasusAmpSafetyLoggingInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [[PEGASUSSchemaPEGASUSAMPSafetyLoggingInfo alloc] initWithDictionary:v23];
      [(PEGASUSSchemaPEGASUSServerEvent *)v5 setPegasusAmpSafetyLoggingInfo:v24];
    }

    v25 = [v4 objectForKeyedSubscript:@"pegasusAsrCorrectionInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = [[PEGASUSSchemaPEGASUSAsrCorrectionInfo alloc] initWithDictionary:v25];
      [(PEGASUSSchemaPEGASUSServerEvent *)v5 setPegasusAsrCorrectionInfo:v26];
    }

    v27 = [v4 objectForKeyedSubscript:@"pegasusAmpPersonalizationLoggingInfo"];
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

- (PEGASUSSchemaPEGASUSServerEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSServerEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PEGASUSSchemaPEGASUSServerEvent *)self dictionaryRepresentation];
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
  if (self->_eventMetadata)
  {
    v4 = [(PEGASUSSchemaPEGASUSServerEvent *)self eventMetadata];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_pegasusAmpPersonalizationLoggingInfo)
  {
    v7 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusAmpPersonalizationLoggingInfo];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"pegasusAmpPersonalizationLoggingInfo"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"pegasusAmpPersonalizationLoggingInfo"];
    }
  }

  if (self->_pegasusAmpSafetyLoggingInfo)
  {
    v10 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusAmpSafetyLoggingInfo];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"pegasusAmpSafetyLoggingInfo"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"pegasusAmpSafetyLoggingInfo"];
    }
  }

  if (self->_pegasusAsrCorrectionInfo)
  {
    v13 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusAsrCorrectionInfo];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"pegasusAsrCorrectionInfo"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"pegasusAsrCorrectionInfo"];
    }
  }

  if (self->_pegasusInfoDomainMultistepAndMultiturnExecutionReported)
  {
    v16 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusInfoDomainMultistepAndMultiturnExecutionReported];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"pegasusInfoDomainMultistepAndMultiturnExecutionReported"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"pegasusInfoDomainMultistepAndMultiturnExecutionReported"];
    }
  }

  if (self->_pegasusRequestContext)
  {
    v19 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusRequestContext];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"pegasusRequestContext"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"pegasusRequestContext"];
    }
  }

  if (self->_pegasusRequestEndedTier1)
  {
    v22 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusRequestEndedTier1];
    v23 = [v22 dictionaryRepresentation];
    if (v23)
    {
      [v3 setObject:v23 forKeyedSubscript:@"pegasusRequestEndedTier1"];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v24 forKeyedSubscript:@"pegasusRequestEndedTier1"];
    }
  }

  if (self->_pegasusRewrittenUtterancesReported)
  {
    v25 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusRewrittenUtterancesReported];
    v26 = [v25 dictionaryRepresentation];
    if (v26)
    {
      [v3 setObject:v26 forKeyedSubscript:@"pegasusRewrittenUtterancesReported"];
    }

    else
    {
      v27 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v27 forKeyedSubscript:@"pegasusRewrittenUtterancesReported"];
    }
  }

  if (self->_pegasusRewrittenUtterancesReportedTier1)
  {
    v28 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusRewrittenUtterancesReportedTier1];
    v29 = [v28 dictionaryRepresentation];
    if (v29)
    {
      [v3 setObject:v29 forKeyedSubscript:@"pegasusRewrittenUtterancesReportedTier1"];
    }

    else
    {
      v30 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v30 forKeyedSubscript:@"pegasusRewrittenUtterancesReportedTier1"];
    }
  }

  if (self->_pegasusUtteranceUnderstandingReported)
  {
    v31 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusUtteranceUnderstandingReported];
    v32 = [v31 dictionaryRepresentation];
    if (v32)
    {
      [v3 setObject:v32 forKeyedSubscript:@"pegasusUtteranceUnderstandingReported"];
    }

    else
    {
      v33 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v33 forKeyedSubscript:@"pegasusUtteranceUnderstandingReported"];
    }
  }

  if (self->_pegasusUtteranceUnderstandingReportedTier1)
  {
    v34 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusUtteranceUnderstandingReportedTier1];
    v35 = [v34 dictionaryRepresentation];
    if (v35)
    {
      [v3 setObject:v35 forKeyedSubscript:@"pegasusUtteranceUnderstandingReportedTier1"];
    }

    else
    {
      v36 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v36 forKeyedSubscript:@"pegasusUtteranceUnderstandingReportedTier1"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_58;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [v4 whichEvent_Type])
  {
    goto LABEL_58;
  }

  v6 = [(PEGASUSSchemaPEGASUSServerEvent *)self eventMetadata];
  v7 = [v4 eventMetadata];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_57;
  }

  v8 = [(PEGASUSSchemaPEGASUSServerEvent *)self eventMetadata];
  if (v8)
  {
    v9 = v8;
    v10 = [(PEGASUSSchemaPEGASUSServerEvent *)self eventMetadata];
    v11 = [v4 eventMetadata];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  v6 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusRequestContext];
  v7 = [v4 pegasusRequestContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_57;
  }

  v13 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusRequestContext];
  if (v13)
  {
    v14 = v13;
    v15 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusRequestContext];
    v16 = [v4 pegasusRequestContext];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  v6 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusRewrittenUtterancesReported];
  v7 = [v4 pegasusRewrittenUtterancesReported];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_57;
  }

  v18 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusRewrittenUtterancesReported];
  if (v18)
  {
    v19 = v18;
    v20 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusRewrittenUtterancesReported];
    v21 = [v4 pegasusRewrittenUtterancesReported];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  v6 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusRewrittenUtterancesReportedTier1];
  v7 = [v4 pegasusRewrittenUtterancesReportedTier1];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_57;
  }

  v23 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusRewrittenUtterancesReportedTier1];
  if (v23)
  {
    v24 = v23;
    v25 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusRewrittenUtterancesReportedTier1];
    v26 = [v4 pegasusRewrittenUtterancesReportedTier1];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  v6 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusUtteranceUnderstandingReported];
  v7 = [v4 pegasusUtteranceUnderstandingReported];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_57;
  }

  v28 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusUtteranceUnderstandingReported];
  if (v28)
  {
    v29 = v28;
    v30 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusUtteranceUnderstandingReported];
    v31 = [v4 pegasusUtteranceUnderstandingReported];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  v6 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusUtteranceUnderstandingReportedTier1];
  v7 = [v4 pegasusUtteranceUnderstandingReportedTier1];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_57;
  }

  v33 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusUtteranceUnderstandingReportedTier1];
  if (v33)
  {
    v34 = v33;
    v35 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusUtteranceUnderstandingReportedTier1];
    v36 = [v4 pegasusUtteranceUnderstandingReportedTier1];
    v37 = [v35 isEqual:v36];

    if (!v37)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  v6 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusRequestEndedTier1];
  v7 = [v4 pegasusRequestEndedTier1];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_57;
  }

  v38 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusRequestEndedTier1];
  if (v38)
  {
    v39 = v38;
    v40 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusRequestEndedTier1];
    v41 = [v4 pegasusRequestEndedTier1];
    v42 = [v40 isEqual:v41];

    if (!v42)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  v6 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusInfoDomainMultistepAndMultiturnExecutionReported];
  v7 = [v4 pegasusInfoDomainMultistepAndMultiturnExecutionReported];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_57;
  }

  v43 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusInfoDomainMultistepAndMultiturnExecutionReported];
  if (v43)
  {
    v44 = v43;
    v45 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusInfoDomainMultistepAndMultiturnExecutionReported];
    v46 = [v4 pegasusInfoDomainMultistepAndMultiturnExecutionReported];
    v47 = [v45 isEqual:v46];

    if (!v47)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  v6 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusAmpSafetyLoggingInfo];
  v7 = [v4 pegasusAmpSafetyLoggingInfo];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_57;
  }

  v48 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusAmpSafetyLoggingInfo];
  if (v48)
  {
    v49 = v48;
    v50 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusAmpSafetyLoggingInfo];
    v51 = [v4 pegasusAmpSafetyLoggingInfo];
    v52 = [v50 isEqual:v51];

    if (!v52)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  v6 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusAsrCorrectionInfo];
  v7 = [v4 pegasusAsrCorrectionInfo];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_57;
  }

  v53 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusAsrCorrectionInfo];
  if (v53)
  {
    v54 = v53;
    v55 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusAsrCorrectionInfo];
    v56 = [v4 pegasusAsrCorrectionInfo];
    v57 = [v55 isEqual:v56];

    if (!v57)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  v6 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusAmpPersonalizationLoggingInfo];
  v7 = [v4 pegasusAmpPersonalizationLoggingInfo];
  if ((v6 != 0) != (v7 == 0))
  {
    v58 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusAmpPersonalizationLoggingInfo];
    if (!v58)
    {

LABEL_61:
      v63 = 1;
      goto LABEL_59;
    }

    v59 = v58;
    v60 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusAmpPersonalizationLoggingInfo];
    v61 = [v4 pegasusAmpPersonalizationLoggingInfo];
    v62 = [v60 isEqual:v61];

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

- (void)writeTo:(id)a3
{
  v27 = a3;
  v4 = [(PEGASUSSchemaPEGASUSServerEvent *)self eventMetadata];

  if (v4)
  {
    v5 = [(PEGASUSSchemaPEGASUSServerEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusRequestContext];

  if (v6)
  {
    v7 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusRequestContext];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusRewrittenUtterancesReported];

  if (v8)
  {
    v9 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusRewrittenUtterancesReported];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusRewrittenUtterancesReportedTier1];

  if (v10)
  {
    v11 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusRewrittenUtterancesReportedTier1];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusUtteranceUnderstandingReported];

  if (v12)
  {
    v13 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusUtteranceUnderstandingReported];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusUtteranceUnderstandingReportedTier1];

  if (v14)
  {
    v15 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusUtteranceUnderstandingReportedTier1];
    PBDataWriterWriteSubmessage();
  }

  v16 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusRequestEndedTier1];

  if (v16)
  {
    v17 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusRequestEndedTier1];
    PBDataWriterWriteSubmessage();
  }

  v18 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusInfoDomainMultistepAndMultiturnExecutionReported];

  if (v18)
  {
    v19 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusInfoDomainMultistepAndMultiturnExecutionReported];
    PBDataWriterWriteSubmessage();
  }

  v20 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusAmpSafetyLoggingInfo];

  if (v20)
  {
    v21 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusAmpSafetyLoggingInfo];
    PBDataWriterWriteSubmessage();
  }

  v22 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusAsrCorrectionInfo];

  if (v22)
  {
    v23 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusAsrCorrectionInfo];
    PBDataWriterWriteSubmessage();
  }

  v24 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusAmpPersonalizationLoggingInfo];

  v25 = v27;
  if (v24)
  {
    v26 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusAmpPersonalizationLoggingInfo];
    PBDataWriterWriteSubmessage();

    v25 = v27;
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

- (void)setPegasusAmpPersonalizationLoggingInfo:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v14 = 0;
  }

  self->_whichEvent_Type = v14;
  pegasusAmpPersonalizationLoggingInfo = self->_pegasusAmpPersonalizationLoggingInfo;
  self->_pegasusAmpPersonalizationLoggingInfo = v4;
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

- (void)setPegasusAsrCorrectionInfo:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v14 = 0;
  }

  self->_whichEvent_Type = v14;
  pegasusAsrCorrectionInfo = self->_pegasusAsrCorrectionInfo;
  self->_pegasusAsrCorrectionInfo = v4;
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

- (void)setPegasusAmpSafetyLoggingInfo:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v14 = 0;
  }

  self->_whichEvent_Type = v14;
  pegasusAmpSafetyLoggingInfo = self->_pegasusAmpSafetyLoggingInfo;
  self->_pegasusAmpSafetyLoggingInfo = v4;
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

- (void)setPegasusInfoDomainMultistepAndMultiturnExecutionReported:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v14 = 0;
  }

  self->_whichEvent_Type = v14;
  pegasusInfoDomainMultistepAndMultiturnExecutionReported = self->_pegasusInfoDomainMultistepAndMultiturnExecutionReported;
  self->_pegasusInfoDomainMultistepAndMultiturnExecutionReported = v4;
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

- (void)setPegasusRequestEndedTier1:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v14 = 0;
  }

  self->_whichEvent_Type = v14;
  pegasusRequestEndedTier1 = self->_pegasusRequestEndedTier1;
  self->_pegasusRequestEndedTier1 = v4;
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

- (void)setPegasusUtteranceUnderstandingReportedTier1:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v14 = 0;
  }

  self->_whichEvent_Type = v14;
  pegasusUtteranceUnderstandingReportedTier1 = self->_pegasusUtteranceUnderstandingReportedTier1;
  self->_pegasusUtteranceUnderstandingReportedTier1 = v4;
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

- (void)setPegasusUtteranceUnderstandingReported:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v14 = 0;
  }

  self->_whichEvent_Type = v14;
  pegasusUtteranceUnderstandingReported = self->_pegasusUtteranceUnderstandingReported;
  self->_pegasusUtteranceUnderstandingReported = v4;
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

- (void)setPegasusRewrittenUtterancesReportedTier1:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v14 = 0;
  }

  self->_whichEvent_Type = v14;
  pegasusRewrittenUtterancesReportedTier1 = self->_pegasusRewrittenUtterancesReportedTier1;
  self->_pegasusRewrittenUtterancesReportedTier1 = v4;
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

- (void)setPegasusRewrittenUtterancesReported:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v14 = 0;
  }

  self->_whichEvent_Type = v14;
  pegasusRewrittenUtterancesReported = self->_pegasusRewrittenUtterancesReported;
  self->_pegasusRewrittenUtterancesReported = v4;
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

- (void)setPegasusRequestContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v14 = 0;
  }

  self->_whichEvent_Type = v14;
  pegasusRequestContext = self->_pegasusRequestContext;
  self->_pegasusRequestContext = v4;
}

- (id)qualifiedMessageName
{
  v2 = [(PEGASUSSchemaPEGASUSServerEvent *)self whichEvent_Type];
  if (v2 - 101 > 9)
  {
    return @"com.apple.aiml.siri.pegasus.PEGASUSServerEvent";
  }

  else
  {
    return off_1E78DFCC0[v2 - 101];
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v40.receiver = self;
  v40.super_class = PEGASUSSchemaPEGASUSServerEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v40 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:2])
  {
    [(PEGASUSSchemaPEGASUSServerEvent *)self deletePegasusRewrittenUtterancesReportedTier1];
    [(PEGASUSSchemaPEGASUSServerEvent *)self deletePegasusUtteranceUnderstandingReportedTier1];
    [(PEGASUSSchemaPEGASUSServerEvent *)self deletePegasusRequestEndedTier1];
    [(PEGASUSSchemaPEGASUSServerEvent *)self deletePegasusAsrCorrectionInfo];
  }

  if ([v4 isConditionSet:4])
  {
    [(PEGASUSSchemaPEGASUSServerEvent *)self deletePegasusRewrittenUtterancesReportedTier1];
    [(PEGASUSSchemaPEGASUSServerEvent *)self deletePegasusUtteranceUnderstandingReportedTier1];
    [(PEGASUSSchemaPEGASUSServerEvent *)self deletePegasusRequestEndedTier1];
    [(PEGASUSSchemaPEGASUSServerEvent *)self deletePegasusAsrCorrectionInfo];
  }

  if ([v4 isConditionSet:5])
  {
    [(PEGASUSSchemaPEGASUSServerEvent *)self deletePegasusRewrittenUtterancesReportedTier1];
    [(PEGASUSSchemaPEGASUSServerEvent *)self deletePegasusUtteranceUnderstandingReportedTier1];
    [(PEGASUSSchemaPEGASUSServerEvent *)self deletePegasusRequestEndedTier1];
    [(PEGASUSSchemaPEGASUSServerEvent *)self deletePegasusAsrCorrectionInfo];
  }

  if ([v4 isConditionSet:6])
  {
    [(PEGASUSSchemaPEGASUSServerEvent *)self deletePegasusRewrittenUtterancesReportedTier1];
    [(PEGASUSSchemaPEGASUSServerEvent *)self deletePegasusUtteranceUnderstandingReportedTier1];
    [(PEGASUSSchemaPEGASUSServerEvent *)self deletePegasusRequestEndedTier1];
    [(PEGASUSSchemaPEGASUSServerEvent *)self deletePegasusAsrCorrectionInfo];
  }

  if ([v4 isConditionSet:7])
  {
    [(PEGASUSSchemaPEGASUSServerEvent *)self deletePegasusRewrittenUtterancesReportedTier1];
    [(PEGASUSSchemaPEGASUSServerEvent *)self deletePegasusUtteranceUnderstandingReportedTier1];
    [(PEGASUSSchemaPEGASUSServerEvent *)self deletePegasusRequestEndedTier1];
    [(PEGASUSSchemaPEGASUSServerEvent *)self deletePegasusAsrCorrectionInfo];
  }

  v6 = [(PEGASUSSchemaPEGASUSServerEvent *)self eventMetadata];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(PEGASUSSchemaPEGASUSServerEvent *)self deleteEventMetadata];
  }

  v9 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusRequestContext];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(PEGASUSSchemaPEGASUSServerEvent *)self deletePegasusRequestContext];
  }

  v12 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusRewrittenUtterancesReported];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(PEGASUSSchemaPEGASUSServerEvent *)self deletePegasusRewrittenUtterancesReported];
  }

  v15 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusRewrittenUtterancesReportedTier1];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(PEGASUSSchemaPEGASUSServerEvent *)self deletePegasusRewrittenUtterancesReportedTier1];
  }

  v18 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusUtteranceUnderstandingReported];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(PEGASUSSchemaPEGASUSServerEvent *)self deletePegasusUtteranceUnderstandingReported];
  }

  v21 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusUtteranceUnderstandingReportedTier1];
  v22 = [v21 applySensitiveConditionsPolicy:v4];
  v23 = [v22 suppressMessage];

  if (v23)
  {
    [(PEGASUSSchemaPEGASUSServerEvent *)self deletePegasusUtteranceUnderstandingReportedTier1];
  }

  v24 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusRequestEndedTier1];
  v25 = [v24 applySensitiveConditionsPolicy:v4];
  v26 = [v25 suppressMessage];

  if (v26)
  {
    [(PEGASUSSchemaPEGASUSServerEvent *)self deletePegasusRequestEndedTier1];
  }

  v27 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusInfoDomainMultistepAndMultiturnExecutionReported];
  v28 = [v27 applySensitiveConditionsPolicy:v4];
  v29 = [v28 suppressMessage];

  if (v29)
  {
    [(PEGASUSSchemaPEGASUSServerEvent *)self deletePegasusInfoDomainMultistepAndMultiturnExecutionReported];
  }

  v30 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusAmpSafetyLoggingInfo];
  v31 = [v30 applySensitiveConditionsPolicy:v4];
  v32 = [v31 suppressMessage];

  if (v32)
  {
    [(PEGASUSSchemaPEGASUSServerEvent *)self deletePegasusAmpSafetyLoggingInfo];
  }

  v33 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusAsrCorrectionInfo];
  v34 = [v33 applySensitiveConditionsPolicy:v4];
  v35 = [v34 suppressMessage];

  if (v35)
  {
    [(PEGASUSSchemaPEGASUSServerEvent *)self deletePegasusAsrCorrectionInfo];
  }

  v36 = [(PEGASUSSchemaPEGASUSServerEvent *)self pegasusAmpPersonalizationLoggingInfo];
  v37 = [v36 applySensitiveConditionsPolicy:v4];
  v38 = [v37 suppressMessage];

  if (v38)
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
  v2 = [(PEGASUSSchemaPEGASUSServerEvent *)self eventMetadata];
  v3 = [v2 pegasusId];

  if (v3)
  {
    v4 = [v3 value];
    if (v4)
    {
      v5 = [v3 value];
      v6 = [v5 length];

      if (v6)
      {
        LODWORD(v4) = 24;
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
  v2 = [(PEGASUSSchemaPEGASUSServerEvent *)self eventMetadata];
  v3 = [v2 pegasusId];

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
  v3 = [(PEGASUSSchemaPEGASUSServerEvent *)self whichEvent_Type];
  if (v3 - 101 > 9)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78EA8D8[v3 - 101]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)a3
{
  if (a3 - 101 > 9)
  {
    return 0;
  }

  else
  {
    return off_1E78EA928[a3 - 101];
  }
}

@end