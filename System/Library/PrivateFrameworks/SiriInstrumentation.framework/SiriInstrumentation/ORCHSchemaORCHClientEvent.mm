@interface ORCHSchemaORCHClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ORCHSchemaNLRouterRewrittenUtteranceTier1)routerRewrittenUtterance;
- (ORCHSchemaORCHASRBridgeContext)asrBridgeContext;
- (ORCHSchemaORCHAceCommandContext)aceCommandContext;
- (ORCHSchemaORCHAssetSetsReported)assetSetsReported;
- (ORCHSchemaORCHAssetsReported)availableAssets;
- (ORCHSchemaORCHAssistantDaemonLaunchMetadataReported)assistantdLaunchMetadataReported;
- (ORCHSchemaORCHAudioTopologyReported)audioTopologyReported;
- (ORCHSchemaORCHCDMBridgeContext)cdmBridgeContext;
- (ORCHSchemaORCHCandidateRequestContext)candidateRequestContext;
- (ORCHSchemaORCHClientEvent)initWithDictionary:(id)dictionary;
- (ORCHSchemaORCHClientEvent)initWithJSON:(id)n;
- (ORCHSchemaORCHConversationContextSubmitted)contextSubmissionMessage;
- (ORCHSchemaORCHDeviceDynamicContext)orchDeviceDynamicContext;
- (ORCHSchemaORCHExecuteOnRemoteRequestContext)executeOnRemoteRequestContext;
- (ORCHSchemaORCHExecutionBridgeContext)executionBridgeContext;
- (ORCHSchemaORCHFlowOutputSubmitted)flowOutputSubmitted;
- (ORCHSchemaORCHIdentityBridgeRequestContext)identityBridgeRequestContext;
- (ORCHSchemaORCHIntelligenceFlowQuerySent)intelligenceFlowQuerySent;
- (ORCHSchemaORCHIntelligenceFlowRequestContext)intelligenceFlowRequestContext;
- (ORCHSchemaORCHIntelligenceFlowSubRequestFallback)subRequestFallback;
- (ORCHSchemaORCHMUXBridgeContext)muxBridgeContext;
- (ORCHSchemaORCHMUXUserSessionState)userSessionState;
- (ORCHSchemaORCHMultiUserResultCandidateReceived)multiUserResultCandidate;
- (ORCHSchemaORCHMultiUserResultCandidateSelected)multiUserResultSelected;
- (ORCHSchemaORCHNLRouterBridgeContext)nlRouterBridgeContext;
- (ORCHSchemaORCHNLRouterBridgeSubComponentContext)nlRouterBridgeSubComponentContext;
- (ORCHSchemaORCHNLV3ServerFallbackDeprecated)nlv3ServerFallbackDeprecated;
- (ORCHSchemaORCHPommesBridgeContext)pommesBridgeContext;
- (ORCHSchemaORCHPowerContextPolicyReported)powerContextPolicyReported;
- (ORCHSchemaORCHRequestContext)requestContext;
- (ORCHSchemaORCHRequestMitigated)requestMitigated;
- (ORCHSchemaORCHResultCandidateReceived)resultCandidate;
- (ORCHSchemaORCHResultSelected)resultSelected;
- (ORCHSchemaORCHServerExecutionValuesReported)serverExecutionValuesReported;
- (ORCHSchemaORCHServerFallbackContext)serverFallbackContext;
- (ORCHSchemaORCHShimToolContext)shimToolContext;
- (ORCHSchemaORCHSubRequestContext)subRequestContext;
- (ORCHSchemaORCHTRPCandidateCreated)trpCandidateCreated;
- (ORCHSchemaORCHTRPCandidateReceived)trpCandidateReceived;
- (ORCHSchemaORCHTRPFinalized)trpFinalized;
- (ORCHSchemaORCHUIActivationContext)uiActivationContext;
- (ORCHSchemaORCHUnsupportedLanguageDetected)unsupportedLanguageDetected;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (unint64_t)hash;
- (void)deleteAceCommandContext;
- (void)deleteAsrBridgeContext;
- (void)deleteAssetSetsReported;
- (void)deleteAssistantdLaunchMetadataReported;
- (void)deleteAudioTopologyReported;
- (void)deleteAvailableAssets;
- (void)deleteCandidateRequestContext;
- (void)deleteCdmBridgeContext;
- (void)deleteContextSubmissionMessage;
- (void)deleteExecuteOnRemoteRequestContext;
- (void)deleteExecutionBridgeContext;
- (void)deleteFlowOutputSubmitted;
- (void)deleteIdentityBridgeRequestContext;
- (void)deleteIntelligenceFlowQuerySent;
- (void)deleteIntelligenceFlowRequestContext;
- (void)deleteMultiUserResultCandidate;
- (void)deleteMultiUserResultSelected;
- (void)deleteMuxBridgeContext;
- (void)deleteNlRouterBridgeContext;
- (void)deleteNlRouterBridgeSubComponentContext;
- (void)deleteNlv3ServerFallbackDeprecated;
- (void)deleteOrchDeviceDynamicContext;
- (void)deletePommesBridgeContext;
- (void)deletePowerContextPolicyReported;
- (void)deleteRequestContext;
- (void)deleteRequestMitigated;
- (void)deleteResultCandidate;
- (void)deleteResultSelected;
- (void)deleteRouterRewrittenUtterance;
- (void)deleteServerExecutionValuesReported;
- (void)deleteServerFallbackContext;
- (void)deleteShimToolContext;
- (void)deleteSubRequestContext;
- (void)deleteSubRequestFallback;
- (void)deleteTrpCandidateCreated;
- (void)deleteTrpCandidateReceived;
- (void)deleteTrpFinalized;
- (void)deleteUiActivationContext;
- (void)deleteUnsupportedLanguageDetected;
- (void)deleteUserSessionState;
- (void)setAceCommandContext:(id)context;
- (void)setAsrBridgeContext:(id)context;
- (void)setAssetSetsReported:(id)reported;
- (void)setAssistantdLaunchMetadataReported:(id)reported;
- (void)setAudioTopologyReported:(id)reported;
- (void)setAvailableAssets:(id)assets;
- (void)setCandidateRequestContext:(id)context;
- (void)setCdmBridgeContext:(id)context;
- (void)setContextSubmissionMessage:(id)message;
- (void)setExecuteOnRemoteRequestContext:(id)context;
- (void)setExecutionBridgeContext:(id)context;
- (void)setFlowOutputSubmitted:(id)submitted;
- (void)setIdentityBridgeRequestContext:(id)context;
- (void)setIntelligenceFlowQuerySent:(id)sent;
- (void)setIntelligenceFlowRequestContext:(id)context;
- (void)setMultiUserResultCandidate:(id)candidate;
- (void)setMultiUserResultSelected:(id)selected;
- (void)setMuxBridgeContext:(id)context;
- (void)setNlRouterBridgeContext:(id)context;
- (void)setNlRouterBridgeSubComponentContext:(id)context;
- (void)setNlv3ServerFallbackDeprecated:(id)deprecated;
- (void)setOrchDeviceDynamicContext:(id)context;
- (void)setPommesBridgeContext:(id)context;
- (void)setPowerContextPolicyReported:(id)reported;
- (void)setRequestContext:(id)context;
- (void)setRequestMitigated:(id)mitigated;
- (void)setResultCandidate:(id)candidate;
- (void)setResultSelected:(id)selected;
- (void)setRouterRewrittenUtterance:(id)utterance;
- (void)setServerExecutionValuesReported:(id)reported;
- (void)setServerFallbackContext:(id)context;
- (void)setShimToolContext:(id)context;
- (void)setSubRequestContext:(id)context;
- (void)setSubRequestFallback:(id)fallback;
- (void)setTrpCandidateCreated:(id)created;
- (void)setTrpCandidateReceived:(id)received;
- (void)setTrpFinalized:(id)finalized;
- (void)setUiActivationContext:(id)context;
- (void)setUnsupportedLanguageDetected:(id)detected;
- (void)setUserSessionState:(id)state;
- (void)writeTo:(id)to;
@end

@implementation ORCHSchemaORCHClientEvent

- (id)qualifiedMessageName
{
  whichEvent_Type = [(ORCHSchemaORCHClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 0x27)
  {
    return @"com.apple.aiml.siri.orch.ORCHClientEvent";
  }

  else
  {
    return off_1E78DE898[whichEvent_Type - 101];
  }
}

- (ORCHSchemaORCHAceCommandContext)aceCommandContext
{
  if (self->_whichEvent_Type == 116)
  {
    v3 = self->_aceCommandContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (ORCHSchemaORCHSubRequestContext)subRequestContext
{
  if (self->_whichEvent_Type == 129)
  {
    v3 = self->_subRequestContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (ORCHSchemaORCHRequestContext)requestContext
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_requestContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (ORCHSchemaORCHMUXUserSessionState)userSessionState
{
  if (self->_whichEvent_Type == 139)
  {
    v3 = self->_userSessionState;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (ORCHSchemaORCHCDMBridgeContext)cdmBridgeContext
{
  if (self->_whichEvent_Type == 103)
  {
    v3 = self->_cdmBridgeContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (ORCHSchemaORCHASRBridgeContext)asrBridgeContext
{
  if (self->_whichEvent_Type == 102)
  {
    v3 = self->_asrBridgeContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (ORCHSchemaORCHConversationContextSubmitted)contextSubmissionMessage
{
  if (self->_whichEvent_Type == 109)
  {
    v3 = self->_contextSubmissionMessage;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (ORCHSchemaORCHExecutionBridgeContext)executionBridgeContext
{
  if (self->_whichEvent_Type == 104)
  {
    v3 = self->_executionBridgeContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (ORCHSchemaORCHServerFallbackContext)serverFallbackContext
{
  if (self->_whichEvent_Type == 105)
  {
    v3 = self->_serverFallbackContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (ORCHSchemaORCHTRPFinalized)trpFinalized
{
  if (self->_whichEvent_Type == 117)
  {
    v3 = self->_trpFinalized;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (ORCHSchemaNLRouterRewrittenUtteranceTier1)routerRewrittenUtterance
{
  if (self->_whichEvent_Type == 130)
  {
    v3 = self->_routerRewrittenUtterance;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (ORCHSchemaORCHResultCandidateReceived)resultCandidate
{
  if (self->_whichEvent_Type == 107)
  {
    v3 = self->_resultCandidate;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (ORCHSchemaORCHResultSelected)resultSelected
{
  if (self->_whichEvent_Type == 108)
  {
    v3 = self->_resultSelected;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (ORCHSchemaORCHAssetsReported)availableAssets
{
  if (self->_whichEvent_Type == 110)
  {
    v3 = self->_availableAssets;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (ORCHSchemaORCHDeviceDynamicContext)orchDeviceDynamicContext
{
  if (self->_whichEvent_Type == 111)
  {
    v3 = self->_orchDeviceDynamicContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (ORCHSchemaORCHPommesBridgeContext)pommesBridgeContext
{
  if (self->_whichEvent_Type == 112)
  {
    v3 = self->_pommesBridgeContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (ORCHSchemaORCHMUXBridgeContext)muxBridgeContext
{
  if (self->_whichEvent_Type == 113)
  {
    v3 = self->_muxBridgeContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (ORCHSchemaORCHMultiUserResultCandidateSelected)multiUserResultSelected
{
  if (self->_whichEvent_Type == 115)
  {
    v3 = self->_multiUserResultSelected;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (ORCHSchemaORCHFlowOutputSubmitted)flowOutputSubmitted
{
  if (self->_whichEvent_Type == 106)
  {
    v3 = self->_flowOutputSubmitted;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (ORCHSchemaORCHMultiUserResultCandidateReceived)multiUserResultCandidate
{
  if (self->_whichEvent_Type == 114)
  {
    v3 = self->_multiUserResultCandidate;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (ORCHSchemaORCHTRPCandidateReceived)trpCandidateReceived
{
  if (self->_whichEvent_Type == 121)
  {
    v3 = self->_trpCandidateReceived;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (ORCHSchemaORCHUIActivationContext)uiActivationContext
{
  if (self->_whichEvent_Type == 120)
  {
    v3 = self->_uiActivationContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (ORCHSchemaORCHCandidateRequestContext)candidateRequestContext
{
  if (self->_whichEvent_Type == 124)
  {
    v3 = self->_candidateRequestContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (ORCHSchemaORCHExecuteOnRemoteRequestContext)executeOnRemoteRequestContext
{
  if (self->_whichEvent_Type == 126)
  {
    v3 = self->_executeOnRemoteRequestContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (ORCHSchemaORCHRequestMitigated)requestMitigated
{
  if (self->_whichEvent_Type == 118)
  {
    v3 = self->_requestMitigated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (ORCHSchemaORCHNLV3ServerFallbackDeprecated)nlv3ServerFallbackDeprecated
{
  if (self->_whichEvent_Type == 119)
  {
    v3 = self->_nlv3ServerFallbackDeprecated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (ORCHSchemaORCHIdentityBridgeRequestContext)identityBridgeRequestContext
{
  if (self->_whichEvent_Type == 122)
  {
    v3 = self->_identityBridgeRequestContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (ORCHSchemaORCHAssetSetsReported)assetSetsReported
{
  if (self->_whichEvent_Type == 123)
  {
    v3 = self->_assetSetsReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (ORCHSchemaORCHPowerContextPolicyReported)powerContextPolicyReported
{
  if (self->_whichEvent_Type == 125)
  {
    v3 = self->_powerContextPolicyReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (ORCHSchemaORCHAssistantDaemonLaunchMetadataReported)assistantdLaunchMetadataReported
{
  if (self->_whichEvent_Type == 127)
  {
    v3 = self->_assistantdLaunchMetadataReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (ORCHSchemaORCHIntelligenceFlowQuerySent)intelligenceFlowQuerySent
{
  if (self->_whichEvent_Type == 128)
  {
    v3 = self->_intelligenceFlowQuerySent;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (ORCHSchemaORCHNLRouterBridgeContext)nlRouterBridgeContext
{
  if (self->_whichEvent_Type == 131)
  {
    v3 = self->_nlRouterBridgeContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (ORCHSchemaORCHIntelligenceFlowSubRequestFallback)subRequestFallback
{
  if (self->_whichEvent_Type == 133)
  {
    v3 = self->_subRequestFallback;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (ORCHSchemaORCHNLRouterBridgeSubComponentContext)nlRouterBridgeSubComponentContext
{
  if (self->_whichEvent_Type == 134)
  {
    v3 = self->_nlRouterBridgeSubComponentContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (ORCHSchemaORCHUnsupportedLanguageDetected)unsupportedLanguageDetected
{
  if (self->_whichEvent_Type == 135)
  {
    v3 = self->_unsupportedLanguageDetected;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (ORCHSchemaORCHTRPCandidateCreated)trpCandidateCreated
{
  if (self->_whichEvent_Type == 136)
  {
    v3 = self->_trpCandidateCreated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (ORCHSchemaORCHIntelligenceFlowRequestContext)intelligenceFlowRequestContext
{
  if (self->_whichEvent_Type == 138)
  {
    v3 = self->_intelligenceFlowRequestContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (ORCHSchemaORCHAudioTopologyReported)audioTopologyReported
{
  if (self->_whichEvent_Type == 137)
  {
    v3 = self->_audioTopologyReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (ORCHSchemaORCHShimToolContext)shimToolContext
{
  if (self->_whichEvent_Type == 132)
  {
    v3 = self->_shimToolContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (ORCHSchemaORCHClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v127.receiver = self;
  v127.super_class = ORCHSchemaORCHClientEvent;
  v5 = [(ORCHSchemaORCHClientEvent *)&v127 init];

  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ORCHSchemaORCHClientEventMetadata alloc] initWithDictionary:v6];
      [(ORCHSchemaORCHClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"resourceUtilizationMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[ORCHSchemaORCHResourceUtilizationMetadata alloc] initWithDictionary:v8];
      [(ORCHSchemaORCHClientEvent *)v5 setResourceUtilizationMetadata:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"requestContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[ORCHSchemaORCHRequestContext alloc] initWithDictionary:v10];
      [(ORCHSchemaORCHClientEvent *)v5 setRequestContext:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"asrBridgeContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[ORCHSchemaORCHASRBridgeContext alloc] initWithDictionary:v12];
      [(ORCHSchemaORCHClientEvent *)v5 setAsrBridgeContext:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"cdmBridgeContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[ORCHSchemaORCHCDMBridgeContext alloc] initWithDictionary:v14];
      [(ORCHSchemaORCHClientEvent *)v5 setCdmBridgeContext:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"executionBridgeContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[ORCHSchemaORCHExecutionBridgeContext alloc] initWithDictionary:v16];
      [(ORCHSchemaORCHClientEvent *)v5 setExecutionBridgeContext:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"serverFallbackContext"];
    objc_opt_class();
    v126 = v18;
    if (objc_opt_isKindOfClass())
    {
      v19 = [[ORCHSchemaORCHServerFallbackContext alloc] initWithDictionary:v18];
      [(ORCHSchemaORCHClientEvent *)v5 setServerFallbackContext:v19];
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"flowOutputSubmitted"];
    objc_opt_class();
    v125 = v20;
    if (objc_opt_isKindOfClass())
    {
      v21 = [[ORCHSchemaORCHFlowOutputSubmitted alloc] initWithDictionary:v20];
      [(ORCHSchemaORCHClientEvent *)v5 setFlowOutputSubmitted:v21];
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"resultCandidate"];
    objc_opt_class();
    v124 = v22;
    if (objc_opt_isKindOfClass())
    {
      v23 = [[ORCHSchemaORCHResultCandidateReceived alloc] initWithDictionary:v22];
      [(ORCHSchemaORCHClientEvent *)v5 setResultCandidate:v23];
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"resultSelected"];
    objc_opt_class();
    v123 = v24;
    if (objc_opt_isKindOfClass())
    {
      v25 = [[ORCHSchemaORCHResultSelected alloc] initWithDictionary:v24];
      [(ORCHSchemaORCHClientEvent *)v5 setResultSelected:v25];
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"contextSubmissionMessage"];
    objc_opt_class();
    v122 = v26;
    if (objc_opt_isKindOfClass())
    {
      v27 = [[ORCHSchemaORCHConversationContextSubmitted alloc] initWithDictionary:v26];
      [(ORCHSchemaORCHClientEvent *)v5 setContextSubmissionMessage:v27];
    }

    v28 = [dictionaryCopy objectForKeyedSubscript:@"availableAssets"];
    objc_opt_class();
    v121 = v28;
    if (objc_opt_isKindOfClass())
    {
      v29 = [[ORCHSchemaORCHAssetsReported alloc] initWithDictionary:v28];
      [(ORCHSchemaORCHClientEvent *)v5 setAvailableAssets:v29];
    }

    v30 = [dictionaryCopy objectForKeyedSubscript:@"orchDeviceDynamicContext"];
    objc_opt_class();
    v120 = v30;
    if (objc_opt_isKindOfClass())
    {
      v31 = [[ORCHSchemaORCHDeviceDynamicContext alloc] initWithDictionary:v30];
      [(ORCHSchemaORCHClientEvent *)v5 setOrchDeviceDynamicContext:v31];
    }

    v32 = [dictionaryCopy objectForKeyedSubscript:@"pommesBridgeContext"];
    objc_opt_class();
    v119 = v32;
    if (objc_opt_isKindOfClass())
    {
      v33 = [[ORCHSchemaORCHPommesBridgeContext alloc] initWithDictionary:v32];
      [(ORCHSchemaORCHClientEvent *)v5 setPommesBridgeContext:v33];
    }

    v34 = [dictionaryCopy objectForKeyedSubscript:@"muxBridgeContext"];
    objc_opt_class();
    v118 = v34;
    if (objc_opt_isKindOfClass())
    {
      v35 = [[ORCHSchemaORCHMUXBridgeContext alloc] initWithDictionary:v34];
      [(ORCHSchemaORCHClientEvent *)v5 setMuxBridgeContext:v35];
    }

    v36 = [dictionaryCopy objectForKeyedSubscript:@"multiUserResultCandidate"];
    objc_opt_class();
    v117 = v36;
    if (objc_opt_isKindOfClass())
    {
      v37 = [[ORCHSchemaORCHMultiUserResultCandidateReceived alloc] initWithDictionary:v36];
      [(ORCHSchemaORCHClientEvent *)v5 setMultiUserResultCandidate:v37];
    }

    v38 = [dictionaryCopy objectForKeyedSubscript:@"multiUserResultSelected"];
    objc_opt_class();
    v116 = v38;
    if (objc_opt_isKindOfClass())
    {
      v39 = [[ORCHSchemaORCHMultiUserResultCandidateSelected alloc] initWithDictionary:v38];
      [(ORCHSchemaORCHClientEvent *)v5 setMultiUserResultSelected:v39];
    }

    v40 = [dictionaryCopy objectForKeyedSubscript:@"aceCommandContext"];
    objc_opt_class();
    v115 = v40;
    if (objc_opt_isKindOfClass())
    {
      v41 = [[ORCHSchemaORCHAceCommandContext alloc] initWithDictionary:v40];
      [(ORCHSchemaORCHClientEvent *)v5 setAceCommandContext:v41];
    }

    v42 = [dictionaryCopy objectForKeyedSubscript:@"trpFinalized"];
    objc_opt_class();
    v114 = v42;
    if (objc_opt_isKindOfClass())
    {
      v43 = [[ORCHSchemaORCHTRPFinalized alloc] initWithDictionary:v42];
      [(ORCHSchemaORCHClientEvent *)v5 setTrpFinalized:v43];
    }

    v44 = [dictionaryCopy objectForKeyedSubscript:@"requestMitigated"];
    objc_opt_class();
    v113 = v44;
    if (objc_opt_isKindOfClass())
    {
      v45 = [[ORCHSchemaORCHRequestMitigated alloc] initWithDictionary:v44];
      [(ORCHSchemaORCHClientEvent *)v5 setRequestMitigated:v45];
    }

    v46 = [dictionaryCopy objectForKeyedSubscript:@"nlv3ServerFallbackDeprecated"];
    objc_opt_class();
    v112 = v46;
    if (objc_opt_isKindOfClass())
    {
      v47 = [[ORCHSchemaORCHNLV3ServerFallbackDeprecated alloc] initWithDictionary:v46];
      [(ORCHSchemaORCHClientEvent *)v5 setNlv3ServerFallbackDeprecated:v47];
    }

    v48 = [dictionaryCopy objectForKeyedSubscript:@"uiActivationContext"];
    objc_opt_class();
    v111 = v48;
    if (objc_opt_isKindOfClass())
    {
      v49 = [[ORCHSchemaORCHUIActivationContext alloc] initWithDictionary:v48];
      [(ORCHSchemaORCHClientEvent *)v5 setUiActivationContext:v49];
    }

    v50 = [dictionaryCopy objectForKeyedSubscript:@"trpCandidateReceived"];
    objc_opt_class();
    v110 = v50;
    if (objc_opt_isKindOfClass())
    {
      v51 = [[ORCHSchemaORCHTRPCandidateReceived alloc] initWithDictionary:v50];
      [(ORCHSchemaORCHClientEvent *)v5 setTrpCandidateReceived:v51];
    }

    v52 = [dictionaryCopy objectForKeyedSubscript:@"identityBridgeRequestContext"];
    objc_opt_class();
    v109 = v52;
    if (objc_opt_isKindOfClass())
    {
      v53 = [[ORCHSchemaORCHIdentityBridgeRequestContext alloc] initWithDictionary:v52];
      [(ORCHSchemaORCHClientEvent *)v5 setIdentityBridgeRequestContext:v53];
    }

    v54 = [dictionaryCopy objectForKeyedSubscript:@"assetSetsReported"];
    objc_opt_class();
    v108 = v54;
    if (objc_opt_isKindOfClass())
    {
      v55 = [[ORCHSchemaORCHAssetSetsReported alloc] initWithDictionary:v54];
      [(ORCHSchemaORCHClientEvent *)v5 setAssetSetsReported:v55];
    }

    v56 = [dictionaryCopy objectForKeyedSubscript:@"candidateRequestContext"];
    objc_opt_class();
    v107 = v56;
    if (objc_opt_isKindOfClass())
    {
      v57 = [[ORCHSchemaORCHCandidateRequestContext alloc] initWithDictionary:v56];
      [(ORCHSchemaORCHClientEvent *)v5 setCandidateRequestContext:v57];
    }

    v58 = [dictionaryCopy objectForKeyedSubscript:@"powerContextPolicyReported"];
    objc_opt_class();
    v106 = v58;
    if (objc_opt_isKindOfClass())
    {
      v59 = [[ORCHSchemaORCHPowerContextPolicyReported alloc] initWithDictionary:v58];
      [(ORCHSchemaORCHClientEvent *)v5 setPowerContextPolicyReported:v59];
    }

    v60 = [dictionaryCopy objectForKeyedSubscript:@"executeOnRemoteRequestContext"];
    objc_opt_class();
    v105 = v60;
    if (objc_opt_isKindOfClass())
    {
      v61 = [[ORCHSchemaORCHExecuteOnRemoteRequestContext alloc] initWithDictionary:v60];
      [(ORCHSchemaORCHClientEvent *)v5 setExecuteOnRemoteRequestContext:v61];
    }

    v62 = [dictionaryCopy objectForKeyedSubscript:@"assistantdLaunchMetadataReported"];
    objc_opt_class();
    v104 = v62;
    if (objc_opt_isKindOfClass())
    {
      v63 = [[ORCHSchemaORCHAssistantDaemonLaunchMetadataReported alloc] initWithDictionary:v62];
      [(ORCHSchemaORCHClientEvent *)v5 setAssistantdLaunchMetadataReported:v63];
    }

    v64 = [dictionaryCopy objectForKeyedSubscript:@"intelligenceFlowQuerySent"];
    objc_opt_class();
    v103 = v64;
    if (objc_opt_isKindOfClass())
    {
      v65 = [[ORCHSchemaORCHIntelligenceFlowQuerySent alloc] initWithDictionary:v64];
      [(ORCHSchemaORCHClientEvent *)v5 setIntelligenceFlowQuerySent:v65];
    }

    v66 = [dictionaryCopy objectForKeyedSubscript:@"subRequestContext"];
    objc_opt_class();
    v102 = v66;
    if (objc_opt_isKindOfClass())
    {
      v67 = [[ORCHSchemaORCHSubRequestContext alloc] initWithDictionary:v66];
      [(ORCHSchemaORCHClientEvent *)v5 setSubRequestContext:v67];
    }

    v68 = [dictionaryCopy objectForKeyedSubscript:@"routerRewrittenUtterance"];
    objc_opt_class();
    v101 = v68;
    if (objc_opt_isKindOfClass())
    {
      v69 = [[ORCHSchemaNLRouterRewrittenUtteranceTier1 alloc] initWithDictionary:v68];
      [(ORCHSchemaORCHClientEvent *)v5 setRouterRewrittenUtterance:v69];
    }

    v70 = [dictionaryCopy objectForKeyedSubscript:@"nlRouterBridgeContext"];
    objc_opt_class();
    v100 = v70;
    if (objc_opt_isKindOfClass())
    {
      v71 = [[ORCHSchemaORCHNLRouterBridgeContext alloc] initWithDictionary:v70];
      [(ORCHSchemaORCHClientEvent *)v5 setNlRouterBridgeContext:v71];
    }

    v72 = [dictionaryCopy objectForKeyedSubscript:@"shimToolContext"];
    objc_opt_class();
    v99 = v72;
    if (objc_opt_isKindOfClass())
    {
      v73 = [[ORCHSchemaORCHShimToolContext alloc] initWithDictionary:v72];
      [(ORCHSchemaORCHClientEvent *)v5 setShimToolContext:v73];
    }

    v97 = v8;
    v74 = [dictionaryCopy objectForKeyedSubscript:@"subRequestFallback"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v75 = [[ORCHSchemaORCHIntelligenceFlowSubRequestFallback alloc] initWithDictionary:v74];
      [(ORCHSchemaORCHClientEvent *)v5 setSubRequestFallback:v75];
    }

    v96 = v10;
    v76 = [dictionaryCopy objectForKeyedSubscript:{@"nlRouterBridgeSubComponentContext", v74}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v77 = [[ORCHSchemaORCHNLRouterBridgeSubComponentContext alloc] initWithDictionary:v76];
      [(ORCHSchemaORCHClientEvent *)v5 setNlRouterBridgeSubComponentContext:v77];
    }

    v95 = v12;
    v78 = [dictionaryCopy objectForKeyedSubscript:@"unsupportedLanguageDetected"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v79 = [[ORCHSchemaORCHUnsupportedLanguageDetected alloc] initWithDictionary:v78];
      [(ORCHSchemaORCHClientEvent *)v5 setUnsupportedLanguageDetected:v79];
    }

    v94 = v14;
    v80 = [dictionaryCopy objectForKeyedSubscript:@"trpCandidateCreated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v81 = [[ORCHSchemaORCHTRPCandidateCreated alloc] initWithDictionary:v80];
      [(ORCHSchemaORCHClientEvent *)v5 setTrpCandidateCreated:v81];
    }

    v93 = v16;
    v82 = [dictionaryCopy objectForKeyedSubscript:@"audioTopologyReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v83 = [[ORCHSchemaORCHAudioTopologyReported alloc] initWithDictionary:v82];
      [(ORCHSchemaORCHClientEvent *)v5 setAudioTopologyReported:v83];
    }

    v98 = v6;
    v84 = [dictionaryCopy objectForKeyedSubscript:@"intelligenceFlowRequestContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v85 = [[ORCHSchemaORCHIntelligenceFlowRequestContext alloc] initWithDictionary:v84];
      [(ORCHSchemaORCHClientEvent *)v5 setIntelligenceFlowRequestContext:v85];
    }

    v86 = [dictionaryCopy objectForKeyedSubscript:@"userSessionState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v87 = [[ORCHSchemaORCHMUXUserSessionState alloc] initWithDictionary:v86];
      [(ORCHSchemaORCHClientEvent *)v5 setUserSessionState:v87];
    }

    v88 = [dictionaryCopy objectForKeyedSubscript:@"serverExecutionValuesReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v89 = [[ORCHSchemaORCHServerExecutionValuesReported alloc] initWithDictionary:v88];
      [(ORCHSchemaORCHClientEvent *)v5 setServerExecutionValuesReported:v89];
    }

    v90 = v5;
  }

  return v5;
}

- (ORCHSchemaORCHClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ORCHSchemaORCHClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ORCHSchemaORCHClientEvent *)self dictionaryRepresentation];
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
  if (self->_aceCommandContext)
  {
    aceCommandContext = [(ORCHSchemaORCHClientEvent *)self aceCommandContext];
    dictionaryRepresentation = [aceCommandContext dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"aceCommandContext"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"aceCommandContext"];
    }
  }

  if (self->_asrBridgeContext)
  {
    asrBridgeContext = [(ORCHSchemaORCHClientEvent *)self asrBridgeContext];
    dictionaryRepresentation2 = [asrBridgeContext dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"asrBridgeContext"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"asrBridgeContext"];
    }
  }

  if (self->_assetSetsReported)
  {
    assetSetsReported = [(ORCHSchemaORCHClientEvent *)self assetSetsReported];
    dictionaryRepresentation3 = [assetSetsReported dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"assetSetsReported"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"assetSetsReported"];
    }
  }

  if (self->_assistantdLaunchMetadataReported)
  {
    assistantdLaunchMetadataReported = [(ORCHSchemaORCHClientEvent *)self assistantdLaunchMetadataReported];
    dictionaryRepresentation4 = [assistantdLaunchMetadataReported dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"assistantdLaunchMetadataReported"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"assistantdLaunchMetadataReported"];
    }
  }

  if (self->_audioTopologyReported)
  {
    audioTopologyReported = [(ORCHSchemaORCHClientEvent *)self audioTopologyReported];
    dictionaryRepresentation5 = [audioTopologyReported dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"audioTopologyReported"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"audioTopologyReported"];
    }
  }

  if (self->_availableAssets)
  {
    availableAssets = [(ORCHSchemaORCHClientEvent *)self availableAssets];
    dictionaryRepresentation6 = [availableAssets dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"availableAssets"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"availableAssets"];
    }
  }

  if (self->_candidateRequestContext)
  {
    candidateRequestContext = [(ORCHSchemaORCHClientEvent *)self candidateRequestContext];
    dictionaryRepresentation7 = [candidateRequestContext dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"candidateRequestContext"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"candidateRequestContext"];
    }
  }

  if (self->_cdmBridgeContext)
  {
    cdmBridgeContext = [(ORCHSchemaORCHClientEvent *)self cdmBridgeContext];
    dictionaryRepresentation8 = [cdmBridgeContext dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"cdmBridgeContext"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"cdmBridgeContext"];
    }
  }

  if (self->_contextSubmissionMessage)
  {
    contextSubmissionMessage = [(ORCHSchemaORCHClientEvent *)self contextSubmissionMessage];
    dictionaryRepresentation9 = [contextSubmissionMessage dictionaryRepresentation];
    if (dictionaryRepresentation9)
    {
      [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"contextSubmissionMessage"];
    }

    else
    {
      null9 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null9 forKeyedSubscript:@"contextSubmissionMessage"];
    }
  }

  if (self->_eventMetadata)
  {
    eventMetadata = [(ORCHSchemaORCHClientEvent *)self eventMetadata];
    dictionaryRepresentation10 = [eventMetadata dictionaryRepresentation];
    if (dictionaryRepresentation10)
    {
      [dictionary setObject:dictionaryRepresentation10 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      null10 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null10 forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_executeOnRemoteRequestContext)
  {
    executeOnRemoteRequestContext = [(ORCHSchemaORCHClientEvent *)self executeOnRemoteRequestContext];
    dictionaryRepresentation11 = [executeOnRemoteRequestContext dictionaryRepresentation];
    if (dictionaryRepresentation11)
    {
      [dictionary setObject:dictionaryRepresentation11 forKeyedSubscript:@"executeOnRemoteRequestContext"];
    }

    else
    {
      null11 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null11 forKeyedSubscript:@"executeOnRemoteRequestContext"];
    }
  }

  if (self->_executionBridgeContext)
  {
    executionBridgeContext = [(ORCHSchemaORCHClientEvent *)self executionBridgeContext];
    dictionaryRepresentation12 = [executionBridgeContext dictionaryRepresentation];
    if (dictionaryRepresentation12)
    {
      [dictionary setObject:dictionaryRepresentation12 forKeyedSubscript:@"executionBridgeContext"];
    }

    else
    {
      null12 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null12 forKeyedSubscript:@"executionBridgeContext"];
    }
  }

  if (self->_flowOutputSubmitted)
  {
    flowOutputSubmitted = [(ORCHSchemaORCHClientEvent *)self flowOutputSubmitted];
    dictionaryRepresentation13 = [flowOutputSubmitted dictionaryRepresentation];
    if (dictionaryRepresentation13)
    {
      [dictionary setObject:dictionaryRepresentation13 forKeyedSubscript:@"flowOutputSubmitted"];
    }

    else
    {
      null13 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null13 forKeyedSubscript:@"flowOutputSubmitted"];
    }
  }

  if (self->_identityBridgeRequestContext)
  {
    identityBridgeRequestContext = [(ORCHSchemaORCHClientEvent *)self identityBridgeRequestContext];
    dictionaryRepresentation14 = [identityBridgeRequestContext dictionaryRepresentation];
    if (dictionaryRepresentation14)
    {
      [dictionary setObject:dictionaryRepresentation14 forKeyedSubscript:@"identityBridgeRequestContext"];
    }

    else
    {
      null14 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null14 forKeyedSubscript:@"identityBridgeRequestContext"];
    }
  }

  if (self->_intelligenceFlowQuerySent)
  {
    intelligenceFlowQuerySent = [(ORCHSchemaORCHClientEvent *)self intelligenceFlowQuerySent];
    dictionaryRepresentation15 = [intelligenceFlowQuerySent dictionaryRepresentation];
    if (dictionaryRepresentation15)
    {
      [dictionary setObject:dictionaryRepresentation15 forKeyedSubscript:@"intelligenceFlowQuerySent"];
    }

    else
    {
      null15 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null15 forKeyedSubscript:@"intelligenceFlowQuerySent"];
    }
  }

  if (self->_intelligenceFlowRequestContext)
  {
    intelligenceFlowRequestContext = [(ORCHSchemaORCHClientEvent *)self intelligenceFlowRequestContext];
    dictionaryRepresentation16 = [intelligenceFlowRequestContext dictionaryRepresentation];
    if (dictionaryRepresentation16)
    {
      [dictionary setObject:dictionaryRepresentation16 forKeyedSubscript:@"intelligenceFlowRequestContext"];
    }

    else
    {
      null16 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null16 forKeyedSubscript:@"intelligenceFlowRequestContext"];
    }
  }

  if (self->_multiUserResultCandidate)
  {
    multiUserResultCandidate = [(ORCHSchemaORCHClientEvent *)self multiUserResultCandidate];
    dictionaryRepresentation17 = [multiUserResultCandidate dictionaryRepresentation];
    if (dictionaryRepresentation17)
    {
      [dictionary setObject:dictionaryRepresentation17 forKeyedSubscript:@"multiUserResultCandidate"];
    }

    else
    {
      null17 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null17 forKeyedSubscript:@"multiUserResultCandidate"];
    }
  }

  if (self->_multiUserResultSelected)
  {
    multiUserResultSelected = [(ORCHSchemaORCHClientEvent *)self multiUserResultSelected];
    dictionaryRepresentation18 = [multiUserResultSelected dictionaryRepresentation];
    if (dictionaryRepresentation18)
    {
      [dictionary setObject:dictionaryRepresentation18 forKeyedSubscript:@"multiUserResultSelected"];
    }

    else
    {
      null18 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null18 forKeyedSubscript:@"multiUserResultSelected"];
    }
  }

  if (self->_muxBridgeContext)
  {
    muxBridgeContext = [(ORCHSchemaORCHClientEvent *)self muxBridgeContext];
    dictionaryRepresentation19 = [muxBridgeContext dictionaryRepresentation];
    if (dictionaryRepresentation19)
    {
      [dictionary setObject:dictionaryRepresentation19 forKeyedSubscript:@"muxBridgeContext"];
    }

    else
    {
      null19 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null19 forKeyedSubscript:@"muxBridgeContext"];
    }
  }

  if (self->_nlRouterBridgeContext)
  {
    nlRouterBridgeContext = [(ORCHSchemaORCHClientEvent *)self nlRouterBridgeContext];
    dictionaryRepresentation20 = [nlRouterBridgeContext dictionaryRepresentation];
    if (dictionaryRepresentation20)
    {
      [dictionary setObject:dictionaryRepresentation20 forKeyedSubscript:@"nlRouterBridgeContext"];
    }

    else
    {
      null20 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null20 forKeyedSubscript:@"nlRouterBridgeContext"];
    }
  }

  if (self->_nlRouterBridgeSubComponentContext)
  {
    nlRouterBridgeSubComponentContext = [(ORCHSchemaORCHClientEvent *)self nlRouterBridgeSubComponentContext];
    dictionaryRepresentation21 = [nlRouterBridgeSubComponentContext dictionaryRepresentation];
    if (dictionaryRepresentation21)
    {
      [dictionary setObject:dictionaryRepresentation21 forKeyedSubscript:@"nlRouterBridgeSubComponentContext"];
    }

    else
    {
      null21 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null21 forKeyedSubscript:@"nlRouterBridgeSubComponentContext"];
    }
  }

  if (self->_nlv3ServerFallbackDeprecated)
  {
    nlv3ServerFallbackDeprecated = [(ORCHSchemaORCHClientEvent *)self nlv3ServerFallbackDeprecated];
    dictionaryRepresentation22 = [nlv3ServerFallbackDeprecated dictionaryRepresentation];
    if (dictionaryRepresentation22)
    {
      [dictionary setObject:dictionaryRepresentation22 forKeyedSubscript:@"nlv3ServerFallbackDeprecated"];
    }

    else
    {
      null22 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null22 forKeyedSubscript:@"nlv3ServerFallbackDeprecated"];
    }
  }

  if (self->_orchDeviceDynamicContext)
  {
    orchDeviceDynamicContext = [(ORCHSchemaORCHClientEvent *)self orchDeviceDynamicContext];
    dictionaryRepresentation23 = [orchDeviceDynamicContext dictionaryRepresentation];
    if (dictionaryRepresentation23)
    {
      [dictionary setObject:dictionaryRepresentation23 forKeyedSubscript:@"orchDeviceDynamicContext"];
    }

    else
    {
      null23 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null23 forKeyedSubscript:@"orchDeviceDynamicContext"];
    }
  }

  if (self->_pommesBridgeContext)
  {
    pommesBridgeContext = [(ORCHSchemaORCHClientEvent *)self pommesBridgeContext];
    dictionaryRepresentation24 = [pommesBridgeContext dictionaryRepresentation];
    if (dictionaryRepresentation24)
    {
      [dictionary setObject:dictionaryRepresentation24 forKeyedSubscript:@"pommesBridgeContext"];
    }

    else
    {
      null24 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null24 forKeyedSubscript:@"pommesBridgeContext"];
    }
  }

  if (self->_powerContextPolicyReported)
  {
    powerContextPolicyReported = [(ORCHSchemaORCHClientEvent *)self powerContextPolicyReported];
    dictionaryRepresentation25 = [powerContextPolicyReported dictionaryRepresentation];
    if (dictionaryRepresentation25)
    {
      [dictionary setObject:dictionaryRepresentation25 forKeyedSubscript:@"powerContextPolicyReported"];
    }

    else
    {
      null25 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null25 forKeyedSubscript:@"powerContextPolicyReported"];
    }
  }

  if (self->_requestContext)
  {
    requestContext = [(ORCHSchemaORCHClientEvent *)self requestContext];
    dictionaryRepresentation26 = [requestContext dictionaryRepresentation];
    if (dictionaryRepresentation26)
    {
      [dictionary setObject:dictionaryRepresentation26 forKeyedSubscript:@"requestContext"];
    }

    else
    {
      null26 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null26 forKeyedSubscript:@"requestContext"];
    }
  }

  if (self->_requestMitigated)
  {
    requestMitigated = [(ORCHSchemaORCHClientEvent *)self requestMitigated];
    dictionaryRepresentation27 = [requestMitigated dictionaryRepresentation];
    if (dictionaryRepresentation27)
    {
      [dictionary setObject:dictionaryRepresentation27 forKeyedSubscript:@"requestMitigated"];
    }

    else
    {
      null27 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null27 forKeyedSubscript:@"requestMitigated"];
    }
  }

  if (self->_resourceUtilizationMetadata)
  {
    resourceUtilizationMetadata = [(ORCHSchemaORCHClientEvent *)self resourceUtilizationMetadata];
    dictionaryRepresentation28 = [resourceUtilizationMetadata dictionaryRepresentation];
    if (dictionaryRepresentation28)
    {
      [dictionary setObject:dictionaryRepresentation28 forKeyedSubscript:@"resourceUtilizationMetadata"];
    }

    else
    {
      null28 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null28 forKeyedSubscript:@"resourceUtilizationMetadata"];
    }
  }

  if (self->_resultCandidate)
  {
    resultCandidate = [(ORCHSchemaORCHClientEvent *)self resultCandidate];
    dictionaryRepresentation29 = [resultCandidate dictionaryRepresentation];
    if (dictionaryRepresentation29)
    {
      [dictionary setObject:dictionaryRepresentation29 forKeyedSubscript:@"resultCandidate"];
    }

    else
    {
      null29 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null29 forKeyedSubscript:@"resultCandidate"];
    }
  }

  if (self->_resultSelected)
  {
    resultSelected = [(ORCHSchemaORCHClientEvent *)self resultSelected];
    dictionaryRepresentation30 = [resultSelected dictionaryRepresentation];
    if (dictionaryRepresentation30)
    {
      [dictionary setObject:dictionaryRepresentation30 forKeyedSubscript:@"resultSelected"];
    }

    else
    {
      null30 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null30 forKeyedSubscript:@"resultSelected"];
    }
  }

  if (self->_routerRewrittenUtterance)
  {
    routerRewrittenUtterance = [(ORCHSchemaORCHClientEvent *)self routerRewrittenUtterance];
    dictionaryRepresentation31 = [routerRewrittenUtterance dictionaryRepresentation];
    if (dictionaryRepresentation31)
    {
      [dictionary setObject:dictionaryRepresentation31 forKeyedSubscript:@"routerRewrittenUtterance"];
    }

    else
    {
      null31 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null31 forKeyedSubscript:@"routerRewrittenUtterance"];
    }
  }

  if (self->_serverExecutionValuesReported)
  {
    serverExecutionValuesReported = [(ORCHSchemaORCHClientEvent *)self serverExecutionValuesReported];
    dictionaryRepresentation32 = [serverExecutionValuesReported dictionaryRepresentation];
    if (dictionaryRepresentation32)
    {
      [dictionary setObject:dictionaryRepresentation32 forKeyedSubscript:@"serverExecutionValuesReported"];
    }

    else
    {
      null32 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null32 forKeyedSubscript:@"serverExecutionValuesReported"];
    }
  }

  if (self->_serverFallbackContext)
  {
    serverFallbackContext = [(ORCHSchemaORCHClientEvent *)self serverFallbackContext];
    dictionaryRepresentation33 = [serverFallbackContext dictionaryRepresentation];
    if (dictionaryRepresentation33)
    {
      [dictionary setObject:dictionaryRepresentation33 forKeyedSubscript:@"serverFallbackContext"];
    }

    else
    {
      null33 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null33 forKeyedSubscript:@"serverFallbackContext"];
    }
  }

  if (self->_shimToolContext)
  {
    shimToolContext = [(ORCHSchemaORCHClientEvent *)self shimToolContext];
    dictionaryRepresentation34 = [shimToolContext dictionaryRepresentation];
    if (dictionaryRepresentation34)
    {
      [dictionary setObject:dictionaryRepresentation34 forKeyedSubscript:@"shimToolContext"];
    }

    else
    {
      null34 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null34 forKeyedSubscript:@"shimToolContext"];
    }
  }

  if (self->_subRequestContext)
  {
    subRequestContext = [(ORCHSchemaORCHClientEvent *)self subRequestContext];
    dictionaryRepresentation35 = [subRequestContext dictionaryRepresentation];
    if (dictionaryRepresentation35)
    {
      [dictionary setObject:dictionaryRepresentation35 forKeyedSubscript:@"subRequestContext"];
    }

    else
    {
      null35 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null35 forKeyedSubscript:@"subRequestContext"];
    }
  }

  if (self->_subRequestFallback)
  {
    subRequestFallback = [(ORCHSchemaORCHClientEvent *)self subRequestFallback];
    dictionaryRepresentation36 = [subRequestFallback dictionaryRepresentation];
    if (dictionaryRepresentation36)
    {
      [dictionary setObject:dictionaryRepresentation36 forKeyedSubscript:@"subRequestFallback"];
    }

    else
    {
      null36 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null36 forKeyedSubscript:@"subRequestFallback"];
    }
  }

  if (self->_trpCandidateCreated)
  {
    trpCandidateCreated = [(ORCHSchemaORCHClientEvent *)self trpCandidateCreated];
    dictionaryRepresentation37 = [trpCandidateCreated dictionaryRepresentation];
    if (dictionaryRepresentation37)
    {
      [dictionary setObject:dictionaryRepresentation37 forKeyedSubscript:@"trpCandidateCreated"];
    }

    else
    {
      null37 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null37 forKeyedSubscript:@"trpCandidateCreated"];
    }
  }

  if (self->_trpCandidateReceived)
  {
    trpCandidateReceived = [(ORCHSchemaORCHClientEvent *)self trpCandidateReceived];
    dictionaryRepresentation38 = [trpCandidateReceived dictionaryRepresentation];
    if (dictionaryRepresentation38)
    {
      [dictionary setObject:dictionaryRepresentation38 forKeyedSubscript:@"trpCandidateReceived"];
    }

    else
    {
      null38 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null38 forKeyedSubscript:@"trpCandidateReceived"];
    }
  }

  if (self->_trpFinalized)
  {
    trpFinalized = [(ORCHSchemaORCHClientEvent *)self trpFinalized];
    dictionaryRepresentation39 = [trpFinalized dictionaryRepresentation];
    if (dictionaryRepresentation39)
    {
      [dictionary setObject:dictionaryRepresentation39 forKeyedSubscript:@"trpFinalized"];
    }

    else
    {
      null39 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null39 forKeyedSubscript:@"trpFinalized"];
    }
  }

  if (self->_uiActivationContext)
  {
    uiActivationContext = [(ORCHSchemaORCHClientEvent *)self uiActivationContext];
    dictionaryRepresentation40 = [uiActivationContext dictionaryRepresentation];
    if (dictionaryRepresentation40)
    {
      [dictionary setObject:dictionaryRepresentation40 forKeyedSubscript:@"uiActivationContext"];
    }

    else
    {
      null40 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null40 forKeyedSubscript:@"uiActivationContext"];
    }
  }

  if (self->_unsupportedLanguageDetected)
  {
    unsupportedLanguageDetected = [(ORCHSchemaORCHClientEvent *)self unsupportedLanguageDetected];
    dictionaryRepresentation41 = [unsupportedLanguageDetected dictionaryRepresentation];
    if (dictionaryRepresentation41)
    {
      [dictionary setObject:dictionaryRepresentation41 forKeyedSubscript:@"unsupportedLanguageDetected"];
    }

    else
    {
      null41 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null41 forKeyedSubscript:@"unsupportedLanguageDetected"];
    }
  }

  if (self->_userSessionState)
  {
    userSessionState = [(ORCHSchemaORCHClientEvent *)self userSessionState];
    dictionaryRepresentation42 = [userSessionState dictionaryRepresentation];
    if (dictionaryRepresentation42)
    {
      [dictionary setObject:dictionaryRepresentation42 forKeyedSubscript:@"userSessionState"];
    }

    else
    {
      null42 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null42 forKeyedSubscript:@"userSessionState"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];
  v130 = dictionary;

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(ORCHSchemaORCHClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(ORCHSchemaORCHResourceUtilizationMetadata *)self->_resourceUtilizationMetadata hash]^ v3;
  v5 = [(ORCHSchemaORCHRequestContext *)self->_requestContext hash];
  v6 = v4 ^ v5 ^ [(ORCHSchemaORCHASRBridgeContext *)self->_asrBridgeContext hash];
  v7 = [(ORCHSchemaORCHCDMBridgeContext *)self->_cdmBridgeContext hash];
  v8 = v7 ^ [(ORCHSchemaORCHExecutionBridgeContext *)self->_executionBridgeContext hash];
  v9 = v6 ^ v8 ^ [(ORCHSchemaORCHServerFallbackContext *)self->_serverFallbackContext hash];
  v10 = [(ORCHSchemaORCHFlowOutputSubmitted *)self->_flowOutputSubmitted hash];
  v11 = v10 ^ [(ORCHSchemaORCHResultCandidateReceived *)self->_resultCandidate hash];
  v12 = v11 ^ [(ORCHSchemaORCHResultSelected *)self->_resultSelected hash];
  v13 = v9 ^ v12 ^ [(ORCHSchemaORCHConversationContextSubmitted *)self->_contextSubmissionMessage hash];
  v14 = [(ORCHSchemaORCHAssetsReported *)self->_availableAssets hash];
  v15 = v14 ^ [(ORCHSchemaORCHDeviceDynamicContext *)self->_orchDeviceDynamicContext hash];
  v16 = v15 ^ [(ORCHSchemaORCHPommesBridgeContext *)self->_pommesBridgeContext hash];
  v17 = v16 ^ [(ORCHSchemaORCHMUXBridgeContext *)self->_muxBridgeContext hash];
  v18 = v13 ^ v17 ^ [(ORCHSchemaORCHMultiUserResultCandidateReceived *)self->_multiUserResultCandidate hash];
  v19 = [(ORCHSchemaORCHMultiUserResultCandidateSelected *)self->_multiUserResultSelected hash];
  v20 = v19 ^ [(ORCHSchemaORCHAceCommandContext *)self->_aceCommandContext hash];
  v21 = v20 ^ [(ORCHSchemaORCHTRPFinalized *)self->_trpFinalized hash];
  v22 = v21 ^ [(ORCHSchemaORCHRequestMitigated *)self->_requestMitigated hash];
  v23 = v22 ^ [(ORCHSchemaORCHNLV3ServerFallbackDeprecated *)self->_nlv3ServerFallbackDeprecated hash];
  v24 = v18 ^ v23 ^ [(ORCHSchemaORCHUIActivationContext *)self->_uiActivationContext hash];
  v25 = [(ORCHSchemaORCHTRPCandidateReceived *)self->_trpCandidateReceived hash];
  v26 = v25 ^ [(ORCHSchemaORCHIdentityBridgeRequestContext *)self->_identityBridgeRequestContext hash];
  v27 = v26 ^ [(ORCHSchemaORCHAssetSetsReported *)self->_assetSetsReported hash];
  v28 = v27 ^ [(ORCHSchemaORCHCandidateRequestContext *)self->_candidateRequestContext hash];
  v29 = v28 ^ [(ORCHSchemaORCHPowerContextPolicyReported *)self->_powerContextPolicyReported hash];
  v30 = v29 ^ [(ORCHSchemaORCHExecuteOnRemoteRequestContext *)self->_executeOnRemoteRequestContext hash];
  v31 = v24 ^ v30 ^ [(ORCHSchemaORCHAssistantDaemonLaunchMetadataReported *)self->_assistantdLaunchMetadataReported hash];
  v32 = [(ORCHSchemaORCHIntelligenceFlowQuerySent *)self->_intelligenceFlowQuerySent hash];
  v33 = v32 ^ [(ORCHSchemaORCHSubRequestContext *)self->_subRequestContext hash];
  v34 = v33 ^ [(ORCHSchemaNLRouterRewrittenUtteranceTier1 *)self->_routerRewrittenUtterance hash];
  v35 = v34 ^ [(ORCHSchemaORCHNLRouterBridgeContext *)self->_nlRouterBridgeContext hash];
  v36 = v35 ^ [(ORCHSchemaORCHShimToolContext *)self->_shimToolContext hash];
  v37 = v36 ^ [(ORCHSchemaORCHIntelligenceFlowSubRequestFallback *)self->_subRequestFallback hash];
  v38 = v37 ^ [(ORCHSchemaORCHNLRouterBridgeSubComponentContext *)self->_nlRouterBridgeSubComponentContext hash];
  v39 = v31 ^ v38 ^ [(ORCHSchemaORCHUnsupportedLanguageDetected *)self->_unsupportedLanguageDetected hash];
  v40 = [(ORCHSchemaORCHTRPCandidateCreated *)self->_trpCandidateCreated hash];
  v41 = v40 ^ [(ORCHSchemaORCHAudioTopologyReported *)self->_audioTopologyReported hash];
  v42 = v41 ^ [(ORCHSchemaORCHIntelligenceFlowRequestContext *)self->_intelligenceFlowRequestContext hash];
  v43 = v42 ^ [(ORCHSchemaORCHMUXUserSessionState *)self->_userSessionState hash];
  return v39 ^ v43 ^ [(ORCHSchemaORCHServerExecutionValuesReported *)self->_serverExecutionValuesReported hash];
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

  eventMetadata = [(ORCHSchemaORCHClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  eventMetadata3 = [(ORCHSchemaORCHClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(ORCHSchemaORCHClientEvent *)self eventMetadata];
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

  eventMetadata = [(ORCHSchemaORCHClientEvent *)self resourceUtilizationMetadata];
  eventMetadata2 = [equalCopy resourceUtilizationMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  resourceUtilizationMetadata = [(ORCHSchemaORCHClientEvent *)self resourceUtilizationMetadata];
  if (resourceUtilizationMetadata)
  {
    v14 = resourceUtilizationMetadata;
    resourceUtilizationMetadata2 = [(ORCHSchemaORCHClientEvent *)self resourceUtilizationMetadata];
    resourceUtilizationMetadata3 = [equalCopy resourceUtilizationMetadata];
    v17 = [resourceUtilizationMetadata2 isEqual:resourceUtilizationMetadata3];

    if (!v17)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(ORCHSchemaORCHClientEvent *)self requestContext];
  eventMetadata2 = [equalCopy requestContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  requestContext = [(ORCHSchemaORCHClientEvent *)self requestContext];
  if (requestContext)
  {
    v19 = requestContext;
    requestContext2 = [(ORCHSchemaORCHClientEvent *)self requestContext];
    requestContext3 = [equalCopy requestContext];
    v22 = [requestContext2 isEqual:requestContext3];

    if (!v22)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(ORCHSchemaORCHClientEvent *)self asrBridgeContext];
  eventMetadata2 = [equalCopy asrBridgeContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  asrBridgeContext = [(ORCHSchemaORCHClientEvent *)self asrBridgeContext];
  if (asrBridgeContext)
  {
    v24 = asrBridgeContext;
    asrBridgeContext2 = [(ORCHSchemaORCHClientEvent *)self asrBridgeContext];
    asrBridgeContext3 = [equalCopy asrBridgeContext];
    v27 = [asrBridgeContext2 isEqual:asrBridgeContext3];

    if (!v27)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(ORCHSchemaORCHClientEvent *)self cdmBridgeContext];
  eventMetadata2 = [equalCopy cdmBridgeContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  cdmBridgeContext = [(ORCHSchemaORCHClientEvent *)self cdmBridgeContext];
  if (cdmBridgeContext)
  {
    v29 = cdmBridgeContext;
    cdmBridgeContext2 = [(ORCHSchemaORCHClientEvent *)self cdmBridgeContext];
    cdmBridgeContext3 = [equalCopy cdmBridgeContext];
    v32 = [cdmBridgeContext2 isEqual:cdmBridgeContext3];

    if (!v32)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(ORCHSchemaORCHClientEvent *)self executionBridgeContext];
  eventMetadata2 = [equalCopy executionBridgeContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  executionBridgeContext = [(ORCHSchemaORCHClientEvent *)self executionBridgeContext];
  if (executionBridgeContext)
  {
    v34 = executionBridgeContext;
    executionBridgeContext2 = [(ORCHSchemaORCHClientEvent *)self executionBridgeContext];
    executionBridgeContext3 = [equalCopy executionBridgeContext];
    v37 = [executionBridgeContext2 isEqual:executionBridgeContext3];

    if (!v37)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(ORCHSchemaORCHClientEvent *)self serverFallbackContext];
  eventMetadata2 = [equalCopy serverFallbackContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  serverFallbackContext = [(ORCHSchemaORCHClientEvent *)self serverFallbackContext];
  if (serverFallbackContext)
  {
    v39 = serverFallbackContext;
    serverFallbackContext2 = [(ORCHSchemaORCHClientEvent *)self serverFallbackContext];
    serverFallbackContext3 = [equalCopy serverFallbackContext];
    v42 = [serverFallbackContext2 isEqual:serverFallbackContext3];

    if (!v42)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(ORCHSchemaORCHClientEvent *)self flowOutputSubmitted];
  eventMetadata2 = [equalCopy flowOutputSubmitted];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  flowOutputSubmitted = [(ORCHSchemaORCHClientEvent *)self flowOutputSubmitted];
  if (flowOutputSubmitted)
  {
    v44 = flowOutputSubmitted;
    flowOutputSubmitted2 = [(ORCHSchemaORCHClientEvent *)self flowOutputSubmitted];
    flowOutputSubmitted3 = [equalCopy flowOutputSubmitted];
    v47 = [flowOutputSubmitted2 isEqual:flowOutputSubmitted3];

    if (!v47)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(ORCHSchemaORCHClientEvent *)self resultCandidate];
  eventMetadata2 = [equalCopy resultCandidate];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  resultCandidate = [(ORCHSchemaORCHClientEvent *)self resultCandidate];
  if (resultCandidate)
  {
    v49 = resultCandidate;
    resultCandidate2 = [(ORCHSchemaORCHClientEvent *)self resultCandidate];
    resultCandidate3 = [equalCopy resultCandidate];
    v52 = [resultCandidate2 isEqual:resultCandidate3];

    if (!v52)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(ORCHSchemaORCHClientEvent *)self resultSelected];
  eventMetadata2 = [equalCopy resultSelected];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  resultSelected = [(ORCHSchemaORCHClientEvent *)self resultSelected];
  if (resultSelected)
  {
    v54 = resultSelected;
    resultSelected2 = [(ORCHSchemaORCHClientEvent *)self resultSelected];
    resultSelected3 = [equalCopy resultSelected];
    v57 = [resultSelected2 isEqual:resultSelected3];

    if (!v57)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(ORCHSchemaORCHClientEvent *)self contextSubmissionMessage];
  eventMetadata2 = [equalCopy contextSubmissionMessage];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  contextSubmissionMessage = [(ORCHSchemaORCHClientEvent *)self contextSubmissionMessage];
  if (contextSubmissionMessage)
  {
    v59 = contextSubmissionMessage;
    contextSubmissionMessage2 = [(ORCHSchemaORCHClientEvent *)self contextSubmissionMessage];
    contextSubmissionMessage3 = [equalCopy contextSubmissionMessage];
    v62 = [contextSubmissionMessage2 isEqual:contextSubmissionMessage3];

    if (!v62)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(ORCHSchemaORCHClientEvent *)self availableAssets];
  eventMetadata2 = [equalCopy availableAssets];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  availableAssets = [(ORCHSchemaORCHClientEvent *)self availableAssets];
  if (availableAssets)
  {
    v64 = availableAssets;
    availableAssets2 = [(ORCHSchemaORCHClientEvent *)self availableAssets];
    availableAssets3 = [equalCopy availableAssets];
    v67 = [availableAssets2 isEqual:availableAssets3];

    if (!v67)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(ORCHSchemaORCHClientEvent *)self orchDeviceDynamicContext];
  eventMetadata2 = [equalCopy orchDeviceDynamicContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  orchDeviceDynamicContext = [(ORCHSchemaORCHClientEvent *)self orchDeviceDynamicContext];
  if (orchDeviceDynamicContext)
  {
    v69 = orchDeviceDynamicContext;
    orchDeviceDynamicContext2 = [(ORCHSchemaORCHClientEvent *)self orchDeviceDynamicContext];
    orchDeviceDynamicContext3 = [equalCopy orchDeviceDynamicContext];
    v72 = [orchDeviceDynamicContext2 isEqual:orchDeviceDynamicContext3];

    if (!v72)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(ORCHSchemaORCHClientEvent *)self pommesBridgeContext];
  eventMetadata2 = [equalCopy pommesBridgeContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  pommesBridgeContext = [(ORCHSchemaORCHClientEvent *)self pommesBridgeContext];
  if (pommesBridgeContext)
  {
    v74 = pommesBridgeContext;
    pommesBridgeContext2 = [(ORCHSchemaORCHClientEvent *)self pommesBridgeContext];
    pommesBridgeContext3 = [equalCopy pommesBridgeContext];
    v77 = [pommesBridgeContext2 isEqual:pommesBridgeContext3];

    if (!v77)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(ORCHSchemaORCHClientEvent *)self muxBridgeContext];
  eventMetadata2 = [equalCopy muxBridgeContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  muxBridgeContext = [(ORCHSchemaORCHClientEvent *)self muxBridgeContext];
  if (muxBridgeContext)
  {
    v79 = muxBridgeContext;
    muxBridgeContext2 = [(ORCHSchemaORCHClientEvent *)self muxBridgeContext];
    muxBridgeContext3 = [equalCopy muxBridgeContext];
    v82 = [muxBridgeContext2 isEqual:muxBridgeContext3];

    if (!v82)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(ORCHSchemaORCHClientEvent *)self multiUserResultCandidate];
  eventMetadata2 = [equalCopy multiUserResultCandidate];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  multiUserResultCandidate = [(ORCHSchemaORCHClientEvent *)self multiUserResultCandidate];
  if (multiUserResultCandidate)
  {
    v84 = multiUserResultCandidate;
    multiUserResultCandidate2 = [(ORCHSchemaORCHClientEvent *)self multiUserResultCandidate];
    multiUserResultCandidate3 = [equalCopy multiUserResultCandidate];
    v87 = [multiUserResultCandidate2 isEqual:multiUserResultCandidate3];

    if (!v87)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(ORCHSchemaORCHClientEvent *)self multiUserResultSelected];
  eventMetadata2 = [equalCopy multiUserResultSelected];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  multiUserResultSelected = [(ORCHSchemaORCHClientEvent *)self multiUserResultSelected];
  if (multiUserResultSelected)
  {
    v89 = multiUserResultSelected;
    multiUserResultSelected2 = [(ORCHSchemaORCHClientEvent *)self multiUserResultSelected];
    multiUserResultSelected3 = [equalCopy multiUserResultSelected];
    v92 = [multiUserResultSelected2 isEqual:multiUserResultSelected3];

    if (!v92)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(ORCHSchemaORCHClientEvent *)self aceCommandContext];
  eventMetadata2 = [equalCopy aceCommandContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  aceCommandContext = [(ORCHSchemaORCHClientEvent *)self aceCommandContext];
  if (aceCommandContext)
  {
    v94 = aceCommandContext;
    aceCommandContext2 = [(ORCHSchemaORCHClientEvent *)self aceCommandContext];
    aceCommandContext3 = [equalCopy aceCommandContext];
    v97 = [aceCommandContext2 isEqual:aceCommandContext3];

    if (!v97)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(ORCHSchemaORCHClientEvent *)self trpFinalized];
  eventMetadata2 = [equalCopy trpFinalized];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  trpFinalized = [(ORCHSchemaORCHClientEvent *)self trpFinalized];
  if (trpFinalized)
  {
    v99 = trpFinalized;
    trpFinalized2 = [(ORCHSchemaORCHClientEvent *)self trpFinalized];
    trpFinalized3 = [equalCopy trpFinalized];
    v102 = [trpFinalized2 isEqual:trpFinalized3];

    if (!v102)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(ORCHSchemaORCHClientEvent *)self requestMitigated];
  eventMetadata2 = [equalCopy requestMitigated];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  requestMitigated = [(ORCHSchemaORCHClientEvent *)self requestMitigated];
  if (requestMitigated)
  {
    v104 = requestMitigated;
    requestMitigated2 = [(ORCHSchemaORCHClientEvent *)self requestMitigated];
    requestMitigated3 = [equalCopy requestMitigated];
    v107 = [requestMitigated2 isEqual:requestMitigated3];

    if (!v107)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(ORCHSchemaORCHClientEvent *)self nlv3ServerFallbackDeprecated];
  eventMetadata2 = [equalCopy nlv3ServerFallbackDeprecated];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  nlv3ServerFallbackDeprecated = [(ORCHSchemaORCHClientEvent *)self nlv3ServerFallbackDeprecated];
  if (nlv3ServerFallbackDeprecated)
  {
    v109 = nlv3ServerFallbackDeprecated;
    nlv3ServerFallbackDeprecated2 = [(ORCHSchemaORCHClientEvent *)self nlv3ServerFallbackDeprecated];
    nlv3ServerFallbackDeprecated3 = [equalCopy nlv3ServerFallbackDeprecated];
    v112 = [nlv3ServerFallbackDeprecated2 isEqual:nlv3ServerFallbackDeprecated3];

    if (!v112)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(ORCHSchemaORCHClientEvent *)self uiActivationContext];
  eventMetadata2 = [equalCopy uiActivationContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  uiActivationContext = [(ORCHSchemaORCHClientEvent *)self uiActivationContext];
  if (uiActivationContext)
  {
    v114 = uiActivationContext;
    uiActivationContext2 = [(ORCHSchemaORCHClientEvent *)self uiActivationContext];
    uiActivationContext3 = [equalCopy uiActivationContext];
    v117 = [uiActivationContext2 isEqual:uiActivationContext3];

    if (!v117)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(ORCHSchemaORCHClientEvent *)self trpCandidateReceived];
  eventMetadata2 = [equalCopy trpCandidateReceived];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  trpCandidateReceived = [(ORCHSchemaORCHClientEvent *)self trpCandidateReceived];
  if (trpCandidateReceived)
  {
    v119 = trpCandidateReceived;
    trpCandidateReceived2 = [(ORCHSchemaORCHClientEvent *)self trpCandidateReceived];
    trpCandidateReceived3 = [equalCopy trpCandidateReceived];
    v122 = [trpCandidateReceived2 isEqual:trpCandidateReceived3];

    if (!v122)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(ORCHSchemaORCHClientEvent *)self identityBridgeRequestContext];
  eventMetadata2 = [equalCopy identityBridgeRequestContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  identityBridgeRequestContext = [(ORCHSchemaORCHClientEvent *)self identityBridgeRequestContext];
  if (identityBridgeRequestContext)
  {
    v124 = identityBridgeRequestContext;
    identityBridgeRequestContext2 = [(ORCHSchemaORCHClientEvent *)self identityBridgeRequestContext];
    identityBridgeRequestContext3 = [equalCopy identityBridgeRequestContext];
    v127 = [identityBridgeRequestContext2 isEqual:identityBridgeRequestContext3];

    if (!v127)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(ORCHSchemaORCHClientEvent *)self assetSetsReported];
  eventMetadata2 = [equalCopy assetSetsReported];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  assetSetsReported = [(ORCHSchemaORCHClientEvent *)self assetSetsReported];
  if (assetSetsReported)
  {
    v129 = assetSetsReported;
    assetSetsReported2 = [(ORCHSchemaORCHClientEvent *)self assetSetsReported];
    assetSetsReported3 = [equalCopy assetSetsReported];
    v132 = [assetSetsReported2 isEqual:assetSetsReported3];

    if (!v132)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(ORCHSchemaORCHClientEvent *)self candidateRequestContext];
  eventMetadata2 = [equalCopy candidateRequestContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  candidateRequestContext = [(ORCHSchemaORCHClientEvent *)self candidateRequestContext];
  if (candidateRequestContext)
  {
    v134 = candidateRequestContext;
    candidateRequestContext2 = [(ORCHSchemaORCHClientEvent *)self candidateRequestContext];
    candidateRequestContext3 = [equalCopy candidateRequestContext];
    v137 = [candidateRequestContext2 isEqual:candidateRequestContext3];

    if (!v137)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(ORCHSchemaORCHClientEvent *)self powerContextPolicyReported];
  eventMetadata2 = [equalCopy powerContextPolicyReported];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  powerContextPolicyReported = [(ORCHSchemaORCHClientEvent *)self powerContextPolicyReported];
  if (powerContextPolicyReported)
  {
    v139 = powerContextPolicyReported;
    powerContextPolicyReported2 = [(ORCHSchemaORCHClientEvent *)self powerContextPolicyReported];
    powerContextPolicyReported3 = [equalCopy powerContextPolicyReported];
    v142 = [powerContextPolicyReported2 isEqual:powerContextPolicyReported3];

    if (!v142)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(ORCHSchemaORCHClientEvent *)self executeOnRemoteRequestContext];
  eventMetadata2 = [equalCopy executeOnRemoteRequestContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  executeOnRemoteRequestContext = [(ORCHSchemaORCHClientEvent *)self executeOnRemoteRequestContext];
  if (executeOnRemoteRequestContext)
  {
    v144 = executeOnRemoteRequestContext;
    executeOnRemoteRequestContext2 = [(ORCHSchemaORCHClientEvent *)self executeOnRemoteRequestContext];
    executeOnRemoteRequestContext3 = [equalCopy executeOnRemoteRequestContext];
    v147 = [executeOnRemoteRequestContext2 isEqual:executeOnRemoteRequestContext3];

    if (!v147)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(ORCHSchemaORCHClientEvent *)self assistantdLaunchMetadataReported];
  eventMetadata2 = [equalCopy assistantdLaunchMetadataReported];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  assistantdLaunchMetadataReported = [(ORCHSchemaORCHClientEvent *)self assistantdLaunchMetadataReported];
  if (assistantdLaunchMetadataReported)
  {
    v149 = assistantdLaunchMetadataReported;
    assistantdLaunchMetadataReported2 = [(ORCHSchemaORCHClientEvent *)self assistantdLaunchMetadataReported];
    assistantdLaunchMetadataReported3 = [equalCopy assistantdLaunchMetadataReported];
    v152 = [assistantdLaunchMetadataReported2 isEqual:assistantdLaunchMetadataReported3];

    if (!v152)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(ORCHSchemaORCHClientEvent *)self intelligenceFlowQuerySent];
  eventMetadata2 = [equalCopy intelligenceFlowQuerySent];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  intelligenceFlowQuerySent = [(ORCHSchemaORCHClientEvent *)self intelligenceFlowQuerySent];
  if (intelligenceFlowQuerySent)
  {
    v154 = intelligenceFlowQuerySent;
    intelligenceFlowQuerySent2 = [(ORCHSchemaORCHClientEvent *)self intelligenceFlowQuerySent];
    intelligenceFlowQuerySent3 = [equalCopy intelligenceFlowQuerySent];
    v157 = [intelligenceFlowQuerySent2 isEqual:intelligenceFlowQuerySent3];

    if (!v157)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(ORCHSchemaORCHClientEvent *)self subRequestContext];
  eventMetadata2 = [equalCopy subRequestContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  subRequestContext = [(ORCHSchemaORCHClientEvent *)self subRequestContext];
  if (subRequestContext)
  {
    v159 = subRequestContext;
    subRequestContext2 = [(ORCHSchemaORCHClientEvent *)self subRequestContext];
    subRequestContext3 = [equalCopy subRequestContext];
    v162 = [subRequestContext2 isEqual:subRequestContext3];

    if (!v162)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(ORCHSchemaORCHClientEvent *)self routerRewrittenUtterance];
  eventMetadata2 = [equalCopy routerRewrittenUtterance];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  routerRewrittenUtterance = [(ORCHSchemaORCHClientEvent *)self routerRewrittenUtterance];
  if (routerRewrittenUtterance)
  {
    v164 = routerRewrittenUtterance;
    routerRewrittenUtterance2 = [(ORCHSchemaORCHClientEvent *)self routerRewrittenUtterance];
    routerRewrittenUtterance3 = [equalCopy routerRewrittenUtterance];
    v167 = [routerRewrittenUtterance2 isEqual:routerRewrittenUtterance3];

    if (!v167)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(ORCHSchemaORCHClientEvent *)self nlRouterBridgeContext];
  eventMetadata2 = [equalCopy nlRouterBridgeContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  nlRouterBridgeContext = [(ORCHSchemaORCHClientEvent *)self nlRouterBridgeContext];
  if (nlRouterBridgeContext)
  {
    v169 = nlRouterBridgeContext;
    nlRouterBridgeContext2 = [(ORCHSchemaORCHClientEvent *)self nlRouterBridgeContext];
    nlRouterBridgeContext3 = [equalCopy nlRouterBridgeContext];
    v172 = [nlRouterBridgeContext2 isEqual:nlRouterBridgeContext3];

    if (!v172)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(ORCHSchemaORCHClientEvent *)self shimToolContext];
  eventMetadata2 = [equalCopy shimToolContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  shimToolContext = [(ORCHSchemaORCHClientEvent *)self shimToolContext];
  if (shimToolContext)
  {
    v174 = shimToolContext;
    shimToolContext2 = [(ORCHSchemaORCHClientEvent *)self shimToolContext];
    shimToolContext3 = [equalCopy shimToolContext];
    v177 = [shimToolContext2 isEqual:shimToolContext3];

    if (!v177)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(ORCHSchemaORCHClientEvent *)self subRequestFallback];
  eventMetadata2 = [equalCopy subRequestFallback];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  subRequestFallback = [(ORCHSchemaORCHClientEvent *)self subRequestFallback];
  if (subRequestFallback)
  {
    v179 = subRequestFallback;
    subRequestFallback2 = [(ORCHSchemaORCHClientEvent *)self subRequestFallback];
    subRequestFallback3 = [equalCopy subRequestFallback];
    v182 = [subRequestFallback2 isEqual:subRequestFallback3];

    if (!v182)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(ORCHSchemaORCHClientEvent *)self nlRouterBridgeSubComponentContext];
  eventMetadata2 = [equalCopy nlRouterBridgeSubComponentContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  nlRouterBridgeSubComponentContext = [(ORCHSchemaORCHClientEvent *)self nlRouterBridgeSubComponentContext];
  if (nlRouterBridgeSubComponentContext)
  {
    v184 = nlRouterBridgeSubComponentContext;
    nlRouterBridgeSubComponentContext2 = [(ORCHSchemaORCHClientEvent *)self nlRouterBridgeSubComponentContext];
    nlRouterBridgeSubComponentContext3 = [equalCopy nlRouterBridgeSubComponentContext];
    v187 = [nlRouterBridgeSubComponentContext2 isEqual:nlRouterBridgeSubComponentContext3];

    if (!v187)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(ORCHSchemaORCHClientEvent *)self unsupportedLanguageDetected];
  eventMetadata2 = [equalCopy unsupportedLanguageDetected];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  unsupportedLanguageDetected = [(ORCHSchemaORCHClientEvent *)self unsupportedLanguageDetected];
  if (unsupportedLanguageDetected)
  {
    v189 = unsupportedLanguageDetected;
    unsupportedLanguageDetected2 = [(ORCHSchemaORCHClientEvent *)self unsupportedLanguageDetected];
    unsupportedLanguageDetected3 = [equalCopy unsupportedLanguageDetected];
    v192 = [unsupportedLanguageDetected2 isEqual:unsupportedLanguageDetected3];

    if (!v192)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(ORCHSchemaORCHClientEvent *)self trpCandidateCreated];
  eventMetadata2 = [equalCopy trpCandidateCreated];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  trpCandidateCreated = [(ORCHSchemaORCHClientEvent *)self trpCandidateCreated];
  if (trpCandidateCreated)
  {
    v194 = trpCandidateCreated;
    trpCandidateCreated2 = [(ORCHSchemaORCHClientEvent *)self trpCandidateCreated];
    trpCandidateCreated3 = [equalCopy trpCandidateCreated];
    v197 = [trpCandidateCreated2 isEqual:trpCandidateCreated3];

    if (!v197)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(ORCHSchemaORCHClientEvent *)self audioTopologyReported];
  eventMetadata2 = [equalCopy audioTopologyReported];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  audioTopologyReported = [(ORCHSchemaORCHClientEvent *)self audioTopologyReported];
  if (audioTopologyReported)
  {
    v199 = audioTopologyReported;
    audioTopologyReported2 = [(ORCHSchemaORCHClientEvent *)self audioTopologyReported];
    audioTopologyReported3 = [equalCopy audioTopologyReported];
    v202 = [audioTopologyReported2 isEqual:audioTopologyReported3];

    if (!v202)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(ORCHSchemaORCHClientEvent *)self intelligenceFlowRequestContext];
  eventMetadata2 = [equalCopy intelligenceFlowRequestContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  intelligenceFlowRequestContext = [(ORCHSchemaORCHClientEvent *)self intelligenceFlowRequestContext];
  if (intelligenceFlowRequestContext)
  {
    v204 = intelligenceFlowRequestContext;
    intelligenceFlowRequestContext2 = [(ORCHSchemaORCHClientEvent *)self intelligenceFlowRequestContext];
    intelligenceFlowRequestContext3 = [equalCopy intelligenceFlowRequestContext];
    v207 = [intelligenceFlowRequestContext2 isEqual:intelligenceFlowRequestContext3];

    if (!v207)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(ORCHSchemaORCHClientEvent *)self userSessionState];
  eventMetadata2 = [equalCopy userSessionState];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_212;
  }

  userSessionState = [(ORCHSchemaORCHClientEvent *)self userSessionState];
  if (userSessionState)
  {
    v209 = userSessionState;
    userSessionState2 = [(ORCHSchemaORCHClientEvent *)self userSessionState];
    userSessionState3 = [equalCopy userSessionState];
    v212 = [userSessionState2 isEqual:userSessionState3];

    if (!v212)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  eventMetadata = [(ORCHSchemaORCHClientEvent *)self serverExecutionValuesReported];
  eventMetadata2 = [equalCopy serverExecutionValuesReported];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    serverExecutionValuesReported = [(ORCHSchemaORCHClientEvent *)self serverExecutionValuesReported];
    if (!serverExecutionValuesReported)
    {

LABEL_216:
      v218 = 1;
      goto LABEL_214;
    }

    v214 = serverExecutionValuesReported;
    serverExecutionValuesReported2 = [(ORCHSchemaORCHClientEvent *)self serverExecutionValuesReported];
    serverExecutionValuesReported3 = [equalCopy serverExecutionValuesReported];
    v217 = [serverExecutionValuesReported2 isEqual:serverExecutionValuesReported3];

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
  eventMetadata = [(ORCHSchemaORCHClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(ORCHSchemaORCHClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  resourceUtilizationMetadata = [(ORCHSchemaORCHClientEvent *)self resourceUtilizationMetadata];

  if (resourceUtilizationMetadata)
  {
    resourceUtilizationMetadata2 = [(ORCHSchemaORCHClientEvent *)self resourceUtilizationMetadata];
    PBDataWriterWriteSubmessage();
  }

  requestContext = [(ORCHSchemaORCHClientEvent *)self requestContext];

  if (requestContext)
  {
    requestContext2 = [(ORCHSchemaORCHClientEvent *)self requestContext];
    PBDataWriterWriteSubmessage();
  }

  asrBridgeContext = [(ORCHSchemaORCHClientEvent *)self asrBridgeContext];

  if (asrBridgeContext)
  {
    asrBridgeContext2 = [(ORCHSchemaORCHClientEvent *)self asrBridgeContext];
    PBDataWriterWriteSubmessage();
  }

  cdmBridgeContext = [(ORCHSchemaORCHClientEvent *)self cdmBridgeContext];

  if (cdmBridgeContext)
  {
    cdmBridgeContext2 = [(ORCHSchemaORCHClientEvent *)self cdmBridgeContext];
    PBDataWriterWriteSubmessage();
  }

  executionBridgeContext = [(ORCHSchemaORCHClientEvent *)self executionBridgeContext];

  if (executionBridgeContext)
  {
    executionBridgeContext2 = [(ORCHSchemaORCHClientEvent *)self executionBridgeContext];
    PBDataWriterWriteSubmessage();
  }

  serverFallbackContext = [(ORCHSchemaORCHClientEvent *)self serverFallbackContext];

  if (serverFallbackContext)
  {
    serverFallbackContext2 = [(ORCHSchemaORCHClientEvent *)self serverFallbackContext];
    PBDataWriterWriteSubmessage();
  }

  flowOutputSubmitted = [(ORCHSchemaORCHClientEvent *)self flowOutputSubmitted];

  if (flowOutputSubmitted)
  {
    flowOutputSubmitted2 = [(ORCHSchemaORCHClientEvent *)self flowOutputSubmitted];
    PBDataWriterWriteSubmessage();
  }

  resultCandidate = [(ORCHSchemaORCHClientEvent *)self resultCandidate];

  if (resultCandidate)
  {
    resultCandidate2 = [(ORCHSchemaORCHClientEvent *)self resultCandidate];
    PBDataWriterWriteSubmessage();
  }

  resultSelected = [(ORCHSchemaORCHClientEvent *)self resultSelected];

  if (resultSelected)
  {
    resultSelected2 = [(ORCHSchemaORCHClientEvent *)self resultSelected];
    PBDataWriterWriteSubmessage();
  }

  contextSubmissionMessage = [(ORCHSchemaORCHClientEvent *)self contextSubmissionMessage];

  if (contextSubmissionMessage)
  {
    contextSubmissionMessage2 = [(ORCHSchemaORCHClientEvent *)self contextSubmissionMessage];
    PBDataWriterWriteSubmessage();
  }

  availableAssets = [(ORCHSchemaORCHClientEvent *)self availableAssets];

  if (availableAssets)
  {
    availableAssets2 = [(ORCHSchemaORCHClientEvent *)self availableAssets];
    PBDataWriterWriteSubmessage();
  }

  orchDeviceDynamicContext = [(ORCHSchemaORCHClientEvent *)self orchDeviceDynamicContext];

  if (orchDeviceDynamicContext)
  {
    orchDeviceDynamicContext2 = [(ORCHSchemaORCHClientEvent *)self orchDeviceDynamicContext];
    PBDataWriterWriteSubmessage();
  }

  pommesBridgeContext = [(ORCHSchemaORCHClientEvent *)self pommesBridgeContext];

  if (pommesBridgeContext)
  {
    pommesBridgeContext2 = [(ORCHSchemaORCHClientEvent *)self pommesBridgeContext];
    PBDataWriterWriteSubmessage();
  }

  muxBridgeContext = [(ORCHSchemaORCHClientEvent *)self muxBridgeContext];

  if (muxBridgeContext)
  {
    muxBridgeContext2 = [(ORCHSchemaORCHClientEvent *)self muxBridgeContext];
    PBDataWriterWriteSubmessage();
  }

  multiUserResultCandidate = [(ORCHSchemaORCHClientEvent *)self multiUserResultCandidate];

  if (multiUserResultCandidate)
  {
    multiUserResultCandidate2 = [(ORCHSchemaORCHClientEvent *)self multiUserResultCandidate];
    PBDataWriterWriteSubmessage();
  }

  multiUserResultSelected = [(ORCHSchemaORCHClientEvent *)self multiUserResultSelected];

  if (multiUserResultSelected)
  {
    multiUserResultSelected2 = [(ORCHSchemaORCHClientEvent *)self multiUserResultSelected];
    PBDataWriterWriteSubmessage();
  }

  aceCommandContext = [(ORCHSchemaORCHClientEvent *)self aceCommandContext];

  if (aceCommandContext)
  {
    aceCommandContext2 = [(ORCHSchemaORCHClientEvent *)self aceCommandContext];
    PBDataWriterWriteSubmessage();
  }

  trpFinalized = [(ORCHSchemaORCHClientEvent *)self trpFinalized];

  if (trpFinalized)
  {
    trpFinalized2 = [(ORCHSchemaORCHClientEvent *)self trpFinalized];
    PBDataWriterWriteSubmessage();
  }

  requestMitigated = [(ORCHSchemaORCHClientEvent *)self requestMitigated];

  if (requestMitigated)
  {
    requestMitigated2 = [(ORCHSchemaORCHClientEvent *)self requestMitigated];
    PBDataWriterWriteSubmessage();
  }

  nlv3ServerFallbackDeprecated = [(ORCHSchemaORCHClientEvent *)self nlv3ServerFallbackDeprecated];

  if (nlv3ServerFallbackDeprecated)
  {
    nlv3ServerFallbackDeprecated2 = [(ORCHSchemaORCHClientEvent *)self nlv3ServerFallbackDeprecated];
    PBDataWriterWriteSubmessage();
  }

  uiActivationContext = [(ORCHSchemaORCHClientEvent *)self uiActivationContext];

  if (uiActivationContext)
  {
    uiActivationContext2 = [(ORCHSchemaORCHClientEvent *)self uiActivationContext];
    PBDataWriterWriteSubmessage();
  }

  trpCandidateReceived = [(ORCHSchemaORCHClientEvent *)self trpCandidateReceived];

  if (trpCandidateReceived)
  {
    trpCandidateReceived2 = [(ORCHSchemaORCHClientEvent *)self trpCandidateReceived];
    PBDataWriterWriteSubmessage();
  }

  identityBridgeRequestContext = [(ORCHSchemaORCHClientEvent *)self identityBridgeRequestContext];

  if (identityBridgeRequestContext)
  {
    identityBridgeRequestContext2 = [(ORCHSchemaORCHClientEvent *)self identityBridgeRequestContext];
    PBDataWriterWriteSubmessage();
  }

  assetSetsReported = [(ORCHSchemaORCHClientEvent *)self assetSetsReported];

  if (assetSetsReported)
  {
    assetSetsReported2 = [(ORCHSchemaORCHClientEvent *)self assetSetsReported];
    PBDataWriterWriteSubmessage();
  }

  candidateRequestContext = [(ORCHSchemaORCHClientEvent *)self candidateRequestContext];

  if (candidateRequestContext)
  {
    candidateRequestContext2 = [(ORCHSchemaORCHClientEvent *)self candidateRequestContext];
    PBDataWriterWriteSubmessage();
  }

  powerContextPolicyReported = [(ORCHSchemaORCHClientEvent *)self powerContextPolicyReported];

  if (powerContextPolicyReported)
  {
    powerContextPolicyReported2 = [(ORCHSchemaORCHClientEvent *)self powerContextPolicyReported];
    PBDataWriterWriteSubmessage();
  }

  executeOnRemoteRequestContext = [(ORCHSchemaORCHClientEvent *)self executeOnRemoteRequestContext];

  if (executeOnRemoteRequestContext)
  {
    executeOnRemoteRequestContext2 = [(ORCHSchemaORCHClientEvent *)self executeOnRemoteRequestContext];
    PBDataWriterWriteSubmessage();
  }

  assistantdLaunchMetadataReported = [(ORCHSchemaORCHClientEvent *)self assistantdLaunchMetadataReported];

  if (assistantdLaunchMetadataReported)
  {
    assistantdLaunchMetadataReported2 = [(ORCHSchemaORCHClientEvent *)self assistantdLaunchMetadataReported];
    PBDataWriterWriteSubmessage();
  }

  intelligenceFlowQuerySent = [(ORCHSchemaORCHClientEvent *)self intelligenceFlowQuerySent];

  if (intelligenceFlowQuerySent)
  {
    intelligenceFlowQuerySent2 = [(ORCHSchemaORCHClientEvent *)self intelligenceFlowQuerySent];
    PBDataWriterWriteSubmessage();
  }

  subRequestContext = [(ORCHSchemaORCHClientEvent *)self subRequestContext];

  if (subRequestContext)
  {
    subRequestContext2 = [(ORCHSchemaORCHClientEvent *)self subRequestContext];
    PBDataWriterWriteSubmessage();
  }

  routerRewrittenUtterance = [(ORCHSchemaORCHClientEvent *)self routerRewrittenUtterance];

  if (routerRewrittenUtterance)
  {
    routerRewrittenUtterance2 = [(ORCHSchemaORCHClientEvent *)self routerRewrittenUtterance];
    PBDataWriterWriteSubmessage();
  }

  nlRouterBridgeContext = [(ORCHSchemaORCHClientEvent *)self nlRouterBridgeContext];

  if (nlRouterBridgeContext)
  {
    nlRouterBridgeContext2 = [(ORCHSchemaORCHClientEvent *)self nlRouterBridgeContext];
    PBDataWriterWriteSubmessage();
  }

  shimToolContext = [(ORCHSchemaORCHClientEvent *)self shimToolContext];

  if (shimToolContext)
  {
    shimToolContext2 = [(ORCHSchemaORCHClientEvent *)self shimToolContext];
    PBDataWriterWriteSubmessage();
  }

  subRequestFallback = [(ORCHSchemaORCHClientEvent *)self subRequestFallback];

  if (subRequestFallback)
  {
    subRequestFallback2 = [(ORCHSchemaORCHClientEvent *)self subRequestFallback];
    PBDataWriterWriteSubmessage();
  }

  nlRouterBridgeSubComponentContext = [(ORCHSchemaORCHClientEvent *)self nlRouterBridgeSubComponentContext];

  if (nlRouterBridgeSubComponentContext)
  {
    nlRouterBridgeSubComponentContext2 = [(ORCHSchemaORCHClientEvent *)self nlRouterBridgeSubComponentContext];
    PBDataWriterWriteSubmessage();
  }

  unsupportedLanguageDetected = [(ORCHSchemaORCHClientEvent *)self unsupportedLanguageDetected];

  if (unsupportedLanguageDetected)
  {
    unsupportedLanguageDetected2 = [(ORCHSchemaORCHClientEvent *)self unsupportedLanguageDetected];
    PBDataWriterWriteSubmessage();
  }

  trpCandidateCreated = [(ORCHSchemaORCHClientEvent *)self trpCandidateCreated];

  if (trpCandidateCreated)
  {
    trpCandidateCreated2 = [(ORCHSchemaORCHClientEvent *)self trpCandidateCreated];
    PBDataWriterWriteSubmessage();
  }

  audioTopologyReported = [(ORCHSchemaORCHClientEvent *)self audioTopologyReported];

  if (audioTopologyReported)
  {
    audioTopologyReported2 = [(ORCHSchemaORCHClientEvent *)self audioTopologyReported];
    PBDataWriterWriteSubmessage();
  }

  intelligenceFlowRequestContext = [(ORCHSchemaORCHClientEvent *)self intelligenceFlowRequestContext];

  if (intelligenceFlowRequestContext)
  {
    intelligenceFlowRequestContext2 = [(ORCHSchemaORCHClientEvent *)self intelligenceFlowRequestContext];
    PBDataWriterWriteSubmessage();
  }

  userSessionState = [(ORCHSchemaORCHClientEvent *)self userSessionState];

  if (userSessionState)
  {
    userSessionState2 = [(ORCHSchemaORCHClientEvent *)self userSessionState];
    PBDataWriterWriteSubmessage();
  }

  serverExecutionValuesReported = [(ORCHSchemaORCHClientEvent *)self serverExecutionValuesReported];

  v87 = toCopy;
  if (serverExecutionValuesReported)
  {
    serverExecutionValuesReported2 = [(ORCHSchemaORCHClientEvent *)self serverExecutionValuesReported];
    PBDataWriterWriteSubmessage();

    v87 = toCopy;
  }
}

- (void)deleteServerExecutionValuesReported
{
  if (self->_whichEvent_Type == 140)
  {
    self->_whichEvent_Type = 0;
    self->_serverExecutionValuesReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ORCHSchemaORCHServerExecutionValuesReported)serverExecutionValuesReported
{
  if (self->_whichEvent_Type == 140)
  {
    v3 = self->_serverExecutionValuesReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setServerExecutionValuesReported:(id)reported
{
  reportedCopy = reported;
  requestContext = self->_requestContext;
  self->_requestContext = 0;

  asrBridgeContext = self->_asrBridgeContext;
  self->_asrBridgeContext = 0;

  cdmBridgeContext = self->_cdmBridgeContext;
  self->_cdmBridgeContext = 0;

  executionBridgeContext = self->_executionBridgeContext;
  self->_executionBridgeContext = 0;

  serverFallbackContext = self->_serverFallbackContext;
  self->_serverFallbackContext = 0;

  flowOutputSubmitted = self->_flowOutputSubmitted;
  self->_flowOutputSubmitted = 0;

  resultCandidate = self->_resultCandidate;
  self->_resultCandidate = 0;

  resultSelected = self->_resultSelected;
  self->_resultSelected = 0;

  contextSubmissionMessage = self->_contextSubmissionMessage;
  self->_contextSubmissionMessage = 0;

  availableAssets = self->_availableAssets;
  self->_availableAssets = 0;

  orchDeviceDynamicContext = self->_orchDeviceDynamicContext;
  self->_orchDeviceDynamicContext = 0;

  pommesBridgeContext = self->_pommesBridgeContext;
  self->_pommesBridgeContext = 0;

  muxBridgeContext = self->_muxBridgeContext;
  self->_muxBridgeContext = 0;

  multiUserResultCandidate = self->_multiUserResultCandidate;
  self->_multiUserResultCandidate = 0;

  multiUserResultSelected = self->_multiUserResultSelected;
  self->_multiUserResultSelected = 0;

  aceCommandContext = self->_aceCommandContext;
  self->_aceCommandContext = 0;

  trpFinalized = self->_trpFinalized;
  self->_trpFinalized = 0;

  requestMitigated = self->_requestMitigated;
  self->_requestMitigated = 0;

  nlv3ServerFallbackDeprecated = self->_nlv3ServerFallbackDeprecated;
  self->_nlv3ServerFallbackDeprecated = 0;

  uiActivationContext = self->_uiActivationContext;
  self->_uiActivationContext = 0;

  trpCandidateReceived = self->_trpCandidateReceived;
  self->_trpCandidateReceived = 0;

  identityBridgeRequestContext = self->_identityBridgeRequestContext;
  self->_identityBridgeRequestContext = 0;

  assetSetsReported = self->_assetSetsReported;
  self->_assetSetsReported = 0;

  candidateRequestContext = self->_candidateRequestContext;
  self->_candidateRequestContext = 0;

  powerContextPolicyReported = self->_powerContextPolicyReported;
  self->_powerContextPolicyReported = 0;

  executeOnRemoteRequestContext = self->_executeOnRemoteRequestContext;
  self->_executeOnRemoteRequestContext = 0;

  assistantdLaunchMetadataReported = self->_assistantdLaunchMetadataReported;
  self->_assistantdLaunchMetadataReported = 0;

  intelligenceFlowQuerySent = self->_intelligenceFlowQuerySent;
  self->_intelligenceFlowQuerySent = 0;

  subRequestContext = self->_subRequestContext;
  self->_subRequestContext = 0;

  routerRewrittenUtterance = self->_routerRewrittenUtterance;
  self->_routerRewrittenUtterance = 0;

  nlRouterBridgeContext = self->_nlRouterBridgeContext;
  self->_nlRouterBridgeContext = 0;

  shimToolContext = self->_shimToolContext;
  self->_shimToolContext = 0;

  subRequestFallback = self->_subRequestFallback;
  self->_subRequestFallback = 0;

  nlRouterBridgeSubComponentContext = self->_nlRouterBridgeSubComponentContext;
  self->_nlRouterBridgeSubComponentContext = 0;

  unsupportedLanguageDetected = self->_unsupportedLanguageDetected;
  self->_unsupportedLanguageDetected = 0;

  trpCandidateCreated = self->_trpCandidateCreated;
  self->_trpCandidateCreated = 0;

  audioTopologyReported = self->_audioTopologyReported;
  self->_audioTopologyReported = 0;

  intelligenceFlowRequestContext = self->_intelligenceFlowRequestContext;
  self->_intelligenceFlowRequestContext = 0;

  userSessionState = self->_userSessionState;
  self->_userSessionState = 0;

  v44 = 140;
  if (!reportedCopy)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  serverExecutionValuesReported = self->_serverExecutionValuesReported;
  self->_serverExecutionValuesReported = reportedCopy;
}

- (void)deleteUserSessionState
{
  if (self->_whichEvent_Type == 139)
  {
    self->_whichEvent_Type = 0;
    self->_userSessionState = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setUserSessionState:(id)state
{
  stateCopy = state;
  requestContext = self->_requestContext;
  self->_requestContext = 0;

  asrBridgeContext = self->_asrBridgeContext;
  self->_asrBridgeContext = 0;

  cdmBridgeContext = self->_cdmBridgeContext;
  self->_cdmBridgeContext = 0;

  executionBridgeContext = self->_executionBridgeContext;
  self->_executionBridgeContext = 0;

  serverFallbackContext = self->_serverFallbackContext;
  self->_serverFallbackContext = 0;

  flowOutputSubmitted = self->_flowOutputSubmitted;
  self->_flowOutputSubmitted = 0;

  resultCandidate = self->_resultCandidate;
  self->_resultCandidate = 0;

  resultSelected = self->_resultSelected;
  self->_resultSelected = 0;

  contextSubmissionMessage = self->_contextSubmissionMessage;
  self->_contextSubmissionMessage = 0;

  availableAssets = self->_availableAssets;
  self->_availableAssets = 0;

  orchDeviceDynamicContext = self->_orchDeviceDynamicContext;
  self->_orchDeviceDynamicContext = 0;

  pommesBridgeContext = self->_pommesBridgeContext;
  self->_pommesBridgeContext = 0;

  muxBridgeContext = self->_muxBridgeContext;
  self->_muxBridgeContext = 0;

  multiUserResultCandidate = self->_multiUserResultCandidate;
  self->_multiUserResultCandidate = 0;

  multiUserResultSelected = self->_multiUserResultSelected;
  self->_multiUserResultSelected = 0;

  aceCommandContext = self->_aceCommandContext;
  self->_aceCommandContext = 0;

  trpFinalized = self->_trpFinalized;
  self->_trpFinalized = 0;

  requestMitigated = self->_requestMitigated;
  self->_requestMitigated = 0;

  nlv3ServerFallbackDeprecated = self->_nlv3ServerFallbackDeprecated;
  self->_nlv3ServerFallbackDeprecated = 0;

  uiActivationContext = self->_uiActivationContext;
  self->_uiActivationContext = 0;

  trpCandidateReceived = self->_trpCandidateReceived;
  self->_trpCandidateReceived = 0;

  identityBridgeRequestContext = self->_identityBridgeRequestContext;
  self->_identityBridgeRequestContext = 0;

  assetSetsReported = self->_assetSetsReported;
  self->_assetSetsReported = 0;

  candidateRequestContext = self->_candidateRequestContext;
  self->_candidateRequestContext = 0;

  powerContextPolicyReported = self->_powerContextPolicyReported;
  self->_powerContextPolicyReported = 0;

  executeOnRemoteRequestContext = self->_executeOnRemoteRequestContext;
  self->_executeOnRemoteRequestContext = 0;

  assistantdLaunchMetadataReported = self->_assistantdLaunchMetadataReported;
  self->_assistantdLaunchMetadataReported = 0;

  intelligenceFlowQuerySent = self->_intelligenceFlowQuerySent;
  self->_intelligenceFlowQuerySent = 0;

  subRequestContext = self->_subRequestContext;
  self->_subRequestContext = 0;

  routerRewrittenUtterance = self->_routerRewrittenUtterance;
  self->_routerRewrittenUtterance = 0;

  nlRouterBridgeContext = self->_nlRouterBridgeContext;
  self->_nlRouterBridgeContext = 0;

  shimToolContext = self->_shimToolContext;
  self->_shimToolContext = 0;

  subRequestFallback = self->_subRequestFallback;
  self->_subRequestFallback = 0;

  nlRouterBridgeSubComponentContext = self->_nlRouterBridgeSubComponentContext;
  self->_nlRouterBridgeSubComponentContext = 0;

  unsupportedLanguageDetected = self->_unsupportedLanguageDetected;
  self->_unsupportedLanguageDetected = 0;

  trpCandidateCreated = self->_trpCandidateCreated;
  self->_trpCandidateCreated = 0;

  audioTopologyReported = self->_audioTopologyReported;
  self->_audioTopologyReported = 0;

  intelligenceFlowRequestContext = self->_intelligenceFlowRequestContext;
  self->_intelligenceFlowRequestContext = 0;

  serverExecutionValuesReported = self->_serverExecutionValuesReported;
  self->_serverExecutionValuesReported = 0;

  v44 = 139;
  if (!stateCopy)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  userSessionState = self->_userSessionState;
  self->_userSessionState = stateCopy;
}

- (void)deleteIntelligenceFlowRequestContext
{
  if (self->_whichEvent_Type == 138)
  {
    self->_whichEvent_Type = 0;
    self->_intelligenceFlowRequestContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setIntelligenceFlowRequestContext:(id)context
{
  contextCopy = context;
  requestContext = self->_requestContext;
  self->_requestContext = 0;

  asrBridgeContext = self->_asrBridgeContext;
  self->_asrBridgeContext = 0;

  cdmBridgeContext = self->_cdmBridgeContext;
  self->_cdmBridgeContext = 0;

  executionBridgeContext = self->_executionBridgeContext;
  self->_executionBridgeContext = 0;

  serverFallbackContext = self->_serverFallbackContext;
  self->_serverFallbackContext = 0;

  flowOutputSubmitted = self->_flowOutputSubmitted;
  self->_flowOutputSubmitted = 0;

  resultCandidate = self->_resultCandidate;
  self->_resultCandidate = 0;

  resultSelected = self->_resultSelected;
  self->_resultSelected = 0;

  contextSubmissionMessage = self->_contextSubmissionMessage;
  self->_contextSubmissionMessage = 0;

  availableAssets = self->_availableAssets;
  self->_availableAssets = 0;

  orchDeviceDynamicContext = self->_orchDeviceDynamicContext;
  self->_orchDeviceDynamicContext = 0;

  pommesBridgeContext = self->_pommesBridgeContext;
  self->_pommesBridgeContext = 0;

  muxBridgeContext = self->_muxBridgeContext;
  self->_muxBridgeContext = 0;

  multiUserResultCandidate = self->_multiUserResultCandidate;
  self->_multiUserResultCandidate = 0;

  multiUserResultSelected = self->_multiUserResultSelected;
  self->_multiUserResultSelected = 0;

  aceCommandContext = self->_aceCommandContext;
  self->_aceCommandContext = 0;

  trpFinalized = self->_trpFinalized;
  self->_trpFinalized = 0;

  requestMitigated = self->_requestMitigated;
  self->_requestMitigated = 0;

  nlv3ServerFallbackDeprecated = self->_nlv3ServerFallbackDeprecated;
  self->_nlv3ServerFallbackDeprecated = 0;

  uiActivationContext = self->_uiActivationContext;
  self->_uiActivationContext = 0;

  trpCandidateReceived = self->_trpCandidateReceived;
  self->_trpCandidateReceived = 0;

  identityBridgeRequestContext = self->_identityBridgeRequestContext;
  self->_identityBridgeRequestContext = 0;

  assetSetsReported = self->_assetSetsReported;
  self->_assetSetsReported = 0;

  candidateRequestContext = self->_candidateRequestContext;
  self->_candidateRequestContext = 0;

  powerContextPolicyReported = self->_powerContextPolicyReported;
  self->_powerContextPolicyReported = 0;

  executeOnRemoteRequestContext = self->_executeOnRemoteRequestContext;
  self->_executeOnRemoteRequestContext = 0;

  assistantdLaunchMetadataReported = self->_assistantdLaunchMetadataReported;
  self->_assistantdLaunchMetadataReported = 0;

  intelligenceFlowQuerySent = self->_intelligenceFlowQuerySent;
  self->_intelligenceFlowQuerySent = 0;

  subRequestContext = self->_subRequestContext;
  self->_subRequestContext = 0;

  routerRewrittenUtterance = self->_routerRewrittenUtterance;
  self->_routerRewrittenUtterance = 0;

  nlRouterBridgeContext = self->_nlRouterBridgeContext;
  self->_nlRouterBridgeContext = 0;

  shimToolContext = self->_shimToolContext;
  self->_shimToolContext = 0;

  subRequestFallback = self->_subRequestFallback;
  self->_subRequestFallback = 0;

  nlRouterBridgeSubComponentContext = self->_nlRouterBridgeSubComponentContext;
  self->_nlRouterBridgeSubComponentContext = 0;

  unsupportedLanguageDetected = self->_unsupportedLanguageDetected;
  self->_unsupportedLanguageDetected = 0;

  trpCandidateCreated = self->_trpCandidateCreated;
  self->_trpCandidateCreated = 0;

  audioTopologyReported = self->_audioTopologyReported;
  self->_audioTopologyReported = 0;

  userSessionState = self->_userSessionState;
  self->_userSessionState = 0;

  serverExecutionValuesReported = self->_serverExecutionValuesReported;
  self->_serverExecutionValuesReported = 0;

  v44 = 138;
  if (!contextCopy)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  intelligenceFlowRequestContext = self->_intelligenceFlowRequestContext;
  self->_intelligenceFlowRequestContext = contextCopy;
}

- (void)deleteAudioTopologyReported
{
  if (self->_whichEvent_Type == 137)
  {
    self->_whichEvent_Type = 0;
    self->_audioTopologyReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setAudioTopologyReported:(id)reported
{
  reportedCopy = reported;
  requestContext = self->_requestContext;
  self->_requestContext = 0;

  asrBridgeContext = self->_asrBridgeContext;
  self->_asrBridgeContext = 0;

  cdmBridgeContext = self->_cdmBridgeContext;
  self->_cdmBridgeContext = 0;

  executionBridgeContext = self->_executionBridgeContext;
  self->_executionBridgeContext = 0;

  serverFallbackContext = self->_serverFallbackContext;
  self->_serverFallbackContext = 0;

  flowOutputSubmitted = self->_flowOutputSubmitted;
  self->_flowOutputSubmitted = 0;

  resultCandidate = self->_resultCandidate;
  self->_resultCandidate = 0;

  resultSelected = self->_resultSelected;
  self->_resultSelected = 0;

  contextSubmissionMessage = self->_contextSubmissionMessage;
  self->_contextSubmissionMessage = 0;

  availableAssets = self->_availableAssets;
  self->_availableAssets = 0;

  orchDeviceDynamicContext = self->_orchDeviceDynamicContext;
  self->_orchDeviceDynamicContext = 0;

  pommesBridgeContext = self->_pommesBridgeContext;
  self->_pommesBridgeContext = 0;

  muxBridgeContext = self->_muxBridgeContext;
  self->_muxBridgeContext = 0;

  multiUserResultCandidate = self->_multiUserResultCandidate;
  self->_multiUserResultCandidate = 0;

  multiUserResultSelected = self->_multiUserResultSelected;
  self->_multiUserResultSelected = 0;

  aceCommandContext = self->_aceCommandContext;
  self->_aceCommandContext = 0;

  trpFinalized = self->_trpFinalized;
  self->_trpFinalized = 0;

  requestMitigated = self->_requestMitigated;
  self->_requestMitigated = 0;

  nlv3ServerFallbackDeprecated = self->_nlv3ServerFallbackDeprecated;
  self->_nlv3ServerFallbackDeprecated = 0;

  uiActivationContext = self->_uiActivationContext;
  self->_uiActivationContext = 0;

  trpCandidateReceived = self->_trpCandidateReceived;
  self->_trpCandidateReceived = 0;

  identityBridgeRequestContext = self->_identityBridgeRequestContext;
  self->_identityBridgeRequestContext = 0;

  assetSetsReported = self->_assetSetsReported;
  self->_assetSetsReported = 0;

  candidateRequestContext = self->_candidateRequestContext;
  self->_candidateRequestContext = 0;

  powerContextPolicyReported = self->_powerContextPolicyReported;
  self->_powerContextPolicyReported = 0;

  executeOnRemoteRequestContext = self->_executeOnRemoteRequestContext;
  self->_executeOnRemoteRequestContext = 0;

  assistantdLaunchMetadataReported = self->_assistantdLaunchMetadataReported;
  self->_assistantdLaunchMetadataReported = 0;

  intelligenceFlowQuerySent = self->_intelligenceFlowQuerySent;
  self->_intelligenceFlowQuerySent = 0;

  subRequestContext = self->_subRequestContext;
  self->_subRequestContext = 0;

  routerRewrittenUtterance = self->_routerRewrittenUtterance;
  self->_routerRewrittenUtterance = 0;

  nlRouterBridgeContext = self->_nlRouterBridgeContext;
  self->_nlRouterBridgeContext = 0;

  shimToolContext = self->_shimToolContext;
  self->_shimToolContext = 0;

  subRequestFallback = self->_subRequestFallback;
  self->_subRequestFallback = 0;

  nlRouterBridgeSubComponentContext = self->_nlRouterBridgeSubComponentContext;
  self->_nlRouterBridgeSubComponentContext = 0;

  unsupportedLanguageDetected = self->_unsupportedLanguageDetected;
  self->_unsupportedLanguageDetected = 0;

  trpCandidateCreated = self->_trpCandidateCreated;
  self->_trpCandidateCreated = 0;

  intelligenceFlowRequestContext = self->_intelligenceFlowRequestContext;
  self->_intelligenceFlowRequestContext = 0;

  userSessionState = self->_userSessionState;
  self->_userSessionState = 0;

  serverExecutionValuesReported = self->_serverExecutionValuesReported;
  self->_serverExecutionValuesReported = 0;

  v44 = 137;
  if (!reportedCopy)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  audioTopologyReported = self->_audioTopologyReported;
  self->_audioTopologyReported = reportedCopy;
}

- (void)deleteTrpCandidateCreated
{
  if (self->_whichEvent_Type == 136)
  {
    self->_whichEvent_Type = 0;
    self->_trpCandidateCreated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setTrpCandidateCreated:(id)created
{
  createdCopy = created;
  requestContext = self->_requestContext;
  self->_requestContext = 0;

  asrBridgeContext = self->_asrBridgeContext;
  self->_asrBridgeContext = 0;

  cdmBridgeContext = self->_cdmBridgeContext;
  self->_cdmBridgeContext = 0;

  executionBridgeContext = self->_executionBridgeContext;
  self->_executionBridgeContext = 0;

  serverFallbackContext = self->_serverFallbackContext;
  self->_serverFallbackContext = 0;

  flowOutputSubmitted = self->_flowOutputSubmitted;
  self->_flowOutputSubmitted = 0;

  resultCandidate = self->_resultCandidate;
  self->_resultCandidate = 0;

  resultSelected = self->_resultSelected;
  self->_resultSelected = 0;

  contextSubmissionMessage = self->_contextSubmissionMessage;
  self->_contextSubmissionMessage = 0;

  availableAssets = self->_availableAssets;
  self->_availableAssets = 0;

  orchDeviceDynamicContext = self->_orchDeviceDynamicContext;
  self->_orchDeviceDynamicContext = 0;

  pommesBridgeContext = self->_pommesBridgeContext;
  self->_pommesBridgeContext = 0;

  muxBridgeContext = self->_muxBridgeContext;
  self->_muxBridgeContext = 0;

  multiUserResultCandidate = self->_multiUserResultCandidate;
  self->_multiUserResultCandidate = 0;

  multiUserResultSelected = self->_multiUserResultSelected;
  self->_multiUserResultSelected = 0;

  aceCommandContext = self->_aceCommandContext;
  self->_aceCommandContext = 0;

  trpFinalized = self->_trpFinalized;
  self->_trpFinalized = 0;

  requestMitigated = self->_requestMitigated;
  self->_requestMitigated = 0;

  nlv3ServerFallbackDeprecated = self->_nlv3ServerFallbackDeprecated;
  self->_nlv3ServerFallbackDeprecated = 0;

  uiActivationContext = self->_uiActivationContext;
  self->_uiActivationContext = 0;

  trpCandidateReceived = self->_trpCandidateReceived;
  self->_trpCandidateReceived = 0;

  identityBridgeRequestContext = self->_identityBridgeRequestContext;
  self->_identityBridgeRequestContext = 0;

  assetSetsReported = self->_assetSetsReported;
  self->_assetSetsReported = 0;

  candidateRequestContext = self->_candidateRequestContext;
  self->_candidateRequestContext = 0;

  powerContextPolicyReported = self->_powerContextPolicyReported;
  self->_powerContextPolicyReported = 0;

  executeOnRemoteRequestContext = self->_executeOnRemoteRequestContext;
  self->_executeOnRemoteRequestContext = 0;

  assistantdLaunchMetadataReported = self->_assistantdLaunchMetadataReported;
  self->_assistantdLaunchMetadataReported = 0;

  intelligenceFlowQuerySent = self->_intelligenceFlowQuerySent;
  self->_intelligenceFlowQuerySent = 0;

  subRequestContext = self->_subRequestContext;
  self->_subRequestContext = 0;

  routerRewrittenUtterance = self->_routerRewrittenUtterance;
  self->_routerRewrittenUtterance = 0;

  nlRouterBridgeContext = self->_nlRouterBridgeContext;
  self->_nlRouterBridgeContext = 0;

  shimToolContext = self->_shimToolContext;
  self->_shimToolContext = 0;

  subRequestFallback = self->_subRequestFallback;
  self->_subRequestFallback = 0;

  nlRouterBridgeSubComponentContext = self->_nlRouterBridgeSubComponentContext;
  self->_nlRouterBridgeSubComponentContext = 0;

  unsupportedLanguageDetected = self->_unsupportedLanguageDetected;
  self->_unsupportedLanguageDetected = 0;

  audioTopologyReported = self->_audioTopologyReported;
  self->_audioTopologyReported = 0;

  intelligenceFlowRequestContext = self->_intelligenceFlowRequestContext;
  self->_intelligenceFlowRequestContext = 0;

  userSessionState = self->_userSessionState;
  self->_userSessionState = 0;

  serverExecutionValuesReported = self->_serverExecutionValuesReported;
  self->_serverExecutionValuesReported = 0;

  v44 = 136;
  if (!createdCopy)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  trpCandidateCreated = self->_trpCandidateCreated;
  self->_trpCandidateCreated = createdCopy;
}

- (void)deleteUnsupportedLanguageDetected
{
  if (self->_whichEvent_Type == 135)
  {
    self->_whichEvent_Type = 0;
    self->_unsupportedLanguageDetected = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setUnsupportedLanguageDetected:(id)detected
{
  detectedCopy = detected;
  requestContext = self->_requestContext;
  self->_requestContext = 0;

  asrBridgeContext = self->_asrBridgeContext;
  self->_asrBridgeContext = 0;

  cdmBridgeContext = self->_cdmBridgeContext;
  self->_cdmBridgeContext = 0;

  executionBridgeContext = self->_executionBridgeContext;
  self->_executionBridgeContext = 0;

  serverFallbackContext = self->_serverFallbackContext;
  self->_serverFallbackContext = 0;

  flowOutputSubmitted = self->_flowOutputSubmitted;
  self->_flowOutputSubmitted = 0;

  resultCandidate = self->_resultCandidate;
  self->_resultCandidate = 0;

  resultSelected = self->_resultSelected;
  self->_resultSelected = 0;

  contextSubmissionMessage = self->_contextSubmissionMessage;
  self->_contextSubmissionMessage = 0;

  availableAssets = self->_availableAssets;
  self->_availableAssets = 0;

  orchDeviceDynamicContext = self->_orchDeviceDynamicContext;
  self->_orchDeviceDynamicContext = 0;

  pommesBridgeContext = self->_pommesBridgeContext;
  self->_pommesBridgeContext = 0;

  muxBridgeContext = self->_muxBridgeContext;
  self->_muxBridgeContext = 0;

  multiUserResultCandidate = self->_multiUserResultCandidate;
  self->_multiUserResultCandidate = 0;

  multiUserResultSelected = self->_multiUserResultSelected;
  self->_multiUserResultSelected = 0;

  aceCommandContext = self->_aceCommandContext;
  self->_aceCommandContext = 0;

  trpFinalized = self->_trpFinalized;
  self->_trpFinalized = 0;

  requestMitigated = self->_requestMitigated;
  self->_requestMitigated = 0;

  nlv3ServerFallbackDeprecated = self->_nlv3ServerFallbackDeprecated;
  self->_nlv3ServerFallbackDeprecated = 0;

  uiActivationContext = self->_uiActivationContext;
  self->_uiActivationContext = 0;

  trpCandidateReceived = self->_trpCandidateReceived;
  self->_trpCandidateReceived = 0;

  identityBridgeRequestContext = self->_identityBridgeRequestContext;
  self->_identityBridgeRequestContext = 0;

  assetSetsReported = self->_assetSetsReported;
  self->_assetSetsReported = 0;

  candidateRequestContext = self->_candidateRequestContext;
  self->_candidateRequestContext = 0;

  powerContextPolicyReported = self->_powerContextPolicyReported;
  self->_powerContextPolicyReported = 0;

  executeOnRemoteRequestContext = self->_executeOnRemoteRequestContext;
  self->_executeOnRemoteRequestContext = 0;

  assistantdLaunchMetadataReported = self->_assistantdLaunchMetadataReported;
  self->_assistantdLaunchMetadataReported = 0;

  intelligenceFlowQuerySent = self->_intelligenceFlowQuerySent;
  self->_intelligenceFlowQuerySent = 0;

  subRequestContext = self->_subRequestContext;
  self->_subRequestContext = 0;

  routerRewrittenUtterance = self->_routerRewrittenUtterance;
  self->_routerRewrittenUtterance = 0;

  nlRouterBridgeContext = self->_nlRouterBridgeContext;
  self->_nlRouterBridgeContext = 0;

  shimToolContext = self->_shimToolContext;
  self->_shimToolContext = 0;

  subRequestFallback = self->_subRequestFallback;
  self->_subRequestFallback = 0;

  nlRouterBridgeSubComponentContext = self->_nlRouterBridgeSubComponentContext;
  self->_nlRouterBridgeSubComponentContext = 0;

  trpCandidateCreated = self->_trpCandidateCreated;
  self->_trpCandidateCreated = 0;

  audioTopologyReported = self->_audioTopologyReported;
  self->_audioTopologyReported = 0;

  intelligenceFlowRequestContext = self->_intelligenceFlowRequestContext;
  self->_intelligenceFlowRequestContext = 0;

  userSessionState = self->_userSessionState;
  self->_userSessionState = 0;

  serverExecutionValuesReported = self->_serverExecutionValuesReported;
  self->_serverExecutionValuesReported = 0;

  v44 = 135;
  if (!detectedCopy)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  unsupportedLanguageDetected = self->_unsupportedLanguageDetected;
  self->_unsupportedLanguageDetected = detectedCopy;
}

- (void)deleteNlRouterBridgeSubComponentContext
{
  if (self->_whichEvent_Type == 134)
  {
    self->_whichEvent_Type = 0;
    self->_nlRouterBridgeSubComponentContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setNlRouterBridgeSubComponentContext:(id)context
{
  contextCopy = context;
  requestContext = self->_requestContext;
  self->_requestContext = 0;

  asrBridgeContext = self->_asrBridgeContext;
  self->_asrBridgeContext = 0;

  cdmBridgeContext = self->_cdmBridgeContext;
  self->_cdmBridgeContext = 0;

  executionBridgeContext = self->_executionBridgeContext;
  self->_executionBridgeContext = 0;

  serverFallbackContext = self->_serverFallbackContext;
  self->_serverFallbackContext = 0;

  flowOutputSubmitted = self->_flowOutputSubmitted;
  self->_flowOutputSubmitted = 0;

  resultCandidate = self->_resultCandidate;
  self->_resultCandidate = 0;

  resultSelected = self->_resultSelected;
  self->_resultSelected = 0;

  contextSubmissionMessage = self->_contextSubmissionMessage;
  self->_contextSubmissionMessage = 0;

  availableAssets = self->_availableAssets;
  self->_availableAssets = 0;

  orchDeviceDynamicContext = self->_orchDeviceDynamicContext;
  self->_orchDeviceDynamicContext = 0;

  pommesBridgeContext = self->_pommesBridgeContext;
  self->_pommesBridgeContext = 0;

  muxBridgeContext = self->_muxBridgeContext;
  self->_muxBridgeContext = 0;

  multiUserResultCandidate = self->_multiUserResultCandidate;
  self->_multiUserResultCandidate = 0;

  multiUserResultSelected = self->_multiUserResultSelected;
  self->_multiUserResultSelected = 0;

  aceCommandContext = self->_aceCommandContext;
  self->_aceCommandContext = 0;

  trpFinalized = self->_trpFinalized;
  self->_trpFinalized = 0;

  requestMitigated = self->_requestMitigated;
  self->_requestMitigated = 0;

  nlv3ServerFallbackDeprecated = self->_nlv3ServerFallbackDeprecated;
  self->_nlv3ServerFallbackDeprecated = 0;

  uiActivationContext = self->_uiActivationContext;
  self->_uiActivationContext = 0;

  trpCandidateReceived = self->_trpCandidateReceived;
  self->_trpCandidateReceived = 0;

  identityBridgeRequestContext = self->_identityBridgeRequestContext;
  self->_identityBridgeRequestContext = 0;

  assetSetsReported = self->_assetSetsReported;
  self->_assetSetsReported = 0;

  candidateRequestContext = self->_candidateRequestContext;
  self->_candidateRequestContext = 0;

  powerContextPolicyReported = self->_powerContextPolicyReported;
  self->_powerContextPolicyReported = 0;

  executeOnRemoteRequestContext = self->_executeOnRemoteRequestContext;
  self->_executeOnRemoteRequestContext = 0;

  assistantdLaunchMetadataReported = self->_assistantdLaunchMetadataReported;
  self->_assistantdLaunchMetadataReported = 0;

  intelligenceFlowQuerySent = self->_intelligenceFlowQuerySent;
  self->_intelligenceFlowQuerySent = 0;

  subRequestContext = self->_subRequestContext;
  self->_subRequestContext = 0;

  routerRewrittenUtterance = self->_routerRewrittenUtterance;
  self->_routerRewrittenUtterance = 0;

  nlRouterBridgeContext = self->_nlRouterBridgeContext;
  self->_nlRouterBridgeContext = 0;

  shimToolContext = self->_shimToolContext;
  self->_shimToolContext = 0;

  subRequestFallback = self->_subRequestFallback;
  self->_subRequestFallback = 0;

  unsupportedLanguageDetected = self->_unsupportedLanguageDetected;
  self->_unsupportedLanguageDetected = 0;

  trpCandidateCreated = self->_trpCandidateCreated;
  self->_trpCandidateCreated = 0;

  audioTopologyReported = self->_audioTopologyReported;
  self->_audioTopologyReported = 0;

  intelligenceFlowRequestContext = self->_intelligenceFlowRequestContext;
  self->_intelligenceFlowRequestContext = 0;

  userSessionState = self->_userSessionState;
  self->_userSessionState = 0;

  serverExecutionValuesReported = self->_serverExecutionValuesReported;
  self->_serverExecutionValuesReported = 0;

  v44 = 134;
  if (!contextCopy)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  nlRouterBridgeSubComponentContext = self->_nlRouterBridgeSubComponentContext;
  self->_nlRouterBridgeSubComponentContext = contextCopy;
}

- (void)deleteSubRequestFallback
{
  if (self->_whichEvent_Type == 133)
  {
    self->_whichEvent_Type = 0;
    self->_subRequestFallback = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setSubRequestFallback:(id)fallback
{
  fallbackCopy = fallback;
  requestContext = self->_requestContext;
  self->_requestContext = 0;

  asrBridgeContext = self->_asrBridgeContext;
  self->_asrBridgeContext = 0;

  cdmBridgeContext = self->_cdmBridgeContext;
  self->_cdmBridgeContext = 0;

  executionBridgeContext = self->_executionBridgeContext;
  self->_executionBridgeContext = 0;

  serverFallbackContext = self->_serverFallbackContext;
  self->_serverFallbackContext = 0;

  flowOutputSubmitted = self->_flowOutputSubmitted;
  self->_flowOutputSubmitted = 0;

  resultCandidate = self->_resultCandidate;
  self->_resultCandidate = 0;

  resultSelected = self->_resultSelected;
  self->_resultSelected = 0;

  contextSubmissionMessage = self->_contextSubmissionMessage;
  self->_contextSubmissionMessage = 0;

  availableAssets = self->_availableAssets;
  self->_availableAssets = 0;

  orchDeviceDynamicContext = self->_orchDeviceDynamicContext;
  self->_orchDeviceDynamicContext = 0;

  pommesBridgeContext = self->_pommesBridgeContext;
  self->_pommesBridgeContext = 0;

  muxBridgeContext = self->_muxBridgeContext;
  self->_muxBridgeContext = 0;

  multiUserResultCandidate = self->_multiUserResultCandidate;
  self->_multiUserResultCandidate = 0;

  multiUserResultSelected = self->_multiUserResultSelected;
  self->_multiUserResultSelected = 0;

  aceCommandContext = self->_aceCommandContext;
  self->_aceCommandContext = 0;

  trpFinalized = self->_trpFinalized;
  self->_trpFinalized = 0;

  requestMitigated = self->_requestMitigated;
  self->_requestMitigated = 0;

  nlv3ServerFallbackDeprecated = self->_nlv3ServerFallbackDeprecated;
  self->_nlv3ServerFallbackDeprecated = 0;

  uiActivationContext = self->_uiActivationContext;
  self->_uiActivationContext = 0;

  trpCandidateReceived = self->_trpCandidateReceived;
  self->_trpCandidateReceived = 0;

  identityBridgeRequestContext = self->_identityBridgeRequestContext;
  self->_identityBridgeRequestContext = 0;

  assetSetsReported = self->_assetSetsReported;
  self->_assetSetsReported = 0;

  candidateRequestContext = self->_candidateRequestContext;
  self->_candidateRequestContext = 0;

  powerContextPolicyReported = self->_powerContextPolicyReported;
  self->_powerContextPolicyReported = 0;

  executeOnRemoteRequestContext = self->_executeOnRemoteRequestContext;
  self->_executeOnRemoteRequestContext = 0;

  assistantdLaunchMetadataReported = self->_assistantdLaunchMetadataReported;
  self->_assistantdLaunchMetadataReported = 0;

  intelligenceFlowQuerySent = self->_intelligenceFlowQuerySent;
  self->_intelligenceFlowQuerySent = 0;

  subRequestContext = self->_subRequestContext;
  self->_subRequestContext = 0;

  routerRewrittenUtterance = self->_routerRewrittenUtterance;
  self->_routerRewrittenUtterance = 0;

  nlRouterBridgeContext = self->_nlRouterBridgeContext;
  self->_nlRouterBridgeContext = 0;

  shimToolContext = self->_shimToolContext;
  self->_shimToolContext = 0;

  nlRouterBridgeSubComponentContext = self->_nlRouterBridgeSubComponentContext;
  self->_nlRouterBridgeSubComponentContext = 0;

  unsupportedLanguageDetected = self->_unsupportedLanguageDetected;
  self->_unsupportedLanguageDetected = 0;

  trpCandidateCreated = self->_trpCandidateCreated;
  self->_trpCandidateCreated = 0;

  audioTopologyReported = self->_audioTopologyReported;
  self->_audioTopologyReported = 0;

  intelligenceFlowRequestContext = self->_intelligenceFlowRequestContext;
  self->_intelligenceFlowRequestContext = 0;

  userSessionState = self->_userSessionState;
  self->_userSessionState = 0;

  serverExecutionValuesReported = self->_serverExecutionValuesReported;
  self->_serverExecutionValuesReported = 0;

  v44 = 133;
  if (!fallbackCopy)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  subRequestFallback = self->_subRequestFallback;
  self->_subRequestFallback = fallbackCopy;
}

- (void)deleteShimToolContext
{
  if (self->_whichEvent_Type == 132)
  {
    self->_whichEvent_Type = 0;
    self->_shimToolContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setShimToolContext:(id)context
{
  contextCopy = context;
  requestContext = self->_requestContext;
  self->_requestContext = 0;

  asrBridgeContext = self->_asrBridgeContext;
  self->_asrBridgeContext = 0;

  cdmBridgeContext = self->_cdmBridgeContext;
  self->_cdmBridgeContext = 0;

  executionBridgeContext = self->_executionBridgeContext;
  self->_executionBridgeContext = 0;

  serverFallbackContext = self->_serverFallbackContext;
  self->_serverFallbackContext = 0;

  flowOutputSubmitted = self->_flowOutputSubmitted;
  self->_flowOutputSubmitted = 0;

  resultCandidate = self->_resultCandidate;
  self->_resultCandidate = 0;

  resultSelected = self->_resultSelected;
  self->_resultSelected = 0;

  contextSubmissionMessage = self->_contextSubmissionMessage;
  self->_contextSubmissionMessage = 0;

  availableAssets = self->_availableAssets;
  self->_availableAssets = 0;

  orchDeviceDynamicContext = self->_orchDeviceDynamicContext;
  self->_orchDeviceDynamicContext = 0;

  pommesBridgeContext = self->_pommesBridgeContext;
  self->_pommesBridgeContext = 0;

  muxBridgeContext = self->_muxBridgeContext;
  self->_muxBridgeContext = 0;

  multiUserResultCandidate = self->_multiUserResultCandidate;
  self->_multiUserResultCandidate = 0;

  multiUserResultSelected = self->_multiUserResultSelected;
  self->_multiUserResultSelected = 0;

  aceCommandContext = self->_aceCommandContext;
  self->_aceCommandContext = 0;

  trpFinalized = self->_trpFinalized;
  self->_trpFinalized = 0;

  requestMitigated = self->_requestMitigated;
  self->_requestMitigated = 0;

  nlv3ServerFallbackDeprecated = self->_nlv3ServerFallbackDeprecated;
  self->_nlv3ServerFallbackDeprecated = 0;

  uiActivationContext = self->_uiActivationContext;
  self->_uiActivationContext = 0;

  trpCandidateReceived = self->_trpCandidateReceived;
  self->_trpCandidateReceived = 0;

  identityBridgeRequestContext = self->_identityBridgeRequestContext;
  self->_identityBridgeRequestContext = 0;

  assetSetsReported = self->_assetSetsReported;
  self->_assetSetsReported = 0;

  candidateRequestContext = self->_candidateRequestContext;
  self->_candidateRequestContext = 0;

  powerContextPolicyReported = self->_powerContextPolicyReported;
  self->_powerContextPolicyReported = 0;

  executeOnRemoteRequestContext = self->_executeOnRemoteRequestContext;
  self->_executeOnRemoteRequestContext = 0;

  assistantdLaunchMetadataReported = self->_assistantdLaunchMetadataReported;
  self->_assistantdLaunchMetadataReported = 0;

  intelligenceFlowQuerySent = self->_intelligenceFlowQuerySent;
  self->_intelligenceFlowQuerySent = 0;

  subRequestContext = self->_subRequestContext;
  self->_subRequestContext = 0;

  routerRewrittenUtterance = self->_routerRewrittenUtterance;
  self->_routerRewrittenUtterance = 0;

  nlRouterBridgeContext = self->_nlRouterBridgeContext;
  self->_nlRouterBridgeContext = 0;

  subRequestFallback = self->_subRequestFallback;
  self->_subRequestFallback = 0;

  nlRouterBridgeSubComponentContext = self->_nlRouterBridgeSubComponentContext;
  self->_nlRouterBridgeSubComponentContext = 0;

  unsupportedLanguageDetected = self->_unsupportedLanguageDetected;
  self->_unsupportedLanguageDetected = 0;

  trpCandidateCreated = self->_trpCandidateCreated;
  self->_trpCandidateCreated = 0;

  audioTopologyReported = self->_audioTopologyReported;
  self->_audioTopologyReported = 0;

  intelligenceFlowRequestContext = self->_intelligenceFlowRequestContext;
  self->_intelligenceFlowRequestContext = 0;

  userSessionState = self->_userSessionState;
  self->_userSessionState = 0;

  serverExecutionValuesReported = self->_serverExecutionValuesReported;
  self->_serverExecutionValuesReported = 0;

  v44 = 132;
  if (!contextCopy)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  shimToolContext = self->_shimToolContext;
  self->_shimToolContext = contextCopy;
}

- (void)deleteNlRouterBridgeContext
{
  if (self->_whichEvent_Type == 131)
  {
    self->_whichEvent_Type = 0;
    self->_nlRouterBridgeContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setNlRouterBridgeContext:(id)context
{
  contextCopy = context;
  requestContext = self->_requestContext;
  self->_requestContext = 0;

  asrBridgeContext = self->_asrBridgeContext;
  self->_asrBridgeContext = 0;

  cdmBridgeContext = self->_cdmBridgeContext;
  self->_cdmBridgeContext = 0;

  executionBridgeContext = self->_executionBridgeContext;
  self->_executionBridgeContext = 0;

  serverFallbackContext = self->_serverFallbackContext;
  self->_serverFallbackContext = 0;

  flowOutputSubmitted = self->_flowOutputSubmitted;
  self->_flowOutputSubmitted = 0;

  resultCandidate = self->_resultCandidate;
  self->_resultCandidate = 0;

  resultSelected = self->_resultSelected;
  self->_resultSelected = 0;

  contextSubmissionMessage = self->_contextSubmissionMessage;
  self->_contextSubmissionMessage = 0;

  availableAssets = self->_availableAssets;
  self->_availableAssets = 0;

  orchDeviceDynamicContext = self->_orchDeviceDynamicContext;
  self->_orchDeviceDynamicContext = 0;

  pommesBridgeContext = self->_pommesBridgeContext;
  self->_pommesBridgeContext = 0;

  muxBridgeContext = self->_muxBridgeContext;
  self->_muxBridgeContext = 0;

  multiUserResultCandidate = self->_multiUserResultCandidate;
  self->_multiUserResultCandidate = 0;

  multiUserResultSelected = self->_multiUserResultSelected;
  self->_multiUserResultSelected = 0;

  aceCommandContext = self->_aceCommandContext;
  self->_aceCommandContext = 0;

  trpFinalized = self->_trpFinalized;
  self->_trpFinalized = 0;

  requestMitigated = self->_requestMitigated;
  self->_requestMitigated = 0;

  nlv3ServerFallbackDeprecated = self->_nlv3ServerFallbackDeprecated;
  self->_nlv3ServerFallbackDeprecated = 0;

  uiActivationContext = self->_uiActivationContext;
  self->_uiActivationContext = 0;

  trpCandidateReceived = self->_trpCandidateReceived;
  self->_trpCandidateReceived = 0;

  identityBridgeRequestContext = self->_identityBridgeRequestContext;
  self->_identityBridgeRequestContext = 0;

  assetSetsReported = self->_assetSetsReported;
  self->_assetSetsReported = 0;

  candidateRequestContext = self->_candidateRequestContext;
  self->_candidateRequestContext = 0;

  powerContextPolicyReported = self->_powerContextPolicyReported;
  self->_powerContextPolicyReported = 0;

  executeOnRemoteRequestContext = self->_executeOnRemoteRequestContext;
  self->_executeOnRemoteRequestContext = 0;

  assistantdLaunchMetadataReported = self->_assistantdLaunchMetadataReported;
  self->_assistantdLaunchMetadataReported = 0;

  intelligenceFlowQuerySent = self->_intelligenceFlowQuerySent;
  self->_intelligenceFlowQuerySent = 0;

  subRequestContext = self->_subRequestContext;
  self->_subRequestContext = 0;

  routerRewrittenUtterance = self->_routerRewrittenUtterance;
  self->_routerRewrittenUtterance = 0;

  shimToolContext = self->_shimToolContext;
  self->_shimToolContext = 0;

  subRequestFallback = self->_subRequestFallback;
  self->_subRequestFallback = 0;

  nlRouterBridgeSubComponentContext = self->_nlRouterBridgeSubComponentContext;
  self->_nlRouterBridgeSubComponentContext = 0;

  unsupportedLanguageDetected = self->_unsupportedLanguageDetected;
  self->_unsupportedLanguageDetected = 0;

  trpCandidateCreated = self->_trpCandidateCreated;
  self->_trpCandidateCreated = 0;

  audioTopologyReported = self->_audioTopologyReported;
  self->_audioTopologyReported = 0;

  intelligenceFlowRequestContext = self->_intelligenceFlowRequestContext;
  self->_intelligenceFlowRequestContext = 0;

  userSessionState = self->_userSessionState;
  self->_userSessionState = 0;

  serverExecutionValuesReported = self->_serverExecutionValuesReported;
  self->_serverExecutionValuesReported = 0;

  v44 = 131;
  if (!contextCopy)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  nlRouterBridgeContext = self->_nlRouterBridgeContext;
  self->_nlRouterBridgeContext = contextCopy;
}

- (void)deleteRouterRewrittenUtterance
{
  if (self->_whichEvent_Type == 130)
  {
    self->_whichEvent_Type = 0;
    self->_routerRewrittenUtterance = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setRouterRewrittenUtterance:(id)utterance
{
  utteranceCopy = utterance;
  requestContext = self->_requestContext;
  self->_requestContext = 0;

  asrBridgeContext = self->_asrBridgeContext;
  self->_asrBridgeContext = 0;

  cdmBridgeContext = self->_cdmBridgeContext;
  self->_cdmBridgeContext = 0;

  executionBridgeContext = self->_executionBridgeContext;
  self->_executionBridgeContext = 0;

  serverFallbackContext = self->_serverFallbackContext;
  self->_serverFallbackContext = 0;

  flowOutputSubmitted = self->_flowOutputSubmitted;
  self->_flowOutputSubmitted = 0;

  resultCandidate = self->_resultCandidate;
  self->_resultCandidate = 0;

  resultSelected = self->_resultSelected;
  self->_resultSelected = 0;

  contextSubmissionMessage = self->_contextSubmissionMessage;
  self->_contextSubmissionMessage = 0;

  availableAssets = self->_availableAssets;
  self->_availableAssets = 0;

  orchDeviceDynamicContext = self->_orchDeviceDynamicContext;
  self->_orchDeviceDynamicContext = 0;

  pommesBridgeContext = self->_pommesBridgeContext;
  self->_pommesBridgeContext = 0;

  muxBridgeContext = self->_muxBridgeContext;
  self->_muxBridgeContext = 0;

  multiUserResultCandidate = self->_multiUserResultCandidate;
  self->_multiUserResultCandidate = 0;

  multiUserResultSelected = self->_multiUserResultSelected;
  self->_multiUserResultSelected = 0;

  aceCommandContext = self->_aceCommandContext;
  self->_aceCommandContext = 0;

  trpFinalized = self->_trpFinalized;
  self->_trpFinalized = 0;

  requestMitigated = self->_requestMitigated;
  self->_requestMitigated = 0;

  nlv3ServerFallbackDeprecated = self->_nlv3ServerFallbackDeprecated;
  self->_nlv3ServerFallbackDeprecated = 0;

  uiActivationContext = self->_uiActivationContext;
  self->_uiActivationContext = 0;

  trpCandidateReceived = self->_trpCandidateReceived;
  self->_trpCandidateReceived = 0;

  identityBridgeRequestContext = self->_identityBridgeRequestContext;
  self->_identityBridgeRequestContext = 0;

  assetSetsReported = self->_assetSetsReported;
  self->_assetSetsReported = 0;

  candidateRequestContext = self->_candidateRequestContext;
  self->_candidateRequestContext = 0;

  powerContextPolicyReported = self->_powerContextPolicyReported;
  self->_powerContextPolicyReported = 0;

  executeOnRemoteRequestContext = self->_executeOnRemoteRequestContext;
  self->_executeOnRemoteRequestContext = 0;

  assistantdLaunchMetadataReported = self->_assistantdLaunchMetadataReported;
  self->_assistantdLaunchMetadataReported = 0;

  intelligenceFlowQuerySent = self->_intelligenceFlowQuerySent;
  self->_intelligenceFlowQuerySent = 0;

  subRequestContext = self->_subRequestContext;
  self->_subRequestContext = 0;

  nlRouterBridgeContext = self->_nlRouterBridgeContext;
  self->_nlRouterBridgeContext = 0;

  shimToolContext = self->_shimToolContext;
  self->_shimToolContext = 0;

  subRequestFallback = self->_subRequestFallback;
  self->_subRequestFallback = 0;

  nlRouterBridgeSubComponentContext = self->_nlRouterBridgeSubComponentContext;
  self->_nlRouterBridgeSubComponentContext = 0;

  unsupportedLanguageDetected = self->_unsupportedLanguageDetected;
  self->_unsupportedLanguageDetected = 0;

  trpCandidateCreated = self->_trpCandidateCreated;
  self->_trpCandidateCreated = 0;

  audioTopologyReported = self->_audioTopologyReported;
  self->_audioTopologyReported = 0;

  intelligenceFlowRequestContext = self->_intelligenceFlowRequestContext;
  self->_intelligenceFlowRequestContext = 0;

  userSessionState = self->_userSessionState;
  self->_userSessionState = 0;

  serverExecutionValuesReported = self->_serverExecutionValuesReported;
  self->_serverExecutionValuesReported = 0;

  v44 = 130;
  if (!utteranceCopy)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  routerRewrittenUtterance = self->_routerRewrittenUtterance;
  self->_routerRewrittenUtterance = utteranceCopy;
}

- (void)deleteSubRequestContext
{
  if (self->_whichEvent_Type == 129)
  {
    self->_whichEvent_Type = 0;
    self->_subRequestContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setSubRequestContext:(id)context
{
  contextCopy = context;
  requestContext = self->_requestContext;
  self->_requestContext = 0;

  asrBridgeContext = self->_asrBridgeContext;
  self->_asrBridgeContext = 0;

  cdmBridgeContext = self->_cdmBridgeContext;
  self->_cdmBridgeContext = 0;

  executionBridgeContext = self->_executionBridgeContext;
  self->_executionBridgeContext = 0;

  serverFallbackContext = self->_serverFallbackContext;
  self->_serverFallbackContext = 0;

  flowOutputSubmitted = self->_flowOutputSubmitted;
  self->_flowOutputSubmitted = 0;

  resultCandidate = self->_resultCandidate;
  self->_resultCandidate = 0;

  resultSelected = self->_resultSelected;
  self->_resultSelected = 0;

  contextSubmissionMessage = self->_contextSubmissionMessage;
  self->_contextSubmissionMessage = 0;

  availableAssets = self->_availableAssets;
  self->_availableAssets = 0;

  orchDeviceDynamicContext = self->_orchDeviceDynamicContext;
  self->_orchDeviceDynamicContext = 0;

  pommesBridgeContext = self->_pommesBridgeContext;
  self->_pommesBridgeContext = 0;

  muxBridgeContext = self->_muxBridgeContext;
  self->_muxBridgeContext = 0;

  multiUserResultCandidate = self->_multiUserResultCandidate;
  self->_multiUserResultCandidate = 0;

  multiUserResultSelected = self->_multiUserResultSelected;
  self->_multiUserResultSelected = 0;

  aceCommandContext = self->_aceCommandContext;
  self->_aceCommandContext = 0;

  trpFinalized = self->_trpFinalized;
  self->_trpFinalized = 0;

  requestMitigated = self->_requestMitigated;
  self->_requestMitigated = 0;

  nlv3ServerFallbackDeprecated = self->_nlv3ServerFallbackDeprecated;
  self->_nlv3ServerFallbackDeprecated = 0;

  uiActivationContext = self->_uiActivationContext;
  self->_uiActivationContext = 0;

  trpCandidateReceived = self->_trpCandidateReceived;
  self->_trpCandidateReceived = 0;

  identityBridgeRequestContext = self->_identityBridgeRequestContext;
  self->_identityBridgeRequestContext = 0;

  assetSetsReported = self->_assetSetsReported;
  self->_assetSetsReported = 0;

  candidateRequestContext = self->_candidateRequestContext;
  self->_candidateRequestContext = 0;

  powerContextPolicyReported = self->_powerContextPolicyReported;
  self->_powerContextPolicyReported = 0;

  executeOnRemoteRequestContext = self->_executeOnRemoteRequestContext;
  self->_executeOnRemoteRequestContext = 0;

  assistantdLaunchMetadataReported = self->_assistantdLaunchMetadataReported;
  self->_assistantdLaunchMetadataReported = 0;

  intelligenceFlowQuerySent = self->_intelligenceFlowQuerySent;
  self->_intelligenceFlowQuerySent = 0;

  routerRewrittenUtterance = self->_routerRewrittenUtterance;
  self->_routerRewrittenUtterance = 0;

  nlRouterBridgeContext = self->_nlRouterBridgeContext;
  self->_nlRouterBridgeContext = 0;

  shimToolContext = self->_shimToolContext;
  self->_shimToolContext = 0;

  subRequestFallback = self->_subRequestFallback;
  self->_subRequestFallback = 0;

  nlRouterBridgeSubComponentContext = self->_nlRouterBridgeSubComponentContext;
  self->_nlRouterBridgeSubComponentContext = 0;

  unsupportedLanguageDetected = self->_unsupportedLanguageDetected;
  self->_unsupportedLanguageDetected = 0;

  trpCandidateCreated = self->_trpCandidateCreated;
  self->_trpCandidateCreated = 0;

  audioTopologyReported = self->_audioTopologyReported;
  self->_audioTopologyReported = 0;

  intelligenceFlowRequestContext = self->_intelligenceFlowRequestContext;
  self->_intelligenceFlowRequestContext = 0;

  userSessionState = self->_userSessionState;
  self->_userSessionState = 0;

  serverExecutionValuesReported = self->_serverExecutionValuesReported;
  self->_serverExecutionValuesReported = 0;

  v44 = 129;
  if (!contextCopy)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  subRequestContext = self->_subRequestContext;
  self->_subRequestContext = contextCopy;
}

- (void)deleteIntelligenceFlowQuerySent
{
  if (self->_whichEvent_Type == 128)
  {
    self->_whichEvent_Type = 0;
    self->_intelligenceFlowQuerySent = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setIntelligenceFlowQuerySent:(id)sent
{
  sentCopy = sent;
  requestContext = self->_requestContext;
  self->_requestContext = 0;

  asrBridgeContext = self->_asrBridgeContext;
  self->_asrBridgeContext = 0;

  cdmBridgeContext = self->_cdmBridgeContext;
  self->_cdmBridgeContext = 0;

  executionBridgeContext = self->_executionBridgeContext;
  self->_executionBridgeContext = 0;

  serverFallbackContext = self->_serverFallbackContext;
  self->_serverFallbackContext = 0;

  flowOutputSubmitted = self->_flowOutputSubmitted;
  self->_flowOutputSubmitted = 0;

  resultCandidate = self->_resultCandidate;
  self->_resultCandidate = 0;

  resultSelected = self->_resultSelected;
  self->_resultSelected = 0;

  contextSubmissionMessage = self->_contextSubmissionMessage;
  self->_contextSubmissionMessage = 0;

  availableAssets = self->_availableAssets;
  self->_availableAssets = 0;

  orchDeviceDynamicContext = self->_orchDeviceDynamicContext;
  self->_orchDeviceDynamicContext = 0;

  pommesBridgeContext = self->_pommesBridgeContext;
  self->_pommesBridgeContext = 0;

  muxBridgeContext = self->_muxBridgeContext;
  self->_muxBridgeContext = 0;

  multiUserResultCandidate = self->_multiUserResultCandidate;
  self->_multiUserResultCandidate = 0;

  multiUserResultSelected = self->_multiUserResultSelected;
  self->_multiUserResultSelected = 0;

  aceCommandContext = self->_aceCommandContext;
  self->_aceCommandContext = 0;

  trpFinalized = self->_trpFinalized;
  self->_trpFinalized = 0;

  requestMitigated = self->_requestMitigated;
  self->_requestMitigated = 0;

  nlv3ServerFallbackDeprecated = self->_nlv3ServerFallbackDeprecated;
  self->_nlv3ServerFallbackDeprecated = 0;

  uiActivationContext = self->_uiActivationContext;
  self->_uiActivationContext = 0;

  trpCandidateReceived = self->_trpCandidateReceived;
  self->_trpCandidateReceived = 0;

  identityBridgeRequestContext = self->_identityBridgeRequestContext;
  self->_identityBridgeRequestContext = 0;

  assetSetsReported = self->_assetSetsReported;
  self->_assetSetsReported = 0;

  candidateRequestContext = self->_candidateRequestContext;
  self->_candidateRequestContext = 0;

  powerContextPolicyReported = self->_powerContextPolicyReported;
  self->_powerContextPolicyReported = 0;

  executeOnRemoteRequestContext = self->_executeOnRemoteRequestContext;
  self->_executeOnRemoteRequestContext = 0;

  assistantdLaunchMetadataReported = self->_assistantdLaunchMetadataReported;
  self->_assistantdLaunchMetadataReported = 0;

  subRequestContext = self->_subRequestContext;
  self->_subRequestContext = 0;

  routerRewrittenUtterance = self->_routerRewrittenUtterance;
  self->_routerRewrittenUtterance = 0;

  nlRouterBridgeContext = self->_nlRouterBridgeContext;
  self->_nlRouterBridgeContext = 0;

  shimToolContext = self->_shimToolContext;
  self->_shimToolContext = 0;

  subRequestFallback = self->_subRequestFallback;
  self->_subRequestFallback = 0;

  nlRouterBridgeSubComponentContext = self->_nlRouterBridgeSubComponentContext;
  self->_nlRouterBridgeSubComponentContext = 0;

  unsupportedLanguageDetected = self->_unsupportedLanguageDetected;
  self->_unsupportedLanguageDetected = 0;

  trpCandidateCreated = self->_trpCandidateCreated;
  self->_trpCandidateCreated = 0;

  audioTopologyReported = self->_audioTopologyReported;
  self->_audioTopologyReported = 0;

  intelligenceFlowRequestContext = self->_intelligenceFlowRequestContext;
  self->_intelligenceFlowRequestContext = 0;

  userSessionState = self->_userSessionState;
  self->_userSessionState = 0;

  serverExecutionValuesReported = self->_serverExecutionValuesReported;
  self->_serverExecutionValuesReported = 0;

  self->_whichEvent_Type = (sentCopy != 0) << 7;
  intelligenceFlowQuerySent = self->_intelligenceFlowQuerySent;
  self->_intelligenceFlowQuerySent = sentCopy;
}

- (void)deleteAssistantdLaunchMetadataReported
{
  if (self->_whichEvent_Type == 127)
  {
    self->_whichEvent_Type = 0;
    self->_assistantdLaunchMetadataReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setAssistantdLaunchMetadataReported:(id)reported
{
  reportedCopy = reported;
  requestContext = self->_requestContext;
  self->_requestContext = 0;

  asrBridgeContext = self->_asrBridgeContext;
  self->_asrBridgeContext = 0;

  cdmBridgeContext = self->_cdmBridgeContext;
  self->_cdmBridgeContext = 0;

  executionBridgeContext = self->_executionBridgeContext;
  self->_executionBridgeContext = 0;

  serverFallbackContext = self->_serverFallbackContext;
  self->_serverFallbackContext = 0;

  flowOutputSubmitted = self->_flowOutputSubmitted;
  self->_flowOutputSubmitted = 0;

  resultCandidate = self->_resultCandidate;
  self->_resultCandidate = 0;

  resultSelected = self->_resultSelected;
  self->_resultSelected = 0;

  contextSubmissionMessage = self->_contextSubmissionMessage;
  self->_contextSubmissionMessage = 0;

  availableAssets = self->_availableAssets;
  self->_availableAssets = 0;

  orchDeviceDynamicContext = self->_orchDeviceDynamicContext;
  self->_orchDeviceDynamicContext = 0;

  pommesBridgeContext = self->_pommesBridgeContext;
  self->_pommesBridgeContext = 0;

  muxBridgeContext = self->_muxBridgeContext;
  self->_muxBridgeContext = 0;

  multiUserResultCandidate = self->_multiUserResultCandidate;
  self->_multiUserResultCandidate = 0;

  multiUserResultSelected = self->_multiUserResultSelected;
  self->_multiUserResultSelected = 0;

  aceCommandContext = self->_aceCommandContext;
  self->_aceCommandContext = 0;

  trpFinalized = self->_trpFinalized;
  self->_trpFinalized = 0;

  requestMitigated = self->_requestMitigated;
  self->_requestMitigated = 0;

  nlv3ServerFallbackDeprecated = self->_nlv3ServerFallbackDeprecated;
  self->_nlv3ServerFallbackDeprecated = 0;

  uiActivationContext = self->_uiActivationContext;
  self->_uiActivationContext = 0;

  trpCandidateReceived = self->_trpCandidateReceived;
  self->_trpCandidateReceived = 0;

  identityBridgeRequestContext = self->_identityBridgeRequestContext;
  self->_identityBridgeRequestContext = 0;

  assetSetsReported = self->_assetSetsReported;
  self->_assetSetsReported = 0;

  candidateRequestContext = self->_candidateRequestContext;
  self->_candidateRequestContext = 0;

  powerContextPolicyReported = self->_powerContextPolicyReported;
  self->_powerContextPolicyReported = 0;

  executeOnRemoteRequestContext = self->_executeOnRemoteRequestContext;
  self->_executeOnRemoteRequestContext = 0;

  intelligenceFlowQuerySent = self->_intelligenceFlowQuerySent;
  self->_intelligenceFlowQuerySent = 0;

  subRequestContext = self->_subRequestContext;
  self->_subRequestContext = 0;

  routerRewrittenUtterance = self->_routerRewrittenUtterance;
  self->_routerRewrittenUtterance = 0;

  nlRouterBridgeContext = self->_nlRouterBridgeContext;
  self->_nlRouterBridgeContext = 0;

  shimToolContext = self->_shimToolContext;
  self->_shimToolContext = 0;

  subRequestFallback = self->_subRequestFallback;
  self->_subRequestFallback = 0;

  nlRouterBridgeSubComponentContext = self->_nlRouterBridgeSubComponentContext;
  self->_nlRouterBridgeSubComponentContext = 0;

  unsupportedLanguageDetected = self->_unsupportedLanguageDetected;
  self->_unsupportedLanguageDetected = 0;

  trpCandidateCreated = self->_trpCandidateCreated;
  self->_trpCandidateCreated = 0;

  audioTopologyReported = self->_audioTopologyReported;
  self->_audioTopologyReported = 0;

  intelligenceFlowRequestContext = self->_intelligenceFlowRequestContext;
  self->_intelligenceFlowRequestContext = 0;

  userSessionState = self->_userSessionState;
  self->_userSessionState = 0;

  serverExecutionValuesReported = self->_serverExecutionValuesReported;
  self->_serverExecutionValuesReported = 0;

  v44 = 127;
  if (!reportedCopy)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  assistantdLaunchMetadataReported = self->_assistantdLaunchMetadataReported;
  self->_assistantdLaunchMetadataReported = reportedCopy;
}

- (void)deleteExecuteOnRemoteRequestContext
{
  if (self->_whichEvent_Type == 126)
  {
    self->_whichEvent_Type = 0;
    self->_executeOnRemoteRequestContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setExecuteOnRemoteRequestContext:(id)context
{
  contextCopy = context;
  requestContext = self->_requestContext;
  self->_requestContext = 0;

  asrBridgeContext = self->_asrBridgeContext;
  self->_asrBridgeContext = 0;

  cdmBridgeContext = self->_cdmBridgeContext;
  self->_cdmBridgeContext = 0;

  executionBridgeContext = self->_executionBridgeContext;
  self->_executionBridgeContext = 0;

  serverFallbackContext = self->_serverFallbackContext;
  self->_serverFallbackContext = 0;

  flowOutputSubmitted = self->_flowOutputSubmitted;
  self->_flowOutputSubmitted = 0;

  resultCandidate = self->_resultCandidate;
  self->_resultCandidate = 0;

  resultSelected = self->_resultSelected;
  self->_resultSelected = 0;

  contextSubmissionMessage = self->_contextSubmissionMessage;
  self->_contextSubmissionMessage = 0;

  availableAssets = self->_availableAssets;
  self->_availableAssets = 0;

  orchDeviceDynamicContext = self->_orchDeviceDynamicContext;
  self->_orchDeviceDynamicContext = 0;

  pommesBridgeContext = self->_pommesBridgeContext;
  self->_pommesBridgeContext = 0;

  muxBridgeContext = self->_muxBridgeContext;
  self->_muxBridgeContext = 0;

  multiUserResultCandidate = self->_multiUserResultCandidate;
  self->_multiUserResultCandidate = 0;

  multiUserResultSelected = self->_multiUserResultSelected;
  self->_multiUserResultSelected = 0;

  aceCommandContext = self->_aceCommandContext;
  self->_aceCommandContext = 0;

  trpFinalized = self->_trpFinalized;
  self->_trpFinalized = 0;

  requestMitigated = self->_requestMitigated;
  self->_requestMitigated = 0;

  nlv3ServerFallbackDeprecated = self->_nlv3ServerFallbackDeprecated;
  self->_nlv3ServerFallbackDeprecated = 0;

  uiActivationContext = self->_uiActivationContext;
  self->_uiActivationContext = 0;

  trpCandidateReceived = self->_trpCandidateReceived;
  self->_trpCandidateReceived = 0;

  identityBridgeRequestContext = self->_identityBridgeRequestContext;
  self->_identityBridgeRequestContext = 0;

  assetSetsReported = self->_assetSetsReported;
  self->_assetSetsReported = 0;

  candidateRequestContext = self->_candidateRequestContext;
  self->_candidateRequestContext = 0;

  powerContextPolicyReported = self->_powerContextPolicyReported;
  self->_powerContextPolicyReported = 0;

  assistantdLaunchMetadataReported = self->_assistantdLaunchMetadataReported;
  self->_assistantdLaunchMetadataReported = 0;

  intelligenceFlowQuerySent = self->_intelligenceFlowQuerySent;
  self->_intelligenceFlowQuerySent = 0;

  subRequestContext = self->_subRequestContext;
  self->_subRequestContext = 0;

  routerRewrittenUtterance = self->_routerRewrittenUtterance;
  self->_routerRewrittenUtterance = 0;

  nlRouterBridgeContext = self->_nlRouterBridgeContext;
  self->_nlRouterBridgeContext = 0;

  shimToolContext = self->_shimToolContext;
  self->_shimToolContext = 0;

  subRequestFallback = self->_subRequestFallback;
  self->_subRequestFallback = 0;

  nlRouterBridgeSubComponentContext = self->_nlRouterBridgeSubComponentContext;
  self->_nlRouterBridgeSubComponentContext = 0;

  unsupportedLanguageDetected = self->_unsupportedLanguageDetected;
  self->_unsupportedLanguageDetected = 0;

  trpCandidateCreated = self->_trpCandidateCreated;
  self->_trpCandidateCreated = 0;

  audioTopologyReported = self->_audioTopologyReported;
  self->_audioTopologyReported = 0;

  intelligenceFlowRequestContext = self->_intelligenceFlowRequestContext;
  self->_intelligenceFlowRequestContext = 0;

  userSessionState = self->_userSessionState;
  self->_userSessionState = 0;

  serverExecutionValuesReported = self->_serverExecutionValuesReported;
  self->_serverExecutionValuesReported = 0;

  v44 = 126;
  if (!contextCopy)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  executeOnRemoteRequestContext = self->_executeOnRemoteRequestContext;
  self->_executeOnRemoteRequestContext = contextCopy;
}

- (void)deletePowerContextPolicyReported
{
  if (self->_whichEvent_Type == 125)
  {
    self->_whichEvent_Type = 0;
    self->_powerContextPolicyReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setPowerContextPolicyReported:(id)reported
{
  reportedCopy = reported;
  requestContext = self->_requestContext;
  self->_requestContext = 0;

  asrBridgeContext = self->_asrBridgeContext;
  self->_asrBridgeContext = 0;

  cdmBridgeContext = self->_cdmBridgeContext;
  self->_cdmBridgeContext = 0;

  executionBridgeContext = self->_executionBridgeContext;
  self->_executionBridgeContext = 0;

  serverFallbackContext = self->_serverFallbackContext;
  self->_serverFallbackContext = 0;

  flowOutputSubmitted = self->_flowOutputSubmitted;
  self->_flowOutputSubmitted = 0;

  resultCandidate = self->_resultCandidate;
  self->_resultCandidate = 0;

  resultSelected = self->_resultSelected;
  self->_resultSelected = 0;

  contextSubmissionMessage = self->_contextSubmissionMessage;
  self->_contextSubmissionMessage = 0;

  availableAssets = self->_availableAssets;
  self->_availableAssets = 0;

  orchDeviceDynamicContext = self->_orchDeviceDynamicContext;
  self->_orchDeviceDynamicContext = 0;

  pommesBridgeContext = self->_pommesBridgeContext;
  self->_pommesBridgeContext = 0;

  muxBridgeContext = self->_muxBridgeContext;
  self->_muxBridgeContext = 0;

  multiUserResultCandidate = self->_multiUserResultCandidate;
  self->_multiUserResultCandidate = 0;

  multiUserResultSelected = self->_multiUserResultSelected;
  self->_multiUserResultSelected = 0;

  aceCommandContext = self->_aceCommandContext;
  self->_aceCommandContext = 0;

  trpFinalized = self->_trpFinalized;
  self->_trpFinalized = 0;

  requestMitigated = self->_requestMitigated;
  self->_requestMitigated = 0;

  nlv3ServerFallbackDeprecated = self->_nlv3ServerFallbackDeprecated;
  self->_nlv3ServerFallbackDeprecated = 0;

  uiActivationContext = self->_uiActivationContext;
  self->_uiActivationContext = 0;

  trpCandidateReceived = self->_trpCandidateReceived;
  self->_trpCandidateReceived = 0;

  identityBridgeRequestContext = self->_identityBridgeRequestContext;
  self->_identityBridgeRequestContext = 0;

  assetSetsReported = self->_assetSetsReported;
  self->_assetSetsReported = 0;

  candidateRequestContext = self->_candidateRequestContext;
  self->_candidateRequestContext = 0;

  executeOnRemoteRequestContext = self->_executeOnRemoteRequestContext;
  self->_executeOnRemoteRequestContext = 0;

  assistantdLaunchMetadataReported = self->_assistantdLaunchMetadataReported;
  self->_assistantdLaunchMetadataReported = 0;

  intelligenceFlowQuerySent = self->_intelligenceFlowQuerySent;
  self->_intelligenceFlowQuerySent = 0;

  subRequestContext = self->_subRequestContext;
  self->_subRequestContext = 0;

  routerRewrittenUtterance = self->_routerRewrittenUtterance;
  self->_routerRewrittenUtterance = 0;

  nlRouterBridgeContext = self->_nlRouterBridgeContext;
  self->_nlRouterBridgeContext = 0;

  shimToolContext = self->_shimToolContext;
  self->_shimToolContext = 0;

  subRequestFallback = self->_subRequestFallback;
  self->_subRequestFallback = 0;

  nlRouterBridgeSubComponentContext = self->_nlRouterBridgeSubComponentContext;
  self->_nlRouterBridgeSubComponentContext = 0;

  unsupportedLanguageDetected = self->_unsupportedLanguageDetected;
  self->_unsupportedLanguageDetected = 0;

  trpCandidateCreated = self->_trpCandidateCreated;
  self->_trpCandidateCreated = 0;

  audioTopologyReported = self->_audioTopologyReported;
  self->_audioTopologyReported = 0;

  intelligenceFlowRequestContext = self->_intelligenceFlowRequestContext;
  self->_intelligenceFlowRequestContext = 0;

  userSessionState = self->_userSessionState;
  self->_userSessionState = 0;

  serverExecutionValuesReported = self->_serverExecutionValuesReported;
  self->_serverExecutionValuesReported = 0;

  v44 = 125;
  if (!reportedCopy)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  powerContextPolicyReported = self->_powerContextPolicyReported;
  self->_powerContextPolicyReported = reportedCopy;
}

- (void)deleteCandidateRequestContext
{
  if (self->_whichEvent_Type == 124)
  {
    self->_whichEvent_Type = 0;
    self->_candidateRequestContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setCandidateRequestContext:(id)context
{
  contextCopy = context;
  requestContext = self->_requestContext;
  self->_requestContext = 0;

  asrBridgeContext = self->_asrBridgeContext;
  self->_asrBridgeContext = 0;

  cdmBridgeContext = self->_cdmBridgeContext;
  self->_cdmBridgeContext = 0;

  executionBridgeContext = self->_executionBridgeContext;
  self->_executionBridgeContext = 0;

  serverFallbackContext = self->_serverFallbackContext;
  self->_serverFallbackContext = 0;

  flowOutputSubmitted = self->_flowOutputSubmitted;
  self->_flowOutputSubmitted = 0;

  resultCandidate = self->_resultCandidate;
  self->_resultCandidate = 0;

  resultSelected = self->_resultSelected;
  self->_resultSelected = 0;

  contextSubmissionMessage = self->_contextSubmissionMessage;
  self->_contextSubmissionMessage = 0;

  availableAssets = self->_availableAssets;
  self->_availableAssets = 0;

  orchDeviceDynamicContext = self->_orchDeviceDynamicContext;
  self->_orchDeviceDynamicContext = 0;

  pommesBridgeContext = self->_pommesBridgeContext;
  self->_pommesBridgeContext = 0;

  muxBridgeContext = self->_muxBridgeContext;
  self->_muxBridgeContext = 0;

  multiUserResultCandidate = self->_multiUserResultCandidate;
  self->_multiUserResultCandidate = 0;

  multiUserResultSelected = self->_multiUserResultSelected;
  self->_multiUserResultSelected = 0;

  aceCommandContext = self->_aceCommandContext;
  self->_aceCommandContext = 0;

  trpFinalized = self->_trpFinalized;
  self->_trpFinalized = 0;

  requestMitigated = self->_requestMitigated;
  self->_requestMitigated = 0;

  nlv3ServerFallbackDeprecated = self->_nlv3ServerFallbackDeprecated;
  self->_nlv3ServerFallbackDeprecated = 0;

  uiActivationContext = self->_uiActivationContext;
  self->_uiActivationContext = 0;

  trpCandidateReceived = self->_trpCandidateReceived;
  self->_trpCandidateReceived = 0;

  identityBridgeRequestContext = self->_identityBridgeRequestContext;
  self->_identityBridgeRequestContext = 0;

  assetSetsReported = self->_assetSetsReported;
  self->_assetSetsReported = 0;

  powerContextPolicyReported = self->_powerContextPolicyReported;
  self->_powerContextPolicyReported = 0;

  executeOnRemoteRequestContext = self->_executeOnRemoteRequestContext;
  self->_executeOnRemoteRequestContext = 0;

  assistantdLaunchMetadataReported = self->_assistantdLaunchMetadataReported;
  self->_assistantdLaunchMetadataReported = 0;

  intelligenceFlowQuerySent = self->_intelligenceFlowQuerySent;
  self->_intelligenceFlowQuerySent = 0;

  subRequestContext = self->_subRequestContext;
  self->_subRequestContext = 0;

  routerRewrittenUtterance = self->_routerRewrittenUtterance;
  self->_routerRewrittenUtterance = 0;

  nlRouterBridgeContext = self->_nlRouterBridgeContext;
  self->_nlRouterBridgeContext = 0;

  shimToolContext = self->_shimToolContext;
  self->_shimToolContext = 0;

  subRequestFallback = self->_subRequestFallback;
  self->_subRequestFallback = 0;

  nlRouterBridgeSubComponentContext = self->_nlRouterBridgeSubComponentContext;
  self->_nlRouterBridgeSubComponentContext = 0;

  unsupportedLanguageDetected = self->_unsupportedLanguageDetected;
  self->_unsupportedLanguageDetected = 0;

  trpCandidateCreated = self->_trpCandidateCreated;
  self->_trpCandidateCreated = 0;

  audioTopologyReported = self->_audioTopologyReported;
  self->_audioTopologyReported = 0;

  intelligenceFlowRequestContext = self->_intelligenceFlowRequestContext;
  self->_intelligenceFlowRequestContext = 0;

  userSessionState = self->_userSessionState;
  self->_userSessionState = 0;

  serverExecutionValuesReported = self->_serverExecutionValuesReported;
  self->_serverExecutionValuesReported = 0;

  v44 = 124;
  if (!contextCopy)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  candidateRequestContext = self->_candidateRequestContext;
  self->_candidateRequestContext = contextCopy;
}

- (void)deleteAssetSetsReported
{
  if (self->_whichEvent_Type == 123)
  {
    self->_whichEvent_Type = 0;
    self->_assetSetsReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setAssetSetsReported:(id)reported
{
  reportedCopy = reported;
  requestContext = self->_requestContext;
  self->_requestContext = 0;

  asrBridgeContext = self->_asrBridgeContext;
  self->_asrBridgeContext = 0;

  cdmBridgeContext = self->_cdmBridgeContext;
  self->_cdmBridgeContext = 0;

  executionBridgeContext = self->_executionBridgeContext;
  self->_executionBridgeContext = 0;

  serverFallbackContext = self->_serverFallbackContext;
  self->_serverFallbackContext = 0;

  flowOutputSubmitted = self->_flowOutputSubmitted;
  self->_flowOutputSubmitted = 0;

  resultCandidate = self->_resultCandidate;
  self->_resultCandidate = 0;

  resultSelected = self->_resultSelected;
  self->_resultSelected = 0;

  contextSubmissionMessage = self->_contextSubmissionMessage;
  self->_contextSubmissionMessage = 0;

  availableAssets = self->_availableAssets;
  self->_availableAssets = 0;

  orchDeviceDynamicContext = self->_orchDeviceDynamicContext;
  self->_orchDeviceDynamicContext = 0;

  pommesBridgeContext = self->_pommesBridgeContext;
  self->_pommesBridgeContext = 0;

  muxBridgeContext = self->_muxBridgeContext;
  self->_muxBridgeContext = 0;

  multiUserResultCandidate = self->_multiUserResultCandidate;
  self->_multiUserResultCandidate = 0;

  multiUserResultSelected = self->_multiUserResultSelected;
  self->_multiUserResultSelected = 0;

  aceCommandContext = self->_aceCommandContext;
  self->_aceCommandContext = 0;

  trpFinalized = self->_trpFinalized;
  self->_trpFinalized = 0;

  requestMitigated = self->_requestMitigated;
  self->_requestMitigated = 0;

  nlv3ServerFallbackDeprecated = self->_nlv3ServerFallbackDeprecated;
  self->_nlv3ServerFallbackDeprecated = 0;

  uiActivationContext = self->_uiActivationContext;
  self->_uiActivationContext = 0;

  trpCandidateReceived = self->_trpCandidateReceived;
  self->_trpCandidateReceived = 0;

  identityBridgeRequestContext = self->_identityBridgeRequestContext;
  self->_identityBridgeRequestContext = 0;

  candidateRequestContext = self->_candidateRequestContext;
  self->_candidateRequestContext = 0;

  powerContextPolicyReported = self->_powerContextPolicyReported;
  self->_powerContextPolicyReported = 0;

  executeOnRemoteRequestContext = self->_executeOnRemoteRequestContext;
  self->_executeOnRemoteRequestContext = 0;

  assistantdLaunchMetadataReported = self->_assistantdLaunchMetadataReported;
  self->_assistantdLaunchMetadataReported = 0;

  intelligenceFlowQuerySent = self->_intelligenceFlowQuerySent;
  self->_intelligenceFlowQuerySent = 0;

  subRequestContext = self->_subRequestContext;
  self->_subRequestContext = 0;

  routerRewrittenUtterance = self->_routerRewrittenUtterance;
  self->_routerRewrittenUtterance = 0;

  nlRouterBridgeContext = self->_nlRouterBridgeContext;
  self->_nlRouterBridgeContext = 0;

  shimToolContext = self->_shimToolContext;
  self->_shimToolContext = 0;

  subRequestFallback = self->_subRequestFallback;
  self->_subRequestFallback = 0;

  nlRouterBridgeSubComponentContext = self->_nlRouterBridgeSubComponentContext;
  self->_nlRouterBridgeSubComponentContext = 0;

  unsupportedLanguageDetected = self->_unsupportedLanguageDetected;
  self->_unsupportedLanguageDetected = 0;

  trpCandidateCreated = self->_trpCandidateCreated;
  self->_trpCandidateCreated = 0;

  audioTopologyReported = self->_audioTopologyReported;
  self->_audioTopologyReported = 0;

  intelligenceFlowRequestContext = self->_intelligenceFlowRequestContext;
  self->_intelligenceFlowRequestContext = 0;

  userSessionState = self->_userSessionState;
  self->_userSessionState = 0;

  serverExecutionValuesReported = self->_serverExecutionValuesReported;
  self->_serverExecutionValuesReported = 0;

  v44 = 123;
  if (!reportedCopy)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  assetSetsReported = self->_assetSetsReported;
  self->_assetSetsReported = reportedCopy;
}

- (void)deleteIdentityBridgeRequestContext
{
  if (self->_whichEvent_Type == 122)
  {
    self->_whichEvent_Type = 0;
    self->_identityBridgeRequestContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setIdentityBridgeRequestContext:(id)context
{
  contextCopy = context;
  requestContext = self->_requestContext;
  self->_requestContext = 0;

  asrBridgeContext = self->_asrBridgeContext;
  self->_asrBridgeContext = 0;

  cdmBridgeContext = self->_cdmBridgeContext;
  self->_cdmBridgeContext = 0;

  executionBridgeContext = self->_executionBridgeContext;
  self->_executionBridgeContext = 0;

  serverFallbackContext = self->_serverFallbackContext;
  self->_serverFallbackContext = 0;

  flowOutputSubmitted = self->_flowOutputSubmitted;
  self->_flowOutputSubmitted = 0;

  resultCandidate = self->_resultCandidate;
  self->_resultCandidate = 0;

  resultSelected = self->_resultSelected;
  self->_resultSelected = 0;

  contextSubmissionMessage = self->_contextSubmissionMessage;
  self->_contextSubmissionMessage = 0;

  availableAssets = self->_availableAssets;
  self->_availableAssets = 0;

  orchDeviceDynamicContext = self->_orchDeviceDynamicContext;
  self->_orchDeviceDynamicContext = 0;

  pommesBridgeContext = self->_pommesBridgeContext;
  self->_pommesBridgeContext = 0;

  muxBridgeContext = self->_muxBridgeContext;
  self->_muxBridgeContext = 0;

  multiUserResultCandidate = self->_multiUserResultCandidate;
  self->_multiUserResultCandidate = 0;

  multiUserResultSelected = self->_multiUserResultSelected;
  self->_multiUserResultSelected = 0;

  aceCommandContext = self->_aceCommandContext;
  self->_aceCommandContext = 0;

  trpFinalized = self->_trpFinalized;
  self->_trpFinalized = 0;

  requestMitigated = self->_requestMitigated;
  self->_requestMitigated = 0;

  nlv3ServerFallbackDeprecated = self->_nlv3ServerFallbackDeprecated;
  self->_nlv3ServerFallbackDeprecated = 0;

  uiActivationContext = self->_uiActivationContext;
  self->_uiActivationContext = 0;

  trpCandidateReceived = self->_trpCandidateReceived;
  self->_trpCandidateReceived = 0;

  assetSetsReported = self->_assetSetsReported;
  self->_assetSetsReported = 0;

  candidateRequestContext = self->_candidateRequestContext;
  self->_candidateRequestContext = 0;

  powerContextPolicyReported = self->_powerContextPolicyReported;
  self->_powerContextPolicyReported = 0;

  executeOnRemoteRequestContext = self->_executeOnRemoteRequestContext;
  self->_executeOnRemoteRequestContext = 0;

  assistantdLaunchMetadataReported = self->_assistantdLaunchMetadataReported;
  self->_assistantdLaunchMetadataReported = 0;

  intelligenceFlowQuerySent = self->_intelligenceFlowQuerySent;
  self->_intelligenceFlowQuerySent = 0;

  subRequestContext = self->_subRequestContext;
  self->_subRequestContext = 0;

  routerRewrittenUtterance = self->_routerRewrittenUtterance;
  self->_routerRewrittenUtterance = 0;

  nlRouterBridgeContext = self->_nlRouterBridgeContext;
  self->_nlRouterBridgeContext = 0;

  shimToolContext = self->_shimToolContext;
  self->_shimToolContext = 0;

  subRequestFallback = self->_subRequestFallback;
  self->_subRequestFallback = 0;

  nlRouterBridgeSubComponentContext = self->_nlRouterBridgeSubComponentContext;
  self->_nlRouterBridgeSubComponentContext = 0;

  unsupportedLanguageDetected = self->_unsupportedLanguageDetected;
  self->_unsupportedLanguageDetected = 0;

  trpCandidateCreated = self->_trpCandidateCreated;
  self->_trpCandidateCreated = 0;

  audioTopologyReported = self->_audioTopologyReported;
  self->_audioTopologyReported = 0;

  intelligenceFlowRequestContext = self->_intelligenceFlowRequestContext;
  self->_intelligenceFlowRequestContext = 0;

  userSessionState = self->_userSessionState;
  self->_userSessionState = 0;

  serverExecutionValuesReported = self->_serverExecutionValuesReported;
  self->_serverExecutionValuesReported = 0;

  v44 = 122;
  if (!contextCopy)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  identityBridgeRequestContext = self->_identityBridgeRequestContext;
  self->_identityBridgeRequestContext = contextCopy;
}

- (void)deleteTrpCandidateReceived
{
  if (self->_whichEvent_Type == 121)
  {
    self->_whichEvent_Type = 0;
    self->_trpCandidateReceived = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setTrpCandidateReceived:(id)received
{
  receivedCopy = received;
  requestContext = self->_requestContext;
  self->_requestContext = 0;

  asrBridgeContext = self->_asrBridgeContext;
  self->_asrBridgeContext = 0;

  cdmBridgeContext = self->_cdmBridgeContext;
  self->_cdmBridgeContext = 0;

  executionBridgeContext = self->_executionBridgeContext;
  self->_executionBridgeContext = 0;

  serverFallbackContext = self->_serverFallbackContext;
  self->_serverFallbackContext = 0;

  flowOutputSubmitted = self->_flowOutputSubmitted;
  self->_flowOutputSubmitted = 0;

  resultCandidate = self->_resultCandidate;
  self->_resultCandidate = 0;

  resultSelected = self->_resultSelected;
  self->_resultSelected = 0;

  contextSubmissionMessage = self->_contextSubmissionMessage;
  self->_contextSubmissionMessage = 0;

  availableAssets = self->_availableAssets;
  self->_availableAssets = 0;

  orchDeviceDynamicContext = self->_orchDeviceDynamicContext;
  self->_orchDeviceDynamicContext = 0;

  pommesBridgeContext = self->_pommesBridgeContext;
  self->_pommesBridgeContext = 0;

  muxBridgeContext = self->_muxBridgeContext;
  self->_muxBridgeContext = 0;

  multiUserResultCandidate = self->_multiUserResultCandidate;
  self->_multiUserResultCandidate = 0;

  multiUserResultSelected = self->_multiUserResultSelected;
  self->_multiUserResultSelected = 0;

  aceCommandContext = self->_aceCommandContext;
  self->_aceCommandContext = 0;

  trpFinalized = self->_trpFinalized;
  self->_trpFinalized = 0;

  requestMitigated = self->_requestMitigated;
  self->_requestMitigated = 0;

  nlv3ServerFallbackDeprecated = self->_nlv3ServerFallbackDeprecated;
  self->_nlv3ServerFallbackDeprecated = 0;

  uiActivationContext = self->_uiActivationContext;
  self->_uiActivationContext = 0;

  identityBridgeRequestContext = self->_identityBridgeRequestContext;
  self->_identityBridgeRequestContext = 0;

  assetSetsReported = self->_assetSetsReported;
  self->_assetSetsReported = 0;

  candidateRequestContext = self->_candidateRequestContext;
  self->_candidateRequestContext = 0;

  powerContextPolicyReported = self->_powerContextPolicyReported;
  self->_powerContextPolicyReported = 0;

  executeOnRemoteRequestContext = self->_executeOnRemoteRequestContext;
  self->_executeOnRemoteRequestContext = 0;

  assistantdLaunchMetadataReported = self->_assistantdLaunchMetadataReported;
  self->_assistantdLaunchMetadataReported = 0;

  intelligenceFlowQuerySent = self->_intelligenceFlowQuerySent;
  self->_intelligenceFlowQuerySent = 0;

  subRequestContext = self->_subRequestContext;
  self->_subRequestContext = 0;

  routerRewrittenUtterance = self->_routerRewrittenUtterance;
  self->_routerRewrittenUtterance = 0;

  nlRouterBridgeContext = self->_nlRouterBridgeContext;
  self->_nlRouterBridgeContext = 0;

  shimToolContext = self->_shimToolContext;
  self->_shimToolContext = 0;

  subRequestFallback = self->_subRequestFallback;
  self->_subRequestFallback = 0;

  nlRouterBridgeSubComponentContext = self->_nlRouterBridgeSubComponentContext;
  self->_nlRouterBridgeSubComponentContext = 0;

  unsupportedLanguageDetected = self->_unsupportedLanguageDetected;
  self->_unsupportedLanguageDetected = 0;

  trpCandidateCreated = self->_trpCandidateCreated;
  self->_trpCandidateCreated = 0;

  audioTopologyReported = self->_audioTopologyReported;
  self->_audioTopologyReported = 0;

  intelligenceFlowRequestContext = self->_intelligenceFlowRequestContext;
  self->_intelligenceFlowRequestContext = 0;

  userSessionState = self->_userSessionState;
  self->_userSessionState = 0;

  serverExecutionValuesReported = self->_serverExecutionValuesReported;
  self->_serverExecutionValuesReported = 0;

  v44 = 121;
  if (!receivedCopy)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  trpCandidateReceived = self->_trpCandidateReceived;
  self->_trpCandidateReceived = receivedCopy;
}

- (void)deleteUiActivationContext
{
  if (self->_whichEvent_Type == 120)
  {
    self->_whichEvent_Type = 0;
    self->_uiActivationContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setUiActivationContext:(id)context
{
  contextCopy = context;
  requestContext = self->_requestContext;
  self->_requestContext = 0;

  asrBridgeContext = self->_asrBridgeContext;
  self->_asrBridgeContext = 0;

  cdmBridgeContext = self->_cdmBridgeContext;
  self->_cdmBridgeContext = 0;

  executionBridgeContext = self->_executionBridgeContext;
  self->_executionBridgeContext = 0;

  serverFallbackContext = self->_serverFallbackContext;
  self->_serverFallbackContext = 0;

  flowOutputSubmitted = self->_flowOutputSubmitted;
  self->_flowOutputSubmitted = 0;

  resultCandidate = self->_resultCandidate;
  self->_resultCandidate = 0;

  resultSelected = self->_resultSelected;
  self->_resultSelected = 0;

  contextSubmissionMessage = self->_contextSubmissionMessage;
  self->_contextSubmissionMessage = 0;

  availableAssets = self->_availableAssets;
  self->_availableAssets = 0;

  orchDeviceDynamicContext = self->_orchDeviceDynamicContext;
  self->_orchDeviceDynamicContext = 0;

  pommesBridgeContext = self->_pommesBridgeContext;
  self->_pommesBridgeContext = 0;

  muxBridgeContext = self->_muxBridgeContext;
  self->_muxBridgeContext = 0;

  multiUserResultCandidate = self->_multiUserResultCandidate;
  self->_multiUserResultCandidate = 0;

  multiUserResultSelected = self->_multiUserResultSelected;
  self->_multiUserResultSelected = 0;

  aceCommandContext = self->_aceCommandContext;
  self->_aceCommandContext = 0;

  trpFinalized = self->_trpFinalized;
  self->_trpFinalized = 0;

  requestMitigated = self->_requestMitigated;
  self->_requestMitigated = 0;

  nlv3ServerFallbackDeprecated = self->_nlv3ServerFallbackDeprecated;
  self->_nlv3ServerFallbackDeprecated = 0;

  trpCandidateReceived = self->_trpCandidateReceived;
  self->_trpCandidateReceived = 0;

  identityBridgeRequestContext = self->_identityBridgeRequestContext;
  self->_identityBridgeRequestContext = 0;

  assetSetsReported = self->_assetSetsReported;
  self->_assetSetsReported = 0;

  candidateRequestContext = self->_candidateRequestContext;
  self->_candidateRequestContext = 0;

  powerContextPolicyReported = self->_powerContextPolicyReported;
  self->_powerContextPolicyReported = 0;

  executeOnRemoteRequestContext = self->_executeOnRemoteRequestContext;
  self->_executeOnRemoteRequestContext = 0;

  assistantdLaunchMetadataReported = self->_assistantdLaunchMetadataReported;
  self->_assistantdLaunchMetadataReported = 0;

  intelligenceFlowQuerySent = self->_intelligenceFlowQuerySent;
  self->_intelligenceFlowQuerySent = 0;

  subRequestContext = self->_subRequestContext;
  self->_subRequestContext = 0;

  routerRewrittenUtterance = self->_routerRewrittenUtterance;
  self->_routerRewrittenUtterance = 0;

  nlRouterBridgeContext = self->_nlRouterBridgeContext;
  self->_nlRouterBridgeContext = 0;

  shimToolContext = self->_shimToolContext;
  self->_shimToolContext = 0;

  subRequestFallback = self->_subRequestFallback;
  self->_subRequestFallback = 0;

  nlRouterBridgeSubComponentContext = self->_nlRouterBridgeSubComponentContext;
  self->_nlRouterBridgeSubComponentContext = 0;

  unsupportedLanguageDetected = self->_unsupportedLanguageDetected;
  self->_unsupportedLanguageDetected = 0;

  trpCandidateCreated = self->_trpCandidateCreated;
  self->_trpCandidateCreated = 0;

  audioTopologyReported = self->_audioTopologyReported;
  self->_audioTopologyReported = 0;

  intelligenceFlowRequestContext = self->_intelligenceFlowRequestContext;
  self->_intelligenceFlowRequestContext = 0;

  userSessionState = self->_userSessionState;
  self->_userSessionState = 0;

  serverExecutionValuesReported = self->_serverExecutionValuesReported;
  self->_serverExecutionValuesReported = 0;

  v44 = 120;
  if (!contextCopy)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  uiActivationContext = self->_uiActivationContext;
  self->_uiActivationContext = contextCopy;
}

- (void)deleteNlv3ServerFallbackDeprecated
{
  if (self->_whichEvent_Type == 119)
  {
    self->_whichEvent_Type = 0;
    self->_nlv3ServerFallbackDeprecated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setNlv3ServerFallbackDeprecated:(id)deprecated
{
  deprecatedCopy = deprecated;
  requestContext = self->_requestContext;
  self->_requestContext = 0;

  asrBridgeContext = self->_asrBridgeContext;
  self->_asrBridgeContext = 0;

  cdmBridgeContext = self->_cdmBridgeContext;
  self->_cdmBridgeContext = 0;

  executionBridgeContext = self->_executionBridgeContext;
  self->_executionBridgeContext = 0;

  serverFallbackContext = self->_serverFallbackContext;
  self->_serverFallbackContext = 0;

  flowOutputSubmitted = self->_flowOutputSubmitted;
  self->_flowOutputSubmitted = 0;

  resultCandidate = self->_resultCandidate;
  self->_resultCandidate = 0;

  resultSelected = self->_resultSelected;
  self->_resultSelected = 0;

  contextSubmissionMessage = self->_contextSubmissionMessage;
  self->_contextSubmissionMessage = 0;

  availableAssets = self->_availableAssets;
  self->_availableAssets = 0;

  orchDeviceDynamicContext = self->_orchDeviceDynamicContext;
  self->_orchDeviceDynamicContext = 0;

  pommesBridgeContext = self->_pommesBridgeContext;
  self->_pommesBridgeContext = 0;

  muxBridgeContext = self->_muxBridgeContext;
  self->_muxBridgeContext = 0;

  multiUserResultCandidate = self->_multiUserResultCandidate;
  self->_multiUserResultCandidate = 0;

  multiUserResultSelected = self->_multiUserResultSelected;
  self->_multiUserResultSelected = 0;

  aceCommandContext = self->_aceCommandContext;
  self->_aceCommandContext = 0;

  trpFinalized = self->_trpFinalized;
  self->_trpFinalized = 0;

  requestMitigated = self->_requestMitigated;
  self->_requestMitigated = 0;

  uiActivationContext = self->_uiActivationContext;
  self->_uiActivationContext = 0;

  trpCandidateReceived = self->_trpCandidateReceived;
  self->_trpCandidateReceived = 0;

  identityBridgeRequestContext = self->_identityBridgeRequestContext;
  self->_identityBridgeRequestContext = 0;

  assetSetsReported = self->_assetSetsReported;
  self->_assetSetsReported = 0;

  candidateRequestContext = self->_candidateRequestContext;
  self->_candidateRequestContext = 0;

  powerContextPolicyReported = self->_powerContextPolicyReported;
  self->_powerContextPolicyReported = 0;

  executeOnRemoteRequestContext = self->_executeOnRemoteRequestContext;
  self->_executeOnRemoteRequestContext = 0;

  assistantdLaunchMetadataReported = self->_assistantdLaunchMetadataReported;
  self->_assistantdLaunchMetadataReported = 0;

  intelligenceFlowQuerySent = self->_intelligenceFlowQuerySent;
  self->_intelligenceFlowQuerySent = 0;

  subRequestContext = self->_subRequestContext;
  self->_subRequestContext = 0;

  routerRewrittenUtterance = self->_routerRewrittenUtterance;
  self->_routerRewrittenUtterance = 0;

  nlRouterBridgeContext = self->_nlRouterBridgeContext;
  self->_nlRouterBridgeContext = 0;

  shimToolContext = self->_shimToolContext;
  self->_shimToolContext = 0;

  subRequestFallback = self->_subRequestFallback;
  self->_subRequestFallback = 0;

  nlRouterBridgeSubComponentContext = self->_nlRouterBridgeSubComponentContext;
  self->_nlRouterBridgeSubComponentContext = 0;

  unsupportedLanguageDetected = self->_unsupportedLanguageDetected;
  self->_unsupportedLanguageDetected = 0;

  trpCandidateCreated = self->_trpCandidateCreated;
  self->_trpCandidateCreated = 0;

  audioTopologyReported = self->_audioTopologyReported;
  self->_audioTopologyReported = 0;

  intelligenceFlowRequestContext = self->_intelligenceFlowRequestContext;
  self->_intelligenceFlowRequestContext = 0;

  userSessionState = self->_userSessionState;
  self->_userSessionState = 0;

  serverExecutionValuesReported = self->_serverExecutionValuesReported;
  self->_serverExecutionValuesReported = 0;

  v44 = 119;
  if (!deprecatedCopy)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  nlv3ServerFallbackDeprecated = self->_nlv3ServerFallbackDeprecated;
  self->_nlv3ServerFallbackDeprecated = deprecatedCopy;
}

- (void)deleteRequestMitigated
{
  if (self->_whichEvent_Type == 118)
  {
    self->_whichEvent_Type = 0;
    self->_requestMitigated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setRequestMitigated:(id)mitigated
{
  mitigatedCopy = mitigated;
  requestContext = self->_requestContext;
  self->_requestContext = 0;

  asrBridgeContext = self->_asrBridgeContext;
  self->_asrBridgeContext = 0;

  cdmBridgeContext = self->_cdmBridgeContext;
  self->_cdmBridgeContext = 0;

  executionBridgeContext = self->_executionBridgeContext;
  self->_executionBridgeContext = 0;

  serverFallbackContext = self->_serverFallbackContext;
  self->_serverFallbackContext = 0;

  flowOutputSubmitted = self->_flowOutputSubmitted;
  self->_flowOutputSubmitted = 0;

  resultCandidate = self->_resultCandidate;
  self->_resultCandidate = 0;

  resultSelected = self->_resultSelected;
  self->_resultSelected = 0;

  contextSubmissionMessage = self->_contextSubmissionMessage;
  self->_contextSubmissionMessage = 0;

  availableAssets = self->_availableAssets;
  self->_availableAssets = 0;

  orchDeviceDynamicContext = self->_orchDeviceDynamicContext;
  self->_orchDeviceDynamicContext = 0;

  pommesBridgeContext = self->_pommesBridgeContext;
  self->_pommesBridgeContext = 0;

  muxBridgeContext = self->_muxBridgeContext;
  self->_muxBridgeContext = 0;

  multiUserResultCandidate = self->_multiUserResultCandidate;
  self->_multiUserResultCandidate = 0;

  multiUserResultSelected = self->_multiUserResultSelected;
  self->_multiUserResultSelected = 0;

  aceCommandContext = self->_aceCommandContext;
  self->_aceCommandContext = 0;

  trpFinalized = self->_trpFinalized;
  self->_trpFinalized = 0;

  nlv3ServerFallbackDeprecated = self->_nlv3ServerFallbackDeprecated;
  self->_nlv3ServerFallbackDeprecated = 0;

  uiActivationContext = self->_uiActivationContext;
  self->_uiActivationContext = 0;

  trpCandidateReceived = self->_trpCandidateReceived;
  self->_trpCandidateReceived = 0;

  identityBridgeRequestContext = self->_identityBridgeRequestContext;
  self->_identityBridgeRequestContext = 0;

  assetSetsReported = self->_assetSetsReported;
  self->_assetSetsReported = 0;

  candidateRequestContext = self->_candidateRequestContext;
  self->_candidateRequestContext = 0;

  powerContextPolicyReported = self->_powerContextPolicyReported;
  self->_powerContextPolicyReported = 0;

  executeOnRemoteRequestContext = self->_executeOnRemoteRequestContext;
  self->_executeOnRemoteRequestContext = 0;

  assistantdLaunchMetadataReported = self->_assistantdLaunchMetadataReported;
  self->_assistantdLaunchMetadataReported = 0;

  intelligenceFlowQuerySent = self->_intelligenceFlowQuerySent;
  self->_intelligenceFlowQuerySent = 0;

  subRequestContext = self->_subRequestContext;
  self->_subRequestContext = 0;

  routerRewrittenUtterance = self->_routerRewrittenUtterance;
  self->_routerRewrittenUtterance = 0;

  nlRouterBridgeContext = self->_nlRouterBridgeContext;
  self->_nlRouterBridgeContext = 0;

  shimToolContext = self->_shimToolContext;
  self->_shimToolContext = 0;

  subRequestFallback = self->_subRequestFallback;
  self->_subRequestFallback = 0;

  nlRouterBridgeSubComponentContext = self->_nlRouterBridgeSubComponentContext;
  self->_nlRouterBridgeSubComponentContext = 0;

  unsupportedLanguageDetected = self->_unsupportedLanguageDetected;
  self->_unsupportedLanguageDetected = 0;

  trpCandidateCreated = self->_trpCandidateCreated;
  self->_trpCandidateCreated = 0;

  audioTopologyReported = self->_audioTopologyReported;
  self->_audioTopologyReported = 0;

  intelligenceFlowRequestContext = self->_intelligenceFlowRequestContext;
  self->_intelligenceFlowRequestContext = 0;

  userSessionState = self->_userSessionState;
  self->_userSessionState = 0;

  serverExecutionValuesReported = self->_serverExecutionValuesReported;
  self->_serverExecutionValuesReported = 0;

  v44 = 118;
  if (!mitigatedCopy)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  requestMitigated = self->_requestMitigated;
  self->_requestMitigated = mitigatedCopy;
}

- (void)deleteTrpFinalized
{
  if (self->_whichEvent_Type == 117)
  {
    self->_whichEvent_Type = 0;
    self->_trpFinalized = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setTrpFinalized:(id)finalized
{
  finalizedCopy = finalized;
  requestContext = self->_requestContext;
  self->_requestContext = 0;

  asrBridgeContext = self->_asrBridgeContext;
  self->_asrBridgeContext = 0;

  cdmBridgeContext = self->_cdmBridgeContext;
  self->_cdmBridgeContext = 0;

  executionBridgeContext = self->_executionBridgeContext;
  self->_executionBridgeContext = 0;

  serverFallbackContext = self->_serverFallbackContext;
  self->_serverFallbackContext = 0;

  flowOutputSubmitted = self->_flowOutputSubmitted;
  self->_flowOutputSubmitted = 0;

  resultCandidate = self->_resultCandidate;
  self->_resultCandidate = 0;

  resultSelected = self->_resultSelected;
  self->_resultSelected = 0;

  contextSubmissionMessage = self->_contextSubmissionMessage;
  self->_contextSubmissionMessage = 0;

  availableAssets = self->_availableAssets;
  self->_availableAssets = 0;

  orchDeviceDynamicContext = self->_orchDeviceDynamicContext;
  self->_orchDeviceDynamicContext = 0;

  pommesBridgeContext = self->_pommesBridgeContext;
  self->_pommesBridgeContext = 0;

  muxBridgeContext = self->_muxBridgeContext;
  self->_muxBridgeContext = 0;

  multiUserResultCandidate = self->_multiUserResultCandidate;
  self->_multiUserResultCandidate = 0;

  multiUserResultSelected = self->_multiUserResultSelected;
  self->_multiUserResultSelected = 0;

  aceCommandContext = self->_aceCommandContext;
  self->_aceCommandContext = 0;

  requestMitigated = self->_requestMitigated;
  self->_requestMitigated = 0;

  nlv3ServerFallbackDeprecated = self->_nlv3ServerFallbackDeprecated;
  self->_nlv3ServerFallbackDeprecated = 0;

  uiActivationContext = self->_uiActivationContext;
  self->_uiActivationContext = 0;

  trpCandidateReceived = self->_trpCandidateReceived;
  self->_trpCandidateReceived = 0;

  identityBridgeRequestContext = self->_identityBridgeRequestContext;
  self->_identityBridgeRequestContext = 0;

  assetSetsReported = self->_assetSetsReported;
  self->_assetSetsReported = 0;

  candidateRequestContext = self->_candidateRequestContext;
  self->_candidateRequestContext = 0;

  powerContextPolicyReported = self->_powerContextPolicyReported;
  self->_powerContextPolicyReported = 0;

  executeOnRemoteRequestContext = self->_executeOnRemoteRequestContext;
  self->_executeOnRemoteRequestContext = 0;

  assistantdLaunchMetadataReported = self->_assistantdLaunchMetadataReported;
  self->_assistantdLaunchMetadataReported = 0;

  intelligenceFlowQuerySent = self->_intelligenceFlowQuerySent;
  self->_intelligenceFlowQuerySent = 0;

  subRequestContext = self->_subRequestContext;
  self->_subRequestContext = 0;

  routerRewrittenUtterance = self->_routerRewrittenUtterance;
  self->_routerRewrittenUtterance = 0;

  nlRouterBridgeContext = self->_nlRouterBridgeContext;
  self->_nlRouterBridgeContext = 0;

  shimToolContext = self->_shimToolContext;
  self->_shimToolContext = 0;

  subRequestFallback = self->_subRequestFallback;
  self->_subRequestFallback = 0;

  nlRouterBridgeSubComponentContext = self->_nlRouterBridgeSubComponentContext;
  self->_nlRouterBridgeSubComponentContext = 0;

  unsupportedLanguageDetected = self->_unsupportedLanguageDetected;
  self->_unsupportedLanguageDetected = 0;

  trpCandidateCreated = self->_trpCandidateCreated;
  self->_trpCandidateCreated = 0;

  audioTopologyReported = self->_audioTopologyReported;
  self->_audioTopologyReported = 0;

  intelligenceFlowRequestContext = self->_intelligenceFlowRequestContext;
  self->_intelligenceFlowRequestContext = 0;

  userSessionState = self->_userSessionState;
  self->_userSessionState = 0;

  serverExecutionValuesReported = self->_serverExecutionValuesReported;
  self->_serverExecutionValuesReported = 0;

  v44 = 117;
  if (!finalizedCopy)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  trpFinalized = self->_trpFinalized;
  self->_trpFinalized = finalizedCopy;
}

- (void)deleteAceCommandContext
{
  if (self->_whichEvent_Type == 116)
  {
    self->_whichEvent_Type = 0;
    self->_aceCommandContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setAceCommandContext:(id)context
{
  contextCopy = context;
  requestContext = self->_requestContext;
  self->_requestContext = 0;

  asrBridgeContext = self->_asrBridgeContext;
  self->_asrBridgeContext = 0;

  cdmBridgeContext = self->_cdmBridgeContext;
  self->_cdmBridgeContext = 0;

  executionBridgeContext = self->_executionBridgeContext;
  self->_executionBridgeContext = 0;

  serverFallbackContext = self->_serverFallbackContext;
  self->_serverFallbackContext = 0;

  flowOutputSubmitted = self->_flowOutputSubmitted;
  self->_flowOutputSubmitted = 0;

  resultCandidate = self->_resultCandidate;
  self->_resultCandidate = 0;

  resultSelected = self->_resultSelected;
  self->_resultSelected = 0;

  contextSubmissionMessage = self->_contextSubmissionMessage;
  self->_contextSubmissionMessage = 0;

  availableAssets = self->_availableAssets;
  self->_availableAssets = 0;

  orchDeviceDynamicContext = self->_orchDeviceDynamicContext;
  self->_orchDeviceDynamicContext = 0;

  pommesBridgeContext = self->_pommesBridgeContext;
  self->_pommesBridgeContext = 0;

  muxBridgeContext = self->_muxBridgeContext;
  self->_muxBridgeContext = 0;

  multiUserResultCandidate = self->_multiUserResultCandidate;
  self->_multiUserResultCandidate = 0;

  multiUserResultSelected = self->_multiUserResultSelected;
  self->_multiUserResultSelected = 0;

  trpFinalized = self->_trpFinalized;
  self->_trpFinalized = 0;

  requestMitigated = self->_requestMitigated;
  self->_requestMitigated = 0;

  nlv3ServerFallbackDeprecated = self->_nlv3ServerFallbackDeprecated;
  self->_nlv3ServerFallbackDeprecated = 0;

  uiActivationContext = self->_uiActivationContext;
  self->_uiActivationContext = 0;

  trpCandidateReceived = self->_trpCandidateReceived;
  self->_trpCandidateReceived = 0;

  identityBridgeRequestContext = self->_identityBridgeRequestContext;
  self->_identityBridgeRequestContext = 0;

  assetSetsReported = self->_assetSetsReported;
  self->_assetSetsReported = 0;

  candidateRequestContext = self->_candidateRequestContext;
  self->_candidateRequestContext = 0;

  powerContextPolicyReported = self->_powerContextPolicyReported;
  self->_powerContextPolicyReported = 0;

  executeOnRemoteRequestContext = self->_executeOnRemoteRequestContext;
  self->_executeOnRemoteRequestContext = 0;

  assistantdLaunchMetadataReported = self->_assistantdLaunchMetadataReported;
  self->_assistantdLaunchMetadataReported = 0;

  intelligenceFlowQuerySent = self->_intelligenceFlowQuerySent;
  self->_intelligenceFlowQuerySent = 0;

  subRequestContext = self->_subRequestContext;
  self->_subRequestContext = 0;

  routerRewrittenUtterance = self->_routerRewrittenUtterance;
  self->_routerRewrittenUtterance = 0;

  nlRouterBridgeContext = self->_nlRouterBridgeContext;
  self->_nlRouterBridgeContext = 0;

  shimToolContext = self->_shimToolContext;
  self->_shimToolContext = 0;

  subRequestFallback = self->_subRequestFallback;
  self->_subRequestFallback = 0;

  nlRouterBridgeSubComponentContext = self->_nlRouterBridgeSubComponentContext;
  self->_nlRouterBridgeSubComponentContext = 0;

  unsupportedLanguageDetected = self->_unsupportedLanguageDetected;
  self->_unsupportedLanguageDetected = 0;

  trpCandidateCreated = self->_trpCandidateCreated;
  self->_trpCandidateCreated = 0;

  audioTopologyReported = self->_audioTopologyReported;
  self->_audioTopologyReported = 0;

  intelligenceFlowRequestContext = self->_intelligenceFlowRequestContext;
  self->_intelligenceFlowRequestContext = 0;

  userSessionState = self->_userSessionState;
  self->_userSessionState = 0;

  serverExecutionValuesReported = self->_serverExecutionValuesReported;
  self->_serverExecutionValuesReported = 0;

  v44 = 116;
  if (!contextCopy)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  aceCommandContext = self->_aceCommandContext;
  self->_aceCommandContext = contextCopy;
}

- (void)deleteMultiUserResultSelected
{
  if (self->_whichEvent_Type == 115)
  {
    self->_whichEvent_Type = 0;
    self->_multiUserResultSelected = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setMultiUserResultSelected:(id)selected
{
  selectedCopy = selected;
  requestContext = self->_requestContext;
  self->_requestContext = 0;

  asrBridgeContext = self->_asrBridgeContext;
  self->_asrBridgeContext = 0;

  cdmBridgeContext = self->_cdmBridgeContext;
  self->_cdmBridgeContext = 0;

  executionBridgeContext = self->_executionBridgeContext;
  self->_executionBridgeContext = 0;

  serverFallbackContext = self->_serverFallbackContext;
  self->_serverFallbackContext = 0;

  flowOutputSubmitted = self->_flowOutputSubmitted;
  self->_flowOutputSubmitted = 0;

  resultCandidate = self->_resultCandidate;
  self->_resultCandidate = 0;

  resultSelected = self->_resultSelected;
  self->_resultSelected = 0;

  contextSubmissionMessage = self->_contextSubmissionMessage;
  self->_contextSubmissionMessage = 0;

  availableAssets = self->_availableAssets;
  self->_availableAssets = 0;

  orchDeviceDynamicContext = self->_orchDeviceDynamicContext;
  self->_orchDeviceDynamicContext = 0;

  pommesBridgeContext = self->_pommesBridgeContext;
  self->_pommesBridgeContext = 0;

  muxBridgeContext = self->_muxBridgeContext;
  self->_muxBridgeContext = 0;

  multiUserResultCandidate = self->_multiUserResultCandidate;
  self->_multiUserResultCandidate = 0;

  aceCommandContext = self->_aceCommandContext;
  self->_aceCommandContext = 0;

  trpFinalized = self->_trpFinalized;
  self->_trpFinalized = 0;

  requestMitigated = self->_requestMitigated;
  self->_requestMitigated = 0;

  nlv3ServerFallbackDeprecated = self->_nlv3ServerFallbackDeprecated;
  self->_nlv3ServerFallbackDeprecated = 0;

  uiActivationContext = self->_uiActivationContext;
  self->_uiActivationContext = 0;

  trpCandidateReceived = self->_trpCandidateReceived;
  self->_trpCandidateReceived = 0;

  identityBridgeRequestContext = self->_identityBridgeRequestContext;
  self->_identityBridgeRequestContext = 0;

  assetSetsReported = self->_assetSetsReported;
  self->_assetSetsReported = 0;

  candidateRequestContext = self->_candidateRequestContext;
  self->_candidateRequestContext = 0;

  powerContextPolicyReported = self->_powerContextPolicyReported;
  self->_powerContextPolicyReported = 0;

  executeOnRemoteRequestContext = self->_executeOnRemoteRequestContext;
  self->_executeOnRemoteRequestContext = 0;

  assistantdLaunchMetadataReported = self->_assistantdLaunchMetadataReported;
  self->_assistantdLaunchMetadataReported = 0;

  intelligenceFlowQuerySent = self->_intelligenceFlowQuerySent;
  self->_intelligenceFlowQuerySent = 0;

  subRequestContext = self->_subRequestContext;
  self->_subRequestContext = 0;

  routerRewrittenUtterance = self->_routerRewrittenUtterance;
  self->_routerRewrittenUtterance = 0;

  nlRouterBridgeContext = self->_nlRouterBridgeContext;
  self->_nlRouterBridgeContext = 0;

  shimToolContext = self->_shimToolContext;
  self->_shimToolContext = 0;

  subRequestFallback = self->_subRequestFallback;
  self->_subRequestFallback = 0;

  nlRouterBridgeSubComponentContext = self->_nlRouterBridgeSubComponentContext;
  self->_nlRouterBridgeSubComponentContext = 0;

  unsupportedLanguageDetected = self->_unsupportedLanguageDetected;
  self->_unsupportedLanguageDetected = 0;

  trpCandidateCreated = self->_trpCandidateCreated;
  self->_trpCandidateCreated = 0;

  audioTopologyReported = self->_audioTopologyReported;
  self->_audioTopologyReported = 0;

  intelligenceFlowRequestContext = self->_intelligenceFlowRequestContext;
  self->_intelligenceFlowRequestContext = 0;

  userSessionState = self->_userSessionState;
  self->_userSessionState = 0;

  serverExecutionValuesReported = self->_serverExecutionValuesReported;
  self->_serverExecutionValuesReported = 0;

  v44 = 115;
  if (!selectedCopy)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  multiUserResultSelected = self->_multiUserResultSelected;
  self->_multiUserResultSelected = selectedCopy;
}

- (void)deleteMultiUserResultCandidate
{
  if (self->_whichEvent_Type == 114)
  {
    self->_whichEvent_Type = 0;
    self->_multiUserResultCandidate = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setMultiUserResultCandidate:(id)candidate
{
  candidateCopy = candidate;
  requestContext = self->_requestContext;
  self->_requestContext = 0;

  asrBridgeContext = self->_asrBridgeContext;
  self->_asrBridgeContext = 0;

  cdmBridgeContext = self->_cdmBridgeContext;
  self->_cdmBridgeContext = 0;

  executionBridgeContext = self->_executionBridgeContext;
  self->_executionBridgeContext = 0;

  serverFallbackContext = self->_serverFallbackContext;
  self->_serverFallbackContext = 0;

  flowOutputSubmitted = self->_flowOutputSubmitted;
  self->_flowOutputSubmitted = 0;

  resultCandidate = self->_resultCandidate;
  self->_resultCandidate = 0;

  resultSelected = self->_resultSelected;
  self->_resultSelected = 0;

  contextSubmissionMessage = self->_contextSubmissionMessage;
  self->_contextSubmissionMessage = 0;

  availableAssets = self->_availableAssets;
  self->_availableAssets = 0;

  orchDeviceDynamicContext = self->_orchDeviceDynamicContext;
  self->_orchDeviceDynamicContext = 0;

  pommesBridgeContext = self->_pommesBridgeContext;
  self->_pommesBridgeContext = 0;

  muxBridgeContext = self->_muxBridgeContext;
  self->_muxBridgeContext = 0;

  multiUserResultSelected = self->_multiUserResultSelected;
  self->_multiUserResultSelected = 0;

  aceCommandContext = self->_aceCommandContext;
  self->_aceCommandContext = 0;

  trpFinalized = self->_trpFinalized;
  self->_trpFinalized = 0;

  requestMitigated = self->_requestMitigated;
  self->_requestMitigated = 0;

  nlv3ServerFallbackDeprecated = self->_nlv3ServerFallbackDeprecated;
  self->_nlv3ServerFallbackDeprecated = 0;

  uiActivationContext = self->_uiActivationContext;
  self->_uiActivationContext = 0;

  trpCandidateReceived = self->_trpCandidateReceived;
  self->_trpCandidateReceived = 0;

  identityBridgeRequestContext = self->_identityBridgeRequestContext;
  self->_identityBridgeRequestContext = 0;

  assetSetsReported = self->_assetSetsReported;
  self->_assetSetsReported = 0;

  candidateRequestContext = self->_candidateRequestContext;
  self->_candidateRequestContext = 0;

  powerContextPolicyReported = self->_powerContextPolicyReported;
  self->_powerContextPolicyReported = 0;

  executeOnRemoteRequestContext = self->_executeOnRemoteRequestContext;
  self->_executeOnRemoteRequestContext = 0;

  assistantdLaunchMetadataReported = self->_assistantdLaunchMetadataReported;
  self->_assistantdLaunchMetadataReported = 0;

  intelligenceFlowQuerySent = self->_intelligenceFlowQuerySent;
  self->_intelligenceFlowQuerySent = 0;

  subRequestContext = self->_subRequestContext;
  self->_subRequestContext = 0;

  routerRewrittenUtterance = self->_routerRewrittenUtterance;
  self->_routerRewrittenUtterance = 0;

  nlRouterBridgeContext = self->_nlRouterBridgeContext;
  self->_nlRouterBridgeContext = 0;

  shimToolContext = self->_shimToolContext;
  self->_shimToolContext = 0;

  subRequestFallback = self->_subRequestFallback;
  self->_subRequestFallback = 0;

  nlRouterBridgeSubComponentContext = self->_nlRouterBridgeSubComponentContext;
  self->_nlRouterBridgeSubComponentContext = 0;

  unsupportedLanguageDetected = self->_unsupportedLanguageDetected;
  self->_unsupportedLanguageDetected = 0;

  trpCandidateCreated = self->_trpCandidateCreated;
  self->_trpCandidateCreated = 0;

  audioTopologyReported = self->_audioTopologyReported;
  self->_audioTopologyReported = 0;

  intelligenceFlowRequestContext = self->_intelligenceFlowRequestContext;
  self->_intelligenceFlowRequestContext = 0;

  userSessionState = self->_userSessionState;
  self->_userSessionState = 0;

  serverExecutionValuesReported = self->_serverExecutionValuesReported;
  self->_serverExecutionValuesReported = 0;

  v44 = 114;
  if (!candidateCopy)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  multiUserResultCandidate = self->_multiUserResultCandidate;
  self->_multiUserResultCandidate = candidateCopy;
}

- (void)deleteMuxBridgeContext
{
  if (self->_whichEvent_Type == 113)
  {
    self->_whichEvent_Type = 0;
    self->_muxBridgeContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setMuxBridgeContext:(id)context
{
  contextCopy = context;
  requestContext = self->_requestContext;
  self->_requestContext = 0;

  asrBridgeContext = self->_asrBridgeContext;
  self->_asrBridgeContext = 0;

  cdmBridgeContext = self->_cdmBridgeContext;
  self->_cdmBridgeContext = 0;

  executionBridgeContext = self->_executionBridgeContext;
  self->_executionBridgeContext = 0;

  serverFallbackContext = self->_serverFallbackContext;
  self->_serverFallbackContext = 0;

  flowOutputSubmitted = self->_flowOutputSubmitted;
  self->_flowOutputSubmitted = 0;

  resultCandidate = self->_resultCandidate;
  self->_resultCandidate = 0;

  resultSelected = self->_resultSelected;
  self->_resultSelected = 0;

  contextSubmissionMessage = self->_contextSubmissionMessage;
  self->_contextSubmissionMessage = 0;

  availableAssets = self->_availableAssets;
  self->_availableAssets = 0;

  orchDeviceDynamicContext = self->_orchDeviceDynamicContext;
  self->_orchDeviceDynamicContext = 0;

  pommesBridgeContext = self->_pommesBridgeContext;
  self->_pommesBridgeContext = 0;

  multiUserResultCandidate = self->_multiUserResultCandidate;
  self->_multiUserResultCandidate = 0;

  multiUserResultSelected = self->_multiUserResultSelected;
  self->_multiUserResultSelected = 0;

  aceCommandContext = self->_aceCommandContext;
  self->_aceCommandContext = 0;

  trpFinalized = self->_trpFinalized;
  self->_trpFinalized = 0;

  requestMitigated = self->_requestMitigated;
  self->_requestMitigated = 0;

  nlv3ServerFallbackDeprecated = self->_nlv3ServerFallbackDeprecated;
  self->_nlv3ServerFallbackDeprecated = 0;

  uiActivationContext = self->_uiActivationContext;
  self->_uiActivationContext = 0;

  trpCandidateReceived = self->_trpCandidateReceived;
  self->_trpCandidateReceived = 0;

  identityBridgeRequestContext = self->_identityBridgeRequestContext;
  self->_identityBridgeRequestContext = 0;

  assetSetsReported = self->_assetSetsReported;
  self->_assetSetsReported = 0;

  candidateRequestContext = self->_candidateRequestContext;
  self->_candidateRequestContext = 0;

  powerContextPolicyReported = self->_powerContextPolicyReported;
  self->_powerContextPolicyReported = 0;

  executeOnRemoteRequestContext = self->_executeOnRemoteRequestContext;
  self->_executeOnRemoteRequestContext = 0;

  assistantdLaunchMetadataReported = self->_assistantdLaunchMetadataReported;
  self->_assistantdLaunchMetadataReported = 0;

  intelligenceFlowQuerySent = self->_intelligenceFlowQuerySent;
  self->_intelligenceFlowQuerySent = 0;

  subRequestContext = self->_subRequestContext;
  self->_subRequestContext = 0;

  routerRewrittenUtterance = self->_routerRewrittenUtterance;
  self->_routerRewrittenUtterance = 0;

  nlRouterBridgeContext = self->_nlRouterBridgeContext;
  self->_nlRouterBridgeContext = 0;

  shimToolContext = self->_shimToolContext;
  self->_shimToolContext = 0;

  subRequestFallback = self->_subRequestFallback;
  self->_subRequestFallback = 0;

  nlRouterBridgeSubComponentContext = self->_nlRouterBridgeSubComponentContext;
  self->_nlRouterBridgeSubComponentContext = 0;

  unsupportedLanguageDetected = self->_unsupportedLanguageDetected;
  self->_unsupportedLanguageDetected = 0;

  trpCandidateCreated = self->_trpCandidateCreated;
  self->_trpCandidateCreated = 0;

  audioTopologyReported = self->_audioTopologyReported;
  self->_audioTopologyReported = 0;

  intelligenceFlowRequestContext = self->_intelligenceFlowRequestContext;
  self->_intelligenceFlowRequestContext = 0;

  userSessionState = self->_userSessionState;
  self->_userSessionState = 0;

  serverExecutionValuesReported = self->_serverExecutionValuesReported;
  self->_serverExecutionValuesReported = 0;

  v44 = 113;
  if (!contextCopy)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  muxBridgeContext = self->_muxBridgeContext;
  self->_muxBridgeContext = contextCopy;
}

- (void)deletePommesBridgeContext
{
  if (self->_whichEvent_Type == 112)
  {
    self->_whichEvent_Type = 0;
    self->_pommesBridgeContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setPommesBridgeContext:(id)context
{
  contextCopy = context;
  requestContext = self->_requestContext;
  self->_requestContext = 0;

  asrBridgeContext = self->_asrBridgeContext;
  self->_asrBridgeContext = 0;

  cdmBridgeContext = self->_cdmBridgeContext;
  self->_cdmBridgeContext = 0;

  executionBridgeContext = self->_executionBridgeContext;
  self->_executionBridgeContext = 0;

  serverFallbackContext = self->_serverFallbackContext;
  self->_serverFallbackContext = 0;

  flowOutputSubmitted = self->_flowOutputSubmitted;
  self->_flowOutputSubmitted = 0;

  resultCandidate = self->_resultCandidate;
  self->_resultCandidate = 0;

  resultSelected = self->_resultSelected;
  self->_resultSelected = 0;

  contextSubmissionMessage = self->_contextSubmissionMessage;
  self->_contextSubmissionMessage = 0;

  availableAssets = self->_availableAssets;
  self->_availableAssets = 0;

  orchDeviceDynamicContext = self->_orchDeviceDynamicContext;
  self->_orchDeviceDynamicContext = 0;

  muxBridgeContext = self->_muxBridgeContext;
  self->_muxBridgeContext = 0;

  multiUserResultCandidate = self->_multiUserResultCandidate;
  self->_multiUserResultCandidate = 0;

  multiUserResultSelected = self->_multiUserResultSelected;
  self->_multiUserResultSelected = 0;

  aceCommandContext = self->_aceCommandContext;
  self->_aceCommandContext = 0;

  trpFinalized = self->_trpFinalized;
  self->_trpFinalized = 0;

  requestMitigated = self->_requestMitigated;
  self->_requestMitigated = 0;

  nlv3ServerFallbackDeprecated = self->_nlv3ServerFallbackDeprecated;
  self->_nlv3ServerFallbackDeprecated = 0;

  uiActivationContext = self->_uiActivationContext;
  self->_uiActivationContext = 0;

  trpCandidateReceived = self->_trpCandidateReceived;
  self->_trpCandidateReceived = 0;

  identityBridgeRequestContext = self->_identityBridgeRequestContext;
  self->_identityBridgeRequestContext = 0;

  assetSetsReported = self->_assetSetsReported;
  self->_assetSetsReported = 0;

  candidateRequestContext = self->_candidateRequestContext;
  self->_candidateRequestContext = 0;

  powerContextPolicyReported = self->_powerContextPolicyReported;
  self->_powerContextPolicyReported = 0;

  executeOnRemoteRequestContext = self->_executeOnRemoteRequestContext;
  self->_executeOnRemoteRequestContext = 0;

  assistantdLaunchMetadataReported = self->_assistantdLaunchMetadataReported;
  self->_assistantdLaunchMetadataReported = 0;

  intelligenceFlowQuerySent = self->_intelligenceFlowQuerySent;
  self->_intelligenceFlowQuerySent = 0;

  subRequestContext = self->_subRequestContext;
  self->_subRequestContext = 0;

  routerRewrittenUtterance = self->_routerRewrittenUtterance;
  self->_routerRewrittenUtterance = 0;

  nlRouterBridgeContext = self->_nlRouterBridgeContext;
  self->_nlRouterBridgeContext = 0;

  shimToolContext = self->_shimToolContext;
  self->_shimToolContext = 0;

  subRequestFallback = self->_subRequestFallback;
  self->_subRequestFallback = 0;

  nlRouterBridgeSubComponentContext = self->_nlRouterBridgeSubComponentContext;
  self->_nlRouterBridgeSubComponentContext = 0;

  unsupportedLanguageDetected = self->_unsupportedLanguageDetected;
  self->_unsupportedLanguageDetected = 0;

  trpCandidateCreated = self->_trpCandidateCreated;
  self->_trpCandidateCreated = 0;

  audioTopologyReported = self->_audioTopologyReported;
  self->_audioTopologyReported = 0;

  intelligenceFlowRequestContext = self->_intelligenceFlowRequestContext;
  self->_intelligenceFlowRequestContext = 0;

  userSessionState = self->_userSessionState;
  self->_userSessionState = 0;

  serverExecutionValuesReported = self->_serverExecutionValuesReported;
  self->_serverExecutionValuesReported = 0;

  v44 = 112;
  if (!contextCopy)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  pommesBridgeContext = self->_pommesBridgeContext;
  self->_pommesBridgeContext = contextCopy;
}

- (void)deleteOrchDeviceDynamicContext
{
  if (self->_whichEvent_Type == 111)
  {
    self->_whichEvent_Type = 0;
    self->_orchDeviceDynamicContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setOrchDeviceDynamicContext:(id)context
{
  contextCopy = context;
  requestContext = self->_requestContext;
  self->_requestContext = 0;

  asrBridgeContext = self->_asrBridgeContext;
  self->_asrBridgeContext = 0;

  cdmBridgeContext = self->_cdmBridgeContext;
  self->_cdmBridgeContext = 0;

  executionBridgeContext = self->_executionBridgeContext;
  self->_executionBridgeContext = 0;

  serverFallbackContext = self->_serverFallbackContext;
  self->_serverFallbackContext = 0;

  flowOutputSubmitted = self->_flowOutputSubmitted;
  self->_flowOutputSubmitted = 0;

  resultCandidate = self->_resultCandidate;
  self->_resultCandidate = 0;

  resultSelected = self->_resultSelected;
  self->_resultSelected = 0;

  contextSubmissionMessage = self->_contextSubmissionMessage;
  self->_contextSubmissionMessage = 0;

  availableAssets = self->_availableAssets;
  self->_availableAssets = 0;

  pommesBridgeContext = self->_pommesBridgeContext;
  self->_pommesBridgeContext = 0;

  muxBridgeContext = self->_muxBridgeContext;
  self->_muxBridgeContext = 0;

  multiUserResultCandidate = self->_multiUserResultCandidate;
  self->_multiUserResultCandidate = 0;

  multiUserResultSelected = self->_multiUserResultSelected;
  self->_multiUserResultSelected = 0;

  aceCommandContext = self->_aceCommandContext;
  self->_aceCommandContext = 0;

  trpFinalized = self->_trpFinalized;
  self->_trpFinalized = 0;

  requestMitigated = self->_requestMitigated;
  self->_requestMitigated = 0;

  nlv3ServerFallbackDeprecated = self->_nlv3ServerFallbackDeprecated;
  self->_nlv3ServerFallbackDeprecated = 0;

  uiActivationContext = self->_uiActivationContext;
  self->_uiActivationContext = 0;

  trpCandidateReceived = self->_trpCandidateReceived;
  self->_trpCandidateReceived = 0;

  identityBridgeRequestContext = self->_identityBridgeRequestContext;
  self->_identityBridgeRequestContext = 0;

  assetSetsReported = self->_assetSetsReported;
  self->_assetSetsReported = 0;

  candidateRequestContext = self->_candidateRequestContext;
  self->_candidateRequestContext = 0;

  powerContextPolicyReported = self->_powerContextPolicyReported;
  self->_powerContextPolicyReported = 0;

  executeOnRemoteRequestContext = self->_executeOnRemoteRequestContext;
  self->_executeOnRemoteRequestContext = 0;

  assistantdLaunchMetadataReported = self->_assistantdLaunchMetadataReported;
  self->_assistantdLaunchMetadataReported = 0;

  intelligenceFlowQuerySent = self->_intelligenceFlowQuerySent;
  self->_intelligenceFlowQuerySent = 0;

  subRequestContext = self->_subRequestContext;
  self->_subRequestContext = 0;

  routerRewrittenUtterance = self->_routerRewrittenUtterance;
  self->_routerRewrittenUtterance = 0;

  nlRouterBridgeContext = self->_nlRouterBridgeContext;
  self->_nlRouterBridgeContext = 0;

  shimToolContext = self->_shimToolContext;
  self->_shimToolContext = 0;

  subRequestFallback = self->_subRequestFallback;
  self->_subRequestFallback = 0;

  nlRouterBridgeSubComponentContext = self->_nlRouterBridgeSubComponentContext;
  self->_nlRouterBridgeSubComponentContext = 0;

  unsupportedLanguageDetected = self->_unsupportedLanguageDetected;
  self->_unsupportedLanguageDetected = 0;

  trpCandidateCreated = self->_trpCandidateCreated;
  self->_trpCandidateCreated = 0;

  audioTopologyReported = self->_audioTopologyReported;
  self->_audioTopologyReported = 0;

  intelligenceFlowRequestContext = self->_intelligenceFlowRequestContext;
  self->_intelligenceFlowRequestContext = 0;

  userSessionState = self->_userSessionState;
  self->_userSessionState = 0;

  serverExecutionValuesReported = self->_serverExecutionValuesReported;
  self->_serverExecutionValuesReported = 0;

  v44 = 111;
  if (!contextCopy)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  orchDeviceDynamicContext = self->_orchDeviceDynamicContext;
  self->_orchDeviceDynamicContext = contextCopy;
}

- (void)deleteAvailableAssets
{
  if (self->_whichEvent_Type == 110)
  {
    self->_whichEvent_Type = 0;
    self->_availableAssets = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setAvailableAssets:(id)assets
{
  assetsCopy = assets;
  requestContext = self->_requestContext;
  self->_requestContext = 0;

  asrBridgeContext = self->_asrBridgeContext;
  self->_asrBridgeContext = 0;

  cdmBridgeContext = self->_cdmBridgeContext;
  self->_cdmBridgeContext = 0;

  executionBridgeContext = self->_executionBridgeContext;
  self->_executionBridgeContext = 0;

  serverFallbackContext = self->_serverFallbackContext;
  self->_serverFallbackContext = 0;

  flowOutputSubmitted = self->_flowOutputSubmitted;
  self->_flowOutputSubmitted = 0;

  resultCandidate = self->_resultCandidate;
  self->_resultCandidate = 0;

  resultSelected = self->_resultSelected;
  self->_resultSelected = 0;

  contextSubmissionMessage = self->_contextSubmissionMessage;
  self->_contextSubmissionMessage = 0;

  orchDeviceDynamicContext = self->_orchDeviceDynamicContext;
  self->_orchDeviceDynamicContext = 0;

  pommesBridgeContext = self->_pommesBridgeContext;
  self->_pommesBridgeContext = 0;

  muxBridgeContext = self->_muxBridgeContext;
  self->_muxBridgeContext = 0;

  multiUserResultCandidate = self->_multiUserResultCandidate;
  self->_multiUserResultCandidate = 0;

  multiUserResultSelected = self->_multiUserResultSelected;
  self->_multiUserResultSelected = 0;

  aceCommandContext = self->_aceCommandContext;
  self->_aceCommandContext = 0;

  trpFinalized = self->_trpFinalized;
  self->_trpFinalized = 0;

  requestMitigated = self->_requestMitigated;
  self->_requestMitigated = 0;

  nlv3ServerFallbackDeprecated = self->_nlv3ServerFallbackDeprecated;
  self->_nlv3ServerFallbackDeprecated = 0;

  uiActivationContext = self->_uiActivationContext;
  self->_uiActivationContext = 0;

  trpCandidateReceived = self->_trpCandidateReceived;
  self->_trpCandidateReceived = 0;

  identityBridgeRequestContext = self->_identityBridgeRequestContext;
  self->_identityBridgeRequestContext = 0;

  assetSetsReported = self->_assetSetsReported;
  self->_assetSetsReported = 0;

  candidateRequestContext = self->_candidateRequestContext;
  self->_candidateRequestContext = 0;

  powerContextPolicyReported = self->_powerContextPolicyReported;
  self->_powerContextPolicyReported = 0;

  executeOnRemoteRequestContext = self->_executeOnRemoteRequestContext;
  self->_executeOnRemoteRequestContext = 0;

  assistantdLaunchMetadataReported = self->_assistantdLaunchMetadataReported;
  self->_assistantdLaunchMetadataReported = 0;

  intelligenceFlowQuerySent = self->_intelligenceFlowQuerySent;
  self->_intelligenceFlowQuerySent = 0;

  subRequestContext = self->_subRequestContext;
  self->_subRequestContext = 0;

  routerRewrittenUtterance = self->_routerRewrittenUtterance;
  self->_routerRewrittenUtterance = 0;

  nlRouterBridgeContext = self->_nlRouterBridgeContext;
  self->_nlRouterBridgeContext = 0;

  shimToolContext = self->_shimToolContext;
  self->_shimToolContext = 0;

  subRequestFallback = self->_subRequestFallback;
  self->_subRequestFallback = 0;

  nlRouterBridgeSubComponentContext = self->_nlRouterBridgeSubComponentContext;
  self->_nlRouterBridgeSubComponentContext = 0;

  unsupportedLanguageDetected = self->_unsupportedLanguageDetected;
  self->_unsupportedLanguageDetected = 0;

  trpCandidateCreated = self->_trpCandidateCreated;
  self->_trpCandidateCreated = 0;

  audioTopologyReported = self->_audioTopologyReported;
  self->_audioTopologyReported = 0;

  intelligenceFlowRequestContext = self->_intelligenceFlowRequestContext;
  self->_intelligenceFlowRequestContext = 0;

  userSessionState = self->_userSessionState;
  self->_userSessionState = 0;

  serverExecutionValuesReported = self->_serverExecutionValuesReported;
  self->_serverExecutionValuesReported = 0;

  v44 = 110;
  if (!assetsCopy)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  availableAssets = self->_availableAssets;
  self->_availableAssets = assetsCopy;
}

- (void)deleteContextSubmissionMessage
{
  if (self->_whichEvent_Type == 109)
  {
    self->_whichEvent_Type = 0;
    self->_contextSubmissionMessage = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setContextSubmissionMessage:(id)message
{
  messageCopy = message;
  requestContext = self->_requestContext;
  self->_requestContext = 0;

  asrBridgeContext = self->_asrBridgeContext;
  self->_asrBridgeContext = 0;

  cdmBridgeContext = self->_cdmBridgeContext;
  self->_cdmBridgeContext = 0;

  executionBridgeContext = self->_executionBridgeContext;
  self->_executionBridgeContext = 0;

  serverFallbackContext = self->_serverFallbackContext;
  self->_serverFallbackContext = 0;

  flowOutputSubmitted = self->_flowOutputSubmitted;
  self->_flowOutputSubmitted = 0;

  resultCandidate = self->_resultCandidate;
  self->_resultCandidate = 0;

  resultSelected = self->_resultSelected;
  self->_resultSelected = 0;

  availableAssets = self->_availableAssets;
  self->_availableAssets = 0;

  orchDeviceDynamicContext = self->_orchDeviceDynamicContext;
  self->_orchDeviceDynamicContext = 0;

  pommesBridgeContext = self->_pommesBridgeContext;
  self->_pommesBridgeContext = 0;

  muxBridgeContext = self->_muxBridgeContext;
  self->_muxBridgeContext = 0;

  multiUserResultCandidate = self->_multiUserResultCandidate;
  self->_multiUserResultCandidate = 0;

  multiUserResultSelected = self->_multiUserResultSelected;
  self->_multiUserResultSelected = 0;

  aceCommandContext = self->_aceCommandContext;
  self->_aceCommandContext = 0;

  trpFinalized = self->_trpFinalized;
  self->_trpFinalized = 0;

  requestMitigated = self->_requestMitigated;
  self->_requestMitigated = 0;

  nlv3ServerFallbackDeprecated = self->_nlv3ServerFallbackDeprecated;
  self->_nlv3ServerFallbackDeprecated = 0;

  uiActivationContext = self->_uiActivationContext;
  self->_uiActivationContext = 0;

  trpCandidateReceived = self->_trpCandidateReceived;
  self->_trpCandidateReceived = 0;

  identityBridgeRequestContext = self->_identityBridgeRequestContext;
  self->_identityBridgeRequestContext = 0;

  assetSetsReported = self->_assetSetsReported;
  self->_assetSetsReported = 0;

  candidateRequestContext = self->_candidateRequestContext;
  self->_candidateRequestContext = 0;

  powerContextPolicyReported = self->_powerContextPolicyReported;
  self->_powerContextPolicyReported = 0;

  executeOnRemoteRequestContext = self->_executeOnRemoteRequestContext;
  self->_executeOnRemoteRequestContext = 0;

  assistantdLaunchMetadataReported = self->_assistantdLaunchMetadataReported;
  self->_assistantdLaunchMetadataReported = 0;

  intelligenceFlowQuerySent = self->_intelligenceFlowQuerySent;
  self->_intelligenceFlowQuerySent = 0;

  subRequestContext = self->_subRequestContext;
  self->_subRequestContext = 0;

  routerRewrittenUtterance = self->_routerRewrittenUtterance;
  self->_routerRewrittenUtterance = 0;

  nlRouterBridgeContext = self->_nlRouterBridgeContext;
  self->_nlRouterBridgeContext = 0;

  shimToolContext = self->_shimToolContext;
  self->_shimToolContext = 0;

  subRequestFallback = self->_subRequestFallback;
  self->_subRequestFallback = 0;

  nlRouterBridgeSubComponentContext = self->_nlRouterBridgeSubComponentContext;
  self->_nlRouterBridgeSubComponentContext = 0;

  unsupportedLanguageDetected = self->_unsupportedLanguageDetected;
  self->_unsupportedLanguageDetected = 0;

  trpCandidateCreated = self->_trpCandidateCreated;
  self->_trpCandidateCreated = 0;

  audioTopologyReported = self->_audioTopologyReported;
  self->_audioTopologyReported = 0;

  intelligenceFlowRequestContext = self->_intelligenceFlowRequestContext;
  self->_intelligenceFlowRequestContext = 0;

  userSessionState = self->_userSessionState;
  self->_userSessionState = 0;

  serverExecutionValuesReported = self->_serverExecutionValuesReported;
  self->_serverExecutionValuesReported = 0;

  v44 = 109;
  if (!messageCopy)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  contextSubmissionMessage = self->_contextSubmissionMessage;
  self->_contextSubmissionMessage = messageCopy;
}

- (void)deleteResultSelected
{
  if (self->_whichEvent_Type == 108)
  {
    self->_whichEvent_Type = 0;
    self->_resultSelected = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setResultSelected:(id)selected
{
  selectedCopy = selected;
  requestContext = self->_requestContext;
  self->_requestContext = 0;

  asrBridgeContext = self->_asrBridgeContext;
  self->_asrBridgeContext = 0;

  cdmBridgeContext = self->_cdmBridgeContext;
  self->_cdmBridgeContext = 0;

  executionBridgeContext = self->_executionBridgeContext;
  self->_executionBridgeContext = 0;

  serverFallbackContext = self->_serverFallbackContext;
  self->_serverFallbackContext = 0;

  flowOutputSubmitted = self->_flowOutputSubmitted;
  self->_flowOutputSubmitted = 0;

  resultCandidate = self->_resultCandidate;
  self->_resultCandidate = 0;

  contextSubmissionMessage = self->_contextSubmissionMessage;
  self->_contextSubmissionMessage = 0;

  availableAssets = self->_availableAssets;
  self->_availableAssets = 0;

  orchDeviceDynamicContext = self->_orchDeviceDynamicContext;
  self->_orchDeviceDynamicContext = 0;

  pommesBridgeContext = self->_pommesBridgeContext;
  self->_pommesBridgeContext = 0;

  muxBridgeContext = self->_muxBridgeContext;
  self->_muxBridgeContext = 0;

  multiUserResultCandidate = self->_multiUserResultCandidate;
  self->_multiUserResultCandidate = 0;

  multiUserResultSelected = self->_multiUserResultSelected;
  self->_multiUserResultSelected = 0;

  aceCommandContext = self->_aceCommandContext;
  self->_aceCommandContext = 0;

  trpFinalized = self->_trpFinalized;
  self->_trpFinalized = 0;

  requestMitigated = self->_requestMitigated;
  self->_requestMitigated = 0;

  nlv3ServerFallbackDeprecated = self->_nlv3ServerFallbackDeprecated;
  self->_nlv3ServerFallbackDeprecated = 0;

  uiActivationContext = self->_uiActivationContext;
  self->_uiActivationContext = 0;

  trpCandidateReceived = self->_trpCandidateReceived;
  self->_trpCandidateReceived = 0;

  identityBridgeRequestContext = self->_identityBridgeRequestContext;
  self->_identityBridgeRequestContext = 0;

  assetSetsReported = self->_assetSetsReported;
  self->_assetSetsReported = 0;

  candidateRequestContext = self->_candidateRequestContext;
  self->_candidateRequestContext = 0;

  powerContextPolicyReported = self->_powerContextPolicyReported;
  self->_powerContextPolicyReported = 0;

  executeOnRemoteRequestContext = self->_executeOnRemoteRequestContext;
  self->_executeOnRemoteRequestContext = 0;

  assistantdLaunchMetadataReported = self->_assistantdLaunchMetadataReported;
  self->_assistantdLaunchMetadataReported = 0;

  intelligenceFlowQuerySent = self->_intelligenceFlowQuerySent;
  self->_intelligenceFlowQuerySent = 0;

  subRequestContext = self->_subRequestContext;
  self->_subRequestContext = 0;

  routerRewrittenUtterance = self->_routerRewrittenUtterance;
  self->_routerRewrittenUtterance = 0;

  nlRouterBridgeContext = self->_nlRouterBridgeContext;
  self->_nlRouterBridgeContext = 0;

  shimToolContext = self->_shimToolContext;
  self->_shimToolContext = 0;

  subRequestFallback = self->_subRequestFallback;
  self->_subRequestFallback = 0;

  nlRouterBridgeSubComponentContext = self->_nlRouterBridgeSubComponentContext;
  self->_nlRouterBridgeSubComponentContext = 0;

  unsupportedLanguageDetected = self->_unsupportedLanguageDetected;
  self->_unsupportedLanguageDetected = 0;

  trpCandidateCreated = self->_trpCandidateCreated;
  self->_trpCandidateCreated = 0;

  audioTopologyReported = self->_audioTopologyReported;
  self->_audioTopologyReported = 0;

  intelligenceFlowRequestContext = self->_intelligenceFlowRequestContext;
  self->_intelligenceFlowRequestContext = 0;

  userSessionState = self->_userSessionState;
  self->_userSessionState = 0;

  serverExecutionValuesReported = self->_serverExecutionValuesReported;
  self->_serverExecutionValuesReported = 0;

  v44 = 108;
  if (!selectedCopy)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  resultSelected = self->_resultSelected;
  self->_resultSelected = selectedCopy;
}

- (void)deleteResultCandidate
{
  if (self->_whichEvent_Type == 107)
  {
    self->_whichEvent_Type = 0;
    self->_resultCandidate = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setResultCandidate:(id)candidate
{
  candidateCopy = candidate;
  requestContext = self->_requestContext;
  self->_requestContext = 0;

  asrBridgeContext = self->_asrBridgeContext;
  self->_asrBridgeContext = 0;

  cdmBridgeContext = self->_cdmBridgeContext;
  self->_cdmBridgeContext = 0;

  executionBridgeContext = self->_executionBridgeContext;
  self->_executionBridgeContext = 0;

  serverFallbackContext = self->_serverFallbackContext;
  self->_serverFallbackContext = 0;

  flowOutputSubmitted = self->_flowOutputSubmitted;
  self->_flowOutputSubmitted = 0;

  resultSelected = self->_resultSelected;
  self->_resultSelected = 0;

  contextSubmissionMessage = self->_contextSubmissionMessage;
  self->_contextSubmissionMessage = 0;

  availableAssets = self->_availableAssets;
  self->_availableAssets = 0;

  orchDeviceDynamicContext = self->_orchDeviceDynamicContext;
  self->_orchDeviceDynamicContext = 0;

  pommesBridgeContext = self->_pommesBridgeContext;
  self->_pommesBridgeContext = 0;

  muxBridgeContext = self->_muxBridgeContext;
  self->_muxBridgeContext = 0;

  multiUserResultCandidate = self->_multiUserResultCandidate;
  self->_multiUserResultCandidate = 0;

  multiUserResultSelected = self->_multiUserResultSelected;
  self->_multiUserResultSelected = 0;

  aceCommandContext = self->_aceCommandContext;
  self->_aceCommandContext = 0;

  trpFinalized = self->_trpFinalized;
  self->_trpFinalized = 0;

  requestMitigated = self->_requestMitigated;
  self->_requestMitigated = 0;

  nlv3ServerFallbackDeprecated = self->_nlv3ServerFallbackDeprecated;
  self->_nlv3ServerFallbackDeprecated = 0;

  uiActivationContext = self->_uiActivationContext;
  self->_uiActivationContext = 0;

  trpCandidateReceived = self->_trpCandidateReceived;
  self->_trpCandidateReceived = 0;

  identityBridgeRequestContext = self->_identityBridgeRequestContext;
  self->_identityBridgeRequestContext = 0;

  assetSetsReported = self->_assetSetsReported;
  self->_assetSetsReported = 0;

  candidateRequestContext = self->_candidateRequestContext;
  self->_candidateRequestContext = 0;

  powerContextPolicyReported = self->_powerContextPolicyReported;
  self->_powerContextPolicyReported = 0;

  executeOnRemoteRequestContext = self->_executeOnRemoteRequestContext;
  self->_executeOnRemoteRequestContext = 0;

  assistantdLaunchMetadataReported = self->_assistantdLaunchMetadataReported;
  self->_assistantdLaunchMetadataReported = 0;

  intelligenceFlowQuerySent = self->_intelligenceFlowQuerySent;
  self->_intelligenceFlowQuerySent = 0;

  subRequestContext = self->_subRequestContext;
  self->_subRequestContext = 0;

  routerRewrittenUtterance = self->_routerRewrittenUtterance;
  self->_routerRewrittenUtterance = 0;

  nlRouterBridgeContext = self->_nlRouterBridgeContext;
  self->_nlRouterBridgeContext = 0;

  shimToolContext = self->_shimToolContext;
  self->_shimToolContext = 0;

  subRequestFallback = self->_subRequestFallback;
  self->_subRequestFallback = 0;

  nlRouterBridgeSubComponentContext = self->_nlRouterBridgeSubComponentContext;
  self->_nlRouterBridgeSubComponentContext = 0;

  unsupportedLanguageDetected = self->_unsupportedLanguageDetected;
  self->_unsupportedLanguageDetected = 0;

  trpCandidateCreated = self->_trpCandidateCreated;
  self->_trpCandidateCreated = 0;

  audioTopologyReported = self->_audioTopologyReported;
  self->_audioTopologyReported = 0;

  intelligenceFlowRequestContext = self->_intelligenceFlowRequestContext;
  self->_intelligenceFlowRequestContext = 0;

  userSessionState = self->_userSessionState;
  self->_userSessionState = 0;

  serverExecutionValuesReported = self->_serverExecutionValuesReported;
  self->_serverExecutionValuesReported = 0;

  v44 = 107;
  if (!candidateCopy)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  resultCandidate = self->_resultCandidate;
  self->_resultCandidate = candidateCopy;
}

- (void)deleteFlowOutputSubmitted
{
  if (self->_whichEvent_Type == 106)
  {
    self->_whichEvent_Type = 0;
    self->_flowOutputSubmitted = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setFlowOutputSubmitted:(id)submitted
{
  submittedCopy = submitted;
  requestContext = self->_requestContext;
  self->_requestContext = 0;

  asrBridgeContext = self->_asrBridgeContext;
  self->_asrBridgeContext = 0;

  cdmBridgeContext = self->_cdmBridgeContext;
  self->_cdmBridgeContext = 0;

  executionBridgeContext = self->_executionBridgeContext;
  self->_executionBridgeContext = 0;

  serverFallbackContext = self->_serverFallbackContext;
  self->_serverFallbackContext = 0;

  resultCandidate = self->_resultCandidate;
  self->_resultCandidate = 0;

  resultSelected = self->_resultSelected;
  self->_resultSelected = 0;

  contextSubmissionMessage = self->_contextSubmissionMessage;
  self->_contextSubmissionMessage = 0;

  availableAssets = self->_availableAssets;
  self->_availableAssets = 0;

  orchDeviceDynamicContext = self->_orchDeviceDynamicContext;
  self->_orchDeviceDynamicContext = 0;

  pommesBridgeContext = self->_pommesBridgeContext;
  self->_pommesBridgeContext = 0;

  muxBridgeContext = self->_muxBridgeContext;
  self->_muxBridgeContext = 0;

  multiUserResultCandidate = self->_multiUserResultCandidate;
  self->_multiUserResultCandidate = 0;

  multiUserResultSelected = self->_multiUserResultSelected;
  self->_multiUserResultSelected = 0;

  aceCommandContext = self->_aceCommandContext;
  self->_aceCommandContext = 0;

  trpFinalized = self->_trpFinalized;
  self->_trpFinalized = 0;

  requestMitigated = self->_requestMitigated;
  self->_requestMitigated = 0;

  nlv3ServerFallbackDeprecated = self->_nlv3ServerFallbackDeprecated;
  self->_nlv3ServerFallbackDeprecated = 0;

  uiActivationContext = self->_uiActivationContext;
  self->_uiActivationContext = 0;

  trpCandidateReceived = self->_trpCandidateReceived;
  self->_trpCandidateReceived = 0;

  identityBridgeRequestContext = self->_identityBridgeRequestContext;
  self->_identityBridgeRequestContext = 0;

  assetSetsReported = self->_assetSetsReported;
  self->_assetSetsReported = 0;

  candidateRequestContext = self->_candidateRequestContext;
  self->_candidateRequestContext = 0;

  powerContextPolicyReported = self->_powerContextPolicyReported;
  self->_powerContextPolicyReported = 0;

  executeOnRemoteRequestContext = self->_executeOnRemoteRequestContext;
  self->_executeOnRemoteRequestContext = 0;

  assistantdLaunchMetadataReported = self->_assistantdLaunchMetadataReported;
  self->_assistantdLaunchMetadataReported = 0;

  intelligenceFlowQuerySent = self->_intelligenceFlowQuerySent;
  self->_intelligenceFlowQuerySent = 0;

  subRequestContext = self->_subRequestContext;
  self->_subRequestContext = 0;

  routerRewrittenUtterance = self->_routerRewrittenUtterance;
  self->_routerRewrittenUtterance = 0;

  nlRouterBridgeContext = self->_nlRouterBridgeContext;
  self->_nlRouterBridgeContext = 0;

  shimToolContext = self->_shimToolContext;
  self->_shimToolContext = 0;

  subRequestFallback = self->_subRequestFallback;
  self->_subRequestFallback = 0;

  nlRouterBridgeSubComponentContext = self->_nlRouterBridgeSubComponentContext;
  self->_nlRouterBridgeSubComponentContext = 0;

  unsupportedLanguageDetected = self->_unsupportedLanguageDetected;
  self->_unsupportedLanguageDetected = 0;

  trpCandidateCreated = self->_trpCandidateCreated;
  self->_trpCandidateCreated = 0;

  audioTopologyReported = self->_audioTopologyReported;
  self->_audioTopologyReported = 0;

  intelligenceFlowRequestContext = self->_intelligenceFlowRequestContext;
  self->_intelligenceFlowRequestContext = 0;

  userSessionState = self->_userSessionState;
  self->_userSessionState = 0;

  serverExecutionValuesReported = self->_serverExecutionValuesReported;
  self->_serverExecutionValuesReported = 0;

  v44 = 106;
  if (!submittedCopy)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  flowOutputSubmitted = self->_flowOutputSubmitted;
  self->_flowOutputSubmitted = submittedCopy;
}

- (void)deleteServerFallbackContext
{
  if (self->_whichEvent_Type == 105)
  {
    self->_whichEvent_Type = 0;
    self->_serverFallbackContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setServerFallbackContext:(id)context
{
  contextCopy = context;
  requestContext = self->_requestContext;
  self->_requestContext = 0;

  asrBridgeContext = self->_asrBridgeContext;
  self->_asrBridgeContext = 0;

  cdmBridgeContext = self->_cdmBridgeContext;
  self->_cdmBridgeContext = 0;

  executionBridgeContext = self->_executionBridgeContext;
  self->_executionBridgeContext = 0;

  flowOutputSubmitted = self->_flowOutputSubmitted;
  self->_flowOutputSubmitted = 0;

  resultCandidate = self->_resultCandidate;
  self->_resultCandidate = 0;

  resultSelected = self->_resultSelected;
  self->_resultSelected = 0;

  contextSubmissionMessage = self->_contextSubmissionMessage;
  self->_contextSubmissionMessage = 0;

  availableAssets = self->_availableAssets;
  self->_availableAssets = 0;

  orchDeviceDynamicContext = self->_orchDeviceDynamicContext;
  self->_orchDeviceDynamicContext = 0;

  pommesBridgeContext = self->_pommesBridgeContext;
  self->_pommesBridgeContext = 0;

  muxBridgeContext = self->_muxBridgeContext;
  self->_muxBridgeContext = 0;

  multiUserResultCandidate = self->_multiUserResultCandidate;
  self->_multiUserResultCandidate = 0;

  multiUserResultSelected = self->_multiUserResultSelected;
  self->_multiUserResultSelected = 0;

  aceCommandContext = self->_aceCommandContext;
  self->_aceCommandContext = 0;

  trpFinalized = self->_trpFinalized;
  self->_trpFinalized = 0;

  requestMitigated = self->_requestMitigated;
  self->_requestMitigated = 0;

  nlv3ServerFallbackDeprecated = self->_nlv3ServerFallbackDeprecated;
  self->_nlv3ServerFallbackDeprecated = 0;

  uiActivationContext = self->_uiActivationContext;
  self->_uiActivationContext = 0;

  trpCandidateReceived = self->_trpCandidateReceived;
  self->_trpCandidateReceived = 0;

  identityBridgeRequestContext = self->_identityBridgeRequestContext;
  self->_identityBridgeRequestContext = 0;

  assetSetsReported = self->_assetSetsReported;
  self->_assetSetsReported = 0;

  candidateRequestContext = self->_candidateRequestContext;
  self->_candidateRequestContext = 0;

  powerContextPolicyReported = self->_powerContextPolicyReported;
  self->_powerContextPolicyReported = 0;

  executeOnRemoteRequestContext = self->_executeOnRemoteRequestContext;
  self->_executeOnRemoteRequestContext = 0;

  assistantdLaunchMetadataReported = self->_assistantdLaunchMetadataReported;
  self->_assistantdLaunchMetadataReported = 0;

  intelligenceFlowQuerySent = self->_intelligenceFlowQuerySent;
  self->_intelligenceFlowQuerySent = 0;

  subRequestContext = self->_subRequestContext;
  self->_subRequestContext = 0;

  routerRewrittenUtterance = self->_routerRewrittenUtterance;
  self->_routerRewrittenUtterance = 0;

  nlRouterBridgeContext = self->_nlRouterBridgeContext;
  self->_nlRouterBridgeContext = 0;

  shimToolContext = self->_shimToolContext;
  self->_shimToolContext = 0;

  subRequestFallback = self->_subRequestFallback;
  self->_subRequestFallback = 0;

  nlRouterBridgeSubComponentContext = self->_nlRouterBridgeSubComponentContext;
  self->_nlRouterBridgeSubComponentContext = 0;

  unsupportedLanguageDetected = self->_unsupportedLanguageDetected;
  self->_unsupportedLanguageDetected = 0;

  trpCandidateCreated = self->_trpCandidateCreated;
  self->_trpCandidateCreated = 0;

  audioTopologyReported = self->_audioTopologyReported;
  self->_audioTopologyReported = 0;

  intelligenceFlowRequestContext = self->_intelligenceFlowRequestContext;
  self->_intelligenceFlowRequestContext = 0;

  userSessionState = self->_userSessionState;
  self->_userSessionState = 0;

  serverExecutionValuesReported = self->_serverExecutionValuesReported;
  self->_serverExecutionValuesReported = 0;

  v44 = 105;
  if (!contextCopy)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  serverFallbackContext = self->_serverFallbackContext;
  self->_serverFallbackContext = contextCopy;
}

- (void)deleteExecutionBridgeContext
{
  if (self->_whichEvent_Type == 104)
  {
    self->_whichEvent_Type = 0;
    self->_executionBridgeContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setExecutionBridgeContext:(id)context
{
  contextCopy = context;
  requestContext = self->_requestContext;
  self->_requestContext = 0;

  asrBridgeContext = self->_asrBridgeContext;
  self->_asrBridgeContext = 0;

  cdmBridgeContext = self->_cdmBridgeContext;
  self->_cdmBridgeContext = 0;

  serverFallbackContext = self->_serverFallbackContext;
  self->_serverFallbackContext = 0;

  flowOutputSubmitted = self->_flowOutputSubmitted;
  self->_flowOutputSubmitted = 0;

  resultCandidate = self->_resultCandidate;
  self->_resultCandidate = 0;

  resultSelected = self->_resultSelected;
  self->_resultSelected = 0;

  contextSubmissionMessage = self->_contextSubmissionMessage;
  self->_contextSubmissionMessage = 0;

  availableAssets = self->_availableAssets;
  self->_availableAssets = 0;

  orchDeviceDynamicContext = self->_orchDeviceDynamicContext;
  self->_orchDeviceDynamicContext = 0;

  pommesBridgeContext = self->_pommesBridgeContext;
  self->_pommesBridgeContext = 0;

  muxBridgeContext = self->_muxBridgeContext;
  self->_muxBridgeContext = 0;

  multiUserResultCandidate = self->_multiUserResultCandidate;
  self->_multiUserResultCandidate = 0;

  multiUserResultSelected = self->_multiUserResultSelected;
  self->_multiUserResultSelected = 0;

  aceCommandContext = self->_aceCommandContext;
  self->_aceCommandContext = 0;

  trpFinalized = self->_trpFinalized;
  self->_trpFinalized = 0;

  requestMitigated = self->_requestMitigated;
  self->_requestMitigated = 0;

  nlv3ServerFallbackDeprecated = self->_nlv3ServerFallbackDeprecated;
  self->_nlv3ServerFallbackDeprecated = 0;

  uiActivationContext = self->_uiActivationContext;
  self->_uiActivationContext = 0;

  trpCandidateReceived = self->_trpCandidateReceived;
  self->_trpCandidateReceived = 0;

  identityBridgeRequestContext = self->_identityBridgeRequestContext;
  self->_identityBridgeRequestContext = 0;

  assetSetsReported = self->_assetSetsReported;
  self->_assetSetsReported = 0;

  candidateRequestContext = self->_candidateRequestContext;
  self->_candidateRequestContext = 0;

  powerContextPolicyReported = self->_powerContextPolicyReported;
  self->_powerContextPolicyReported = 0;

  executeOnRemoteRequestContext = self->_executeOnRemoteRequestContext;
  self->_executeOnRemoteRequestContext = 0;

  assistantdLaunchMetadataReported = self->_assistantdLaunchMetadataReported;
  self->_assistantdLaunchMetadataReported = 0;

  intelligenceFlowQuerySent = self->_intelligenceFlowQuerySent;
  self->_intelligenceFlowQuerySent = 0;

  subRequestContext = self->_subRequestContext;
  self->_subRequestContext = 0;

  routerRewrittenUtterance = self->_routerRewrittenUtterance;
  self->_routerRewrittenUtterance = 0;

  nlRouterBridgeContext = self->_nlRouterBridgeContext;
  self->_nlRouterBridgeContext = 0;

  shimToolContext = self->_shimToolContext;
  self->_shimToolContext = 0;

  subRequestFallback = self->_subRequestFallback;
  self->_subRequestFallback = 0;

  nlRouterBridgeSubComponentContext = self->_nlRouterBridgeSubComponentContext;
  self->_nlRouterBridgeSubComponentContext = 0;

  unsupportedLanguageDetected = self->_unsupportedLanguageDetected;
  self->_unsupportedLanguageDetected = 0;

  trpCandidateCreated = self->_trpCandidateCreated;
  self->_trpCandidateCreated = 0;

  audioTopologyReported = self->_audioTopologyReported;
  self->_audioTopologyReported = 0;

  intelligenceFlowRequestContext = self->_intelligenceFlowRequestContext;
  self->_intelligenceFlowRequestContext = 0;

  userSessionState = self->_userSessionState;
  self->_userSessionState = 0;

  serverExecutionValuesReported = self->_serverExecutionValuesReported;
  self->_serverExecutionValuesReported = 0;

  v44 = 104;
  if (!contextCopy)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  executionBridgeContext = self->_executionBridgeContext;
  self->_executionBridgeContext = contextCopy;
}

- (void)deleteCdmBridgeContext
{
  if (self->_whichEvent_Type == 103)
  {
    self->_whichEvent_Type = 0;
    self->_cdmBridgeContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setCdmBridgeContext:(id)context
{
  contextCopy = context;
  requestContext = self->_requestContext;
  self->_requestContext = 0;

  asrBridgeContext = self->_asrBridgeContext;
  self->_asrBridgeContext = 0;

  executionBridgeContext = self->_executionBridgeContext;
  self->_executionBridgeContext = 0;

  serverFallbackContext = self->_serverFallbackContext;
  self->_serverFallbackContext = 0;

  flowOutputSubmitted = self->_flowOutputSubmitted;
  self->_flowOutputSubmitted = 0;

  resultCandidate = self->_resultCandidate;
  self->_resultCandidate = 0;

  resultSelected = self->_resultSelected;
  self->_resultSelected = 0;

  contextSubmissionMessage = self->_contextSubmissionMessage;
  self->_contextSubmissionMessage = 0;

  availableAssets = self->_availableAssets;
  self->_availableAssets = 0;

  orchDeviceDynamicContext = self->_orchDeviceDynamicContext;
  self->_orchDeviceDynamicContext = 0;

  pommesBridgeContext = self->_pommesBridgeContext;
  self->_pommesBridgeContext = 0;

  muxBridgeContext = self->_muxBridgeContext;
  self->_muxBridgeContext = 0;

  multiUserResultCandidate = self->_multiUserResultCandidate;
  self->_multiUserResultCandidate = 0;

  multiUserResultSelected = self->_multiUserResultSelected;
  self->_multiUserResultSelected = 0;

  aceCommandContext = self->_aceCommandContext;
  self->_aceCommandContext = 0;

  trpFinalized = self->_trpFinalized;
  self->_trpFinalized = 0;

  requestMitigated = self->_requestMitigated;
  self->_requestMitigated = 0;

  nlv3ServerFallbackDeprecated = self->_nlv3ServerFallbackDeprecated;
  self->_nlv3ServerFallbackDeprecated = 0;

  uiActivationContext = self->_uiActivationContext;
  self->_uiActivationContext = 0;

  trpCandidateReceived = self->_trpCandidateReceived;
  self->_trpCandidateReceived = 0;

  identityBridgeRequestContext = self->_identityBridgeRequestContext;
  self->_identityBridgeRequestContext = 0;

  assetSetsReported = self->_assetSetsReported;
  self->_assetSetsReported = 0;

  candidateRequestContext = self->_candidateRequestContext;
  self->_candidateRequestContext = 0;

  powerContextPolicyReported = self->_powerContextPolicyReported;
  self->_powerContextPolicyReported = 0;

  executeOnRemoteRequestContext = self->_executeOnRemoteRequestContext;
  self->_executeOnRemoteRequestContext = 0;

  assistantdLaunchMetadataReported = self->_assistantdLaunchMetadataReported;
  self->_assistantdLaunchMetadataReported = 0;

  intelligenceFlowQuerySent = self->_intelligenceFlowQuerySent;
  self->_intelligenceFlowQuerySent = 0;

  subRequestContext = self->_subRequestContext;
  self->_subRequestContext = 0;

  routerRewrittenUtterance = self->_routerRewrittenUtterance;
  self->_routerRewrittenUtterance = 0;

  nlRouterBridgeContext = self->_nlRouterBridgeContext;
  self->_nlRouterBridgeContext = 0;

  shimToolContext = self->_shimToolContext;
  self->_shimToolContext = 0;

  subRequestFallback = self->_subRequestFallback;
  self->_subRequestFallback = 0;

  nlRouterBridgeSubComponentContext = self->_nlRouterBridgeSubComponentContext;
  self->_nlRouterBridgeSubComponentContext = 0;

  unsupportedLanguageDetected = self->_unsupportedLanguageDetected;
  self->_unsupportedLanguageDetected = 0;

  trpCandidateCreated = self->_trpCandidateCreated;
  self->_trpCandidateCreated = 0;

  audioTopologyReported = self->_audioTopologyReported;
  self->_audioTopologyReported = 0;

  intelligenceFlowRequestContext = self->_intelligenceFlowRequestContext;
  self->_intelligenceFlowRequestContext = 0;

  userSessionState = self->_userSessionState;
  self->_userSessionState = 0;

  serverExecutionValuesReported = self->_serverExecutionValuesReported;
  self->_serverExecutionValuesReported = 0;

  v44 = 103;
  if (!contextCopy)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  cdmBridgeContext = self->_cdmBridgeContext;
  self->_cdmBridgeContext = contextCopy;
}

- (void)deleteAsrBridgeContext
{
  if (self->_whichEvent_Type == 102)
  {
    self->_whichEvent_Type = 0;
    self->_asrBridgeContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setAsrBridgeContext:(id)context
{
  contextCopy = context;
  requestContext = self->_requestContext;
  self->_requestContext = 0;

  cdmBridgeContext = self->_cdmBridgeContext;
  self->_cdmBridgeContext = 0;

  executionBridgeContext = self->_executionBridgeContext;
  self->_executionBridgeContext = 0;

  serverFallbackContext = self->_serverFallbackContext;
  self->_serverFallbackContext = 0;

  flowOutputSubmitted = self->_flowOutputSubmitted;
  self->_flowOutputSubmitted = 0;

  resultCandidate = self->_resultCandidate;
  self->_resultCandidate = 0;

  resultSelected = self->_resultSelected;
  self->_resultSelected = 0;

  contextSubmissionMessage = self->_contextSubmissionMessage;
  self->_contextSubmissionMessage = 0;

  availableAssets = self->_availableAssets;
  self->_availableAssets = 0;

  orchDeviceDynamicContext = self->_orchDeviceDynamicContext;
  self->_orchDeviceDynamicContext = 0;

  pommesBridgeContext = self->_pommesBridgeContext;
  self->_pommesBridgeContext = 0;

  muxBridgeContext = self->_muxBridgeContext;
  self->_muxBridgeContext = 0;

  multiUserResultCandidate = self->_multiUserResultCandidate;
  self->_multiUserResultCandidate = 0;

  multiUserResultSelected = self->_multiUserResultSelected;
  self->_multiUserResultSelected = 0;

  aceCommandContext = self->_aceCommandContext;
  self->_aceCommandContext = 0;

  trpFinalized = self->_trpFinalized;
  self->_trpFinalized = 0;

  requestMitigated = self->_requestMitigated;
  self->_requestMitigated = 0;

  nlv3ServerFallbackDeprecated = self->_nlv3ServerFallbackDeprecated;
  self->_nlv3ServerFallbackDeprecated = 0;

  uiActivationContext = self->_uiActivationContext;
  self->_uiActivationContext = 0;

  trpCandidateReceived = self->_trpCandidateReceived;
  self->_trpCandidateReceived = 0;

  identityBridgeRequestContext = self->_identityBridgeRequestContext;
  self->_identityBridgeRequestContext = 0;

  assetSetsReported = self->_assetSetsReported;
  self->_assetSetsReported = 0;

  candidateRequestContext = self->_candidateRequestContext;
  self->_candidateRequestContext = 0;

  powerContextPolicyReported = self->_powerContextPolicyReported;
  self->_powerContextPolicyReported = 0;

  executeOnRemoteRequestContext = self->_executeOnRemoteRequestContext;
  self->_executeOnRemoteRequestContext = 0;

  assistantdLaunchMetadataReported = self->_assistantdLaunchMetadataReported;
  self->_assistantdLaunchMetadataReported = 0;

  intelligenceFlowQuerySent = self->_intelligenceFlowQuerySent;
  self->_intelligenceFlowQuerySent = 0;

  subRequestContext = self->_subRequestContext;
  self->_subRequestContext = 0;

  routerRewrittenUtterance = self->_routerRewrittenUtterance;
  self->_routerRewrittenUtterance = 0;

  nlRouterBridgeContext = self->_nlRouterBridgeContext;
  self->_nlRouterBridgeContext = 0;

  shimToolContext = self->_shimToolContext;
  self->_shimToolContext = 0;

  subRequestFallback = self->_subRequestFallback;
  self->_subRequestFallback = 0;

  nlRouterBridgeSubComponentContext = self->_nlRouterBridgeSubComponentContext;
  self->_nlRouterBridgeSubComponentContext = 0;

  unsupportedLanguageDetected = self->_unsupportedLanguageDetected;
  self->_unsupportedLanguageDetected = 0;

  trpCandidateCreated = self->_trpCandidateCreated;
  self->_trpCandidateCreated = 0;

  audioTopologyReported = self->_audioTopologyReported;
  self->_audioTopologyReported = 0;

  intelligenceFlowRequestContext = self->_intelligenceFlowRequestContext;
  self->_intelligenceFlowRequestContext = 0;

  userSessionState = self->_userSessionState;
  self->_userSessionState = 0;

  serverExecutionValuesReported = self->_serverExecutionValuesReported;
  self->_serverExecutionValuesReported = 0;

  v44 = 102;
  if (!contextCopy)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  asrBridgeContext = self->_asrBridgeContext;
  self->_asrBridgeContext = contextCopy;
}

- (void)deleteRequestContext
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_requestContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setRequestContext:(id)context
{
  contextCopy = context;
  asrBridgeContext = self->_asrBridgeContext;
  self->_asrBridgeContext = 0;

  cdmBridgeContext = self->_cdmBridgeContext;
  self->_cdmBridgeContext = 0;

  executionBridgeContext = self->_executionBridgeContext;
  self->_executionBridgeContext = 0;

  serverFallbackContext = self->_serverFallbackContext;
  self->_serverFallbackContext = 0;

  flowOutputSubmitted = self->_flowOutputSubmitted;
  self->_flowOutputSubmitted = 0;

  resultCandidate = self->_resultCandidate;
  self->_resultCandidate = 0;

  resultSelected = self->_resultSelected;
  self->_resultSelected = 0;

  contextSubmissionMessage = self->_contextSubmissionMessage;
  self->_contextSubmissionMessage = 0;

  availableAssets = self->_availableAssets;
  self->_availableAssets = 0;

  orchDeviceDynamicContext = self->_orchDeviceDynamicContext;
  self->_orchDeviceDynamicContext = 0;

  pommesBridgeContext = self->_pommesBridgeContext;
  self->_pommesBridgeContext = 0;

  muxBridgeContext = self->_muxBridgeContext;
  self->_muxBridgeContext = 0;

  multiUserResultCandidate = self->_multiUserResultCandidate;
  self->_multiUserResultCandidate = 0;

  multiUserResultSelected = self->_multiUserResultSelected;
  self->_multiUserResultSelected = 0;

  aceCommandContext = self->_aceCommandContext;
  self->_aceCommandContext = 0;

  trpFinalized = self->_trpFinalized;
  self->_trpFinalized = 0;

  requestMitigated = self->_requestMitigated;
  self->_requestMitigated = 0;

  nlv3ServerFallbackDeprecated = self->_nlv3ServerFallbackDeprecated;
  self->_nlv3ServerFallbackDeprecated = 0;

  uiActivationContext = self->_uiActivationContext;
  self->_uiActivationContext = 0;

  trpCandidateReceived = self->_trpCandidateReceived;
  self->_trpCandidateReceived = 0;

  identityBridgeRequestContext = self->_identityBridgeRequestContext;
  self->_identityBridgeRequestContext = 0;

  assetSetsReported = self->_assetSetsReported;
  self->_assetSetsReported = 0;

  candidateRequestContext = self->_candidateRequestContext;
  self->_candidateRequestContext = 0;

  powerContextPolicyReported = self->_powerContextPolicyReported;
  self->_powerContextPolicyReported = 0;

  executeOnRemoteRequestContext = self->_executeOnRemoteRequestContext;
  self->_executeOnRemoteRequestContext = 0;

  assistantdLaunchMetadataReported = self->_assistantdLaunchMetadataReported;
  self->_assistantdLaunchMetadataReported = 0;

  intelligenceFlowQuerySent = self->_intelligenceFlowQuerySent;
  self->_intelligenceFlowQuerySent = 0;

  subRequestContext = self->_subRequestContext;
  self->_subRequestContext = 0;

  routerRewrittenUtterance = self->_routerRewrittenUtterance;
  self->_routerRewrittenUtterance = 0;

  nlRouterBridgeContext = self->_nlRouterBridgeContext;
  self->_nlRouterBridgeContext = 0;

  shimToolContext = self->_shimToolContext;
  self->_shimToolContext = 0;

  subRequestFallback = self->_subRequestFallback;
  self->_subRequestFallback = 0;

  nlRouterBridgeSubComponentContext = self->_nlRouterBridgeSubComponentContext;
  self->_nlRouterBridgeSubComponentContext = 0;

  unsupportedLanguageDetected = self->_unsupportedLanguageDetected;
  self->_unsupportedLanguageDetected = 0;

  trpCandidateCreated = self->_trpCandidateCreated;
  self->_trpCandidateCreated = 0;

  audioTopologyReported = self->_audioTopologyReported;
  self->_audioTopologyReported = 0;

  intelligenceFlowRequestContext = self->_intelligenceFlowRequestContext;
  self->_intelligenceFlowRequestContext = 0;

  userSessionState = self->_userSessionState;
  self->_userSessionState = 0;

  serverExecutionValuesReported = self->_serverExecutionValuesReported;
  self->_serverExecutionValuesReported = 0;

  v44 = 101;
  if (!contextCopy)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  requestContext = self->_requestContext;
  self->_requestContext = contextCopy;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v134.receiver = self;
  v134.super_class = ORCHSchemaORCHClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v134 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(ORCHSchemaORCHClientEvent *)self deleteRouterRewrittenUtterance];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(ORCHSchemaORCHClientEvent *)self deleteRouterRewrittenUtterance];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(ORCHSchemaORCHClientEvent *)self deleteRouterRewrittenUtterance];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(ORCHSchemaORCHClientEvent *)self deleteRouterRewrittenUtterance];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(ORCHSchemaORCHClientEvent *)self deleteRouterRewrittenUtterance];
  }

  eventMetadata = [(ORCHSchemaORCHClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteEventMetadata];
  }

  resourceUtilizationMetadata = [(ORCHSchemaORCHClientEvent *)self resourceUtilizationMetadata];
  v10 = [resourceUtilizationMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteResourceUtilizationMetadata];
  }

  requestContext = [(ORCHSchemaORCHClientEvent *)self requestContext];
  v13 = [requestContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteRequestContext];
  }

  asrBridgeContext = [(ORCHSchemaORCHClientEvent *)self asrBridgeContext];
  v16 = [asrBridgeContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteAsrBridgeContext];
  }

  cdmBridgeContext = [(ORCHSchemaORCHClientEvent *)self cdmBridgeContext];
  v19 = [cdmBridgeContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteCdmBridgeContext];
  }

  executionBridgeContext = [(ORCHSchemaORCHClientEvent *)self executionBridgeContext];
  v22 = [executionBridgeContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteExecutionBridgeContext];
  }

  serverFallbackContext = [(ORCHSchemaORCHClientEvent *)self serverFallbackContext];
  v25 = [serverFallbackContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage7 = [v25 suppressMessage];

  if (suppressMessage7)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteServerFallbackContext];
  }

  flowOutputSubmitted = [(ORCHSchemaORCHClientEvent *)self flowOutputSubmitted];
  v28 = [flowOutputSubmitted applySensitiveConditionsPolicy:policyCopy];
  suppressMessage8 = [v28 suppressMessage];

  if (suppressMessage8)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteFlowOutputSubmitted];
  }

  resultCandidate = [(ORCHSchemaORCHClientEvent *)self resultCandidate];
  v31 = [resultCandidate applySensitiveConditionsPolicy:policyCopy];
  suppressMessage9 = [v31 suppressMessage];

  if (suppressMessage9)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteResultCandidate];
  }

  resultSelected = [(ORCHSchemaORCHClientEvent *)self resultSelected];
  v34 = [resultSelected applySensitiveConditionsPolicy:policyCopy];
  suppressMessage10 = [v34 suppressMessage];

  if (suppressMessage10)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteResultSelected];
  }

  contextSubmissionMessage = [(ORCHSchemaORCHClientEvent *)self contextSubmissionMessage];
  v37 = [contextSubmissionMessage applySensitiveConditionsPolicy:policyCopy];
  suppressMessage11 = [v37 suppressMessage];

  if (suppressMessage11)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteContextSubmissionMessage];
  }

  availableAssets = [(ORCHSchemaORCHClientEvent *)self availableAssets];
  v40 = [availableAssets applySensitiveConditionsPolicy:policyCopy];
  suppressMessage12 = [v40 suppressMessage];

  if (suppressMessage12)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteAvailableAssets];
  }

  orchDeviceDynamicContext = [(ORCHSchemaORCHClientEvent *)self orchDeviceDynamicContext];
  v43 = [orchDeviceDynamicContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage13 = [v43 suppressMessage];

  if (suppressMessage13)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteOrchDeviceDynamicContext];
  }

  pommesBridgeContext = [(ORCHSchemaORCHClientEvent *)self pommesBridgeContext];
  v46 = [pommesBridgeContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage14 = [v46 suppressMessage];

  if (suppressMessage14)
  {
    [(ORCHSchemaORCHClientEvent *)self deletePommesBridgeContext];
  }

  muxBridgeContext = [(ORCHSchemaORCHClientEvent *)self muxBridgeContext];
  v49 = [muxBridgeContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage15 = [v49 suppressMessage];

  if (suppressMessage15)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteMuxBridgeContext];
  }

  multiUserResultCandidate = [(ORCHSchemaORCHClientEvent *)self multiUserResultCandidate];
  v52 = [multiUserResultCandidate applySensitiveConditionsPolicy:policyCopy];
  suppressMessage16 = [v52 suppressMessage];

  if (suppressMessage16)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteMultiUserResultCandidate];
  }

  multiUserResultSelected = [(ORCHSchemaORCHClientEvent *)self multiUserResultSelected];
  v55 = [multiUserResultSelected applySensitiveConditionsPolicy:policyCopy];
  suppressMessage17 = [v55 suppressMessage];

  if (suppressMessage17)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteMultiUserResultSelected];
  }

  aceCommandContext = [(ORCHSchemaORCHClientEvent *)self aceCommandContext];
  v58 = [aceCommandContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage18 = [v58 suppressMessage];

  if (suppressMessage18)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteAceCommandContext];
  }

  trpFinalized = [(ORCHSchemaORCHClientEvent *)self trpFinalized];
  v61 = [trpFinalized applySensitiveConditionsPolicy:policyCopy];
  suppressMessage19 = [v61 suppressMessage];

  if (suppressMessage19)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteTrpFinalized];
  }

  requestMitigated = [(ORCHSchemaORCHClientEvent *)self requestMitigated];
  v64 = [requestMitigated applySensitiveConditionsPolicy:policyCopy];
  suppressMessage20 = [v64 suppressMessage];

  if (suppressMessage20)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteRequestMitigated];
  }

  nlv3ServerFallbackDeprecated = [(ORCHSchemaORCHClientEvent *)self nlv3ServerFallbackDeprecated];
  v67 = [nlv3ServerFallbackDeprecated applySensitiveConditionsPolicy:policyCopy];
  suppressMessage21 = [v67 suppressMessage];

  if (suppressMessage21)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteNlv3ServerFallbackDeprecated];
  }

  uiActivationContext = [(ORCHSchemaORCHClientEvent *)self uiActivationContext];
  v70 = [uiActivationContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage22 = [v70 suppressMessage];

  if (suppressMessage22)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteUiActivationContext];
  }

  trpCandidateReceived = [(ORCHSchemaORCHClientEvent *)self trpCandidateReceived];
  v73 = [trpCandidateReceived applySensitiveConditionsPolicy:policyCopy];
  suppressMessage23 = [v73 suppressMessage];

  if (suppressMessage23)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteTrpCandidateReceived];
  }

  identityBridgeRequestContext = [(ORCHSchemaORCHClientEvent *)self identityBridgeRequestContext];
  v76 = [identityBridgeRequestContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage24 = [v76 suppressMessage];

  if (suppressMessage24)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteIdentityBridgeRequestContext];
  }

  assetSetsReported = [(ORCHSchemaORCHClientEvent *)self assetSetsReported];
  v79 = [assetSetsReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage25 = [v79 suppressMessage];

  if (suppressMessage25)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteAssetSetsReported];
  }

  candidateRequestContext = [(ORCHSchemaORCHClientEvent *)self candidateRequestContext];
  v82 = [candidateRequestContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage26 = [v82 suppressMessage];

  if (suppressMessage26)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteCandidateRequestContext];
  }

  powerContextPolicyReported = [(ORCHSchemaORCHClientEvent *)self powerContextPolicyReported];
  v85 = [powerContextPolicyReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage27 = [v85 suppressMessage];

  if (suppressMessage27)
  {
    [(ORCHSchemaORCHClientEvent *)self deletePowerContextPolicyReported];
  }

  executeOnRemoteRequestContext = [(ORCHSchemaORCHClientEvent *)self executeOnRemoteRequestContext];
  v88 = [executeOnRemoteRequestContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage28 = [v88 suppressMessage];

  if (suppressMessage28)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteExecuteOnRemoteRequestContext];
  }

  assistantdLaunchMetadataReported = [(ORCHSchemaORCHClientEvent *)self assistantdLaunchMetadataReported];
  v91 = [assistantdLaunchMetadataReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage29 = [v91 suppressMessage];

  if (suppressMessage29)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteAssistantdLaunchMetadataReported];
  }

  intelligenceFlowQuerySent = [(ORCHSchemaORCHClientEvent *)self intelligenceFlowQuerySent];
  v94 = [intelligenceFlowQuerySent applySensitiveConditionsPolicy:policyCopy];
  suppressMessage30 = [v94 suppressMessage];

  if (suppressMessage30)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteIntelligenceFlowQuerySent];
  }

  subRequestContext = [(ORCHSchemaORCHClientEvent *)self subRequestContext];
  v97 = [subRequestContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage31 = [v97 suppressMessage];

  if (suppressMessage31)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteSubRequestContext];
  }

  routerRewrittenUtterance = [(ORCHSchemaORCHClientEvent *)self routerRewrittenUtterance];
  v100 = [routerRewrittenUtterance applySensitiveConditionsPolicy:policyCopy];
  suppressMessage32 = [v100 suppressMessage];

  if (suppressMessage32)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteRouterRewrittenUtterance];
  }

  nlRouterBridgeContext = [(ORCHSchemaORCHClientEvent *)self nlRouterBridgeContext];
  v103 = [nlRouterBridgeContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage33 = [v103 suppressMessage];

  if (suppressMessage33)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteNlRouterBridgeContext];
  }

  shimToolContext = [(ORCHSchemaORCHClientEvent *)self shimToolContext];
  v106 = [shimToolContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage34 = [v106 suppressMessage];

  if (suppressMessage34)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteShimToolContext];
  }

  subRequestFallback = [(ORCHSchemaORCHClientEvent *)self subRequestFallback];
  v109 = [subRequestFallback applySensitiveConditionsPolicy:policyCopy];
  suppressMessage35 = [v109 suppressMessage];

  if (suppressMessage35)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteSubRequestFallback];
  }

  nlRouterBridgeSubComponentContext = [(ORCHSchemaORCHClientEvent *)self nlRouterBridgeSubComponentContext];
  v112 = [nlRouterBridgeSubComponentContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage36 = [v112 suppressMessage];

  if (suppressMessage36)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteNlRouterBridgeSubComponentContext];
  }

  unsupportedLanguageDetected = [(ORCHSchemaORCHClientEvent *)self unsupportedLanguageDetected];
  v115 = [unsupportedLanguageDetected applySensitiveConditionsPolicy:policyCopy];
  suppressMessage37 = [v115 suppressMessage];

  if (suppressMessage37)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteUnsupportedLanguageDetected];
  }

  trpCandidateCreated = [(ORCHSchemaORCHClientEvent *)self trpCandidateCreated];
  v118 = [trpCandidateCreated applySensitiveConditionsPolicy:policyCopy];
  suppressMessage38 = [v118 suppressMessage];

  if (suppressMessage38)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteTrpCandidateCreated];
  }

  audioTopologyReported = [(ORCHSchemaORCHClientEvent *)self audioTopologyReported];
  v121 = [audioTopologyReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage39 = [v121 suppressMessage];

  if (suppressMessage39)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteAudioTopologyReported];
  }

  intelligenceFlowRequestContext = [(ORCHSchemaORCHClientEvent *)self intelligenceFlowRequestContext];
  v124 = [intelligenceFlowRequestContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage40 = [v124 suppressMessage];

  if (suppressMessage40)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteIntelligenceFlowRequestContext];
  }

  userSessionState = [(ORCHSchemaORCHClientEvent *)self userSessionState];
  v127 = [userSessionState applySensitiveConditionsPolicy:policyCopy];
  suppressMessage41 = [v127 suppressMessage];

  if (suppressMessage41)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteUserSessionState];
  }

  serverExecutionValuesReported = [(ORCHSchemaORCHClientEvent *)self serverExecutionValuesReported];
  v130 = [serverExecutionValuesReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage42 = [v130 suppressMessage];

  if (suppressMessage42)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteServerExecutionValuesReported];
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
  eventMetadata = [(ORCHSchemaORCHClientEvent *)self eventMetadata];
  requestId = [eventMetadata requestId];

  if (requestId && ([requestId value], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    value = [requestId value];
    v7 = [value length] != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)getComponentId
{
  eventMetadata = [(ORCHSchemaORCHClientEvent *)self eventMetadata];
  requestId = [eventMetadata requestId];

  if (!requestId)
  {
    goto LABEL_5;
  }

  value = [requestId value];
  if (!value)
  {
    goto LABEL_6;
  }

  value2 = [requestId value];
  v6 = [value2 length];

  if (v6)
  {
    value = requestId;
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
  whichEvent_Type = [(ORCHSchemaORCHClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 0x27)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78EA658[whichEvent_Type - 101]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)tag
{
  if (tag - 101 > 0x27)
  {
    return 0;
  }

  else
  {
    return off_1E78EA798[tag - 101];
  }
}

@end