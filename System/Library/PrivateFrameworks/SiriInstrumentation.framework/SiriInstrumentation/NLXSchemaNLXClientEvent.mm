@interface NLXSchemaNLXClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
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
- (NLXSchemaNLXClientEvent)initWithDictionary:(id)dictionary;
- (NLXSchemaNLXClientEvent)initWithJSON:(id)n;
- (NLXSchemaNLXCurareContext)nlxCurareContext;
- (NLXSchemaNLXDeviceFixedContext)nlxDeviceFixedContext;
- (NLXSchemaNLXLegacyNLContextTier1)nlxLegacyNLContextTier1;
- (NLXSchemaSSUBackgroundUpdateContext)ssuBackgroundRequestContext;
- (NLXSchemaSSUUserRequestContext)ssuUserRequestContext;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
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
- (void)setCdmAllServicesSetupContext:(id)context;
- (void)setCdmAllServicesWarmupContext:(id)context;
- (void)setCdmAssetSetupContext:(id)context;
- (void)setCdmAssetsReported:(id)reported;
- (void)setCdmClientSetupContext:(id)context;
- (void)setCdmClientWarmupContext:(id)context;
- (void)setCdmContextUpdateEnded:(id)ended;
- (void)setCdmDelegatedUserDialogActTier1:(id)tier1;
- (void)setCdmMatchingSpanEnded:(id)ended;
- (void)setCdmMatchingSpanEndedTier1:(id)tier1;
- (void)setCdmMatchingSpanTier1:(id)tier1;
- (void)setCdmRequestContext:(id)context;
- (void)setCdmServiceContext:(id)context;
- (void)setCdmServiceHandleMetricsReported:(id)reported;
- (void)setCdmServiceSetupMetricsReported:(id)reported;
- (void)setCdmSetupLink:(id)link;
- (void)setCdmSetupMissingAssetsDetected:(id)detected;
- (void)setCdmSingleServiceSetupAttemptContext:(id)context;
- (void)setCdmSingleServiceSetupAttemptFailed:(id)failed;
- (void)setCdmSingleServiceWarmupAttemptContext:(id)context;
- (void)setCdmSingleServiceWarmupAttemptFailed:(id)failed;
- (void)setCdmSpanMatcherContext:(id)context;
- (void)setCdmSystemDialogActTier1:(id)tier1;
- (void)setCdmTokenizationEnded:(id)ended;
- (void)setCdmUsoGraphTier1:(id)tier1;
- (void)setCdmXpcEventProcessingContext:(id)context;
- (void)setMarrsContextualSpanMatcherEnded:(id)ended;
- (void)setMarrsContextualSpanMatcherEndedTier1:(id)tier1;
- (void)setMarrsMentionDetectorEnded:(id)ended;
- (void)setMarrsMentionDetectorEndedTier1:(id)tier1;
- (void)setMarrsMentionResolverEnded:(id)ended;
- (void)setMarrsMentionResolverEndedTier1:(id)tier1;
- (void)setMarrsQueryRewriteContext:(id)context;
- (void)setMarrsQueryRewriteEvaluatedTier1:(id)tier1;
- (void)setMarrsRepetitionDetectionContext:(id)context;
- (void)setMilAssetAcquisitionContext:(id)context;
- (void)setNlxCurareContext:(id)context;
- (void)setNlxDeviceFixedContext:(id)context;
- (void)setNlxLegacyNLContextTier1:(id)tier1;
- (void)setSsuBackgroundRequestContext:(id)context;
- (void)setSsuUserRequestContext:(id)context;
- (void)writeTo:(id)to;
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
  whichEvent_Type = [(NLXSchemaNLXClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 0x28)
  {
    return @"com.apple.aiml.siri.nlx.NLXClientEvent";
  }

  else
  {
    return off_1E78DC6B8[whichEvent_Type - 101];
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

- (NLXSchemaNLXClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v127.receiver = self;
  v127.super_class = NLXSchemaNLXClientEvent;
  v5 = [(NLXSchemaNLXClientEvent *)&v127 init];

  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[NLXSchemaNLXClientEventMetadata alloc] initWithDictionary:v6];
      [(NLXSchemaNLXClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"cdmServiceContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[NLXSchemaCDMServiceContext alloc] initWithDictionary:v8];
      [(NLXSchemaNLXClientEvent *)v5 setCdmServiceContext:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"cdmRequestContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[NLXSchemaCDMRequestContext alloc] initWithDictionary:v10];
      [(NLXSchemaNLXClientEvent *)v5 setCdmRequestContext:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"nlxDeviceFixedContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[NLXSchemaNLXDeviceFixedContext alloc] initWithDictionary:v12];
      [(NLXSchemaNLXClientEvent *)v5 setNlxDeviceFixedContext:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"cdmMatchingSpanEnded"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[NLXSchemaCDMMatchingSpanEnded alloc] initWithDictionary:v14];
      [(NLXSchemaNLXClientEvent *)v5 setCdmMatchingSpanEnded:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"cdmUsoGraphTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[NLXSchemaCDMUsoGraphTier1 alloc] initWithDictionary:v16];
      [(NLXSchemaNLXClientEvent *)v5 setCdmUsoGraphTier1:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"cdmMatchingSpanTier1"];
    objc_opt_class();
    v126 = v18;
    if (objc_opt_isKindOfClass())
    {
      v19 = [[NLXSchemaCDMMatchingSpanTier1 alloc] initWithDictionary:v18];
      [(NLXSchemaNLXClientEvent *)v5 setCdmMatchingSpanTier1:v19];
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"nlxLegacyNLContextTier1"];
    objc_opt_class();
    v125 = v20;
    if (objc_opt_isKindOfClass())
    {
      v21 = [[NLXSchemaNLXLegacyNLContextTier1 alloc] initWithDictionary:v20];
      [(NLXSchemaNLXClientEvent *)v5 setNlxLegacyNLContextTier1:v21];
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"cdmDelegatedUserDialogActTier1"];
    objc_opt_class();
    v124 = v22;
    if (objc_opt_isKindOfClass())
    {
      v23 = [[NLXSchemaCDMDelegatedUserDialogActTier1 alloc] initWithDictionary:v22];
      [(NLXSchemaNLXClientEvent *)v5 setCdmDelegatedUserDialogActTier1:v23];
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"cdmSystemDialogActTier1"];
    objc_opt_class();
    v123 = v24;
    if (objc_opt_isKindOfClass())
    {
      v25 = [[NLXSchemaCDMSystemDialogActTier1 alloc] initWithDictionary:v24];
      [(NLXSchemaNLXClientEvent *)v5 setCdmSystemDialogActTier1:v25];
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"cdmTokenizationEnded"];
    objc_opt_class();
    v122 = v26;
    if (objc_opt_isKindOfClass())
    {
      v27 = [[NLXSchemaCDMTokenizationEnded alloc] initWithDictionary:v26];
      [(NLXSchemaNLXClientEvent *)v5 setCdmTokenizationEnded:v27];
    }

    v28 = [dictionaryCopy objectForKeyedSubscript:@"cdmContextUpdateEnded"];
    objc_opt_class();
    v121 = v28;
    if (objc_opt_isKindOfClass())
    {
      v29 = [[NLXSchemaCDMContextUpdateEnded alloc] initWithDictionary:v28];
      [(NLXSchemaNLXClientEvent *)v5 setCdmContextUpdateEnded:v29];
    }

    v30 = [dictionaryCopy objectForKeyedSubscript:@"marrsRepetitionDetectionContext"];
    objc_opt_class();
    v120 = v30;
    if (objc_opt_isKindOfClass())
    {
      v31 = [[NLXSchemaMARRSRepetitionDetectionContext alloc] initWithDictionary:v30];
      [(NLXSchemaNLXClientEvent *)v5 setMarrsRepetitionDetectionContext:v31];
    }

    v32 = [dictionaryCopy objectForKeyedSubscript:@"marrsQueryRewriteContext"];
    objc_opt_class();
    v119 = v32;
    if (objc_opt_isKindOfClass())
    {
      v33 = [[NLXSchemaMARRSQueryRewriteContext alloc] initWithDictionary:v32];
      [(NLXSchemaNLXClientEvent *)v5 setMarrsQueryRewriteContext:v33];
    }

    v34 = [dictionaryCopy objectForKeyedSubscript:@"marrsQueryRewriteEvaluatedTier1"];
    objc_opt_class();
    v118 = v34;
    if (objc_opt_isKindOfClass())
    {
      v35 = [[NLXSchemaMARRSQueryRewriteEvaluatedTier1 alloc] initWithDictionary:v34];
      [(NLXSchemaNLXClientEvent *)v5 setMarrsQueryRewriteEvaluatedTier1:v35];
    }

    v36 = [dictionaryCopy objectForKeyedSubscript:@"cdmMatchingSpanEndedTier1"];
    objc_opt_class();
    v117 = v36;
    if (objc_opt_isKindOfClass())
    {
      v37 = [[NLXSchemaCDMMatchingSpanEndedTier1 alloc] initWithDictionary:v36];
      [(NLXSchemaNLXClientEvent *)v5 setCdmMatchingSpanEndedTier1:v37];
    }

    v38 = [dictionaryCopy objectForKeyedSubscript:@"nlxCurareContext"];
    objc_opt_class();
    v116 = v38;
    if (objc_opt_isKindOfClass())
    {
      v39 = [[NLXSchemaNLXCurareContext alloc] initWithDictionary:v38];
      [(NLXSchemaNLXClientEvent *)v5 setNlxCurareContext:v39];
    }

    v40 = [dictionaryCopy objectForKeyedSubscript:@"marrsMentionDetectorEnded"];
    objc_opt_class();
    v115 = v40;
    if (objc_opt_isKindOfClass())
    {
      v41 = [[NLXSchemaMARRSMentionDetectorEnded alloc] initWithDictionary:v40];
      [(NLXSchemaNLXClientEvent *)v5 setMarrsMentionDetectorEnded:v41];
    }

    v42 = [dictionaryCopy objectForKeyedSubscript:@"marrsMentionDetectorEndedTier1"];
    objc_opt_class();
    v114 = v42;
    if (objc_opt_isKindOfClass())
    {
      v43 = [[NLXSchemaMARRSMentionDetectorEndedTier1 alloc] initWithDictionary:v42];
      [(NLXSchemaNLXClientEvent *)v5 setMarrsMentionDetectorEndedTier1:v43];
    }

    v44 = [dictionaryCopy objectForKeyedSubscript:@"marrsMentionResolverEnded"];
    objc_opt_class();
    v113 = v44;
    if (objc_opt_isKindOfClass())
    {
      v45 = [[NLXSchemaMARRSMentionResolverEnded alloc] initWithDictionary:v44];
      [(NLXSchemaNLXClientEvent *)v5 setMarrsMentionResolverEnded:v45];
    }

    v46 = [dictionaryCopy objectForKeyedSubscript:@"marrsMentionResolverEndedTier1"];
    objc_opt_class();
    v112 = v46;
    if (objc_opt_isKindOfClass())
    {
      v47 = [[NLXSchemaMARRSMentionResolverEndedTier1 alloc] initWithDictionary:v46];
      [(NLXSchemaNLXClientEvent *)v5 setMarrsMentionResolverEndedTier1:v47];
    }

    v48 = [dictionaryCopy objectForKeyedSubscript:@"cdmClientSetupContext"];
    objc_opt_class();
    v111 = v48;
    if (objc_opt_isKindOfClass())
    {
      v49 = [[NLXSchemaCDMClientSetupContext alloc] initWithDictionary:v48];
      [(NLXSchemaNLXClientEvent *)v5 setCdmClientSetupContext:v49];
    }

    v50 = [dictionaryCopy objectForKeyedSubscript:@"cdmAllServicesSetupContext"];
    objc_opt_class();
    v110 = v50;
    if (objc_opt_isKindOfClass())
    {
      v51 = [[NLXSchemaCDMAllServicesSetupContext alloc] initWithDictionary:v50];
      [(NLXSchemaNLXClientEvent *)v5 setCdmAllServicesSetupContext:v51];
    }

    v52 = [dictionaryCopy objectForKeyedSubscript:@"cdmSingleServiceSetupAttemptContext"];
    objc_opt_class();
    v109 = v52;
    if (objc_opt_isKindOfClass())
    {
      v53 = [[NLXSchemaCDMSingleServiceSetupAttemptContext alloc] initWithDictionary:v52];
      [(NLXSchemaNLXClientEvent *)v5 setCdmSingleServiceSetupAttemptContext:v53];
    }

    v54 = [dictionaryCopy objectForKeyedSubscript:@"cdmSingleServiceSetupAttemptFailed"];
    objc_opt_class();
    v108 = v54;
    if (objc_opt_isKindOfClass())
    {
      v55 = [[NLXSchemaCDMSingleServiceSetupAttemptFailed alloc] initWithDictionary:v54];
      [(NLXSchemaNLXClientEvent *)v5 setCdmSingleServiceSetupAttemptFailed:v55];
    }

    v56 = [dictionaryCopy objectForKeyedSubscript:@"cdmSpanMatcherContext"];
    objc_opt_class();
    v107 = v56;
    if (objc_opt_isKindOfClass())
    {
      v57 = [[NLXSchemaCDMSpanMatcherContext alloc] initWithDictionary:v56];
      [(NLXSchemaNLXClientEvent *)v5 setCdmSpanMatcherContext:v57];
    }

    v58 = [dictionaryCopy objectForKeyedSubscript:@"marrsContextualSpanMatcherEnded"];
    objc_opt_class();
    v106 = v58;
    if (objc_opt_isKindOfClass())
    {
      v59 = [[NLXSchemaMARRSContextualSpanMatcherEnded alloc] initWithDictionary:v58];
      [(NLXSchemaNLXClientEvent *)v5 setMarrsContextualSpanMatcherEnded:v59];
    }

    v60 = [dictionaryCopy objectForKeyedSubscript:@"marrsContextualSpanMatcherEndedTier1"];
    objc_opt_class();
    v105 = v60;
    if (objc_opt_isKindOfClass())
    {
      v61 = [[NLXSchemaMARRSContextualSpanMatcherEndedTier1 alloc] initWithDictionary:v60];
      [(NLXSchemaNLXClientEvent *)v5 setMarrsContextualSpanMatcherEndedTier1:v61];
    }

    v62 = [dictionaryCopy objectForKeyedSubscript:@"cdmXpcEventProcessingContext"];
    objc_opt_class();
    v104 = v62;
    if (objc_opt_isKindOfClass())
    {
      v63 = [[NLXSchemaCDMXPCEventProcessingContext alloc] initWithDictionary:v62];
      [(NLXSchemaNLXClientEvent *)v5 setCdmXpcEventProcessingContext:v63];
    }

    v64 = [dictionaryCopy objectForKeyedSubscript:@"cdmAssetSetupContext"];
    objc_opt_class();
    v103 = v64;
    if (objc_opt_isKindOfClass())
    {
      v65 = [[NLXSchemaCDMAssetSetupContext alloc] initWithDictionary:v64];
      [(NLXSchemaNLXClientEvent *)v5 setCdmAssetSetupContext:v65];
    }

    v66 = [dictionaryCopy objectForKeyedSubscript:@"cdmSetupMissingAssetsDetected"];
    objc_opt_class();
    v102 = v66;
    if (objc_opt_isKindOfClass())
    {
      v67 = [[NLXSchemaCDMSetupMissingAssetsDetected alloc] initWithDictionary:v66];
      [(NLXSchemaNLXClientEvent *)v5 setCdmSetupMissingAssetsDetected:v67];
    }

    v68 = [dictionaryCopy objectForKeyedSubscript:@"cdmClientWarmupContext"];
    objc_opt_class();
    v101 = v68;
    if (objc_opt_isKindOfClass())
    {
      v69 = [[NLXSchemaCDMClientWarmupContext alloc] initWithDictionary:v68];
      [(NLXSchemaNLXClientEvent *)v5 setCdmClientWarmupContext:v69];
    }

    v70 = [dictionaryCopy objectForKeyedSubscript:@"cdmAllServicesWarmupContext"];
    objc_opt_class();
    v100 = v70;
    if (objc_opt_isKindOfClass())
    {
      v71 = [[NLXSchemaCDMAllServicesWarmupContext alloc] initWithDictionary:v70];
      [(NLXSchemaNLXClientEvent *)v5 setCdmAllServicesWarmupContext:v71];
    }

    v72 = [dictionaryCopy objectForKeyedSubscript:@"cdmSingleServiceWarmupAttemptContext"];
    objc_opt_class();
    v99 = v72;
    if (objc_opt_isKindOfClass())
    {
      v73 = [[NLXSchemaCDMSingleServiceWarmupAttemptContext alloc] initWithDictionary:v72];
      [(NLXSchemaNLXClientEvent *)v5 setCdmSingleServiceWarmupAttemptContext:v73];
    }

    v97 = v8;
    v74 = [dictionaryCopy objectForKeyedSubscript:@"cdmSingleServiceWarmupAttemptFailed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v75 = [[NLXSchemaCDMSingleServiceWarmupAttemptFailed alloc] initWithDictionary:v74];
      [(NLXSchemaNLXClientEvent *)v5 setCdmSingleServiceWarmupAttemptFailed:v75];
    }

    v96 = v10;
    v76 = [dictionaryCopy objectForKeyedSubscript:{@"cdmAssetsReported", v74}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v77 = [[NLXSchemaCDMAssetsReported alloc] initWithDictionary:v76];
      [(NLXSchemaNLXClientEvent *)v5 setCdmAssetsReported:v77];
    }

    v95 = v12;
    v78 = [dictionaryCopy objectForKeyedSubscript:@"ssuUserRequestContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v79 = [[NLXSchemaSSUUserRequestContext alloc] initWithDictionary:v78];
      [(NLXSchemaNLXClientEvent *)v5 setSsuUserRequestContext:v79];
    }

    v94 = v14;
    v80 = [dictionaryCopy objectForKeyedSubscript:@"ssuBackgroundRequestContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v81 = [[NLXSchemaSSUBackgroundUpdateContext alloc] initWithDictionary:v80];
      [(NLXSchemaNLXClientEvent *)v5 setSsuBackgroundRequestContext:v81];
    }

    v93 = v16;
    v82 = [dictionaryCopy objectForKeyedSubscript:@"cdmServiceHandleMetricsReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v83 = [[NLXSchemaCDMServiceHandleMetricsReported alloc] initWithDictionary:v82];
      [(NLXSchemaNLXClientEvent *)v5 setCdmServiceHandleMetricsReported:v83];
    }

    v98 = v6;
    v84 = [dictionaryCopy objectForKeyedSubscript:@"cdmServiceSetupMetricsReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v85 = [[NLXSchemaCDMServiceSetupMetricsReported alloc] initWithDictionary:v84];
      [(NLXSchemaNLXClientEvent *)v5 setCdmServiceSetupMetricsReported:v85];
    }

    v86 = [dictionaryCopy objectForKeyedSubscript:@"milAssetAcquisitionContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v87 = [[NLXSchemaMILAssetAcquisitionContext alloc] initWithDictionary:v86];
      [(NLXSchemaNLXClientEvent *)v5 setMilAssetAcquisitionContext:v87];
    }

    v88 = [dictionaryCopy objectForKeyedSubscript:@"cdmSetupLink"];
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

- (NLXSchemaNLXClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NLXSchemaNLXClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NLXSchemaNLXClientEvent *)self dictionaryRepresentation];
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
  if (self->_cdmAllServicesSetupContext)
  {
    cdmAllServicesSetupContext = [(NLXSchemaNLXClientEvent *)self cdmAllServicesSetupContext];
    dictionaryRepresentation = [cdmAllServicesSetupContext dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"cdmAllServicesSetupContext"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"cdmAllServicesSetupContext"];
    }
  }

  if (self->_cdmAllServicesWarmupContext)
  {
    cdmAllServicesWarmupContext = [(NLXSchemaNLXClientEvent *)self cdmAllServicesWarmupContext];
    dictionaryRepresentation2 = [cdmAllServicesWarmupContext dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"cdmAllServicesWarmupContext"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"cdmAllServicesWarmupContext"];
    }
  }

  if (self->_cdmAssetSetupContext)
  {
    cdmAssetSetupContext = [(NLXSchemaNLXClientEvent *)self cdmAssetSetupContext];
    dictionaryRepresentation3 = [cdmAssetSetupContext dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"cdmAssetSetupContext"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"cdmAssetSetupContext"];
    }
  }

  if (self->_cdmAssetsReported)
  {
    cdmAssetsReported = [(NLXSchemaNLXClientEvent *)self cdmAssetsReported];
    dictionaryRepresentation4 = [cdmAssetsReported dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"cdmAssetsReported"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"cdmAssetsReported"];
    }
  }

  if (self->_cdmClientSetupContext)
  {
    cdmClientSetupContext = [(NLXSchemaNLXClientEvent *)self cdmClientSetupContext];
    dictionaryRepresentation5 = [cdmClientSetupContext dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"cdmClientSetupContext"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"cdmClientSetupContext"];
    }
  }

  if (self->_cdmClientWarmupContext)
  {
    cdmClientWarmupContext = [(NLXSchemaNLXClientEvent *)self cdmClientWarmupContext];
    dictionaryRepresentation6 = [cdmClientWarmupContext dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"cdmClientWarmupContext"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"cdmClientWarmupContext"];
    }
  }

  if (self->_cdmContextUpdateEnded)
  {
    cdmContextUpdateEnded = [(NLXSchemaNLXClientEvent *)self cdmContextUpdateEnded];
    dictionaryRepresentation7 = [cdmContextUpdateEnded dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"cdmContextUpdateEnded"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"cdmContextUpdateEnded"];
    }
  }

  if (self->_cdmDelegatedUserDialogActTier1)
  {
    cdmDelegatedUserDialogActTier1 = [(NLXSchemaNLXClientEvent *)self cdmDelegatedUserDialogActTier1];
    dictionaryRepresentation8 = [cdmDelegatedUserDialogActTier1 dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"cdmDelegatedUserDialogActTier1"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"cdmDelegatedUserDialogActTier1"];
    }
  }

  if (self->_cdmMatchingSpanEnded)
  {
    cdmMatchingSpanEnded = [(NLXSchemaNLXClientEvent *)self cdmMatchingSpanEnded];
    dictionaryRepresentation9 = [cdmMatchingSpanEnded dictionaryRepresentation];
    if (dictionaryRepresentation9)
    {
      [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"cdmMatchingSpanEnded"];
    }

    else
    {
      null9 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null9 forKeyedSubscript:@"cdmMatchingSpanEnded"];
    }
  }

  if (self->_cdmMatchingSpanEndedTier1)
  {
    cdmMatchingSpanEndedTier1 = [(NLXSchemaNLXClientEvent *)self cdmMatchingSpanEndedTier1];
    dictionaryRepresentation10 = [cdmMatchingSpanEndedTier1 dictionaryRepresentation];
    if (dictionaryRepresentation10)
    {
      [dictionary setObject:dictionaryRepresentation10 forKeyedSubscript:@"cdmMatchingSpanEndedTier1"];
    }

    else
    {
      null10 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null10 forKeyedSubscript:@"cdmMatchingSpanEndedTier1"];
    }
  }

  if (self->_cdmMatchingSpanTier1)
  {
    cdmMatchingSpanTier1 = [(NLXSchemaNLXClientEvent *)self cdmMatchingSpanTier1];
    dictionaryRepresentation11 = [cdmMatchingSpanTier1 dictionaryRepresentation];
    if (dictionaryRepresentation11)
    {
      [dictionary setObject:dictionaryRepresentation11 forKeyedSubscript:@"cdmMatchingSpanTier1"];
    }

    else
    {
      null11 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null11 forKeyedSubscript:@"cdmMatchingSpanTier1"];
    }
  }

  if (self->_cdmRequestContext)
  {
    cdmRequestContext = [(NLXSchemaNLXClientEvent *)self cdmRequestContext];
    dictionaryRepresentation12 = [cdmRequestContext dictionaryRepresentation];
    if (dictionaryRepresentation12)
    {
      [dictionary setObject:dictionaryRepresentation12 forKeyedSubscript:@"cdmRequestContext"];
    }

    else
    {
      null12 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null12 forKeyedSubscript:@"cdmRequestContext"];
    }
  }

  if (self->_cdmServiceContext)
  {
    cdmServiceContext = [(NLXSchemaNLXClientEvent *)self cdmServiceContext];
    dictionaryRepresentation13 = [cdmServiceContext dictionaryRepresentation];
    if (dictionaryRepresentation13)
    {
      [dictionary setObject:dictionaryRepresentation13 forKeyedSubscript:@"cdmServiceContext"];
    }

    else
    {
      null13 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null13 forKeyedSubscript:@"cdmServiceContext"];
    }
  }

  if (self->_cdmServiceHandleMetricsReported)
  {
    cdmServiceHandleMetricsReported = [(NLXSchemaNLXClientEvent *)self cdmServiceHandleMetricsReported];
    dictionaryRepresentation14 = [cdmServiceHandleMetricsReported dictionaryRepresentation];
    if (dictionaryRepresentation14)
    {
      [dictionary setObject:dictionaryRepresentation14 forKeyedSubscript:@"cdmServiceHandleMetricsReported"];
    }

    else
    {
      null14 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null14 forKeyedSubscript:@"cdmServiceHandleMetricsReported"];
    }
  }

  if (self->_cdmServiceSetupMetricsReported)
  {
    cdmServiceSetupMetricsReported = [(NLXSchemaNLXClientEvent *)self cdmServiceSetupMetricsReported];
    dictionaryRepresentation15 = [cdmServiceSetupMetricsReported dictionaryRepresentation];
    if (dictionaryRepresentation15)
    {
      [dictionary setObject:dictionaryRepresentation15 forKeyedSubscript:@"cdmServiceSetupMetricsReported"];
    }

    else
    {
      null15 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null15 forKeyedSubscript:@"cdmServiceSetupMetricsReported"];
    }
  }

  if (self->_cdmSetupLink)
  {
    cdmSetupLink = [(NLXSchemaNLXClientEvent *)self cdmSetupLink];
    dictionaryRepresentation16 = [cdmSetupLink dictionaryRepresentation];
    if (dictionaryRepresentation16)
    {
      [dictionary setObject:dictionaryRepresentation16 forKeyedSubscript:@"cdmSetupLink"];
    }

    else
    {
      null16 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null16 forKeyedSubscript:@"cdmSetupLink"];
    }
  }

  if (self->_cdmSetupMissingAssetsDetected)
  {
    cdmSetupMissingAssetsDetected = [(NLXSchemaNLXClientEvent *)self cdmSetupMissingAssetsDetected];
    dictionaryRepresentation17 = [cdmSetupMissingAssetsDetected dictionaryRepresentation];
    if (dictionaryRepresentation17)
    {
      [dictionary setObject:dictionaryRepresentation17 forKeyedSubscript:@"cdmSetupMissingAssetsDetected"];
    }

    else
    {
      null17 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null17 forKeyedSubscript:@"cdmSetupMissingAssetsDetected"];
    }
  }

  if (self->_cdmSingleServiceSetupAttemptContext)
  {
    cdmSingleServiceSetupAttemptContext = [(NLXSchemaNLXClientEvent *)self cdmSingleServiceSetupAttemptContext];
    dictionaryRepresentation18 = [cdmSingleServiceSetupAttemptContext dictionaryRepresentation];
    if (dictionaryRepresentation18)
    {
      [dictionary setObject:dictionaryRepresentation18 forKeyedSubscript:@"cdmSingleServiceSetupAttemptContext"];
    }

    else
    {
      null18 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null18 forKeyedSubscript:@"cdmSingleServiceSetupAttemptContext"];
    }
  }

  if (self->_cdmSingleServiceSetupAttemptFailed)
  {
    cdmSingleServiceSetupAttemptFailed = [(NLXSchemaNLXClientEvent *)self cdmSingleServiceSetupAttemptFailed];
    dictionaryRepresentation19 = [cdmSingleServiceSetupAttemptFailed dictionaryRepresentation];
    if (dictionaryRepresentation19)
    {
      [dictionary setObject:dictionaryRepresentation19 forKeyedSubscript:@"cdmSingleServiceSetupAttemptFailed"];
    }

    else
    {
      null19 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null19 forKeyedSubscript:@"cdmSingleServiceSetupAttemptFailed"];
    }
  }

  if (self->_cdmSingleServiceWarmupAttemptContext)
  {
    cdmSingleServiceWarmupAttemptContext = [(NLXSchemaNLXClientEvent *)self cdmSingleServiceWarmupAttemptContext];
    dictionaryRepresentation20 = [cdmSingleServiceWarmupAttemptContext dictionaryRepresentation];
    if (dictionaryRepresentation20)
    {
      [dictionary setObject:dictionaryRepresentation20 forKeyedSubscript:@"cdmSingleServiceWarmupAttemptContext"];
    }

    else
    {
      null20 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null20 forKeyedSubscript:@"cdmSingleServiceWarmupAttemptContext"];
    }
  }

  if (self->_cdmSingleServiceWarmupAttemptFailed)
  {
    cdmSingleServiceWarmupAttemptFailed = [(NLXSchemaNLXClientEvent *)self cdmSingleServiceWarmupAttemptFailed];
    dictionaryRepresentation21 = [cdmSingleServiceWarmupAttemptFailed dictionaryRepresentation];
    if (dictionaryRepresentation21)
    {
      [dictionary setObject:dictionaryRepresentation21 forKeyedSubscript:@"cdmSingleServiceWarmupAttemptFailed"];
    }

    else
    {
      null21 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null21 forKeyedSubscript:@"cdmSingleServiceWarmupAttemptFailed"];
    }
  }

  if (self->_cdmSpanMatcherContext)
  {
    cdmSpanMatcherContext = [(NLXSchemaNLXClientEvent *)self cdmSpanMatcherContext];
    dictionaryRepresentation22 = [cdmSpanMatcherContext dictionaryRepresentation];
    if (dictionaryRepresentation22)
    {
      [dictionary setObject:dictionaryRepresentation22 forKeyedSubscript:@"cdmSpanMatcherContext"];
    }

    else
    {
      null22 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null22 forKeyedSubscript:@"cdmSpanMatcherContext"];
    }
  }

  if (self->_cdmSystemDialogActTier1)
  {
    cdmSystemDialogActTier1 = [(NLXSchemaNLXClientEvent *)self cdmSystemDialogActTier1];
    dictionaryRepresentation23 = [cdmSystemDialogActTier1 dictionaryRepresentation];
    if (dictionaryRepresentation23)
    {
      [dictionary setObject:dictionaryRepresentation23 forKeyedSubscript:@"cdmSystemDialogActTier1"];
    }

    else
    {
      null23 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null23 forKeyedSubscript:@"cdmSystemDialogActTier1"];
    }
  }

  if (self->_cdmTokenizationEnded)
  {
    cdmTokenizationEnded = [(NLXSchemaNLXClientEvent *)self cdmTokenizationEnded];
    dictionaryRepresentation24 = [cdmTokenizationEnded dictionaryRepresentation];
    if (dictionaryRepresentation24)
    {
      [dictionary setObject:dictionaryRepresentation24 forKeyedSubscript:@"cdmTokenizationEnded"];
    }

    else
    {
      null24 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null24 forKeyedSubscript:@"cdmTokenizationEnded"];
    }
  }

  if (self->_cdmUsoGraphTier1)
  {
    cdmUsoGraphTier1 = [(NLXSchemaNLXClientEvent *)self cdmUsoGraphTier1];
    dictionaryRepresentation25 = [cdmUsoGraphTier1 dictionaryRepresentation];
    if (dictionaryRepresentation25)
    {
      [dictionary setObject:dictionaryRepresentation25 forKeyedSubscript:@"cdmUsoGraphTier1"];
    }

    else
    {
      null25 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null25 forKeyedSubscript:@"cdmUsoGraphTier1"];
    }
  }

  if (self->_cdmXpcEventProcessingContext)
  {
    cdmXpcEventProcessingContext = [(NLXSchemaNLXClientEvent *)self cdmXpcEventProcessingContext];
    dictionaryRepresentation26 = [cdmXpcEventProcessingContext dictionaryRepresentation];
    if (dictionaryRepresentation26)
    {
      [dictionary setObject:dictionaryRepresentation26 forKeyedSubscript:@"cdmXpcEventProcessingContext"];
    }

    else
    {
      null26 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null26 forKeyedSubscript:@"cdmXpcEventProcessingContext"];
    }
  }

  if (self->_eventMetadata)
  {
    eventMetadata = [(NLXSchemaNLXClientEvent *)self eventMetadata];
    dictionaryRepresentation27 = [eventMetadata dictionaryRepresentation];
    if (dictionaryRepresentation27)
    {
      [dictionary setObject:dictionaryRepresentation27 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      null27 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null27 forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_marrsContextualSpanMatcherEnded)
  {
    marrsContextualSpanMatcherEnded = [(NLXSchemaNLXClientEvent *)self marrsContextualSpanMatcherEnded];
    dictionaryRepresentation28 = [marrsContextualSpanMatcherEnded dictionaryRepresentation];
    if (dictionaryRepresentation28)
    {
      [dictionary setObject:dictionaryRepresentation28 forKeyedSubscript:@"marrsContextualSpanMatcherEnded"];
    }

    else
    {
      null28 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null28 forKeyedSubscript:@"marrsContextualSpanMatcherEnded"];
    }
  }

  if (self->_marrsContextualSpanMatcherEndedTier1)
  {
    marrsContextualSpanMatcherEndedTier1 = [(NLXSchemaNLXClientEvent *)self marrsContextualSpanMatcherEndedTier1];
    dictionaryRepresentation29 = [marrsContextualSpanMatcherEndedTier1 dictionaryRepresentation];
    if (dictionaryRepresentation29)
    {
      [dictionary setObject:dictionaryRepresentation29 forKeyedSubscript:@"marrsContextualSpanMatcherEndedTier1"];
    }

    else
    {
      null29 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null29 forKeyedSubscript:@"marrsContextualSpanMatcherEndedTier1"];
    }
  }

  if (self->_marrsMentionDetectorEnded)
  {
    marrsMentionDetectorEnded = [(NLXSchemaNLXClientEvent *)self marrsMentionDetectorEnded];
    dictionaryRepresentation30 = [marrsMentionDetectorEnded dictionaryRepresentation];
    if (dictionaryRepresentation30)
    {
      [dictionary setObject:dictionaryRepresentation30 forKeyedSubscript:@"marrsMentionDetectorEnded"];
    }

    else
    {
      null30 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null30 forKeyedSubscript:@"marrsMentionDetectorEnded"];
    }
  }

  if (self->_marrsMentionDetectorEndedTier1)
  {
    marrsMentionDetectorEndedTier1 = [(NLXSchemaNLXClientEvent *)self marrsMentionDetectorEndedTier1];
    dictionaryRepresentation31 = [marrsMentionDetectorEndedTier1 dictionaryRepresentation];
    if (dictionaryRepresentation31)
    {
      [dictionary setObject:dictionaryRepresentation31 forKeyedSubscript:@"marrsMentionDetectorEndedTier1"];
    }

    else
    {
      null31 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null31 forKeyedSubscript:@"marrsMentionDetectorEndedTier1"];
    }
  }

  if (self->_marrsMentionResolverEnded)
  {
    marrsMentionResolverEnded = [(NLXSchemaNLXClientEvent *)self marrsMentionResolverEnded];
    dictionaryRepresentation32 = [marrsMentionResolverEnded dictionaryRepresentation];
    if (dictionaryRepresentation32)
    {
      [dictionary setObject:dictionaryRepresentation32 forKeyedSubscript:@"marrsMentionResolverEnded"];
    }

    else
    {
      null32 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null32 forKeyedSubscript:@"marrsMentionResolverEnded"];
    }
  }

  if (self->_marrsMentionResolverEndedTier1)
  {
    marrsMentionResolverEndedTier1 = [(NLXSchemaNLXClientEvent *)self marrsMentionResolverEndedTier1];
    dictionaryRepresentation33 = [marrsMentionResolverEndedTier1 dictionaryRepresentation];
    if (dictionaryRepresentation33)
    {
      [dictionary setObject:dictionaryRepresentation33 forKeyedSubscript:@"marrsMentionResolverEndedTier1"];
    }

    else
    {
      null33 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null33 forKeyedSubscript:@"marrsMentionResolverEndedTier1"];
    }
  }

  if (self->_marrsQueryRewriteContext)
  {
    marrsQueryRewriteContext = [(NLXSchemaNLXClientEvent *)self marrsQueryRewriteContext];
    dictionaryRepresentation34 = [marrsQueryRewriteContext dictionaryRepresentation];
    if (dictionaryRepresentation34)
    {
      [dictionary setObject:dictionaryRepresentation34 forKeyedSubscript:@"marrsQueryRewriteContext"];
    }

    else
    {
      null34 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null34 forKeyedSubscript:@"marrsQueryRewriteContext"];
    }
  }

  if (self->_marrsQueryRewriteEvaluatedTier1)
  {
    marrsQueryRewriteEvaluatedTier1 = [(NLXSchemaNLXClientEvent *)self marrsQueryRewriteEvaluatedTier1];
    dictionaryRepresentation35 = [marrsQueryRewriteEvaluatedTier1 dictionaryRepresentation];
    if (dictionaryRepresentation35)
    {
      [dictionary setObject:dictionaryRepresentation35 forKeyedSubscript:@"marrsQueryRewriteEvaluatedTier1"];
    }

    else
    {
      null35 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null35 forKeyedSubscript:@"marrsQueryRewriteEvaluatedTier1"];
    }
  }

  if (self->_marrsRepetitionDetectionContext)
  {
    marrsRepetitionDetectionContext = [(NLXSchemaNLXClientEvent *)self marrsRepetitionDetectionContext];
    dictionaryRepresentation36 = [marrsRepetitionDetectionContext dictionaryRepresentation];
    if (dictionaryRepresentation36)
    {
      [dictionary setObject:dictionaryRepresentation36 forKeyedSubscript:@"marrsRepetitionDetectionContext"];
    }

    else
    {
      null36 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null36 forKeyedSubscript:@"marrsRepetitionDetectionContext"];
    }
  }

  if (self->_milAssetAcquisitionContext)
  {
    milAssetAcquisitionContext = [(NLXSchemaNLXClientEvent *)self milAssetAcquisitionContext];
    dictionaryRepresentation37 = [milAssetAcquisitionContext dictionaryRepresentation];
    if (dictionaryRepresentation37)
    {
      [dictionary setObject:dictionaryRepresentation37 forKeyedSubscript:@"milAssetAcquisitionContext"];
    }

    else
    {
      null37 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null37 forKeyedSubscript:@"milAssetAcquisitionContext"];
    }
  }

  if (self->_nlxCurareContext)
  {
    nlxCurareContext = [(NLXSchemaNLXClientEvent *)self nlxCurareContext];
    dictionaryRepresentation38 = [nlxCurareContext dictionaryRepresentation];
    if (dictionaryRepresentation38)
    {
      [dictionary setObject:dictionaryRepresentation38 forKeyedSubscript:@"nlxCurareContext"];
    }

    else
    {
      null38 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null38 forKeyedSubscript:@"nlxCurareContext"];
    }
  }

  if (self->_nlxDeviceFixedContext)
  {
    nlxDeviceFixedContext = [(NLXSchemaNLXClientEvent *)self nlxDeviceFixedContext];
    dictionaryRepresentation39 = [nlxDeviceFixedContext dictionaryRepresentation];
    if (dictionaryRepresentation39)
    {
      [dictionary setObject:dictionaryRepresentation39 forKeyedSubscript:@"nlxDeviceFixedContext"];
    }

    else
    {
      null39 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null39 forKeyedSubscript:@"nlxDeviceFixedContext"];
    }
  }

  if (self->_nlxLegacyNLContextTier1)
  {
    nlxLegacyNLContextTier1 = [(NLXSchemaNLXClientEvent *)self nlxLegacyNLContextTier1];
    dictionaryRepresentation40 = [nlxLegacyNLContextTier1 dictionaryRepresentation];
    if (dictionaryRepresentation40)
    {
      [dictionary setObject:dictionaryRepresentation40 forKeyedSubscript:@"nlxLegacyNLContextTier1"];
    }

    else
    {
      null40 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null40 forKeyedSubscript:@"nlxLegacyNLContextTier1"];
    }
  }

  if (self->_ssuBackgroundRequestContext)
  {
    ssuBackgroundRequestContext = [(NLXSchemaNLXClientEvent *)self ssuBackgroundRequestContext];
    dictionaryRepresentation41 = [ssuBackgroundRequestContext dictionaryRepresentation];
    if (dictionaryRepresentation41)
    {
      [dictionary setObject:dictionaryRepresentation41 forKeyedSubscript:@"ssuBackgroundRequestContext"];
    }

    else
    {
      null41 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null41 forKeyedSubscript:@"ssuBackgroundRequestContext"];
    }
  }

  if (self->_ssuUserRequestContext)
  {
    ssuUserRequestContext = [(NLXSchemaNLXClientEvent *)self ssuUserRequestContext];
    dictionaryRepresentation42 = [ssuUserRequestContext dictionaryRepresentation];
    if (dictionaryRepresentation42)
    {
      [dictionary setObject:dictionaryRepresentation42 forKeyedSubscript:@"ssuUserRequestContext"];
    }

    else
    {
      null42 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null42 forKeyedSubscript:@"ssuUserRequestContext"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];
  v130 = dictionary;

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_213;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [equalCopy whichEvent_Type])
  {
    goto LABEL_213;
  }

  eventMetadata = [(NLXSchemaNLXClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  eventMetadata3 = [(NLXSchemaNLXClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(NLXSchemaNLXClientEvent *)self eventMetadata];
    eventMetadata5 = [equalCopy eventMetadata];
    v12 = [eventMetadata4 isEqual:eventMetadata5];

    if (!v12)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(NLXSchemaNLXClientEvent *)self cdmServiceContext];
  eventMetadata2 = [equalCopy cdmServiceContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  cdmServiceContext = [(NLXSchemaNLXClientEvent *)self cdmServiceContext];
  if (cdmServiceContext)
  {
    v14 = cdmServiceContext;
    cdmServiceContext2 = [(NLXSchemaNLXClientEvent *)self cdmServiceContext];
    cdmServiceContext3 = [equalCopy cdmServiceContext];
    v17 = [cdmServiceContext2 isEqual:cdmServiceContext3];

    if (!v17)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(NLXSchemaNLXClientEvent *)self cdmRequestContext];
  eventMetadata2 = [equalCopy cdmRequestContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  cdmRequestContext = [(NLXSchemaNLXClientEvent *)self cdmRequestContext];
  if (cdmRequestContext)
  {
    v19 = cdmRequestContext;
    cdmRequestContext2 = [(NLXSchemaNLXClientEvent *)self cdmRequestContext];
    cdmRequestContext3 = [equalCopy cdmRequestContext];
    v22 = [cdmRequestContext2 isEqual:cdmRequestContext3];

    if (!v22)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(NLXSchemaNLXClientEvent *)self nlxDeviceFixedContext];
  eventMetadata2 = [equalCopy nlxDeviceFixedContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  nlxDeviceFixedContext = [(NLXSchemaNLXClientEvent *)self nlxDeviceFixedContext];
  if (nlxDeviceFixedContext)
  {
    v24 = nlxDeviceFixedContext;
    nlxDeviceFixedContext2 = [(NLXSchemaNLXClientEvent *)self nlxDeviceFixedContext];
    nlxDeviceFixedContext3 = [equalCopy nlxDeviceFixedContext];
    v27 = [nlxDeviceFixedContext2 isEqual:nlxDeviceFixedContext3];

    if (!v27)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(NLXSchemaNLXClientEvent *)self cdmMatchingSpanEnded];
  eventMetadata2 = [equalCopy cdmMatchingSpanEnded];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  cdmMatchingSpanEnded = [(NLXSchemaNLXClientEvent *)self cdmMatchingSpanEnded];
  if (cdmMatchingSpanEnded)
  {
    v29 = cdmMatchingSpanEnded;
    cdmMatchingSpanEnded2 = [(NLXSchemaNLXClientEvent *)self cdmMatchingSpanEnded];
    cdmMatchingSpanEnded3 = [equalCopy cdmMatchingSpanEnded];
    v32 = [cdmMatchingSpanEnded2 isEqual:cdmMatchingSpanEnded3];

    if (!v32)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(NLXSchemaNLXClientEvent *)self cdmUsoGraphTier1];
  eventMetadata2 = [equalCopy cdmUsoGraphTier1];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  cdmUsoGraphTier1 = [(NLXSchemaNLXClientEvent *)self cdmUsoGraphTier1];
  if (cdmUsoGraphTier1)
  {
    v34 = cdmUsoGraphTier1;
    cdmUsoGraphTier12 = [(NLXSchemaNLXClientEvent *)self cdmUsoGraphTier1];
    cdmUsoGraphTier13 = [equalCopy cdmUsoGraphTier1];
    v37 = [cdmUsoGraphTier12 isEqual:cdmUsoGraphTier13];

    if (!v37)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(NLXSchemaNLXClientEvent *)self cdmMatchingSpanTier1];
  eventMetadata2 = [equalCopy cdmMatchingSpanTier1];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  cdmMatchingSpanTier1 = [(NLXSchemaNLXClientEvent *)self cdmMatchingSpanTier1];
  if (cdmMatchingSpanTier1)
  {
    v39 = cdmMatchingSpanTier1;
    cdmMatchingSpanTier12 = [(NLXSchemaNLXClientEvent *)self cdmMatchingSpanTier1];
    cdmMatchingSpanTier13 = [equalCopy cdmMatchingSpanTier1];
    v42 = [cdmMatchingSpanTier12 isEqual:cdmMatchingSpanTier13];

    if (!v42)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(NLXSchemaNLXClientEvent *)self nlxLegacyNLContextTier1];
  eventMetadata2 = [equalCopy nlxLegacyNLContextTier1];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  nlxLegacyNLContextTier1 = [(NLXSchemaNLXClientEvent *)self nlxLegacyNLContextTier1];
  if (nlxLegacyNLContextTier1)
  {
    v44 = nlxLegacyNLContextTier1;
    nlxLegacyNLContextTier12 = [(NLXSchemaNLXClientEvent *)self nlxLegacyNLContextTier1];
    nlxLegacyNLContextTier13 = [equalCopy nlxLegacyNLContextTier1];
    v47 = [nlxLegacyNLContextTier12 isEqual:nlxLegacyNLContextTier13];

    if (!v47)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(NLXSchemaNLXClientEvent *)self cdmDelegatedUserDialogActTier1];
  eventMetadata2 = [equalCopy cdmDelegatedUserDialogActTier1];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  cdmDelegatedUserDialogActTier1 = [(NLXSchemaNLXClientEvent *)self cdmDelegatedUserDialogActTier1];
  if (cdmDelegatedUserDialogActTier1)
  {
    v49 = cdmDelegatedUserDialogActTier1;
    cdmDelegatedUserDialogActTier12 = [(NLXSchemaNLXClientEvent *)self cdmDelegatedUserDialogActTier1];
    cdmDelegatedUserDialogActTier13 = [equalCopy cdmDelegatedUserDialogActTier1];
    v52 = [cdmDelegatedUserDialogActTier12 isEqual:cdmDelegatedUserDialogActTier13];

    if (!v52)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(NLXSchemaNLXClientEvent *)self cdmSystemDialogActTier1];
  eventMetadata2 = [equalCopy cdmSystemDialogActTier1];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  cdmSystemDialogActTier1 = [(NLXSchemaNLXClientEvent *)self cdmSystemDialogActTier1];
  if (cdmSystemDialogActTier1)
  {
    v54 = cdmSystemDialogActTier1;
    cdmSystemDialogActTier12 = [(NLXSchemaNLXClientEvent *)self cdmSystemDialogActTier1];
    cdmSystemDialogActTier13 = [equalCopy cdmSystemDialogActTier1];
    v57 = [cdmSystemDialogActTier12 isEqual:cdmSystemDialogActTier13];

    if (!v57)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(NLXSchemaNLXClientEvent *)self cdmTokenizationEnded];
  eventMetadata2 = [equalCopy cdmTokenizationEnded];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  cdmTokenizationEnded = [(NLXSchemaNLXClientEvent *)self cdmTokenizationEnded];
  if (cdmTokenizationEnded)
  {
    v59 = cdmTokenizationEnded;
    cdmTokenizationEnded2 = [(NLXSchemaNLXClientEvent *)self cdmTokenizationEnded];
    cdmTokenizationEnded3 = [equalCopy cdmTokenizationEnded];
    v62 = [cdmTokenizationEnded2 isEqual:cdmTokenizationEnded3];

    if (!v62)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(NLXSchemaNLXClientEvent *)self cdmContextUpdateEnded];
  eventMetadata2 = [equalCopy cdmContextUpdateEnded];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  cdmContextUpdateEnded = [(NLXSchemaNLXClientEvent *)self cdmContextUpdateEnded];
  if (cdmContextUpdateEnded)
  {
    v64 = cdmContextUpdateEnded;
    cdmContextUpdateEnded2 = [(NLXSchemaNLXClientEvent *)self cdmContextUpdateEnded];
    cdmContextUpdateEnded3 = [equalCopy cdmContextUpdateEnded];
    v67 = [cdmContextUpdateEnded2 isEqual:cdmContextUpdateEnded3];

    if (!v67)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(NLXSchemaNLXClientEvent *)self marrsRepetitionDetectionContext];
  eventMetadata2 = [equalCopy marrsRepetitionDetectionContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  marrsRepetitionDetectionContext = [(NLXSchemaNLXClientEvent *)self marrsRepetitionDetectionContext];
  if (marrsRepetitionDetectionContext)
  {
    v69 = marrsRepetitionDetectionContext;
    marrsRepetitionDetectionContext2 = [(NLXSchemaNLXClientEvent *)self marrsRepetitionDetectionContext];
    marrsRepetitionDetectionContext3 = [equalCopy marrsRepetitionDetectionContext];
    v72 = [marrsRepetitionDetectionContext2 isEqual:marrsRepetitionDetectionContext3];

    if (!v72)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(NLXSchemaNLXClientEvent *)self marrsQueryRewriteContext];
  eventMetadata2 = [equalCopy marrsQueryRewriteContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  marrsQueryRewriteContext = [(NLXSchemaNLXClientEvent *)self marrsQueryRewriteContext];
  if (marrsQueryRewriteContext)
  {
    v74 = marrsQueryRewriteContext;
    marrsQueryRewriteContext2 = [(NLXSchemaNLXClientEvent *)self marrsQueryRewriteContext];
    marrsQueryRewriteContext3 = [equalCopy marrsQueryRewriteContext];
    v77 = [marrsQueryRewriteContext2 isEqual:marrsQueryRewriteContext3];

    if (!v77)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(NLXSchemaNLXClientEvent *)self marrsQueryRewriteEvaluatedTier1];
  eventMetadata2 = [equalCopy marrsQueryRewriteEvaluatedTier1];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  marrsQueryRewriteEvaluatedTier1 = [(NLXSchemaNLXClientEvent *)self marrsQueryRewriteEvaluatedTier1];
  if (marrsQueryRewriteEvaluatedTier1)
  {
    v79 = marrsQueryRewriteEvaluatedTier1;
    marrsQueryRewriteEvaluatedTier12 = [(NLXSchemaNLXClientEvent *)self marrsQueryRewriteEvaluatedTier1];
    marrsQueryRewriteEvaluatedTier13 = [equalCopy marrsQueryRewriteEvaluatedTier1];
    v82 = [marrsQueryRewriteEvaluatedTier12 isEqual:marrsQueryRewriteEvaluatedTier13];

    if (!v82)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(NLXSchemaNLXClientEvent *)self cdmMatchingSpanEndedTier1];
  eventMetadata2 = [equalCopy cdmMatchingSpanEndedTier1];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  cdmMatchingSpanEndedTier1 = [(NLXSchemaNLXClientEvent *)self cdmMatchingSpanEndedTier1];
  if (cdmMatchingSpanEndedTier1)
  {
    v84 = cdmMatchingSpanEndedTier1;
    cdmMatchingSpanEndedTier12 = [(NLXSchemaNLXClientEvent *)self cdmMatchingSpanEndedTier1];
    cdmMatchingSpanEndedTier13 = [equalCopy cdmMatchingSpanEndedTier1];
    v87 = [cdmMatchingSpanEndedTier12 isEqual:cdmMatchingSpanEndedTier13];

    if (!v87)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(NLXSchemaNLXClientEvent *)self nlxCurareContext];
  eventMetadata2 = [equalCopy nlxCurareContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  nlxCurareContext = [(NLXSchemaNLXClientEvent *)self nlxCurareContext];
  if (nlxCurareContext)
  {
    v89 = nlxCurareContext;
    nlxCurareContext2 = [(NLXSchemaNLXClientEvent *)self nlxCurareContext];
    nlxCurareContext3 = [equalCopy nlxCurareContext];
    v92 = [nlxCurareContext2 isEqual:nlxCurareContext3];

    if (!v92)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(NLXSchemaNLXClientEvent *)self marrsMentionDetectorEnded];
  eventMetadata2 = [equalCopy marrsMentionDetectorEnded];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  marrsMentionDetectorEnded = [(NLXSchemaNLXClientEvent *)self marrsMentionDetectorEnded];
  if (marrsMentionDetectorEnded)
  {
    v94 = marrsMentionDetectorEnded;
    marrsMentionDetectorEnded2 = [(NLXSchemaNLXClientEvent *)self marrsMentionDetectorEnded];
    marrsMentionDetectorEnded3 = [equalCopy marrsMentionDetectorEnded];
    v97 = [marrsMentionDetectorEnded2 isEqual:marrsMentionDetectorEnded3];

    if (!v97)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(NLXSchemaNLXClientEvent *)self marrsMentionDetectorEndedTier1];
  eventMetadata2 = [equalCopy marrsMentionDetectorEndedTier1];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  marrsMentionDetectorEndedTier1 = [(NLXSchemaNLXClientEvent *)self marrsMentionDetectorEndedTier1];
  if (marrsMentionDetectorEndedTier1)
  {
    v99 = marrsMentionDetectorEndedTier1;
    marrsMentionDetectorEndedTier12 = [(NLXSchemaNLXClientEvent *)self marrsMentionDetectorEndedTier1];
    marrsMentionDetectorEndedTier13 = [equalCopy marrsMentionDetectorEndedTier1];
    v102 = [marrsMentionDetectorEndedTier12 isEqual:marrsMentionDetectorEndedTier13];

    if (!v102)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(NLXSchemaNLXClientEvent *)self marrsMentionResolverEnded];
  eventMetadata2 = [equalCopy marrsMentionResolverEnded];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  marrsMentionResolverEnded = [(NLXSchemaNLXClientEvent *)self marrsMentionResolverEnded];
  if (marrsMentionResolverEnded)
  {
    v104 = marrsMentionResolverEnded;
    marrsMentionResolverEnded2 = [(NLXSchemaNLXClientEvent *)self marrsMentionResolverEnded];
    marrsMentionResolverEnded3 = [equalCopy marrsMentionResolverEnded];
    v107 = [marrsMentionResolverEnded2 isEqual:marrsMentionResolverEnded3];

    if (!v107)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(NLXSchemaNLXClientEvent *)self marrsMentionResolverEndedTier1];
  eventMetadata2 = [equalCopy marrsMentionResolverEndedTier1];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  marrsMentionResolverEndedTier1 = [(NLXSchemaNLXClientEvent *)self marrsMentionResolverEndedTier1];
  if (marrsMentionResolverEndedTier1)
  {
    v109 = marrsMentionResolverEndedTier1;
    marrsMentionResolverEndedTier12 = [(NLXSchemaNLXClientEvent *)self marrsMentionResolverEndedTier1];
    marrsMentionResolverEndedTier13 = [equalCopy marrsMentionResolverEndedTier1];
    v112 = [marrsMentionResolverEndedTier12 isEqual:marrsMentionResolverEndedTier13];

    if (!v112)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(NLXSchemaNLXClientEvent *)self cdmClientSetupContext];
  eventMetadata2 = [equalCopy cdmClientSetupContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  cdmClientSetupContext = [(NLXSchemaNLXClientEvent *)self cdmClientSetupContext];
  if (cdmClientSetupContext)
  {
    v114 = cdmClientSetupContext;
    cdmClientSetupContext2 = [(NLXSchemaNLXClientEvent *)self cdmClientSetupContext];
    cdmClientSetupContext3 = [equalCopy cdmClientSetupContext];
    v117 = [cdmClientSetupContext2 isEqual:cdmClientSetupContext3];

    if (!v117)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(NLXSchemaNLXClientEvent *)self cdmAllServicesSetupContext];
  eventMetadata2 = [equalCopy cdmAllServicesSetupContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  cdmAllServicesSetupContext = [(NLXSchemaNLXClientEvent *)self cdmAllServicesSetupContext];
  if (cdmAllServicesSetupContext)
  {
    v119 = cdmAllServicesSetupContext;
    cdmAllServicesSetupContext2 = [(NLXSchemaNLXClientEvent *)self cdmAllServicesSetupContext];
    cdmAllServicesSetupContext3 = [equalCopy cdmAllServicesSetupContext];
    v122 = [cdmAllServicesSetupContext2 isEqual:cdmAllServicesSetupContext3];

    if (!v122)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(NLXSchemaNLXClientEvent *)self cdmSingleServiceSetupAttemptContext];
  eventMetadata2 = [equalCopy cdmSingleServiceSetupAttemptContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  cdmSingleServiceSetupAttemptContext = [(NLXSchemaNLXClientEvent *)self cdmSingleServiceSetupAttemptContext];
  if (cdmSingleServiceSetupAttemptContext)
  {
    v124 = cdmSingleServiceSetupAttemptContext;
    cdmSingleServiceSetupAttemptContext2 = [(NLXSchemaNLXClientEvent *)self cdmSingleServiceSetupAttemptContext];
    cdmSingleServiceSetupAttemptContext3 = [equalCopy cdmSingleServiceSetupAttemptContext];
    v127 = [cdmSingleServiceSetupAttemptContext2 isEqual:cdmSingleServiceSetupAttemptContext3];

    if (!v127)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(NLXSchemaNLXClientEvent *)self cdmSingleServiceSetupAttemptFailed];
  eventMetadata2 = [equalCopy cdmSingleServiceSetupAttemptFailed];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  cdmSingleServiceSetupAttemptFailed = [(NLXSchemaNLXClientEvent *)self cdmSingleServiceSetupAttemptFailed];
  if (cdmSingleServiceSetupAttemptFailed)
  {
    v129 = cdmSingleServiceSetupAttemptFailed;
    cdmSingleServiceSetupAttemptFailed2 = [(NLXSchemaNLXClientEvent *)self cdmSingleServiceSetupAttemptFailed];
    cdmSingleServiceSetupAttemptFailed3 = [equalCopy cdmSingleServiceSetupAttemptFailed];
    v132 = [cdmSingleServiceSetupAttemptFailed2 isEqual:cdmSingleServiceSetupAttemptFailed3];

    if (!v132)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(NLXSchemaNLXClientEvent *)self cdmSpanMatcherContext];
  eventMetadata2 = [equalCopy cdmSpanMatcherContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  cdmSpanMatcherContext = [(NLXSchemaNLXClientEvent *)self cdmSpanMatcherContext];
  if (cdmSpanMatcherContext)
  {
    v134 = cdmSpanMatcherContext;
    cdmSpanMatcherContext2 = [(NLXSchemaNLXClientEvent *)self cdmSpanMatcherContext];
    cdmSpanMatcherContext3 = [equalCopy cdmSpanMatcherContext];
    v137 = [cdmSpanMatcherContext2 isEqual:cdmSpanMatcherContext3];

    if (!v137)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(NLXSchemaNLXClientEvent *)self marrsContextualSpanMatcherEnded];
  eventMetadata2 = [equalCopy marrsContextualSpanMatcherEnded];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  marrsContextualSpanMatcherEnded = [(NLXSchemaNLXClientEvent *)self marrsContextualSpanMatcherEnded];
  if (marrsContextualSpanMatcherEnded)
  {
    v139 = marrsContextualSpanMatcherEnded;
    marrsContextualSpanMatcherEnded2 = [(NLXSchemaNLXClientEvent *)self marrsContextualSpanMatcherEnded];
    marrsContextualSpanMatcherEnded3 = [equalCopy marrsContextualSpanMatcherEnded];
    v142 = [marrsContextualSpanMatcherEnded2 isEqual:marrsContextualSpanMatcherEnded3];

    if (!v142)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(NLXSchemaNLXClientEvent *)self marrsContextualSpanMatcherEndedTier1];
  eventMetadata2 = [equalCopy marrsContextualSpanMatcherEndedTier1];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  marrsContextualSpanMatcherEndedTier1 = [(NLXSchemaNLXClientEvent *)self marrsContextualSpanMatcherEndedTier1];
  if (marrsContextualSpanMatcherEndedTier1)
  {
    v144 = marrsContextualSpanMatcherEndedTier1;
    marrsContextualSpanMatcherEndedTier12 = [(NLXSchemaNLXClientEvent *)self marrsContextualSpanMatcherEndedTier1];
    marrsContextualSpanMatcherEndedTier13 = [equalCopy marrsContextualSpanMatcherEndedTier1];
    v147 = [marrsContextualSpanMatcherEndedTier12 isEqual:marrsContextualSpanMatcherEndedTier13];

    if (!v147)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(NLXSchemaNLXClientEvent *)self cdmXpcEventProcessingContext];
  eventMetadata2 = [equalCopy cdmXpcEventProcessingContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  cdmXpcEventProcessingContext = [(NLXSchemaNLXClientEvent *)self cdmXpcEventProcessingContext];
  if (cdmXpcEventProcessingContext)
  {
    v149 = cdmXpcEventProcessingContext;
    cdmXpcEventProcessingContext2 = [(NLXSchemaNLXClientEvent *)self cdmXpcEventProcessingContext];
    cdmXpcEventProcessingContext3 = [equalCopy cdmXpcEventProcessingContext];
    v152 = [cdmXpcEventProcessingContext2 isEqual:cdmXpcEventProcessingContext3];

    if (!v152)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(NLXSchemaNLXClientEvent *)self cdmAssetSetupContext];
  eventMetadata2 = [equalCopy cdmAssetSetupContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  cdmAssetSetupContext = [(NLXSchemaNLXClientEvent *)self cdmAssetSetupContext];
  if (cdmAssetSetupContext)
  {
    v154 = cdmAssetSetupContext;
    cdmAssetSetupContext2 = [(NLXSchemaNLXClientEvent *)self cdmAssetSetupContext];
    cdmAssetSetupContext3 = [equalCopy cdmAssetSetupContext];
    v157 = [cdmAssetSetupContext2 isEqual:cdmAssetSetupContext3];

    if (!v157)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(NLXSchemaNLXClientEvent *)self cdmSetupMissingAssetsDetected];
  eventMetadata2 = [equalCopy cdmSetupMissingAssetsDetected];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  cdmSetupMissingAssetsDetected = [(NLXSchemaNLXClientEvent *)self cdmSetupMissingAssetsDetected];
  if (cdmSetupMissingAssetsDetected)
  {
    v159 = cdmSetupMissingAssetsDetected;
    cdmSetupMissingAssetsDetected2 = [(NLXSchemaNLXClientEvent *)self cdmSetupMissingAssetsDetected];
    cdmSetupMissingAssetsDetected3 = [equalCopy cdmSetupMissingAssetsDetected];
    v162 = [cdmSetupMissingAssetsDetected2 isEqual:cdmSetupMissingAssetsDetected3];

    if (!v162)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(NLXSchemaNLXClientEvent *)self cdmClientWarmupContext];
  eventMetadata2 = [equalCopy cdmClientWarmupContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  cdmClientWarmupContext = [(NLXSchemaNLXClientEvent *)self cdmClientWarmupContext];
  if (cdmClientWarmupContext)
  {
    v164 = cdmClientWarmupContext;
    cdmClientWarmupContext2 = [(NLXSchemaNLXClientEvent *)self cdmClientWarmupContext];
    cdmClientWarmupContext3 = [equalCopy cdmClientWarmupContext];
    v167 = [cdmClientWarmupContext2 isEqual:cdmClientWarmupContext3];

    if (!v167)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(NLXSchemaNLXClientEvent *)self cdmAllServicesWarmupContext];
  eventMetadata2 = [equalCopy cdmAllServicesWarmupContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  cdmAllServicesWarmupContext = [(NLXSchemaNLXClientEvent *)self cdmAllServicesWarmupContext];
  if (cdmAllServicesWarmupContext)
  {
    v169 = cdmAllServicesWarmupContext;
    cdmAllServicesWarmupContext2 = [(NLXSchemaNLXClientEvent *)self cdmAllServicesWarmupContext];
    cdmAllServicesWarmupContext3 = [equalCopy cdmAllServicesWarmupContext];
    v172 = [cdmAllServicesWarmupContext2 isEqual:cdmAllServicesWarmupContext3];

    if (!v172)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(NLXSchemaNLXClientEvent *)self cdmSingleServiceWarmupAttemptContext];
  eventMetadata2 = [equalCopy cdmSingleServiceWarmupAttemptContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  cdmSingleServiceWarmupAttemptContext = [(NLXSchemaNLXClientEvent *)self cdmSingleServiceWarmupAttemptContext];
  if (cdmSingleServiceWarmupAttemptContext)
  {
    v174 = cdmSingleServiceWarmupAttemptContext;
    cdmSingleServiceWarmupAttemptContext2 = [(NLXSchemaNLXClientEvent *)self cdmSingleServiceWarmupAttemptContext];
    cdmSingleServiceWarmupAttemptContext3 = [equalCopy cdmSingleServiceWarmupAttemptContext];
    v177 = [cdmSingleServiceWarmupAttemptContext2 isEqual:cdmSingleServiceWarmupAttemptContext3];

    if (!v177)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(NLXSchemaNLXClientEvent *)self cdmSingleServiceWarmupAttemptFailed];
  eventMetadata2 = [equalCopy cdmSingleServiceWarmupAttemptFailed];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  cdmSingleServiceWarmupAttemptFailed = [(NLXSchemaNLXClientEvent *)self cdmSingleServiceWarmupAttemptFailed];
  if (cdmSingleServiceWarmupAttemptFailed)
  {
    v179 = cdmSingleServiceWarmupAttemptFailed;
    cdmSingleServiceWarmupAttemptFailed2 = [(NLXSchemaNLXClientEvent *)self cdmSingleServiceWarmupAttemptFailed];
    cdmSingleServiceWarmupAttemptFailed3 = [equalCopy cdmSingleServiceWarmupAttemptFailed];
    v182 = [cdmSingleServiceWarmupAttemptFailed2 isEqual:cdmSingleServiceWarmupAttemptFailed3];

    if (!v182)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(NLXSchemaNLXClientEvent *)self cdmAssetsReported];
  eventMetadata2 = [equalCopy cdmAssetsReported];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  cdmAssetsReported = [(NLXSchemaNLXClientEvent *)self cdmAssetsReported];
  if (cdmAssetsReported)
  {
    v184 = cdmAssetsReported;
    cdmAssetsReported2 = [(NLXSchemaNLXClientEvent *)self cdmAssetsReported];
    cdmAssetsReported3 = [equalCopy cdmAssetsReported];
    v187 = [cdmAssetsReported2 isEqual:cdmAssetsReported3];

    if (!v187)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(NLXSchemaNLXClientEvent *)self ssuUserRequestContext];
  eventMetadata2 = [equalCopy ssuUserRequestContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  ssuUserRequestContext = [(NLXSchemaNLXClientEvent *)self ssuUserRequestContext];
  if (ssuUserRequestContext)
  {
    v189 = ssuUserRequestContext;
    ssuUserRequestContext2 = [(NLXSchemaNLXClientEvent *)self ssuUserRequestContext];
    ssuUserRequestContext3 = [equalCopy ssuUserRequestContext];
    v192 = [ssuUserRequestContext2 isEqual:ssuUserRequestContext3];

    if (!v192)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(NLXSchemaNLXClientEvent *)self ssuBackgroundRequestContext];
  eventMetadata2 = [equalCopy ssuBackgroundRequestContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  ssuBackgroundRequestContext = [(NLXSchemaNLXClientEvent *)self ssuBackgroundRequestContext];
  if (ssuBackgroundRequestContext)
  {
    v194 = ssuBackgroundRequestContext;
    ssuBackgroundRequestContext2 = [(NLXSchemaNLXClientEvent *)self ssuBackgroundRequestContext];
    ssuBackgroundRequestContext3 = [equalCopy ssuBackgroundRequestContext];
    v197 = [ssuBackgroundRequestContext2 isEqual:ssuBackgroundRequestContext3];

    if (!v197)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(NLXSchemaNLXClientEvent *)self cdmServiceHandleMetricsReported];
  eventMetadata2 = [equalCopy cdmServiceHandleMetricsReported];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  cdmServiceHandleMetricsReported = [(NLXSchemaNLXClientEvent *)self cdmServiceHandleMetricsReported];
  if (cdmServiceHandleMetricsReported)
  {
    v199 = cdmServiceHandleMetricsReported;
    cdmServiceHandleMetricsReported2 = [(NLXSchemaNLXClientEvent *)self cdmServiceHandleMetricsReported];
    cdmServiceHandleMetricsReported3 = [equalCopy cdmServiceHandleMetricsReported];
    v202 = [cdmServiceHandleMetricsReported2 isEqual:cdmServiceHandleMetricsReported3];

    if (!v202)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(NLXSchemaNLXClientEvent *)self cdmServiceSetupMetricsReported];
  eventMetadata2 = [equalCopy cdmServiceSetupMetricsReported];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  cdmServiceSetupMetricsReported = [(NLXSchemaNLXClientEvent *)self cdmServiceSetupMetricsReported];
  if (cdmServiceSetupMetricsReported)
  {
    v204 = cdmServiceSetupMetricsReported;
    cdmServiceSetupMetricsReported2 = [(NLXSchemaNLXClientEvent *)self cdmServiceSetupMetricsReported];
    cdmServiceSetupMetricsReported3 = [equalCopy cdmServiceSetupMetricsReported];
    v207 = [cdmServiceSetupMetricsReported2 isEqual:cdmServiceSetupMetricsReported3];

    if (!v207)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(NLXSchemaNLXClientEvent *)self milAssetAcquisitionContext];
  eventMetadata2 = [equalCopy milAssetAcquisitionContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  milAssetAcquisitionContext = [(NLXSchemaNLXClientEvent *)self milAssetAcquisitionContext];
  if (milAssetAcquisitionContext)
  {
    v209 = milAssetAcquisitionContext;
    milAssetAcquisitionContext2 = [(NLXSchemaNLXClientEvent *)self milAssetAcquisitionContext];
    milAssetAcquisitionContext3 = [equalCopy milAssetAcquisitionContext];
    v212 = [milAssetAcquisitionContext2 isEqual:milAssetAcquisitionContext3];

    if (!v212)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(NLXSchemaNLXClientEvent *)self cdmSetupLink];
  eventMetadata2 = [equalCopy cdmSetupLink];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    cdmSetupLink = [(NLXSchemaNLXClientEvent *)self cdmSetupLink];
    if (!cdmSetupLink)
    {

LABEL_216:
      v218 = 1;
      goto LABEL_214;
    }

    v214 = cdmSetupLink;
    cdmSetupLink2 = [(NLXSchemaNLXClientEvent *)self cdmSetupLink];
    cdmSetupLink3 = [equalCopy cdmSetupLink];
    v217 = [cdmSetupLink2 isEqual:cdmSetupLink3];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  eventMetadata = [(NLXSchemaNLXClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(NLXSchemaNLXClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  cdmServiceContext = [(NLXSchemaNLXClientEvent *)self cdmServiceContext];

  if (cdmServiceContext)
  {
    cdmServiceContext2 = [(NLXSchemaNLXClientEvent *)self cdmServiceContext];
    PBDataWriterWriteSubmessage();
  }

  cdmRequestContext = [(NLXSchemaNLXClientEvent *)self cdmRequestContext];

  if (cdmRequestContext)
  {
    cdmRequestContext2 = [(NLXSchemaNLXClientEvent *)self cdmRequestContext];
    PBDataWriterWriteSubmessage();
  }

  nlxDeviceFixedContext = [(NLXSchemaNLXClientEvent *)self nlxDeviceFixedContext];

  if (nlxDeviceFixedContext)
  {
    nlxDeviceFixedContext2 = [(NLXSchemaNLXClientEvent *)self nlxDeviceFixedContext];
    PBDataWriterWriteSubmessage();
  }

  cdmMatchingSpanEnded = [(NLXSchemaNLXClientEvent *)self cdmMatchingSpanEnded];

  if (cdmMatchingSpanEnded)
  {
    cdmMatchingSpanEnded2 = [(NLXSchemaNLXClientEvent *)self cdmMatchingSpanEnded];
    PBDataWriterWriteSubmessage();
  }

  cdmUsoGraphTier1 = [(NLXSchemaNLXClientEvent *)self cdmUsoGraphTier1];

  if (cdmUsoGraphTier1)
  {
    cdmUsoGraphTier12 = [(NLXSchemaNLXClientEvent *)self cdmUsoGraphTier1];
    PBDataWriterWriteSubmessage();
  }

  cdmMatchingSpanTier1 = [(NLXSchemaNLXClientEvent *)self cdmMatchingSpanTier1];

  if (cdmMatchingSpanTier1)
  {
    cdmMatchingSpanTier12 = [(NLXSchemaNLXClientEvent *)self cdmMatchingSpanTier1];
    PBDataWriterWriteSubmessage();
  }

  nlxLegacyNLContextTier1 = [(NLXSchemaNLXClientEvent *)self nlxLegacyNLContextTier1];

  if (nlxLegacyNLContextTier1)
  {
    nlxLegacyNLContextTier12 = [(NLXSchemaNLXClientEvent *)self nlxLegacyNLContextTier1];
    PBDataWriterWriteSubmessage();
  }

  cdmDelegatedUserDialogActTier1 = [(NLXSchemaNLXClientEvent *)self cdmDelegatedUserDialogActTier1];

  if (cdmDelegatedUserDialogActTier1)
  {
    cdmDelegatedUserDialogActTier12 = [(NLXSchemaNLXClientEvent *)self cdmDelegatedUserDialogActTier1];
    PBDataWriterWriteSubmessage();
  }

  cdmSystemDialogActTier1 = [(NLXSchemaNLXClientEvent *)self cdmSystemDialogActTier1];

  if (cdmSystemDialogActTier1)
  {
    cdmSystemDialogActTier12 = [(NLXSchemaNLXClientEvent *)self cdmSystemDialogActTier1];
    PBDataWriterWriteSubmessage();
  }

  cdmTokenizationEnded = [(NLXSchemaNLXClientEvent *)self cdmTokenizationEnded];

  if (cdmTokenizationEnded)
  {
    cdmTokenizationEnded2 = [(NLXSchemaNLXClientEvent *)self cdmTokenizationEnded];
    PBDataWriterWriteSubmessage();
  }

  cdmContextUpdateEnded = [(NLXSchemaNLXClientEvent *)self cdmContextUpdateEnded];

  if (cdmContextUpdateEnded)
  {
    cdmContextUpdateEnded2 = [(NLXSchemaNLXClientEvent *)self cdmContextUpdateEnded];
    PBDataWriterWriteSubmessage();
  }

  marrsRepetitionDetectionContext = [(NLXSchemaNLXClientEvent *)self marrsRepetitionDetectionContext];

  if (marrsRepetitionDetectionContext)
  {
    marrsRepetitionDetectionContext2 = [(NLXSchemaNLXClientEvent *)self marrsRepetitionDetectionContext];
    PBDataWriterWriteSubmessage();
  }

  marrsQueryRewriteContext = [(NLXSchemaNLXClientEvent *)self marrsQueryRewriteContext];

  if (marrsQueryRewriteContext)
  {
    marrsQueryRewriteContext2 = [(NLXSchemaNLXClientEvent *)self marrsQueryRewriteContext];
    PBDataWriterWriteSubmessage();
  }

  marrsQueryRewriteEvaluatedTier1 = [(NLXSchemaNLXClientEvent *)self marrsQueryRewriteEvaluatedTier1];

  if (marrsQueryRewriteEvaluatedTier1)
  {
    marrsQueryRewriteEvaluatedTier12 = [(NLXSchemaNLXClientEvent *)self marrsQueryRewriteEvaluatedTier1];
    PBDataWriterWriteSubmessage();
  }

  cdmMatchingSpanEndedTier1 = [(NLXSchemaNLXClientEvent *)self cdmMatchingSpanEndedTier1];

  if (cdmMatchingSpanEndedTier1)
  {
    cdmMatchingSpanEndedTier12 = [(NLXSchemaNLXClientEvent *)self cdmMatchingSpanEndedTier1];
    PBDataWriterWriteSubmessage();
  }

  nlxCurareContext = [(NLXSchemaNLXClientEvent *)self nlxCurareContext];

  if (nlxCurareContext)
  {
    nlxCurareContext2 = [(NLXSchemaNLXClientEvent *)self nlxCurareContext];
    PBDataWriterWriteSubmessage();
  }

  marrsMentionDetectorEnded = [(NLXSchemaNLXClientEvent *)self marrsMentionDetectorEnded];

  if (marrsMentionDetectorEnded)
  {
    marrsMentionDetectorEnded2 = [(NLXSchemaNLXClientEvent *)self marrsMentionDetectorEnded];
    PBDataWriterWriteSubmessage();
  }

  marrsMentionDetectorEndedTier1 = [(NLXSchemaNLXClientEvent *)self marrsMentionDetectorEndedTier1];

  if (marrsMentionDetectorEndedTier1)
  {
    marrsMentionDetectorEndedTier12 = [(NLXSchemaNLXClientEvent *)self marrsMentionDetectorEndedTier1];
    PBDataWriterWriteSubmessage();
  }

  marrsMentionResolverEnded = [(NLXSchemaNLXClientEvent *)self marrsMentionResolverEnded];

  if (marrsMentionResolverEnded)
  {
    marrsMentionResolverEnded2 = [(NLXSchemaNLXClientEvent *)self marrsMentionResolverEnded];
    PBDataWriterWriteSubmessage();
  }

  marrsMentionResolverEndedTier1 = [(NLXSchemaNLXClientEvent *)self marrsMentionResolverEndedTier1];

  if (marrsMentionResolverEndedTier1)
  {
    marrsMentionResolverEndedTier12 = [(NLXSchemaNLXClientEvent *)self marrsMentionResolverEndedTier1];
    PBDataWriterWriteSubmessage();
  }

  cdmClientSetupContext = [(NLXSchemaNLXClientEvent *)self cdmClientSetupContext];

  if (cdmClientSetupContext)
  {
    cdmClientSetupContext2 = [(NLXSchemaNLXClientEvent *)self cdmClientSetupContext];
    PBDataWriterWriteSubmessage();
  }

  cdmAllServicesSetupContext = [(NLXSchemaNLXClientEvent *)self cdmAllServicesSetupContext];

  if (cdmAllServicesSetupContext)
  {
    cdmAllServicesSetupContext2 = [(NLXSchemaNLXClientEvent *)self cdmAllServicesSetupContext];
    PBDataWriterWriteSubmessage();
  }

  cdmSingleServiceSetupAttemptContext = [(NLXSchemaNLXClientEvent *)self cdmSingleServiceSetupAttemptContext];

  if (cdmSingleServiceSetupAttemptContext)
  {
    cdmSingleServiceSetupAttemptContext2 = [(NLXSchemaNLXClientEvent *)self cdmSingleServiceSetupAttemptContext];
    PBDataWriterWriteSubmessage();
  }

  cdmSingleServiceSetupAttemptFailed = [(NLXSchemaNLXClientEvent *)self cdmSingleServiceSetupAttemptFailed];

  if (cdmSingleServiceSetupAttemptFailed)
  {
    cdmSingleServiceSetupAttemptFailed2 = [(NLXSchemaNLXClientEvent *)self cdmSingleServiceSetupAttemptFailed];
    PBDataWriterWriteSubmessage();
  }

  cdmSpanMatcherContext = [(NLXSchemaNLXClientEvent *)self cdmSpanMatcherContext];

  if (cdmSpanMatcherContext)
  {
    cdmSpanMatcherContext2 = [(NLXSchemaNLXClientEvent *)self cdmSpanMatcherContext];
    PBDataWriterWriteSubmessage();
  }

  marrsContextualSpanMatcherEnded = [(NLXSchemaNLXClientEvent *)self marrsContextualSpanMatcherEnded];

  if (marrsContextualSpanMatcherEnded)
  {
    marrsContextualSpanMatcherEnded2 = [(NLXSchemaNLXClientEvent *)self marrsContextualSpanMatcherEnded];
    PBDataWriterWriteSubmessage();
  }

  marrsContextualSpanMatcherEndedTier1 = [(NLXSchemaNLXClientEvent *)self marrsContextualSpanMatcherEndedTier1];

  if (marrsContextualSpanMatcherEndedTier1)
  {
    marrsContextualSpanMatcherEndedTier12 = [(NLXSchemaNLXClientEvent *)self marrsContextualSpanMatcherEndedTier1];
    PBDataWriterWriteSubmessage();
  }

  cdmXpcEventProcessingContext = [(NLXSchemaNLXClientEvent *)self cdmXpcEventProcessingContext];

  if (cdmXpcEventProcessingContext)
  {
    cdmXpcEventProcessingContext2 = [(NLXSchemaNLXClientEvent *)self cdmXpcEventProcessingContext];
    PBDataWriterWriteSubmessage();
  }

  cdmAssetSetupContext = [(NLXSchemaNLXClientEvent *)self cdmAssetSetupContext];

  if (cdmAssetSetupContext)
  {
    cdmAssetSetupContext2 = [(NLXSchemaNLXClientEvent *)self cdmAssetSetupContext];
    PBDataWriterWriteSubmessage();
  }

  cdmSetupMissingAssetsDetected = [(NLXSchemaNLXClientEvent *)self cdmSetupMissingAssetsDetected];

  if (cdmSetupMissingAssetsDetected)
  {
    cdmSetupMissingAssetsDetected2 = [(NLXSchemaNLXClientEvent *)self cdmSetupMissingAssetsDetected];
    PBDataWriterWriteSubmessage();
  }

  cdmClientWarmupContext = [(NLXSchemaNLXClientEvent *)self cdmClientWarmupContext];

  if (cdmClientWarmupContext)
  {
    cdmClientWarmupContext2 = [(NLXSchemaNLXClientEvent *)self cdmClientWarmupContext];
    PBDataWriterWriteSubmessage();
  }

  cdmAllServicesWarmupContext = [(NLXSchemaNLXClientEvent *)self cdmAllServicesWarmupContext];

  if (cdmAllServicesWarmupContext)
  {
    cdmAllServicesWarmupContext2 = [(NLXSchemaNLXClientEvent *)self cdmAllServicesWarmupContext];
    PBDataWriterWriteSubmessage();
  }

  cdmSingleServiceWarmupAttemptContext = [(NLXSchemaNLXClientEvent *)self cdmSingleServiceWarmupAttemptContext];

  if (cdmSingleServiceWarmupAttemptContext)
  {
    cdmSingleServiceWarmupAttemptContext2 = [(NLXSchemaNLXClientEvent *)self cdmSingleServiceWarmupAttemptContext];
    PBDataWriterWriteSubmessage();
  }

  cdmSingleServiceWarmupAttemptFailed = [(NLXSchemaNLXClientEvent *)self cdmSingleServiceWarmupAttemptFailed];

  if (cdmSingleServiceWarmupAttemptFailed)
  {
    cdmSingleServiceWarmupAttemptFailed2 = [(NLXSchemaNLXClientEvent *)self cdmSingleServiceWarmupAttemptFailed];
    PBDataWriterWriteSubmessage();
  }

  cdmAssetsReported = [(NLXSchemaNLXClientEvent *)self cdmAssetsReported];

  if (cdmAssetsReported)
  {
    cdmAssetsReported2 = [(NLXSchemaNLXClientEvent *)self cdmAssetsReported];
    PBDataWriterWriteSubmessage();
  }

  ssuUserRequestContext = [(NLXSchemaNLXClientEvent *)self ssuUserRequestContext];

  if (ssuUserRequestContext)
  {
    ssuUserRequestContext2 = [(NLXSchemaNLXClientEvent *)self ssuUserRequestContext];
    PBDataWriterWriteSubmessage();
  }

  ssuBackgroundRequestContext = [(NLXSchemaNLXClientEvent *)self ssuBackgroundRequestContext];

  if (ssuBackgroundRequestContext)
  {
    ssuBackgroundRequestContext2 = [(NLXSchemaNLXClientEvent *)self ssuBackgroundRequestContext];
    PBDataWriterWriteSubmessage();
  }

  cdmServiceHandleMetricsReported = [(NLXSchemaNLXClientEvent *)self cdmServiceHandleMetricsReported];

  if (cdmServiceHandleMetricsReported)
  {
    cdmServiceHandleMetricsReported2 = [(NLXSchemaNLXClientEvent *)self cdmServiceHandleMetricsReported];
    PBDataWriterWriteSubmessage();
  }

  cdmServiceSetupMetricsReported = [(NLXSchemaNLXClientEvent *)self cdmServiceSetupMetricsReported];

  if (cdmServiceSetupMetricsReported)
  {
    cdmServiceSetupMetricsReported2 = [(NLXSchemaNLXClientEvent *)self cdmServiceSetupMetricsReported];
    PBDataWriterWriteSubmessage();
  }

  milAssetAcquisitionContext = [(NLXSchemaNLXClientEvent *)self milAssetAcquisitionContext];

  if (milAssetAcquisitionContext)
  {
    milAssetAcquisitionContext2 = [(NLXSchemaNLXClientEvent *)self milAssetAcquisitionContext];
    PBDataWriterWriteSubmessage();
  }

  cdmSetupLink = [(NLXSchemaNLXClientEvent *)self cdmSetupLink];

  v87 = toCopy;
  if (cdmSetupLink)
  {
    cdmSetupLink2 = [(NLXSchemaNLXClientEvent *)self cdmSetupLink];
    PBDataWriterWriteSubmessage();

    v87 = toCopy;
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

- (void)setCdmSetupLink:(id)link
{
  linkCopy = link;
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
  if (!linkCopy)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  cdmSetupLink = self->_cdmSetupLink;
  self->_cdmSetupLink = linkCopy;
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

- (void)setMilAssetAcquisitionContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  milAssetAcquisitionContext = self->_milAssetAcquisitionContext;
  self->_milAssetAcquisitionContext = contextCopy;
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

- (void)setCdmServiceSetupMetricsReported:(id)reported
{
  reportedCopy = reported;
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
  if (!reportedCopy)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  cdmServiceSetupMetricsReported = self->_cdmServiceSetupMetricsReported;
  self->_cdmServiceSetupMetricsReported = reportedCopy;
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

- (void)setCdmServiceHandleMetricsReported:(id)reported
{
  reportedCopy = reported;
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
  if (!reportedCopy)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  cdmServiceHandleMetricsReported = self->_cdmServiceHandleMetricsReported;
  self->_cdmServiceHandleMetricsReported = reportedCopy;
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

- (void)setSsuBackgroundRequestContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  ssuBackgroundRequestContext = self->_ssuBackgroundRequestContext;
  self->_ssuBackgroundRequestContext = contextCopy;
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

- (void)setSsuUserRequestContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  ssuUserRequestContext = self->_ssuUserRequestContext;
  self->_ssuUserRequestContext = contextCopy;
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

- (void)setCdmAssetsReported:(id)reported
{
  reportedCopy = reported;
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
  if (!reportedCopy)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  cdmAssetsReported = self->_cdmAssetsReported;
  self->_cdmAssetsReported = reportedCopy;
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

- (void)setCdmSingleServiceWarmupAttemptFailed:(id)failed
{
  failedCopy = failed;
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
  if (!failedCopy)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  cdmSingleServiceWarmupAttemptFailed = self->_cdmSingleServiceWarmupAttemptFailed;
  self->_cdmSingleServiceWarmupAttemptFailed = failedCopy;
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

- (void)setCdmSingleServiceWarmupAttemptContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  cdmSingleServiceWarmupAttemptContext = self->_cdmSingleServiceWarmupAttemptContext;
  self->_cdmSingleServiceWarmupAttemptContext = contextCopy;
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

- (void)setCdmAllServicesWarmupContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  cdmAllServicesWarmupContext = self->_cdmAllServicesWarmupContext;
  self->_cdmAllServicesWarmupContext = contextCopy;
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

- (void)setCdmClientWarmupContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  cdmClientWarmupContext = self->_cdmClientWarmupContext;
  self->_cdmClientWarmupContext = contextCopy;
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

- (void)setCdmSetupMissingAssetsDetected:(id)detected
{
  detectedCopy = detected;
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
  if (!detectedCopy)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  cdmSetupMissingAssetsDetected = self->_cdmSetupMissingAssetsDetected;
  self->_cdmSetupMissingAssetsDetected = detectedCopy;
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

- (void)setCdmAssetSetupContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  cdmAssetSetupContext = self->_cdmAssetSetupContext;
  self->_cdmAssetSetupContext = contextCopy;
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

- (void)setCdmXpcEventProcessingContext:(id)context
{
  contextCopy = context;
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

  self->_whichEvent_Type = (contextCopy != 0) << 7;
  cdmXpcEventProcessingContext = self->_cdmXpcEventProcessingContext;
  self->_cdmXpcEventProcessingContext = contextCopy;
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

- (void)setMarrsContextualSpanMatcherEndedTier1:(id)tier1
{
  tier1Copy = tier1;
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
  if (!tier1Copy)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  marrsContextualSpanMatcherEndedTier1 = self->_marrsContextualSpanMatcherEndedTier1;
  self->_marrsContextualSpanMatcherEndedTier1 = tier1Copy;
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

- (void)setMarrsContextualSpanMatcherEnded:(id)ended
{
  endedCopy = ended;
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
  if (!endedCopy)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  marrsContextualSpanMatcherEnded = self->_marrsContextualSpanMatcherEnded;
  self->_marrsContextualSpanMatcherEnded = endedCopy;
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

- (void)setCdmSpanMatcherContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  cdmSpanMatcherContext = self->_cdmSpanMatcherContext;
  self->_cdmSpanMatcherContext = contextCopy;
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

- (void)setCdmSingleServiceSetupAttemptFailed:(id)failed
{
  failedCopy = failed;
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
  if (!failedCopy)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  cdmSingleServiceSetupAttemptFailed = self->_cdmSingleServiceSetupAttemptFailed;
  self->_cdmSingleServiceSetupAttemptFailed = failedCopy;
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

- (void)setCdmSingleServiceSetupAttemptContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  cdmSingleServiceSetupAttemptContext = self->_cdmSingleServiceSetupAttemptContext;
  self->_cdmSingleServiceSetupAttemptContext = contextCopy;
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

- (void)setCdmAllServicesSetupContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  cdmAllServicesSetupContext = self->_cdmAllServicesSetupContext;
  self->_cdmAllServicesSetupContext = contextCopy;
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

- (void)setCdmClientSetupContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  cdmClientSetupContext = self->_cdmClientSetupContext;
  self->_cdmClientSetupContext = contextCopy;
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

- (void)setMarrsMentionResolverEndedTier1:(id)tier1
{
  tier1Copy = tier1;
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
  if (!tier1Copy)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  marrsMentionResolverEndedTier1 = self->_marrsMentionResolverEndedTier1;
  self->_marrsMentionResolverEndedTier1 = tier1Copy;
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

- (void)setMarrsMentionResolverEnded:(id)ended
{
  endedCopy = ended;
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
  if (!endedCopy)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  marrsMentionResolverEnded = self->_marrsMentionResolverEnded;
  self->_marrsMentionResolverEnded = endedCopy;
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

- (void)setMarrsMentionDetectorEndedTier1:(id)tier1
{
  tier1Copy = tier1;
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
  if (!tier1Copy)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  marrsMentionDetectorEndedTier1 = self->_marrsMentionDetectorEndedTier1;
  self->_marrsMentionDetectorEndedTier1 = tier1Copy;
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

- (void)setMarrsMentionDetectorEnded:(id)ended
{
  endedCopy = ended;
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
  if (!endedCopy)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  marrsMentionDetectorEnded = self->_marrsMentionDetectorEnded;
  self->_marrsMentionDetectorEnded = endedCopy;
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

- (void)setNlxCurareContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  nlxCurareContext = self->_nlxCurareContext;
  self->_nlxCurareContext = contextCopy;
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

- (void)setCdmMatchingSpanEndedTier1:(id)tier1
{
  tier1Copy = tier1;
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
  if (!tier1Copy)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  cdmMatchingSpanEndedTier1 = self->_cdmMatchingSpanEndedTier1;
  self->_cdmMatchingSpanEndedTier1 = tier1Copy;
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

- (void)setMarrsQueryRewriteEvaluatedTier1:(id)tier1
{
  tier1Copy = tier1;
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
  if (!tier1Copy)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  marrsQueryRewriteEvaluatedTier1 = self->_marrsQueryRewriteEvaluatedTier1;
  self->_marrsQueryRewriteEvaluatedTier1 = tier1Copy;
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

- (void)setMarrsQueryRewriteContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  marrsQueryRewriteContext = self->_marrsQueryRewriteContext;
  self->_marrsQueryRewriteContext = contextCopy;
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

- (void)setMarrsRepetitionDetectionContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  marrsRepetitionDetectionContext = self->_marrsRepetitionDetectionContext;
  self->_marrsRepetitionDetectionContext = contextCopy;
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

- (void)setCdmContextUpdateEnded:(id)ended
{
  endedCopy = ended;
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
  if (!endedCopy)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  cdmContextUpdateEnded = self->_cdmContextUpdateEnded;
  self->_cdmContextUpdateEnded = endedCopy;
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

- (void)setCdmTokenizationEnded:(id)ended
{
  endedCopy = ended;
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
  if (!endedCopy)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  cdmTokenizationEnded = self->_cdmTokenizationEnded;
  self->_cdmTokenizationEnded = endedCopy;
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

- (void)setCdmSystemDialogActTier1:(id)tier1
{
  tier1Copy = tier1;
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
  if (!tier1Copy)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  cdmSystemDialogActTier1 = self->_cdmSystemDialogActTier1;
  self->_cdmSystemDialogActTier1 = tier1Copy;
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

- (void)setCdmDelegatedUserDialogActTier1:(id)tier1
{
  tier1Copy = tier1;
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
  if (!tier1Copy)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  cdmDelegatedUserDialogActTier1 = self->_cdmDelegatedUserDialogActTier1;
  self->_cdmDelegatedUserDialogActTier1 = tier1Copy;
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

- (void)setNlxLegacyNLContextTier1:(id)tier1
{
  tier1Copy = tier1;
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
  if (!tier1Copy)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  nlxLegacyNLContextTier1 = self->_nlxLegacyNLContextTier1;
  self->_nlxLegacyNLContextTier1 = tier1Copy;
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

- (void)setCdmMatchingSpanTier1:(id)tier1
{
  tier1Copy = tier1;
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
  if (!tier1Copy)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  cdmMatchingSpanTier1 = self->_cdmMatchingSpanTier1;
  self->_cdmMatchingSpanTier1 = tier1Copy;
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

- (void)setCdmUsoGraphTier1:(id)tier1
{
  tier1Copy = tier1;
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
  if (!tier1Copy)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  cdmUsoGraphTier1 = self->_cdmUsoGraphTier1;
  self->_cdmUsoGraphTier1 = tier1Copy;
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

- (void)setCdmMatchingSpanEnded:(id)ended
{
  endedCopy = ended;
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
  if (!endedCopy)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  cdmMatchingSpanEnded = self->_cdmMatchingSpanEnded;
  self->_cdmMatchingSpanEnded = endedCopy;
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

- (void)setNlxDeviceFixedContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  nlxDeviceFixedContext = self->_nlxDeviceFixedContext;
  self->_nlxDeviceFixedContext = contextCopy;
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

- (void)setCdmRequestContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  cdmRequestContext = self->_cdmRequestContext;
  self->_cdmRequestContext = contextCopy;
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

- (void)setCdmServiceContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v45 = 0;
  }

  self->_whichEvent_Type = v45;
  cdmServiceContext = self->_cdmServiceContext;
  self->_cdmServiceContext = contextCopy;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v134.receiver = self;
  v134.super_class = NLXSchemaNLXClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v134 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
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

  if ([policyCopy isConditionSet:4])
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

  if ([policyCopy isConditionSet:5])
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

  if ([policyCopy isConditionSet:6])
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

  if ([policyCopy isConditionSet:7])
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

  eventMetadata = [(NLXSchemaNLXClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(NLXSchemaNLXClientEvent *)self deleteEventMetadata];
  }

  cdmServiceContext = [(NLXSchemaNLXClientEvent *)self cdmServiceContext];
  v10 = [cdmServiceContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(NLXSchemaNLXClientEvent *)self deleteCdmServiceContext];
  }

  cdmRequestContext = [(NLXSchemaNLXClientEvent *)self cdmRequestContext];
  v13 = [cdmRequestContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(NLXSchemaNLXClientEvent *)self deleteCdmRequestContext];
  }

  nlxDeviceFixedContext = [(NLXSchemaNLXClientEvent *)self nlxDeviceFixedContext];
  v16 = [nlxDeviceFixedContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(NLXSchemaNLXClientEvent *)self deleteNlxDeviceFixedContext];
  }

  cdmMatchingSpanEnded = [(NLXSchemaNLXClientEvent *)self cdmMatchingSpanEnded];
  v19 = [cdmMatchingSpanEnded applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(NLXSchemaNLXClientEvent *)self deleteCdmMatchingSpanEnded];
  }

  cdmUsoGraphTier1 = [(NLXSchemaNLXClientEvent *)self cdmUsoGraphTier1];
  v22 = [cdmUsoGraphTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(NLXSchemaNLXClientEvent *)self deleteCdmUsoGraphTier1];
  }

  cdmMatchingSpanTier1 = [(NLXSchemaNLXClientEvent *)self cdmMatchingSpanTier1];
  v25 = [cdmMatchingSpanTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage7 = [v25 suppressMessage];

  if (suppressMessage7)
  {
    [(NLXSchemaNLXClientEvent *)self deleteCdmMatchingSpanTier1];
  }

  nlxLegacyNLContextTier1 = [(NLXSchemaNLXClientEvent *)self nlxLegacyNLContextTier1];
  v28 = [nlxLegacyNLContextTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage8 = [v28 suppressMessage];

  if (suppressMessage8)
  {
    [(NLXSchemaNLXClientEvent *)self deleteNlxLegacyNLContextTier1];
  }

  cdmDelegatedUserDialogActTier1 = [(NLXSchemaNLXClientEvent *)self cdmDelegatedUserDialogActTier1];
  v31 = [cdmDelegatedUserDialogActTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage9 = [v31 suppressMessage];

  if (suppressMessage9)
  {
    [(NLXSchemaNLXClientEvent *)self deleteCdmDelegatedUserDialogActTier1];
  }

  cdmSystemDialogActTier1 = [(NLXSchemaNLXClientEvent *)self cdmSystemDialogActTier1];
  v34 = [cdmSystemDialogActTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage10 = [v34 suppressMessage];

  if (suppressMessage10)
  {
    [(NLXSchemaNLXClientEvent *)self deleteCdmSystemDialogActTier1];
  }

  cdmTokenizationEnded = [(NLXSchemaNLXClientEvent *)self cdmTokenizationEnded];
  v37 = [cdmTokenizationEnded applySensitiveConditionsPolicy:policyCopy];
  suppressMessage11 = [v37 suppressMessage];

  if (suppressMessage11)
  {
    [(NLXSchemaNLXClientEvent *)self deleteCdmTokenizationEnded];
  }

  cdmContextUpdateEnded = [(NLXSchemaNLXClientEvent *)self cdmContextUpdateEnded];
  v40 = [cdmContextUpdateEnded applySensitiveConditionsPolicy:policyCopy];
  suppressMessage12 = [v40 suppressMessage];

  if (suppressMessage12)
  {
    [(NLXSchemaNLXClientEvent *)self deleteCdmContextUpdateEnded];
  }

  marrsRepetitionDetectionContext = [(NLXSchemaNLXClientEvent *)self marrsRepetitionDetectionContext];
  v43 = [marrsRepetitionDetectionContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage13 = [v43 suppressMessage];

  if (suppressMessage13)
  {
    [(NLXSchemaNLXClientEvent *)self deleteMarrsRepetitionDetectionContext];
  }

  marrsQueryRewriteContext = [(NLXSchemaNLXClientEvent *)self marrsQueryRewriteContext];
  v46 = [marrsQueryRewriteContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage14 = [v46 suppressMessage];

  if (suppressMessage14)
  {
    [(NLXSchemaNLXClientEvent *)self deleteMarrsQueryRewriteContext];
  }

  marrsQueryRewriteEvaluatedTier1 = [(NLXSchemaNLXClientEvent *)self marrsQueryRewriteEvaluatedTier1];
  v49 = [marrsQueryRewriteEvaluatedTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage15 = [v49 suppressMessage];

  if (suppressMessage15)
  {
    [(NLXSchemaNLXClientEvent *)self deleteMarrsQueryRewriteEvaluatedTier1];
  }

  cdmMatchingSpanEndedTier1 = [(NLXSchemaNLXClientEvent *)self cdmMatchingSpanEndedTier1];
  v52 = [cdmMatchingSpanEndedTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage16 = [v52 suppressMessage];

  if (suppressMessage16)
  {
    [(NLXSchemaNLXClientEvent *)self deleteCdmMatchingSpanEndedTier1];
  }

  nlxCurareContext = [(NLXSchemaNLXClientEvent *)self nlxCurareContext];
  v55 = [nlxCurareContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage17 = [v55 suppressMessage];

  if (suppressMessage17)
  {
    [(NLXSchemaNLXClientEvent *)self deleteNlxCurareContext];
  }

  marrsMentionDetectorEnded = [(NLXSchemaNLXClientEvent *)self marrsMentionDetectorEnded];
  v58 = [marrsMentionDetectorEnded applySensitiveConditionsPolicy:policyCopy];
  suppressMessage18 = [v58 suppressMessage];

  if (suppressMessage18)
  {
    [(NLXSchemaNLXClientEvent *)self deleteMarrsMentionDetectorEnded];
  }

  marrsMentionDetectorEndedTier1 = [(NLXSchemaNLXClientEvent *)self marrsMentionDetectorEndedTier1];
  v61 = [marrsMentionDetectorEndedTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage19 = [v61 suppressMessage];

  if (suppressMessage19)
  {
    [(NLXSchemaNLXClientEvent *)self deleteMarrsMentionDetectorEndedTier1];
  }

  marrsMentionResolverEnded = [(NLXSchemaNLXClientEvent *)self marrsMentionResolverEnded];
  v64 = [marrsMentionResolverEnded applySensitiveConditionsPolicy:policyCopy];
  suppressMessage20 = [v64 suppressMessage];

  if (suppressMessage20)
  {
    [(NLXSchemaNLXClientEvent *)self deleteMarrsMentionResolverEnded];
  }

  marrsMentionResolverEndedTier1 = [(NLXSchemaNLXClientEvent *)self marrsMentionResolverEndedTier1];
  v67 = [marrsMentionResolverEndedTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage21 = [v67 suppressMessage];

  if (suppressMessage21)
  {
    [(NLXSchemaNLXClientEvent *)self deleteMarrsMentionResolverEndedTier1];
  }

  cdmClientSetupContext = [(NLXSchemaNLXClientEvent *)self cdmClientSetupContext];
  v70 = [cdmClientSetupContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage22 = [v70 suppressMessage];

  if (suppressMessage22)
  {
    [(NLXSchemaNLXClientEvent *)self deleteCdmClientSetupContext];
  }

  cdmAllServicesSetupContext = [(NLXSchemaNLXClientEvent *)self cdmAllServicesSetupContext];
  v73 = [cdmAllServicesSetupContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage23 = [v73 suppressMessage];

  if (suppressMessage23)
  {
    [(NLXSchemaNLXClientEvent *)self deleteCdmAllServicesSetupContext];
  }

  cdmSingleServiceSetupAttemptContext = [(NLXSchemaNLXClientEvent *)self cdmSingleServiceSetupAttemptContext];
  v76 = [cdmSingleServiceSetupAttemptContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage24 = [v76 suppressMessage];

  if (suppressMessage24)
  {
    [(NLXSchemaNLXClientEvent *)self deleteCdmSingleServiceSetupAttemptContext];
  }

  cdmSingleServiceSetupAttemptFailed = [(NLXSchemaNLXClientEvent *)self cdmSingleServiceSetupAttemptFailed];
  v79 = [cdmSingleServiceSetupAttemptFailed applySensitiveConditionsPolicy:policyCopy];
  suppressMessage25 = [v79 suppressMessage];

  if (suppressMessage25)
  {
    [(NLXSchemaNLXClientEvent *)self deleteCdmSingleServiceSetupAttemptFailed];
  }

  cdmSpanMatcherContext = [(NLXSchemaNLXClientEvent *)self cdmSpanMatcherContext];
  v82 = [cdmSpanMatcherContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage26 = [v82 suppressMessage];

  if (suppressMessage26)
  {
    [(NLXSchemaNLXClientEvent *)self deleteCdmSpanMatcherContext];
  }

  marrsContextualSpanMatcherEnded = [(NLXSchemaNLXClientEvent *)self marrsContextualSpanMatcherEnded];
  v85 = [marrsContextualSpanMatcherEnded applySensitiveConditionsPolicy:policyCopy];
  suppressMessage27 = [v85 suppressMessage];

  if (suppressMessage27)
  {
    [(NLXSchemaNLXClientEvent *)self deleteMarrsContextualSpanMatcherEnded];
  }

  marrsContextualSpanMatcherEndedTier1 = [(NLXSchemaNLXClientEvent *)self marrsContextualSpanMatcherEndedTier1];
  v88 = [marrsContextualSpanMatcherEndedTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage28 = [v88 suppressMessage];

  if (suppressMessage28)
  {
    [(NLXSchemaNLXClientEvent *)self deleteMarrsContextualSpanMatcherEndedTier1];
  }

  cdmXpcEventProcessingContext = [(NLXSchemaNLXClientEvent *)self cdmXpcEventProcessingContext];
  v91 = [cdmXpcEventProcessingContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage29 = [v91 suppressMessage];

  if (suppressMessage29)
  {
    [(NLXSchemaNLXClientEvent *)self deleteCdmXpcEventProcessingContext];
  }

  cdmAssetSetupContext = [(NLXSchemaNLXClientEvent *)self cdmAssetSetupContext];
  v94 = [cdmAssetSetupContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage30 = [v94 suppressMessage];

  if (suppressMessage30)
  {
    [(NLXSchemaNLXClientEvent *)self deleteCdmAssetSetupContext];
  }

  cdmSetupMissingAssetsDetected = [(NLXSchemaNLXClientEvent *)self cdmSetupMissingAssetsDetected];
  v97 = [cdmSetupMissingAssetsDetected applySensitiveConditionsPolicy:policyCopy];
  suppressMessage31 = [v97 suppressMessage];

  if (suppressMessage31)
  {
    [(NLXSchemaNLXClientEvent *)self deleteCdmSetupMissingAssetsDetected];
  }

  cdmClientWarmupContext = [(NLXSchemaNLXClientEvent *)self cdmClientWarmupContext];
  v100 = [cdmClientWarmupContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage32 = [v100 suppressMessage];

  if (suppressMessage32)
  {
    [(NLXSchemaNLXClientEvent *)self deleteCdmClientWarmupContext];
  }

  cdmAllServicesWarmupContext = [(NLXSchemaNLXClientEvent *)self cdmAllServicesWarmupContext];
  v103 = [cdmAllServicesWarmupContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage33 = [v103 suppressMessage];

  if (suppressMessage33)
  {
    [(NLXSchemaNLXClientEvent *)self deleteCdmAllServicesWarmupContext];
  }

  cdmSingleServiceWarmupAttemptContext = [(NLXSchemaNLXClientEvent *)self cdmSingleServiceWarmupAttemptContext];
  v106 = [cdmSingleServiceWarmupAttemptContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage34 = [v106 suppressMessage];

  if (suppressMessage34)
  {
    [(NLXSchemaNLXClientEvent *)self deleteCdmSingleServiceWarmupAttemptContext];
  }

  cdmSingleServiceWarmupAttemptFailed = [(NLXSchemaNLXClientEvent *)self cdmSingleServiceWarmupAttemptFailed];
  v109 = [cdmSingleServiceWarmupAttemptFailed applySensitiveConditionsPolicy:policyCopy];
  suppressMessage35 = [v109 suppressMessage];

  if (suppressMessage35)
  {
    [(NLXSchemaNLXClientEvent *)self deleteCdmSingleServiceWarmupAttemptFailed];
  }

  cdmAssetsReported = [(NLXSchemaNLXClientEvent *)self cdmAssetsReported];
  v112 = [cdmAssetsReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage36 = [v112 suppressMessage];

  if (suppressMessage36)
  {
    [(NLXSchemaNLXClientEvent *)self deleteCdmAssetsReported];
  }

  ssuUserRequestContext = [(NLXSchemaNLXClientEvent *)self ssuUserRequestContext];
  v115 = [ssuUserRequestContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage37 = [v115 suppressMessage];

  if (suppressMessage37)
  {
    [(NLXSchemaNLXClientEvent *)self deleteSsuUserRequestContext];
  }

  ssuBackgroundRequestContext = [(NLXSchemaNLXClientEvent *)self ssuBackgroundRequestContext];
  v118 = [ssuBackgroundRequestContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage38 = [v118 suppressMessage];

  if (suppressMessage38)
  {
    [(NLXSchemaNLXClientEvent *)self deleteSsuBackgroundRequestContext];
  }

  cdmServiceHandleMetricsReported = [(NLXSchemaNLXClientEvent *)self cdmServiceHandleMetricsReported];
  v121 = [cdmServiceHandleMetricsReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage39 = [v121 suppressMessage];

  if (suppressMessage39)
  {
    [(NLXSchemaNLXClientEvent *)self deleteCdmServiceHandleMetricsReported];
  }

  cdmServiceSetupMetricsReported = [(NLXSchemaNLXClientEvent *)self cdmServiceSetupMetricsReported];
  v124 = [cdmServiceSetupMetricsReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage40 = [v124 suppressMessage];

  if (suppressMessage40)
  {
    [(NLXSchemaNLXClientEvent *)self deleteCdmServiceSetupMetricsReported];
  }

  milAssetAcquisitionContext = [(NLXSchemaNLXClientEvent *)self milAssetAcquisitionContext];
  v127 = [milAssetAcquisitionContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage41 = [v127 suppressMessage];

  if (suppressMessage41)
  {
    [(NLXSchemaNLXClientEvent *)self deleteMilAssetAcquisitionContext];
  }

  cdmSetupLink = [(NLXSchemaNLXClientEvent *)self cdmSetupLink];
  v130 = [cdmSetupLink applySensitiveConditionsPolicy:policyCopy];
  suppressMessage42 = [v130 suppressMessage];

  if (suppressMessage42)
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
  eventMetadata = [(NLXSchemaNLXClientEvent *)self eventMetadata];
  nlId = [eventMetadata nlId];

  if (nlId && ([nlId value], (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v6 = v5, objc_msgSend(nlId, "value"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v6, v8))
  {
    LODWORD(value) = 7;
  }

  else
  {
    eventMetadata2 = [(NLXSchemaNLXClientEvent *)self eventMetadata];
    requestId = [eventMetadata2 requestId];

    if (requestId && ([requestId value], (v12 = objc_claimAutoreleasedReturnValue()) != 0) && (v13 = v12, objc_msgSend(requestId, "value"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "length"), v14, v13, v15))
    {
      LODWORD(value) = 1;
      nlId = requestId;
    }

    else
    {
      eventMetadata3 = [(NLXSchemaNLXClientEvent *)self eventMetadata];
      nlId = [eventMetadata3 subRequestId];

      if (nlId)
      {
        value = [nlId value];
        if (value)
        {
          value2 = [nlId value];
          v18 = [value2 length];

          if (v18)
          {
            LODWORD(value) = 43;
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
    }
  }

  return value;
}

- (id)getComponentId
{
  eventMetadata = [(NLXSchemaNLXClientEvent *)self eventMetadata];
  nlId = [eventMetadata nlId];

  if (nlId)
  {
    value = [nlId value];
    if (value)
    {
      v6 = value;
      value2 = [nlId value];
      v8 = [value2 length];

      if (v8)
      {
        goto LABEL_11;
      }
    }
  }

  eventMetadata2 = [(NLXSchemaNLXClientEvent *)self eventMetadata];
  requestId = [eventMetadata2 requestId];

  if (requestId)
  {
    value3 = [requestId value];
    if (value3)
    {
      v12 = value3;
      value4 = [requestId value];
      v14 = [value4 length];

      if (v14)
      {
        nlId = requestId;
LABEL_11:
        value5 = nlId;
        nlId = value5;
        goto LABEL_13;
      }
    }
  }

  eventMetadata3 = [(NLXSchemaNLXClientEvent *)self eventMetadata];
  nlId = [eventMetadata3 subRequestId];

  if (nlId)
  {
    value5 = [nlId value];
    if (!value5)
    {
      goto LABEL_13;
    }

    value6 = [nlId value];
    v18 = [value6 length];

    if (v18)
    {
      goto LABEL_11;
    }
  }

  value5 = 0;
LABEL_13:

  return value5;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  whichEvent_Type = [(NLXSchemaNLXClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 0x28)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78EA1D8[whichEvent_Type - 101]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)tag
{
  if (tag - 101 > 0x28)
  {
    return 0;
  }

  else
  {
    return off_1E78EA320[tag - 101];
  }
}

@end