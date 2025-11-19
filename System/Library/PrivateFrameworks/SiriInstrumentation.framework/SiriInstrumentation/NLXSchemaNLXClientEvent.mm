@interface NLXSchemaNLXClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (NLXSchemaCDMAllServicesSetupContext)cdmAllServicesSetupContext;
- (NLXSchemaCDMAllServicesWarmupContext)cdmAllServicesWarmupContext;
- (NLXSchemaCDMAssetSetupContext)cdmAssetSetupContext;
- (NLXSchemaCDMAssetsReported)cdmAssetsReported;
- (NLXSchemaCDMClientSetupContext)cdmClientSetupContext;
- (NLXSchemaCDMClientWarmupContext)cdmClientWarmupContext;
- (NLXSchemaCDMContextUpdateEnded)cdmContextUpdateEnded;
- (NLXSchemaCDMDelegatedUserDialogActTier1)cdmDelegatedUserDialogActTier1;
- (NLXSchemaCDMMatchingSpanEnded)cdmMatchingSpanEnded;
- (NLXSchemaCDMMatchingSpanEndedTier1)cdmMatchingSpanEndedTier1;
- (NLXSchemaCDMMatchingSpanTier1)cdmMatchingSpanTier1;
- (NLXSchemaCDMRequestContext)cdmRequestContext;
- (NLXSchemaCDMServiceContext)cdmServiceContext;
- (NLXSchemaCDMServiceHandleMetricsReported)cdmServiceHandleMetricsReported;
- (NLXSchemaCDMServiceSetupMetricsReported)cdmServiceSetupMetricsReported;
- (NLXSchemaCDMSetupLink)cdmSetupLink;
- (NLXSchemaCDMSetupMissingAssetsDetected)cdmSetupMissingAssetsDetected;
- (NLXSchemaCDMSingleServiceSetupAttemptContext)cdmSingleServiceSetupAttemptContext;
- (NLXSchemaCDMSingleServiceSetupAttemptFailed)cdmSingleServiceSetupAttemptFailed;
- (NLXSchemaCDMSingleServiceWarmupAttemptContext)cdmSingleServiceWarmupAttemptContext;
- (NLXSchemaCDMSingleServiceWarmupAttemptFailed)cdmSingleServiceWarmupAttemptFailed;
- (NLXSchemaCDMSpanMatcherContext)cdmSpanMatcherContext;
- (NLXSchemaCDMSystemDialogActTier1)cdmSystemDialogActTier1;
- (NLXSchemaCDMTokenizationEnded)cdmTokenizationEnded;
- (NLXSchemaCDMUsoGraphTier1)cdmUsoGraphTier1;
- (NLXSchemaCDMXPCEventProcessingContext)cdmXpcEventProcessingContext;
- (NLXSchemaMARRSContextualSpanMatcherEnded)marrsContextualSpanMatcherEnded;
- (NLXSchemaMARRSContextualSpanMatcherEndedTier1)marrsContextualSpanMatcherEndedTier1;
- (NLXSchemaMARRSMentionDetectorEnded)marrsMentionDetectorEnded;
- (NLXSchemaMARRSMentionDetectorEndedTier1)marrsMentionDetectorEndedTier1;
- (NLXSchemaMARRSMentionResolverEnded)marrsMentionResolverEnded;
- (NLXSchemaMARRSMentionResolverEndedTier1)marrsMentionResolverEndedTier1;
- (NLXSchemaMARRSQueryRewriteContext)marrsQueryRewriteContext;
- (NLXSchemaMARRSQueryRewriteEvaluatedTier1)marrsQueryRewriteEvaluatedTier1;
- (NLXSchemaMARRSRepetitionDetectionContext)marrsRepetitionDetectionContext;
- (NLXSchemaMILAssetAcquisitionContext)milAssetAcquisitionContext;
- (NLXSchemaNLXClientEvent)initWithDictionary:(id)a3;
- (NLXSchemaNLXClientEvent)initWithJSON:(id)a3;
- (NLXSchemaNLXCurareContext)nlxCurareContext;
- (NLXSchemaNLXDeviceFixedContext)nlxDeviceFixedContext;
- (NLXSchemaNLXLegacyNLContextTier1)nlxLegacyNLContextTier1;
- (NLXSchemaSSUBackgroundUpdateContext)ssuBackgroundRequestContext;
- (NLXSchemaSSUUserRequestContext)ssuUserRequestContext;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (unint64_t)hash;
- (void)deleteCdmAllServicesSetupContext;
- (void)deleteCdmAllServicesWarmupContext;
- (void)deleteCdmAssetSetupContext;
- (void)deleteCdmAssetsReported;
- (void)deleteCdmClientSetupContext;
- (void)deleteCdmClientWarmupContext;
- (void)deleteCdmContextUpdateEnded;
- (void)deleteCdmDelegatedUserDialogActTier1;
- (void)deleteCdmMatchingSpanEnded;
- (void)deleteCdmMatchingSpanEndedTier1;
- (void)deleteCdmMatchingSpanTier1;
- (void)deleteCdmRequestContext;
- (void)deleteCdmServiceContext;
- (void)deleteCdmServiceHandleMetricsReported;
- (void)deleteCdmServiceSetupMetricsReported;
- (void)deleteCdmSetupLink;
- (void)deleteCdmSetupMissingAssetsDetected;
- (void)deleteCdmSingleServiceSetupAttemptContext;
- (void)deleteCdmSingleServiceSetupAttemptFailed;
- (void)deleteCdmSingleServiceWarmupAttemptContext;
- (void)deleteCdmSingleServiceWarmupAttemptFailed;
- (void)deleteCdmSpanMatcherContext;
- (void)deleteCdmSystemDialogActTier1;
- (void)deleteCdmTokenizationEnded;
- (void)deleteCdmUsoGraphTier1;
- (void)deleteCdmXpcEventProcessingContext;
- (void)deleteMarrsContextualSpanMatcherEnded;
- (void)deleteMarrsContextualSpanMatcherEndedTier1;
- (void)deleteMarrsMentionDetectorEnded;
- (void)deleteMarrsMentionDetectorEndedTier1;
- (void)deleteMarrsMentionResolverEnded;
- (void)deleteMarrsMentionResolverEndedTier1;
- (void)deleteMarrsQueryRewriteContext;
- (void)deleteMarrsQueryRewriteEvaluatedTier1;
- (void)deleteMarrsRepetitionDetectionContext;
- (void)deleteMilAssetAcquisitionContext;
- (void)deleteNlxCurareContext;
- (void)deleteNlxDeviceFixedContext;
- (void)deleteNlxLegacyNLContextTier1;
- (void)deleteSsuBackgroundRequestContext;
- (void)deleteSsuUserRequestContext;
- (void)setCdmAllServicesSetupContext:(id)a3;
- (void)setCdmAllServicesWarmupContext:(id)a3;
- (void)setCdmAssetSetupContext:(id)a3;
- (void)setCdmAssetsReported:(id)a3;
- (void)setCdmClientSetupContext:(id)a3;
- (void)setCdmClientWarmupContext:(id)a3;
- (void)setCdmContextUpdateEnded:(id)a3;
- (void)setCdmDelegatedUserDialogActTier1:(id)a3;
- (void)setCdmMatchingSpanEnded:(id)a3;
- (void)setCdmMatchingSpanEndedTier1:(id)a3;
- (void)setCdmMatchingSpanTier1:(id)a3;
- (void)setCdmRequestContext:(id)a3;
- (void)setCdmServiceContext:(id)a3;
- (void)setCdmServiceHandleMetricsReported:(id)a3;
- (void)setCdmServiceSetupMetricsReported:(id)a3;
- (void)setCdmSetupLink:(id)a3;
- (void)setCdmSetupMissingAssetsDetected:(id)a3;
- (void)setCdmSingleServiceSetupAttemptContext:(id)a3;
- (void)setCdmSingleServiceSetupAttemptFailed:(id)a3;
- (void)setCdmSingleServiceWarmupAttemptContext:(id)a3;
- (void)setCdmSingleServiceWarmupAttemptFailed:(id)a3;
- (void)setCdmSpanMatcherContext:(id)a3;
- (void)setCdmSystemDialogActTier1:(id)a3;
- (void)setCdmTokenizationEnded:(id)a3;
- (void)setCdmUsoGraphTier1:(id)a3;
- (void)setCdmXpcEventProcessingContext:(id)a3;
- (void)setMarrsContextualSpanMatcherEnded:(id)a3;
- (void)setMarrsContextualSpanMatcherEndedTier1:(id)a3;
- (void)setMarrsMentionDetectorEnded:(id)a3;
- (void)setMarrsMentionDetectorEndedTier1:(id)a3;
- (void)setMarrsMentionResolverEnded:(id)a3;
- (void)setMarrsMentionResolverEndedTier1:(id)a3;
- (void)setMarrsQueryRewriteContext:(id)a3;
- (void)setMarrsQueryRewriteEvaluatedTier1:(id)a3;
- (void)setMarrsRepetitionDetectionContext:(id)a3;
- (void)setMilAssetAcquisitionContext:(id)a3;
- (void)setNlxCurareContext:(id)a3;
- (void)setNlxDeviceFixedContext:(id)a3;
- (void)setNlxLegacyNLContextTier1:(id)a3;
- (void)setSsuBackgroundRequestContext:(id)a3;
- (void)setSsuUserRequestContext:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NLXSchemaNLXClientEvent

- (NLXSchemaCDMXPCEventProcessingContext)cdmXpcEventProcessingContext
{
  if (self->_whichEvent_Type == 128)
  {
    v3 = self->_cdmXpcEventProcessingContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)qualifiedMessageName
{
  v2 = [(NLXSchemaNLXClientEvent *)self whichEvent_Type];
  if (v2 - 101 > 0x28)
  {
    return @"com.apple.aiml.siri.nlx.NLXClientEvent";
  }

  else
  {
    return off_1E78DC6B8[v2 - 101];
  }
}

- (NLXSchemaCDMClientSetupContext)cdmClientSetupContext
{
  if (self->_whichEvent_Type == 121)
  {
    v3 = self->_cdmClientSetupContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NLXSchemaCDMRequestContext)cdmRequestContext
{
  if (self->_whichEvent_Type == 102)
  {
    v3 = self->_cdmRequestContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NLXSchemaNLXDeviceFixedContext)nlxDeviceFixedContext
{
  if (self->_whichEvent_Type == 103)
  {
    v3 = self->_nlxDeviceFixedContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NLXSchemaCDMMatchingSpanEnded)cdmMatchingSpanEnded
{
  if (self->_whichEvent_Type == 104)
  {
    v3 = self->_cdmMatchingSpanEnded;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NLXSchemaCDMUsoGraphTier1)cdmUsoGraphTier1
{
  if (self->_whichEvent_Type == 105)
  {
    v3 = self->_cdmUsoGraphTier1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NLXSchemaCDMMatchingSpanTier1)cdmMatchingSpanTier1
{
  if (self->_whichEvent_Type == 106)
  {
    v3 = self->_cdmMatchingSpanTier1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NLXSchemaNLXLegacyNLContextTier1)nlxLegacyNLContextTier1
{
  if (self->_whichEvent_Type == 107)
  {
    v3 = self->_nlxLegacyNLContextTier1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NLXSchemaCDMDelegatedUserDialogActTier1)cdmDelegatedUserDialogActTier1
{
  if (self->_whichEvent_Type == 108)
  {
    v3 = self->_cdmDelegatedUserDialogActTier1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NLXSchemaCDMSystemDialogActTier1)cdmSystemDialogActTier1
{
  if (self->_whichEvent_Type == 109)
  {
    v3 = self->_cdmSystemDialogActTier1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NLXSchemaCDMTokenizationEnded)cdmTokenizationEnded
{
  if (self->_whichEvent_Type == 110)
  {
    v3 = self->_cdmTokenizationEnded;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NLXSchemaCDMContextUpdateEnded)cdmContextUpdateEnded
{
  if (self->_whichEvent_Type == 111)
  {
    v3 = self->_cdmContextUpdateEnded;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NLXSchemaMARRSRepetitionDetectionContext)marrsRepetitionDetectionContext
{
  if (self->_whichEvent_Type == 112)
  {
    v3 = self->_marrsRepetitionDetectionContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NLXSchemaMARRSQueryRewriteContext)marrsQueryRewriteContext
{
  if (self->_whichEvent_Type == 113)
  {
    v3 = self->_marrsQueryRewriteContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NLXSchemaMARRSQueryRewriteEvaluatedTier1)marrsQueryRewriteEvaluatedTier1
{
  if (self->_whichEvent_Type == 114)
  {
    v3 = self->_marrsQueryRewriteEvaluatedTier1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NLXSchemaCDMMatchingSpanEndedTier1)cdmMatchingSpanEndedTier1
{
  if (self->_whichEvent_Type == 115)
  {
    v3 = self->_cdmMatchingSpanEndedTier1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NLXSchemaNLXCurareContext)nlxCurareContext
{
  if (self->_whichEvent_Type == 116)
  {
    v3 = self->_nlxCurareContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NLXSchemaMARRSMentionDetectorEnded)marrsMentionDetectorEnded
{
  if (self->_whichEvent_Type == 117)
  {
    v3 = self->_marrsMentionDetectorEnded;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NLXSchemaMARRSMentionDetectorEndedTier1)marrsMentionDetectorEndedTier1
{
  if (self->_whichEvent_Type == 118)
  {
    v3 = self->_marrsMentionDetectorEndedTier1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NLXSchemaMARRSMentionResolverEnded)marrsMentionResolverEnded
{
  if (self->_whichEvent_Type == 119)
  {
    v3 = self->_marrsMentionResolverEnded;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NLXSchemaMARRSMentionResolverEndedTier1)marrsMentionResolverEndedTier1
{
  if (self->_whichEvent_Type == 120)
  {
    v3 = self->_marrsMentionResolverEndedTier1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NLXSchemaCDMAllServicesSetupContext)cdmAllServicesSetupContext
{
  if (self->_whichEvent_Type == 122)
  {
    v3 = self->_cdmAllServicesSetupContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NLXSchemaCDMSingleServiceSetupAttemptContext)cdmSingleServiceSetupAttemptContext
{
  if (self->_whichEvent_Type == 123)
  {
    v3 = self->_cdmSingleServiceSetupAttemptContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NLXSchemaCDMSingleServiceSetupAttemptFailed)cdmSingleServiceSetupAttemptFailed
{
  if (self->_whichEvent_Type == 124)
  {
    v3 = self->_cdmSingleServiceSetupAttemptFailed;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NLXSchemaCDMSpanMatcherContext)cdmSpanMatcherContext
{
  if (self->_whichEvent_Type == 125)
  {
    v3 = self->_cdmSpanMatcherContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NLXSchemaCDMAssetSetupContext)cdmAssetSetupContext
{
  if (self->_whichEvent_Type == 129)
  {
    v3 = self->_cdmAssetSetupContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NLXSchemaMARRSContextualSpanMatcherEnded)marrsContextualSpanMatcherEnded
{
  if (self->_whichEvent_Type == 126)
  {
    v3 = self->_marrsContextualSpanMatcherEnded;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NLXSchemaMARRSContextualSpanMatcherEndedTier1)marrsContextualSpanMatcherEndedTier1
{
  if (self->_whichEvent_Type == 127)
  {
    v3 = self->_marrsContextualSpanMatcherEndedTier1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NLXSchemaCDMServiceContext)cdmServiceContext
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_cdmServiceContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NLXSchemaSSUBackgroundUpdateContext)ssuBackgroundRequestContext
{
  if (self->_whichEvent_Type == 137)
  {
    v3 = self->_ssuBackgroundRequestContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NLXSchemaMILAssetAcquisitionContext)milAssetAcquisitionContext
{
  if (self->_whichEvent_Type == 140)
  {
    v3 = self->_milAssetAcquisitionContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NLXSchemaCDMSetupMissingAssetsDetected)cdmSetupMissingAssetsDetected
{
  if (self->_whichEvent_Type == 130)
  {
    v3 = self->_cdmSetupMissingAssetsDetected;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NLXSchemaCDMAllServicesWarmupContext)cdmAllServicesWarmupContext
{
  if (self->_whichEvent_Type == 132)
  {
    v3 = self->_cdmAllServicesWarmupContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NLXSchemaCDMSetupLink)cdmSetupLink
{
  if (self->_whichEvent_Type == 141)
  {
    v3 = self->_cdmSetupLink;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NLXSchemaCDMClientWarmupContext)cdmClientWarmupContext
{
  if (self->_whichEvent_Type == 131)
  {
    v3 = self->_cdmClientWarmupContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NLXSchemaCDMSingleServiceWarmupAttemptContext)cdmSingleServiceWarmupAttemptContext
{
  if (self->_whichEvent_Type == 133)
  {
    v3 = self->_cdmSingleServiceWarmupAttemptContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NLXSchemaCDMSingleServiceWarmupAttemptFailed)cdmSingleServiceWarmupAttemptFailed
{
  if (self->_whichEvent_Type == 134)
  {
    v3 = self->_cdmSingleServiceWarmupAttemptFailed;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NLXSchemaCDMServiceHandleMetricsReported)cdmServiceHandleMetricsReported
{
  if (self->_whichEvent_Type == 138)
  {
    v3 = self->_cdmServiceHandleMetricsReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NLXSchemaCDMAssetsReported)cdmAssetsReported
{
  if (self->_whichEvent_Type == 135)
  {
    v3 = self->_cdmAssetsReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NLXSchemaSSUUserRequestContext)ssuUserRequestContext
{
  if (self->_whichEvent_Type == 136)
  {
    v3 = self->_ssuUserRequestContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NLXSchemaCDMServiceSetupMetricsReported)cdmServiceSetupMetricsReported
{
  if (self->_whichEvent_Type == 139)
  {
    v3 = self->_cdmServiceSetupMetricsReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NLXSchemaNLXClientEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v127.receiver = self;
  v127.super_class = NLXSchemaNLXClientEvent;
  v5 = [(NLXSchemaNLXClientEvent *)&v127 init];

  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[NLXSchemaNLXClientEventMetadata alloc] initWithDictionary:v6];
      [(NLXSchemaNLXClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"cdmServiceContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[NLXSchemaCDMServiceContext alloc] initWithDictionary:v8];
      [(NLXSchemaNLXClientEvent *)v5 setCdmServiceContext:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"cdmRequestContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[NLXSchemaCDMRequestContext alloc] initWithDictionary:v10];
      [(NLXSchemaNLXClientEvent *)v5 setCdmRequestContext:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"nlxDeviceFixedContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[NLXSchemaNLXDeviceFixedContext alloc] initWithDictionary:v12];
      [(NLXSchemaNLXClientEvent *)v5 setNlxDeviceFixedContext:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"cdmMatchingSpanEnded"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[NLXSchemaCDMMatchingSpanEnded alloc] initWithDictionary:v14];
      [(NLXSchemaNLXClientEvent *)v5 setCdmMatchingSpanEnded:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"cdmUsoGraphTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[NLXSchemaCDMUsoGraphTier1 alloc] initWithDictionary:v16];
      [(NLXSchemaNLXClientEvent *)v5 setCdmUsoGraphTier1:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"cdmMatchingSpanTier1"];
    objc_opt_class();
    v126 = v18;
    if (objc_opt_isKindOfClass())
    {
      v19 = [[NLXSchemaCDMMatchingSpanTier1 alloc] initWithDictionary:v18];
      [(NLXSchemaNLXClientEvent *)v5 setCdmMatchingSpanTier1:v19];
    }

    v20 = [v4 objectForKeyedSubscript:@"nlxLegacyNLContextTier1"];
    objc_opt_class();
    v125 = v20;
    if (objc_opt_isKindOfClass())
    {
      v21 = [[NLXSchemaNLXLegacyNLContextTier1 alloc] initWithDictionary:v20];
      [(NLXSchemaNLXClientEvent *)v5 setNlxLegacyNLContextTier1:v21];
    }

    v22 = [v4 objectForKeyedSubscript:@"cdmDelegatedUserDialogActTier1"];
    objc_opt_class();
    v124 = v22;
    if (objc_opt_isKindOfClass())
    {
      v23 = [[NLXSchemaCDMDelegatedUserDialogActTier1 alloc] initWithDictionary:v22];
      [(NLXSchemaNLXClientEvent *)v5 setCdmDelegatedUserDialogActTier1:v23];
    }

    v24 = [v4 objectForKeyedSubscript:@"cdmSystemDialogActTier1"];
    objc_opt_class();
    v123 = v24;
    if (objc_opt_isKindOfClass())
    {
      v25 = [[NLXSchemaCDMSystemDialogActTier1 alloc] initWithDictionary:v24];
      [(NLXSchemaNLXClientEvent *)v5 setCdmSystemDialogActTier1:v25];
    }

    v26 = [v4 objectForKeyedSubscript:@"cdmTokenizationEnded"];
    objc_opt_class();
    v122 = v26;
    if (objc_opt_isKindOfClass())
    {
      v27 = [[NLXSchemaCDMTokenizationEnded alloc] initWithDictionary:v26];
      [(NLXSchemaNLXClientEvent *)v5 setCdmTokenizationEnded:v27];
    }

    v28 = [v4 objectForKeyedSubscript:@"cdmContextUpdateEnded"];
    objc_opt_class();
    v121 = v28;
    if (objc_opt_isKindOfClass())
    {
      v29 = [[NLXSchemaCDMContextUpdateEnded alloc] initWithDictionary:v28];
      [(NLXSchemaNLXClientEvent *)v5 setCdmContextUpdateEnded:v29];
    }

    v30 = [v4 objectForKeyedSubscript:@"marrsRepetitionDetectionContext"];
    objc_opt_class();
    v120 = v30;
    if (objc_opt_isKindOfClass())
    {
      v31 = [[NLXSchemaMARRSRepetitionDetectionContext alloc] initWithDictionary:v30];
      [(NLXSchemaNLXClientEvent *)v5 setMarrsRepetitionDetectionContext:v31];
    }

    v32 = [v4 objectForKeyedSubscript:@"marrsQueryRewriteContext"];
    objc_opt_class();
    v119 = v32;
    if (objc_opt_isKindOfClass())
    {
      v33 = [[NLXSchemaMARRSQueryRewriteContext alloc] initWithDictionary:v32];
      [(NLXSchemaNLXClientEvent *)v5 setMarrsQueryRewriteContext:v33];
    }

    v34 = [v4 objectForKeyedSubscript:@"marrsQueryRewriteEvaluatedTier1"];
    objc_opt_class();
    v118 = v34;
    if (objc_opt_isKindOfClass())
    {
      v35 = [[NLXSchemaMARRSQueryRewriteEvaluatedTier1 alloc] initWithDictionary:v34];
      [(NLXSchemaNLXClientEvent *)v5 setMarrsQueryRewriteEvaluatedTier1:v35];
    }

    v36 = [v4 objectForKeyedSubscript:@"cdmMatchingSpanEndedTier1"];
    objc_opt_class();
    v117 = v36;
    if (objc_opt_isKindOfClass())
    {
      v37 = [[NLXSchemaCDMMatchingSpanEndedTier1 alloc] initWithDictionary:v36];
      [(NLXSchemaNLXClientEvent *)v5 setCdmMatchingSpanEndedTier1:v37];
    }

    v38 = [v4 objectForKeyedSubscript:@"nlxCurareContext"];
    objc_opt_class();
    v116 = v38;
    if (objc_opt_isKindOfClass())
    {
      v39 = [[NLXSchemaNLXCurareContext alloc] initWithDictionary:v38];
      [(NLXSchemaNLXClientEvent *)v5 setNlxCurareContext:v39];
    }

    v40 = [v4 objectForKeyedSubscript:@"marrsMentionDetectorEnded"];
    objc_opt_class();
    v115 = v40;
    if (objc_opt_isKindOfClass())
    {
      v41 = [[NLXSchemaMARRSMentionDetectorEnded alloc] initWithDictionary:v40];
      [(NLXSchemaNLXClientEvent *)v5 setMarrsMentionDetectorEnded:v41];
    }

    v42 = [v4 objectForKeyedSubscript:@"marrsMentionDetectorEndedTier1"];
    objc_opt_class();
    v114 = v42;
    if (objc_opt_isKindOfClass())
    {
      v43 = [[NLXSchemaMARRSMentionDetectorEndedTier1 alloc] initWithDictionary:v42];
      [(NLXSchemaNLXClientEvent *)v5 setMarrsMentionDetectorEndedTier1:v43];
    }

    v44 = [v4 objectForKeyedSubscript:@"marrsMentionResolverEnded"];
    objc_opt_class();
    v113 = v44;
    if (objc_opt_isKindOfClass())
    {
      v45 = [[NLXSchemaMARRSMentionResolverEnded alloc] initWithDictionary:v44];
      [(NLXSchemaNLXClientEvent *)v5 setMarrsMentionResolverEnded:v45];
    }

    v46 = [v4 objectForKeyedSubscript:@"marrsMentionResolverEndedTier1"];
    objc_opt_class();
    v112 = v46;
    if (objc_opt_isKindOfClass())
    {
      v47 = [[NLXSchemaMARRSMentionResolverEndedTier1 alloc] initWithDictionary:v46];
      [(NLXSchemaNLXClientEvent *)v5 setMarrsMentionResolverEndedTier1:v47];
    }

    v48 = [v4 objectForKeyedSubscript:@"cdmClientSetupContext"];
    objc_opt_class();
    v111 = v48;
    if (objc_opt_isKindOfClass())
    {
      v49 = [[NLXSchemaCDMClientSetupContext alloc] initWithDictionary:v48];
      [(NLXSchemaNLXClientEvent *)v5 setCdmClientSetupContext:v49];
    }

    v50 = [v4 objectForKeyedSubscript:@"cdmAllServicesSetupContext"];
    objc_opt_class();
    v110 = v50;
    if (objc_opt_isKindOfClass())
    {
      v51 = [[NLXSchemaCDMAllServicesSetupContext alloc] initWithDictionary:v50];
      [(NLXSchemaNLXClientEvent *)v5 setCdmAllServicesSetupContext:v51];
    }

    v52 = [v4 objectForKeyedSubscript:@"cdmSingleServiceSetupAttemptContext"];
    objc_opt_class();
    v109 = v52;
    if (objc_opt_isKindOfClass())
    {
      v53 = [[NLXSchemaCDMSingleServiceSetupAttemptContext alloc] initWithDictionary:v52];
      [(NLXSchemaNLXClientEvent *)v5 setCdmSingleServiceSetupAttemptContext:v53];
    }

    v54 = [v4 objectForKeyedSubscript:@"cdmSingleServiceSetupAttemptFailed"];
    objc_opt_class();
    v108 = v54;
    if (objc_opt_isKindOfClass())
    {
      v55 = [[NLXSchemaCDMSingleServiceSetupAttemptFailed alloc] initWithDictionary:v54];
      [(NLXSchemaNLXClientEvent *)v5 setCdmSingleServiceSetupAttemptFailed:v55];
    }

    v56 = [v4 objectForKeyedSubscript:@"cdmSpanMatcherContext"];
    objc_opt_class();
    v107 = v56;
    if (objc_opt_isKindOfClass())
    {
      v57 = [[NLXSchemaCDMSpanMatcherContext alloc] initWithDictionary:v56];
      [(NLXSchemaNLXClientEvent *)v5 setCdmSpanMatcherContext:v57];
    }

    v58 = [v4 objectForKeyedSubscript:@"marrsContextualSpanMatcherEnded"];
    objc_opt_class();
    v106 = v58;
    if (objc_opt_isKindOfClass())
    {
      v59 = [[NLXSchemaMARRSContextualSpanMatcherEnded alloc] initWithDictionary:v58];
      [(NLXSchemaNLXClientEvent *)v5 setMarrsContextualSpanMatcherEnded:v59];
    }

    v60 = [v4 objectForKeyedSubscript:@"marrsContextualSpanMatcherEndedTier1"];
    objc_opt_class();
    v105 = v60;
    if (objc_opt_isKindOfClass())
    {
      v61 = [[NLXSchemaMARRSContextualSpanMatcherEndedTier1 alloc] initWithDictionary:v60];
      [(NLXSchemaNLXClientEvent *)v5 setMarrsContextualSpanMatcherEndedTier1:v61];
    }

    v62 = [v4 objectForKeyedSubscript:@"cdmXpcEventProcessingContext"];
    objc_opt_class();
    v104 = v62;
    if (objc_opt_isKindOfClass())
    {
      v63 = [[NLXSchemaCDMXPCEventProcessingContext alloc] initWithDictionary:v62];
      [(NLXSchemaNLXClientEvent *)v5 setCdmXpcEventProcessingContext:v63];
    }

    v64 = [v4 objectForKeyedSubscript:@"cdmAssetSetupContext"];
    objc_opt_class();
    v103 = v64;
    if (objc_opt_isKindOfClass())
    {
      v65 = [[NLXSchemaCDMAssetSetupContext alloc] initWithDictionary:v64];
      [(NLXSchemaNLXClientEvent *)v5 setCdmAssetSetupContext:v65];
    }

    v66 = [v4 objectForKeyedSubscript:@"cdmSetupMissingAssetsDetected"];
    objc_opt_class();
    v102 = v66;
    if (objc_opt_isKindOfClass())
    {
      v67 = [[NLXSchemaCDMSetupMissingAssetsDetected alloc] initWithDictionary:v66];
      [(NLXSchemaNLXClientEvent *)v5 setCdmSetupMissingAssetsDetected:v67];
    }

    v68 = [v4 objectForKeyedSubscript:@"cdmClientWarmupContext"];
    objc_opt_class();
    v101 = v68;
    if (objc_opt_isKindOfClass())
    {
      v69 = [[NLXSchemaCDMClientWarmupContext alloc] initWithDictionary:v68];
      [(NLXSchemaNLXClientEvent *)v5 setCdmClientWarmupContext:v69];
    }

    v70 = [v4 objectForKeyedSubscript:@"cdmAllServicesWarmupContext"];
    objc_opt_class();
    v100 = v70;
    if (objc_opt_isKindOfClass())
    {
      v71 = [[NLXSchemaCDMAllServicesWarmupContext alloc] initWithDictionary:v70];
      [(NLXSchemaNLXClientEvent *)v5 setCdmAllServicesWarmupContext:v71];
    }

    v72 = [v4 objectForKeyedSubscript:@"cdmSingleServiceWarmupAttemptContext"];
    objc_opt_class();
    v99 = v72;
    if (objc_opt_isKindOfClass())
    {
      v73 = [[NLXSchemaCDMSingleServiceWarmupAttemptContext alloc] initWithDictionary:v72];
      [(NLXSchemaNLXClientEvent *)v5 setCdmSingleServiceWarmupAttemptContext:v73];
    }

    v97 = v8;
    v74 = [v4 objectForKeyedSubscript:@"cdmSingleServiceWarmupAttemptFailed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v75 = [[NLXSchemaCDMSingleServiceWarmupAttemptFailed alloc] initWithDictionary:v74];
      [(NLXSchemaNLXClientEvent *)v5 setCdmSingleServiceWarmupAttemptFailed:v75];
    }

    v96 = v10;
    v76 = [v4 objectForKeyedSubscript:{@"cdmAssetsReported", v74}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v77 = [[NLXSchemaCDMAssetsReported alloc] initWithDictionary:v76];
      [(NLXSchemaNLXClientEvent *)v5 setCdmAssetsReported:v77];
    }

    v95 = v12;
    v78 = [v4 objectForKeyedSubscript:@"ssuUserRequestContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v79 = [[NLXSchemaSSUUserRequestContext alloc] initWithDictionary:v78];
      [(NLXSchemaNLXClientEvent *)v5 setSsuUserRequestContext:v79];
    }

    v94 = v14;
    v80 = [v4 objectForKeyedSubscript:@"ssuBackgroundRequestContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v81 = [[NLXSchemaSSUBackgroundUpdateContext alloc] initWithDictionary:v80];
      [(NLXSchemaNLXClientEvent *)v5 setSsuBackgroundRequestContext:v81];
    }

    v93 = v16;
    v82 = [v4 objectForKeyedSubscript:@"cdmServiceHandleMetricsReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v83 = [[NLXSchemaCDMServiceHandleMetricsReported alloc] initWithDictionary:v82];
      [(NLXSchemaNLXClientEvent *)v5 setCdmServiceHandleMetricsReported:v83];
    }

    v98 = v6;
    v84 = [v4 objectForKeyedSubscript:@"cdmServiceSetupMetricsReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v85 = [[NLXSchemaCDMServiceSetupMetricsReported alloc] initWithDictionary:v84];
      [(NLXSchemaNLXClientEvent *)v5 setCdmServiceSetupMetricsReported:v85];
    }

    v86 = [v4 objectForKeyedSubscript:@"milAssetAcquisitionContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v87 = [[NLXSchemaMILAssetAcquisitionContext alloc] initWithDictionary:v86];
      [(NLXSchemaNLXClientEvent *)v5 setMilAssetAcquisitionContext:v87];
    }

    v88 = [v4 objectForKeyedSubscript:@"cdmSetupLink"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v89 = [[NLXSchemaCDMSetupLink alloc] initWithDictionary:v88];
      [(NLXSchemaNLXClientEvent *)v5 setCdmSetupLink:v89];
    }

    v90 = v5;
  }

  return v5;
}

- (NLXSchemaNLXClientEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(NLXSchemaNLXClientEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(NLXSchemaNLXClientEvent *)self dictionaryRepresentation];
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
  if (self->_cdmAllServicesSetupContext)
  {
    v4 = [(NLXSchemaNLXClientEvent *)self cdmAllServicesSetupContext];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"cdmAllServicesSetupContext"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"cdmAllServicesSetupContext"];
    }
  }

  if (self->_cdmAllServicesWarmupContext)
  {
    v7 = [(NLXSchemaNLXClientEvent *)self cdmAllServicesWarmupContext];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"cdmAllServicesWarmupContext"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"cdmAllServicesWarmupContext"];
    }
  }

  if (self->_cdmAssetSetupContext)
  {
    v10 = [(NLXSchemaNLXClientEvent *)self cdmAssetSetupContext];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"cdmAssetSetupContext"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"cdmAssetSetupContext"];
    }
  }

  if (self->_cdmAssetsReported)
  {
    v13 = [(NLXSchemaNLXClientEvent *)self cdmAssetsReported];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"cdmAssetsReported"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"cdmAssetsReported"];
    }
  }

  if (self->_cdmClientSetupContext)
  {
    v16 = [(NLXSchemaNLXClientEvent *)self cdmClientSetupContext];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"cdmClientSetupContext"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"cdmClientSetupContext"];
    }
  }

  if (self->_cdmClientWarmupContext)
  {
    v19 = [(NLXSchemaNLXClientEvent *)self cdmClientWarmupContext];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"cdmClientWarmupContext"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"cdmClientWarmupContext"];
    }
  }

  if (self->_cdmContextUpdateEnded)
  {
    v22 = [(NLXSchemaNLXClientEvent *)self cdmContextUpdateEnded];
    v23 = [v22 dictionaryRepresentation];
    if (v23)
    {
      [v3 setObject:v23 forKeyedSubscript:@"cdmContextUpdateEnded"];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v24 forKeyedSubscript:@"cdmContextUpdateEnded"];
    }
  }

  if (self->_cdmDelegatedUserDialogActTier1)
  {
    v25 = [(NLXSchemaNLXClientEvent *)self cdmDelegatedUserDialogActTier1];
    v26 = [v25 dictionaryRepresentation];
    if (v26)
    {
      [v3 setObject:v26 forKeyedSubscript:@"cdmDelegatedUserDialogActTier1"];
    }

    else
    {
      v27 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v27 forKeyedSubscript:@"cdmDelegatedUserDialogActTier1"];
    }
  }

  if (self->_cdmMatchingSpanEnded)
  {
    v28 = [(NLXSchemaNLXClientEvent *)self cdmMatchingSpanEnded];
    v29 = [v28 dictionaryRepresentation];
    if (v29)
    {
      [v3 setObject:v29 forKeyedSubscript:@"cdmMatchingSpanEnded"];
    }

    else
    {
      v30 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v30 forKeyedSubscript:@"cdmMatchingSpanEnded"];
    }
  }

  if (self->_cdmMatchingSpanEndedTier1)
  {
    v31 = [(NLXSchemaNLXClientEvent *)self cdmMatchingSpanEndedTier1];
    v32 = [v31 dictionaryRepresentation];
    if (v32)
    {
      [v3 setObject:v32 forKeyedSubscript:@"cdmMatchingSpanEndedTier1"];
    }

    else
    {
      v33 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v33 forKeyedSubscript:@"cdmMatchingSpanEndedTier1"];
    }
  }

  if (self->_cdmMatchingSpanTier1)
  {
    v34 = [(NLXSchemaNLXClientEvent *)self cdmMatchingSpanTier1];
    v35 = [v34 dictionaryRepresentation];
    if (v35)
    {
      [v3 setObject:v35 forKeyedSubscript:@"cdmMatchingSpanTier1"];
    }

    else
    {
      v36 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v36 forKeyedSubscript:@"cdmMatchingSpanTier1"];
    }
  }

  if (self->_cdmRequestContext)
  {
    v37 = [(NLXSchemaNLXClientEvent *)self cdmRequestContext];
    v38 = [v37 dictionaryRepresentation];
    if (v38)
    {
      [v3 setObject:v38 forKeyedSubscript:@"cdmRequestContext"];
    }

    else
    {
      v39 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v39 forKeyedSubscript:@"cdmRequestContext"];
    }
  }

  if (self->_cdmServiceContext)
  {
    v40 = [(NLXSchemaNLXClientEvent *)self cdmServiceContext];
    v41 = [v40 dictionaryRepresentation];
    if (v41)
    {
      [v3 setObject:v41 forKeyedSubscript:@"cdmServiceContext"];
    }

    else
    {
      v42 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v42 forKeyedSubscript:@"cdmServiceContext"];
    }
  }

  if (self->_cdmServiceHandleMetricsReported)
  {
    v43 = [(NLXSchemaNLXClientEvent *)self cdmServiceHandleMetricsReported];
    v44 = [v43 dictionaryRepresentation];
    if (v44)
    {
      [v3 setObject:v44 forKeyedSubscript:@"cdmServiceHandleMetricsReported"];
    }

    else
    {
      v45 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v45 forKeyedSubscript:@"cdmServiceHandleMetricsReported"];
    }
  }

  if (self->_cdmServiceSetupMetricsReported)
  {
    v46 = [(NLXSchemaNLXClientEvent *)self cdmServiceSetupMetricsReported];
    v47 = [v46 dictionaryRepresentation];
    if (v47)
    {
      [v3 setObject:v47 forKeyedSubscript:@"cdmServiceSetupMetricsReported"];
    }

    else
    {
      v48 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v48 forKeyedSubscript:@"cdmServiceSetupMetricsReported"];
    }
  }

  if (self->_cdmSetupLink)
  {
    v49 = [(NLXSchemaNLXClientEvent *)self cdmSetupLink];
    v50 = [v49 dictionaryRepresentation];
    if (v50)
    {
      [v3 setObject:v50 forKeyedSubscript:@"cdmSetupLink"];
    }

    else
    {
      v51 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v51 forKeyedSubscript:@"cdmSetupLink"];
    }
  }

  if (self->_cdmSetupMissingAssetsDetected)
  {
    v52 = [(NLXSchemaNLXClientEvent *)self cdmSetupMissingAssetsDetected];
    v53 = [v52 dictionaryRepresentation];
    if (v53)
    {
      [v3 setObject:v53 forKeyedSubscript:@"cdmSetupMissingAssetsDetected"];
    }

    else
    {
      v54 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v54 forKeyedSubscript:@"cdmSetupMissingAssetsDetected"];
    }
  }

  if (self->_cdmSingleServiceSetupAttemptContext)
  {
    v55 = [(NLXSchemaNLXClientEvent *)self cdmSingleServiceSetupAttemptContext];
    v56 = [v55 dictionaryRepresentation];
    if (v56)
    {
      [v3 setObject:v56 forKeyedSubscript:@"cdmSingleServiceSetupAttemptContext"];
    }

    else
    {
      v57 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v57 forKeyedSubscript:@"cdmSingleServiceSetupAttemptContext"];
    }
  }

  if (self->_cdmSingleServiceSetupAttemptFailed)
  {
    v58 = [(NLXSchemaNLXClientEvent *)self cdmSingleServiceSetupAttemptFailed];
    v59 = [v58 dictionaryRepresentation];
    if (v59)
    {
      [v3 setObject:v59 forKeyedSubscript:@"cdmSingleServiceSetupAttemptFailed"];
    }

    else
    {
      v60 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v60 forKeyedSubscript:@"cdmSingleServiceSetupAttemptFailed"];
    }
  }

  if (self->_cdmSingleServiceWarmupAttemptContext)
  {
    v61 = [(NLXSchemaNLXClientEvent *)self cdmSingleServiceWarmupAttemptContext];
    v62 = [v61 dictionaryRepresentation];
    if (v62)
    {
      [v3 setObject:v62 forKeyedSubscript:@"cdmSingleServiceWarmupAttemptContext"];
    }

    else
    {
      v63 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v63 forKeyedSubscript:@"cdmSingleServiceWarmupAttemptContext"];
    }
  }

  if (self->_cdmSingleServiceWarmupAttemptFailed)
  {
    v64 = [(NLXSchemaNLXClientEvent *)self cdmSingleServiceWarmupAttemptFailed];
    v65 = [v64 dictionaryRepresentation];
    if (v65)
    {
      [v3 setObject:v65 forKeyedSubscript:@"cdmSingleServiceWarmupAttemptFailed"];
    }

    else
    {
      v66 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v66 forKeyedSubscript:@"cdmSingleServiceWarmupAttemptFailed"];
    }
  }

  if (self->_cdmSpanMatcherContext)
  {
    v67 = [(NLXSchemaNLXClientEvent *)self cdmSpanMatcherContext];
    v68 = [v67 dictionaryRepresentation];
    if (v68)
    {
      [v3 setObject:v68 forKeyedSubscript:@"cdmSpanMatcherContext"];
    }

    else
    {
      v69 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v69 forKeyedSubscript:@"cdmSpanMatcherContext"];
    }
  }

  if (self->_cdmSystemDialogActTier1)
  {
    v70 = [(NLXSchemaNLXClientEvent *)self cdmSystemDialogActTier1];
    v71 = [v70 dictionaryRepresentation];
    if (v71)
    {
      [v3 setObject:v71 forKeyedSubscript:@"cdmSystemDialogActTier1"];
    }

    else
    {
      v72 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v72 forKeyedSubscript:@"cdmSystemDialogActTier1"];
    }
  }

  if (self->_cdmTokenizationEnded)
  {
    v73 = [(NLXSchemaNLXClientEvent *)self cdmTokenizationEnded];
    v74 = [v73 dictionaryRepresentation];
    if (v74)
    {
      [v3 setObject:v74 forKeyedSubscript:@"cdmTokenizationEnded"];
    }

    else
    {
      v75 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v75 forKeyedSubscript:@"cdmTokenizationEnded"];
    }
  }

  if (self->_cdmUsoGraphTier1)
  {
    v76 = [(NLXSchemaNLXClientEvent *)self cdmUsoGraphTier1];
    v77 = [v76 dictionaryRepresentation];
    if (v77)
    {
      [v3 setObject:v77 forKeyedSubscript:@"cdmUsoGraphTier1"];
    }

    else
    {
      v78 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v78 forKeyedSubscript:@"cdmUsoGraphTier1"];
    }
  }

  if (self->_cdmXpcEventProcessingContext)
  {
    v79 = [(NLXSchemaNLXClientEvent *)self cdmXpcEventProcessingContext];
    v80 = [v79 dictionaryRepresentation];
    if (v80)
    {
      [v3 setObject:v80 forKeyedSubscript:@"cdmXpcEventProcessingContext"];
    }

    else
    {
      v81 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v81 forKeyedSubscript:@"cdmXpcEventProcessingContext"];
    }
  }

  if (self->_eventMetadata)
  {
    v82 = [(NLXSchemaNLXClientEvent *)self eventMetadata];
    v83 = [v82 dictionaryRepresentation];
    if (v83)
    {
      [v3 setObject:v83 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      v84 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v84 forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_marrsContextualSpanMatcherEnded)
  {
    v85 = [(NLXSchemaNLXClientEvent *)self marrsContextualSpanMatcherEnded];
    v86 = [v85 dictionaryRepresentation];
    if (v86)
    {
      [v3 setObject:v86 forKeyedSubscript:@"marrsContextualSpanMatcherEnded"];
    }

    else
    {
      v87 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v87 forKeyedSubscript:@"marrsContextualSpanMatcherEnded"];
    }
  }

  if (self->_marrsContextualSpanMatcherEndedTier1)
  {
    v88 = [(NLXSchemaNLXClientEvent *)self marrsContextualSpanMatcherEndedTier1];
    v89 = [v88 dictionaryRepresentation];
    if (v89)
    {
      [v3 setObject:v89 forKeyedSubscript:@"marrsContextualSpanMatcherEndedTier1"];
    }

    else
    {
      v90 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v90 forKeyedSubscript:@"marrsContextualSpanMatcherEndedTier1"];
    }
  }

  if (self->_marrsMentionDetectorEnded)
  {
    v91 = [(NLXSchemaNLXClientEvent *)self marrsMentionDetectorEnded];
    v92 = [v91 dictionaryRepresentation];
    if (v92)
    {
      [v3 setObject:v92 forKeyedSubscript:@"marrsMentionDetectorEnded"];
    }

    else
    {
      v93 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v93 forKeyedSubscript:@"marrsMentionDetectorEnded"];
    }
  }

  if (self->_marrsMentionDetectorEndedTier1)
  {
    v94 = [(NLXSchemaNLXClientEvent *)self marrsMentionDetectorEndedTier1];
    v95 = [v94 dictionaryRepresentation];
    if (v95)
    {
      [v3 setObject:v95 forKeyedSubscript:@"marrsMentionDetectorEndedTier1"];
    }

    else
    {
      v96 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v96 forKeyedSubscript:@"marrsMentionDetectorEndedTier1"];
    }
  }

  if (self->_marrsMentionResolverEnded)
  {
    v97 = [(NLXSchemaNLXClientEvent *)self marrsMentionResolverEnded];
    v98 = [v97 dictionaryRepresentation];
    if (v98)
    {
      [v3 setObject:v98 forKeyedSubscript:@"marrsMentionResolverEnded"];
    }

    else
    {
      v99 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v99 forKeyedSubscript:@"marrsMentionResolverEnded"];
    }
  }

  if (self->_marrsMentionResolverEndedTier1)
  {
    v100 = [(NLXSchemaNLXClientEvent *)self marrsMentionResolverEndedTier1];
    v101 = [v100 dictionaryRepresentation];
    if (v101)
    {
      [v3 setObject:v101 forKeyedSubscript:@"marrsMentionResolverEndedTier1"];
    }

    else
    {
      v102 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v102 forKeyedSubscript:@"marrsMentionResolverEndedTier1"];
    }
  }

  if (self->_marrsQueryRewriteContext)
  {
    v103 = [(NLXSchemaNLXClientEvent *)self marrsQueryRewriteContext];
    v104 = [v103 dictionaryRepresentation];
    if (v104)
    {
      [v3 setObject:v104 forKeyedSubscript:@"marrsQueryRewriteContext"];
    }

    else
    {
      v105 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v105 forKeyedSubscript:@"marrsQueryRewriteContext"];
    }
  }

  if (self->_marrsQueryRewriteEvaluatedTier1)
  {
    v106 = [(NLXSchemaNLXClientEvent *)self marrsQueryRewriteEvaluatedTier1];
    v107 = [v106 dictionaryRepresentation];
    if (v107)
    {
      [v3 setObject:v107 forKeyedSubscript:@"marrsQueryRewriteEvaluatedTier1"];
    }

    else
    {
      v108 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v108 forKeyedSubscript:@"marrsQueryRewriteEvaluatedTier1"];
    }
  }

  if (self->_marrsRepetitionDetectionContext)
  {
    v109 = [(NLXSchemaNLXClientEvent *)self marrsRepetitionDetectionContext];
    v110 = [v109 dictionaryRepresentation];
    if (v110)
    {
      [v3 setObject:v110 forKeyedSubscript:@"marrsRepetitionDetectionContext"];
    }

    else
    {
      v111 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v111 forKeyedSubscript:@"marrsRepetitionDetectionContext"];
    }
  }

  if (self->_milAssetAcquisitionContext)
  {
    v112 = [(NLXSchemaNLXClientEvent *)self milAssetAcquisitionContext];
    v113 = [v112 dictionaryRepresentation];
    if (v113)
    {
      [v3 setObject:v113 forKeyedSubscript:@"milAssetAcquisitionContext"];
    }

    else
    {
      v114 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v114 forKeyedSubscript:@"milAssetAcquisitionContext"];
    }
  }

  if (self->_nlxCurareContext)
  {
    v115 = [(NLXSchemaNLXClientEvent *)self nlxCurareContext];
    v116 = [v115 dictionaryRepresentation];
    if (v116)
    {
      [v3 setObject:v116 forKeyedSubscript:@"nlxCurareContext"];
    }

    else
    {
      v117 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v117 forKeyedSubscript:@"nlxCurareContext"];
    }
  }

  if (self->_nlxDeviceFixedContext)
  {
    v118 = [(NLXSchemaNLXClientEvent *)self nlxDeviceFixedContext];
    v119 = [v118 dictionaryRepresentation];
    if (v119)
    {
      [v3 setObject:v119 forKeyedSubscript:@"nlxDeviceFixedContext"];
    }

    else
    {
      v120 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v120 forKeyedSubscript:@"nlxDeviceFixedContext"];
    }
  }

  if (self->_nlxLegacyNLContextTier1)
  {
    v121 = [(NLXSchemaNLXClientEvent *)self nlxLegacyNLContextTier1];
    v122 = [v121 dictionaryRepresentation];
    if (v122)
    {
      [v3 setObject:v122 forKeyedSubscript:@"nlxLegacyNLContextTier1"];
    }

    else
    {
      v123 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v123 forKeyedSubscript:@"nlxLegacyNLContextTier1"];
    }
  }

  if (self->_ssuBackgroundRequestContext)
  {
    v124 = [(NLXSchemaNLXClientEvent *)self ssuBackgroundRequestContext];
    v125 = [v124 dictionaryRepresentation];
    if (v125)
    {
      [v3 setObject:v125 forKeyedSubscript:@"ssuBackgroundRequestContext"];
    }

    else
    {
      v126 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v126 forKeyedSubscript:@"ssuBackgroundRequestContext"];
    }
  }

  if (self->_ssuUserRequestContext)
  {
    v127 = [(NLXSchemaNLXClientEvent *)self ssuUserRequestContext];
    v128 = [v127 dictionaryRepresentation];
    if (v128)
    {
      [v3 setObject:v128 forKeyedSubscript:@"ssuUserRequestContext"];
    }

    else
    {
      v129 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v129 forKeyedSubscript:@"ssuUserRequestContext"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];
  v130 = v3;

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NLXSchemaNLXClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(NLXSchemaCDMServiceContext *)self->_cdmServiceContext hash]^ v3;
  v5 = [(NLXSchemaCDMRequestContext *)self->_cdmRequestContext hash];
  v6 = v4 ^ v5 ^ [(NLXSchemaNLXDeviceFixedContext *)self->_nlxDeviceFixedContext hash];
  v7 = [(NLXSchemaCDMMatchingSpanEnded *)self->_cdmMatchingSpanEnded hash];
  v8 = v7 ^ [(NLXSchemaCDMUsoGraphTier1 *)self->_cdmUsoGraphTier1 hash];
  v9 = v6 ^ v8 ^ [(NLXSchemaCDMMatchingSpanTier1 *)self->_cdmMatchingSpanTier1 hash];
  v10 = [(NLXSchemaNLXLegacyNLContextTier1 *)self->_nlxLegacyNLContextTier1 hash];
  v11 = v10 ^ [(NLXSchemaCDMDelegatedUserDialogActTier1 *)self->_cdmDelegatedUserDialogActTier1 hash];
  v12 = v11 ^ [(NLXSchemaCDMSystemDialogActTier1 *)self->_cdmSystemDialogActTier1 hash];
  v13 = v9 ^ v12 ^ [(NLXSchemaCDMTokenizationEnded *)self->_cdmTokenizationEnded hash];
  v14 = [(NLXSchemaCDMContextUpdateEnded *)self->_cdmContextUpdateEnded hash];
  v15 = v14 ^ [(NLXSchemaMARRSRepetitionDetectionContext *)self->_marrsRepetitionDetectionContext hash];
  v16 = v15 ^ [(NLXSchemaMARRSQueryRewriteContext *)self->_marrsQueryRewriteContext hash];
  v17 = v16 ^ [(NLXSchemaMARRSQueryRewriteEvaluatedTier1 *)self->_marrsQueryRewriteEvaluatedTier1 hash];
  v18 = v13 ^ v17 ^ [(NLXSchemaCDMMatchingSpanEndedTier1 *)self->_cdmMatchingSpanEndedTier1 hash];
  v19 = [(NLXSchemaNLXCurareContext *)self->_nlxCurareContext hash];
  v20 = v19 ^ [(NLXSchemaMARRSMentionDetectorEnded *)self->_marrsMentionDetectorEnded hash];
  v21 = v20 ^ [(NLXSchemaMARRSMentionDetectorEndedTier1 *)self->_marrsMentionDetectorEndedTier1 hash];
  v22 = v21 ^ [(NLXSchemaMARRSMentionResolverEnded *)self->_marrsMentionResolverEnded hash];
  v23 = v22 ^ [(NLXSchemaMARRSMentionResolverEndedTier1 *)self->_marrsMentionResolverEndedTier1 hash];
  v24 = v18 ^ v23 ^ [(NLXSchemaCDMClientSetupContext *)self->_cdmClientSetupContext hash];
  v25 = [(NLXSchemaCDMAllServicesSetupContext *)self->_cdmAllServicesSetupContext hash];
  v26 = v25 ^ [(NLXSchemaCDMSingleServiceSetupAttemptContext *)self->_cdmSingleServiceSetupAttemptContext hash];
  v27 = v26 ^ [(NLXSchemaCDMSingleServiceSetupAttemptFailed *)self->_cdmSingleServiceSetupAttemptFailed hash];
  v28 = v27 ^ [(NLXSchemaCDMSpanMatcherContext *)self->_cdmSpanMatcherContext hash];
  v29 = v28 ^ [(NLXSchemaMARRSContextualSpanMatcherEnded *)self->_marrsContextualSpanMatcherEnded hash];
  v30 = v29 ^ [(NLXSchemaMARRSContextualSpanMatcherEndedTier1 *)self->_marrsContextualSpanMatcherEndedTier1 hash];
  v31 = v24 ^ v30 ^ [(NLXSchemaCDMXPCEventProcessingContext *)self->_cdmXpcEventProcessingContext hash];
  v32 = [(NLXSchemaCDMAssetSetupContext *)self->_cdmAssetSetupContext hash];
  v33 = v32 ^ [(NLXSchemaCDMSetupMissingAssetsDetected *)self->_cdmSetupMissingAssetsDetected hash];
  v34 = v33 ^ [(NLXSchemaCDMClientWarmupContext *)self->_cdmClientWarmupContext hash];
  v35 = v34 ^ [(NLXSchemaCDMAllServicesWarmupContext *)self->_cdmAllServicesWarmupContext hash];
  v36 = v35 ^ [(NLXSchemaCDMSingleServiceWarmupAttemptContext *)self->_cdmSingleServiceWarmupAttemptContext hash];
  v37 = v36 ^ [(NLXSchemaCDMSingleServiceWarmupAttemptFailed *)self->_cdmSingleServiceWarmupAttemptFailed hash];
  v38 = v37 ^ [(NLXSchemaCDMAssetsReported *)self->_cdmAssetsReported hash];
  v39 = v31 ^ v38 ^ [(NLXSchemaSSUUserRequestContext *)self->_ssuUserRequestContext hash];
  v40 = [(NLXSchemaSSUBackgroundUpdateContext *)self->_ssuBackgroundRequestContext hash];
  v41 = v40 ^ [(NLXSchemaCDMServiceHandleMetricsReported *)self->_cdmServiceHandleMetricsReported hash];
  v42 = v41 ^ [(NLXSchemaCDMServiceSetupMetricsReported *)self->_cdmServiceSetupMetricsReported hash];
  v43 = v42 ^ [(NLXSchemaMILAssetAcquisitionContext *)self->_milAssetAcquisitionContext hash];
  return v39 ^ v43 ^ [(NLXSchemaCDMSetupLink *)self->_cdmSetupLink hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_213;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [v4 whichEvent_Type])
  {
    goto LABEL_213;
  }

  v6 = [(NLXSchemaNLXClientEvent *)self eventMetadata];
  v7 = [v4 eventMetadata];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v8 = [(NLXSchemaNLXClientEvent *)self eventMetadata];
  if (v8)
  {
    v9 = v8;
    v10 = [(NLXSchemaNLXClientEvent *)self eventMetadata];
    v11 = [v4 eventMetadata];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(NLXSchemaNLXClientEvent *)self cdmServiceContext];
  v7 = [v4 cdmServiceContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v13 = [(NLXSchemaNLXClientEvent *)self cdmServiceContext];
  if (v13)
  {
    v14 = v13;
    v15 = [(NLXSchemaNLXClientEvent *)self cdmServiceContext];
    v16 = [v4 cdmServiceContext];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(NLXSchemaNLXClientEvent *)self cdmRequestContext];
  v7 = [v4 cdmRequestContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v18 = [(NLXSchemaNLXClientEvent *)self cdmRequestContext];
  if (v18)
  {
    v19 = v18;
    v20 = [(NLXSchemaNLXClientEvent *)self cdmRequestContext];
    v21 = [v4 cdmRequestContext];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(NLXSchemaNLXClientEvent *)self nlxDeviceFixedContext];
  v7 = [v4 nlxDeviceFixedContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v23 = [(NLXSchemaNLXClientEvent *)self nlxDeviceFixedContext];
  if (v23)
  {
    v24 = v23;
    v25 = [(NLXSchemaNLXClientEvent *)self nlxDeviceFixedContext];
    v26 = [v4 nlxDeviceFixedContext];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(NLXSchemaNLXClientEvent *)self cdmMatchingSpanEnded];
  v7 = [v4 cdmMatchingSpanEnded];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v28 = [(NLXSchemaNLXClientEvent *)self cdmMatchingSpanEnded];
  if (v28)
  {
    v29 = v28;
    v30 = [(NLXSchemaNLXClientEvent *)self cdmMatchingSpanEnded];
    v31 = [v4 cdmMatchingSpanEnded];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(NLXSchemaNLXClientEvent *)self cdmUsoGraphTier1];
  v7 = [v4 cdmUsoGraphTier1];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v33 = [(NLXSchemaNLXClientEvent *)self cdmUsoGraphTier1];
  if (v33)
  {
    v34 = v33;
    v35 = [(NLXSchemaNLXClientEvent *)self cdmUsoGraphTier1];
    v36 = [v4 cdmUsoGraphTier1];
    v37 = [v35 isEqual:v36];

    if (!v37)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(NLXSchemaNLXClientEvent *)self cdmMatchingSpanTier1];
  v7 = [v4 cdmMatchingSpanTier1];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v38 = [(NLXSchemaNLXClientEvent *)self cdmMatchingSpanTier1];
  if (v38)
  {
    v39 = v38;
    v40 = [(NLXSchemaNLXClientEvent *)self cdmMatchingSpanTier1];
    v41 = [v4 cdmMatchingSpanTier1];
    v42 = [v40 isEqual:v41];

    if (!v42)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(NLXSchemaNLXClientEvent *)self nlxLegacyNLContextTier1];
  v7 = [v4 nlxLegacyNLContextTier1];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v43 = [(NLXSchemaNLXClientEvent *)self nlxLegacyNLContextTier1];
  if (v43)
  {
    v44 = v43;
    v45 = [(NLXSchemaNLXClientEvent *)self nlxLegacyNLContextTier1];
    v46 = [v4 nlxLegacyNLContextTier1];
    v47 = [v45 isEqual:v46];

    if (!v47)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(NLXSchemaNLXClientEvent *)self cdmDelegatedUserDialogActTier1];
  v7 = [v4 cdmDelegatedUserDialogActTier1];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v48 = [(NLXSchemaNLXClientEvent *)self cdmDelegatedUserDialogActTier1];
  if (v48)
  {
    v49 = v48;
    v50 = [(NLXSchemaNLXClientEvent *)self cdmDelegatedUserDialogActTier1];
    v51 = [v4 cdmDelegatedUserDialogActTier1];
    v52 = [v50 isEqual:v51];

    if (!v52)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(NLXSchemaNLXClientEvent *)self cdmSystemDialogActTier1];
  v7 = [v4 cdmSystemDialogActTier1];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v53 = [(NLXSchemaNLXClientEvent *)self cdmSystemDialogActTier1];
  if (v53)
  {
    v54 = v53;
    v55 = [(NLXSchemaNLXClientEvent *)self cdmSystemDialogActTier1];
    v56 = [v4 cdmSystemDialogActTier1];
    v57 = [v55 isEqual:v56];

    if (!v57)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(NLXSchemaNLXClientEvent *)self cdmTokenizationEnded];
  v7 = [v4 cdmTokenizationEnded];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v58 = [(NLXSchemaNLXClientEvent *)self cdmTokenizationEnded];
  if (v58)
  {
    v59 = v58;
    v60 = [(NLXSchemaNLXClientEvent *)self cdmTokenizationEnded];
    v61 = [v4 cdmTokenizationEnded];
    v62 = [v60 isEqual:v61];

    if (!v62)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(NLXSchemaNLXClientEvent *)self cdmContextUpdateEnded];
  v7 = [v4 cdmContextUpdateEnded];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v63 = [(NLXSchemaNLXClientEvent *)self cdmContextUpdateEnded];
  if (v63)
  {
    v64 = v63;
    v65 = [(NLXSchemaNLXClientEvent *)self cdmContextUpdateEnded];
    v66 = [v4 cdmContextUpdateEnded];
    v67 = [v65 isEqual:v66];

    if (!v67)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(NLXSchemaNLXClientEvent *)self marrsRepetitionDetectionContext];
  v7 = [v4 marrsRepetitionDetectionContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v68 = [(NLXSchemaNLXClientEvent *)self marrsRepetitionDetectionContext];
  if (v68)
  {
    v69 = v68;
    v70 = [(NLXSchemaNLXClientEvent *)self marrsRepetitionDetectionContext];
    v71 = [v4 marrsRepetitionDetectionContext];
    v72 = [v70 isEqual:v71];

    if (!v72)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(NLXSchemaNLXClientEvent *)self marrsQueryRewriteContext];
  v7 = [v4 marrsQueryRewriteContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v73 = [(NLXSchemaNLXClientEvent *)self marrsQueryRewriteContext];
  if (v73)
  {
    v74 = v73;
    v75 = [(NLXSchemaNLXClientEvent *)self marrsQueryRewriteContext];
    v76 = [v4 marrsQueryRewriteContext];
    v77 = [v75 isEqual:v76];

    if (!v77)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(NLXSchemaNLXClientEvent *)self marrsQueryRewriteEvaluatedTier1];
  v7 = [v4 marrsQueryRewriteEvaluatedTier1];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v78 = [(NLXSchemaNLXClientEvent *)self marrsQueryRewriteEvaluatedTier1];
  if (v78)
  {
    v79 = v78;
    v80 = [(NLXSchemaNLXClientEvent *)self marrsQueryRewriteEvaluatedTier1];
    v81 = [v4 marrsQueryRewriteEvaluatedTier1];
    v82 = [v80 isEqual:v81];

    if (!v82)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(NLXSchemaNLXClientEvent *)self cdmMatchingSpanEndedTier1];
  v7 = [v4 cdmMatchingSpanEndedTier1];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v83 = [(NLXSchemaNLXClientEvent *)self cdmMatchingSpanEndedTier1];
  if (v83)
  {
    v84 = v83;
    v85 = [(NLXSchemaNLXClientEvent *)self cdmMatchingSpanEndedTier1];
    v86 = [v4 cdmMatchingSpanEndedTier1];
    v87 = [v85 isEqual:v86];

    if (!v87)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(NLXSchemaNLXClientEvent *)self nlxCurareContext];
  v7 = [v4 nlxCurareContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v88 = [(NLXSchemaNLXClientEvent *)self nlxCurareContext];
  if (v88)
  {
    v89 = v88;
    v90 = [(NLXSchemaNLXClientEvent *)self nlxCurareContext];
    v91 = [v4 nlxCurareContext];
    v92 = [v90 isEqual:v91];

    if (!v92)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(NLXSchemaNLXClientEvent *)self marrsMentionDetectorEnded];
  v7 = [v4 marrsMentionDetectorEnded];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v93 = [(NLXSchemaNLXClientEvent *)self marrsMentionDetectorEnded];
  if (v93)
  {
    v94 = v93;
    v95 = [(NLXSchemaNLXClientEvent *)self marrsMentionDetectorEnded];
    v96 = [v4 marrsMentionDetectorEnded];
    v97 = [v95 isEqual:v96];

    if (!v97)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(NLXSchemaNLXClientEvent *)self marrsMentionDetectorEndedTier1];
  v7 = [v4 marrsMentionDetectorEndedTier1];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v98 = [(NLXSchemaNLXClientEvent *)self marrsMentionDetectorEndedTier1];
  if (v98)
  {
    v99 = v98;
    v100 = [(NLXSchemaNLXClientEvent *)self marrsMentionDetectorEndedTier1];
    v101 = [v4 marrsMentionDetectorEndedTier1];
    v102 = [v100 isEqual:v101];

    if (!v102)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(NLXSchemaNLXClientEvent *)self marrsMentionResolverEnded];
  v7 = [v4 marrsMentionResolverEnded];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v103 = [(NLXSchemaNLXClientEvent *)self marrsMentionResolverEnded];
  if (v103)
  {
    v104 = v103;
    v105 = [(NLXSchemaNLXClientEvent *)self marrsMentionResolverEnded];
    v106 = [v4 marrsMentionResolverEnded];
    v107 = [v105 isEqual:v106];

    if (!v107)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(NLXSchemaNLXClientEvent *)self marrsMentionResolverEndedTier1];
  v7 = [v4 marrsMentionResolverEndedTier1];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v108 = [(NLXSchemaNLXClientEvent *)self marrsMentionResolverEndedTier1];
  if (v108)
  {
    v109 = v108;
    v110 = [(NLXSchemaNLXClientEvent *)self marrsMentionResolverEndedTier1];
    v111 = [v4 marrsMentionResolverEndedTier1];
    v112 = [v110 isEqual:v111];

    if (!v112)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(NLXSchemaNLXClientEvent *)self cdmClientSetupContext];
  v7 = [v4 cdmClientSetupContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v113 = [(NLXSchemaNLXClientEvent *)self cdmClientSetupContext];
  if (v113)
  {
    v114 = v113;
    v115 = [(NLXSchemaNLXClientEvent *)self cdmClientSetupContext];
    v116 = [v4 cdmClientSetupContext];
    v117 = [v115 isEqual:v116];

    if (!v117)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(NLXSchemaNLXClientEvent *)self cdmAllServicesSetupContext];
  v7 = [v4 cdmAllServicesSetupContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v118 = [(NLXSchemaNLXClientEvent *)self cdmAllServicesSetupContext];
  if (v118)
  {
    v119 = v118;
    v120 = [(NLXSchemaNLXClientEvent *)self cdmAllServicesSetupContext];
    v121 = [v4 cdmAllServicesSetupContext];
    v122 = [v120 isEqual:v121];

    if (!v122)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(NLXSchemaNLXClientEvent *)self cdmSingleServiceSetupAttemptContext];
  v7 = [v4 cdmSingleServiceSetupAttemptContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v123 = [(NLXSchemaNLXClientEvent *)self cdmSingleServiceSetupAttemptContext];
  if (v123)
  {
    v124 = v123;
    v125 = [(NLXSchemaNLXClientEvent *)self cdmSingleServiceSetupAttemptContext];
    v126 = [v4 cdmSingleServiceSetupAttemptContext];
    v127 = [v125 isEqual:v126];

    if (!v127)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(NLXSchemaNLXClientEvent *)self cdmSingleServiceSetupAttemptFailed];
  v7 = [v4 cdmSingleServiceSetupAttemptFailed];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v128 = [(NLXSchemaNLXClientEvent *)self cdmSingleServiceSetupAttemptFailed];
  if (v128)
  {
    v129 = v128;
    v130 = [(NLXSchemaNLXClientEvent *)self cdmSingleServiceSetupAttemptFailed];
    v131 = [v4 cdmSingleServiceSetupAttemptFailed];
    v132 = [v130 isEqual:v131];

    if (!v132)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(NLXSchemaNLXClientEvent *)self cdmSpanMatcherContext];
  v7 = [v4 cdmSpanMatcherContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v133 = [(NLXSchemaNLXClientEvent *)self cdmSpanMatcherContext];
  if (v133)
  {
    v134 = v133;
    v135 = [(NLXSchemaNLXClientEvent *)self cdmSpanMatcherContext];
    v136 = [v4 cdmSpanMatcherContext];
    v137 = [v135 isEqual:v136];

    if (!v137)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(NLXSchemaNLXClientEvent *)self marrsContextualSpanMatcherEnded];
  v7 = [v4 marrsContextualSpanMatcherEnded];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v138 = [(NLXSchemaNLXClientEvent *)self marrsContextualSpanMatcherEnded];
  if (v138)
  {
    v139 = v138;
    v140 = [(NLXSchemaNLXClientEvent *)self marrsContextualSpanMatcherEnded];
    v141 = [v4 marrsContextualSpanMatcherEnded];
    v142 = [v140 isEqual:v141];

    if (!v142)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(NLXSchemaNLXClientEvent *)self marrsContextualSpanMatcherEndedTier1];
  v7 = [v4 marrsContextualSpanMatcherEndedTier1];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v143 = [(NLXSchemaNLXClientEvent *)self marrsContextualSpanMatcherEndedTier1];
  if (v143)
  {
    v144 = v143;
    v145 = [(NLXSchemaNLXClientEvent *)self marrsContextualSpanMatcherEndedTier1];
    v146 = [v4 marrsContextualSpanMatcherEndedTier1];
    v147 = [v145 isEqual:v146];

    if (!v147)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(NLXSchemaNLXClientEvent *)self cdmXpcEventProcessingContext];
  v7 = [v4 cdmXpcEventProcessingContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v148 = [(NLXSchemaNLXClientEvent *)self cdmXpcEventProcessingContext];
  if (v148)
  {
    v149 = v148;
    v150 = [(NLXSchemaNLXClientEvent *)self cdmXpcEventProcessingContext];
    v151 = [v4 cdmXpcEventProcessingContext];
    v152 = [v150 isEqual:v151];

    if (!v152)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(NLXSchemaNLXClientEvent *)self cdmAssetSetupContext];
  v7 = [v4 cdmAssetSetupContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v153 = [(NLXSchemaNLXClientEvent *)self cdmAssetSetupContext];
  if (v153)
  {
    v154 = v153;
    v155 = [(NLXSchemaNLXClientEvent *)self cdmAssetSetupContext];
    v156 = [v4 cdmAssetSetupContext];
    v157 = [v155 isEqual:v156];

    if (!v157)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(NLXSchemaNLXClientEvent *)self cdmSetupMissingAssetsDetected];
  v7 = [v4 cdmSetupMissingAssetsDetected];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v158 = [(NLXSchemaNLXClientEvent *)self cdmSetupMissingAssetsDetected];
  if (v158)
  {
    v159 = v158;
    v160 = [(NLXSchemaNLXClientEvent *)self cdmSetupMissingAssetsDetected];
    v161 = [v4 cdmSetupMissingAssetsDetected];
    v162 = [v160 isEqual:v161];

    if (!v162)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(NLXSchemaNLXClientEvent *)self cdmClientWarmupContext];
  v7 = [v4 cdmClientWarmupContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v163 = [(NLXSchemaNLXClientEvent *)self cdmClientWarmupContext];
  if (v163)
  {
    v164 = v163;
    v165 = [(NLXSchemaNLXClientEvent *)self cdmClientWarmupContext];
    v166 = [v4 cdmClientWarmupContext];
    v167 = [v165 isEqual:v166];

    if (!v167)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(NLXSchemaNLXClientEvent *)self cdmAllServicesWarmupContext];
  v7 = [v4 cdmAllServicesWarmupContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v168 = [(NLXSchemaNLXClientEvent *)self cdmAllServicesWarmupContext];
  if (v168)
  {
    v169 = v168;
    v170 = [(NLXSchemaNLXClientEvent *)self cdmAllServicesWarmupContext];
    v171 = [v4 cdmAllServicesWarmupContext];
    v172 = [v170 isEqual:v171];

    if (!v172)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(NLXSchemaNLXClientEvent *)self cdmSingleServiceWarmupAttemptContext];
  v7 = [v4 cdmSingleServiceWarmupAttemptContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v173 = [(NLXSchemaNLXClientEvent *)self cdmSingleServiceWarmupAttemptContext];
  if (v173)
  {
    v174 = v173;
    v175 = [(NLXSchemaNLXClientEvent *)self cdmSingleServiceWarmupAttemptContext];
    v176 = [v4 cdmSingleServiceWarmupAttemptContext];
    v177 = [v175 isEqual:v176];

    if (!v177)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(NLXSchemaNLXClientEvent *)self cdmSingleServiceWarmupAttemptFailed];
  v7 = [v4 cdmSingleServiceWarmupAttemptFailed];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v178 = [(NLXSchemaNLXClientEvent *)self cdmSingleServiceWarmupAttemptFailed];
  if (v178)
  {
    v179 = v178;
    v180 = [(NLXSchemaNLXClientEvent *)self cdmSingleServiceWarmupAttemptFailed];
    v181 = [v4 cdmSingleServiceWarmupAttemptFailed];
    v182 = [v180 isEqual:v181];

    if (!v182)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(NLXSchemaNLXClientEvent *)self cdmAssetsReported];
  v7 = [v4 cdmAssetsReported];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v183 = [(NLXSchemaNLXClientEvent *)self cdmAssetsReported];
  if (v183)
  {
    v184 = v183;
    v185 = [(NLXSchemaNLXClientEvent *)self cdmAssetsReported];
    v186 = [v4 cdmAssetsReported];
    v187 = [v185 isEqual:v186];

    if (!v187)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(NLXSchemaNLXClientEvent *)self ssuUserRequestContext];
  v7 = [v4 ssuUserRequestContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v188 = [(NLXSchemaNLXClientEvent *)self ssuUserRequestContext];
  if (v188)
  {
    v189 = v188;
    v190 = [(NLXSchemaNLXClientEvent *)self ssuUserRequestContext];
    v191 = [v4 ssuUserRequestContext];
    v192 = [v190 isEqual:v191];

    if (!v192)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(NLXSchemaNLXClientEvent *)self ssuBackgroundRequestContext];
  v7 = [v4 ssuBackgroundRequestContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v193 = [(NLXSchemaNLXClientEvent *)self ssuBackgroundRequestContext];
  if (v193)
  {
    v194 = v193;
    v195 = [(NLXSchemaNLXClientEvent *)self ssuBackgroundRequestContext];
    v196 = [v4 ssuBackgroundRequestContext];
    v197 = [v195 isEqual:v196];

    if (!v197)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(NLXSchemaNLXClientEvent *)self cdmServiceHandleMetricsReported];
  v7 = [v4 cdmServiceHandleMetricsReported];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v198 = [(NLXSchemaNLXClientEvent *)self cdmServiceHandleMetricsReported];
  if (v198)
  {
    v199 = v198;
    v200 = [(NLXSchemaNLXClientEvent *)self cdmServiceHandleMetricsReported];
    v201 = [v4 cdmServiceHandleMetricsReported];
    v202 = [v200 isEqual:v201];

    if (!v202)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(NLXSchemaNLXClientEvent *)self cdmServiceSetupMetricsReported];
  v7 = [v4 cdmServiceSetupMetricsReported];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v203 = [(NLXSchemaNLXClientEvent *)self cdmServiceSetupMetricsReported];
  if (v203)
  {
    v204 = v203;
    v205 = [(NLXSchemaNLXClientEvent *)self cdmServiceSetupMetricsReported];
    v206 = [v4 cdmServiceSetupMetricsReported];
    v207 = [v205 isEqual:v206];

    if (!v207)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(NLXSchemaNLXClientEvent *)self milAssetAcquisitionContext];
  v7 = [v4 milAssetAcquisitionContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v208 = [(NLXSchemaNLXClientEvent *)self milAssetAcquisitionContext];
  if (v208)
  {
    v209 = v208;
    v210 = [(NLXSchemaNLXClientEvent *)self milAssetAcquisitionContext];
    v211 = [v4 milAssetAcquisitionContext];
    v212 = [v210 isEqual:v211];

    if (!v212)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(NLXSchemaNLXClientEvent *)self cdmSetupLink];
  v7 = [v4 cdmSetupLink];
  if ((v6 != 0) != (v7 == 0))
  {
    v213 = [(NLXSchemaNLXClientEvent *)self cdmSetupLink];
    if (!v213)
    {

LABEL_216:
      v218 = 1;
      goto LABEL_214;
    }

    v214 = v213;
    v215 = [(NLXSchemaNLXClientEvent *)self cdmSetupLink];
    v216 = [v4 cdmSetupLink];
    v217 = [v215 isEqual:v216];

    if (v217)
    {
      goto LABEL_216;
    }
  }

  else
  {
LABEL_212:
  }

LABEL_213:
  v218 = 0;
LABEL_214:

  return v218;
}

- (void)writeTo:(id)a3
{
  v89 = a3;
  v4 = [(NLXSchemaNLXClientEvent *)self eventMetadata];

  if (v4)
  {
    v5 = [(NLXSchemaNLXClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(NLXSchemaNLXClientEvent *)self cdmServiceContext];

  if (v6)
  {
    v7 = [(NLXSchemaNLXClientEvent *)self cdmServiceContext];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(NLXSchemaNLXClientEvent *)self cdmRequestContext];

  if (v8)
  {
    v9 = [(NLXSchemaNLXClientEvent *)self cdmRequestContext];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(NLXSchemaNLXClientEvent *)self nlxDeviceFixedContext];

  if (v10)
  {
    v11 = [(NLXSchemaNLXClientEvent *)self nlxDeviceFixedContext];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(NLXSchemaNLXClientEvent *)self cdmMatchingSpanEnded];

  if (v12)
  {
    v13 = [(NLXSchemaNLXClientEvent *)self cdmMatchingSpanEnded];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(NLXSchemaNLXClientEvent *)self cdmUsoGraphTier1];

  if (v14)
  {
    v15 = [(NLXSchemaNLXClientEvent *)self cdmUsoGraphTier1];
    PBDataWriterWriteSubmessage();
  }

  v16 = [(NLXSchemaNLXClientEvent *)self cdmMatchingSpanTier1];

  if (v16)
  {
    v17 = [(NLXSchemaNLXClientEvent *)self cdmMatchingSpanTier1];
    PBDataWriterWriteSubmessage();
  }

  v18 = [(NLXSchemaNLXClientEvent *)self nlxLegacyNLContextTier1];

  if (v18)
  {
    v19 = [(NLXSchemaNLXClientEvent *)self nlxLegacyNLContextTier1];
    PBDataWriterWriteSubmessage();
  }

  v20 = [(NLXSchemaNLXClientEvent *)self cdmDelegatedUserDialogActTier1];

  if (v20)
  {
    v21 = [(NLXSchemaNLXClientEvent *)self cdmDelegatedUserDialogActTier1];
    PBDataWriterWriteSubmessage();
  }

  v22 = [(NLXSchemaNLXClientEvent *)self cdmSystemDialogActTier1];

  if (v22)
  {
    v23 = [(NLXSchemaNLXClientEvent *)self cdmSystemDialogActTier1];
    PBDataWriterWriteSubmessage();
  }

  v24 = [(NLXSchemaNLXClientEvent *)self cdmTokenizationEnded];

  if (v24)
  {
    v25 = [(NLXSchemaNLXClientEvent *)self cdmTokenizationEnded];
    PBDataWriterWriteSubmessage();
  }

  v26 = [(NLXSchemaNLXClientEvent *)self cdmContextUpdateEnded];

  if (v26)
  {
    v27 = [(NLXSchemaNLXClientEvent *)self cdmContextUpdateEnded];
    PBDataWriterWriteSubmessage();
  }

  v28 = [(NLXSchemaNLXClientEvent *)self marrsRepetitionDetectionContext];

  if (v28)
  {
    v29 = [(NLXSchemaNLXClientEvent *)self marrsRepetitionDetectionContext];
    PBDataWriterWriteSubmessage();
  }

  v30 = [(NLXSchemaNLXClientEvent *)self marrsQueryRewriteContext];

  if (v30)
  {
    v31 = [(NLXSchemaNLXClientEvent *)self marrsQueryRewriteContext];
    PBDataWriterWriteSubmessage();
  }

  v32 = [(NLXSchemaNLXClientEvent *)self marrsQueryRewriteEvaluatedTier1];

  if (v32)
  {
    v33 = [(NLXSchemaNLXClientEvent *)self marrsQueryRewriteEvaluatedTier1];
    PBDataWriterWriteSubmessage();
  }

  v34 = [(NLXSchemaNLXClientEvent *)self cdmMatchingSpanEndedTier1];

  if (v34)
  {
    v35 = [(NLXSchemaNLXClientEvent *)self cdmMatchingSpanEndedTier1];
    PBDataWriterWriteSubmessage();
  }

  v36 = [(NLXSchemaNLXClientEvent *)self nlxCurareContext];

  if (v36)
  {
    v37 = [(NLXSchemaNLXClientEvent *)self nlxCurareContext];
    PBDataWriterWriteSubmessage();
  }

  v38 = [(NLXSchemaNLXClientEvent *)self marrsMentionDetectorEnded];

  if (v38)
  {
    v39 = [(NLXSchemaNLXClientEvent *)self marrsMentionDetectorEnded];
    PBDataWriterWriteSubmessage();
  }

  v40 = [(NLXSchemaNLXClientEvent *)self marrsMentionDetectorEndedTier1];

  if (v40)
  {
    v41 = [(NLXSchemaNLXClientEvent *)self marrsMentionDetectorEndedTier1];
    PBDataWriterWriteSubmessage();
  }

  v42 = [(NLXSchemaNLXClientEvent *)self marrsMentionResolverEnded];

  if (v42)
  {
    v43 = [(NLXSchemaNLXClientEvent *)self marrsMentionResolverEnded];
    PBDataWriterWriteSubmessage();
  }

  v44 = [(NLXSchemaNLXClientEvent *)self marrsMentionResolverEndedTier1];

  if (v44)
  {
    v45 = [(NLXSchemaNLXClientEvent *)self marrsMentionResolverEndedTier1];
    PBDataWriterWriteSubmessage();
  }

  v46 = [(NLXSchemaNLXClientEvent *)self cdmClientSetupContext];

  if (v46)
  {
    v47 = [(NLXSchemaNLXClientEvent *)self cdmClientSetupContext];
    PBDataWriterWriteSubmessage();
  }

  v48 = [(NLXSchemaNLXClientEvent *)self cdmAllServicesSetupContext];

  if (v48)
  {
    v49 = [(NLXSchemaNLXClientEvent *)self cdmAllServicesSetupContext];
    PBDataWriterWriteSubmessage();
  }

  v50 = [(NLXSchemaNLXClientEvent *)self cdmSingleServiceSetupAttemptContext];

  if (v50)
  {
    v51 = [(NLXSchemaNLXClientEvent *)self cdmSingleServiceSetupAttemptContext];
    PBDataWriterWriteSubmessage();
  }

  v52 = [(NLXSchemaNLXClientEvent *)self cdmSingleServiceSetupAttemptFailed];

  if (v52)
  {
    v53 = [(NLXSchemaNLXClientEvent *)self cdmSingleServiceSetupAttemptFailed];
    PBDataWriterWriteSubmessage();
  }

  v54 = [(NLXSchemaNLXClientEvent *)self cdmSpanMatcherContext];

  if (v54)
  {
    v55 = [(NLXSchemaNLXClientEvent *)self cdmSpanMatcherContext];
    PBDataWriterWriteSubmessage();
  }

  v56 = [(NLXSchemaNLXClientEvent *)self marrsContextualSpanMatcherEnded];

  if (v56)
  {
    v57 = [(NLXSchemaNLXClientEvent *)self marrsContextualSpanMatcherEnded];
    PBDataWriterWriteSubmessage();
  }

  v58 = [(NLXSchemaNLXClientEvent *)self marrsContextualSpanMatcherEndedTier1];

  if (v58)
  {
    v59 = [(NLXSchemaNLXClientEvent *)self marrsContextualSpanMatcherEndedTier1];
    PBDataWriterWriteSubmessage();
  }

  v60 = [(NLXSchemaNLXClientEvent *)self cdmXpcEventProcessingContext];

  if (v60)
  {
    v61 = [(NLXSchemaNLXClientEvent *)self cdmXpcEventProcessingContext];
    PBDataWriterWriteSubmessage();
  }

  v62 = [(NLXSchemaNLXClientEvent *)self cdmAssetSetupContext];

  if (v62)
  {
    v63 = [(NLXSchemaNLXClientEvent *)self cdmAssetSetupContext];
    PBDataWriterWriteSubmessage();
  }

  v64 = [(NLXSchemaNLXClientEvent *)self cdmSetupMissingAssetsDetected];

  if (v64)
  {
    v65 = [(NLXSchemaNLXClientEvent *)self cdmSetupMissingAssetsDetected];
    PBDataWriterWriteSubmessage();
  }

  v66 = [(NLXSchemaNLXClientEvent *)self cdmClientWarmupContext];

  if (v66)
  {
    v67 = [(NLXSchemaNLXClientEvent *)self cdmClientWarmupContext];
    PBDataWriterWriteSubmessage();
  }

  v68 = [(NLXSchemaNLXClientEvent *)self cdmAllServicesWarmupContext];

  if (v68)
  {
    v69 = [(NLXSchemaNLXClientEvent *)self cdmAllServicesWarmupContext];
    PBDataWriterWriteSubmessage();
  }

  v70 = [(NLXSchemaNLXClientEvent *)self cdmSingleServiceWarmupAttemptContext];

  if (v70)
  {
    v71 = [(NLXSchemaNLXClientEvent *)self cdmSingleServiceWarmupAttemptContext];
    PBDataWriterWriteSubmessage();
  }

  v72 = [(NLXSchemaNLXClientEvent *)self cdmSingleServiceWarmupAttemptFailed];

  if (v72)
  {
    v73 = [(NLXSchemaNLXClientEvent *)self cdmSingleServiceWarmupAttemptFailed];
    PBDataWriterWriteSubmessage();
  }

  v74 = [(NLXSchemaNLXClientEvent *)self cdmAssetsReported];

  if (v74)
  {
    v75 = [(NLXSchemaNLXClientEvent *)self cdmAssetsReported];
    PBDataWriterWriteSubmessage();
  }

  v76 = [(NLXSchemaNLXClientEvent *)self ssuUserRequestContext];

  if (v76)
  {
    v77 = [(NLXSchemaNLXClientEvent *)self ssuUserRequestContext];
    PBDataWriterWriteSubmessage();
  }

  v78 = [(NLXSchemaNLXClientEvent *)self ssuBackgroundRequestContext];

  if (v78)
  {
    v79 = [(NLXSchemaNLXClientEvent *)self ssuBackgroundRequestContext];
    PBDataWriterWriteSubmessage();
  }

  v80 = [(NLXSchemaNLXClientEvent *)self cdmServiceHandleMetricsReported];

  if (v80)
  {
    v81 = [(NLXSchemaNLXClientEvent *)self cdmServiceHandleMetricsReported];
    PBDataWriterWriteSubmessage();
  }

  v82 = [(NLXSchemaNLXClientEvent *)self cdmServiceSetupMetricsReported];

  if (v82)
  {
    v83 = [(NLXSchemaNLXClientEvent *)self cdmServiceSetupMetricsReported];
    PBDataWriterWriteSubmessage();
  }

  v84 = [(NLXSchemaNLXClientEvent *)self milAssetAcquisitionContext];

  if (v84)
  {
    v85 = [(NLXSchemaNLXClientEvent *)self milAssetAcquisitionContext];
    PBDataWriterWriteSubmessage();
  }

  v86 = [(NLXSchemaNLXClientEvent *)self cdmSetupLink];

  v87 = v89;
  if (v86)
  {
    v88 = [(NLXSchemaNLXClientEvent *)self cdmSetupLink];
    PBDataWriterWriteSubmessage();

    v87 = v89;
  }
}

- (void)deleteCdmSetupLink
{
  if (self->_whichEvent_Type == 141)
  {
    self->_whichEvent_Type = 0;
    self->_cdmSetupLink = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setCdmSetupLink:(id)a3
{
  v4 = a3;
  cdmServiceContext = self->_cdmServiceContext;
  self->_cdmServiceContext = 0;

  cdmRequestContext = self->_cdmRequestContext;
  self->_cdmRequestContext = 0;

  nlxDeviceFixedContext = self->_nlxDeviceFixedContext;
  self->_nlxDeviceFixedContext = 0;

  cdmMatchingSpanEnded = self->_cdmMatchingSpanEnded;
  self->_cdmMatchingSpanEnded = 0;

  cdmUsoGraphTier1 = self->_cdmUsoGraphTier1;
  self->_cdmUsoGraphTier1 = 0;

  cdmMatchingSpanTier1 = self->_cdmMatchingSpanTier1;
  self->_cdmMatchingSpanTier1 = 0;

  nlxLegacyNLContextTier1 = self->_nlxLegacyNLContextTier1;
  self->_nlxLegacyNLContextTier1 = 0;

  cdmDelegatedUserDialogActTier1 = self->_cdmDelegatedUserDialogActTier1;
  self->_cdmDelegatedUserDialogActTier1 = 0;

  cdmSystemDialogActTier1 = self->_cdmSystemDialogActTier1;
  self->_cdmSystemDialogActTier1 = 0;

  cdmTokenizationEnded = self->_cdmTokenizationEnded;
  self->_cdmTokenizationEnded = 0;

  cdmContextUpdateEnded = self->_cdmContextUpdateEnded;
  self->_cdmContextUpdateEnded = 0;

  marrsRepetitionDetectionContext = self->_marrsRepetitionDetectionContext;
  self->_marrsRepetitionDetectionContext = 0;

  marrsQueryRewriteContext = self->_marrsQueryRewriteContext;
  self->_marrsQueryRewriteContext = 0;

  marrsQueryRewriteEvaluatedTier1 = self->_marrsQueryRewriteEvaluatedTier1;
  self->_marrsQueryRewriteEvaluatedTier1 = 0;

  cdmMatchingSpanEndedTier1 = self->_cdmMatchingSpanEndedTier1;
  self->_cdmMatchingSpanEndedTier1 = 0;

  nlxCurareContext = self->_nlxCurareContext;
  self->_nlxCurareContext = 0;

  marrsMentionDetectorEnded = self->_marrsMentionDetectorEnded;
  self->_marrsMentionDetectorEnded = 0;

  marrsMentionDetectorEndedTier1 = self->_marrsMentionDetectorEndedTier1;
  self->_marrsMentionDetectorEndedTier1 = 0;

  marrsMentionResolverEnded = self->_marrsMentionResolverEnded;
  self->_marrsMentionResolverEnded = 0;

  marrsMentionResolverEndedTier1 = self->_marrsMentionResolverEndedTier1;
  self->_marrsMentionResolverEndedTier1 = 0;

  cdmClientSetupContext = self->_cdmClientSetupContext;
  self->_cdmClientSetupContext = 0;

  cdmAllServicesSetupContext = self->_cdmAllServicesSetupContext;
  self->_cdmAllServicesSetupContext = 0;

  cdmSingleServiceSetupAttemptContext = self->_cdmSingleServiceSetupAttemptContext;
  self->_cdmSingleServiceSetupAttemptContext = 0;

  cdmSingleServiceSetupAttemptFailed = self->_cdmSingleServiceSetupAttemptFailed;
  self->_cdmSingleServiceSetupAttemptFailed = 0;

  cdmSpanMatcherContext = self->_cdmSpanMatcherContext;
  self->_cdmSpanMatcherContext = 0;

  marrsContextualSpanMatcherEnded = self->_marrsContextualSpanMatcherEnded;
  self->_marrsContextualSpanMatcherEnded = 0;

  marrsContextualSpanMatcherEndedTier1 = self->_marrsContextualSpanMatcherEndedTier1;
  self->_marrsContextualSpanMatcherEndedTier1 = 0;

  cdmXpcEventProcessingContext = self->_cdmXpcEventProcessingContext;
  self->_cdmXpcEventProcessingContext = 0;

  cdmAssetSetupContext = self->_cdmAssetSetupContext;
  self->_cdmAssetSetupContext = 0;

  cdmSetupMissingAssetsDetected = self->_cdmSetupMissingAssetsDetected;
  self->_cdmSetupMissingAssetsDetected = 0;

  cdmClientWarmupContext = self->_cdmClientWarmupContext;
  self->_cdmClientWarmupContext = 0;

  cdmAllServicesWarmupContext = self->_cdmAllServicesWarmupContext;
  self->_cdmAllServicesWarmupContext = 0;

  cdmSingleServiceWarmupAttemptContext = self->_cdmSingleServiceWarmupAttemptContext;
  self->_cdmSingleServiceWarmupAttemptContext = 0;

  cdmSingleServiceWarmupAttemptFailed = self->_cdmSingleServiceWarmupAttemptFailed;
  self->_cdmSingleServiceWarmupAttemptFailed = 0;

  cdmAssetsReported = self->_cdmAssetsReported;
  self->_cdmAssetsReported = 0;

  ssuUserRequestContext = self->_ssuUserRequestContext;
  self->_ssuUserRequestContext = 0;

  ssuBackgroundRequestContext = self->_ssuBackgroundRequestContext;
  self->_ssuBackgroundRequestContext = 0;

  cdmServiceHandleMetricsReported = self->_cdmServiceHandleMetricsReported;
  self->_cdmServiceHandleMetricsReported = 0;

  cdmServiceSetupMetricsReported = self->_cdmServiceSetupMetricsReported;
  self->_cdmServiceSetupMetricsReported = 0;

  milAssetAcquisitionContext = self->_milAssetAcquisitionContext;
  self->_milAssetAcquisitionContext = 0;

  v45 = 141;
  if (!v4)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  cdmSetupLink = self->_cdmSetupLink;
  self->_cdmSetupLink = v4;
}

- (void)deleteMilAssetAcquisitionContext
{
  if (self->_whichEvent_Type == 140)
  {
    self->_whichEvent_Type = 0;
    self->_milAssetAcquisitionContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setMilAssetAcquisitionContext:(id)a3
{
  v4 = a3;
  cdmServiceContext = self->_cdmServiceContext;
  self->_cdmServiceContext = 0;

  cdmRequestContext = self->_cdmRequestContext;
  self->_cdmRequestContext = 0;

  nlxDeviceFixedContext = self->_nlxDeviceFixedContext;
  self->_nlxDeviceFixedContext = 0;

  cdmMatchingSpanEnded = self->_cdmMatchingSpanEnded;
  self->_cdmMatchingSpanEnded = 0;

  cdmUsoGraphTier1 = self->_cdmUsoGraphTier1;
  self->_cdmUsoGraphTier1 = 0;

  cdmMatchingSpanTier1 = self->_cdmMatchingSpanTier1;
  self->_cdmMatchingSpanTier1 = 0;

  nlxLegacyNLContextTier1 = self->_nlxLegacyNLContextTier1;
  self->_nlxLegacyNLContextTier1 = 0;

  cdmDelegatedUserDialogActTier1 = self->_cdmDelegatedUserDialogActTier1;
  self->_cdmDelegatedUserDialogActTier1 = 0;

  cdmSystemDialogActTier1 = self->_cdmSystemDialogActTier1;
  self->_cdmSystemDialogActTier1 = 0;

  cdmTokenizationEnded = self->_cdmTokenizationEnded;
  self->_cdmTokenizationEnded = 0;

  cdmContextUpdateEnded = self->_cdmContextUpdateEnded;
  self->_cdmContextUpdateEnded = 0;

  marrsRepetitionDetectionContext = self->_marrsRepetitionDetectionContext;
  self->_marrsRepetitionDetectionContext = 0;

  marrsQueryRewriteContext = self->_marrsQueryRewriteContext;
  self->_marrsQueryRewriteContext = 0;

  marrsQueryRewriteEvaluatedTier1 = self->_marrsQueryRewriteEvaluatedTier1;
  self->_marrsQueryRewriteEvaluatedTier1 = 0;

  cdmMatchingSpanEndedTier1 = self->_cdmMatchingSpanEndedTier1;
  self->_cdmMatchingSpanEndedTier1 = 0;

  nlxCurareContext = self->_nlxCurareContext;
  self->_nlxCurareContext = 0;

  marrsMentionDetectorEnded = self->_marrsMentionDetectorEnded;
  self->_marrsMentionDetectorEnded = 0;

  marrsMentionDetectorEndedTier1 = self->_marrsMentionDetectorEndedTier1;
  self->_marrsMentionDetectorEndedTier1 = 0;

  marrsMentionResolverEnded = self->_marrsMentionResolverEnded;
  self->_marrsMentionResolverEnded = 0;

  marrsMentionResolverEndedTier1 = self->_marrsMentionResolverEndedTier1;
  self->_marrsMentionResolverEndedTier1 = 0;

  cdmClientSetupContext = self->_cdmClientSetupContext;
  self->_cdmClientSetupContext = 0;

  cdmAllServicesSetupContext = self->_cdmAllServicesSetupContext;
  self->_cdmAllServicesSetupContext = 0;

  cdmSingleServiceSetupAttemptContext = self->_cdmSingleServiceSetupAttemptContext;
  self->_cdmSingleServiceSetupAttemptContext = 0;

  cdmSingleServiceSetupAttemptFailed = self->_cdmSingleServiceSetupAttemptFailed;
  self->_cdmSingleServiceSetupAttemptFailed = 0;

  cdmSpanMatcherContext = self->_cdmSpanMatcherContext;
  self->_cdmSpanMatcherContext = 0;

  marrsContextualSpanMatcherEnded = self->_marrsContextualSpanMatcherEnded;
  self->_marrsContextualSpanMatcherEnded = 0;

  marrsContextualSpanMatcherEndedTier1 = self->_marrsContextualSpanMatcherEndedTier1;
  self->_marrsContextualSpanMatcherEndedTier1 = 0;

  cdmXpcEventProcessingContext = self->_cdmXpcEventProcessingContext;
  self->_cdmXpcEventProcessingContext = 0;

  cdmAssetSetupContext = self->_cdmAssetSetupContext;
  self->_cdmAssetSetupContext = 0;

  cdmSetupMissingAssetsDetected = self->_cdmSetupMissingAssetsDetected;
  self->_cdmSetupMissingAssetsDetected = 0;

  cdmClientWarmupContext = self->_cdmClientWarmupContext;
  self->_cdmClientWarmupContext = 0;

  cdmAllServicesWarmupContext = self->_cdmAllServicesWarmupContext;
  self->_cdmAllServicesWarmupContext = 0;

  cdmSingleServiceWarmupAttemptContext = self->_cdmSingleServiceWarmupAttemptContext;
  self->_cdmSingleServiceWarmupAttemptContext = 0;

  cdmSingleServiceWarmupAttemptFailed = self->_cdmSingleServiceWarmupAttemptFailed;
  self->_cdmSingleServiceWarmupAttemptFailed = 0;

  cdmAssetsReported = self->_cdmAssetsReported;
  self->_cdmAssetsReported = 0;

  ssuUserRequestContext = self->_ssuUserRequestContext;
  self->_ssuUserRequestContext = 0;

  ssuBackgroundRequestContext = self->_ssuBackgroundRequestContext;
  self->_ssuBackgroundRequestContext = 0;

  cdmServiceHandleMetricsReported = self->_cdmServiceHandleMetricsReported;
  self->_cdmServiceHandleMetricsReported = 0;

  cdmServiceSetupMetricsReported = self->_cdmServiceSetupMetricsReported;
  self->_cdmServiceSetupMetricsReported = 0;

  cdmSetupLink = self->_cdmSetupLink;
  self->_cdmSetupLink = 0;

  v45 = 140;
  if (!v4)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  milAssetAcquisitionContext = self->_milAssetAcquisitionContext;
  self->_milAssetAcquisitionContext = v4;
}

- (void)deleteCdmServiceSetupMetricsReported
{
  if (self->_whichEvent_Type == 139)
  {
    self->_whichEvent_Type = 0;
    self->_cdmServiceSetupMetricsReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setCdmServiceSetupMetricsReported:(id)a3
{
  v4 = a3;
  cdmServiceContext = self->_cdmServiceContext;
  self->_cdmServiceContext = 0;

  cdmRequestContext = self->_cdmRequestContext;
  self->_cdmRequestContext = 0;

  nlxDeviceFixedContext = self->_nlxDeviceFixedContext;
  self->_nlxDeviceFixedContext = 0;

  cdmMatchingSpanEnded = self->_cdmMatchingSpanEnded;
  self->_cdmMatchingSpanEnded = 0;

  cdmUsoGraphTier1 = self->_cdmUsoGraphTier1;
  self->_cdmUsoGraphTier1 = 0;

  cdmMatchingSpanTier1 = self->_cdmMatchingSpanTier1;
  self->_cdmMatchingSpanTier1 = 0;

  nlxLegacyNLContextTier1 = self->_nlxLegacyNLContextTier1;
  self->_nlxLegacyNLContextTier1 = 0;

  cdmDelegatedUserDialogActTier1 = self->_cdmDelegatedUserDialogActTier1;
  self->_cdmDelegatedUserDialogActTier1 = 0;

  cdmSystemDialogActTier1 = self->_cdmSystemDialogActTier1;
  self->_cdmSystemDialogActTier1 = 0;

  cdmTokenizationEnded = self->_cdmTokenizationEnded;
  self->_cdmTokenizationEnded = 0;

  cdmContextUpdateEnded = self->_cdmContextUpdateEnded;
  self->_cdmContextUpdateEnded = 0;

  marrsRepetitionDetectionContext = self->_marrsRepetitionDetectionContext;
  self->_marrsRepetitionDetectionContext = 0;

  marrsQueryRewriteContext = self->_marrsQueryRewriteContext;
  self->_marrsQueryRewriteContext = 0;

  marrsQueryRewriteEvaluatedTier1 = self->_marrsQueryRewriteEvaluatedTier1;
  self->_marrsQueryRewriteEvaluatedTier1 = 0;

  cdmMatchingSpanEndedTier1 = self->_cdmMatchingSpanEndedTier1;
  self->_cdmMatchingSpanEndedTier1 = 0;

  nlxCurareContext = self->_nlxCurareContext;
  self->_nlxCurareContext = 0;

  marrsMentionDetectorEnded = self->_marrsMentionDetectorEnded;
  self->_marrsMentionDetectorEnded = 0;

  marrsMentionDetectorEndedTier1 = self->_marrsMentionDetectorEndedTier1;
  self->_marrsMentionDetectorEndedTier1 = 0;

  marrsMentionResolverEnded = self->_marrsMentionResolverEnded;
  self->_marrsMentionResolverEnded = 0;

  marrsMentionResolverEndedTier1 = self->_marrsMentionResolverEndedTier1;
  self->_marrsMentionResolverEndedTier1 = 0;

  cdmClientSetupContext = self->_cdmClientSetupContext;
  self->_cdmClientSetupContext = 0;

  cdmAllServicesSetupContext = self->_cdmAllServicesSetupContext;
  self->_cdmAllServicesSetupContext = 0;

  cdmSingleServiceSetupAttemptContext = self->_cdmSingleServiceSetupAttemptContext;
  self->_cdmSingleServiceSetupAttemptContext = 0;

  cdmSingleServiceSetupAttemptFailed = self->_cdmSingleServiceSetupAttemptFailed;
  self->_cdmSingleServiceSetupAttemptFailed = 0;

  cdmSpanMatcherContext = self->_cdmSpanMatcherContext;
  self->_cdmSpanMatcherContext = 0;

  marrsContextualSpanMatcherEnded = self->_marrsContextualSpanMatcherEnded;
  self->_marrsContextualSpanMatcherEnded = 0;

  marrsContextualSpanMatcherEndedTier1 = self->_marrsContextualSpanMatcherEndedTier1;
  self->_marrsContextualSpanMatcherEndedTier1 = 0;

  cdmXpcEventProcessingContext = self->_cdmXpcEventProcessingContext;
  self->_cdmXpcEventProcessingContext = 0;

  cdmAssetSetupContext = self->_cdmAssetSetupContext;
  self->_cdmAssetSetupContext = 0;

  cdmSetupMissingAssetsDetected = self->_cdmSetupMissingAssetsDetected;
  self->_cdmSetupMissingAssetsDetected = 0;

  cdmClientWarmupContext = self->_cdmClientWarmupContext;
  self->_cdmClientWarmupContext = 0;

  cdmAllServicesWarmupContext = self->_cdmAllServicesWarmupContext;
  self->_cdmAllServicesWarmupContext = 0;

  cdmSingleServiceWarmupAttemptContext = self->_cdmSingleServiceWarmupAttemptContext;
  self->_cdmSingleServiceWarmupAttemptContext = 0;

  cdmSingleServiceWarmupAttemptFailed = self->_cdmSingleServiceWarmupAttemptFailed;
  self->_cdmSingleServiceWarmupAttemptFailed = 0;

  cdmAssetsReported = self->_cdmAssetsReported;
  self->_cdmAssetsReported = 0;

  ssuUserRequestContext = self->_ssuUserRequestContext;
  self->_ssuUserRequestContext = 0;

  ssuBackgroundRequestContext = self->_ssuBackgroundRequestContext;
  self->_ssuBackgroundRequestContext = 0;

  cdmServiceHandleMetricsReported = self->_cdmServiceHandleMetricsReported;
  self->_cdmServiceHandleMetricsReported = 0;

  milAssetAcquisitionContext = self->_milAssetAcquisitionContext;
  self->_milAssetAcquisitionContext = 0;

  cdmSetupLink = self->_cdmSetupLink;
  self->_cdmSetupLink = 0;

  v45 = 139;
  if (!v4)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  cdmServiceSetupMetricsReported = self->_cdmServiceSetupMetricsReported;
  self->_cdmServiceSetupMetricsReported = v4;
}

- (void)deleteCdmServiceHandleMetricsReported
{
  if (self->_whichEvent_Type == 138)
  {
    self->_whichEvent_Type = 0;
    self->_cdmServiceHandleMetricsReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setCdmServiceHandleMetricsReported:(id)a3
{
  v4 = a3;
  cdmServiceContext = self->_cdmServiceContext;
  self->_cdmServiceContext = 0;

  cdmRequestContext = self->_cdmRequestContext;
  self->_cdmRequestContext = 0;

  nlxDeviceFixedContext = self->_nlxDeviceFixedContext;
  self->_nlxDeviceFixedContext = 0;

  cdmMatchingSpanEnded = self->_cdmMatchingSpanEnded;
  self->_cdmMatchingSpanEnded = 0;

  cdmUsoGraphTier1 = self->_cdmUsoGraphTier1;
  self->_cdmUsoGraphTier1 = 0;

  cdmMatchingSpanTier1 = self->_cdmMatchingSpanTier1;
  self->_cdmMatchingSpanTier1 = 0;

  nlxLegacyNLContextTier1 = self->_nlxLegacyNLContextTier1;
  self->_nlxLegacyNLContextTier1 = 0;

  cdmDelegatedUserDialogActTier1 = self->_cdmDelegatedUserDialogActTier1;
  self->_cdmDelegatedUserDialogActTier1 = 0;

  cdmSystemDialogActTier1 = self->_cdmSystemDialogActTier1;
  self->_cdmSystemDialogActTier1 = 0;

  cdmTokenizationEnded = self->_cdmTokenizationEnded;
  self->_cdmTokenizationEnded = 0;

  cdmContextUpdateEnded = self->_cdmContextUpdateEnded;
  self->_cdmContextUpdateEnded = 0;

  marrsRepetitionDetectionContext = self->_marrsRepetitionDetectionContext;
  self->_marrsRepetitionDetectionContext = 0;

  marrsQueryRewriteContext = self->_marrsQueryRewriteContext;
  self->_marrsQueryRewriteContext = 0;

  marrsQueryRewriteEvaluatedTier1 = self->_marrsQueryRewriteEvaluatedTier1;
  self->_marrsQueryRewriteEvaluatedTier1 = 0;

  cdmMatchingSpanEndedTier1 = self->_cdmMatchingSpanEndedTier1;
  self->_cdmMatchingSpanEndedTier1 = 0;

  nlxCurareContext = self->_nlxCurareContext;
  self->_nlxCurareContext = 0;

  marrsMentionDetectorEnded = self->_marrsMentionDetectorEnded;
  self->_marrsMentionDetectorEnded = 0;

  marrsMentionDetectorEndedTier1 = self->_marrsMentionDetectorEndedTier1;
  self->_marrsMentionDetectorEndedTier1 = 0;

  marrsMentionResolverEnded = self->_marrsMentionResolverEnded;
  self->_marrsMentionResolverEnded = 0;

  marrsMentionResolverEndedTier1 = self->_marrsMentionResolverEndedTier1;
  self->_marrsMentionResolverEndedTier1 = 0;

  cdmClientSetupContext = self->_cdmClientSetupContext;
  self->_cdmClientSetupContext = 0;

  cdmAllServicesSetupContext = self->_cdmAllServicesSetupContext;
  self->_cdmAllServicesSetupContext = 0;

  cdmSingleServiceSetupAttemptContext = self->_cdmSingleServiceSetupAttemptContext;
  self->_cdmSingleServiceSetupAttemptContext = 0;

  cdmSingleServiceSetupAttemptFailed = self->_cdmSingleServiceSetupAttemptFailed;
  self->_cdmSingleServiceSetupAttemptFailed = 0;

  cdmSpanMatcherContext = self->_cdmSpanMatcherContext;
  self->_cdmSpanMatcherContext = 0;

  marrsContextualSpanMatcherEnded = self->_marrsContextualSpanMatcherEnded;
  self->_marrsContextualSpanMatcherEnded = 0;

  marrsContextualSpanMatcherEndedTier1 = self->_marrsContextualSpanMatcherEndedTier1;
  self->_marrsContextualSpanMatcherEndedTier1 = 0;

  cdmXpcEventProcessingContext = self->_cdmXpcEventProcessingContext;
  self->_cdmXpcEventProcessingContext = 0;

  cdmAssetSetupContext = self->_cdmAssetSetupContext;
  self->_cdmAssetSetupContext = 0;

  cdmSetupMissingAssetsDetected = self->_cdmSetupMissingAssetsDetected;
  self->_cdmSetupMissingAssetsDetected = 0;

  cdmClientWarmupContext = self->_cdmClientWarmupContext;
  self->_cdmClientWarmupContext = 0;

  cdmAllServicesWarmupContext = self->_cdmAllServicesWarmupContext;
  self->_cdmAllServicesWarmupContext = 0;

  cdmSingleServiceWarmupAttemptContext = self->_cdmSingleServiceWarmupAttemptContext;
  self->_cdmSingleServiceWarmupAttemptContext = 0;

  cdmSingleServiceWarmupAttemptFailed = self->_cdmSingleServiceWarmupAttemptFailed;
  self->_cdmSingleServiceWarmupAttemptFailed = 0;

  cdmAssetsReported = self->_cdmAssetsReported;
  self->_cdmAssetsReported = 0;

  ssuUserRequestContext = self->_ssuUserRequestContext;
  self->_ssuUserRequestContext = 0;

  ssuBackgroundRequestContext = self->_ssuBackgroundRequestContext;
  self->_ssuBackgroundRequestContext = 0;

  cdmServiceSetupMetricsReported = self->_cdmServiceSetupMetricsReported;
  self->_cdmServiceSetupMetricsReported = 0;

  milAssetAcquisitionContext = self->_milAssetAcquisitionContext;
  self->_milAssetAcquisitionContext = 0;

  cdmSetupLink = self->_cdmSetupLink;
  self->_cdmSetupLink = 0;

  v45 = 138;
  if (!v4)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  cdmServiceHandleMetricsReported = self->_cdmServiceHandleMetricsReported;
  self->_cdmServiceHandleMetricsReported = v4;
}

- (void)deleteSsuBackgroundRequestContext
{
  if (self->_whichEvent_Type == 137)
  {
    self->_whichEvent_Type = 0;
    self->_ssuBackgroundRequestContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setSsuBackgroundRequestContext:(id)a3
{
  v4 = a3;
  cdmServiceContext = self->_cdmServiceContext;
  self->_cdmServiceContext = 0;

  cdmRequestContext = self->_cdmRequestContext;
  self->_cdmRequestContext = 0;

  nlxDeviceFixedContext = self->_nlxDeviceFixedContext;
  self->_nlxDeviceFixedContext = 0;

  cdmMatchingSpanEnded = self->_cdmMatchingSpanEnded;
  self->_cdmMatchingSpanEnded = 0;

  cdmUsoGraphTier1 = self->_cdmUsoGraphTier1;
  self->_cdmUsoGraphTier1 = 0;

  cdmMatchingSpanTier1 = self->_cdmMatchingSpanTier1;
  self->_cdmMatchingSpanTier1 = 0;

  nlxLegacyNLContextTier1 = self->_nlxLegacyNLContextTier1;
  self->_nlxLegacyNLContextTier1 = 0;

  cdmDelegatedUserDialogActTier1 = self->_cdmDelegatedUserDialogActTier1;
  self->_cdmDelegatedUserDialogActTier1 = 0;

  cdmSystemDialogActTier1 = self->_cdmSystemDialogActTier1;
  self->_cdmSystemDialogActTier1 = 0;

  cdmTokenizationEnded = self->_cdmTokenizationEnded;
  self->_cdmTokenizationEnded = 0;

  cdmContextUpdateEnded = self->_cdmContextUpdateEnded;
  self->_cdmContextUpdateEnded = 0;

  marrsRepetitionDetectionContext = self->_marrsRepetitionDetectionContext;
  self->_marrsRepetitionDetectionContext = 0;

  marrsQueryRewriteContext = self->_marrsQueryRewriteContext;
  self->_marrsQueryRewriteContext = 0;

  marrsQueryRewriteEvaluatedTier1 = self->_marrsQueryRewriteEvaluatedTier1;
  self->_marrsQueryRewriteEvaluatedTier1 = 0;

  cdmMatchingSpanEndedTier1 = self->_cdmMatchingSpanEndedTier1;
  self->_cdmMatchingSpanEndedTier1 = 0;

  nlxCurareContext = self->_nlxCurareContext;
  self->_nlxCurareContext = 0;

  marrsMentionDetectorEnded = self->_marrsMentionDetectorEnded;
  self->_marrsMentionDetectorEnded = 0;

  marrsMentionDetectorEndedTier1 = self->_marrsMentionDetectorEndedTier1;
  self->_marrsMentionDetectorEndedTier1 = 0;

  marrsMentionResolverEnded = self->_marrsMentionResolverEnded;
  self->_marrsMentionResolverEnded = 0;

  marrsMentionResolverEndedTier1 = self->_marrsMentionResolverEndedTier1;
  self->_marrsMentionResolverEndedTier1 = 0;

  cdmClientSetupContext = self->_cdmClientSetupContext;
  self->_cdmClientSetupContext = 0;

  cdmAllServicesSetupContext = self->_cdmAllServicesSetupContext;
  self->_cdmAllServicesSetupContext = 0;

  cdmSingleServiceSetupAttemptContext = self->_cdmSingleServiceSetupAttemptContext;
  self->_cdmSingleServiceSetupAttemptContext = 0;

  cdmSingleServiceSetupAttemptFailed = self->_cdmSingleServiceSetupAttemptFailed;
  self->_cdmSingleServiceSetupAttemptFailed = 0;

  cdmSpanMatcherContext = self->_cdmSpanMatcherContext;
  self->_cdmSpanMatcherContext = 0;

  marrsContextualSpanMatcherEnded = self->_marrsContextualSpanMatcherEnded;
  self->_marrsContextualSpanMatcherEnded = 0;

  marrsContextualSpanMatcherEndedTier1 = self->_marrsContextualSpanMatcherEndedTier1;
  self->_marrsContextualSpanMatcherEndedTier1 = 0;

  cdmXpcEventProcessingContext = self->_cdmXpcEventProcessingContext;
  self->_cdmXpcEventProcessingContext = 0;

  cdmAssetSetupContext = self->_cdmAssetSetupContext;
  self->_cdmAssetSetupContext = 0;

  cdmSetupMissingAssetsDetected = self->_cdmSetupMissingAssetsDetected;
  self->_cdmSetupMissingAssetsDetected = 0;

  cdmClientWarmupContext = self->_cdmClientWarmupContext;
  self->_cdmClientWarmupContext = 0;

  cdmAllServicesWarmupContext = self->_cdmAllServicesWarmupContext;
  self->_cdmAllServicesWarmupContext = 0;

  cdmSingleServiceWarmupAttemptContext = self->_cdmSingleServiceWarmupAttemptContext;
  self->_cdmSingleServiceWarmupAttemptContext = 0;

  cdmSingleServiceWarmupAttemptFailed = self->_cdmSingleServiceWarmupAttemptFailed;
  self->_cdmSingleServiceWarmupAttemptFailed = 0;

  cdmAssetsReported = self->_cdmAssetsReported;
  self->_cdmAssetsReported = 0;

  ssuUserRequestContext = self->_ssuUserRequestContext;
  self->_ssuUserRequestContext = 0;

  cdmServiceHandleMetricsReported = self->_cdmServiceHandleMetricsReported;
  self->_cdmServiceHandleMetricsReported = 0;

  cdmServiceSetupMetricsReported = self->_cdmServiceSetupMetricsReported;
  self->_cdmServiceSetupMetricsReported = 0;

  milAssetAcquisitionContext = self->_milAssetAcquisitionContext;
  self->_milAssetAcquisitionContext = 0;

  cdmSetupLink = self->_cdmSetupLink;
  self->_cdmSetupLink = 0;

  v45 = 137;
  if (!v4)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  ssuBackgroundRequestContext = self->_ssuBackgroundRequestContext;
  self->_ssuBackgroundRequestContext = v4;
}

- (void)deleteSsuUserRequestContext
{
  if (self->_whichEvent_Type == 136)
  {
    self->_whichEvent_Type = 0;
    self->_ssuUserRequestContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setSsuUserRequestContext:(id)a3
{
  v4 = a3;
  cdmServiceContext = self->_cdmServiceContext;
  self->_cdmServiceContext = 0;

  cdmRequestContext = self->_cdmRequestContext;
  self->_cdmRequestContext = 0;

  nlxDeviceFixedContext = self->_nlxDeviceFixedContext;
  self->_nlxDeviceFixedContext = 0;

  cdmMatchingSpanEnded = self->_cdmMatchingSpanEnded;
  self->_cdmMatchingSpanEnded = 0;

  cdmUsoGraphTier1 = self->_cdmUsoGraphTier1;
  self->_cdmUsoGraphTier1 = 0;

  cdmMatchingSpanTier1 = self->_cdmMatchingSpanTier1;
  self->_cdmMatchingSpanTier1 = 0;

  nlxLegacyNLContextTier1 = self->_nlxLegacyNLContextTier1;
  self->_nlxLegacyNLContextTier1 = 0;

  cdmDelegatedUserDialogActTier1 = self->_cdmDelegatedUserDialogActTier1;
  self->_cdmDelegatedUserDialogActTier1 = 0;

  cdmSystemDialogActTier1 = self->_cdmSystemDialogActTier1;
  self->_cdmSystemDialogActTier1 = 0;

  cdmTokenizationEnded = self->_cdmTokenizationEnded;
  self->_cdmTokenizationEnded = 0;

  cdmContextUpdateEnded = self->_cdmContextUpdateEnded;
  self->_cdmContextUpdateEnded = 0;

  marrsRepetitionDetectionContext = self->_marrsRepetitionDetectionContext;
  self->_marrsRepetitionDetectionContext = 0;

  marrsQueryRewriteContext = self->_marrsQueryRewriteContext;
  self->_marrsQueryRewriteContext = 0;

  marrsQueryRewriteEvaluatedTier1 = self->_marrsQueryRewriteEvaluatedTier1;
  self->_marrsQueryRewriteEvaluatedTier1 = 0;

  cdmMatchingSpanEndedTier1 = self->_cdmMatchingSpanEndedTier1;
  self->_cdmMatchingSpanEndedTier1 = 0;

  nlxCurareContext = self->_nlxCurareContext;
  self->_nlxCurareContext = 0;

  marrsMentionDetectorEnded = self->_marrsMentionDetectorEnded;
  self->_marrsMentionDetectorEnded = 0;

  marrsMentionDetectorEndedTier1 = self->_marrsMentionDetectorEndedTier1;
  self->_marrsMentionDetectorEndedTier1 = 0;

  marrsMentionResolverEnded = self->_marrsMentionResolverEnded;
  self->_marrsMentionResolverEnded = 0;

  marrsMentionResolverEndedTier1 = self->_marrsMentionResolverEndedTier1;
  self->_marrsMentionResolverEndedTier1 = 0;

  cdmClientSetupContext = self->_cdmClientSetupContext;
  self->_cdmClientSetupContext = 0;

  cdmAllServicesSetupContext = self->_cdmAllServicesSetupContext;
  self->_cdmAllServicesSetupContext = 0;

  cdmSingleServiceSetupAttemptContext = self->_cdmSingleServiceSetupAttemptContext;
  self->_cdmSingleServiceSetupAttemptContext = 0;

  cdmSingleServiceSetupAttemptFailed = self->_cdmSingleServiceSetupAttemptFailed;
  self->_cdmSingleServiceSetupAttemptFailed = 0;

  cdmSpanMatcherContext = self->_cdmSpanMatcherContext;
  self->_cdmSpanMatcherContext = 0;

  marrsContextualSpanMatcherEnded = self->_marrsContextualSpanMatcherEnded;
  self->_marrsContextualSpanMatcherEnded = 0;

  marrsContextualSpanMatcherEndedTier1 = self->_marrsContextualSpanMatcherEndedTier1;
  self->_marrsContextualSpanMatcherEndedTier1 = 0;

  cdmXpcEventProcessingContext = self->_cdmXpcEventProcessingContext;
  self->_cdmXpcEventProcessingContext = 0;

  cdmAssetSetupContext = self->_cdmAssetSetupContext;
  self->_cdmAssetSetupContext = 0;

  cdmSetupMissingAssetsDetected = self->_cdmSetupMissingAssetsDetected;
  self->_cdmSetupMissingAssetsDetected = 0;

  cdmClientWarmupContext = self->_cdmClientWarmupContext;
  self->_cdmClientWarmupContext = 0;

  cdmAllServicesWarmupContext = self->_cdmAllServicesWarmupContext;
  self->_cdmAllServicesWarmupContext = 0;

  cdmSingleServiceWarmupAttemptContext = self->_cdmSingleServiceWarmupAttemptContext;
  self->_cdmSingleServiceWarmupAttemptContext = 0;

  cdmSingleServiceWarmupAttemptFailed = self->_cdmSingleServiceWarmupAttemptFailed;
  self->_cdmSingleServiceWarmupAttemptFailed = 0;

  cdmAssetsReported = self->_cdmAssetsReported;
  self->_cdmAssetsReported = 0;

  ssuBackgroundRequestContext = self->_ssuBackgroundRequestContext;
  self->_ssuBackgroundRequestContext = 0;

  cdmServiceHandleMetricsReported = self->_cdmServiceHandleMetricsReported;
  self->_cdmServiceHandleMetricsReported = 0;

  cdmServiceSetupMetricsReported = self->_cdmServiceSetupMetricsReported;
  self->_cdmServiceSetupMetricsReported = 0;

  milAssetAcquisitionContext = self->_milAssetAcquisitionContext;
  self->_milAssetAcquisitionContext = 0;

  cdmSetupLink = self->_cdmSetupLink;
  self->_cdmSetupLink = 0;

  v45 = 136;
  if (!v4)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  ssuUserRequestContext = self->_ssuUserRequestContext;
  self->_ssuUserRequestContext = v4;
}

- (void)deleteCdmAssetsReported
{
  if (self->_whichEvent_Type == 135)
  {
    self->_whichEvent_Type = 0;
    self->_cdmAssetsReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setCdmAssetsReported:(id)a3
{
  v4 = a3;
  cdmServiceContext = self->_cdmServiceContext;
  self->_cdmServiceContext = 0;

  cdmRequestContext = self->_cdmRequestContext;
  self->_cdmRequestContext = 0;

  nlxDeviceFixedContext = self->_nlxDeviceFixedContext;
  self->_nlxDeviceFixedContext = 0;

  cdmMatchingSpanEnded = self->_cdmMatchingSpanEnded;
  self->_cdmMatchingSpanEnded = 0;

  cdmUsoGraphTier1 = self->_cdmUsoGraphTier1;
  self->_cdmUsoGraphTier1 = 0;

  cdmMatchingSpanTier1 = self->_cdmMatchingSpanTier1;
  self->_cdmMatchingSpanTier1 = 0;

  nlxLegacyNLContextTier1 = self->_nlxLegacyNLContextTier1;
  self->_nlxLegacyNLContextTier1 = 0;

  cdmDelegatedUserDialogActTier1 = self->_cdmDelegatedUserDialogActTier1;
  self->_cdmDelegatedUserDialogActTier1 = 0;

  cdmSystemDialogActTier1 = self->_cdmSystemDialogActTier1;
  self->_cdmSystemDialogActTier1 = 0;

  cdmTokenizationEnded = self->_cdmTokenizationEnded;
  self->_cdmTokenizationEnded = 0;

  cdmContextUpdateEnded = self->_cdmContextUpdateEnded;
  self->_cdmContextUpdateEnded = 0;

  marrsRepetitionDetectionContext = self->_marrsRepetitionDetectionContext;
  self->_marrsRepetitionDetectionContext = 0;

  marrsQueryRewriteContext = self->_marrsQueryRewriteContext;
  self->_marrsQueryRewriteContext = 0;

  marrsQueryRewriteEvaluatedTier1 = self->_marrsQueryRewriteEvaluatedTier1;
  self->_marrsQueryRewriteEvaluatedTier1 = 0;

  cdmMatchingSpanEndedTier1 = self->_cdmMatchingSpanEndedTier1;
  self->_cdmMatchingSpanEndedTier1 = 0;

  nlxCurareContext = self->_nlxCurareContext;
  self->_nlxCurareContext = 0;

  marrsMentionDetectorEnded = self->_marrsMentionDetectorEnded;
  self->_marrsMentionDetectorEnded = 0;

  marrsMentionDetectorEndedTier1 = self->_marrsMentionDetectorEndedTier1;
  self->_marrsMentionDetectorEndedTier1 = 0;

  marrsMentionResolverEnded = self->_marrsMentionResolverEnded;
  self->_marrsMentionResolverEnded = 0;

  marrsMentionResolverEndedTier1 = self->_marrsMentionResolverEndedTier1;
  self->_marrsMentionResolverEndedTier1 = 0;

  cdmClientSetupContext = self->_cdmClientSetupContext;
  self->_cdmClientSetupContext = 0;

  cdmAllServicesSetupContext = self->_cdmAllServicesSetupContext;
  self->_cdmAllServicesSetupContext = 0;

  cdmSingleServiceSetupAttemptContext = self->_cdmSingleServiceSetupAttemptContext;
  self->_cdmSingleServiceSetupAttemptContext = 0;

  cdmSingleServiceSetupAttemptFailed = self->_cdmSingleServiceSetupAttemptFailed;
  self->_cdmSingleServiceSetupAttemptFailed = 0;

  cdmSpanMatcherContext = self->_cdmSpanMatcherContext;
  self->_cdmSpanMatcherContext = 0;

  marrsContextualSpanMatcherEnded = self->_marrsContextualSpanMatcherEnded;
  self->_marrsContextualSpanMatcherEnded = 0;

  marrsContextualSpanMatcherEndedTier1 = self->_marrsContextualSpanMatcherEndedTier1;
  self->_marrsContextualSpanMatcherEndedTier1 = 0;

  cdmXpcEventProcessingContext = self->_cdmXpcEventProcessingContext;
  self->_cdmXpcEventProcessingContext = 0;

  cdmAssetSetupContext = self->_cdmAssetSetupContext;
  self->_cdmAssetSetupContext = 0;

  cdmSetupMissingAssetsDetected = self->_cdmSetupMissingAssetsDetected;
  self->_cdmSetupMissingAssetsDetected = 0;

  cdmClientWarmupContext = self->_cdmClientWarmupContext;
  self->_cdmClientWarmupContext = 0;

  cdmAllServicesWarmupContext = self->_cdmAllServicesWarmupContext;
  self->_cdmAllServicesWarmupContext = 0;

  cdmSingleServiceWarmupAttemptContext = self->_cdmSingleServiceWarmupAttemptContext;
  self->_cdmSingleServiceWarmupAttemptContext = 0;

  cdmSingleServiceWarmupAttemptFailed = self->_cdmSingleServiceWarmupAttemptFailed;
  self->_cdmSingleServiceWarmupAttemptFailed = 0;

  ssuUserRequestContext = self->_ssuUserRequestContext;
  self->_ssuUserRequestContext = 0;

  ssuBackgroundRequestContext = self->_ssuBackgroundRequestContext;
  self->_ssuBackgroundRequestContext = 0;

  cdmServiceHandleMetricsReported = self->_cdmServiceHandleMetricsReported;
  self->_cdmServiceHandleMetricsReported = 0;

  cdmServiceSetupMetricsReported = self->_cdmServiceSetupMetricsReported;
  self->_cdmServiceSetupMetricsReported = 0;

  milAssetAcquisitionContext = self->_milAssetAcquisitionContext;
  self->_milAssetAcquisitionContext = 0;

  cdmSetupLink = self->_cdmSetupLink;
  self->_cdmSetupLink = 0;

  v45 = 135;
  if (!v4)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  cdmAssetsReported = self->_cdmAssetsReported;
  self->_cdmAssetsReported = v4;
}

- (void)deleteCdmSingleServiceWarmupAttemptFailed
{
  if (self->_whichEvent_Type == 134)
  {
    self->_whichEvent_Type = 0;
    self->_cdmSingleServiceWarmupAttemptFailed = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setCdmSingleServiceWarmupAttemptFailed:(id)a3
{
  v4 = a3;
  cdmServiceContext = self->_cdmServiceContext;
  self->_cdmServiceContext = 0;

  cdmRequestContext = self->_cdmRequestContext;
  self->_cdmRequestContext = 0;

  nlxDeviceFixedContext = self->_nlxDeviceFixedContext;
  self->_nlxDeviceFixedContext = 0;

  cdmMatchingSpanEnded = self->_cdmMatchingSpanEnded;
  self->_cdmMatchingSpanEnded = 0;

  cdmUsoGraphTier1 = self->_cdmUsoGraphTier1;
  self->_cdmUsoGraphTier1 = 0;

  cdmMatchingSpanTier1 = self->_cdmMatchingSpanTier1;
  self->_cdmMatchingSpanTier1 = 0;

  nlxLegacyNLContextTier1 = self->_nlxLegacyNLContextTier1;
  self->_nlxLegacyNLContextTier1 = 0;

  cdmDelegatedUserDialogActTier1 = self->_cdmDelegatedUserDialogActTier1;
  self->_cdmDelegatedUserDialogActTier1 = 0;

  cdmSystemDialogActTier1 = self->_cdmSystemDialogActTier1;
  self->_cdmSystemDialogActTier1 = 0;

  cdmTokenizationEnded = self->_cdmTokenizationEnded;
  self->_cdmTokenizationEnded = 0;

  cdmContextUpdateEnded = self->_cdmContextUpdateEnded;
  self->_cdmContextUpdateEnded = 0;

  marrsRepetitionDetectionContext = self->_marrsRepetitionDetectionContext;
  self->_marrsRepetitionDetectionContext = 0;

  marrsQueryRewriteContext = self->_marrsQueryRewriteContext;
  self->_marrsQueryRewriteContext = 0;

  marrsQueryRewriteEvaluatedTier1 = self->_marrsQueryRewriteEvaluatedTier1;
  self->_marrsQueryRewriteEvaluatedTier1 = 0;

  cdmMatchingSpanEndedTier1 = self->_cdmMatchingSpanEndedTier1;
  self->_cdmMatchingSpanEndedTier1 = 0;

  nlxCurareContext = self->_nlxCurareContext;
  self->_nlxCurareContext = 0;

  marrsMentionDetectorEnded = self->_marrsMentionDetectorEnded;
  self->_marrsMentionDetectorEnded = 0;

  marrsMentionDetectorEndedTier1 = self->_marrsMentionDetectorEndedTier1;
  self->_marrsMentionDetectorEndedTier1 = 0;

  marrsMentionResolverEnded = self->_marrsMentionResolverEnded;
  self->_marrsMentionResolverEnded = 0;

  marrsMentionResolverEndedTier1 = self->_marrsMentionResolverEndedTier1;
  self->_marrsMentionResolverEndedTier1 = 0;

  cdmClientSetupContext = self->_cdmClientSetupContext;
  self->_cdmClientSetupContext = 0;

  cdmAllServicesSetupContext = self->_cdmAllServicesSetupContext;
  self->_cdmAllServicesSetupContext = 0;

  cdmSingleServiceSetupAttemptContext = self->_cdmSingleServiceSetupAttemptContext;
  self->_cdmSingleServiceSetupAttemptContext = 0;

  cdmSingleServiceSetupAttemptFailed = self->_cdmSingleServiceSetupAttemptFailed;
  self->_cdmSingleServiceSetupAttemptFailed = 0;

  cdmSpanMatcherContext = self->_cdmSpanMatcherContext;
  self->_cdmSpanMatcherContext = 0;

  marrsContextualSpanMatcherEnded = self->_marrsContextualSpanMatcherEnded;
  self->_marrsContextualSpanMatcherEnded = 0;

  marrsContextualSpanMatcherEndedTier1 = self->_marrsContextualSpanMatcherEndedTier1;
  self->_marrsContextualSpanMatcherEndedTier1 = 0;

  cdmXpcEventProcessingContext = self->_cdmXpcEventProcessingContext;
  self->_cdmXpcEventProcessingContext = 0;

  cdmAssetSetupContext = self->_cdmAssetSetupContext;
  self->_cdmAssetSetupContext = 0;

  cdmSetupMissingAssetsDetected = self->_cdmSetupMissingAssetsDetected;
  self->_cdmSetupMissingAssetsDetected = 0;

  cdmClientWarmupContext = self->_cdmClientWarmupContext;
  self->_cdmClientWarmupContext = 0;

  cdmAllServicesWarmupContext = self->_cdmAllServicesWarmupContext;
  self->_cdmAllServicesWarmupContext = 0;

  cdmSingleServiceWarmupAttemptContext = self->_cdmSingleServiceWarmupAttemptContext;
  self->_cdmSingleServiceWarmupAttemptContext = 0;

  cdmAssetsReported = self->_cdmAssetsReported;
  self->_cdmAssetsReported = 0;

  ssuUserRequestContext = self->_ssuUserRequestContext;
  self->_ssuUserRequestContext = 0;

  ssuBackgroundRequestContext = self->_ssuBackgroundRequestContext;
  self->_ssuBackgroundRequestContext = 0;

  cdmServiceHandleMetricsReported = self->_cdmServiceHandleMetricsReported;
  self->_cdmServiceHandleMetricsReported = 0;

  cdmServiceSetupMetricsReported = self->_cdmServiceSetupMetricsReported;
  self->_cdmServiceSetupMetricsReported = 0;

  milAssetAcquisitionContext = self->_milAssetAcquisitionContext;
  self->_milAssetAcquisitionContext = 0;

  cdmSetupLink = self->_cdmSetupLink;
  self->_cdmSetupLink = 0;

  v45 = 134;
  if (!v4)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  cdmSingleServiceWarmupAttemptFailed = self->_cdmSingleServiceWarmupAttemptFailed;
  self->_cdmSingleServiceWarmupAttemptFailed = v4;
}

- (void)deleteCdmSingleServiceWarmupAttemptContext
{
  if (self->_whichEvent_Type == 133)
  {
    self->_whichEvent_Type = 0;
    self->_cdmSingleServiceWarmupAttemptContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setCdmSingleServiceWarmupAttemptContext:(id)a3
{
  v4 = a3;
  cdmServiceContext = self->_cdmServiceContext;
  self->_cdmServiceContext = 0;

  cdmRequestContext = self->_cdmRequestContext;
  self->_cdmRequestContext = 0;

  nlxDeviceFixedContext = self->_nlxDeviceFixedContext;
  self->_nlxDeviceFixedContext = 0;

  cdmMatchingSpanEnded = self->_cdmMatchingSpanEnded;
  self->_cdmMatchingSpanEnded = 0;

  cdmUsoGraphTier1 = self->_cdmUsoGraphTier1;
  self->_cdmUsoGraphTier1 = 0;

  cdmMatchingSpanTier1 = self->_cdmMatchingSpanTier1;
  self->_cdmMatchingSpanTier1 = 0;

  nlxLegacyNLContextTier1 = self->_nlxLegacyNLContextTier1;
  self->_nlxLegacyNLContextTier1 = 0;

  cdmDelegatedUserDialogActTier1 = self->_cdmDelegatedUserDialogActTier1;
  self->_cdmDelegatedUserDialogActTier1 = 0;

  cdmSystemDialogActTier1 = self->_cdmSystemDialogActTier1;
  self->_cdmSystemDialogActTier1 = 0;

  cdmTokenizationEnded = self->_cdmTokenizationEnded;
  self->_cdmTokenizationEnded = 0;

  cdmContextUpdateEnded = self->_cdmContextUpdateEnded;
  self->_cdmContextUpdateEnded = 0;

  marrsRepetitionDetectionContext = self->_marrsRepetitionDetectionContext;
  self->_marrsRepetitionDetectionContext = 0;

  marrsQueryRewriteContext = self->_marrsQueryRewriteContext;
  self->_marrsQueryRewriteContext = 0;

  marrsQueryRewriteEvaluatedTier1 = self->_marrsQueryRewriteEvaluatedTier1;
  self->_marrsQueryRewriteEvaluatedTier1 = 0;

  cdmMatchingSpanEndedTier1 = self->_cdmMatchingSpanEndedTier1;
  self->_cdmMatchingSpanEndedTier1 = 0;

  nlxCurareContext = self->_nlxCurareContext;
  self->_nlxCurareContext = 0;

  marrsMentionDetectorEnded = self->_marrsMentionDetectorEnded;
  self->_marrsMentionDetectorEnded = 0;

  marrsMentionDetectorEndedTier1 = self->_marrsMentionDetectorEndedTier1;
  self->_marrsMentionDetectorEndedTier1 = 0;

  marrsMentionResolverEnded = self->_marrsMentionResolverEnded;
  self->_marrsMentionResolverEnded = 0;

  marrsMentionResolverEndedTier1 = self->_marrsMentionResolverEndedTier1;
  self->_marrsMentionResolverEndedTier1 = 0;

  cdmClientSetupContext = self->_cdmClientSetupContext;
  self->_cdmClientSetupContext = 0;

  cdmAllServicesSetupContext = self->_cdmAllServicesSetupContext;
  self->_cdmAllServicesSetupContext = 0;

  cdmSingleServiceSetupAttemptContext = self->_cdmSingleServiceSetupAttemptContext;
  self->_cdmSingleServiceSetupAttemptContext = 0;

  cdmSingleServiceSetupAttemptFailed = self->_cdmSingleServiceSetupAttemptFailed;
  self->_cdmSingleServiceSetupAttemptFailed = 0;

  cdmSpanMatcherContext = self->_cdmSpanMatcherContext;
  self->_cdmSpanMatcherContext = 0;

  marrsContextualSpanMatcherEnded = self->_marrsContextualSpanMatcherEnded;
  self->_marrsContextualSpanMatcherEnded = 0;

  marrsContextualSpanMatcherEndedTier1 = self->_marrsContextualSpanMatcherEndedTier1;
  self->_marrsContextualSpanMatcherEndedTier1 = 0;

  cdmXpcEventProcessingContext = self->_cdmXpcEventProcessingContext;
  self->_cdmXpcEventProcessingContext = 0;

  cdmAssetSetupContext = self->_cdmAssetSetupContext;
  self->_cdmAssetSetupContext = 0;

  cdmSetupMissingAssetsDetected = self->_cdmSetupMissingAssetsDetected;
  self->_cdmSetupMissingAssetsDetected = 0;

  cdmClientWarmupContext = self->_cdmClientWarmupContext;
  self->_cdmClientWarmupContext = 0;

  cdmAllServicesWarmupContext = self->_cdmAllServicesWarmupContext;
  self->_cdmAllServicesWarmupContext = 0;

  cdmSingleServiceWarmupAttemptFailed = self->_cdmSingleServiceWarmupAttemptFailed;
  self->_cdmSingleServiceWarmupAttemptFailed = 0;

  cdmAssetsReported = self->_cdmAssetsReported;
  self->_cdmAssetsReported = 0;

  ssuUserRequestContext = self->_ssuUserRequestContext;
  self->_ssuUserRequestContext = 0;

  ssuBackgroundRequestContext = self->_ssuBackgroundRequestContext;
  self->_ssuBackgroundRequestContext = 0;

  cdmServiceHandleMetricsReported = self->_cdmServiceHandleMetricsReported;
  self->_cdmServiceHandleMetricsReported = 0;

  cdmServiceSetupMetricsReported = self->_cdmServiceSetupMetricsReported;
  self->_cdmServiceSetupMetricsReported = 0;

  milAssetAcquisitionContext = self->_milAssetAcquisitionContext;
  self->_milAssetAcquisitionContext = 0;

  cdmSetupLink = self->_cdmSetupLink;
  self->_cdmSetupLink = 0;

  v45 = 133;
  if (!v4)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  cdmSingleServiceWarmupAttemptContext = self->_cdmSingleServiceWarmupAttemptContext;
  self->_cdmSingleServiceWarmupAttemptContext = v4;
}

- (void)deleteCdmAllServicesWarmupContext
{
  if (self->_whichEvent_Type == 132)
  {
    self->_whichEvent_Type = 0;
    self->_cdmAllServicesWarmupContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setCdmAllServicesWarmupContext:(id)a3
{
  v4 = a3;
  cdmServiceContext = self->_cdmServiceContext;
  self->_cdmServiceContext = 0;

  cdmRequestContext = self->_cdmRequestContext;
  self->_cdmRequestContext = 0;

  nlxDeviceFixedContext = self->_nlxDeviceFixedContext;
  self->_nlxDeviceFixedContext = 0;

  cdmMatchingSpanEnded = self->_cdmMatchingSpanEnded;
  self->_cdmMatchingSpanEnded = 0;

  cdmUsoGraphTier1 = self->_cdmUsoGraphTier1;
  self->_cdmUsoGraphTier1 = 0;

  cdmMatchingSpanTier1 = self->_cdmMatchingSpanTier1;
  self->_cdmMatchingSpanTier1 = 0;

  nlxLegacyNLContextTier1 = self->_nlxLegacyNLContextTier1;
  self->_nlxLegacyNLContextTier1 = 0;

  cdmDelegatedUserDialogActTier1 = self->_cdmDelegatedUserDialogActTier1;
  self->_cdmDelegatedUserDialogActTier1 = 0;

  cdmSystemDialogActTier1 = self->_cdmSystemDialogActTier1;
  self->_cdmSystemDialogActTier1 = 0;

  cdmTokenizationEnded = self->_cdmTokenizationEnded;
  self->_cdmTokenizationEnded = 0;

  cdmContextUpdateEnded = self->_cdmContextUpdateEnded;
  self->_cdmContextUpdateEnded = 0;

  marrsRepetitionDetectionContext = self->_marrsRepetitionDetectionContext;
  self->_marrsRepetitionDetectionContext = 0;

  marrsQueryRewriteContext = self->_marrsQueryRewriteContext;
  self->_marrsQueryRewriteContext = 0;

  marrsQueryRewriteEvaluatedTier1 = self->_marrsQueryRewriteEvaluatedTier1;
  self->_marrsQueryRewriteEvaluatedTier1 = 0;

  cdmMatchingSpanEndedTier1 = self->_cdmMatchingSpanEndedTier1;
  self->_cdmMatchingSpanEndedTier1 = 0;

  nlxCurareContext = self->_nlxCurareContext;
  self->_nlxCurareContext = 0;

  marrsMentionDetectorEnded = self->_marrsMentionDetectorEnded;
  self->_marrsMentionDetectorEnded = 0;

  marrsMentionDetectorEndedTier1 = self->_marrsMentionDetectorEndedTier1;
  self->_marrsMentionDetectorEndedTier1 = 0;

  marrsMentionResolverEnded = self->_marrsMentionResolverEnded;
  self->_marrsMentionResolverEnded = 0;

  marrsMentionResolverEndedTier1 = self->_marrsMentionResolverEndedTier1;
  self->_marrsMentionResolverEndedTier1 = 0;

  cdmClientSetupContext = self->_cdmClientSetupContext;
  self->_cdmClientSetupContext = 0;

  cdmAllServicesSetupContext = self->_cdmAllServicesSetupContext;
  self->_cdmAllServicesSetupContext = 0;

  cdmSingleServiceSetupAttemptContext = self->_cdmSingleServiceSetupAttemptContext;
  self->_cdmSingleServiceSetupAttemptContext = 0;

  cdmSingleServiceSetupAttemptFailed = self->_cdmSingleServiceSetupAttemptFailed;
  self->_cdmSingleServiceSetupAttemptFailed = 0;

  cdmSpanMatcherContext = self->_cdmSpanMatcherContext;
  self->_cdmSpanMatcherContext = 0;

  marrsContextualSpanMatcherEnded = self->_marrsContextualSpanMatcherEnded;
  self->_marrsContextualSpanMatcherEnded = 0;

  marrsContextualSpanMatcherEndedTier1 = self->_marrsContextualSpanMatcherEndedTier1;
  self->_marrsContextualSpanMatcherEndedTier1 = 0;

  cdmXpcEventProcessingContext = self->_cdmXpcEventProcessingContext;
  self->_cdmXpcEventProcessingContext = 0;

  cdmAssetSetupContext = self->_cdmAssetSetupContext;
  self->_cdmAssetSetupContext = 0;

  cdmSetupMissingAssetsDetected = self->_cdmSetupMissingAssetsDetected;
  self->_cdmSetupMissingAssetsDetected = 0;

  cdmClientWarmupContext = self->_cdmClientWarmupContext;
  self->_cdmClientWarmupContext = 0;

  cdmSingleServiceWarmupAttemptContext = self->_cdmSingleServiceWarmupAttemptContext;
  self->_cdmSingleServiceWarmupAttemptContext = 0;

  cdmSingleServiceWarmupAttemptFailed = self->_cdmSingleServiceWarmupAttemptFailed;
  self->_cdmSingleServiceWarmupAttemptFailed = 0;

  cdmAssetsReported = self->_cdmAssetsReported;
  self->_cdmAssetsReported = 0;

  ssuUserRequestContext = self->_ssuUserRequestContext;
  self->_ssuUserRequestContext = 0;

  ssuBackgroundRequestContext = self->_ssuBackgroundRequestContext;
  self->_ssuBackgroundRequestContext = 0;

  cdmServiceHandleMetricsReported = self->_cdmServiceHandleMetricsReported;
  self->_cdmServiceHandleMetricsReported = 0;

  cdmServiceSetupMetricsReported = self->_cdmServiceSetupMetricsReported;
  self->_cdmServiceSetupMetricsReported = 0;

  milAssetAcquisitionContext = self->_milAssetAcquisitionContext;
  self->_milAssetAcquisitionContext = 0;

  cdmSetupLink = self->_cdmSetupLink;
  self->_cdmSetupLink = 0;

  v45 = 132;
  if (!v4)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  cdmAllServicesWarmupContext = self->_cdmAllServicesWarmupContext;
  self->_cdmAllServicesWarmupContext = v4;
}

- (void)deleteCdmClientWarmupContext
{
  if (self->_whichEvent_Type == 131)
  {
    self->_whichEvent_Type = 0;
    self->_cdmClientWarmupContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setCdmClientWarmupContext:(id)a3
{
  v4 = a3;
  cdmServiceContext = self->_cdmServiceContext;
  self->_cdmServiceContext = 0;

  cdmRequestContext = self->_cdmRequestContext;
  self->_cdmRequestContext = 0;

  nlxDeviceFixedContext = self->_nlxDeviceFixedContext;
  self->_nlxDeviceFixedContext = 0;

  cdmMatchingSpanEnded = self->_cdmMatchingSpanEnded;
  self->_cdmMatchingSpanEnded = 0;

  cdmUsoGraphTier1 = self->_cdmUsoGraphTier1;
  self->_cdmUsoGraphTier1 = 0;

  cdmMatchingSpanTier1 = self->_cdmMatchingSpanTier1;
  self->_cdmMatchingSpanTier1 = 0;

  nlxLegacyNLContextTier1 = self->_nlxLegacyNLContextTier1;
  self->_nlxLegacyNLContextTier1 = 0;

  cdmDelegatedUserDialogActTier1 = self->_cdmDelegatedUserDialogActTier1;
  self->_cdmDelegatedUserDialogActTier1 = 0;

  cdmSystemDialogActTier1 = self->_cdmSystemDialogActTier1;
  self->_cdmSystemDialogActTier1 = 0;

  cdmTokenizationEnded = self->_cdmTokenizationEnded;
  self->_cdmTokenizationEnded = 0;

  cdmContextUpdateEnded = self->_cdmContextUpdateEnded;
  self->_cdmContextUpdateEnded = 0;

  marrsRepetitionDetectionContext = self->_marrsRepetitionDetectionContext;
  self->_marrsRepetitionDetectionContext = 0;

  marrsQueryRewriteContext = self->_marrsQueryRewriteContext;
  self->_marrsQueryRewriteContext = 0;

  marrsQueryRewriteEvaluatedTier1 = self->_marrsQueryRewriteEvaluatedTier1;
  self->_marrsQueryRewriteEvaluatedTier1 = 0;

  cdmMatchingSpanEndedTier1 = self->_cdmMatchingSpanEndedTier1;
  self->_cdmMatchingSpanEndedTier1 = 0;

  nlxCurareContext = self->_nlxCurareContext;
  self->_nlxCurareContext = 0;

  marrsMentionDetectorEnded = self->_marrsMentionDetectorEnded;
  self->_marrsMentionDetectorEnded = 0;

  marrsMentionDetectorEndedTier1 = self->_marrsMentionDetectorEndedTier1;
  self->_marrsMentionDetectorEndedTier1 = 0;

  marrsMentionResolverEnded = self->_marrsMentionResolverEnded;
  self->_marrsMentionResolverEnded = 0;

  marrsMentionResolverEndedTier1 = self->_marrsMentionResolverEndedTier1;
  self->_marrsMentionResolverEndedTier1 = 0;

  cdmClientSetupContext = self->_cdmClientSetupContext;
  self->_cdmClientSetupContext = 0;

  cdmAllServicesSetupContext = self->_cdmAllServicesSetupContext;
  self->_cdmAllServicesSetupContext = 0;

  cdmSingleServiceSetupAttemptContext = self->_cdmSingleServiceSetupAttemptContext;
  self->_cdmSingleServiceSetupAttemptContext = 0;

  cdmSingleServiceSetupAttemptFailed = self->_cdmSingleServiceSetupAttemptFailed;
  self->_cdmSingleServiceSetupAttemptFailed = 0;

  cdmSpanMatcherContext = self->_cdmSpanMatcherContext;
  self->_cdmSpanMatcherContext = 0;

  marrsContextualSpanMatcherEnded = self->_marrsContextualSpanMatcherEnded;
  self->_marrsContextualSpanMatcherEnded = 0;

  marrsContextualSpanMatcherEndedTier1 = self->_marrsContextualSpanMatcherEndedTier1;
  self->_marrsContextualSpanMatcherEndedTier1 = 0;

  cdmXpcEventProcessingContext = self->_cdmXpcEventProcessingContext;
  self->_cdmXpcEventProcessingContext = 0;

  cdmAssetSetupContext = self->_cdmAssetSetupContext;
  self->_cdmAssetSetupContext = 0;

  cdmSetupMissingAssetsDetected = self->_cdmSetupMissingAssetsDetected;
  self->_cdmSetupMissingAssetsDetected = 0;

  cdmAllServicesWarmupContext = self->_cdmAllServicesWarmupContext;
  self->_cdmAllServicesWarmupContext = 0;

  cdmSingleServiceWarmupAttemptContext = self->_cdmSingleServiceWarmupAttemptContext;
  self->_cdmSingleServiceWarmupAttemptContext = 0;

  cdmSingleServiceWarmupAttemptFailed = self->_cdmSingleServiceWarmupAttemptFailed;
  self->_cdmSingleServiceWarmupAttemptFailed = 0;

  cdmAssetsReported = self->_cdmAssetsReported;
  self->_cdmAssetsReported = 0;

  ssuUserRequestContext = self->_ssuUserRequestContext;
  self->_ssuUserRequestContext = 0;

  ssuBackgroundRequestContext = self->_ssuBackgroundRequestContext;
  self->_ssuBackgroundRequestContext = 0;

  cdmServiceHandleMetricsReported = self->_cdmServiceHandleMetricsReported;
  self->_cdmServiceHandleMetricsReported = 0;

  cdmServiceSetupMetricsReported = self->_cdmServiceSetupMetricsReported;
  self->_cdmServiceSetupMetricsReported = 0;

  milAssetAcquisitionContext = self->_milAssetAcquisitionContext;
  self->_milAssetAcquisitionContext = 0;

  cdmSetupLink = self->_cdmSetupLink;
  self->_cdmSetupLink = 0;

  v45 = 131;
  if (!v4)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  cdmClientWarmupContext = self->_cdmClientWarmupContext;
  self->_cdmClientWarmupContext = v4;
}

- (void)deleteCdmSetupMissingAssetsDetected
{
  if (self->_whichEvent_Type == 130)
  {
    self->_whichEvent_Type = 0;
    self->_cdmSetupMissingAssetsDetected = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setCdmSetupMissingAssetsDetected:(id)a3
{
  v4 = a3;
  cdmServiceContext = self->_cdmServiceContext;
  self->_cdmServiceContext = 0;

  cdmRequestContext = self->_cdmRequestContext;
  self->_cdmRequestContext = 0;

  nlxDeviceFixedContext = self->_nlxDeviceFixedContext;
  self->_nlxDeviceFixedContext = 0;

  cdmMatchingSpanEnded = self->_cdmMatchingSpanEnded;
  self->_cdmMatchingSpanEnded = 0;

  cdmUsoGraphTier1 = self->_cdmUsoGraphTier1;
  self->_cdmUsoGraphTier1 = 0;

  cdmMatchingSpanTier1 = self->_cdmMatchingSpanTier1;
  self->_cdmMatchingSpanTier1 = 0;

  nlxLegacyNLContextTier1 = self->_nlxLegacyNLContextTier1;
  self->_nlxLegacyNLContextTier1 = 0;

  cdmDelegatedUserDialogActTier1 = self->_cdmDelegatedUserDialogActTier1;
  self->_cdmDelegatedUserDialogActTier1 = 0;

  cdmSystemDialogActTier1 = self->_cdmSystemDialogActTier1;
  self->_cdmSystemDialogActTier1 = 0;

  cdmTokenizationEnded = self->_cdmTokenizationEnded;
  self->_cdmTokenizationEnded = 0;

  cdmContextUpdateEnded = self->_cdmContextUpdateEnded;
  self->_cdmContextUpdateEnded = 0;

  marrsRepetitionDetectionContext = self->_marrsRepetitionDetectionContext;
  self->_marrsRepetitionDetectionContext = 0;

  marrsQueryRewriteContext = self->_marrsQueryRewriteContext;
  self->_marrsQueryRewriteContext = 0;

  marrsQueryRewriteEvaluatedTier1 = self->_marrsQueryRewriteEvaluatedTier1;
  self->_marrsQueryRewriteEvaluatedTier1 = 0;

  cdmMatchingSpanEndedTier1 = self->_cdmMatchingSpanEndedTier1;
  self->_cdmMatchingSpanEndedTier1 = 0;

  nlxCurareContext = self->_nlxCurareContext;
  self->_nlxCurareContext = 0;

  marrsMentionDetectorEnded = self->_marrsMentionDetectorEnded;
  self->_marrsMentionDetectorEnded = 0;

  marrsMentionDetectorEndedTier1 = self->_marrsMentionDetectorEndedTier1;
  self->_marrsMentionDetectorEndedTier1 = 0;

  marrsMentionResolverEnded = self->_marrsMentionResolverEnded;
  self->_marrsMentionResolverEnded = 0;

  marrsMentionResolverEndedTier1 = self->_marrsMentionResolverEndedTier1;
  self->_marrsMentionResolverEndedTier1 = 0;

  cdmClientSetupContext = self->_cdmClientSetupContext;
  self->_cdmClientSetupContext = 0;

  cdmAllServicesSetupContext = self->_cdmAllServicesSetupContext;
  self->_cdmAllServicesSetupContext = 0;

  cdmSingleServiceSetupAttemptContext = self->_cdmSingleServiceSetupAttemptContext;
  self->_cdmSingleServiceSetupAttemptContext = 0;

  cdmSingleServiceSetupAttemptFailed = self->_cdmSingleServiceSetupAttemptFailed;
  self->_cdmSingleServiceSetupAttemptFailed = 0;

  cdmSpanMatcherContext = self->_cdmSpanMatcherContext;
  self->_cdmSpanMatcherContext = 0;

  marrsContextualSpanMatcherEnded = self->_marrsContextualSpanMatcherEnded;
  self->_marrsContextualSpanMatcherEnded = 0;

  marrsContextualSpanMatcherEndedTier1 = self->_marrsContextualSpanMatcherEndedTier1;
  self->_marrsContextualSpanMatcherEndedTier1 = 0;

  cdmXpcEventProcessingContext = self->_cdmXpcEventProcessingContext;
  self->_cdmXpcEventProcessingContext = 0;

  cdmAssetSetupContext = self->_cdmAssetSetupContext;
  self->_cdmAssetSetupContext = 0;

  cdmClientWarmupContext = self->_cdmClientWarmupContext;
  self->_cdmClientWarmupContext = 0;

  cdmAllServicesWarmupContext = self->_cdmAllServicesWarmupContext;
  self->_cdmAllServicesWarmupContext = 0;

  cdmSingleServiceWarmupAttemptContext = self->_cdmSingleServiceWarmupAttemptContext;
  self->_cdmSingleServiceWarmupAttemptContext = 0;

  cdmSingleServiceWarmupAttemptFailed = self->_cdmSingleServiceWarmupAttemptFailed;
  self->_cdmSingleServiceWarmupAttemptFailed = 0;

  cdmAssetsReported = self->_cdmAssetsReported;
  self->_cdmAssetsReported = 0;

  ssuUserRequestContext = self->_ssuUserRequestContext;
  self->_ssuUserRequestContext = 0;

  ssuBackgroundRequestContext = self->_ssuBackgroundRequestContext;
  self->_ssuBackgroundRequestContext = 0;

  cdmServiceHandleMetricsReported = self->_cdmServiceHandleMetricsReported;
  self->_cdmServiceHandleMetricsReported = 0;

  cdmServiceSetupMetricsReported = self->_cdmServiceSetupMetricsReported;
  self->_cdmServiceSetupMetricsReported = 0;

  milAssetAcquisitionContext = self->_milAssetAcquisitionContext;
  self->_milAssetAcquisitionContext = 0;

  cdmSetupLink = self->_cdmSetupLink;
  self->_cdmSetupLink = 0;

  v45 = 130;
  if (!v4)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  cdmSetupMissingAssetsDetected = self->_cdmSetupMissingAssetsDetected;
  self->_cdmSetupMissingAssetsDetected = v4;
}

- (void)deleteCdmAssetSetupContext
{
  if (self->_whichEvent_Type == 129)
  {
    self->_whichEvent_Type = 0;
    self->_cdmAssetSetupContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setCdmAssetSetupContext:(id)a3
{
  v4 = a3;
  cdmServiceContext = self->_cdmServiceContext;
  self->_cdmServiceContext = 0;

  cdmRequestContext = self->_cdmRequestContext;
  self->_cdmRequestContext = 0;

  nlxDeviceFixedContext = self->_nlxDeviceFixedContext;
  self->_nlxDeviceFixedContext = 0;

  cdmMatchingSpanEnded = self->_cdmMatchingSpanEnded;
  self->_cdmMatchingSpanEnded = 0;

  cdmUsoGraphTier1 = self->_cdmUsoGraphTier1;
  self->_cdmUsoGraphTier1 = 0;

  cdmMatchingSpanTier1 = self->_cdmMatchingSpanTier1;
  self->_cdmMatchingSpanTier1 = 0;

  nlxLegacyNLContextTier1 = self->_nlxLegacyNLContextTier1;
  self->_nlxLegacyNLContextTier1 = 0;

  cdmDelegatedUserDialogActTier1 = self->_cdmDelegatedUserDialogActTier1;
  self->_cdmDelegatedUserDialogActTier1 = 0;

  cdmSystemDialogActTier1 = self->_cdmSystemDialogActTier1;
  self->_cdmSystemDialogActTier1 = 0;

  cdmTokenizationEnded = self->_cdmTokenizationEnded;
  self->_cdmTokenizationEnded = 0;

  cdmContextUpdateEnded = self->_cdmContextUpdateEnded;
  self->_cdmContextUpdateEnded = 0;

  marrsRepetitionDetectionContext = self->_marrsRepetitionDetectionContext;
  self->_marrsRepetitionDetectionContext = 0;

  marrsQueryRewriteContext = self->_marrsQueryRewriteContext;
  self->_marrsQueryRewriteContext = 0;

  marrsQueryRewriteEvaluatedTier1 = self->_marrsQueryRewriteEvaluatedTier1;
  self->_marrsQueryRewriteEvaluatedTier1 = 0;

  cdmMatchingSpanEndedTier1 = self->_cdmMatchingSpanEndedTier1;
  self->_cdmMatchingSpanEndedTier1 = 0;

  nlxCurareContext = self->_nlxCurareContext;
  self->_nlxCurareContext = 0;

  marrsMentionDetectorEnded = self->_marrsMentionDetectorEnded;
  self->_marrsMentionDetectorEnded = 0;

  marrsMentionDetectorEndedTier1 = self->_marrsMentionDetectorEndedTier1;
  self->_marrsMentionDetectorEndedTier1 = 0;

  marrsMentionResolverEnded = self->_marrsMentionResolverEnded;
  self->_marrsMentionResolverEnded = 0;

  marrsMentionResolverEndedTier1 = self->_marrsMentionResolverEndedTier1;
  self->_marrsMentionResolverEndedTier1 = 0;

  cdmClientSetupContext = self->_cdmClientSetupContext;
  self->_cdmClientSetupContext = 0;

  cdmAllServicesSetupContext = self->_cdmAllServicesSetupContext;
  self->_cdmAllServicesSetupContext = 0;

  cdmSingleServiceSetupAttemptContext = self->_cdmSingleServiceSetupAttemptContext;
  self->_cdmSingleServiceSetupAttemptContext = 0;

  cdmSingleServiceSetupAttemptFailed = self->_cdmSingleServiceSetupAttemptFailed;
  self->_cdmSingleServiceSetupAttemptFailed = 0;

  cdmSpanMatcherContext = self->_cdmSpanMatcherContext;
  self->_cdmSpanMatcherContext = 0;

  marrsContextualSpanMatcherEnded = self->_marrsContextualSpanMatcherEnded;
  self->_marrsContextualSpanMatcherEnded = 0;

  marrsContextualSpanMatcherEndedTier1 = self->_marrsContextualSpanMatcherEndedTier1;
  self->_marrsContextualSpanMatcherEndedTier1 = 0;

  cdmXpcEventProcessingContext = self->_cdmXpcEventProcessingContext;
  self->_cdmXpcEventProcessingContext = 0;

  cdmSetupMissingAssetsDetected = self->_cdmSetupMissingAssetsDetected;
  self->_cdmSetupMissingAssetsDetected = 0;

  cdmClientWarmupContext = self->_cdmClientWarmupContext;
  self->_cdmClientWarmupContext = 0;

  cdmAllServicesWarmupContext = self->_cdmAllServicesWarmupContext;
  self->_cdmAllServicesWarmupContext = 0;

  cdmSingleServiceWarmupAttemptContext = self->_cdmSingleServiceWarmupAttemptContext;
  self->_cdmSingleServiceWarmupAttemptContext = 0;

  cdmSingleServiceWarmupAttemptFailed = self->_cdmSingleServiceWarmupAttemptFailed;
  self->_cdmSingleServiceWarmupAttemptFailed = 0;

  cdmAssetsReported = self->_cdmAssetsReported;
  self->_cdmAssetsReported = 0;

  ssuUserRequestContext = self->_ssuUserRequestContext;
  self->_ssuUserRequestContext = 0;

  ssuBackgroundRequestContext = self->_ssuBackgroundRequestContext;
  self->_ssuBackgroundRequestContext = 0;

  cdmServiceHandleMetricsReported = self->_cdmServiceHandleMetricsReported;
  self->_cdmServiceHandleMetricsReported = 0;

  cdmServiceSetupMetricsReported = self->_cdmServiceSetupMetricsReported;
  self->_cdmServiceSetupMetricsReported = 0;

  milAssetAcquisitionContext = self->_milAssetAcquisitionContext;
  self->_milAssetAcquisitionContext = 0;

  cdmSetupLink = self->_cdmSetupLink;
  self->_cdmSetupLink = 0;

  v45 = 129;
  if (!v4)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  cdmAssetSetupContext = self->_cdmAssetSetupContext;
  self->_cdmAssetSetupContext = v4;
}

- (void)deleteCdmXpcEventProcessingContext
{
  if (self->_whichEvent_Type == 128)
  {
    self->_whichEvent_Type = 0;
    self->_cdmXpcEventProcessingContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setCdmXpcEventProcessingContext:(id)a3
{
  v4 = a3;
  cdmServiceContext = self->_cdmServiceContext;
  self->_cdmServiceContext = 0;

  cdmRequestContext = self->_cdmRequestContext;
  self->_cdmRequestContext = 0;

  nlxDeviceFixedContext = self->_nlxDeviceFixedContext;
  self->_nlxDeviceFixedContext = 0;

  cdmMatchingSpanEnded = self->_cdmMatchingSpanEnded;
  self->_cdmMatchingSpanEnded = 0;

  cdmUsoGraphTier1 = self->_cdmUsoGraphTier1;
  self->_cdmUsoGraphTier1 = 0;

  cdmMatchingSpanTier1 = self->_cdmMatchingSpanTier1;
  self->_cdmMatchingSpanTier1 = 0;

  nlxLegacyNLContextTier1 = self->_nlxLegacyNLContextTier1;
  self->_nlxLegacyNLContextTier1 = 0;

  cdmDelegatedUserDialogActTier1 = self->_cdmDelegatedUserDialogActTier1;
  self->_cdmDelegatedUserDialogActTier1 = 0;

  cdmSystemDialogActTier1 = self->_cdmSystemDialogActTier1;
  self->_cdmSystemDialogActTier1 = 0;

  cdmTokenizationEnded = self->_cdmTokenizationEnded;
  self->_cdmTokenizationEnded = 0;

  cdmContextUpdateEnded = self->_cdmContextUpdateEnded;
  self->_cdmContextUpdateEnded = 0;

  marrsRepetitionDetectionContext = self->_marrsRepetitionDetectionContext;
  self->_marrsRepetitionDetectionContext = 0;

  marrsQueryRewriteContext = self->_marrsQueryRewriteContext;
  self->_marrsQueryRewriteContext = 0;

  marrsQueryRewriteEvaluatedTier1 = self->_marrsQueryRewriteEvaluatedTier1;
  self->_marrsQueryRewriteEvaluatedTier1 = 0;

  cdmMatchingSpanEndedTier1 = self->_cdmMatchingSpanEndedTier1;
  self->_cdmMatchingSpanEndedTier1 = 0;

  nlxCurareContext = self->_nlxCurareContext;
  self->_nlxCurareContext = 0;

  marrsMentionDetectorEnded = self->_marrsMentionDetectorEnded;
  self->_marrsMentionDetectorEnded = 0;

  marrsMentionDetectorEndedTier1 = self->_marrsMentionDetectorEndedTier1;
  self->_marrsMentionDetectorEndedTier1 = 0;

  marrsMentionResolverEnded = self->_marrsMentionResolverEnded;
  self->_marrsMentionResolverEnded = 0;

  marrsMentionResolverEndedTier1 = self->_marrsMentionResolverEndedTier1;
  self->_marrsMentionResolverEndedTier1 = 0;

  cdmClientSetupContext = self->_cdmClientSetupContext;
  self->_cdmClientSetupContext = 0;

  cdmAllServicesSetupContext = self->_cdmAllServicesSetupContext;
  self->_cdmAllServicesSetupContext = 0;

  cdmSingleServiceSetupAttemptContext = self->_cdmSingleServiceSetupAttemptContext;
  self->_cdmSingleServiceSetupAttemptContext = 0;

  cdmSingleServiceSetupAttemptFailed = self->_cdmSingleServiceSetupAttemptFailed;
  self->_cdmSingleServiceSetupAttemptFailed = 0;

  cdmSpanMatcherContext = self->_cdmSpanMatcherContext;
  self->_cdmSpanMatcherContext = 0;

  marrsContextualSpanMatcherEnded = self->_marrsContextualSpanMatcherEnded;
  self->_marrsContextualSpanMatcherEnded = 0;

  marrsContextualSpanMatcherEndedTier1 = self->_marrsContextualSpanMatcherEndedTier1;
  self->_marrsContextualSpanMatcherEndedTier1 = 0;

  cdmAssetSetupContext = self->_cdmAssetSetupContext;
  self->_cdmAssetSetupContext = 0;

  cdmSetupMissingAssetsDetected = self->_cdmSetupMissingAssetsDetected;
  self->_cdmSetupMissingAssetsDetected = 0;

  cdmClientWarmupContext = self->_cdmClientWarmupContext;
  self->_cdmClientWarmupContext = 0;

  cdmAllServicesWarmupContext = self->_cdmAllServicesWarmupContext;
  self->_cdmAllServicesWarmupContext = 0;

  cdmSingleServiceWarmupAttemptContext = self->_cdmSingleServiceWarmupAttemptContext;
  self->_cdmSingleServiceWarmupAttemptContext = 0;

  cdmSingleServiceWarmupAttemptFailed = self->_cdmSingleServiceWarmupAttemptFailed;
  self->_cdmSingleServiceWarmupAttemptFailed = 0;

  cdmAssetsReported = self->_cdmAssetsReported;
  self->_cdmAssetsReported = 0;

  ssuUserRequestContext = self->_ssuUserRequestContext;
  self->_ssuUserRequestContext = 0;

  ssuBackgroundRequestContext = self->_ssuBackgroundRequestContext;
  self->_ssuBackgroundRequestContext = 0;

  cdmServiceHandleMetricsReported = self->_cdmServiceHandleMetricsReported;
  self->_cdmServiceHandleMetricsReported = 0;

  cdmServiceSetupMetricsReported = self->_cdmServiceSetupMetricsReported;
  self->_cdmServiceSetupMetricsReported = 0;

  milAssetAcquisitionContext = self->_milAssetAcquisitionContext;
  self->_milAssetAcquisitionContext = 0;

  cdmSetupLink = self->_cdmSetupLink;
  self->_cdmSetupLink = 0;

  self->_whichEvent_Type = (v4 != 0) << 7;
  cdmXpcEventProcessingContext = self->_cdmXpcEventProcessingContext;
  self->_cdmXpcEventProcessingContext = v4;
}

- (void)deleteMarrsContextualSpanMatcherEndedTier1
{
  if (self->_whichEvent_Type == 127)
  {
    self->_whichEvent_Type = 0;
    self->_marrsContextualSpanMatcherEndedTier1 = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setMarrsContextualSpanMatcherEndedTier1:(id)a3
{
  v4 = a3;
  cdmServiceContext = self->_cdmServiceContext;
  self->_cdmServiceContext = 0;

  cdmRequestContext = self->_cdmRequestContext;
  self->_cdmRequestContext = 0;

  nlxDeviceFixedContext = self->_nlxDeviceFixedContext;
  self->_nlxDeviceFixedContext = 0;

  cdmMatchingSpanEnded = self->_cdmMatchingSpanEnded;
  self->_cdmMatchingSpanEnded = 0;

  cdmUsoGraphTier1 = self->_cdmUsoGraphTier1;
  self->_cdmUsoGraphTier1 = 0;

  cdmMatchingSpanTier1 = self->_cdmMatchingSpanTier1;
  self->_cdmMatchingSpanTier1 = 0;

  nlxLegacyNLContextTier1 = self->_nlxLegacyNLContextTier1;
  self->_nlxLegacyNLContextTier1 = 0;

  cdmDelegatedUserDialogActTier1 = self->_cdmDelegatedUserDialogActTier1;
  self->_cdmDelegatedUserDialogActTier1 = 0;

  cdmSystemDialogActTier1 = self->_cdmSystemDialogActTier1;
  self->_cdmSystemDialogActTier1 = 0;

  cdmTokenizationEnded = self->_cdmTokenizationEnded;
  self->_cdmTokenizationEnded = 0;

  cdmContextUpdateEnded = self->_cdmContextUpdateEnded;
  self->_cdmContextUpdateEnded = 0;

  marrsRepetitionDetectionContext = self->_marrsRepetitionDetectionContext;
  self->_marrsRepetitionDetectionContext = 0;

  marrsQueryRewriteContext = self->_marrsQueryRewriteContext;
  self->_marrsQueryRewriteContext = 0;

  marrsQueryRewriteEvaluatedTier1 = self->_marrsQueryRewriteEvaluatedTier1;
  self->_marrsQueryRewriteEvaluatedTier1 = 0;

  cdmMatchingSpanEndedTier1 = self->_cdmMatchingSpanEndedTier1;
  self->_cdmMatchingSpanEndedTier1 = 0;

  nlxCurareContext = self->_nlxCurareContext;
  self->_nlxCurareContext = 0;

  marrsMentionDetectorEnded = self->_marrsMentionDetectorEnded;
  self->_marrsMentionDetectorEnded = 0;

  marrsMentionDetectorEndedTier1 = self->_marrsMentionDetectorEndedTier1;
  self->_marrsMentionDetectorEndedTier1 = 0;

  marrsMentionResolverEnded = self->_marrsMentionResolverEnded;
  self->_marrsMentionResolverEnded = 0;

  marrsMentionResolverEndedTier1 = self->_marrsMentionResolverEndedTier1;
  self->_marrsMentionResolverEndedTier1 = 0;

  cdmClientSetupContext = self->_cdmClientSetupContext;
  self->_cdmClientSetupContext = 0;

  cdmAllServicesSetupContext = self->_cdmAllServicesSetupContext;
  self->_cdmAllServicesSetupContext = 0;

  cdmSingleServiceSetupAttemptContext = self->_cdmSingleServiceSetupAttemptContext;
  self->_cdmSingleServiceSetupAttemptContext = 0;

  cdmSingleServiceSetupAttemptFailed = self->_cdmSingleServiceSetupAttemptFailed;
  self->_cdmSingleServiceSetupAttemptFailed = 0;

  cdmSpanMatcherContext = self->_cdmSpanMatcherContext;
  self->_cdmSpanMatcherContext = 0;

  marrsContextualSpanMatcherEnded = self->_marrsContextualSpanMatcherEnded;
  self->_marrsContextualSpanMatcherEnded = 0;

  cdmXpcEventProcessingContext = self->_cdmXpcEventProcessingContext;
  self->_cdmXpcEventProcessingContext = 0;

  cdmAssetSetupContext = self->_cdmAssetSetupContext;
  self->_cdmAssetSetupContext = 0;

  cdmSetupMissingAssetsDetected = self->_cdmSetupMissingAssetsDetected;
  self->_cdmSetupMissingAssetsDetected = 0;

  cdmClientWarmupContext = self->_cdmClientWarmupContext;
  self->_cdmClientWarmupContext = 0;

  cdmAllServicesWarmupContext = self->_cdmAllServicesWarmupContext;
  self->_cdmAllServicesWarmupContext = 0;

  cdmSingleServiceWarmupAttemptContext = self->_cdmSingleServiceWarmupAttemptContext;
  self->_cdmSingleServiceWarmupAttemptContext = 0;

  cdmSingleServiceWarmupAttemptFailed = self->_cdmSingleServiceWarmupAttemptFailed;
  self->_cdmSingleServiceWarmupAttemptFailed = 0;

  cdmAssetsReported = self->_cdmAssetsReported;
  self->_cdmAssetsReported = 0;

  ssuUserRequestContext = self->_ssuUserRequestContext;
  self->_ssuUserRequestContext = 0;

  ssuBackgroundRequestContext = self->_ssuBackgroundRequestContext;
  self->_ssuBackgroundRequestContext = 0;

  cdmServiceHandleMetricsReported = self->_cdmServiceHandleMetricsReported;
  self->_cdmServiceHandleMetricsReported = 0;

  cdmServiceSetupMetricsReported = self->_cdmServiceSetupMetricsReported;
  self->_cdmServiceSetupMetricsReported = 0;

  milAssetAcquisitionContext = self->_milAssetAcquisitionContext;
  self->_milAssetAcquisitionContext = 0;

  cdmSetupLink = self->_cdmSetupLink;
  self->_cdmSetupLink = 0;

  v45 = 127;
  if (!v4)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  marrsContextualSpanMatcherEndedTier1 = self->_marrsContextualSpanMatcherEndedTier1;
  self->_marrsContextualSpanMatcherEndedTier1 = v4;
}

- (void)deleteMarrsContextualSpanMatcherEnded
{
  if (self->_whichEvent_Type == 126)
  {
    self->_whichEvent_Type = 0;
    self->_marrsContextualSpanMatcherEnded = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setMarrsContextualSpanMatcherEnded:(id)a3
{
  v4 = a3;
  cdmServiceContext = self->_cdmServiceContext;
  self->_cdmServiceContext = 0;

  cdmRequestContext = self->_cdmRequestContext;
  self->_cdmRequestContext = 0;

  nlxDeviceFixedContext = self->_nlxDeviceFixedContext;
  self->_nlxDeviceFixedContext = 0;

  cdmMatchingSpanEnded = self->_cdmMatchingSpanEnded;
  self->_cdmMatchingSpanEnded = 0;

  cdmUsoGraphTier1 = self->_cdmUsoGraphTier1;
  self->_cdmUsoGraphTier1 = 0;

  cdmMatchingSpanTier1 = self->_cdmMatchingSpanTier1;
  self->_cdmMatchingSpanTier1 = 0;

  nlxLegacyNLContextTier1 = self->_nlxLegacyNLContextTier1;
  self->_nlxLegacyNLContextTier1 = 0;

  cdmDelegatedUserDialogActTier1 = self->_cdmDelegatedUserDialogActTier1;
  self->_cdmDelegatedUserDialogActTier1 = 0;

  cdmSystemDialogActTier1 = self->_cdmSystemDialogActTier1;
  self->_cdmSystemDialogActTier1 = 0;

  cdmTokenizationEnded = self->_cdmTokenizationEnded;
  self->_cdmTokenizationEnded = 0;

  cdmContextUpdateEnded = self->_cdmContextUpdateEnded;
  self->_cdmContextUpdateEnded = 0;

  marrsRepetitionDetectionContext = self->_marrsRepetitionDetectionContext;
  self->_marrsRepetitionDetectionContext = 0;

  marrsQueryRewriteContext = self->_marrsQueryRewriteContext;
  self->_marrsQueryRewriteContext = 0;

  marrsQueryRewriteEvaluatedTier1 = self->_marrsQueryRewriteEvaluatedTier1;
  self->_marrsQueryRewriteEvaluatedTier1 = 0;

  cdmMatchingSpanEndedTier1 = self->_cdmMatchingSpanEndedTier1;
  self->_cdmMatchingSpanEndedTier1 = 0;

  nlxCurareContext = self->_nlxCurareContext;
  self->_nlxCurareContext = 0;

  marrsMentionDetectorEnded = self->_marrsMentionDetectorEnded;
  self->_marrsMentionDetectorEnded = 0;

  marrsMentionDetectorEndedTier1 = self->_marrsMentionDetectorEndedTier1;
  self->_marrsMentionDetectorEndedTier1 = 0;

  marrsMentionResolverEnded = self->_marrsMentionResolverEnded;
  self->_marrsMentionResolverEnded = 0;

  marrsMentionResolverEndedTier1 = self->_marrsMentionResolverEndedTier1;
  self->_marrsMentionResolverEndedTier1 = 0;

  cdmClientSetupContext = self->_cdmClientSetupContext;
  self->_cdmClientSetupContext = 0;

  cdmAllServicesSetupContext = self->_cdmAllServicesSetupContext;
  self->_cdmAllServicesSetupContext = 0;

  cdmSingleServiceSetupAttemptContext = self->_cdmSingleServiceSetupAttemptContext;
  self->_cdmSingleServiceSetupAttemptContext = 0;

  cdmSingleServiceSetupAttemptFailed = self->_cdmSingleServiceSetupAttemptFailed;
  self->_cdmSingleServiceSetupAttemptFailed = 0;

  cdmSpanMatcherContext = self->_cdmSpanMatcherContext;
  self->_cdmSpanMatcherContext = 0;

  marrsContextualSpanMatcherEndedTier1 = self->_marrsContextualSpanMatcherEndedTier1;
  self->_marrsContextualSpanMatcherEndedTier1 = 0;

  cdmXpcEventProcessingContext = self->_cdmXpcEventProcessingContext;
  self->_cdmXpcEventProcessingContext = 0;

  cdmAssetSetupContext = self->_cdmAssetSetupContext;
  self->_cdmAssetSetupContext = 0;

  cdmSetupMissingAssetsDetected = self->_cdmSetupMissingAssetsDetected;
  self->_cdmSetupMissingAssetsDetected = 0;

  cdmClientWarmupContext = self->_cdmClientWarmupContext;
  self->_cdmClientWarmupContext = 0;

  cdmAllServicesWarmupContext = self->_cdmAllServicesWarmupContext;
  self->_cdmAllServicesWarmupContext = 0;

  cdmSingleServiceWarmupAttemptContext = self->_cdmSingleServiceWarmupAttemptContext;
  self->_cdmSingleServiceWarmupAttemptContext = 0;

  cdmSingleServiceWarmupAttemptFailed = self->_cdmSingleServiceWarmupAttemptFailed;
  self->_cdmSingleServiceWarmupAttemptFailed = 0;

  cdmAssetsReported = self->_cdmAssetsReported;
  self->_cdmAssetsReported = 0;

  ssuUserRequestContext = self->_ssuUserRequestContext;
  self->_ssuUserRequestContext = 0;

  ssuBackgroundRequestContext = self->_ssuBackgroundRequestContext;
  self->_ssuBackgroundRequestContext = 0;

  cdmServiceHandleMetricsReported = self->_cdmServiceHandleMetricsReported;
  self->_cdmServiceHandleMetricsReported = 0;

  cdmServiceSetupMetricsReported = self->_cdmServiceSetupMetricsReported;
  self->_cdmServiceSetupMetricsReported = 0;

  milAssetAcquisitionContext = self->_milAssetAcquisitionContext;
  self->_milAssetAcquisitionContext = 0;

  cdmSetupLink = self->_cdmSetupLink;
  self->_cdmSetupLink = 0;

  v45 = 126;
  if (!v4)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  marrsContextualSpanMatcherEnded = self->_marrsContextualSpanMatcherEnded;
  self->_marrsContextualSpanMatcherEnded = v4;
}

- (void)deleteCdmSpanMatcherContext
{
  if (self->_whichEvent_Type == 125)
  {
    self->_whichEvent_Type = 0;
    self->_cdmSpanMatcherContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setCdmSpanMatcherContext:(id)a3
{
  v4 = a3;
  cdmServiceContext = self->_cdmServiceContext;
  self->_cdmServiceContext = 0;

  cdmRequestContext = self->_cdmRequestContext;
  self->_cdmRequestContext = 0;

  nlxDeviceFixedContext = self->_nlxDeviceFixedContext;
  self->_nlxDeviceFixedContext = 0;

  cdmMatchingSpanEnded = self->_cdmMatchingSpanEnded;
  self->_cdmMatchingSpanEnded = 0;

  cdmUsoGraphTier1 = self->_cdmUsoGraphTier1;
  self->_cdmUsoGraphTier1 = 0;

  cdmMatchingSpanTier1 = self->_cdmMatchingSpanTier1;
  self->_cdmMatchingSpanTier1 = 0;

  nlxLegacyNLContextTier1 = self->_nlxLegacyNLContextTier1;
  self->_nlxLegacyNLContextTier1 = 0;

  cdmDelegatedUserDialogActTier1 = self->_cdmDelegatedUserDialogActTier1;
  self->_cdmDelegatedUserDialogActTier1 = 0;

  cdmSystemDialogActTier1 = self->_cdmSystemDialogActTier1;
  self->_cdmSystemDialogActTier1 = 0;

  cdmTokenizationEnded = self->_cdmTokenizationEnded;
  self->_cdmTokenizationEnded = 0;

  cdmContextUpdateEnded = self->_cdmContextUpdateEnded;
  self->_cdmContextUpdateEnded = 0;

  marrsRepetitionDetectionContext = self->_marrsRepetitionDetectionContext;
  self->_marrsRepetitionDetectionContext = 0;

  marrsQueryRewriteContext = self->_marrsQueryRewriteContext;
  self->_marrsQueryRewriteContext = 0;

  marrsQueryRewriteEvaluatedTier1 = self->_marrsQueryRewriteEvaluatedTier1;
  self->_marrsQueryRewriteEvaluatedTier1 = 0;

  cdmMatchingSpanEndedTier1 = self->_cdmMatchingSpanEndedTier1;
  self->_cdmMatchingSpanEndedTier1 = 0;

  nlxCurareContext = self->_nlxCurareContext;
  self->_nlxCurareContext = 0;

  marrsMentionDetectorEnded = self->_marrsMentionDetectorEnded;
  self->_marrsMentionDetectorEnded = 0;

  marrsMentionDetectorEndedTier1 = self->_marrsMentionDetectorEndedTier1;
  self->_marrsMentionDetectorEndedTier1 = 0;

  marrsMentionResolverEnded = self->_marrsMentionResolverEnded;
  self->_marrsMentionResolverEnded = 0;

  marrsMentionResolverEndedTier1 = self->_marrsMentionResolverEndedTier1;
  self->_marrsMentionResolverEndedTier1 = 0;

  cdmClientSetupContext = self->_cdmClientSetupContext;
  self->_cdmClientSetupContext = 0;

  cdmAllServicesSetupContext = self->_cdmAllServicesSetupContext;
  self->_cdmAllServicesSetupContext = 0;

  cdmSingleServiceSetupAttemptContext = self->_cdmSingleServiceSetupAttemptContext;
  self->_cdmSingleServiceSetupAttemptContext = 0;

  cdmSingleServiceSetupAttemptFailed = self->_cdmSingleServiceSetupAttemptFailed;
  self->_cdmSingleServiceSetupAttemptFailed = 0;

  marrsContextualSpanMatcherEnded = self->_marrsContextualSpanMatcherEnded;
  self->_marrsContextualSpanMatcherEnded = 0;

  marrsContextualSpanMatcherEndedTier1 = self->_marrsContextualSpanMatcherEndedTier1;
  self->_marrsContextualSpanMatcherEndedTier1 = 0;

  cdmXpcEventProcessingContext = self->_cdmXpcEventProcessingContext;
  self->_cdmXpcEventProcessingContext = 0;

  cdmAssetSetupContext = self->_cdmAssetSetupContext;
  self->_cdmAssetSetupContext = 0;

  cdmSetupMissingAssetsDetected = self->_cdmSetupMissingAssetsDetected;
  self->_cdmSetupMissingAssetsDetected = 0;

  cdmClientWarmupContext = self->_cdmClientWarmupContext;
  self->_cdmClientWarmupContext = 0;

  cdmAllServicesWarmupContext = self->_cdmAllServicesWarmupContext;
  self->_cdmAllServicesWarmupContext = 0;

  cdmSingleServiceWarmupAttemptContext = self->_cdmSingleServiceWarmupAttemptContext;
  self->_cdmSingleServiceWarmupAttemptContext = 0;

  cdmSingleServiceWarmupAttemptFailed = self->_cdmSingleServiceWarmupAttemptFailed;
  self->_cdmSingleServiceWarmupAttemptFailed = 0;

  cdmAssetsReported = self->_cdmAssetsReported;
  self->_cdmAssetsReported = 0;

  ssuUserRequestContext = self->_ssuUserRequestContext;
  self->_ssuUserRequestContext = 0;

  ssuBackgroundRequestContext = self->_ssuBackgroundRequestContext;
  self->_ssuBackgroundRequestContext = 0;

  cdmServiceHandleMetricsReported = self->_cdmServiceHandleMetricsReported;
  self->_cdmServiceHandleMetricsReported = 0;

  cdmServiceSetupMetricsReported = self->_cdmServiceSetupMetricsReported;
  self->_cdmServiceSetupMetricsReported = 0;

  milAssetAcquisitionContext = self->_milAssetAcquisitionContext;
  self->_milAssetAcquisitionContext = 0;

  cdmSetupLink = self->_cdmSetupLink;
  self->_cdmSetupLink = 0;

  v45 = 125;
  if (!v4)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  cdmSpanMatcherContext = self->_cdmSpanMatcherContext;
  self->_cdmSpanMatcherContext = v4;
}

- (void)deleteCdmSingleServiceSetupAttemptFailed
{
  if (self->_whichEvent_Type == 124)
  {
    self->_whichEvent_Type = 0;
    self->_cdmSingleServiceSetupAttemptFailed = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setCdmSingleServiceSetupAttemptFailed:(id)a3
{
  v4 = a3;
  cdmServiceContext = self->_cdmServiceContext;
  self->_cdmServiceContext = 0;

  cdmRequestContext = self->_cdmRequestContext;
  self->_cdmRequestContext = 0;

  nlxDeviceFixedContext = self->_nlxDeviceFixedContext;
  self->_nlxDeviceFixedContext = 0;

  cdmMatchingSpanEnded = self->_cdmMatchingSpanEnded;
  self->_cdmMatchingSpanEnded = 0;

  cdmUsoGraphTier1 = self->_cdmUsoGraphTier1;
  self->_cdmUsoGraphTier1 = 0;

  cdmMatchingSpanTier1 = self->_cdmMatchingSpanTier1;
  self->_cdmMatchingSpanTier1 = 0;

  nlxLegacyNLContextTier1 = self->_nlxLegacyNLContextTier1;
  self->_nlxLegacyNLContextTier1 = 0;

  cdmDelegatedUserDialogActTier1 = self->_cdmDelegatedUserDialogActTier1;
  self->_cdmDelegatedUserDialogActTier1 = 0;

  cdmSystemDialogActTier1 = self->_cdmSystemDialogActTier1;
  self->_cdmSystemDialogActTier1 = 0;

  cdmTokenizationEnded = self->_cdmTokenizationEnded;
  self->_cdmTokenizationEnded = 0;

  cdmContextUpdateEnded = self->_cdmContextUpdateEnded;
  self->_cdmContextUpdateEnded = 0;

  marrsRepetitionDetectionContext = self->_marrsRepetitionDetectionContext;
  self->_marrsRepetitionDetectionContext = 0;

  marrsQueryRewriteContext = self->_marrsQueryRewriteContext;
  self->_marrsQueryRewriteContext = 0;

  marrsQueryRewriteEvaluatedTier1 = self->_marrsQueryRewriteEvaluatedTier1;
  self->_marrsQueryRewriteEvaluatedTier1 = 0;

  cdmMatchingSpanEndedTier1 = self->_cdmMatchingSpanEndedTier1;
  self->_cdmMatchingSpanEndedTier1 = 0;

  nlxCurareContext = self->_nlxCurareContext;
  self->_nlxCurareContext = 0;

  marrsMentionDetectorEnded = self->_marrsMentionDetectorEnded;
  self->_marrsMentionDetectorEnded = 0;

  marrsMentionDetectorEndedTier1 = self->_marrsMentionDetectorEndedTier1;
  self->_marrsMentionDetectorEndedTier1 = 0;

  marrsMentionResolverEnded = self->_marrsMentionResolverEnded;
  self->_marrsMentionResolverEnded = 0;

  marrsMentionResolverEndedTier1 = self->_marrsMentionResolverEndedTier1;
  self->_marrsMentionResolverEndedTier1 = 0;

  cdmClientSetupContext = self->_cdmClientSetupContext;
  self->_cdmClientSetupContext = 0;

  cdmAllServicesSetupContext = self->_cdmAllServicesSetupContext;
  self->_cdmAllServicesSetupContext = 0;

  cdmSingleServiceSetupAttemptContext = self->_cdmSingleServiceSetupAttemptContext;
  self->_cdmSingleServiceSetupAttemptContext = 0;

  cdmSpanMatcherContext = self->_cdmSpanMatcherContext;
  self->_cdmSpanMatcherContext = 0;

  marrsContextualSpanMatcherEnded = self->_marrsContextualSpanMatcherEnded;
  self->_marrsContextualSpanMatcherEnded = 0;

  marrsContextualSpanMatcherEndedTier1 = self->_marrsContextualSpanMatcherEndedTier1;
  self->_marrsContextualSpanMatcherEndedTier1 = 0;

  cdmXpcEventProcessingContext = self->_cdmXpcEventProcessingContext;
  self->_cdmXpcEventProcessingContext = 0;

  cdmAssetSetupContext = self->_cdmAssetSetupContext;
  self->_cdmAssetSetupContext = 0;

  cdmSetupMissingAssetsDetected = self->_cdmSetupMissingAssetsDetected;
  self->_cdmSetupMissingAssetsDetected = 0;

  cdmClientWarmupContext = self->_cdmClientWarmupContext;
  self->_cdmClientWarmupContext = 0;

  cdmAllServicesWarmupContext = self->_cdmAllServicesWarmupContext;
  self->_cdmAllServicesWarmupContext = 0;

  cdmSingleServiceWarmupAttemptContext = self->_cdmSingleServiceWarmupAttemptContext;
  self->_cdmSingleServiceWarmupAttemptContext = 0;

  cdmSingleServiceWarmupAttemptFailed = self->_cdmSingleServiceWarmupAttemptFailed;
  self->_cdmSingleServiceWarmupAttemptFailed = 0;

  cdmAssetsReported = self->_cdmAssetsReported;
  self->_cdmAssetsReported = 0;

  ssuUserRequestContext = self->_ssuUserRequestContext;
  self->_ssuUserRequestContext = 0;

  ssuBackgroundRequestContext = self->_ssuBackgroundRequestContext;
  self->_ssuBackgroundRequestContext = 0;

  cdmServiceHandleMetricsReported = self->_cdmServiceHandleMetricsReported;
  self->_cdmServiceHandleMetricsReported = 0;

  cdmServiceSetupMetricsReported = self->_cdmServiceSetupMetricsReported;
  self->_cdmServiceSetupMetricsReported = 0;

  milAssetAcquisitionContext = self->_milAssetAcquisitionContext;
  self->_milAssetAcquisitionContext = 0;

  cdmSetupLink = self->_cdmSetupLink;
  self->_cdmSetupLink = 0;

  v45 = 124;
  if (!v4)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  cdmSingleServiceSetupAttemptFailed = self->_cdmSingleServiceSetupAttemptFailed;
  self->_cdmSingleServiceSetupAttemptFailed = v4;
}

- (void)deleteCdmSingleServiceSetupAttemptContext
{
  if (self->_whichEvent_Type == 123)
  {
    self->_whichEvent_Type = 0;
    self->_cdmSingleServiceSetupAttemptContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setCdmSingleServiceSetupAttemptContext:(id)a3
{
  v4 = a3;
  cdmServiceContext = self->_cdmServiceContext;
  self->_cdmServiceContext = 0;

  cdmRequestContext = self->_cdmRequestContext;
  self->_cdmRequestContext = 0;

  nlxDeviceFixedContext = self->_nlxDeviceFixedContext;
  self->_nlxDeviceFixedContext = 0;

  cdmMatchingSpanEnded = self->_cdmMatchingSpanEnded;
  self->_cdmMatchingSpanEnded = 0;

  cdmUsoGraphTier1 = self->_cdmUsoGraphTier1;
  self->_cdmUsoGraphTier1 = 0;

  cdmMatchingSpanTier1 = self->_cdmMatchingSpanTier1;
  self->_cdmMatchingSpanTier1 = 0;

  nlxLegacyNLContextTier1 = self->_nlxLegacyNLContextTier1;
  self->_nlxLegacyNLContextTier1 = 0;

  cdmDelegatedUserDialogActTier1 = self->_cdmDelegatedUserDialogActTier1;
  self->_cdmDelegatedUserDialogActTier1 = 0;

  cdmSystemDialogActTier1 = self->_cdmSystemDialogActTier1;
  self->_cdmSystemDialogActTier1 = 0;

  cdmTokenizationEnded = self->_cdmTokenizationEnded;
  self->_cdmTokenizationEnded = 0;

  cdmContextUpdateEnded = self->_cdmContextUpdateEnded;
  self->_cdmContextUpdateEnded = 0;

  marrsRepetitionDetectionContext = self->_marrsRepetitionDetectionContext;
  self->_marrsRepetitionDetectionContext = 0;

  marrsQueryRewriteContext = self->_marrsQueryRewriteContext;
  self->_marrsQueryRewriteContext = 0;

  marrsQueryRewriteEvaluatedTier1 = self->_marrsQueryRewriteEvaluatedTier1;
  self->_marrsQueryRewriteEvaluatedTier1 = 0;

  cdmMatchingSpanEndedTier1 = self->_cdmMatchingSpanEndedTier1;
  self->_cdmMatchingSpanEndedTier1 = 0;

  nlxCurareContext = self->_nlxCurareContext;
  self->_nlxCurareContext = 0;

  marrsMentionDetectorEnded = self->_marrsMentionDetectorEnded;
  self->_marrsMentionDetectorEnded = 0;

  marrsMentionDetectorEndedTier1 = self->_marrsMentionDetectorEndedTier1;
  self->_marrsMentionDetectorEndedTier1 = 0;

  marrsMentionResolverEnded = self->_marrsMentionResolverEnded;
  self->_marrsMentionResolverEnded = 0;

  marrsMentionResolverEndedTier1 = self->_marrsMentionResolverEndedTier1;
  self->_marrsMentionResolverEndedTier1 = 0;

  cdmClientSetupContext = self->_cdmClientSetupContext;
  self->_cdmClientSetupContext = 0;

  cdmAllServicesSetupContext = self->_cdmAllServicesSetupContext;
  self->_cdmAllServicesSetupContext = 0;

  cdmSingleServiceSetupAttemptFailed = self->_cdmSingleServiceSetupAttemptFailed;
  self->_cdmSingleServiceSetupAttemptFailed = 0;

  cdmSpanMatcherContext = self->_cdmSpanMatcherContext;
  self->_cdmSpanMatcherContext = 0;

  marrsContextualSpanMatcherEnded = self->_marrsContextualSpanMatcherEnded;
  self->_marrsContextualSpanMatcherEnded = 0;

  marrsContextualSpanMatcherEndedTier1 = self->_marrsContextualSpanMatcherEndedTier1;
  self->_marrsContextualSpanMatcherEndedTier1 = 0;

  cdmXpcEventProcessingContext = self->_cdmXpcEventProcessingContext;
  self->_cdmXpcEventProcessingContext = 0;

  cdmAssetSetupContext = self->_cdmAssetSetupContext;
  self->_cdmAssetSetupContext = 0;

  cdmSetupMissingAssetsDetected = self->_cdmSetupMissingAssetsDetected;
  self->_cdmSetupMissingAssetsDetected = 0;

  cdmClientWarmupContext = self->_cdmClientWarmupContext;
  self->_cdmClientWarmupContext = 0;

  cdmAllServicesWarmupContext = self->_cdmAllServicesWarmupContext;
  self->_cdmAllServicesWarmupContext = 0;

  cdmSingleServiceWarmupAttemptContext = self->_cdmSingleServiceWarmupAttemptContext;
  self->_cdmSingleServiceWarmupAttemptContext = 0;

  cdmSingleServiceWarmupAttemptFailed = self->_cdmSingleServiceWarmupAttemptFailed;
  self->_cdmSingleServiceWarmupAttemptFailed = 0;

  cdmAssetsReported = self->_cdmAssetsReported;
  self->_cdmAssetsReported = 0;

  ssuUserRequestContext = self->_ssuUserRequestContext;
  self->_ssuUserRequestContext = 0;

  ssuBackgroundRequestContext = self->_ssuBackgroundRequestContext;
  self->_ssuBackgroundRequestContext = 0;

  cdmServiceHandleMetricsReported = self->_cdmServiceHandleMetricsReported;
  self->_cdmServiceHandleMetricsReported = 0;

  cdmServiceSetupMetricsReported = self->_cdmServiceSetupMetricsReported;
  self->_cdmServiceSetupMetricsReported = 0;

  milAssetAcquisitionContext = self->_milAssetAcquisitionContext;
  self->_milAssetAcquisitionContext = 0;

  cdmSetupLink = self->_cdmSetupLink;
  self->_cdmSetupLink = 0;

  v45 = 123;
  if (!v4)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  cdmSingleServiceSetupAttemptContext = self->_cdmSingleServiceSetupAttemptContext;
  self->_cdmSingleServiceSetupAttemptContext = v4;
}

- (void)deleteCdmAllServicesSetupContext
{
  if (self->_whichEvent_Type == 122)
  {
    self->_whichEvent_Type = 0;
    self->_cdmAllServicesSetupContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setCdmAllServicesSetupContext:(id)a3
{
  v4 = a3;
  cdmServiceContext = self->_cdmServiceContext;
  self->_cdmServiceContext = 0;

  cdmRequestContext = self->_cdmRequestContext;
  self->_cdmRequestContext = 0;

  nlxDeviceFixedContext = self->_nlxDeviceFixedContext;
  self->_nlxDeviceFixedContext = 0;

  cdmMatchingSpanEnded = self->_cdmMatchingSpanEnded;
  self->_cdmMatchingSpanEnded = 0;

  cdmUsoGraphTier1 = self->_cdmUsoGraphTier1;
  self->_cdmUsoGraphTier1 = 0;

  cdmMatchingSpanTier1 = self->_cdmMatchingSpanTier1;
  self->_cdmMatchingSpanTier1 = 0;

  nlxLegacyNLContextTier1 = self->_nlxLegacyNLContextTier1;
  self->_nlxLegacyNLContextTier1 = 0;

  cdmDelegatedUserDialogActTier1 = self->_cdmDelegatedUserDialogActTier1;
  self->_cdmDelegatedUserDialogActTier1 = 0;

  cdmSystemDialogActTier1 = self->_cdmSystemDialogActTier1;
  self->_cdmSystemDialogActTier1 = 0;

  cdmTokenizationEnded = self->_cdmTokenizationEnded;
  self->_cdmTokenizationEnded = 0;

  cdmContextUpdateEnded = self->_cdmContextUpdateEnded;
  self->_cdmContextUpdateEnded = 0;

  marrsRepetitionDetectionContext = self->_marrsRepetitionDetectionContext;
  self->_marrsRepetitionDetectionContext = 0;

  marrsQueryRewriteContext = self->_marrsQueryRewriteContext;
  self->_marrsQueryRewriteContext = 0;

  marrsQueryRewriteEvaluatedTier1 = self->_marrsQueryRewriteEvaluatedTier1;
  self->_marrsQueryRewriteEvaluatedTier1 = 0;

  cdmMatchingSpanEndedTier1 = self->_cdmMatchingSpanEndedTier1;
  self->_cdmMatchingSpanEndedTier1 = 0;

  nlxCurareContext = self->_nlxCurareContext;
  self->_nlxCurareContext = 0;

  marrsMentionDetectorEnded = self->_marrsMentionDetectorEnded;
  self->_marrsMentionDetectorEnded = 0;

  marrsMentionDetectorEndedTier1 = self->_marrsMentionDetectorEndedTier1;
  self->_marrsMentionDetectorEndedTier1 = 0;

  marrsMentionResolverEnded = self->_marrsMentionResolverEnded;
  self->_marrsMentionResolverEnded = 0;

  marrsMentionResolverEndedTier1 = self->_marrsMentionResolverEndedTier1;
  self->_marrsMentionResolverEndedTier1 = 0;

  cdmClientSetupContext = self->_cdmClientSetupContext;
  self->_cdmClientSetupContext = 0;

  cdmSingleServiceSetupAttemptContext = self->_cdmSingleServiceSetupAttemptContext;
  self->_cdmSingleServiceSetupAttemptContext = 0;

  cdmSingleServiceSetupAttemptFailed = self->_cdmSingleServiceSetupAttemptFailed;
  self->_cdmSingleServiceSetupAttemptFailed = 0;

  cdmSpanMatcherContext = self->_cdmSpanMatcherContext;
  self->_cdmSpanMatcherContext = 0;

  marrsContextualSpanMatcherEnded = self->_marrsContextualSpanMatcherEnded;
  self->_marrsContextualSpanMatcherEnded = 0;

  marrsContextualSpanMatcherEndedTier1 = self->_marrsContextualSpanMatcherEndedTier1;
  self->_marrsContextualSpanMatcherEndedTier1 = 0;

  cdmXpcEventProcessingContext = self->_cdmXpcEventProcessingContext;
  self->_cdmXpcEventProcessingContext = 0;

  cdmAssetSetupContext = self->_cdmAssetSetupContext;
  self->_cdmAssetSetupContext = 0;

  cdmSetupMissingAssetsDetected = self->_cdmSetupMissingAssetsDetected;
  self->_cdmSetupMissingAssetsDetected = 0;

  cdmClientWarmupContext = self->_cdmClientWarmupContext;
  self->_cdmClientWarmupContext = 0;

  cdmAllServicesWarmupContext = self->_cdmAllServicesWarmupContext;
  self->_cdmAllServicesWarmupContext = 0;

  cdmSingleServiceWarmupAttemptContext = self->_cdmSingleServiceWarmupAttemptContext;
  self->_cdmSingleServiceWarmupAttemptContext = 0;

  cdmSingleServiceWarmupAttemptFailed = self->_cdmSingleServiceWarmupAttemptFailed;
  self->_cdmSingleServiceWarmupAttemptFailed = 0;

  cdmAssetsReported = self->_cdmAssetsReported;
  self->_cdmAssetsReported = 0;

  ssuUserRequestContext = self->_ssuUserRequestContext;
  self->_ssuUserRequestContext = 0;

  ssuBackgroundRequestContext = self->_ssuBackgroundRequestContext;
  self->_ssuBackgroundRequestContext = 0;

  cdmServiceHandleMetricsReported = self->_cdmServiceHandleMetricsReported;
  self->_cdmServiceHandleMetricsReported = 0;

  cdmServiceSetupMetricsReported = self->_cdmServiceSetupMetricsReported;
  self->_cdmServiceSetupMetricsReported = 0;

  milAssetAcquisitionContext = self->_milAssetAcquisitionContext;
  self->_milAssetAcquisitionContext = 0;

  cdmSetupLink = self->_cdmSetupLink;
  self->_cdmSetupLink = 0;

  v45 = 122;
  if (!v4)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  cdmAllServicesSetupContext = self->_cdmAllServicesSetupContext;
  self->_cdmAllServicesSetupContext = v4;
}

- (void)deleteCdmClientSetupContext
{
  if (self->_whichEvent_Type == 121)
  {
    self->_whichEvent_Type = 0;
    self->_cdmClientSetupContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setCdmClientSetupContext:(id)a3
{
  v4 = a3;
  cdmServiceContext = self->_cdmServiceContext;
  self->_cdmServiceContext = 0;

  cdmRequestContext = self->_cdmRequestContext;
  self->_cdmRequestContext = 0;

  nlxDeviceFixedContext = self->_nlxDeviceFixedContext;
  self->_nlxDeviceFixedContext = 0;

  cdmMatchingSpanEnded = self->_cdmMatchingSpanEnded;
  self->_cdmMatchingSpanEnded = 0;

  cdmUsoGraphTier1 = self->_cdmUsoGraphTier1;
  self->_cdmUsoGraphTier1 = 0;

  cdmMatchingSpanTier1 = self->_cdmMatchingSpanTier1;
  self->_cdmMatchingSpanTier1 = 0;

  nlxLegacyNLContextTier1 = self->_nlxLegacyNLContextTier1;
  self->_nlxLegacyNLContextTier1 = 0;

  cdmDelegatedUserDialogActTier1 = self->_cdmDelegatedUserDialogActTier1;
  self->_cdmDelegatedUserDialogActTier1 = 0;

  cdmSystemDialogActTier1 = self->_cdmSystemDialogActTier1;
  self->_cdmSystemDialogActTier1 = 0;

  cdmTokenizationEnded = self->_cdmTokenizationEnded;
  self->_cdmTokenizationEnded = 0;

  cdmContextUpdateEnded = self->_cdmContextUpdateEnded;
  self->_cdmContextUpdateEnded = 0;

  marrsRepetitionDetectionContext = self->_marrsRepetitionDetectionContext;
  self->_marrsRepetitionDetectionContext = 0;

  marrsQueryRewriteContext = self->_marrsQueryRewriteContext;
  self->_marrsQueryRewriteContext = 0;

  marrsQueryRewriteEvaluatedTier1 = self->_marrsQueryRewriteEvaluatedTier1;
  self->_marrsQueryRewriteEvaluatedTier1 = 0;

  cdmMatchingSpanEndedTier1 = self->_cdmMatchingSpanEndedTier1;
  self->_cdmMatchingSpanEndedTier1 = 0;

  nlxCurareContext = self->_nlxCurareContext;
  self->_nlxCurareContext = 0;

  marrsMentionDetectorEnded = self->_marrsMentionDetectorEnded;
  self->_marrsMentionDetectorEnded = 0;

  marrsMentionDetectorEndedTier1 = self->_marrsMentionDetectorEndedTier1;
  self->_marrsMentionDetectorEndedTier1 = 0;

  marrsMentionResolverEnded = self->_marrsMentionResolverEnded;
  self->_marrsMentionResolverEnded = 0;

  marrsMentionResolverEndedTier1 = self->_marrsMentionResolverEndedTier1;
  self->_marrsMentionResolverEndedTier1 = 0;

  cdmAllServicesSetupContext = self->_cdmAllServicesSetupContext;
  self->_cdmAllServicesSetupContext = 0;

  cdmSingleServiceSetupAttemptContext = self->_cdmSingleServiceSetupAttemptContext;
  self->_cdmSingleServiceSetupAttemptContext = 0;

  cdmSingleServiceSetupAttemptFailed = self->_cdmSingleServiceSetupAttemptFailed;
  self->_cdmSingleServiceSetupAttemptFailed = 0;

  cdmSpanMatcherContext = self->_cdmSpanMatcherContext;
  self->_cdmSpanMatcherContext = 0;

  marrsContextualSpanMatcherEnded = self->_marrsContextualSpanMatcherEnded;
  self->_marrsContextualSpanMatcherEnded = 0;

  marrsContextualSpanMatcherEndedTier1 = self->_marrsContextualSpanMatcherEndedTier1;
  self->_marrsContextualSpanMatcherEndedTier1 = 0;

  cdmXpcEventProcessingContext = self->_cdmXpcEventProcessingContext;
  self->_cdmXpcEventProcessingContext = 0;

  cdmAssetSetupContext = self->_cdmAssetSetupContext;
  self->_cdmAssetSetupContext = 0;

  cdmSetupMissingAssetsDetected = self->_cdmSetupMissingAssetsDetected;
  self->_cdmSetupMissingAssetsDetected = 0;

  cdmClientWarmupContext = self->_cdmClientWarmupContext;
  self->_cdmClientWarmupContext = 0;

  cdmAllServicesWarmupContext = self->_cdmAllServicesWarmupContext;
  self->_cdmAllServicesWarmupContext = 0;

  cdmSingleServiceWarmupAttemptContext = self->_cdmSingleServiceWarmupAttemptContext;
  self->_cdmSingleServiceWarmupAttemptContext = 0;

  cdmSingleServiceWarmupAttemptFailed = self->_cdmSingleServiceWarmupAttemptFailed;
  self->_cdmSingleServiceWarmupAttemptFailed = 0;

  cdmAssetsReported = self->_cdmAssetsReported;
  self->_cdmAssetsReported = 0;

  ssuUserRequestContext = self->_ssuUserRequestContext;
  self->_ssuUserRequestContext = 0;

  ssuBackgroundRequestContext = self->_ssuBackgroundRequestContext;
  self->_ssuBackgroundRequestContext = 0;

  cdmServiceHandleMetricsReported = self->_cdmServiceHandleMetricsReported;
  self->_cdmServiceHandleMetricsReported = 0;

  cdmServiceSetupMetricsReported = self->_cdmServiceSetupMetricsReported;
  self->_cdmServiceSetupMetricsReported = 0;

  milAssetAcquisitionContext = self->_milAssetAcquisitionContext;
  self->_milAssetAcquisitionContext = 0;

  cdmSetupLink = self->_cdmSetupLink;
  self->_cdmSetupLink = 0;

  v45 = 121;
  if (!v4)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  cdmClientSetupContext = self->_cdmClientSetupContext;
  self->_cdmClientSetupContext = v4;
}

- (void)deleteMarrsMentionResolverEndedTier1
{
  if (self->_whichEvent_Type == 120)
  {
    self->_whichEvent_Type = 0;
    self->_marrsMentionResolverEndedTier1 = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setMarrsMentionResolverEndedTier1:(id)a3
{
  v4 = a3;
  cdmServiceContext = self->_cdmServiceContext;
  self->_cdmServiceContext = 0;

  cdmRequestContext = self->_cdmRequestContext;
  self->_cdmRequestContext = 0;

  nlxDeviceFixedContext = self->_nlxDeviceFixedContext;
  self->_nlxDeviceFixedContext = 0;

  cdmMatchingSpanEnded = self->_cdmMatchingSpanEnded;
  self->_cdmMatchingSpanEnded = 0;

  cdmUsoGraphTier1 = self->_cdmUsoGraphTier1;
  self->_cdmUsoGraphTier1 = 0;

  cdmMatchingSpanTier1 = self->_cdmMatchingSpanTier1;
  self->_cdmMatchingSpanTier1 = 0;

  nlxLegacyNLContextTier1 = self->_nlxLegacyNLContextTier1;
  self->_nlxLegacyNLContextTier1 = 0;

  cdmDelegatedUserDialogActTier1 = self->_cdmDelegatedUserDialogActTier1;
  self->_cdmDelegatedUserDialogActTier1 = 0;

  cdmSystemDialogActTier1 = self->_cdmSystemDialogActTier1;
  self->_cdmSystemDialogActTier1 = 0;

  cdmTokenizationEnded = self->_cdmTokenizationEnded;
  self->_cdmTokenizationEnded = 0;

  cdmContextUpdateEnded = self->_cdmContextUpdateEnded;
  self->_cdmContextUpdateEnded = 0;

  marrsRepetitionDetectionContext = self->_marrsRepetitionDetectionContext;
  self->_marrsRepetitionDetectionContext = 0;

  marrsQueryRewriteContext = self->_marrsQueryRewriteContext;
  self->_marrsQueryRewriteContext = 0;

  marrsQueryRewriteEvaluatedTier1 = self->_marrsQueryRewriteEvaluatedTier1;
  self->_marrsQueryRewriteEvaluatedTier1 = 0;

  cdmMatchingSpanEndedTier1 = self->_cdmMatchingSpanEndedTier1;
  self->_cdmMatchingSpanEndedTier1 = 0;

  nlxCurareContext = self->_nlxCurareContext;
  self->_nlxCurareContext = 0;

  marrsMentionDetectorEnded = self->_marrsMentionDetectorEnded;
  self->_marrsMentionDetectorEnded = 0;

  marrsMentionDetectorEndedTier1 = self->_marrsMentionDetectorEndedTier1;
  self->_marrsMentionDetectorEndedTier1 = 0;

  marrsMentionResolverEnded = self->_marrsMentionResolverEnded;
  self->_marrsMentionResolverEnded = 0;

  cdmClientSetupContext = self->_cdmClientSetupContext;
  self->_cdmClientSetupContext = 0;

  cdmAllServicesSetupContext = self->_cdmAllServicesSetupContext;
  self->_cdmAllServicesSetupContext = 0;

  cdmSingleServiceSetupAttemptContext = self->_cdmSingleServiceSetupAttemptContext;
  self->_cdmSingleServiceSetupAttemptContext = 0;

  cdmSingleServiceSetupAttemptFailed = self->_cdmSingleServiceSetupAttemptFailed;
  self->_cdmSingleServiceSetupAttemptFailed = 0;

  cdmSpanMatcherContext = self->_cdmSpanMatcherContext;
  self->_cdmSpanMatcherContext = 0;

  marrsContextualSpanMatcherEnded = self->_marrsContextualSpanMatcherEnded;
  self->_marrsContextualSpanMatcherEnded = 0;

  marrsContextualSpanMatcherEndedTier1 = self->_marrsContextualSpanMatcherEndedTier1;
  self->_marrsContextualSpanMatcherEndedTier1 = 0;

  cdmXpcEventProcessingContext = self->_cdmXpcEventProcessingContext;
  self->_cdmXpcEventProcessingContext = 0;

  cdmAssetSetupContext = self->_cdmAssetSetupContext;
  self->_cdmAssetSetupContext = 0;

  cdmSetupMissingAssetsDetected = self->_cdmSetupMissingAssetsDetected;
  self->_cdmSetupMissingAssetsDetected = 0;

  cdmClientWarmupContext = self->_cdmClientWarmupContext;
  self->_cdmClientWarmupContext = 0;

  cdmAllServicesWarmupContext = self->_cdmAllServicesWarmupContext;
  self->_cdmAllServicesWarmupContext = 0;

  cdmSingleServiceWarmupAttemptContext = self->_cdmSingleServiceWarmupAttemptContext;
  self->_cdmSingleServiceWarmupAttemptContext = 0;

  cdmSingleServiceWarmupAttemptFailed = self->_cdmSingleServiceWarmupAttemptFailed;
  self->_cdmSingleServiceWarmupAttemptFailed = 0;

  cdmAssetsReported = self->_cdmAssetsReported;
  self->_cdmAssetsReported = 0;

  ssuUserRequestContext = self->_ssuUserRequestContext;
  self->_ssuUserRequestContext = 0;

  ssuBackgroundRequestContext = self->_ssuBackgroundRequestContext;
  self->_ssuBackgroundRequestContext = 0;

  cdmServiceHandleMetricsReported = self->_cdmServiceHandleMetricsReported;
  self->_cdmServiceHandleMetricsReported = 0;

  cdmServiceSetupMetricsReported = self->_cdmServiceSetupMetricsReported;
  self->_cdmServiceSetupMetricsReported = 0;

  milAssetAcquisitionContext = self->_milAssetAcquisitionContext;
  self->_milAssetAcquisitionContext = 0;

  cdmSetupLink = self->_cdmSetupLink;
  self->_cdmSetupLink = 0;

  v45 = 120;
  if (!v4)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  marrsMentionResolverEndedTier1 = self->_marrsMentionResolverEndedTier1;
  self->_marrsMentionResolverEndedTier1 = v4;
}

- (void)deleteMarrsMentionResolverEnded
{
  if (self->_whichEvent_Type == 119)
  {
    self->_whichEvent_Type = 0;
    self->_marrsMentionResolverEnded = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setMarrsMentionResolverEnded:(id)a3
{
  v4 = a3;
  cdmServiceContext = self->_cdmServiceContext;
  self->_cdmServiceContext = 0;

  cdmRequestContext = self->_cdmRequestContext;
  self->_cdmRequestContext = 0;

  nlxDeviceFixedContext = self->_nlxDeviceFixedContext;
  self->_nlxDeviceFixedContext = 0;

  cdmMatchingSpanEnded = self->_cdmMatchingSpanEnded;
  self->_cdmMatchingSpanEnded = 0;

  cdmUsoGraphTier1 = self->_cdmUsoGraphTier1;
  self->_cdmUsoGraphTier1 = 0;

  cdmMatchingSpanTier1 = self->_cdmMatchingSpanTier1;
  self->_cdmMatchingSpanTier1 = 0;

  nlxLegacyNLContextTier1 = self->_nlxLegacyNLContextTier1;
  self->_nlxLegacyNLContextTier1 = 0;

  cdmDelegatedUserDialogActTier1 = self->_cdmDelegatedUserDialogActTier1;
  self->_cdmDelegatedUserDialogActTier1 = 0;

  cdmSystemDialogActTier1 = self->_cdmSystemDialogActTier1;
  self->_cdmSystemDialogActTier1 = 0;

  cdmTokenizationEnded = self->_cdmTokenizationEnded;
  self->_cdmTokenizationEnded = 0;

  cdmContextUpdateEnded = self->_cdmContextUpdateEnded;
  self->_cdmContextUpdateEnded = 0;

  marrsRepetitionDetectionContext = self->_marrsRepetitionDetectionContext;
  self->_marrsRepetitionDetectionContext = 0;

  marrsQueryRewriteContext = self->_marrsQueryRewriteContext;
  self->_marrsQueryRewriteContext = 0;

  marrsQueryRewriteEvaluatedTier1 = self->_marrsQueryRewriteEvaluatedTier1;
  self->_marrsQueryRewriteEvaluatedTier1 = 0;

  cdmMatchingSpanEndedTier1 = self->_cdmMatchingSpanEndedTier1;
  self->_cdmMatchingSpanEndedTier1 = 0;

  nlxCurareContext = self->_nlxCurareContext;
  self->_nlxCurareContext = 0;

  marrsMentionDetectorEnded = self->_marrsMentionDetectorEnded;
  self->_marrsMentionDetectorEnded = 0;

  marrsMentionDetectorEndedTier1 = self->_marrsMentionDetectorEndedTier1;
  self->_marrsMentionDetectorEndedTier1 = 0;

  marrsMentionResolverEndedTier1 = self->_marrsMentionResolverEndedTier1;
  self->_marrsMentionResolverEndedTier1 = 0;

  cdmClientSetupContext = self->_cdmClientSetupContext;
  self->_cdmClientSetupContext = 0;

  cdmAllServicesSetupContext = self->_cdmAllServicesSetupContext;
  self->_cdmAllServicesSetupContext = 0;

  cdmSingleServiceSetupAttemptContext = self->_cdmSingleServiceSetupAttemptContext;
  self->_cdmSingleServiceSetupAttemptContext = 0;

  cdmSingleServiceSetupAttemptFailed = self->_cdmSingleServiceSetupAttemptFailed;
  self->_cdmSingleServiceSetupAttemptFailed = 0;

  cdmSpanMatcherContext = self->_cdmSpanMatcherContext;
  self->_cdmSpanMatcherContext = 0;

  marrsContextualSpanMatcherEnded = self->_marrsContextualSpanMatcherEnded;
  self->_marrsContextualSpanMatcherEnded = 0;

  marrsContextualSpanMatcherEndedTier1 = self->_marrsContextualSpanMatcherEndedTier1;
  self->_marrsContextualSpanMatcherEndedTier1 = 0;

  cdmXpcEventProcessingContext = self->_cdmXpcEventProcessingContext;
  self->_cdmXpcEventProcessingContext = 0;

  cdmAssetSetupContext = self->_cdmAssetSetupContext;
  self->_cdmAssetSetupContext = 0;

  cdmSetupMissingAssetsDetected = self->_cdmSetupMissingAssetsDetected;
  self->_cdmSetupMissingAssetsDetected = 0;

  cdmClientWarmupContext = self->_cdmClientWarmupContext;
  self->_cdmClientWarmupContext = 0;

  cdmAllServicesWarmupContext = self->_cdmAllServicesWarmupContext;
  self->_cdmAllServicesWarmupContext = 0;

  cdmSingleServiceWarmupAttemptContext = self->_cdmSingleServiceWarmupAttemptContext;
  self->_cdmSingleServiceWarmupAttemptContext = 0;

  cdmSingleServiceWarmupAttemptFailed = self->_cdmSingleServiceWarmupAttemptFailed;
  self->_cdmSingleServiceWarmupAttemptFailed = 0;

  cdmAssetsReported = self->_cdmAssetsReported;
  self->_cdmAssetsReported = 0;

  ssuUserRequestContext = self->_ssuUserRequestContext;
  self->_ssuUserRequestContext = 0;

  ssuBackgroundRequestContext = self->_ssuBackgroundRequestContext;
  self->_ssuBackgroundRequestContext = 0;

  cdmServiceHandleMetricsReported = self->_cdmServiceHandleMetricsReported;
  self->_cdmServiceHandleMetricsReported = 0;

  cdmServiceSetupMetricsReported = self->_cdmServiceSetupMetricsReported;
  self->_cdmServiceSetupMetricsReported = 0;

  milAssetAcquisitionContext = self->_milAssetAcquisitionContext;
  self->_milAssetAcquisitionContext = 0;

  cdmSetupLink = self->_cdmSetupLink;
  self->_cdmSetupLink = 0;

  v45 = 119;
  if (!v4)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  marrsMentionResolverEnded = self->_marrsMentionResolverEnded;
  self->_marrsMentionResolverEnded = v4;
}

- (void)deleteMarrsMentionDetectorEndedTier1
{
  if (self->_whichEvent_Type == 118)
  {
    self->_whichEvent_Type = 0;
    self->_marrsMentionDetectorEndedTier1 = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setMarrsMentionDetectorEndedTier1:(id)a3
{
  v4 = a3;
  cdmServiceContext = self->_cdmServiceContext;
  self->_cdmServiceContext = 0;

  cdmRequestContext = self->_cdmRequestContext;
  self->_cdmRequestContext = 0;

  nlxDeviceFixedContext = self->_nlxDeviceFixedContext;
  self->_nlxDeviceFixedContext = 0;

  cdmMatchingSpanEnded = self->_cdmMatchingSpanEnded;
  self->_cdmMatchingSpanEnded = 0;

  cdmUsoGraphTier1 = self->_cdmUsoGraphTier1;
  self->_cdmUsoGraphTier1 = 0;

  cdmMatchingSpanTier1 = self->_cdmMatchingSpanTier1;
  self->_cdmMatchingSpanTier1 = 0;

  nlxLegacyNLContextTier1 = self->_nlxLegacyNLContextTier1;
  self->_nlxLegacyNLContextTier1 = 0;

  cdmDelegatedUserDialogActTier1 = self->_cdmDelegatedUserDialogActTier1;
  self->_cdmDelegatedUserDialogActTier1 = 0;

  cdmSystemDialogActTier1 = self->_cdmSystemDialogActTier1;
  self->_cdmSystemDialogActTier1 = 0;

  cdmTokenizationEnded = self->_cdmTokenizationEnded;
  self->_cdmTokenizationEnded = 0;

  cdmContextUpdateEnded = self->_cdmContextUpdateEnded;
  self->_cdmContextUpdateEnded = 0;

  marrsRepetitionDetectionContext = self->_marrsRepetitionDetectionContext;
  self->_marrsRepetitionDetectionContext = 0;

  marrsQueryRewriteContext = self->_marrsQueryRewriteContext;
  self->_marrsQueryRewriteContext = 0;

  marrsQueryRewriteEvaluatedTier1 = self->_marrsQueryRewriteEvaluatedTier1;
  self->_marrsQueryRewriteEvaluatedTier1 = 0;

  cdmMatchingSpanEndedTier1 = self->_cdmMatchingSpanEndedTier1;
  self->_cdmMatchingSpanEndedTier1 = 0;

  nlxCurareContext = self->_nlxCurareContext;
  self->_nlxCurareContext = 0;

  marrsMentionDetectorEnded = self->_marrsMentionDetectorEnded;
  self->_marrsMentionDetectorEnded = 0;

  marrsMentionResolverEnded = self->_marrsMentionResolverEnded;
  self->_marrsMentionResolverEnded = 0;

  marrsMentionResolverEndedTier1 = self->_marrsMentionResolverEndedTier1;
  self->_marrsMentionResolverEndedTier1 = 0;

  cdmClientSetupContext = self->_cdmClientSetupContext;
  self->_cdmClientSetupContext = 0;

  cdmAllServicesSetupContext = self->_cdmAllServicesSetupContext;
  self->_cdmAllServicesSetupContext = 0;

  cdmSingleServiceSetupAttemptContext = self->_cdmSingleServiceSetupAttemptContext;
  self->_cdmSingleServiceSetupAttemptContext = 0;

  cdmSingleServiceSetupAttemptFailed = self->_cdmSingleServiceSetupAttemptFailed;
  self->_cdmSingleServiceSetupAttemptFailed = 0;

  cdmSpanMatcherContext = self->_cdmSpanMatcherContext;
  self->_cdmSpanMatcherContext = 0;

  marrsContextualSpanMatcherEnded = self->_marrsContextualSpanMatcherEnded;
  self->_marrsContextualSpanMatcherEnded = 0;

  marrsContextualSpanMatcherEndedTier1 = self->_marrsContextualSpanMatcherEndedTier1;
  self->_marrsContextualSpanMatcherEndedTier1 = 0;

  cdmXpcEventProcessingContext = self->_cdmXpcEventProcessingContext;
  self->_cdmXpcEventProcessingContext = 0;

  cdmAssetSetupContext = self->_cdmAssetSetupContext;
  self->_cdmAssetSetupContext = 0;

  cdmSetupMissingAssetsDetected = self->_cdmSetupMissingAssetsDetected;
  self->_cdmSetupMissingAssetsDetected = 0;

  cdmClientWarmupContext = self->_cdmClientWarmupContext;
  self->_cdmClientWarmupContext = 0;

  cdmAllServicesWarmupContext = self->_cdmAllServicesWarmupContext;
  self->_cdmAllServicesWarmupContext = 0;

  cdmSingleServiceWarmupAttemptContext = self->_cdmSingleServiceWarmupAttemptContext;
  self->_cdmSingleServiceWarmupAttemptContext = 0;

  cdmSingleServiceWarmupAttemptFailed = self->_cdmSingleServiceWarmupAttemptFailed;
  self->_cdmSingleServiceWarmupAttemptFailed = 0;

  cdmAssetsReported = self->_cdmAssetsReported;
  self->_cdmAssetsReported = 0;

  ssuUserRequestContext = self->_ssuUserRequestContext;
  self->_ssuUserRequestContext = 0;

  ssuBackgroundRequestContext = self->_ssuBackgroundRequestContext;
  self->_ssuBackgroundRequestContext = 0;

  cdmServiceHandleMetricsReported = self->_cdmServiceHandleMetricsReported;
  self->_cdmServiceHandleMetricsReported = 0;

  cdmServiceSetupMetricsReported = self->_cdmServiceSetupMetricsReported;
  self->_cdmServiceSetupMetricsReported = 0;

  milAssetAcquisitionContext = self->_milAssetAcquisitionContext;
  self->_milAssetAcquisitionContext = 0;

  cdmSetupLink = self->_cdmSetupLink;
  self->_cdmSetupLink = 0;

  v45 = 118;
  if (!v4)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  marrsMentionDetectorEndedTier1 = self->_marrsMentionDetectorEndedTier1;
  self->_marrsMentionDetectorEndedTier1 = v4;
}

- (void)deleteMarrsMentionDetectorEnded
{
  if (self->_whichEvent_Type == 117)
  {
    self->_whichEvent_Type = 0;
    self->_marrsMentionDetectorEnded = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setMarrsMentionDetectorEnded:(id)a3
{
  v4 = a3;
  cdmServiceContext = self->_cdmServiceContext;
  self->_cdmServiceContext = 0;

  cdmRequestContext = self->_cdmRequestContext;
  self->_cdmRequestContext = 0;

  nlxDeviceFixedContext = self->_nlxDeviceFixedContext;
  self->_nlxDeviceFixedContext = 0;

  cdmMatchingSpanEnded = self->_cdmMatchingSpanEnded;
  self->_cdmMatchingSpanEnded = 0;

  cdmUsoGraphTier1 = self->_cdmUsoGraphTier1;
  self->_cdmUsoGraphTier1 = 0;

  cdmMatchingSpanTier1 = self->_cdmMatchingSpanTier1;
  self->_cdmMatchingSpanTier1 = 0;

  nlxLegacyNLContextTier1 = self->_nlxLegacyNLContextTier1;
  self->_nlxLegacyNLContextTier1 = 0;

  cdmDelegatedUserDialogActTier1 = self->_cdmDelegatedUserDialogActTier1;
  self->_cdmDelegatedUserDialogActTier1 = 0;

  cdmSystemDialogActTier1 = self->_cdmSystemDialogActTier1;
  self->_cdmSystemDialogActTier1 = 0;

  cdmTokenizationEnded = self->_cdmTokenizationEnded;
  self->_cdmTokenizationEnded = 0;

  cdmContextUpdateEnded = self->_cdmContextUpdateEnded;
  self->_cdmContextUpdateEnded = 0;

  marrsRepetitionDetectionContext = self->_marrsRepetitionDetectionContext;
  self->_marrsRepetitionDetectionContext = 0;

  marrsQueryRewriteContext = self->_marrsQueryRewriteContext;
  self->_marrsQueryRewriteContext = 0;

  marrsQueryRewriteEvaluatedTier1 = self->_marrsQueryRewriteEvaluatedTier1;
  self->_marrsQueryRewriteEvaluatedTier1 = 0;

  cdmMatchingSpanEndedTier1 = self->_cdmMatchingSpanEndedTier1;
  self->_cdmMatchingSpanEndedTier1 = 0;

  nlxCurareContext = self->_nlxCurareContext;
  self->_nlxCurareContext = 0;

  marrsMentionDetectorEndedTier1 = self->_marrsMentionDetectorEndedTier1;
  self->_marrsMentionDetectorEndedTier1 = 0;

  marrsMentionResolverEnded = self->_marrsMentionResolverEnded;
  self->_marrsMentionResolverEnded = 0;

  marrsMentionResolverEndedTier1 = self->_marrsMentionResolverEndedTier1;
  self->_marrsMentionResolverEndedTier1 = 0;

  cdmClientSetupContext = self->_cdmClientSetupContext;
  self->_cdmClientSetupContext = 0;

  cdmAllServicesSetupContext = self->_cdmAllServicesSetupContext;
  self->_cdmAllServicesSetupContext = 0;

  cdmSingleServiceSetupAttemptContext = self->_cdmSingleServiceSetupAttemptContext;
  self->_cdmSingleServiceSetupAttemptContext = 0;

  cdmSingleServiceSetupAttemptFailed = self->_cdmSingleServiceSetupAttemptFailed;
  self->_cdmSingleServiceSetupAttemptFailed = 0;

  cdmSpanMatcherContext = self->_cdmSpanMatcherContext;
  self->_cdmSpanMatcherContext = 0;

  marrsContextualSpanMatcherEnded = self->_marrsContextualSpanMatcherEnded;
  self->_marrsContextualSpanMatcherEnded = 0;

  marrsContextualSpanMatcherEndedTier1 = self->_marrsContextualSpanMatcherEndedTier1;
  self->_marrsContextualSpanMatcherEndedTier1 = 0;

  cdmXpcEventProcessingContext = self->_cdmXpcEventProcessingContext;
  self->_cdmXpcEventProcessingContext = 0;

  cdmAssetSetupContext = self->_cdmAssetSetupContext;
  self->_cdmAssetSetupContext = 0;

  cdmSetupMissingAssetsDetected = self->_cdmSetupMissingAssetsDetected;
  self->_cdmSetupMissingAssetsDetected = 0;

  cdmClientWarmupContext = self->_cdmClientWarmupContext;
  self->_cdmClientWarmupContext = 0;

  cdmAllServicesWarmupContext = self->_cdmAllServicesWarmupContext;
  self->_cdmAllServicesWarmupContext = 0;

  cdmSingleServiceWarmupAttemptContext = self->_cdmSingleServiceWarmupAttemptContext;
  self->_cdmSingleServiceWarmupAttemptContext = 0;

  cdmSingleServiceWarmupAttemptFailed = self->_cdmSingleServiceWarmupAttemptFailed;
  self->_cdmSingleServiceWarmupAttemptFailed = 0;

  cdmAssetsReported = self->_cdmAssetsReported;
  self->_cdmAssetsReported = 0;

  ssuUserRequestContext = self->_ssuUserRequestContext;
  self->_ssuUserRequestContext = 0;

  ssuBackgroundRequestContext = self->_ssuBackgroundRequestContext;
  self->_ssuBackgroundRequestContext = 0;

  cdmServiceHandleMetricsReported = self->_cdmServiceHandleMetricsReported;
  self->_cdmServiceHandleMetricsReported = 0;

  cdmServiceSetupMetricsReported = self->_cdmServiceSetupMetricsReported;
  self->_cdmServiceSetupMetricsReported = 0;

  milAssetAcquisitionContext = self->_milAssetAcquisitionContext;
  self->_milAssetAcquisitionContext = 0;

  cdmSetupLink = self->_cdmSetupLink;
  self->_cdmSetupLink = 0;

  v45 = 117;
  if (!v4)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  marrsMentionDetectorEnded = self->_marrsMentionDetectorEnded;
  self->_marrsMentionDetectorEnded = v4;
}

- (void)deleteNlxCurareContext
{
  if (self->_whichEvent_Type == 116)
  {
    self->_whichEvent_Type = 0;
    self->_nlxCurareContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setNlxCurareContext:(id)a3
{
  v4 = a3;
  cdmServiceContext = self->_cdmServiceContext;
  self->_cdmServiceContext = 0;

  cdmRequestContext = self->_cdmRequestContext;
  self->_cdmRequestContext = 0;

  nlxDeviceFixedContext = self->_nlxDeviceFixedContext;
  self->_nlxDeviceFixedContext = 0;

  cdmMatchingSpanEnded = self->_cdmMatchingSpanEnded;
  self->_cdmMatchingSpanEnded = 0;

  cdmUsoGraphTier1 = self->_cdmUsoGraphTier1;
  self->_cdmUsoGraphTier1 = 0;

  cdmMatchingSpanTier1 = self->_cdmMatchingSpanTier1;
  self->_cdmMatchingSpanTier1 = 0;

  nlxLegacyNLContextTier1 = self->_nlxLegacyNLContextTier1;
  self->_nlxLegacyNLContextTier1 = 0;

  cdmDelegatedUserDialogActTier1 = self->_cdmDelegatedUserDialogActTier1;
  self->_cdmDelegatedUserDialogActTier1 = 0;

  cdmSystemDialogActTier1 = self->_cdmSystemDialogActTier1;
  self->_cdmSystemDialogActTier1 = 0;

  cdmTokenizationEnded = self->_cdmTokenizationEnded;
  self->_cdmTokenizationEnded = 0;

  cdmContextUpdateEnded = self->_cdmContextUpdateEnded;
  self->_cdmContextUpdateEnded = 0;

  marrsRepetitionDetectionContext = self->_marrsRepetitionDetectionContext;
  self->_marrsRepetitionDetectionContext = 0;

  marrsQueryRewriteContext = self->_marrsQueryRewriteContext;
  self->_marrsQueryRewriteContext = 0;

  marrsQueryRewriteEvaluatedTier1 = self->_marrsQueryRewriteEvaluatedTier1;
  self->_marrsQueryRewriteEvaluatedTier1 = 0;

  cdmMatchingSpanEndedTier1 = self->_cdmMatchingSpanEndedTier1;
  self->_cdmMatchingSpanEndedTier1 = 0;

  marrsMentionDetectorEnded = self->_marrsMentionDetectorEnded;
  self->_marrsMentionDetectorEnded = 0;

  marrsMentionDetectorEndedTier1 = self->_marrsMentionDetectorEndedTier1;
  self->_marrsMentionDetectorEndedTier1 = 0;

  marrsMentionResolverEnded = self->_marrsMentionResolverEnded;
  self->_marrsMentionResolverEnded = 0;

  marrsMentionResolverEndedTier1 = self->_marrsMentionResolverEndedTier1;
  self->_marrsMentionResolverEndedTier1 = 0;

  cdmClientSetupContext = self->_cdmClientSetupContext;
  self->_cdmClientSetupContext = 0;

  cdmAllServicesSetupContext = self->_cdmAllServicesSetupContext;
  self->_cdmAllServicesSetupContext = 0;

  cdmSingleServiceSetupAttemptContext = self->_cdmSingleServiceSetupAttemptContext;
  self->_cdmSingleServiceSetupAttemptContext = 0;

  cdmSingleServiceSetupAttemptFailed = self->_cdmSingleServiceSetupAttemptFailed;
  self->_cdmSingleServiceSetupAttemptFailed = 0;

  cdmSpanMatcherContext = self->_cdmSpanMatcherContext;
  self->_cdmSpanMatcherContext = 0;

  marrsContextualSpanMatcherEnded = self->_marrsContextualSpanMatcherEnded;
  self->_marrsContextualSpanMatcherEnded = 0;

  marrsContextualSpanMatcherEndedTier1 = self->_marrsContextualSpanMatcherEndedTier1;
  self->_marrsContextualSpanMatcherEndedTier1 = 0;

  cdmXpcEventProcessingContext = self->_cdmXpcEventProcessingContext;
  self->_cdmXpcEventProcessingContext = 0;

  cdmAssetSetupContext = self->_cdmAssetSetupContext;
  self->_cdmAssetSetupContext = 0;

  cdmSetupMissingAssetsDetected = self->_cdmSetupMissingAssetsDetected;
  self->_cdmSetupMissingAssetsDetected = 0;

  cdmClientWarmupContext = self->_cdmClientWarmupContext;
  self->_cdmClientWarmupContext = 0;

  cdmAllServicesWarmupContext = self->_cdmAllServicesWarmupContext;
  self->_cdmAllServicesWarmupContext = 0;

  cdmSingleServiceWarmupAttemptContext = self->_cdmSingleServiceWarmupAttemptContext;
  self->_cdmSingleServiceWarmupAttemptContext = 0;

  cdmSingleServiceWarmupAttemptFailed = self->_cdmSingleServiceWarmupAttemptFailed;
  self->_cdmSingleServiceWarmupAttemptFailed = 0;

  cdmAssetsReported = self->_cdmAssetsReported;
  self->_cdmAssetsReported = 0;

  ssuUserRequestContext = self->_ssuUserRequestContext;
  self->_ssuUserRequestContext = 0;

  ssuBackgroundRequestContext = self->_ssuBackgroundRequestContext;
  self->_ssuBackgroundRequestContext = 0;

  cdmServiceHandleMetricsReported = self->_cdmServiceHandleMetricsReported;
  self->_cdmServiceHandleMetricsReported = 0;

  cdmServiceSetupMetricsReported = self->_cdmServiceSetupMetricsReported;
  self->_cdmServiceSetupMetricsReported = 0;

  milAssetAcquisitionContext = self->_milAssetAcquisitionContext;
  self->_milAssetAcquisitionContext = 0;

  cdmSetupLink = self->_cdmSetupLink;
  self->_cdmSetupLink = 0;

  v45 = 116;
  if (!v4)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  nlxCurareContext = self->_nlxCurareContext;
  self->_nlxCurareContext = v4;
}

- (void)deleteCdmMatchingSpanEndedTier1
{
  if (self->_whichEvent_Type == 115)
  {
    self->_whichEvent_Type = 0;
    self->_cdmMatchingSpanEndedTier1 = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setCdmMatchingSpanEndedTier1:(id)a3
{
  v4 = a3;
  cdmServiceContext = self->_cdmServiceContext;
  self->_cdmServiceContext = 0;

  cdmRequestContext = self->_cdmRequestContext;
  self->_cdmRequestContext = 0;

  nlxDeviceFixedContext = self->_nlxDeviceFixedContext;
  self->_nlxDeviceFixedContext = 0;

  cdmMatchingSpanEnded = self->_cdmMatchingSpanEnded;
  self->_cdmMatchingSpanEnded = 0;

  cdmUsoGraphTier1 = self->_cdmUsoGraphTier1;
  self->_cdmUsoGraphTier1 = 0;

  cdmMatchingSpanTier1 = self->_cdmMatchingSpanTier1;
  self->_cdmMatchingSpanTier1 = 0;

  nlxLegacyNLContextTier1 = self->_nlxLegacyNLContextTier1;
  self->_nlxLegacyNLContextTier1 = 0;

  cdmDelegatedUserDialogActTier1 = self->_cdmDelegatedUserDialogActTier1;
  self->_cdmDelegatedUserDialogActTier1 = 0;

  cdmSystemDialogActTier1 = self->_cdmSystemDialogActTier1;
  self->_cdmSystemDialogActTier1 = 0;

  cdmTokenizationEnded = self->_cdmTokenizationEnded;
  self->_cdmTokenizationEnded = 0;

  cdmContextUpdateEnded = self->_cdmContextUpdateEnded;
  self->_cdmContextUpdateEnded = 0;

  marrsRepetitionDetectionContext = self->_marrsRepetitionDetectionContext;
  self->_marrsRepetitionDetectionContext = 0;

  marrsQueryRewriteContext = self->_marrsQueryRewriteContext;
  self->_marrsQueryRewriteContext = 0;

  marrsQueryRewriteEvaluatedTier1 = self->_marrsQueryRewriteEvaluatedTier1;
  self->_marrsQueryRewriteEvaluatedTier1 = 0;

  nlxCurareContext = self->_nlxCurareContext;
  self->_nlxCurareContext = 0;

  marrsMentionDetectorEnded = self->_marrsMentionDetectorEnded;
  self->_marrsMentionDetectorEnded = 0;

  marrsMentionDetectorEndedTier1 = self->_marrsMentionDetectorEndedTier1;
  self->_marrsMentionDetectorEndedTier1 = 0;

  marrsMentionResolverEnded = self->_marrsMentionResolverEnded;
  self->_marrsMentionResolverEnded = 0;

  marrsMentionResolverEndedTier1 = self->_marrsMentionResolverEndedTier1;
  self->_marrsMentionResolverEndedTier1 = 0;

  cdmClientSetupContext = self->_cdmClientSetupContext;
  self->_cdmClientSetupContext = 0;

  cdmAllServicesSetupContext = self->_cdmAllServicesSetupContext;
  self->_cdmAllServicesSetupContext = 0;

  cdmSingleServiceSetupAttemptContext = self->_cdmSingleServiceSetupAttemptContext;
  self->_cdmSingleServiceSetupAttemptContext = 0;

  cdmSingleServiceSetupAttemptFailed = self->_cdmSingleServiceSetupAttemptFailed;
  self->_cdmSingleServiceSetupAttemptFailed = 0;

  cdmSpanMatcherContext = self->_cdmSpanMatcherContext;
  self->_cdmSpanMatcherContext = 0;

  marrsContextualSpanMatcherEnded = self->_marrsContextualSpanMatcherEnded;
  self->_marrsContextualSpanMatcherEnded = 0;

  marrsContextualSpanMatcherEndedTier1 = self->_marrsContextualSpanMatcherEndedTier1;
  self->_marrsContextualSpanMatcherEndedTier1 = 0;

  cdmXpcEventProcessingContext = self->_cdmXpcEventProcessingContext;
  self->_cdmXpcEventProcessingContext = 0;

  cdmAssetSetupContext = self->_cdmAssetSetupContext;
  self->_cdmAssetSetupContext = 0;

  cdmSetupMissingAssetsDetected = self->_cdmSetupMissingAssetsDetected;
  self->_cdmSetupMissingAssetsDetected = 0;

  cdmClientWarmupContext = self->_cdmClientWarmupContext;
  self->_cdmClientWarmupContext = 0;

  cdmAllServicesWarmupContext = self->_cdmAllServicesWarmupContext;
  self->_cdmAllServicesWarmupContext = 0;

  cdmSingleServiceWarmupAttemptContext = self->_cdmSingleServiceWarmupAttemptContext;
  self->_cdmSingleServiceWarmupAttemptContext = 0;

  cdmSingleServiceWarmupAttemptFailed = self->_cdmSingleServiceWarmupAttemptFailed;
  self->_cdmSingleServiceWarmupAttemptFailed = 0;

  cdmAssetsReported = self->_cdmAssetsReported;
  self->_cdmAssetsReported = 0;

  ssuUserRequestContext = self->_ssuUserRequestContext;
  self->_ssuUserRequestContext = 0;

  ssuBackgroundRequestContext = self->_ssuBackgroundRequestContext;
  self->_ssuBackgroundRequestContext = 0;

  cdmServiceHandleMetricsReported = self->_cdmServiceHandleMetricsReported;
  self->_cdmServiceHandleMetricsReported = 0;

  cdmServiceSetupMetricsReported = self->_cdmServiceSetupMetricsReported;
  self->_cdmServiceSetupMetricsReported = 0;

  milAssetAcquisitionContext = self->_milAssetAcquisitionContext;
  self->_milAssetAcquisitionContext = 0;

  cdmSetupLink = self->_cdmSetupLink;
  self->_cdmSetupLink = 0;

  v45 = 115;
  if (!v4)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  cdmMatchingSpanEndedTier1 = self->_cdmMatchingSpanEndedTier1;
  self->_cdmMatchingSpanEndedTier1 = v4;
}

- (void)deleteMarrsQueryRewriteEvaluatedTier1
{
  if (self->_whichEvent_Type == 114)
  {
    self->_whichEvent_Type = 0;
    self->_marrsQueryRewriteEvaluatedTier1 = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setMarrsQueryRewriteEvaluatedTier1:(id)a3
{
  v4 = a3;
  cdmServiceContext = self->_cdmServiceContext;
  self->_cdmServiceContext = 0;

  cdmRequestContext = self->_cdmRequestContext;
  self->_cdmRequestContext = 0;

  nlxDeviceFixedContext = self->_nlxDeviceFixedContext;
  self->_nlxDeviceFixedContext = 0;

  cdmMatchingSpanEnded = self->_cdmMatchingSpanEnded;
  self->_cdmMatchingSpanEnded = 0;

  cdmUsoGraphTier1 = self->_cdmUsoGraphTier1;
  self->_cdmUsoGraphTier1 = 0;

  cdmMatchingSpanTier1 = self->_cdmMatchingSpanTier1;
  self->_cdmMatchingSpanTier1 = 0;

  nlxLegacyNLContextTier1 = self->_nlxLegacyNLContextTier1;
  self->_nlxLegacyNLContextTier1 = 0;

  cdmDelegatedUserDialogActTier1 = self->_cdmDelegatedUserDialogActTier1;
  self->_cdmDelegatedUserDialogActTier1 = 0;

  cdmSystemDialogActTier1 = self->_cdmSystemDialogActTier1;
  self->_cdmSystemDialogActTier1 = 0;

  cdmTokenizationEnded = self->_cdmTokenizationEnded;
  self->_cdmTokenizationEnded = 0;

  cdmContextUpdateEnded = self->_cdmContextUpdateEnded;
  self->_cdmContextUpdateEnded = 0;

  marrsRepetitionDetectionContext = self->_marrsRepetitionDetectionContext;
  self->_marrsRepetitionDetectionContext = 0;

  marrsQueryRewriteContext = self->_marrsQueryRewriteContext;
  self->_marrsQueryRewriteContext = 0;

  cdmMatchingSpanEndedTier1 = self->_cdmMatchingSpanEndedTier1;
  self->_cdmMatchingSpanEndedTier1 = 0;

  nlxCurareContext = self->_nlxCurareContext;
  self->_nlxCurareContext = 0;

  marrsMentionDetectorEnded = self->_marrsMentionDetectorEnded;
  self->_marrsMentionDetectorEnded = 0;

  marrsMentionDetectorEndedTier1 = self->_marrsMentionDetectorEndedTier1;
  self->_marrsMentionDetectorEndedTier1 = 0;

  marrsMentionResolverEnded = self->_marrsMentionResolverEnded;
  self->_marrsMentionResolverEnded = 0;

  marrsMentionResolverEndedTier1 = self->_marrsMentionResolverEndedTier1;
  self->_marrsMentionResolverEndedTier1 = 0;

  cdmClientSetupContext = self->_cdmClientSetupContext;
  self->_cdmClientSetupContext = 0;

  cdmAllServicesSetupContext = self->_cdmAllServicesSetupContext;
  self->_cdmAllServicesSetupContext = 0;

  cdmSingleServiceSetupAttemptContext = self->_cdmSingleServiceSetupAttemptContext;
  self->_cdmSingleServiceSetupAttemptContext = 0;

  cdmSingleServiceSetupAttemptFailed = self->_cdmSingleServiceSetupAttemptFailed;
  self->_cdmSingleServiceSetupAttemptFailed = 0;

  cdmSpanMatcherContext = self->_cdmSpanMatcherContext;
  self->_cdmSpanMatcherContext = 0;

  marrsContextualSpanMatcherEnded = self->_marrsContextualSpanMatcherEnded;
  self->_marrsContextualSpanMatcherEnded = 0;

  marrsContextualSpanMatcherEndedTier1 = self->_marrsContextualSpanMatcherEndedTier1;
  self->_marrsContextualSpanMatcherEndedTier1 = 0;

  cdmXpcEventProcessingContext = self->_cdmXpcEventProcessingContext;
  self->_cdmXpcEventProcessingContext = 0;

  cdmAssetSetupContext = self->_cdmAssetSetupContext;
  self->_cdmAssetSetupContext = 0;

  cdmSetupMissingAssetsDetected = self->_cdmSetupMissingAssetsDetected;
  self->_cdmSetupMissingAssetsDetected = 0;

  cdmClientWarmupContext = self->_cdmClientWarmupContext;
  self->_cdmClientWarmupContext = 0;

  cdmAllServicesWarmupContext = self->_cdmAllServicesWarmupContext;
  self->_cdmAllServicesWarmupContext = 0;

  cdmSingleServiceWarmupAttemptContext = self->_cdmSingleServiceWarmupAttemptContext;
  self->_cdmSingleServiceWarmupAttemptContext = 0;

  cdmSingleServiceWarmupAttemptFailed = self->_cdmSingleServiceWarmupAttemptFailed;
  self->_cdmSingleServiceWarmupAttemptFailed = 0;

  cdmAssetsReported = self->_cdmAssetsReported;
  self->_cdmAssetsReported = 0;

  ssuUserRequestContext = self->_ssuUserRequestContext;
  self->_ssuUserRequestContext = 0;

  ssuBackgroundRequestContext = self->_ssuBackgroundRequestContext;
  self->_ssuBackgroundRequestContext = 0;

  cdmServiceHandleMetricsReported = self->_cdmServiceHandleMetricsReported;
  self->_cdmServiceHandleMetricsReported = 0;

  cdmServiceSetupMetricsReported = self->_cdmServiceSetupMetricsReported;
  self->_cdmServiceSetupMetricsReported = 0;

  milAssetAcquisitionContext = self->_milAssetAcquisitionContext;
  self->_milAssetAcquisitionContext = 0;

  cdmSetupLink = self->_cdmSetupLink;
  self->_cdmSetupLink = 0;

  v45 = 114;
  if (!v4)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  marrsQueryRewriteEvaluatedTier1 = self->_marrsQueryRewriteEvaluatedTier1;
  self->_marrsQueryRewriteEvaluatedTier1 = v4;
}

- (void)deleteMarrsQueryRewriteContext
{
  if (self->_whichEvent_Type == 113)
  {
    self->_whichEvent_Type = 0;
    self->_marrsQueryRewriteContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setMarrsQueryRewriteContext:(id)a3
{
  v4 = a3;
  cdmServiceContext = self->_cdmServiceContext;
  self->_cdmServiceContext = 0;

  cdmRequestContext = self->_cdmRequestContext;
  self->_cdmRequestContext = 0;

  nlxDeviceFixedContext = self->_nlxDeviceFixedContext;
  self->_nlxDeviceFixedContext = 0;

  cdmMatchingSpanEnded = self->_cdmMatchingSpanEnded;
  self->_cdmMatchingSpanEnded = 0;

  cdmUsoGraphTier1 = self->_cdmUsoGraphTier1;
  self->_cdmUsoGraphTier1 = 0;

  cdmMatchingSpanTier1 = self->_cdmMatchingSpanTier1;
  self->_cdmMatchingSpanTier1 = 0;

  nlxLegacyNLContextTier1 = self->_nlxLegacyNLContextTier1;
  self->_nlxLegacyNLContextTier1 = 0;

  cdmDelegatedUserDialogActTier1 = self->_cdmDelegatedUserDialogActTier1;
  self->_cdmDelegatedUserDialogActTier1 = 0;

  cdmSystemDialogActTier1 = self->_cdmSystemDialogActTier1;
  self->_cdmSystemDialogActTier1 = 0;

  cdmTokenizationEnded = self->_cdmTokenizationEnded;
  self->_cdmTokenizationEnded = 0;

  cdmContextUpdateEnded = self->_cdmContextUpdateEnded;
  self->_cdmContextUpdateEnded = 0;

  marrsRepetitionDetectionContext = self->_marrsRepetitionDetectionContext;
  self->_marrsRepetitionDetectionContext = 0;

  marrsQueryRewriteEvaluatedTier1 = self->_marrsQueryRewriteEvaluatedTier1;
  self->_marrsQueryRewriteEvaluatedTier1 = 0;

  cdmMatchingSpanEndedTier1 = self->_cdmMatchingSpanEndedTier1;
  self->_cdmMatchingSpanEndedTier1 = 0;

  nlxCurareContext = self->_nlxCurareContext;
  self->_nlxCurareContext = 0;

  marrsMentionDetectorEnded = self->_marrsMentionDetectorEnded;
  self->_marrsMentionDetectorEnded = 0;

  marrsMentionDetectorEndedTier1 = self->_marrsMentionDetectorEndedTier1;
  self->_marrsMentionDetectorEndedTier1 = 0;

  marrsMentionResolverEnded = self->_marrsMentionResolverEnded;
  self->_marrsMentionResolverEnded = 0;

  marrsMentionResolverEndedTier1 = self->_marrsMentionResolverEndedTier1;
  self->_marrsMentionResolverEndedTier1 = 0;

  cdmClientSetupContext = self->_cdmClientSetupContext;
  self->_cdmClientSetupContext = 0;

  cdmAllServicesSetupContext = self->_cdmAllServicesSetupContext;
  self->_cdmAllServicesSetupContext = 0;

  cdmSingleServiceSetupAttemptContext = self->_cdmSingleServiceSetupAttemptContext;
  self->_cdmSingleServiceSetupAttemptContext = 0;

  cdmSingleServiceSetupAttemptFailed = self->_cdmSingleServiceSetupAttemptFailed;
  self->_cdmSingleServiceSetupAttemptFailed = 0;

  cdmSpanMatcherContext = self->_cdmSpanMatcherContext;
  self->_cdmSpanMatcherContext = 0;

  marrsContextualSpanMatcherEnded = self->_marrsContextualSpanMatcherEnded;
  self->_marrsContextualSpanMatcherEnded = 0;

  marrsContextualSpanMatcherEndedTier1 = self->_marrsContextualSpanMatcherEndedTier1;
  self->_marrsContextualSpanMatcherEndedTier1 = 0;

  cdmXpcEventProcessingContext = self->_cdmXpcEventProcessingContext;
  self->_cdmXpcEventProcessingContext = 0;

  cdmAssetSetupContext = self->_cdmAssetSetupContext;
  self->_cdmAssetSetupContext = 0;

  cdmSetupMissingAssetsDetected = self->_cdmSetupMissingAssetsDetected;
  self->_cdmSetupMissingAssetsDetected = 0;

  cdmClientWarmupContext = self->_cdmClientWarmupContext;
  self->_cdmClientWarmupContext = 0;

  cdmAllServicesWarmupContext = self->_cdmAllServicesWarmupContext;
  self->_cdmAllServicesWarmupContext = 0;

  cdmSingleServiceWarmupAttemptContext = self->_cdmSingleServiceWarmupAttemptContext;
  self->_cdmSingleServiceWarmupAttemptContext = 0;

  cdmSingleServiceWarmupAttemptFailed = self->_cdmSingleServiceWarmupAttemptFailed;
  self->_cdmSingleServiceWarmupAttemptFailed = 0;

  cdmAssetsReported = self->_cdmAssetsReported;
  self->_cdmAssetsReported = 0;

  ssuUserRequestContext = self->_ssuUserRequestContext;
  self->_ssuUserRequestContext = 0;

  ssuBackgroundRequestContext = self->_ssuBackgroundRequestContext;
  self->_ssuBackgroundRequestContext = 0;

  cdmServiceHandleMetricsReported = self->_cdmServiceHandleMetricsReported;
  self->_cdmServiceHandleMetricsReported = 0;

  cdmServiceSetupMetricsReported = self->_cdmServiceSetupMetricsReported;
  self->_cdmServiceSetupMetricsReported = 0;

  milAssetAcquisitionContext = self->_milAssetAcquisitionContext;
  self->_milAssetAcquisitionContext = 0;

  cdmSetupLink = self->_cdmSetupLink;
  self->_cdmSetupLink = 0;

  v45 = 113;
  if (!v4)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  marrsQueryRewriteContext = self->_marrsQueryRewriteContext;
  self->_marrsQueryRewriteContext = v4;
}

- (void)deleteMarrsRepetitionDetectionContext
{
  if (self->_whichEvent_Type == 112)
  {
    self->_whichEvent_Type = 0;
    self->_marrsRepetitionDetectionContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setMarrsRepetitionDetectionContext:(id)a3
{
  v4 = a3;
  cdmServiceContext = self->_cdmServiceContext;
  self->_cdmServiceContext = 0;

  cdmRequestContext = self->_cdmRequestContext;
  self->_cdmRequestContext = 0;

  nlxDeviceFixedContext = self->_nlxDeviceFixedContext;
  self->_nlxDeviceFixedContext = 0;

  cdmMatchingSpanEnded = self->_cdmMatchingSpanEnded;
  self->_cdmMatchingSpanEnded = 0;

  cdmUsoGraphTier1 = self->_cdmUsoGraphTier1;
  self->_cdmUsoGraphTier1 = 0;

  cdmMatchingSpanTier1 = self->_cdmMatchingSpanTier1;
  self->_cdmMatchingSpanTier1 = 0;

  nlxLegacyNLContextTier1 = self->_nlxLegacyNLContextTier1;
  self->_nlxLegacyNLContextTier1 = 0;

  cdmDelegatedUserDialogActTier1 = self->_cdmDelegatedUserDialogActTier1;
  self->_cdmDelegatedUserDialogActTier1 = 0;

  cdmSystemDialogActTier1 = self->_cdmSystemDialogActTier1;
  self->_cdmSystemDialogActTier1 = 0;

  cdmTokenizationEnded = self->_cdmTokenizationEnded;
  self->_cdmTokenizationEnded = 0;

  cdmContextUpdateEnded = self->_cdmContextUpdateEnded;
  self->_cdmContextUpdateEnded = 0;

  marrsQueryRewriteContext = self->_marrsQueryRewriteContext;
  self->_marrsQueryRewriteContext = 0;

  marrsQueryRewriteEvaluatedTier1 = self->_marrsQueryRewriteEvaluatedTier1;
  self->_marrsQueryRewriteEvaluatedTier1 = 0;

  cdmMatchingSpanEndedTier1 = self->_cdmMatchingSpanEndedTier1;
  self->_cdmMatchingSpanEndedTier1 = 0;

  nlxCurareContext = self->_nlxCurareContext;
  self->_nlxCurareContext = 0;

  marrsMentionDetectorEnded = self->_marrsMentionDetectorEnded;
  self->_marrsMentionDetectorEnded = 0;

  marrsMentionDetectorEndedTier1 = self->_marrsMentionDetectorEndedTier1;
  self->_marrsMentionDetectorEndedTier1 = 0;

  marrsMentionResolverEnded = self->_marrsMentionResolverEnded;
  self->_marrsMentionResolverEnded = 0;

  marrsMentionResolverEndedTier1 = self->_marrsMentionResolverEndedTier1;
  self->_marrsMentionResolverEndedTier1 = 0;

  cdmClientSetupContext = self->_cdmClientSetupContext;
  self->_cdmClientSetupContext = 0;

  cdmAllServicesSetupContext = self->_cdmAllServicesSetupContext;
  self->_cdmAllServicesSetupContext = 0;

  cdmSingleServiceSetupAttemptContext = self->_cdmSingleServiceSetupAttemptContext;
  self->_cdmSingleServiceSetupAttemptContext = 0;

  cdmSingleServiceSetupAttemptFailed = self->_cdmSingleServiceSetupAttemptFailed;
  self->_cdmSingleServiceSetupAttemptFailed = 0;

  cdmSpanMatcherContext = self->_cdmSpanMatcherContext;
  self->_cdmSpanMatcherContext = 0;

  marrsContextualSpanMatcherEnded = self->_marrsContextualSpanMatcherEnded;
  self->_marrsContextualSpanMatcherEnded = 0;

  marrsContextualSpanMatcherEndedTier1 = self->_marrsContextualSpanMatcherEndedTier1;
  self->_marrsContextualSpanMatcherEndedTier1 = 0;

  cdmXpcEventProcessingContext = self->_cdmXpcEventProcessingContext;
  self->_cdmXpcEventProcessingContext = 0;

  cdmAssetSetupContext = self->_cdmAssetSetupContext;
  self->_cdmAssetSetupContext = 0;

  cdmSetupMissingAssetsDetected = self->_cdmSetupMissingAssetsDetected;
  self->_cdmSetupMissingAssetsDetected = 0;

  cdmClientWarmupContext = self->_cdmClientWarmupContext;
  self->_cdmClientWarmupContext = 0;

  cdmAllServicesWarmupContext = self->_cdmAllServicesWarmupContext;
  self->_cdmAllServicesWarmupContext = 0;

  cdmSingleServiceWarmupAttemptContext = self->_cdmSingleServiceWarmupAttemptContext;
  self->_cdmSingleServiceWarmupAttemptContext = 0;

  cdmSingleServiceWarmupAttemptFailed = self->_cdmSingleServiceWarmupAttemptFailed;
  self->_cdmSingleServiceWarmupAttemptFailed = 0;

  cdmAssetsReported = self->_cdmAssetsReported;
  self->_cdmAssetsReported = 0;

  ssuUserRequestContext = self->_ssuUserRequestContext;
  self->_ssuUserRequestContext = 0;

  ssuBackgroundRequestContext = self->_ssuBackgroundRequestContext;
  self->_ssuBackgroundRequestContext = 0;

  cdmServiceHandleMetricsReported = self->_cdmServiceHandleMetricsReported;
  self->_cdmServiceHandleMetricsReported = 0;

  cdmServiceSetupMetricsReported = self->_cdmServiceSetupMetricsReported;
  self->_cdmServiceSetupMetricsReported = 0;

  milAssetAcquisitionContext = self->_milAssetAcquisitionContext;
  self->_milAssetAcquisitionContext = 0;

  cdmSetupLink = self->_cdmSetupLink;
  self->_cdmSetupLink = 0;

  v45 = 112;
  if (!v4)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  marrsRepetitionDetectionContext = self->_marrsRepetitionDetectionContext;
  self->_marrsRepetitionDetectionContext = v4;
}

- (void)deleteCdmContextUpdateEnded
{
  if (self->_whichEvent_Type == 111)
  {
    self->_whichEvent_Type = 0;
    self->_cdmContextUpdateEnded = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setCdmContextUpdateEnded:(id)a3
{
  v4 = a3;
  cdmServiceContext = self->_cdmServiceContext;
  self->_cdmServiceContext = 0;

  cdmRequestContext = self->_cdmRequestContext;
  self->_cdmRequestContext = 0;

  nlxDeviceFixedContext = self->_nlxDeviceFixedContext;
  self->_nlxDeviceFixedContext = 0;

  cdmMatchingSpanEnded = self->_cdmMatchingSpanEnded;
  self->_cdmMatchingSpanEnded = 0;

  cdmUsoGraphTier1 = self->_cdmUsoGraphTier1;
  self->_cdmUsoGraphTier1 = 0;

  cdmMatchingSpanTier1 = self->_cdmMatchingSpanTier1;
  self->_cdmMatchingSpanTier1 = 0;

  nlxLegacyNLContextTier1 = self->_nlxLegacyNLContextTier1;
  self->_nlxLegacyNLContextTier1 = 0;

  cdmDelegatedUserDialogActTier1 = self->_cdmDelegatedUserDialogActTier1;
  self->_cdmDelegatedUserDialogActTier1 = 0;

  cdmSystemDialogActTier1 = self->_cdmSystemDialogActTier1;
  self->_cdmSystemDialogActTier1 = 0;

  cdmTokenizationEnded = self->_cdmTokenizationEnded;
  self->_cdmTokenizationEnded = 0;

  marrsRepetitionDetectionContext = self->_marrsRepetitionDetectionContext;
  self->_marrsRepetitionDetectionContext = 0;

  marrsQueryRewriteContext = self->_marrsQueryRewriteContext;
  self->_marrsQueryRewriteContext = 0;

  marrsQueryRewriteEvaluatedTier1 = self->_marrsQueryRewriteEvaluatedTier1;
  self->_marrsQueryRewriteEvaluatedTier1 = 0;

  cdmMatchingSpanEndedTier1 = self->_cdmMatchingSpanEndedTier1;
  self->_cdmMatchingSpanEndedTier1 = 0;

  nlxCurareContext = self->_nlxCurareContext;
  self->_nlxCurareContext = 0;

  marrsMentionDetectorEnded = self->_marrsMentionDetectorEnded;
  self->_marrsMentionDetectorEnded = 0;

  marrsMentionDetectorEndedTier1 = self->_marrsMentionDetectorEndedTier1;
  self->_marrsMentionDetectorEndedTier1 = 0;

  marrsMentionResolverEnded = self->_marrsMentionResolverEnded;
  self->_marrsMentionResolverEnded = 0;

  marrsMentionResolverEndedTier1 = self->_marrsMentionResolverEndedTier1;
  self->_marrsMentionResolverEndedTier1 = 0;

  cdmClientSetupContext = self->_cdmClientSetupContext;
  self->_cdmClientSetupContext = 0;

  cdmAllServicesSetupContext = self->_cdmAllServicesSetupContext;
  self->_cdmAllServicesSetupContext = 0;

  cdmSingleServiceSetupAttemptContext = self->_cdmSingleServiceSetupAttemptContext;
  self->_cdmSingleServiceSetupAttemptContext = 0;

  cdmSingleServiceSetupAttemptFailed = self->_cdmSingleServiceSetupAttemptFailed;
  self->_cdmSingleServiceSetupAttemptFailed = 0;

  cdmSpanMatcherContext = self->_cdmSpanMatcherContext;
  self->_cdmSpanMatcherContext = 0;

  marrsContextualSpanMatcherEnded = self->_marrsContextualSpanMatcherEnded;
  self->_marrsContextualSpanMatcherEnded = 0;

  marrsContextualSpanMatcherEndedTier1 = self->_marrsContextualSpanMatcherEndedTier1;
  self->_marrsContextualSpanMatcherEndedTier1 = 0;

  cdmXpcEventProcessingContext = self->_cdmXpcEventProcessingContext;
  self->_cdmXpcEventProcessingContext = 0;

  cdmAssetSetupContext = self->_cdmAssetSetupContext;
  self->_cdmAssetSetupContext = 0;

  cdmSetupMissingAssetsDetected = self->_cdmSetupMissingAssetsDetected;
  self->_cdmSetupMissingAssetsDetected = 0;

  cdmClientWarmupContext = self->_cdmClientWarmupContext;
  self->_cdmClientWarmupContext = 0;

  cdmAllServicesWarmupContext = self->_cdmAllServicesWarmupContext;
  self->_cdmAllServicesWarmupContext = 0;

  cdmSingleServiceWarmupAttemptContext = self->_cdmSingleServiceWarmupAttemptContext;
  self->_cdmSingleServiceWarmupAttemptContext = 0;

  cdmSingleServiceWarmupAttemptFailed = self->_cdmSingleServiceWarmupAttemptFailed;
  self->_cdmSingleServiceWarmupAttemptFailed = 0;

  cdmAssetsReported = self->_cdmAssetsReported;
  self->_cdmAssetsReported = 0;

  ssuUserRequestContext = self->_ssuUserRequestContext;
  self->_ssuUserRequestContext = 0;

  ssuBackgroundRequestContext = self->_ssuBackgroundRequestContext;
  self->_ssuBackgroundRequestContext = 0;

  cdmServiceHandleMetricsReported = self->_cdmServiceHandleMetricsReported;
  self->_cdmServiceHandleMetricsReported = 0;

  cdmServiceSetupMetricsReported = self->_cdmServiceSetupMetricsReported;
  self->_cdmServiceSetupMetricsReported = 0;

  milAssetAcquisitionContext = self->_milAssetAcquisitionContext;
  self->_milAssetAcquisitionContext = 0;

  cdmSetupLink = self->_cdmSetupLink;
  self->_cdmSetupLink = 0;

  v45 = 111;
  if (!v4)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  cdmContextUpdateEnded = self->_cdmContextUpdateEnded;
  self->_cdmContextUpdateEnded = v4;
}

- (void)deleteCdmTokenizationEnded
{
  if (self->_whichEvent_Type == 110)
  {
    self->_whichEvent_Type = 0;
    self->_cdmTokenizationEnded = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setCdmTokenizationEnded:(id)a3
{
  v4 = a3;
  cdmServiceContext = self->_cdmServiceContext;
  self->_cdmServiceContext = 0;

  cdmRequestContext = self->_cdmRequestContext;
  self->_cdmRequestContext = 0;

  nlxDeviceFixedContext = self->_nlxDeviceFixedContext;
  self->_nlxDeviceFixedContext = 0;

  cdmMatchingSpanEnded = self->_cdmMatchingSpanEnded;
  self->_cdmMatchingSpanEnded = 0;

  cdmUsoGraphTier1 = self->_cdmUsoGraphTier1;
  self->_cdmUsoGraphTier1 = 0;

  cdmMatchingSpanTier1 = self->_cdmMatchingSpanTier1;
  self->_cdmMatchingSpanTier1 = 0;

  nlxLegacyNLContextTier1 = self->_nlxLegacyNLContextTier1;
  self->_nlxLegacyNLContextTier1 = 0;

  cdmDelegatedUserDialogActTier1 = self->_cdmDelegatedUserDialogActTier1;
  self->_cdmDelegatedUserDialogActTier1 = 0;

  cdmSystemDialogActTier1 = self->_cdmSystemDialogActTier1;
  self->_cdmSystemDialogActTier1 = 0;

  cdmContextUpdateEnded = self->_cdmContextUpdateEnded;
  self->_cdmContextUpdateEnded = 0;

  marrsRepetitionDetectionContext = self->_marrsRepetitionDetectionContext;
  self->_marrsRepetitionDetectionContext = 0;

  marrsQueryRewriteContext = self->_marrsQueryRewriteContext;
  self->_marrsQueryRewriteContext = 0;

  marrsQueryRewriteEvaluatedTier1 = self->_marrsQueryRewriteEvaluatedTier1;
  self->_marrsQueryRewriteEvaluatedTier1 = 0;

  cdmMatchingSpanEndedTier1 = self->_cdmMatchingSpanEndedTier1;
  self->_cdmMatchingSpanEndedTier1 = 0;

  nlxCurareContext = self->_nlxCurareContext;
  self->_nlxCurareContext = 0;

  marrsMentionDetectorEnded = self->_marrsMentionDetectorEnded;
  self->_marrsMentionDetectorEnded = 0;

  marrsMentionDetectorEndedTier1 = self->_marrsMentionDetectorEndedTier1;
  self->_marrsMentionDetectorEndedTier1 = 0;

  marrsMentionResolverEnded = self->_marrsMentionResolverEnded;
  self->_marrsMentionResolverEnded = 0;

  marrsMentionResolverEndedTier1 = self->_marrsMentionResolverEndedTier1;
  self->_marrsMentionResolverEndedTier1 = 0;

  cdmClientSetupContext = self->_cdmClientSetupContext;
  self->_cdmClientSetupContext = 0;

  cdmAllServicesSetupContext = self->_cdmAllServicesSetupContext;
  self->_cdmAllServicesSetupContext = 0;

  cdmSingleServiceSetupAttemptContext = self->_cdmSingleServiceSetupAttemptContext;
  self->_cdmSingleServiceSetupAttemptContext = 0;

  cdmSingleServiceSetupAttemptFailed = self->_cdmSingleServiceSetupAttemptFailed;
  self->_cdmSingleServiceSetupAttemptFailed = 0;

  cdmSpanMatcherContext = self->_cdmSpanMatcherContext;
  self->_cdmSpanMatcherContext = 0;

  marrsContextualSpanMatcherEnded = self->_marrsContextualSpanMatcherEnded;
  self->_marrsContextualSpanMatcherEnded = 0;

  marrsContextualSpanMatcherEndedTier1 = self->_marrsContextualSpanMatcherEndedTier1;
  self->_marrsContextualSpanMatcherEndedTier1 = 0;

  cdmXpcEventProcessingContext = self->_cdmXpcEventProcessingContext;
  self->_cdmXpcEventProcessingContext = 0;

  cdmAssetSetupContext = self->_cdmAssetSetupContext;
  self->_cdmAssetSetupContext = 0;

  cdmSetupMissingAssetsDetected = self->_cdmSetupMissingAssetsDetected;
  self->_cdmSetupMissingAssetsDetected = 0;

  cdmClientWarmupContext = self->_cdmClientWarmupContext;
  self->_cdmClientWarmupContext = 0;

  cdmAllServicesWarmupContext = self->_cdmAllServicesWarmupContext;
  self->_cdmAllServicesWarmupContext = 0;

  cdmSingleServiceWarmupAttemptContext = self->_cdmSingleServiceWarmupAttemptContext;
  self->_cdmSingleServiceWarmupAttemptContext = 0;

  cdmSingleServiceWarmupAttemptFailed = self->_cdmSingleServiceWarmupAttemptFailed;
  self->_cdmSingleServiceWarmupAttemptFailed = 0;

  cdmAssetsReported = self->_cdmAssetsReported;
  self->_cdmAssetsReported = 0;

  ssuUserRequestContext = self->_ssuUserRequestContext;
  self->_ssuUserRequestContext = 0;

  ssuBackgroundRequestContext = self->_ssuBackgroundRequestContext;
  self->_ssuBackgroundRequestContext = 0;

  cdmServiceHandleMetricsReported = self->_cdmServiceHandleMetricsReported;
  self->_cdmServiceHandleMetricsReported = 0;

  cdmServiceSetupMetricsReported = self->_cdmServiceSetupMetricsReported;
  self->_cdmServiceSetupMetricsReported = 0;

  milAssetAcquisitionContext = self->_milAssetAcquisitionContext;
  self->_milAssetAcquisitionContext = 0;

  cdmSetupLink = self->_cdmSetupLink;
  self->_cdmSetupLink = 0;

  v45 = 110;
  if (!v4)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  cdmTokenizationEnded = self->_cdmTokenizationEnded;
  self->_cdmTokenizationEnded = v4;
}

- (void)deleteCdmSystemDialogActTier1
{
  if (self->_whichEvent_Type == 109)
  {
    self->_whichEvent_Type = 0;
    self->_cdmSystemDialogActTier1 = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setCdmSystemDialogActTier1:(id)a3
{
  v4 = a3;
  cdmServiceContext = self->_cdmServiceContext;
  self->_cdmServiceContext = 0;

  cdmRequestContext = self->_cdmRequestContext;
  self->_cdmRequestContext = 0;

  nlxDeviceFixedContext = self->_nlxDeviceFixedContext;
  self->_nlxDeviceFixedContext = 0;

  cdmMatchingSpanEnded = self->_cdmMatchingSpanEnded;
  self->_cdmMatchingSpanEnded = 0;

  cdmUsoGraphTier1 = self->_cdmUsoGraphTier1;
  self->_cdmUsoGraphTier1 = 0;

  cdmMatchingSpanTier1 = self->_cdmMatchingSpanTier1;
  self->_cdmMatchingSpanTier1 = 0;

  nlxLegacyNLContextTier1 = self->_nlxLegacyNLContextTier1;
  self->_nlxLegacyNLContextTier1 = 0;

  cdmDelegatedUserDialogActTier1 = self->_cdmDelegatedUserDialogActTier1;
  self->_cdmDelegatedUserDialogActTier1 = 0;

  cdmTokenizationEnded = self->_cdmTokenizationEnded;
  self->_cdmTokenizationEnded = 0;

  cdmContextUpdateEnded = self->_cdmContextUpdateEnded;
  self->_cdmContextUpdateEnded = 0;

  marrsRepetitionDetectionContext = self->_marrsRepetitionDetectionContext;
  self->_marrsRepetitionDetectionContext = 0;

  marrsQueryRewriteContext = self->_marrsQueryRewriteContext;
  self->_marrsQueryRewriteContext = 0;

  marrsQueryRewriteEvaluatedTier1 = self->_marrsQueryRewriteEvaluatedTier1;
  self->_marrsQueryRewriteEvaluatedTier1 = 0;

  cdmMatchingSpanEndedTier1 = self->_cdmMatchingSpanEndedTier1;
  self->_cdmMatchingSpanEndedTier1 = 0;

  nlxCurareContext = self->_nlxCurareContext;
  self->_nlxCurareContext = 0;

  marrsMentionDetectorEnded = self->_marrsMentionDetectorEnded;
  self->_marrsMentionDetectorEnded = 0;

  marrsMentionDetectorEndedTier1 = self->_marrsMentionDetectorEndedTier1;
  self->_marrsMentionDetectorEndedTier1 = 0;

  marrsMentionResolverEnded = self->_marrsMentionResolverEnded;
  self->_marrsMentionResolverEnded = 0;

  marrsMentionResolverEndedTier1 = self->_marrsMentionResolverEndedTier1;
  self->_marrsMentionResolverEndedTier1 = 0;

  cdmClientSetupContext = self->_cdmClientSetupContext;
  self->_cdmClientSetupContext = 0;

  cdmAllServicesSetupContext = self->_cdmAllServicesSetupContext;
  self->_cdmAllServicesSetupContext = 0;

  cdmSingleServiceSetupAttemptContext = self->_cdmSingleServiceSetupAttemptContext;
  self->_cdmSingleServiceSetupAttemptContext = 0;

  cdmSingleServiceSetupAttemptFailed = self->_cdmSingleServiceSetupAttemptFailed;
  self->_cdmSingleServiceSetupAttemptFailed = 0;

  cdmSpanMatcherContext = self->_cdmSpanMatcherContext;
  self->_cdmSpanMatcherContext = 0;

  marrsContextualSpanMatcherEnded = self->_marrsContextualSpanMatcherEnded;
  self->_marrsContextualSpanMatcherEnded = 0;

  marrsContextualSpanMatcherEndedTier1 = self->_marrsContextualSpanMatcherEndedTier1;
  self->_marrsContextualSpanMatcherEndedTier1 = 0;

  cdmXpcEventProcessingContext = self->_cdmXpcEventProcessingContext;
  self->_cdmXpcEventProcessingContext = 0;

  cdmAssetSetupContext = self->_cdmAssetSetupContext;
  self->_cdmAssetSetupContext = 0;

  cdmSetupMissingAssetsDetected = self->_cdmSetupMissingAssetsDetected;
  self->_cdmSetupMissingAssetsDetected = 0;

  cdmClientWarmupContext = self->_cdmClientWarmupContext;
  self->_cdmClientWarmupContext = 0;

  cdmAllServicesWarmupContext = self->_cdmAllServicesWarmupContext;
  self->_cdmAllServicesWarmupContext = 0;

  cdmSingleServiceWarmupAttemptContext = self->_cdmSingleServiceWarmupAttemptContext;
  self->_cdmSingleServiceWarmupAttemptContext = 0;

  cdmSingleServiceWarmupAttemptFailed = self->_cdmSingleServiceWarmupAttemptFailed;
  self->_cdmSingleServiceWarmupAttemptFailed = 0;

  cdmAssetsReported = self->_cdmAssetsReported;
  self->_cdmAssetsReported = 0;

  ssuUserRequestContext = self->_ssuUserRequestContext;
  self->_ssuUserRequestContext = 0;

  ssuBackgroundRequestContext = self->_ssuBackgroundRequestContext;
  self->_ssuBackgroundRequestContext = 0;

  cdmServiceHandleMetricsReported = self->_cdmServiceHandleMetricsReported;
  self->_cdmServiceHandleMetricsReported = 0;

  cdmServiceSetupMetricsReported = self->_cdmServiceSetupMetricsReported;
  self->_cdmServiceSetupMetricsReported = 0;

  milAssetAcquisitionContext = self->_milAssetAcquisitionContext;
  self->_milAssetAcquisitionContext = 0;

  cdmSetupLink = self->_cdmSetupLink;
  self->_cdmSetupLink = 0;

  v45 = 109;
  if (!v4)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  cdmSystemDialogActTier1 = self->_cdmSystemDialogActTier1;
  self->_cdmSystemDialogActTier1 = v4;
}

- (void)deleteCdmDelegatedUserDialogActTier1
{
  if (self->_whichEvent_Type == 108)
  {
    self->_whichEvent_Type = 0;
    self->_cdmDelegatedUserDialogActTier1 = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setCdmDelegatedUserDialogActTier1:(id)a3
{
  v4 = a3;
  cdmServiceContext = self->_cdmServiceContext;
  self->_cdmServiceContext = 0;

  cdmRequestContext = self->_cdmRequestContext;
  self->_cdmRequestContext = 0;

  nlxDeviceFixedContext = self->_nlxDeviceFixedContext;
  self->_nlxDeviceFixedContext = 0;

  cdmMatchingSpanEnded = self->_cdmMatchingSpanEnded;
  self->_cdmMatchingSpanEnded = 0;

  cdmUsoGraphTier1 = self->_cdmUsoGraphTier1;
  self->_cdmUsoGraphTier1 = 0;

  cdmMatchingSpanTier1 = self->_cdmMatchingSpanTier1;
  self->_cdmMatchingSpanTier1 = 0;

  nlxLegacyNLContextTier1 = self->_nlxLegacyNLContextTier1;
  self->_nlxLegacyNLContextTier1 = 0;

  cdmSystemDialogActTier1 = self->_cdmSystemDialogActTier1;
  self->_cdmSystemDialogActTier1 = 0;

  cdmTokenizationEnded = self->_cdmTokenizationEnded;
  self->_cdmTokenizationEnded = 0;

  cdmContextUpdateEnded = self->_cdmContextUpdateEnded;
  self->_cdmContextUpdateEnded = 0;

  marrsRepetitionDetectionContext = self->_marrsRepetitionDetectionContext;
  self->_marrsRepetitionDetectionContext = 0;

  marrsQueryRewriteContext = self->_marrsQueryRewriteContext;
  self->_marrsQueryRewriteContext = 0;

  marrsQueryRewriteEvaluatedTier1 = self->_marrsQueryRewriteEvaluatedTier1;
  self->_marrsQueryRewriteEvaluatedTier1 = 0;

  cdmMatchingSpanEndedTier1 = self->_cdmMatchingSpanEndedTier1;
  self->_cdmMatchingSpanEndedTier1 = 0;

  nlxCurareContext = self->_nlxCurareContext;
  self->_nlxCurareContext = 0;

  marrsMentionDetectorEnded = self->_marrsMentionDetectorEnded;
  self->_marrsMentionDetectorEnded = 0;

  marrsMentionDetectorEndedTier1 = self->_marrsMentionDetectorEndedTier1;
  self->_marrsMentionDetectorEndedTier1 = 0;

  marrsMentionResolverEnded = self->_marrsMentionResolverEnded;
  self->_marrsMentionResolverEnded = 0;

  marrsMentionResolverEndedTier1 = self->_marrsMentionResolverEndedTier1;
  self->_marrsMentionResolverEndedTier1 = 0;

  cdmClientSetupContext = self->_cdmClientSetupContext;
  self->_cdmClientSetupContext = 0;

  cdmAllServicesSetupContext = self->_cdmAllServicesSetupContext;
  self->_cdmAllServicesSetupContext = 0;

  cdmSingleServiceSetupAttemptContext = self->_cdmSingleServiceSetupAttemptContext;
  self->_cdmSingleServiceSetupAttemptContext = 0;

  cdmSingleServiceSetupAttemptFailed = self->_cdmSingleServiceSetupAttemptFailed;
  self->_cdmSingleServiceSetupAttemptFailed = 0;

  cdmSpanMatcherContext = self->_cdmSpanMatcherContext;
  self->_cdmSpanMatcherContext = 0;

  marrsContextualSpanMatcherEnded = self->_marrsContextualSpanMatcherEnded;
  self->_marrsContextualSpanMatcherEnded = 0;

  marrsContextualSpanMatcherEndedTier1 = self->_marrsContextualSpanMatcherEndedTier1;
  self->_marrsContextualSpanMatcherEndedTier1 = 0;

  cdmXpcEventProcessingContext = self->_cdmXpcEventProcessingContext;
  self->_cdmXpcEventProcessingContext = 0;

  cdmAssetSetupContext = self->_cdmAssetSetupContext;
  self->_cdmAssetSetupContext = 0;

  cdmSetupMissingAssetsDetected = self->_cdmSetupMissingAssetsDetected;
  self->_cdmSetupMissingAssetsDetected = 0;

  cdmClientWarmupContext = self->_cdmClientWarmupContext;
  self->_cdmClientWarmupContext = 0;

  cdmAllServicesWarmupContext = self->_cdmAllServicesWarmupContext;
  self->_cdmAllServicesWarmupContext = 0;

  cdmSingleServiceWarmupAttemptContext = self->_cdmSingleServiceWarmupAttemptContext;
  self->_cdmSingleServiceWarmupAttemptContext = 0;

  cdmSingleServiceWarmupAttemptFailed = self->_cdmSingleServiceWarmupAttemptFailed;
  self->_cdmSingleServiceWarmupAttemptFailed = 0;

  cdmAssetsReported = self->_cdmAssetsReported;
  self->_cdmAssetsReported = 0;

  ssuUserRequestContext = self->_ssuUserRequestContext;
  self->_ssuUserRequestContext = 0;

  ssuBackgroundRequestContext = self->_ssuBackgroundRequestContext;
  self->_ssuBackgroundRequestContext = 0;

  cdmServiceHandleMetricsReported = self->_cdmServiceHandleMetricsReported;
  self->_cdmServiceHandleMetricsReported = 0;

  cdmServiceSetupMetricsReported = self->_cdmServiceSetupMetricsReported;
  self->_cdmServiceSetupMetricsReported = 0;

  milAssetAcquisitionContext = self->_milAssetAcquisitionContext;
  self->_milAssetAcquisitionContext = 0;

  cdmSetupLink = self->_cdmSetupLink;
  self->_cdmSetupLink = 0;

  v45 = 108;
  if (!v4)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  cdmDelegatedUserDialogActTier1 = self->_cdmDelegatedUserDialogActTier1;
  self->_cdmDelegatedUserDialogActTier1 = v4;
}

- (void)deleteNlxLegacyNLContextTier1
{
  if (self->_whichEvent_Type == 107)
  {
    self->_whichEvent_Type = 0;
    self->_nlxLegacyNLContextTier1 = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setNlxLegacyNLContextTier1:(id)a3
{
  v4 = a3;
  cdmServiceContext = self->_cdmServiceContext;
  self->_cdmServiceContext = 0;

  cdmRequestContext = self->_cdmRequestContext;
  self->_cdmRequestContext = 0;

  nlxDeviceFixedContext = self->_nlxDeviceFixedContext;
  self->_nlxDeviceFixedContext = 0;

  cdmMatchingSpanEnded = self->_cdmMatchingSpanEnded;
  self->_cdmMatchingSpanEnded = 0;

  cdmUsoGraphTier1 = self->_cdmUsoGraphTier1;
  self->_cdmUsoGraphTier1 = 0;

  cdmMatchingSpanTier1 = self->_cdmMatchingSpanTier1;
  self->_cdmMatchingSpanTier1 = 0;

  cdmDelegatedUserDialogActTier1 = self->_cdmDelegatedUserDialogActTier1;
  self->_cdmDelegatedUserDialogActTier1 = 0;

  cdmSystemDialogActTier1 = self->_cdmSystemDialogActTier1;
  self->_cdmSystemDialogActTier1 = 0;

  cdmTokenizationEnded = self->_cdmTokenizationEnded;
  self->_cdmTokenizationEnded = 0;

  cdmContextUpdateEnded = self->_cdmContextUpdateEnded;
  self->_cdmContextUpdateEnded = 0;

  marrsRepetitionDetectionContext = self->_marrsRepetitionDetectionContext;
  self->_marrsRepetitionDetectionContext = 0;

  marrsQueryRewriteContext = self->_marrsQueryRewriteContext;
  self->_marrsQueryRewriteContext = 0;

  marrsQueryRewriteEvaluatedTier1 = self->_marrsQueryRewriteEvaluatedTier1;
  self->_marrsQueryRewriteEvaluatedTier1 = 0;

  cdmMatchingSpanEndedTier1 = self->_cdmMatchingSpanEndedTier1;
  self->_cdmMatchingSpanEndedTier1 = 0;

  nlxCurareContext = self->_nlxCurareContext;
  self->_nlxCurareContext = 0;

  marrsMentionDetectorEnded = self->_marrsMentionDetectorEnded;
  self->_marrsMentionDetectorEnded = 0;

  marrsMentionDetectorEndedTier1 = self->_marrsMentionDetectorEndedTier1;
  self->_marrsMentionDetectorEndedTier1 = 0;

  marrsMentionResolverEnded = self->_marrsMentionResolverEnded;
  self->_marrsMentionResolverEnded = 0;

  marrsMentionResolverEndedTier1 = self->_marrsMentionResolverEndedTier1;
  self->_marrsMentionResolverEndedTier1 = 0;

  cdmClientSetupContext = self->_cdmClientSetupContext;
  self->_cdmClientSetupContext = 0;

  cdmAllServicesSetupContext = self->_cdmAllServicesSetupContext;
  self->_cdmAllServicesSetupContext = 0;

  cdmSingleServiceSetupAttemptContext = self->_cdmSingleServiceSetupAttemptContext;
  self->_cdmSingleServiceSetupAttemptContext = 0;

  cdmSingleServiceSetupAttemptFailed = self->_cdmSingleServiceSetupAttemptFailed;
  self->_cdmSingleServiceSetupAttemptFailed = 0;

  cdmSpanMatcherContext = self->_cdmSpanMatcherContext;
  self->_cdmSpanMatcherContext = 0;

  marrsContextualSpanMatcherEnded = self->_marrsContextualSpanMatcherEnded;
  self->_marrsContextualSpanMatcherEnded = 0;

  marrsContextualSpanMatcherEndedTier1 = self->_marrsContextualSpanMatcherEndedTier1;
  self->_marrsContextualSpanMatcherEndedTier1 = 0;

  cdmXpcEventProcessingContext = self->_cdmXpcEventProcessingContext;
  self->_cdmXpcEventProcessingContext = 0;

  cdmAssetSetupContext = self->_cdmAssetSetupContext;
  self->_cdmAssetSetupContext = 0;

  cdmSetupMissingAssetsDetected = self->_cdmSetupMissingAssetsDetected;
  self->_cdmSetupMissingAssetsDetected = 0;

  cdmClientWarmupContext = self->_cdmClientWarmupContext;
  self->_cdmClientWarmupContext = 0;

  cdmAllServicesWarmupContext = self->_cdmAllServicesWarmupContext;
  self->_cdmAllServicesWarmupContext = 0;

  cdmSingleServiceWarmupAttemptContext = self->_cdmSingleServiceWarmupAttemptContext;
  self->_cdmSingleServiceWarmupAttemptContext = 0;

  cdmSingleServiceWarmupAttemptFailed = self->_cdmSingleServiceWarmupAttemptFailed;
  self->_cdmSingleServiceWarmupAttemptFailed = 0;

  cdmAssetsReported = self->_cdmAssetsReported;
  self->_cdmAssetsReported = 0;

  ssuUserRequestContext = self->_ssuUserRequestContext;
  self->_ssuUserRequestContext = 0;

  ssuBackgroundRequestContext = self->_ssuBackgroundRequestContext;
  self->_ssuBackgroundRequestContext = 0;

  cdmServiceHandleMetricsReported = self->_cdmServiceHandleMetricsReported;
  self->_cdmServiceHandleMetricsReported = 0;

  cdmServiceSetupMetricsReported = self->_cdmServiceSetupMetricsReported;
  self->_cdmServiceSetupMetricsReported = 0;

  milAssetAcquisitionContext = self->_milAssetAcquisitionContext;
  self->_milAssetAcquisitionContext = 0;

  cdmSetupLink = self->_cdmSetupLink;
  self->_cdmSetupLink = 0;

  v45 = 107;
  if (!v4)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  nlxLegacyNLContextTier1 = self->_nlxLegacyNLContextTier1;
  self->_nlxLegacyNLContextTier1 = v4;
}

- (void)deleteCdmMatchingSpanTier1
{
  if (self->_whichEvent_Type == 106)
  {
    self->_whichEvent_Type = 0;
    self->_cdmMatchingSpanTier1 = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setCdmMatchingSpanTier1:(id)a3
{
  v4 = a3;
  cdmServiceContext = self->_cdmServiceContext;
  self->_cdmServiceContext = 0;

  cdmRequestContext = self->_cdmRequestContext;
  self->_cdmRequestContext = 0;

  nlxDeviceFixedContext = self->_nlxDeviceFixedContext;
  self->_nlxDeviceFixedContext = 0;

  cdmMatchingSpanEnded = self->_cdmMatchingSpanEnded;
  self->_cdmMatchingSpanEnded = 0;

  cdmUsoGraphTier1 = self->_cdmUsoGraphTier1;
  self->_cdmUsoGraphTier1 = 0;

  nlxLegacyNLContextTier1 = self->_nlxLegacyNLContextTier1;
  self->_nlxLegacyNLContextTier1 = 0;

  cdmDelegatedUserDialogActTier1 = self->_cdmDelegatedUserDialogActTier1;
  self->_cdmDelegatedUserDialogActTier1 = 0;

  cdmSystemDialogActTier1 = self->_cdmSystemDialogActTier1;
  self->_cdmSystemDialogActTier1 = 0;

  cdmTokenizationEnded = self->_cdmTokenizationEnded;
  self->_cdmTokenizationEnded = 0;

  cdmContextUpdateEnded = self->_cdmContextUpdateEnded;
  self->_cdmContextUpdateEnded = 0;

  marrsRepetitionDetectionContext = self->_marrsRepetitionDetectionContext;
  self->_marrsRepetitionDetectionContext = 0;

  marrsQueryRewriteContext = self->_marrsQueryRewriteContext;
  self->_marrsQueryRewriteContext = 0;

  marrsQueryRewriteEvaluatedTier1 = self->_marrsQueryRewriteEvaluatedTier1;
  self->_marrsQueryRewriteEvaluatedTier1 = 0;

  cdmMatchingSpanEndedTier1 = self->_cdmMatchingSpanEndedTier1;
  self->_cdmMatchingSpanEndedTier1 = 0;

  nlxCurareContext = self->_nlxCurareContext;
  self->_nlxCurareContext = 0;

  marrsMentionDetectorEnded = self->_marrsMentionDetectorEnded;
  self->_marrsMentionDetectorEnded = 0;

  marrsMentionDetectorEndedTier1 = self->_marrsMentionDetectorEndedTier1;
  self->_marrsMentionDetectorEndedTier1 = 0;

  marrsMentionResolverEnded = self->_marrsMentionResolverEnded;
  self->_marrsMentionResolverEnded = 0;

  marrsMentionResolverEndedTier1 = self->_marrsMentionResolverEndedTier1;
  self->_marrsMentionResolverEndedTier1 = 0;

  cdmClientSetupContext = self->_cdmClientSetupContext;
  self->_cdmClientSetupContext = 0;

  cdmAllServicesSetupContext = self->_cdmAllServicesSetupContext;
  self->_cdmAllServicesSetupContext = 0;

  cdmSingleServiceSetupAttemptContext = self->_cdmSingleServiceSetupAttemptContext;
  self->_cdmSingleServiceSetupAttemptContext = 0;

  cdmSingleServiceSetupAttemptFailed = self->_cdmSingleServiceSetupAttemptFailed;
  self->_cdmSingleServiceSetupAttemptFailed = 0;

  cdmSpanMatcherContext = self->_cdmSpanMatcherContext;
  self->_cdmSpanMatcherContext = 0;

  marrsContextualSpanMatcherEnded = self->_marrsContextualSpanMatcherEnded;
  self->_marrsContextualSpanMatcherEnded = 0;

  marrsContextualSpanMatcherEndedTier1 = self->_marrsContextualSpanMatcherEndedTier1;
  self->_marrsContextualSpanMatcherEndedTier1 = 0;

  cdmXpcEventProcessingContext = self->_cdmXpcEventProcessingContext;
  self->_cdmXpcEventProcessingContext = 0;

  cdmAssetSetupContext = self->_cdmAssetSetupContext;
  self->_cdmAssetSetupContext = 0;

  cdmSetupMissingAssetsDetected = self->_cdmSetupMissingAssetsDetected;
  self->_cdmSetupMissingAssetsDetected = 0;

  cdmClientWarmupContext = self->_cdmClientWarmupContext;
  self->_cdmClientWarmupContext = 0;

  cdmAllServicesWarmupContext = self->_cdmAllServicesWarmupContext;
  self->_cdmAllServicesWarmupContext = 0;

  cdmSingleServiceWarmupAttemptContext = self->_cdmSingleServiceWarmupAttemptContext;
  self->_cdmSingleServiceWarmupAttemptContext = 0;

  cdmSingleServiceWarmupAttemptFailed = self->_cdmSingleServiceWarmupAttemptFailed;
  self->_cdmSingleServiceWarmupAttemptFailed = 0;

  cdmAssetsReported = self->_cdmAssetsReported;
  self->_cdmAssetsReported = 0;

  ssuUserRequestContext = self->_ssuUserRequestContext;
  self->_ssuUserRequestContext = 0;

  ssuBackgroundRequestContext = self->_ssuBackgroundRequestContext;
  self->_ssuBackgroundRequestContext = 0;

  cdmServiceHandleMetricsReported = self->_cdmServiceHandleMetricsReported;
  self->_cdmServiceHandleMetricsReported = 0;

  cdmServiceSetupMetricsReported = self->_cdmServiceSetupMetricsReported;
  self->_cdmServiceSetupMetricsReported = 0;

  milAssetAcquisitionContext = self->_milAssetAcquisitionContext;
  self->_milAssetAcquisitionContext = 0;

  cdmSetupLink = self->_cdmSetupLink;
  self->_cdmSetupLink = 0;

  v45 = 106;
  if (!v4)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  cdmMatchingSpanTier1 = self->_cdmMatchingSpanTier1;
  self->_cdmMatchingSpanTier1 = v4;
}

- (void)deleteCdmUsoGraphTier1
{
  if (self->_whichEvent_Type == 105)
  {
    self->_whichEvent_Type = 0;
    self->_cdmUsoGraphTier1 = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setCdmUsoGraphTier1:(id)a3
{
  v4 = a3;
  cdmServiceContext = self->_cdmServiceContext;
  self->_cdmServiceContext = 0;

  cdmRequestContext = self->_cdmRequestContext;
  self->_cdmRequestContext = 0;

  nlxDeviceFixedContext = self->_nlxDeviceFixedContext;
  self->_nlxDeviceFixedContext = 0;

  cdmMatchingSpanEnded = self->_cdmMatchingSpanEnded;
  self->_cdmMatchingSpanEnded = 0;

  cdmMatchingSpanTier1 = self->_cdmMatchingSpanTier1;
  self->_cdmMatchingSpanTier1 = 0;

  nlxLegacyNLContextTier1 = self->_nlxLegacyNLContextTier1;
  self->_nlxLegacyNLContextTier1 = 0;

  cdmDelegatedUserDialogActTier1 = self->_cdmDelegatedUserDialogActTier1;
  self->_cdmDelegatedUserDialogActTier1 = 0;

  cdmSystemDialogActTier1 = self->_cdmSystemDialogActTier1;
  self->_cdmSystemDialogActTier1 = 0;

  cdmTokenizationEnded = self->_cdmTokenizationEnded;
  self->_cdmTokenizationEnded = 0;

  cdmContextUpdateEnded = self->_cdmContextUpdateEnded;
  self->_cdmContextUpdateEnded = 0;

  marrsRepetitionDetectionContext = self->_marrsRepetitionDetectionContext;
  self->_marrsRepetitionDetectionContext = 0;

  marrsQueryRewriteContext = self->_marrsQueryRewriteContext;
  self->_marrsQueryRewriteContext = 0;

  marrsQueryRewriteEvaluatedTier1 = self->_marrsQueryRewriteEvaluatedTier1;
  self->_marrsQueryRewriteEvaluatedTier1 = 0;

  cdmMatchingSpanEndedTier1 = self->_cdmMatchingSpanEndedTier1;
  self->_cdmMatchingSpanEndedTier1 = 0;

  nlxCurareContext = self->_nlxCurareContext;
  self->_nlxCurareContext = 0;

  marrsMentionDetectorEnded = self->_marrsMentionDetectorEnded;
  self->_marrsMentionDetectorEnded = 0;

  marrsMentionDetectorEndedTier1 = self->_marrsMentionDetectorEndedTier1;
  self->_marrsMentionDetectorEndedTier1 = 0;

  marrsMentionResolverEnded = self->_marrsMentionResolverEnded;
  self->_marrsMentionResolverEnded = 0;

  marrsMentionResolverEndedTier1 = self->_marrsMentionResolverEndedTier1;
  self->_marrsMentionResolverEndedTier1 = 0;

  cdmClientSetupContext = self->_cdmClientSetupContext;
  self->_cdmClientSetupContext = 0;

  cdmAllServicesSetupContext = self->_cdmAllServicesSetupContext;
  self->_cdmAllServicesSetupContext = 0;

  cdmSingleServiceSetupAttemptContext = self->_cdmSingleServiceSetupAttemptContext;
  self->_cdmSingleServiceSetupAttemptContext = 0;

  cdmSingleServiceSetupAttemptFailed = self->_cdmSingleServiceSetupAttemptFailed;
  self->_cdmSingleServiceSetupAttemptFailed = 0;

  cdmSpanMatcherContext = self->_cdmSpanMatcherContext;
  self->_cdmSpanMatcherContext = 0;

  marrsContextualSpanMatcherEnded = self->_marrsContextualSpanMatcherEnded;
  self->_marrsContextualSpanMatcherEnded = 0;

  marrsContextualSpanMatcherEndedTier1 = self->_marrsContextualSpanMatcherEndedTier1;
  self->_marrsContextualSpanMatcherEndedTier1 = 0;

  cdmXpcEventProcessingContext = self->_cdmXpcEventProcessingContext;
  self->_cdmXpcEventProcessingContext = 0;

  cdmAssetSetupContext = self->_cdmAssetSetupContext;
  self->_cdmAssetSetupContext = 0;

  cdmSetupMissingAssetsDetected = self->_cdmSetupMissingAssetsDetected;
  self->_cdmSetupMissingAssetsDetected = 0;

  cdmClientWarmupContext = self->_cdmClientWarmupContext;
  self->_cdmClientWarmupContext = 0;

  cdmAllServicesWarmupContext = self->_cdmAllServicesWarmupContext;
  self->_cdmAllServicesWarmupContext = 0;

  cdmSingleServiceWarmupAttemptContext = self->_cdmSingleServiceWarmupAttemptContext;
  self->_cdmSingleServiceWarmupAttemptContext = 0;

  cdmSingleServiceWarmupAttemptFailed = self->_cdmSingleServiceWarmupAttemptFailed;
  self->_cdmSingleServiceWarmupAttemptFailed = 0;

  cdmAssetsReported = self->_cdmAssetsReported;
  self->_cdmAssetsReported = 0;

  ssuUserRequestContext = self->_ssuUserRequestContext;
  self->_ssuUserRequestContext = 0;

  ssuBackgroundRequestContext = self->_ssuBackgroundRequestContext;
  self->_ssuBackgroundRequestContext = 0;

  cdmServiceHandleMetricsReported = self->_cdmServiceHandleMetricsReported;
  self->_cdmServiceHandleMetricsReported = 0;

  cdmServiceSetupMetricsReported = self->_cdmServiceSetupMetricsReported;
  self->_cdmServiceSetupMetricsReported = 0;

  milAssetAcquisitionContext = self->_milAssetAcquisitionContext;
  self->_milAssetAcquisitionContext = 0;

  cdmSetupLink = self->_cdmSetupLink;
  self->_cdmSetupLink = 0;

  v45 = 105;
  if (!v4)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  cdmUsoGraphTier1 = self->_cdmUsoGraphTier1;
  self->_cdmUsoGraphTier1 = v4;
}

- (void)deleteCdmMatchingSpanEnded
{
  if (self->_whichEvent_Type == 104)
  {
    self->_whichEvent_Type = 0;
    self->_cdmMatchingSpanEnded = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setCdmMatchingSpanEnded:(id)a3
{
  v4 = a3;
  cdmServiceContext = self->_cdmServiceContext;
  self->_cdmServiceContext = 0;

  cdmRequestContext = self->_cdmRequestContext;
  self->_cdmRequestContext = 0;

  nlxDeviceFixedContext = self->_nlxDeviceFixedContext;
  self->_nlxDeviceFixedContext = 0;

  cdmUsoGraphTier1 = self->_cdmUsoGraphTier1;
  self->_cdmUsoGraphTier1 = 0;

  cdmMatchingSpanTier1 = self->_cdmMatchingSpanTier1;
  self->_cdmMatchingSpanTier1 = 0;

  nlxLegacyNLContextTier1 = self->_nlxLegacyNLContextTier1;
  self->_nlxLegacyNLContextTier1 = 0;

  cdmDelegatedUserDialogActTier1 = self->_cdmDelegatedUserDialogActTier1;
  self->_cdmDelegatedUserDialogActTier1 = 0;

  cdmSystemDialogActTier1 = self->_cdmSystemDialogActTier1;
  self->_cdmSystemDialogActTier1 = 0;

  cdmTokenizationEnded = self->_cdmTokenizationEnded;
  self->_cdmTokenizationEnded = 0;

  cdmContextUpdateEnded = self->_cdmContextUpdateEnded;
  self->_cdmContextUpdateEnded = 0;

  marrsRepetitionDetectionContext = self->_marrsRepetitionDetectionContext;
  self->_marrsRepetitionDetectionContext = 0;

  marrsQueryRewriteContext = self->_marrsQueryRewriteContext;
  self->_marrsQueryRewriteContext = 0;

  marrsQueryRewriteEvaluatedTier1 = self->_marrsQueryRewriteEvaluatedTier1;
  self->_marrsQueryRewriteEvaluatedTier1 = 0;

  cdmMatchingSpanEndedTier1 = self->_cdmMatchingSpanEndedTier1;
  self->_cdmMatchingSpanEndedTier1 = 0;

  nlxCurareContext = self->_nlxCurareContext;
  self->_nlxCurareContext = 0;

  marrsMentionDetectorEnded = self->_marrsMentionDetectorEnded;
  self->_marrsMentionDetectorEnded = 0;

  marrsMentionDetectorEndedTier1 = self->_marrsMentionDetectorEndedTier1;
  self->_marrsMentionDetectorEndedTier1 = 0;

  marrsMentionResolverEnded = self->_marrsMentionResolverEnded;
  self->_marrsMentionResolverEnded = 0;

  marrsMentionResolverEndedTier1 = self->_marrsMentionResolverEndedTier1;
  self->_marrsMentionResolverEndedTier1 = 0;

  cdmClientSetupContext = self->_cdmClientSetupContext;
  self->_cdmClientSetupContext = 0;

  cdmAllServicesSetupContext = self->_cdmAllServicesSetupContext;
  self->_cdmAllServicesSetupContext = 0;

  cdmSingleServiceSetupAttemptContext = self->_cdmSingleServiceSetupAttemptContext;
  self->_cdmSingleServiceSetupAttemptContext = 0;

  cdmSingleServiceSetupAttemptFailed = self->_cdmSingleServiceSetupAttemptFailed;
  self->_cdmSingleServiceSetupAttemptFailed = 0;

  cdmSpanMatcherContext = self->_cdmSpanMatcherContext;
  self->_cdmSpanMatcherContext = 0;

  marrsContextualSpanMatcherEnded = self->_marrsContextualSpanMatcherEnded;
  self->_marrsContextualSpanMatcherEnded = 0;

  marrsContextualSpanMatcherEndedTier1 = self->_marrsContextualSpanMatcherEndedTier1;
  self->_marrsContextualSpanMatcherEndedTier1 = 0;

  cdmXpcEventProcessingContext = self->_cdmXpcEventProcessingContext;
  self->_cdmXpcEventProcessingContext = 0;

  cdmAssetSetupContext = self->_cdmAssetSetupContext;
  self->_cdmAssetSetupContext = 0;

  cdmSetupMissingAssetsDetected = self->_cdmSetupMissingAssetsDetected;
  self->_cdmSetupMissingAssetsDetected = 0;

  cdmClientWarmupContext = self->_cdmClientWarmupContext;
  self->_cdmClientWarmupContext = 0;

  cdmAllServicesWarmupContext = self->_cdmAllServicesWarmupContext;
  self->_cdmAllServicesWarmupContext = 0;

  cdmSingleServiceWarmupAttemptContext = self->_cdmSingleServiceWarmupAttemptContext;
  self->_cdmSingleServiceWarmupAttemptContext = 0;

  cdmSingleServiceWarmupAttemptFailed = self->_cdmSingleServiceWarmupAttemptFailed;
  self->_cdmSingleServiceWarmupAttemptFailed = 0;

  cdmAssetsReported = self->_cdmAssetsReported;
  self->_cdmAssetsReported = 0;

  ssuUserRequestContext = self->_ssuUserRequestContext;
  self->_ssuUserRequestContext = 0;

  ssuBackgroundRequestContext = self->_ssuBackgroundRequestContext;
  self->_ssuBackgroundRequestContext = 0;

  cdmServiceHandleMetricsReported = self->_cdmServiceHandleMetricsReported;
  self->_cdmServiceHandleMetricsReported = 0;

  cdmServiceSetupMetricsReported = self->_cdmServiceSetupMetricsReported;
  self->_cdmServiceSetupMetricsReported = 0;

  milAssetAcquisitionContext = self->_milAssetAcquisitionContext;
  self->_milAssetAcquisitionContext = 0;

  cdmSetupLink = self->_cdmSetupLink;
  self->_cdmSetupLink = 0;

  v45 = 104;
  if (!v4)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  cdmMatchingSpanEnded = self->_cdmMatchingSpanEnded;
  self->_cdmMatchingSpanEnded = v4;
}

- (void)deleteNlxDeviceFixedContext
{
  if (self->_whichEvent_Type == 103)
  {
    self->_whichEvent_Type = 0;
    self->_nlxDeviceFixedContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setNlxDeviceFixedContext:(id)a3
{
  v4 = a3;
  cdmServiceContext = self->_cdmServiceContext;
  self->_cdmServiceContext = 0;

  cdmRequestContext = self->_cdmRequestContext;
  self->_cdmRequestContext = 0;

  cdmMatchingSpanEnded = self->_cdmMatchingSpanEnded;
  self->_cdmMatchingSpanEnded = 0;

  cdmUsoGraphTier1 = self->_cdmUsoGraphTier1;
  self->_cdmUsoGraphTier1 = 0;

  cdmMatchingSpanTier1 = self->_cdmMatchingSpanTier1;
  self->_cdmMatchingSpanTier1 = 0;

  nlxLegacyNLContextTier1 = self->_nlxLegacyNLContextTier1;
  self->_nlxLegacyNLContextTier1 = 0;

  cdmDelegatedUserDialogActTier1 = self->_cdmDelegatedUserDialogActTier1;
  self->_cdmDelegatedUserDialogActTier1 = 0;

  cdmSystemDialogActTier1 = self->_cdmSystemDialogActTier1;
  self->_cdmSystemDialogActTier1 = 0;

  cdmTokenizationEnded = self->_cdmTokenizationEnded;
  self->_cdmTokenizationEnded = 0;

  cdmContextUpdateEnded = self->_cdmContextUpdateEnded;
  self->_cdmContextUpdateEnded = 0;

  marrsRepetitionDetectionContext = self->_marrsRepetitionDetectionContext;
  self->_marrsRepetitionDetectionContext = 0;

  marrsQueryRewriteContext = self->_marrsQueryRewriteContext;
  self->_marrsQueryRewriteContext = 0;

  marrsQueryRewriteEvaluatedTier1 = self->_marrsQueryRewriteEvaluatedTier1;
  self->_marrsQueryRewriteEvaluatedTier1 = 0;

  cdmMatchingSpanEndedTier1 = self->_cdmMatchingSpanEndedTier1;
  self->_cdmMatchingSpanEndedTier1 = 0;

  nlxCurareContext = self->_nlxCurareContext;
  self->_nlxCurareContext = 0;

  marrsMentionDetectorEnded = self->_marrsMentionDetectorEnded;
  self->_marrsMentionDetectorEnded = 0;

  marrsMentionDetectorEndedTier1 = self->_marrsMentionDetectorEndedTier1;
  self->_marrsMentionDetectorEndedTier1 = 0;

  marrsMentionResolverEnded = self->_marrsMentionResolverEnded;
  self->_marrsMentionResolverEnded = 0;

  marrsMentionResolverEndedTier1 = self->_marrsMentionResolverEndedTier1;
  self->_marrsMentionResolverEndedTier1 = 0;

  cdmClientSetupContext = self->_cdmClientSetupContext;
  self->_cdmClientSetupContext = 0;

  cdmAllServicesSetupContext = self->_cdmAllServicesSetupContext;
  self->_cdmAllServicesSetupContext = 0;

  cdmSingleServiceSetupAttemptContext = self->_cdmSingleServiceSetupAttemptContext;
  self->_cdmSingleServiceSetupAttemptContext = 0;

  cdmSingleServiceSetupAttemptFailed = self->_cdmSingleServiceSetupAttemptFailed;
  self->_cdmSingleServiceSetupAttemptFailed = 0;

  cdmSpanMatcherContext = self->_cdmSpanMatcherContext;
  self->_cdmSpanMatcherContext = 0;

  marrsContextualSpanMatcherEnded = self->_marrsContextualSpanMatcherEnded;
  self->_marrsContextualSpanMatcherEnded = 0;

  marrsContextualSpanMatcherEndedTier1 = self->_marrsContextualSpanMatcherEndedTier1;
  self->_marrsContextualSpanMatcherEndedTier1 = 0;

  cdmXpcEventProcessingContext = self->_cdmXpcEventProcessingContext;
  self->_cdmXpcEventProcessingContext = 0;

  cdmAssetSetupContext = self->_cdmAssetSetupContext;
  self->_cdmAssetSetupContext = 0;

  cdmSetupMissingAssetsDetected = self->_cdmSetupMissingAssetsDetected;
  self->_cdmSetupMissingAssetsDetected = 0;

  cdmClientWarmupContext = self->_cdmClientWarmupContext;
  self->_cdmClientWarmupContext = 0;

  cdmAllServicesWarmupContext = self->_cdmAllServicesWarmupContext;
  self->_cdmAllServicesWarmupContext = 0;

  cdmSingleServiceWarmupAttemptContext = self->_cdmSingleServiceWarmupAttemptContext;
  self->_cdmSingleServiceWarmupAttemptContext = 0;

  cdmSingleServiceWarmupAttemptFailed = self->_cdmSingleServiceWarmupAttemptFailed;
  self->_cdmSingleServiceWarmupAttemptFailed = 0;

  cdmAssetsReported = self->_cdmAssetsReported;
  self->_cdmAssetsReported = 0;

  ssuUserRequestContext = self->_ssuUserRequestContext;
  self->_ssuUserRequestContext = 0;

  ssuBackgroundRequestContext = self->_ssuBackgroundRequestContext;
  self->_ssuBackgroundRequestContext = 0;

  cdmServiceHandleMetricsReported = self->_cdmServiceHandleMetricsReported;
  self->_cdmServiceHandleMetricsReported = 0;

  cdmServiceSetupMetricsReported = self->_cdmServiceSetupMetricsReported;
  self->_cdmServiceSetupMetricsReported = 0;

  milAssetAcquisitionContext = self->_milAssetAcquisitionContext;
  self->_milAssetAcquisitionContext = 0;

  cdmSetupLink = self->_cdmSetupLink;
  self->_cdmSetupLink = 0;

  v45 = 103;
  if (!v4)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  nlxDeviceFixedContext = self->_nlxDeviceFixedContext;
  self->_nlxDeviceFixedContext = v4;
}

- (void)deleteCdmRequestContext
{
  if (self->_whichEvent_Type == 102)
  {
    self->_whichEvent_Type = 0;
    self->_cdmRequestContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setCdmRequestContext:(id)a3
{
  v4 = a3;
  cdmServiceContext = self->_cdmServiceContext;
  self->_cdmServiceContext = 0;

  nlxDeviceFixedContext = self->_nlxDeviceFixedContext;
  self->_nlxDeviceFixedContext = 0;

  cdmMatchingSpanEnded = self->_cdmMatchingSpanEnded;
  self->_cdmMatchingSpanEnded = 0;

  cdmUsoGraphTier1 = self->_cdmUsoGraphTier1;
  self->_cdmUsoGraphTier1 = 0;

  cdmMatchingSpanTier1 = self->_cdmMatchingSpanTier1;
  self->_cdmMatchingSpanTier1 = 0;

  nlxLegacyNLContextTier1 = self->_nlxLegacyNLContextTier1;
  self->_nlxLegacyNLContextTier1 = 0;

  cdmDelegatedUserDialogActTier1 = self->_cdmDelegatedUserDialogActTier1;
  self->_cdmDelegatedUserDialogActTier1 = 0;

  cdmSystemDialogActTier1 = self->_cdmSystemDialogActTier1;
  self->_cdmSystemDialogActTier1 = 0;

  cdmTokenizationEnded = self->_cdmTokenizationEnded;
  self->_cdmTokenizationEnded = 0;

  cdmContextUpdateEnded = self->_cdmContextUpdateEnded;
  self->_cdmContextUpdateEnded = 0;

  marrsRepetitionDetectionContext = self->_marrsRepetitionDetectionContext;
  self->_marrsRepetitionDetectionContext = 0;

  marrsQueryRewriteContext = self->_marrsQueryRewriteContext;
  self->_marrsQueryRewriteContext = 0;

  marrsQueryRewriteEvaluatedTier1 = self->_marrsQueryRewriteEvaluatedTier1;
  self->_marrsQueryRewriteEvaluatedTier1 = 0;

  cdmMatchingSpanEndedTier1 = self->_cdmMatchingSpanEndedTier1;
  self->_cdmMatchingSpanEndedTier1 = 0;

  nlxCurareContext = self->_nlxCurareContext;
  self->_nlxCurareContext = 0;

  marrsMentionDetectorEnded = self->_marrsMentionDetectorEnded;
  self->_marrsMentionDetectorEnded = 0;

  marrsMentionDetectorEndedTier1 = self->_marrsMentionDetectorEndedTier1;
  self->_marrsMentionDetectorEndedTier1 = 0;

  marrsMentionResolverEnded = self->_marrsMentionResolverEnded;
  self->_marrsMentionResolverEnded = 0;

  marrsMentionResolverEndedTier1 = self->_marrsMentionResolverEndedTier1;
  self->_marrsMentionResolverEndedTier1 = 0;

  cdmClientSetupContext = self->_cdmClientSetupContext;
  self->_cdmClientSetupContext = 0;

  cdmAllServicesSetupContext = self->_cdmAllServicesSetupContext;
  self->_cdmAllServicesSetupContext = 0;

  cdmSingleServiceSetupAttemptContext = self->_cdmSingleServiceSetupAttemptContext;
  self->_cdmSingleServiceSetupAttemptContext = 0;

  cdmSingleServiceSetupAttemptFailed = self->_cdmSingleServiceSetupAttemptFailed;
  self->_cdmSingleServiceSetupAttemptFailed = 0;

  cdmSpanMatcherContext = self->_cdmSpanMatcherContext;
  self->_cdmSpanMatcherContext = 0;

  marrsContextualSpanMatcherEnded = self->_marrsContextualSpanMatcherEnded;
  self->_marrsContextualSpanMatcherEnded = 0;

  marrsContextualSpanMatcherEndedTier1 = self->_marrsContextualSpanMatcherEndedTier1;
  self->_marrsContextualSpanMatcherEndedTier1 = 0;

  cdmXpcEventProcessingContext = self->_cdmXpcEventProcessingContext;
  self->_cdmXpcEventProcessingContext = 0;

  cdmAssetSetupContext = self->_cdmAssetSetupContext;
  self->_cdmAssetSetupContext = 0;

  cdmSetupMissingAssetsDetected = self->_cdmSetupMissingAssetsDetected;
  self->_cdmSetupMissingAssetsDetected = 0;

  cdmClientWarmupContext = self->_cdmClientWarmupContext;
  self->_cdmClientWarmupContext = 0;

  cdmAllServicesWarmupContext = self->_cdmAllServicesWarmupContext;
  self->_cdmAllServicesWarmupContext = 0;

  cdmSingleServiceWarmupAttemptContext = self->_cdmSingleServiceWarmupAttemptContext;
  self->_cdmSingleServiceWarmupAttemptContext = 0;

  cdmSingleServiceWarmupAttemptFailed = self->_cdmSingleServiceWarmupAttemptFailed;
  self->_cdmSingleServiceWarmupAttemptFailed = 0;

  cdmAssetsReported = self->_cdmAssetsReported;
  self->_cdmAssetsReported = 0;

  ssuUserRequestContext = self->_ssuUserRequestContext;
  self->_ssuUserRequestContext = 0;

  ssuBackgroundRequestContext = self->_ssuBackgroundRequestContext;
  self->_ssuBackgroundRequestContext = 0;

  cdmServiceHandleMetricsReported = self->_cdmServiceHandleMetricsReported;
  self->_cdmServiceHandleMetricsReported = 0;

  cdmServiceSetupMetricsReported = self->_cdmServiceSetupMetricsReported;
  self->_cdmServiceSetupMetricsReported = 0;

  milAssetAcquisitionContext = self->_milAssetAcquisitionContext;
  self->_milAssetAcquisitionContext = 0;

  cdmSetupLink = self->_cdmSetupLink;
  self->_cdmSetupLink = 0;

  v45 = 102;
  if (!v4)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  cdmRequestContext = self->_cdmRequestContext;
  self->_cdmRequestContext = v4;
}

- (void)deleteCdmServiceContext
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_cdmServiceContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setCdmServiceContext:(id)a3
{
  v4 = a3;
  cdmRequestContext = self->_cdmRequestContext;
  self->_cdmRequestContext = 0;

  nlxDeviceFixedContext = self->_nlxDeviceFixedContext;
  self->_nlxDeviceFixedContext = 0;

  cdmMatchingSpanEnded = self->_cdmMatchingSpanEnded;
  self->_cdmMatchingSpanEnded = 0;

  cdmUsoGraphTier1 = self->_cdmUsoGraphTier1;
  self->_cdmUsoGraphTier1 = 0;

  cdmMatchingSpanTier1 = self->_cdmMatchingSpanTier1;
  self->_cdmMatchingSpanTier1 = 0;

  nlxLegacyNLContextTier1 = self->_nlxLegacyNLContextTier1;
  self->_nlxLegacyNLContextTier1 = 0;

  cdmDelegatedUserDialogActTier1 = self->_cdmDelegatedUserDialogActTier1;
  self->_cdmDelegatedUserDialogActTier1 = 0;

  cdmSystemDialogActTier1 = self->_cdmSystemDialogActTier1;
  self->_cdmSystemDialogActTier1 = 0;

  cdmTokenizationEnded = self->_cdmTokenizationEnded;
  self->_cdmTokenizationEnded = 0;

  cdmContextUpdateEnded = self->_cdmContextUpdateEnded;
  self->_cdmContextUpdateEnded = 0;

  marrsRepetitionDetectionContext = self->_marrsRepetitionDetectionContext;
  self->_marrsRepetitionDetectionContext = 0;

  marrsQueryRewriteContext = self->_marrsQueryRewriteContext;
  self->_marrsQueryRewriteContext = 0;

  marrsQueryRewriteEvaluatedTier1 = self->_marrsQueryRewriteEvaluatedTier1;
  self->_marrsQueryRewriteEvaluatedTier1 = 0;

  cdmMatchingSpanEndedTier1 = self->_cdmMatchingSpanEndedTier1;
  self->_cdmMatchingSpanEndedTier1 = 0;

  nlxCurareContext = self->_nlxCurareContext;
  self->_nlxCurareContext = 0;

  marrsMentionDetectorEnded = self->_marrsMentionDetectorEnded;
  self->_marrsMentionDetectorEnded = 0;

  marrsMentionDetectorEndedTier1 = self->_marrsMentionDetectorEndedTier1;
  self->_marrsMentionDetectorEndedTier1 = 0;

  marrsMentionResolverEnded = self->_marrsMentionResolverEnded;
  self->_marrsMentionResolverEnded = 0;

  marrsMentionResolverEndedTier1 = self->_marrsMentionResolverEndedTier1;
  self->_marrsMentionResolverEndedTier1 = 0;

  cdmClientSetupContext = self->_cdmClientSetupContext;
  self->_cdmClientSetupContext = 0;

  cdmAllServicesSetupContext = self->_cdmAllServicesSetupContext;
  self->_cdmAllServicesSetupContext = 0;

  cdmSingleServiceSetupAttemptContext = self->_cdmSingleServiceSetupAttemptContext;
  self->_cdmSingleServiceSetupAttemptContext = 0;

  cdmSingleServiceSetupAttemptFailed = self->_cdmSingleServiceSetupAttemptFailed;
  self->_cdmSingleServiceSetupAttemptFailed = 0;

  cdmSpanMatcherContext = self->_cdmSpanMatcherContext;
  self->_cdmSpanMatcherContext = 0;

  marrsContextualSpanMatcherEnded = self->_marrsContextualSpanMatcherEnded;
  self->_marrsContextualSpanMatcherEnded = 0;

  marrsContextualSpanMatcherEndedTier1 = self->_marrsContextualSpanMatcherEndedTier1;
  self->_marrsContextualSpanMatcherEndedTier1 = 0;

  cdmXpcEventProcessingContext = self->_cdmXpcEventProcessingContext;
  self->_cdmXpcEventProcessingContext = 0;

  cdmAssetSetupContext = self->_cdmAssetSetupContext;
  self->_cdmAssetSetupContext = 0;

  cdmSetupMissingAssetsDetected = self->_cdmSetupMissingAssetsDetected;
  self->_cdmSetupMissingAssetsDetected = 0;

  cdmClientWarmupContext = self->_cdmClientWarmupContext;
  self->_cdmClientWarmupContext = 0;

  cdmAllServicesWarmupContext = self->_cdmAllServicesWarmupContext;
  self->_cdmAllServicesWarmupContext = 0;

  cdmSingleServiceWarmupAttemptContext = self->_cdmSingleServiceWarmupAttemptContext;
  self->_cdmSingleServiceWarmupAttemptContext = 0;

  cdmSingleServiceWarmupAttemptFailed = self->_cdmSingleServiceWarmupAttemptFailed;
  self->_cdmSingleServiceWarmupAttemptFailed = 0;

  cdmAssetsReported = self->_cdmAssetsReported;
  self->_cdmAssetsReported = 0;

  ssuUserRequestContext = self->_ssuUserRequestContext;
  self->_ssuUserRequestContext = 0;

  ssuBackgroundRequestContext = self->_ssuBackgroundRequestContext;
  self->_ssuBackgroundRequestContext = 0;

  cdmServiceHandleMetricsReported = self->_cdmServiceHandleMetricsReported;
  self->_cdmServiceHandleMetricsReported = 0;

  cdmServiceSetupMetricsReported = self->_cdmServiceSetupMetricsReported;
  self->_cdmServiceSetupMetricsReported = 0;

  milAssetAcquisitionContext = self->_milAssetAcquisitionContext;
  self->_milAssetAcquisitionContext = 0;

  cdmSetupLink = self->_cdmSetupLink;
  self->_cdmSetupLink = 0;

  v45 = 101;
  if (!v4)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  cdmServiceContext = self->_cdmServiceContext;
  self->_cdmServiceContext = v4;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v134.receiver = self;
  v134.super_class = NLXSchemaNLXClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v134 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:2])
  {
    [(NLXSchemaNLXClientEvent *)self deleteCdmUsoGraphTier1];
    [(NLXSchemaNLXClientEvent *)self deleteCdmMatchingSpanTier1];
    [(NLXSchemaNLXClientEvent *)self deleteNlxLegacyNLContextTier1];
    [(NLXSchemaNLXClientEvent *)self deleteCdmDelegatedUserDialogActTier1];
    [(NLXSchemaNLXClientEvent *)self deleteCdmSystemDialogActTier1];
    [(NLXSchemaNLXClientEvent *)self deleteCdmTokenizationEnded];
    [(NLXSchemaNLXClientEvent *)self deleteMarrsQueryRewriteEvaluatedTier1];
    [(NLXSchemaNLXClientEvent *)self deleteCdmMatchingSpanEndedTier1];
    [(NLXSchemaNLXClientEvent *)self deleteMarrsMentionDetectorEndedTier1];
    [(NLXSchemaNLXClientEvent *)self deleteMarrsMentionResolverEndedTier1];
    [(NLXSchemaNLXClientEvent *)self deleteMarrsContextualSpanMatcherEndedTier1];
  }

  if ([v4 isConditionSet:4])
  {
    [(NLXSchemaNLXClientEvent *)self deleteCdmUsoGraphTier1];
    [(NLXSchemaNLXClientEvent *)self deleteCdmMatchingSpanTier1];
    [(NLXSchemaNLXClientEvent *)self deleteNlxLegacyNLContextTier1];
    [(NLXSchemaNLXClientEvent *)self deleteCdmDelegatedUserDialogActTier1];
    [(NLXSchemaNLXClientEvent *)self deleteCdmSystemDialogActTier1];
    [(NLXSchemaNLXClientEvent *)self deleteCdmTokenizationEnded];
    [(NLXSchemaNLXClientEvent *)self deleteMarrsQueryRewriteEvaluatedTier1];
    [(NLXSchemaNLXClientEvent *)self deleteCdmMatchingSpanEndedTier1];
    [(NLXSchemaNLXClientEvent *)self deleteMarrsMentionDetectorEndedTier1];
    [(NLXSchemaNLXClientEvent *)self deleteMarrsMentionResolverEndedTier1];
    [(NLXSchemaNLXClientEvent *)self deleteMarrsContextualSpanMatcherEndedTier1];
  }

  if ([v4 isConditionSet:5])
  {
    [(NLXSchemaNLXClientEvent *)self deleteCdmUsoGraphTier1];
    [(NLXSchemaNLXClientEvent *)self deleteCdmMatchingSpanTier1];
    [(NLXSchemaNLXClientEvent *)self deleteNlxLegacyNLContextTier1];
    [(NLXSchemaNLXClientEvent *)self deleteCdmDelegatedUserDialogActTier1];
    [(NLXSchemaNLXClientEvent *)self deleteCdmSystemDialogActTier1];
    [(NLXSchemaNLXClientEvent *)self deleteCdmTokenizationEnded];
    [(NLXSchemaNLXClientEvent *)self deleteMarrsQueryRewriteEvaluatedTier1];
    [(NLXSchemaNLXClientEvent *)self deleteCdmMatchingSpanEndedTier1];
    [(NLXSchemaNLXClientEvent *)self deleteMarrsMentionDetectorEndedTier1];
    [(NLXSchemaNLXClientEvent *)self deleteMarrsMentionResolverEndedTier1];
    [(NLXSchemaNLXClientEvent *)self deleteMarrsContextualSpanMatcherEndedTier1];
  }

  if ([v4 isConditionSet:6])
  {
    [(NLXSchemaNLXClientEvent *)self deleteCdmUsoGraphTier1];
    [(NLXSchemaNLXClientEvent *)self deleteCdmMatchingSpanTier1];
    [(NLXSchemaNLXClientEvent *)self deleteNlxLegacyNLContextTier1];
    [(NLXSchemaNLXClientEvent *)self deleteCdmDelegatedUserDialogActTier1];
    [(NLXSchemaNLXClientEvent *)self deleteCdmSystemDialogActTier1];
    [(NLXSchemaNLXClientEvent *)self deleteCdmTokenizationEnded];
    [(NLXSchemaNLXClientEvent *)self deleteMarrsQueryRewriteEvaluatedTier1];
    [(NLXSchemaNLXClientEvent *)self deleteCdmMatchingSpanEndedTier1];
    [(NLXSchemaNLXClientEvent *)self deleteMarrsMentionDetectorEndedTier1];
    [(NLXSchemaNLXClientEvent *)self deleteMarrsMentionResolverEndedTier1];
    [(NLXSchemaNLXClientEvent *)self deleteMarrsContextualSpanMatcherEndedTier1];
  }

  if ([v4 isConditionSet:7])
  {
    [(NLXSchemaNLXClientEvent *)self deleteCdmUsoGraphTier1];
    [(NLXSchemaNLXClientEvent *)self deleteCdmMatchingSpanTier1];
    [(NLXSchemaNLXClientEvent *)self deleteNlxLegacyNLContextTier1];
    [(NLXSchemaNLXClientEvent *)self deleteCdmDelegatedUserDialogActTier1];
    [(NLXSchemaNLXClientEvent *)self deleteCdmSystemDialogActTier1];
    [(NLXSchemaNLXClientEvent *)self deleteCdmTokenizationEnded];
    [(NLXSchemaNLXClientEvent *)self deleteMarrsQueryRewriteEvaluatedTier1];
    [(NLXSchemaNLXClientEvent *)self deleteCdmMatchingSpanEndedTier1];
    [(NLXSchemaNLXClientEvent *)self deleteMarrsMentionDetectorEndedTier1];
    [(NLXSchemaNLXClientEvent *)self deleteMarrsMentionResolverEndedTier1];
    [(NLXSchemaNLXClientEvent *)self deleteMarrsContextualSpanMatcherEndedTier1];
  }

  v6 = [(NLXSchemaNLXClientEvent *)self eventMetadata];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(NLXSchemaNLXClientEvent *)self deleteEventMetadata];
  }

  v9 = [(NLXSchemaNLXClientEvent *)self cdmServiceContext];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(NLXSchemaNLXClientEvent *)self deleteCdmServiceContext];
  }

  v12 = [(NLXSchemaNLXClientEvent *)self cdmRequestContext];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(NLXSchemaNLXClientEvent *)self deleteCdmRequestContext];
  }

  v15 = [(NLXSchemaNLXClientEvent *)self nlxDeviceFixedContext];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(NLXSchemaNLXClientEvent *)self deleteNlxDeviceFixedContext];
  }

  v18 = [(NLXSchemaNLXClientEvent *)self cdmMatchingSpanEnded];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(NLXSchemaNLXClientEvent *)self deleteCdmMatchingSpanEnded];
  }

  v21 = [(NLXSchemaNLXClientEvent *)self cdmUsoGraphTier1];
  v22 = [v21 applySensitiveConditionsPolicy:v4];
  v23 = [v22 suppressMessage];

  if (v23)
  {
    [(NLXSchemaNLXClientEvent *)self deleteCdmUsoGraphTier1];
  }

  v24 = [(NLXSchemaNLXClientEvent *)self cdmMatchingSpanTier1];
  v25 = [v24 applySensitiveConditionsPolicy:v4];
  v26 = [v25 suppressMessage];

  if (v26)
  {
    [(NLXSchemaNLXClientEvent *)self deleteCdmMatchingSpanTier1];
  }

  v27 = [(NLXSchemaNLXClientEvent *)self nlxLegacyNLContextTier1];
  v28 = [v27 applySensitiveConditionsPolicy:v4];
  v29 = [v28 suppressMessage];

  if (v29)
  {
    [(NLXSchemaNLXClientEvent *)self deleteNlxLegacyNLContextTier1];
  }

  v30 = [(NLXSchemaNLXClientEvent *)self cdmDelegatedUserDialogActTier1];
  v31 = [v30 applySensitiveConditionsPolicy:v4];
  v32 = [v31 suppressMessage];

  if (v32)
  {
    [(NLXSchemaNLXClientEvent *)self deleteCdmDelegatedUserDialogActTier1];
  }

  v33 = [(NLXSchemaNLXClientEvent *)self cdmSystemDialogActTier1];
  v34 = [v33 applySensitiveConditionsPolicy:v4];
  v35 = [v34 suppressMessage];

  if (v35)
  {
    [(NLXSchemaNLXClientEvent *)self deleteCdmSystemDialogActTier1];
  }

  v36 = [(NLXSchemaNLXClientEvent *)self cdmTokenizationEnded];
  v37 = [v36 applySensitiveConditionsPolicy:v4];
  v38 = [v37 suppressMessage];

  if (v38)
  {
    [(NLXSchemaNLXClientEvent *)self deleteCdmTokenizationEnded];
  }

  v39 = [(NLXSchemaNLXClientEvent *)self cdmContextUpdateEnded];
  v40 = [v39 applySensitiveConditionsPolicy:v4];
  v41 = [v40 suppressMessage];

  if (v41)
  {
    [(NLXSchemaNLXClientEvent *)self deleteCdmContextUpdateEnded];
  }

  v42 = [(NLXSchemaNLXClientEvent *)self marrsRepetitionDetectionContext];
  v43 = [v42 applySensitiveConditionsPolicy:v4];
  v44 = [v43 suppressMessage];

  if (v44)
  {
    [(NLXSchemaNLXClientEvent *)self deleteMarrsRepetitionDetectionContext];
  }

  v45 = [(NLXSchemaNLXClientEvent *)self marrsQueryRewriteContext];
  v46 = [v45 applySensitiveConditionsPolicy:v4];
  v47 = [v46 suppressMessage];

  if (v47)
  {
    [(NLXSchemaNLXClientEvent *)self deleteMarrsQueryRewriteContext];
  }

  v48 = [(NLXSchemaNLXClientEvent *)self marrsQueryRewriteEvaluatedTier1];
  v49 = [v48 applySensitiveConditionsPolicy:v4];
  v50 = [v49 suppressMessage];

  if (v50)
  {
    [(NLXSchemaNLXClientEvent *)self deleteMarrsQueryRewriteEvaluatedTier1];
  }

  v51 = [(NLXSchemaNLXClientEvent *)self cdmMatchingSpanEndedTier1];
  v52 = [v51 applySensitiveConditionsPolicy:v4];
  v53 = [v52 suppressMessage];

  if (v53)
  {
    [(NLXSchemaNLXClientEvent *)self deleteCdmMatchingSpanEndedTier1];
  }

  v54 = [(NLXSchemaNLXClientEvent *)self nlxCurareContext];
  v55 = [v54 applySensitiveConditionsPolicy:v4];
  v56 = [v55 suppressMessage];

  if (v56)
  {
    [(NLXSchemaNLXClientEvent *)self deleteNlxCurareContext];
  }

  v57 = [(NLXSchemaNLXClientEvent *)self marrsMentionDetectorEnded];
  v58 = [v57 applySensitiveConditionsPolicy:v4];
  v59 = [v58 suppressMessage];

  if (v59)
  {
    [(NLXSchemaNLXClientEvent *)self deleteMarrsMentionDetectorEnded];
  }

  v60 = [(NLXSchemaNLXClientEvent *)self marrsMentionDetectorEndedTier1];
  v61 = [v60 applySensitiveConditionsPolicy:v4];
  v62 = [v61 suppressMessage];

  if (v62)
  {
    [(NLXSchemaNLXClientEvent *)self deleteMarrsMentionDetectorEndedTier1];
  }

  v63 = [(NLXSchemaNLXClientEvent *)self marrsMentionResolverEnded];
  v64 = [v63 applySensitiveConditionsPolicy:v4];
  v65 = [v64 suppressMessage];

  if (v65)
  {
    [(NLXSchemaNLXClientEvent *)self deleteMarrsMentionResolverEnded];
  }

  v66 = [(NLXSchemaNLXClientEvent *)self marrsMentionResolverEndedTier1];
  v67 = [v66 applySensitiveConditionsPolicy:v4];
  v68 = [v67 suppressMessage];

  if (v68)
  {
    [(NLXSchemaNLXClientEvent *)self deleteMarrsMentionResolverEndedTier1];
  }

  v69 = [(NLXSchemaNLXClientEvent *)self cdmClientSetupContext];
  v70 = [v69 applySensitiveConditionsPolicy:v4];
  v71 = [v70 suppressMessage];

  if (v71)
  {
    [(NLXSchemaNLXClientEvent *)self deleteCdmClientSetupContext];
  }

  v72 = [(NLXSchemaNLXClientEvent *)self cdmAllServicesSetupContext];
  v73 = [v72 applySensitiveConditionsPolicy:v4];
  v74 = [v73 suppressMessage];

  if (v74)
  {
    [(NLXSchemaNLXClientEvent *)self deleteCdmAllServicesSetupContext];
  }

  v75 = [(NLXSchemaNLXClientEvent *)self cdmSingleServiceSetupAttemptContext];
  v76 = [v75 applySensitiveConditionsPolicy:v4];
  v77 = [v76 suppressMessage];

  if (v77)
  {
    [(NLXSchemaNLXClientEvent *)self deleteCdmSingleServiceSetupAttemptContext];
  }

  v78 = [(NLXSchemaNLXClientEvent *)self cdmSingleServiceSetupAttemptFailed];
  v79 = [v78 applySensitiveConditionsPolicy:v4];
  v80 = [v79 suppressMessage];

  if (v80)
  {
    [(NLXSchemaNLXClientEvent *)self deleteCdmSingleServiceSetupAttemptFailed];
  }

  v81 = [(NLXSchemaNLXClientEvent *)self cdmSpanMatcherContext];
  v82 = [v81 applySensitiveConditionsPolicy:v4];
  v83 = [v82 suppressMessage];

  if (v83)
  {
    [(NLXSchemaNLXClientEvent *)self deleteCdmSpanMatcherContext];
  }

  v84 = [(NLXSchemaNLXClientEvent *)self marrsContextualSpanMatcherEnded];
  v85 = [v84 applySensitiveConditionsPolicy:v4];
  v86 = [v85 suppressMessage];

  if (v86)
  {
    [(NLXSchemaNLXClientEvent *)self deleteMarrsContextualSpanMatcherEnded];
  }

  v87 = [(NLXSchemaNLXClientEvent *)self marrsContextualSpanMatcherEndedTier1];
  v88 = [v87 applySensitiveConditionsPolicy:v4];
  v89 = [v88 suppressMessage];

  if (v89)
  {
    [(NLXSchemaNLXClientEvent *)self deleteMarrsContextualSpanMatcherEndedTier1];
  }

  v90 = [(NLXSchemaNLXClientEvent *)self cdmXpcEventProcessingContext];
  v91 = [v90 applySensitiveConditionsPolicy:v4];
  v92 = [v91 suppressMessage];

  if (v92)
  {
    [(NLXSchemaNLXClientEvent *)self deleteCdmXpcEventProcessingContext];
  }

  v93 = [(NLXSchemaNLXClientEvent *)self cdmAssetSetupContext];
  v94 = [v93 applySensitiveConditionsPolicy:v4];
  v95 = [v94 suppressMessage];

  if (v95)
  {
    [(NLXSchemaNLXClientEvent *)self deleteCdmAssetSetupContext];
  }

  v96 = [(NLXSchemaNLXClientEvent *)self cdmSetupMissingAssetsDetected];
  v97 = [v96 applySensitiveConditionsPolicy:v4];
  v98 = [v97 suppressMessage];

  if (v98)
  {
    [(NLXSchemaNLXClientEvent *)self deleteCdmSetupMissingAssetsDetected];
  }

  v99 = [(NLXSchemaNLXClientEvent *)self cdmClientWarmupContext];
  v100 = [v99 applySensitiveConditionsPolicy:v4];
  v101 = [v100 suppressMessage];

  if (v101)
  {
    [(NLXSchemaNLXClientEvent *)self deleteCdmClientWarmupContext];
  }

  v102 = [(NLXSchemaNLXClientEvent *)self cdmAllServicesWarmupContext];
  v103 = [v102 applySensitiveConditionsPolicy:v4];
  v104 = [v103 suppressMessage];

  if (v104)
  {
    [(NLXSchemaNLXClientEvent *)self deleteCdmAllServicesWarmupContext];
  }

  v105 = [(NLXSchemaNLXClientEvent *)self cdmSingleServiceWarmupAttemptContext];
  v106 = [v105 applySensitiveConditionsPolicy:v4];
  v107 = [v106 suppressMessage];

  if (v107)
  {
    [(NLXSchemaNLXClientEvent *)self deleteCdmSingleServiceWarmupAttemptContext];
  }

  v108 = [(NLXSchemaNLXClientEvent *)self cdmSingleServiceWarmupAttemptFailed];
  v109 = [v108 applySensitiveConditionsPolicy:v4];
  v110 = [v109 suppressMessage];

  if (v110)
  {
    [(NLXSchemaNLXClientEvent *)self deleteCdmSingleServiceWarmupAttemptFailed];
  }

  v111 = [(NLXSchemaNLXClientEvent *)self cdmAssetsReported];
  v112 = [v111 applySensitiveConditionsPolicy:v4];
  v113 = [v112 suppressMessage];

  if (v113)
  {
    [(NLXSchemaNLXClientEvent *)self deleteCdmAssetsReported];
  }

  v114 = [(NLXSchemaNLXClientEvent *)self ssuUserRequestContext];
  v115 = [v114 applySensitiveConditionsPolicy:v4];
  v116 = [v115 suppressMessage];

  if (v116)
  {
    [(NLXSchemaNLXClientEvent *)self deleteSsuUserRequestContext];
  }

  v117 = [(NLXSchemaNLXClientEvent *)self ssuBackgroundRequestContext];
  v118 = [v117 applySensitiveConditionsPolicy:v4];
  v119 = [v118 suppressMessage];

  if (v119)
  {
    [(NLXSchemaNLXClientEvent *)self deleteSsuBackgroundRequestContext];
  }

  v120 = [(NLXSchemaNLXClientEvent *)self cdmServiceHandleMetricsReported];
  v121 = [v120 applySensitiveConditionsPolicy:v4];
  v122 = [v121 suppressMessage];

  if (v122)
  {
    [(NLXSchemaNLXClientEvent *)self deleteCdmServiceHandleMetricsReported];
  }

  v123 = [(NLXSchemaNLXClientEvent *)self cdmServiceSetupMetricsReported];
  v124 = [v123 applySensitiveConditionsPolicy:v4];
  v125 = [v124 suppressMessage];

  if (v125)
  {
    [(NLXSchemaNLXClientEvent *)self deleteCdmServiceSetupMetricsReported];
  }

  v126 = [(NLXSchemaNLXClientEvent *)self milAssetAcquisitionContext];
  v127 = [v126 applySensitiveConditionsPolicy:v4];
  v128 = [v127 suppressMessage];

  if (v128)
  {
    [(NLXSchemaNLXClientEvent *)self deleteMilAssetAcquisitionContext];
  }

  v129 = [(NLXSchemaNLXClientEvent *)self cdmSetupLink];
  v130 = [v129 applySensitiveConditionsPolicy:v4];
  v131 = [v130 suppressMessage];

  if (v131)
  {
    [(NLXSchemaNLXClientEvent *)self deleteCdmSetupLink];
  }

  v132 = v5;

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
  v3 = [(NLXSchemaNLXClientEvent *)self eventMetadata];
  v4 = [v3 nlId];

  if (v4 && ([v4 value], (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v6 = v5, objc_msgSend(v4, "value"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v6, v8))
  {
    LODWORD(v9) = 7;
  }

  else
  {
    v10 = [(NLXSchemaNLXClientEvent *)self eventMetadata];
    v11 = [v10 requestId];

    if (v11 && ([v11 value], (v12 = objc_claimAutoreleasedReturnValue()) != 0) && (v13 = v12, objc_msgSend(v11, "value"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "length"), v14, v13, v15))
    {
      LODWORD(v9) = 1;
      v4 = v11;
    }

    else
    {
      v16 = [(NLXSchemaNLXClientEvent *)self eventMetadata];
      v4 = [v16 subRequestId];

      if (v4)
      {
        v9 = [v4 value];
        if (v9)
        {
          v17 = [v4 value];
          v18 = [v17 length];

          if (v18)
          {
            LODWORD(v9) = 43;
          }

          else
          {
            LODWORD(v9) = 0;
          }
        }
      }

      else
      {
        LODWORD(v9) = 0;
      }
    }
  }

  return v9;
}

- (id)getComponentId
{
  v3 = [(NLXSchemaNLXClientEvent *)self eventMetadata];
  v4 = [v3 nlId];

  if (v4)
  {
    v5 = [v4 value];
    if (v5)
    {
      v6 = v5;
      v7 = [v4 value];
      v8 = [v7 length];

      if (v8)
      {
        goto LABEL_11;
      }
    }
  }

  v9 = [(NLXSchemaNLXClientEvent *)self eventMetadata];
  v10 = [v9 requestId];

  if (v10)
  {
    v11 = [v10 value];
    if (v11)
    {
      v12 = v11;
      v13 = [v10 value];
      v14 = [v13 length];

      if (v14)
      {
        v4 = v10;
LABEL_11:
        v16 = v4;
        v4 = v16;
        goto LABEL_13;
      }
    }
  }

  v15 = [(NLXSchemaNLXClientEvent *)self eventMetadata];
  v4 = [v15 subRequestId];

  if (v4)
  {
    v16 = [v4 value];
    if (!v16)
    {
      goto LABEL_13;
    }

    v17 = [v4 value];
    v18 = [v17 length];

    if (v18)
    {
      goto LABEL_11;
    }
  }

  v16 = 0;
LABEL_13:

  return v16;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  v3 = [(NLXSchemaNLXClientEvent *)self whichEvent_Type];
  if (v3 - 101 > 0x28)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78EA1D8[v3 - 101]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)a3
{
  if (a3 - 101 > 0x28)
  {
    return 0;
  }

  else
  {
    return off_1E78EA320[a3 - 101];
  }
}

@end