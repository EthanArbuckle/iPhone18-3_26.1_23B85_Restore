@interface ORCHSchemaORCHClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
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
- (ORCHSchemaORCHClientEvent)initWithDictionary:(id)a3;
- (ORCHSchemaORCHClientEvent)initWithJSON:(id)a3;
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
- (id)applySensitiveConditionsPolicy:(id)a3;
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
- (void)setAceCommandContext:(id)a3;
- (void)setAsrBridgeContext:(id)a3;
- (void)setAssetSetsReported:(id)a3;
- (void)setAssistantdLaunchMetadataReported:(id)a3;
- (void)setAudioTopologyReported:(id)a3;
- (void)setAvailableAssets:(id)a3;
- (void)setCandidateRequestContext:(id)a3;
- (void)setCdmBridgeContext:(id)a3;
- (void)setContextSubmissionMessage:(id)a3;
- (void)setExecuteOnRemoteRequestContext:(id)a3;
- (void)setExecutionBridgeContext:(id)a3;
- (void)setFlowOutputSubmitted:(id)a3;
- (void)setIdentityBridgeRequestContext:(id)a3;
- (void)setIntelligenceFlowQuerySent:(id)a3;
- (void)setIntelligenceFlowRequestContext:(id)a3;
- (void)setMultiUserResultCandidate:(id)a3;
- (void)setMultiUserResultSelected:(id)a3;
- (void)setMuxBridgeContext:(id)a3;
- (void)setNlRouterBridgeContext:(id)a3;
- (void)setNlRouterBridgeSubComponentContext:(id)a3;
- (void)setNlv3ServerFallbackDeprecated:(id)a3;
- (void)setOrchDeviceDynamicContext:(id)a3;
- (void)setPommesBridgeContext:(id)a3;
- (void)setPowerContextPolicyReported:(id)a3;
- (void)setRequestContext:(id)a3;
- (void)setRequestMitigated:(id)a3;
- (void)setResultCandidate:(id)a3;
- (void)setResultSelected:(id)a3;
- (void)setRouterRewrittenUtterance:(id)a3;
- (void)setServerExecutionValuesReported:(id)a3;
- (void)setServerFallbackContext:(id)a3;
- (void)setShimToolContext:(id)a3;
- (void)setSubRequestContext:(id)a3;
- (void)setSubRequestFallback:(id)a3;
- (void)setTrpCandidateCreated:(id)a3;
- (void)setTrpCandidateReceived:(id)a3;
- (void)setTrpFinalized:(id)a3;
- (void)setUiActivationContext:(id)a3;
- (void)setUnsupportedLanguageDetected:(id)a3;
- (void)setUserSessionState:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ORCHSchemaORCHClientEvent

- (id)qualifiedMessageName
{
  v2 = [(ORCHSchemaORCHClientEvent *)self whichEvent_Type];
  if (v2 - 101 > 0x27)
  {
    return @"com.apple.aiml.siri.orch.ORCHClientEvent";
  }

  else
  {
    return off_1E78DE898[v2 - 101];
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

- (ORCHSchemaORCHClientEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v127.receiver = self;
  v127.super_class = ORCHSchemaORCHClientEvent;
  v5 = [(ORCHSchemaORCHClientEvent *)&v127 init];

  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ORCHSchemaORCHClientEventMetadata alloc] initWithDictionary:v6];
      [(ORCHSchemaORCHClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"resourceUtilizationMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[ORCHSchemaORCHResourceUtilizationMetadata alloc] initWithDictionary:v8];
      [(ORCHSchemaORCHClientEvent *)v5 setResourceUtilizationMetadata:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"requestContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[ORCHSchemaORCHRequestContext alloc] initWithDictionary:v10];
      [(ORCHSchemaORCHClientEvent *)v5 setRequestContext:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"asrBridgeContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[ORCHSchemaORCHASRBridgeContext alloc] initWithDictionary:v12];
      [(ORCHSchemaORCHClientEvent *)v5 setAsrBridgeContext:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"cdmBridgeContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[ORCHSchemaORCHCDMBridgeContext alloc] initWithDictionary:v14];
      [(ORCHSchemaORCHClientEvent *)v5 setCdmBridgeContext:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"executionBridgeContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[ORCHSchemaORCHExecutionBridgeContext alloc] initWithDictionary:v16];
      [(ORCHSchemaORCHClientEvent *)v5 setExecutionBridgeContext:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"serverFallbackContext"];
    objc_opt_class();
    v126 = v18;
    if (objc_opt_isKindOfClass())
    {
      v19 = [[ORCHSchemaORCHServerFallbackContext alloc] initWithDictionary:v18];
      [(ORCHSchemaORCHClientEvent *)v5 setServerFallbackContext:v19];
    }

    v20 = [v4 objectForKeyedSubscript:@"flowOutputSubmitted"];
    objc_opt_class();
    v125 = v20;
    if (objc_opt_isKindOfClass())
    {
      v21 = [[ORCHSchemaORCHFlowOutputSubmitted alloc] initWithDictionary:v20];
      [(ORCHSchemaORCHClientEvent *)v5 setFlowOutputSubmitted:v21];
    }

    v22 = [v4 objectForKeyedSubscript:@"resultCandidate"];
    objc_opt_class();
    v124 = v22;
    if (objc_opt_isKindOfClass())
    {
      v23 = [[ORCHSchemaORCHResultCandidateReceived alloc] initWithDictionary:v22];
      [(ORCHSchemaORCHClientEvent *)v5 setResultCandidate:v23];
    }

    v24 = [v4 objectForKeyedSubscript:@"resultSelected"];
    objc_opt_class();
    v123 = v24;
    if (objc_opt_isKindOfClass())
    {
      v25 = [[ORCHSchemaORCHResultSelected alloc] initWithDictionary:v24];
      [(ORCHSchemaORCHClientEvent *)v5 setResultSelected:v25];
    }

    v26 = [v4 objectForKeyedSubscript:@"contextSubmissionMessage"];
    objc_opt_class();
    v122 = v26;
    if (objc_opt_isKindOfClass())
    {
      v27 = [[ORCHSchemaORCHConversationContextSubmitted alloc] initWithDictionary:v26];
      [(ORCHSchemaORCHClientEvent *)v5 setContextSubmissionMessage:v27];
    }

    v28 = [v4 objectForKeyedSubscript:@"availableAssets"];
    objc_opt_class();
    v121 = v28;
    if (objc_opt_isKindOfClass())
    {
      v29 = [[ORCHSchemaORCHAssetsReported alloc] initWithDictionary:v28];
      [(ORCHSchemaORCHClientEvent *)v5 setAvailableAssets:v29];
    }

    v30 = [v4 objectForKeyedSubscript:@"orchDeviceDynamicContext"];
    objc_opt_class();
    v120 = v30;
    if (objc_opt_isKindOfClass())
    {
      v31 = [[ORCHSchemaORCHDeviceDynamicContext alloc] initWithDictionary:v30];
      [(ORCHSchemaORCHClientEvent *)v5 setOrchDeviceDynamicContext:v31];
    }

    v32 = [v4 objectForKeyedSubscript:@"pommesBridgeContext"];
    objc_opt_class();
    v119 = v32;
    if (objc_opt_isKindOfClass())
    {
      v33 = [[ORCHSchemaORCHPommesBridgeContext alloc] initWithDictionary:v32];
      [(ORCHSchemaORCHClientEvent *)v5 setPommesBridgeContext:v33];
    }

    v34 = [v4 objectForKeyedSubscript:@"muxBridgeContext"];
    objc_opt_class();
    v118 = v34;
    if (objc_opt_isKindOfClass())
    {
      v35 = [[ORCHSchemaORCHMUXBridgeContext alloc] initWithDictionary:v34];
      [(ORCHSchemaORCHClientEvent *)v5 setMuxBridgeContext:v35];
    }

    v36 = [v4 objectForKeyedSubscript:@"multiUserResultCandidate"];
    objc_opt_class();
    v117 = v36;
    if (objc_opt_isKindOfClass())
    {
      v37 = [[ORCHSchemaORCHMultiUserResultCandidateReceived alloc] initWithDictionary:v36];
      [(ORCHSchemaORCHClientEvent *)v5 setMultiUserResultCandidate:v37];
    }

    v38 = [v4 objectForKeyedSubscript:@"multiUserResultSelected"];
    objc_opt_class();
    v116 = v38;
    if (objc_opt_isKindOfClass())
    {
      v39 = [[ORCHSchemaORCHMultiUserResultCandidateSelected alloc] initWithDictionary:v38];
      [(ORCHSchemaORCHClientEvent *)v5 setMultiUserResultSelected:v39];
    }

    v40 = [v4 objectForKeyedSubscript:@"aceCommandContext"];
    objc_opt_class();
    v115 = v40;
    if (objc_opt_isKindOfClass())
    {
      v41 = [[ORCHSchemaORCHAceCommandContext alloc] initWithDictionary:v40];
      [(ORCHSchemaORCHClientEvent *)v5 setAceCommandContext:v41];
    }

    v42 = [v4 objectForKeyedSubscript:@"trpFinalized"];
    objc_opt_class();
    v114 = v42;
    if (objc_opt_isKindOfClass())
    {
      v43 = [[ORCHSchemaORCHTRPFinalized alloc] initWithDictionary:v42];
      [(ORCHSchemaORCHClientEvent *)v5 setTrpFinalized:v43];
    }

    v44 = [v4 objectForKeyedSubscript:@"requestMitigated"];
    objc_opt_class();
    v113 = v44;
    if (objc_opt_isKindOfClass())
    {
      v45 = [[ORCHSchemaORCHRequestMitigated alloc] initWithDictionary:v44];
      [(ORCHSchemaORCHClientEvent *)v5 setRequestMitigated:v45];
    }

    v46 = [v4 objectForKeyedSubscript:@"nlv3ServerFallbackDeprecated"];
    objc_opt_class();
    v112 = v46;
    if (objc_opt_isKindOfClass())
    {
      v47 = [[ORCHSchemaORCHNLV3ServerFallbackDeprecated alloc] initWithDictionary:v46];
      [(ORCHSchemaORCHClientEvent *)v5 setNlv3ServerFallbackDeprecated:v47];
    }

    v48 = [v4 objectForKeyedSubscript:@"uiActivationContext"];
    objc_opt_class();
    v111 = v48;
    if (objc_opt_isKindOfClass())
    {
      v49 = [[ORCHSchemaORCHUIActivationContext alloc] initWithDictionary:v48];
      [(ORCHSchemaORCHClientEvent *)v5 setUiActivationContext:v49];
    }

    v50 = [v4 objectForKeyedSubscript:@"trpCandidateReceived"];
    objc_opt_class();
    v110 = v50;
    if (objc_opt_isKindOfClass())
    {
      v51 = [[ORCHSchemaORCHTRPCandidateReceived alloc] initWithDictionary:v50];
      [(ORCHSchemaORCHClientEvent *)v5 setTrpCandidateReceived:v51];
    }

    v52 = [v4 objectForKeyedSubscript:@"identityBridgeRequestContext"];
    objc_opt_class();
    v109 = v52;
    if (objc_opt_isKindOfClass())
    {
      v53 = [[ORCHSchemaORCHIdentityBridgeRequestContext alloc] initWithDictionary:v52];
      [(ORCHSchemaORCHClientEvent *)v5 setIdentityBridgeRequestContext:v53];
    }

    v54 = [v4 objectForKeyedSubscript:@"assetSetsReported"];
    objc_opt_class();
    v108 = v54;
    if (objc_opt_isKindOfClass())
    {
      v55 = [[ORCHSchemaORCHAssetSetsReported alloc] initWithDictionary:v54];
      [(ORCHSchemaORCHClientEvent *)v5 setAssetSetsReported:v55];
    }

    v56 = [v4 objectForKeyedSubscript:@"candidateRequestContext"];
    objc_opt_class();
    v107 = v56;
    if (objc_opt_isKindOfClass())
    {
      v57 = [[ORCHSchemaORCHCandidateRequestContext alloc] initWithDictionary:v56];
      [(ORCHSchemaORCHClientEvent *)v5 setCandidateRequestContext:v57];
    }

    v58 = [v4 objectForKeyedSubscript:@"powerContextPolicyReported"];
    objc_opt_class();
    v106 = v58;
    if (objc_opt_isKindOfClass())
    {
      v59 = [[ORCHSchemaORCHPowerContextPolicyReported alloc] initWithDictionary:v58];
      [(ORCHSchemaORCHClientEvent *)v5 setPowerContextPolicyReported:v59];
    }

    v60 = [v4 objectForKeyedSubscript:@"executeOnRemoteRequestContext"];
    objc_opt_class();
    v105 = v60;
    if (objc_opt_isKindOfClass())
    {
      v61 = [[ORCHSchemaORCHExecuteOnRemoteRequestContext alloc] initWithDictionary:v60];
      [(ORCHSchemaORCHClientEvent *)v5 setExecuteOnRemoteRequestContext:v61];
    }

    v62 = [v4 objectForKeyedSubscript:@"assistantdLaunchMetadataReported"];
    objc_opt_class();
    v104 = v62;
    if (objc_opt_isKindOfClass())
    {
      v63 = [[ORCHSchemaORCHAssistantDaemonLaunchMetadataReported alloc] initWithDictionary:v62];
      [(ORCHSchemaORCHClientEvent *)v5 setAssistantdLaunchMetadataReported:v63];
    }

    v64 = [v4 objectForKeyedSubscript:@"intelligenceFlowQuerySent"];
    objc_opt_class();
    v103 = v64;
    if (objc_opt_isKindOfClass())
    {
      v65 = [[ORCHSchemaORCHIntelligenceFlowQuerySent alloc] initWithDictionary:v64];
      [(ORCHSchemaORCHClientEvent *)v5 setIntelligenceFlowQuerySent:v65];
    }

    v66 = [v4 objectForKeyedSubscript:@"subRequestContext"];
    objc_opt_class();
    v102 = v66;
    if (objc_opt_isKindOfClass())
    {
      v67 = [[ORCHSchemaORCHSubRequestContext alloc] initWithDictionary:v66];
      [(ORCHSchemaORCHClientEvent *)v5 setSubRequestContext:v67];
    }

    v68 = [v4 objectForKeyedSubscript:@"routerRewrittenUtterance"];
    objc_opt_class();
    v101 = v68;
    if (objc_opt_isKindOfClass())
    {
      v69 = [[ORCHSchemaNLRouterRewrittenUtteranceTier1 alloc] initWithDictionary:v68];
      [(ORCHSchemaORCHClientEvent *)v5 setRouterRewrittenUtterance:v69];
    }

    v70 = [v4 objectForKeyedSubscript:@"nlRouterBridgeContext"];
    objc_opt_class();
    v100 = v70;
    if (objc_opt_isKindOfClass())
    {
      v71 = [[ORCHSchemaORCHNLRouterBridgeContext alloc] initWithDictionary:v70];
      [(ORCHSchemaORCHClientEvent *)v5 setNlRouterBridgeContext:v71];
    }

    v72 = [v4 objectForKeyedSubscript:@"shimToolContext"];
    objc_opt_class();
    v99 = v72;
    if (objc_opt_isKindOfClass())
    {
      v73 = [[ORCHSchemaORCHShimToolContext alloc] initWithDictionary:v72];
      [(ORCHSchemaORCHClientEvent *)v5 setShimToolContext:v73];
    }

    v97 = v8;
    v74 = [v4 objectForKeyedSubscript:@"subRequestFallback"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v75 = [[ORCHSchemaORCHIntelligenceFlowSubRequestFallback alloc] initWithDictionary:v74];
      [(ORCHSchemaORCHClientEvent *)v5 setSubRequestFallback:v75];
    }

    v96 = v10;
    v76 = [v4 objectForKeyedSubscript:{@"nlRouterBridgeSubComponentContext", v74}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v77 = [[ORCHSchemaORCHNLRouterBridgeSubComponentContext alloc] initWithDictionary:v76];
      [(ORCHSchemaORCHClientEvent *)v5 setNlRouterBridgeSubComponentContext:v77];
    }

    v95 = v12;
    v78 = [v4 objectForKeyedSubscript:@"unsupportedLanguageDetected"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v79 = [[ORCHSchemaORCHUnsupportedLanguageDetected alloc] initWithDictionary:v78];
      [(ORCHSchemaORCHClientEvent *)v5 setUnsupportedLanguageDetected:v79];
    }

    v94 = v14;
    v80 = [v4 objectForKeyedSubscript:@"trpCandidateCreated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v81 = [[ORCHSchemaORCHTRPCandidateCreated alloc] initWithDictionary:v80];
      [(ORCHSchemaORCHClientEvent *)v5 setTrpCandidateCreated:v81];
    }

    v93 = v16;
    v82 = [v4 objectForKeyedSubscript:@"audioTopologyReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v83 = [[ORCHSchemaORCHAudioTopologyReported alloc] initWithDictionary:v82];
      [(ORCHSchemaORCHClientEvent *)v5 setAudioTopologyReported:v83];
    }

    v98 = v6;
    v84 = [v4 objectForKeyedSubscript:@"intelligenceFlowRequestContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v85 = [[ORCHSchemaORCHIntelligenceFlowRequestContext alloc] initWithDictionary:v84];
      [(ORCHSchemaORCHClientEvent *)v5 setIntelligenceFlowRequestContext:v85];
    }

    v86 = [v4 objectForKeyedSubscript:@"userSessionState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v87 = [[ORCHSchemaORCHMUXUserSessionState alloc] initWithDictionary:v86];
      [(ORCHSchemaORCHClientEvent *)v5 setUserSessionState:v87];
    }

    v88 = [v4 objectForKeyedSubscript:@"serverExecutionValuesReported"];
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

- (ORCHSchemaORCHClientEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ORCHSchemaORCHClientEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ORCHSchemaORCHClientEvent *)self dictionaryRepresentation];
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
  if (self->_aceCommandContext)
  {
    v4 = [(ORCHSchemaORCHClientEvent *)self aceCommandContext];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"aceCommandContext"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"aceCommandContext"];
    }
  }

  if (self->_asrBridgeContext)
  {
    v7 = [(ORCHSchemaORCHClientEvent *)self asrBridgeContext];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"asrBridgeContext"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"asrBridgeContext"];
    }
  }

  if (self->_assetSetsReported)
  {
    v10 = [(ORCHSchemaORCHClientEvent *)self assetSetsReported];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"assetSetsReported"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"assetSetsReported"];
    }
  }

  if (self->_assistantdLaunchMetadataReported)
  {
    v13 = [(ORCHSchemaORCHClientEvent *)self assistantdLaunchMetadataReported];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"assistantdLaunchMetadataReported"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"assistantdLaunchMetadataReported"];
    }
  }

  if (self->_audioTopologyReported)
  {
    v16 = [(ORCHSchemaORCHClientEvent *)self audioTopologyReported];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"audioTopologyReported"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"audioTopologyReported"];
    }
  }

  if (self->_availableAssets)
  {
    v19 = [(ORCHSchemaORCHClientEvent *)self availableAssets];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"availableAssets"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"availableAssets"];
    }
  }

  if (self->_candidateRequestContext)
  {
    v22 = [(ORCHSchemaORCHClientEvent *)self candidateRequestContext];
    v23 = [v22 dictionaryRepresentation];
    if (v23)
    {
      [v3 setObject:v23 forKeyedSubscript:@"candidateRequestContext"];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v24 forKeyedSubscript:@"candidateRequestContext"];
    }
  }

  if (self->_cdmBridgeContext)
  {
    v25 = [(ORCHSchemaORCHClientEvent *)self cdmBridgeContext];
    v26 = [v25 dictionaryRepresentation];
    if (v26)
    {
      [v3 setObject:v26 forKeyedSubscript:@"cdmBridgeContext"];
    }

    else
    {
      v27 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v27 forKeyedSubscript:@"cdmBridgeContext"];
    }
  }

  if (self->_contextSubmissionMessage)
  {
    v28 = [(ORCHSchemaORCHClientEvent *)self contextSubmissionMessage];
    v29 = [v28 dictionaryRepresentation];
    if (v29)
    {
      [v3 setObject:v29 forKeyedSubscript:@"contextSubmissionMessage"];
    }

    else
    {
      v30 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v30 forKeyedSubscript:@"contextSubmissionMessage"];
    }
  }

  if (self->_eventMetadata)
  {
    v31 = [(ORCHSchemaORCHClientEvent *)self eventMetadata];
    v32 = [v31 dictionaryRepresentation];
    if (v32)
    {
      [v3 setObject:v32 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      v33 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v33 forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_executeOnRemoteRequestContext)
  {
    v34 = [(ORCHSchemaORCHClientEvent *)self executeOnRemoteRequestContext];
    v35 = [v34 dictionaryRepresentation];
    if (v35)
    {
      [v3 setObject:v35 forKeyedSubscript:@"executeOnRemoteRequestContext"];
    }

    else
    {
      v36 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v36 forKeyedSubscript:@"executeOnRemoteRequestContext"];
    }
  }

  if (self->_executionBridgeContext)
  {
    v37 = [(ORCHSchemaORCHClientEvent *)self executionBridgeContext];
    v38 = [v37 dictionaryRepresentation];
    if (v38)
    {
      [v3 setObject:v38 forKeyedSubscript:@"executionBridgeContext"];
    }

    else
    {
      v39 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v39 forKeyedSubscript:@"executionBridgeContext"];
    }
  }

  if (self->_flowOutputSubmitted)
  {
    v40 = [(ORCHSchemaORCHClientEvent *)self flowOutputSubmitted];
    v41 = [v40 dictionaryRepresentation];
    if (v41)
    {
      [v3 setObject:v41 forKeyedSubscript:@"flowOutputSubmitted"];
    }

    else
    {
      v42 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v42 forKeyedSubscript:@"flowOutputSubmitted"];
    }
  }

  if (self->_identityBridgeRequestContext)
  {
    v43 = [(ORCHSchemaORCHClientEvent *)self identityBridgeRequestContext];
    v44 = [v43 dictionaryRepresentation];
    if (v44)
    {
      [v3 setObject:v44 forKeyedSubscript:@"identityBridgeRequestContext"];
    }

    else
    {
      v45 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v45 forKeyedSubscript:@"identityBridgeRequestContext"];
    }
  }

  if (self->_intelligenceFlowQuerySent)
  {
    v46 = [(ORCHSchemaORCHClientEvent *)self intelligenceFlowQuerySent];
    v47 = [v46 dictionaryRepresentation];
    if (v47)
    {
      [v3 setObject:v47 forKeyedSubscript:@"intelligenceFlowQuerySent"];
    }

    else
    {
      v48 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v48 forKeyedSubscript:@"intelligenceFlowQuerySent"];
    }
  }

  if (self->_intelligenceFlowRequestContext)
  {
    v49 = [(ORCHSchemaORCHClientEvent *)self intelligenceFlowRequestContext];
    v50 = [v49 dictionaryRepresentation];
    if (v50)
    {
      [v3 setObject:v50 forKeyedSubscript:@"intelligenceFlowRequestContext"];
    }

    else
    {
      v51 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v51 forKeyedSubscript:@"intelligenceFlowRequestContext"];
    }
  }

  if (self->_multiUserResultCandidate)
  {
    v52 = [(ORCHSchemaORCHClientEvent *)self multiUserResultCandidate];
    v53 = [v52 dictionaryRepresentation];
    if (v53)
    {
      [v3 setObject:v53 forKeyedSubscript:@"multiUserResultCandidate"];
    }

    else
    {
      v54 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v54 forKeyedSubscript:@"multiUserResultCandidate"];
    }
  }

  if (self->_multiUserResultSelected)
  {
    v55 = [(ORCHSchemaORCHClientEvent *)self multiUserResultSelected];
    v56 = [v55 dictionaryRepresentation];
    if (v56)
    {
      [v3 setObject:v56 forKeyedSubscript:@"multiUserResultSelected"];
    }

    else
    {
      v57 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v57 forKeyedSubscript:@"multiUserResultSelected"];
    }
  }

  if (self->_muxBridgeContext)
  {
    v58 = [(ORCHSchemaORCHClientEvent *)self muxBridgeContext];
    v59 = [v58 dictionaryRepresentation];
    if (v59)
    {
      [v3 setObject:v59 forKeyedSubscript:@"muxBridgeContext"];
    }

    else
    {
      v60 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v60 forKeyedSubscript:@"muxBridgeContext"];
    }
  }

  if (self->_nlRouterBridgeContext)
  {
    v61 = [(ORCHSchemaORCHClientEvent *)self nlRouterBridgeContext];
    v62 = [v61 dictionaryRepresentation];
    if (v62)
    {
      [v3 setObject:v62 forKeyedSubscript:@"nlRouterBridgeContext"];
    }

    else
    {
      v63 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v63 forKeyedSubscript:@"nlRouterBridgeContext"];
    }
  }

  if (self->_nlRouterBridgeSubComponentContext)
  {
    v64 = [(ORCHSchemaORCHClientEvent *)self nlRouterBridgeSubComponentContext];
    v65 = [v64 dictionaryRepresentation];
    if (v65)
    {
      [v3 setObject:v65 forKeyedSubscript:@"nlRouterBridgeSubComponentContext"];
    }

    else
    {
      v66 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v66 forKeyedSubscript:@"nlRouterBridgeSubComponentContext"];
    }
  }

  if (self->_nlv3ServerFallbackDeprecated)
  {
    v67 = [(ORCHSchemaORCHClientEvent *)self nlv3ServerFallbackDeprecated];
    v68 = [v67 dictionaryRepresentation];
    if (v68)
    {
      [v3 setObject:v68 forKeyedSubscript:@"nlv3ServerFallbackDeprecated"];
    }

    else
    {
      v69 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v69 forKeyedSubscript:@"nlv3ServerFallbackDeprecated"];
    }
  }

  if (self->_orchDeviceDynamicContext)
  {
    v70 = [(ORCHSchemaORCHClientEvent *)self orchDeviceDynamicContext];
    v71 = [v70 dictionaryRepresentation];
    if (v71)
    {
      [v3 setObject:v71 forKeyedSubscript:@"orchDeviceDynamicContext"];
    }

    else
    {
      v72 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v72 forKeyedSubscript:@"orchDeviceDynamicContext"];
    }
  }

  if (self->_pommesBridgeContext)
  {
    v73 = [(ORCHSchemaORCHClientEvent *)self pommesBridgeContext];
    v74 = [v73 dictionaryRepresentation];
    if (v74)
    {
      [v3 setObject:v74 forKeyedSubscript:@"pommesBridgeContext"];
    }

    else
    {
      v75 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v75 forKeyedSubscript:@"pommesBridgeContext"];
    }
  }

  if (self->_powerContextPolicyReported)
  {
    v76 = [(ORCHSchemaORCHClientEvent *)self powerContextPolicyReported];
    v77 = [v76 dictionaryRepresentation];
    if (v77)
    {
      [v3 setObject:v77 forKeyedSubscript:@"powerContextPolicyReported"];
    }

    else
    {
      v78 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v78 forKeyedSubscript:@"powerContextPolicyReported"];
    }
  }

  if (self->_requestContext)
  {
    v79 = [(ORCHSchemaORCHClientEvent *)self requestContext];
    v80 = [v79 dictionaryRepresentation];
    if (v80)
    {
      [v3 setObject:v80 forKeyedSubscript:@"requestContext"];
    }

    else
    {
      v81 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v81 forKeyedSubscript:@"requestContext"];
    }
  }

  if (self->_requestMitigated)
  {
    v82 = [(ORCHSchemaORCHClientEvent *)self requestMitigated];
    v83 = [v82 dictionaryRepresentation];
    if (v83)
    {
      [v3 setObject:v83 forKeyedSubscript:@"requestMitigated"];
    }

    else
    {
      v84 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v84 forKeyedSubscript:@"requestMitigated"];
    }
  }

  if (self->_resourceUtilizationMetadata)
  {
    v85 = [(ORCHSchemaORCHClientEvent *)self resourceUtilizationMetadata];
    v86 = [v85 dictionaryRepresentation];
    if (v86)
    {
      [v3 setObject:v86 forKeyedSubscript:@"resourceUtilizationMetadata"];
    }

    else
    {
      v87 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v87 forKeyedSubscript:@"resourceUtilizationMetadata"];
    }
  }

  if (self->_resultCandidate)
  {
    v88 = [(ORCHSchemaORCHClientEvent *)self resultCandidate];
    v89 = [v88 dictionaryRepresentation];
    if (v89)
    {
      [v3 setObject:v89 forKeyedSubscript:@"resultCandidate"];
    }

    else
    {
      v90 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v90 forKeyedSubscript:@"resultCandidate"];
    }
  }

  if (self->_resultSelected)
  {
    v91 = [(ORCHSchemaORCHClientEvent *)self resultSelected];
    v92 = [v91 dictionaryRepresentation];
    if (v92)
    {
      [v3 setObject:v92 forKeyedSubscript:@"resultSelected"];
    }

    else
    {
      v93 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v93 forKeyedSubscript:@"resultSelected"];
    }
  }

  if (self->_routerRewrittenUtterance)
  {
    v94 = [(ORCHSchemaORCHClientEvent *)self routerRewrittenUtterance];
    v95 = [v94 dictionaryRepresentation];
    if (v95)
    {
      [v3 setObject:v95 forKeyedSubscript:@"routerRewrittenUtterance"];
    }

    else
    {
      v96 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v96 forKeyedSubscript:@"routerRewrittenUtterance"];
    }
  }

  if (self->_serverExecutionValuesReported)
  {
    v97 = [(ORCHSchemaORCHClientEvent *)self serverExecutionValuesReported];
    v98 = [v97 dictionaryRepresentation];
    if (v98)
    {
      [v3 setObject:v98 forKeyedSubscript:@"serverExecutionValuesReported"];
    }

    else
    {
      v99 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v99 forKeyedSubscript:@"serverExecutionValuesReported"];
    }
  }

  if (self->_serverFallbackContext)
  {
    v100 = [(ORCHSchemaORCHClientEvent *)self serverFallbackContext];
    v101 = [v100 dictionaryRepresentation];
    if (v101)
    {
      [v3 setObject:v101 forKeyedSubscript:@"serverFallbackContext"];
    }

    else
    {
      v102 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v102 forKeyedSubscript:@"serverFallbackContext"];
    }
  }

  if (self->_shimToolContext)
  {
    v103 = [(ORCHSchemaORCHClientEvent *)self shimToolContext];
    v104 = [v103 dictionaryRepresentation];
    if (v104)
    {
      [v3 setObject:v104 forKeyedSubscript:@"shimToolContext"];
    }

    else
    {
      v105 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v105 forKeyedSubscript:@"shimToolContext"];
    }
  }

  if (self->_subRequestContext)
  {
    v106 = [(ORCHSchemaORCHClientEvent *)self subRequestContext];
    v107 = [v106 dictionaryRepresentation];
    if (v107)
    {
      [v3 setObject:v107 forKeyedSubscript:@"subRequestContext"];
    }

    else
    {
      v108 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v108 forKeyedSubscript:@"subRequestContext"];
    }
  }

  if (self->_subRequestFallback)
  {
    v109 = [(ORCHSchemaORCHClientEvent *)self subRequestFallback];
    v110 = [v109 dictionaryRepresentation];
    if (v110)
    {
      [v3 setObject:v110 forKeyedSubscript:@"subRequestFallback"];
    }

    else
    {
      v111 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v111 forKeyedSubscript:@"subRequestFallback"];
    }
  }

  if (self->_trpCandidateCreated)
  {
    v112 = [(ORCHSchemaORCHClientEvent *)self trpCandidateCreated];
    v113 = [v112 dictionaryRepresentation];
    if (v113)
    {
      [v3 setObject:v113 forKeyedSubscript:@"trpCandidateCreated"];
    }

    else
    {
      v114 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v114 forKeyedSubscript:@"trpCandidateCreated"];
    }
  }

  if (self->_trpCandidateReceived)
  {
    v115 = [(ORCHSchemaORCHClientEvent *)self trpCandidateReceived];
    v116 = [v115 dictionaryRepresentation];
    if (v116)
    {
      [v3 setObject:v116 forKeyedSubscript:@"trpCandidateReceived"];
    }

    else
    {
      v117 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v117 forKeyedSubscript:@"trpCandidateReceived"];
    }
  }

  if (self->_trpFinalized)
  {
    v118 = [(ORCHSchemaORCHClientEvent *)self trpFinalized];
    v119 = [v118 dictionaryRepresentation];
    if (v119)
    {
      [v3 setObject:v119 forKeyedSubscript:@"trpFinalized"];
    }

    else
    {
      v120 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v120 forKeyedSubscript:@"trpFinalized"];
    }
  }

  if (self->_uiActivationContext)
  {
    v121 = [(ORCHSchemaORCHClientEvent *)self uiActivationContext];
    v122 = [v121 dictionaryRepresentation];
    if (v122)
    {
      [v3 setObject:v122 forKeyedSubscript:@"uiActivationContext"];
    }

    else
    {
      v123 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v123 forKeyedSubscript:@"uiActivationContext"];
    }
  }

  if (self->_unsupportedLanguageDetected)
  {
    v124 = [(ORCHSchemaORCHClientEvent *)self unsupportedLanguageDetected];
    v125 = [v124 dictionaryRepresentation];
    if (v125)
    {
      [v3 setObject:v125 forKeyedSubscript:@"unsupportedLanguageDetected"];
    }

    else
    {
      v126 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v126 forKeyedSubscript:@"unsupportedLanguageDetected"];
    }
  }

  if (self->_userSessionState)
  {
    v127 = [(ORCHSchemaORCHClientEvent *)self userSessionState];
    v128 = [v127 dictionaryRepresentation];
    if (v128)
    {
      [v3 setObject:v128 forKeyedSubscript:@"userSessionState"];
    }

    else
    {
      v129 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v129 forKeyedSubscript:@"userSessionState"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];
  v130 = v3;

  return v3;
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

  v6 = [(ORCHSchemaORCHClientEvent *)self eventMetadata];
  v7 = [v4 eventMetadata];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v8 = [(ORCHSchemaORCHClientEvent *)self eventMetadata];
  if (v8)
  {
    v9 = v8;
    v10 = [(ORCHSchemaORCHClientEvent *)self eventMetadata];
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

  v6 = [(ORCHSchemaORCHClientEvent *)self resourceUtilizationMetadata];
  v7 = [v4 resourceUtilizationMetadata];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v13 = [(ORCHSchemaORCHClientEvent *)self resourceUtilizationMetadata];
  if (v13)
  {
    v14 = v13;
    v15 = [(ORCHSchemaORCHClientEvent *)self resourceUtilizationMetadata];
    v16 = [v4 resourceUtilizationMetadata];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(ORCHSchemaORCHClientEvent *)self requestContext];
  v7 = [v4 requestContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v18 = [(ORCHSchemaORCHClientEvent *)self requestContext];
  if (v18)
  {
    v19 = v18;
    v20 = [(ORCHSchemaORCHClientEvent *)self requestContext];
    v21 = [v4 requestContext];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(ORCHSchemaORCHClientEvent *)self asrBridgeContext];
  v7 = [v4 asrBridgeContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v23 = [(ORCHSchemaORCHClientEvent *)self asrBridgeContext];
  if (v23)
  {
    v24 = v23;
    v25 = [(ORCHSchemaORCHClientEvent *)self asrBridgeContext];
    v26 = [v4 asrBridgeContext];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(ORCHSchemaORCHClientEvent *)self cdmBridgeContext];
  v7 = [v4 cdmBridgeContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v28 = [(ORCHSchemaORCHClientEvent *)self cdmBridgeContext];
  if (v28)
  {
    v29 = v28;
    v30 = [(ORCHSchemaORCHClientEvent *)self cdmBridgeContext];
    v31 = [v4 cdmBridgeContext];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(ORCHSchemaORCHClientEvent *)self executionBridgeContext];
  v7 = [v4 executionBridgeContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v33 = [(ORCHSchemaORCHClientEvent *)self executionBridgeContext];
  if (v33)
  {
    v34 = v33;
    v35 = [(ORCHSchemaORCHClientEvent *)self executionBridgeContext];
    v36 = [v4 executionBridgeContext];
    v37 = [v35 isEqual:v36];

    if (!v37)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(ORCHSchemaORCHClientEvent *)self serverFallbackContext];
  v7 = [v4 serverFallbackContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v38 = [(ORCHSchemaORCHClientEvent *)self serverFallbackContext];
  if (v38)
  {
    v39 = v38;
    v40 = [(ORCHSchemaORCHClientEvent *)self serverFallbackContext];
    v41 = [v4 serverFallbackContext];
    v42 = [v40 isEqual:v41];

    if (!v42)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(ORCHSchemaORCHClientEvent *)self flowOutputSubmitted];
  v7 = [v4 flowOutputSubmitted];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v43 = [(ORCHSchemaORCHClientEvent *)self flowOutputSubmitted];
  if (v43)
  {
    v44 = v43;
    v45 = [(ORCHSchemaORCHClientEvent *)self flowOutputSubmitted];
    v46 = [v4 flowOutputSubmitted];
    v47 = [v45 isEqual:v46];

    if (!v47)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(ORCHSchemaORCHClientEvent *)self resultCandidate];
  v7 = [v4 resultCandidate];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v48 = [(ORCHSchemaORCHClientEvent *)self resultCandidate];
  if (v48)
  {
    v49 = v48;
    v50 = [(ORCHSchemaORCHClientEvent *)self resultCandidate];
    v51 = [v4 resultCandidate];
    v52 = [v50 isEqual:v51];

    if (!v52)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(ORCHSchemaORCHClientEvent *)self resultSelected];
  v7 = [v4 resultSelected];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v53 = [(ORCHSchemaORCHClientEvent *)self resultSelected];
  if (v53)
  {
    v54 = v53;
    v55 = [(ORCHSchemaORCHClientEvent *)self resultSelected];
    v56 = [v4 resultSelected];
    v57 = [v55 isEqual:v56];

    if (!v57)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(ORCHSchemaORCHClientEvent *)self contextSubmissionMessage];
  v7 = [v4 contextSubmissionMessage];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v58 = [(ORCHSchemaORCHClientEvent *)self contextSubmissionMessage];
  if (v58)
  {
    v59 = v58;
    v60 = [(ORCHSchemaORCHClientEvent *)self contextSubmissionMessage];
    v61 = [v4 contextSubmissionMessage];
    v62 = [v60 isEqual:v61];

    if (!v62)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(ORCHSchemaORCHClientEvent *)self availableAssets];
  v7 = [v4 availableAssets];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v63 = [(ORCHSchemaORCHClientEvent *)self availableAssets];
  if (v63)
  {
    v64 = v63;
    v65 = [(ORCHSchemaORCHClientEvent *)self availableAssets];
    v66 = [v4 availableAssets];
    v67 = [v65 isEqual:v66];

    if (!v67)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(ORCHSchemaORCHClientEvent *)self orchDeviceDynamicContext];
  v7 = [v4 orchDeviceDynamicContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v68 = [(ORCHSchemaORCHClientEvent *)self orchDeviceDynamicContext];
  if (v68)
  {
    v69 = v68;
    v70 = [(ORCHSchemaORCHClientEvent *)self orchDeviceDynamicContext];
    v71 = [v4 orchDeviceDynamicContext];
    v72 = [v70 isEqual:v71];

    if (!v72)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(ORCHSchemaORCHClientEvent *)self pommesBridgeContext];
  v7 = [v4 pommesBridgeContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v73 = [(ORCHSchemaORCHClientEvent *)self pommesBridgeContext];
  if (v73)
  {
    v74 = v73;
    v75 = [(ORCHSchemaORCHClientEvent *)self pommesBridgeContext];
    v76 = [v4 pommesBridgeContext];
    v77 = [v75 isEqual:v76];

    if (!v77)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(ORCHSchemaORCHClientEvent *)self muxBridgeContext];
  v7 = [v4 muxBridgeContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v78 = [(ORCHSchemaORCHClientEvent *)self muxBridgeContext];
  if (v78)
  {
    v79 = v78;
    v80 = [(ORCHSchemaORCHClientEvent *)self muxBridgeContext];
    v81 = [v4 muxBridgeContext];
    v82 = [v80 isEqual:v81];

    if (!v82)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(ORCHSchemaORCHClientEvent *)self multiUserResultCandidate];
  v7 = [v4 multiUserResultCandidate];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v83 = [(ORCHSchemaORCHClientEvent *)self multiUserResultCandidate];
  if (v83)
  {
    v84 = v83;
    v85 = [(ORCHSchemaORCHClientEvent *)self multiUserResultCandidate];
    v86 = [v4 multiUserResultCandidate];
    v87 = [v85 isEqual:v86];

    if (!v87)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(ORCHSchemaORCHClientEvent *)self multiUserResultSelected];
  v7 = [v4 multiUserResultSelected];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v88 = [(ORCHSchemaORCHClientEvent *)self multiUserResultSelected];
  if (v88)
  {
    v89 = v88;
    v90 = [(ORCHSchemaORCHClientEvent *)self multiUserResultSelected];
    v91 = [v4 multiUserResultSelected];
    v92 = [v90 isEqual:v91];

    if (!v92)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(ORCHSchemaORCHClientEvent *)self aceCommandContext];
  v7 = [v4 aceCommandContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v93 = [(ORCHSchemaORCHClientEvent *)self aceCommandContext];
  if (v93)
  {
    v94 = v93;
    v95 = [(ORCHSchemaORCHClientEvent *)self aceCommandContext];
    v96 = [v4 aceCommandContext];
    v97 = [v95 isEqual:v96];

    if (!v97)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(ORCHSchemaORCHClientEvent *)self trpFinalized];
  v7 = [v4 trpFinalized];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v98 = [(ORCHSchemaORCHClientEvent *)self trpFinalized];
  if (v98)
  {
    v99 = v98;
    v100 = [(ORCHSchemaORCHClientEvent *)self trpFinalized];
    v101 = [v4 trpFinalized];
    v102 = [v100 isEqual:v101];

    if (!v102)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(ORCHSchemaORCHClientEvent *)self requestMitigated];
  v7 = [v4 requestMitigated];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v103 = [(ORCHSchemaORCHClientEvent *)self requestMitigated];
  if (v103)
  {
    v104 = v103;
    v105 = [(ORCHSchemaORCHClientEvent *)self requestMitigated];
    v106 = [v4 requestMitigated];
    v107 = [v105 isEqual:v106];

    if (!v107)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(ORCHSchemaORCHClientEvent *)self nlv3ServerFallbackDeprecated];
  v7 = [v4 nlv3ServerFallbackDeprecated];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v108 = [(ORCHSchemaORCHClientEvent *)self nlv3ServerFallbackDeprecated];
  if (v108)
  {
    v109 = v108;
    v110 = [(ORCHSchemaORCHClientEvent *)self nlv3ServerFallbackDeprecated];
    v111 = [v4 nlv3ServerFallbackDeprecated];
    v112 = [v110 isEqual:v111];

    if (!v112)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(ORCHSchemaORCHClientEvent *)self uiActivationContext];
  v7 = [v4 uiActivationContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v113 = [(ORCHSchemaORCHClientEvent *)self uiActivationContext];
  if (v113)
  {
    v114 = v113;
    v115 = [(ORCHSchemaORCHClientEvent *)self uiActivationContext];
    v116 = [v4 uiActivationContext];
    v117 = [v115 isEqual:v116];

    if (!v117)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(ORCHSchemaORCHClientEvent *)self trpCandidateReceived];
  v7 = [v4 trpCandidateReceived];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v118 = [(ORCHSchemaORCHClientEvent *)self trpCandidateReceived];
  if (v118)
  {
    v119 = v118;
    v120 = [(ORCHSchemaORCHClientEvent *)self trpCandidateReceived];
    v121 = [v4 trpCandidateReceived];
    v122 = [v120 isEqual:v121];

    if (!v122)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(ORCHSchemaORCHClientEvent *)self identityBridgeRequestContext];
  v7 = [v4 identityBridgeRequestContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v123 = [(ORCHSchemaORCHClientEvent *)self identityBridgeRequestContext];
  if (v123)
  {
    v124 = v123;
    v125 = [(ORCHSchemaORCHClientEvent *)self identityBridgeRequestContext];
    v126 = [v4 identityBridgeRequestContext];
    v127 = [v125 isEqual:v126];

    if (!v127)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(ORCHSchemaORCHClientEvent *)self assetSetsReported];
  v7 = [v4 assetSetsReported];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v128 = [(ORCHSchemaORCHClientEvent *)self assetSetsReported];
  if (v128)
  {
    v129 = v128;
    v130 = [(ORCHSchemaORCHClientEvent *)self assetSetsReported];
    v131 = [v4 assetSetsReported];
    v132 = [v130 isEqual:v131];

    if (!v132)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(ORCHSchemaORCHClientEvent *)self candidateRequestContext];
  v7 = [v4 candidateRequestContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v133 = [(ORCHSchemaORCHClientEvent *)self candidateRequestContext];
  if (v133)
  {
    v134 = v133;
    v135 = [(ORCHSchemaORCHClientEvent *)self candidateRequestContext];
    v136 = [v4 candidateRequestContext];
    v137 = [v135 isEqual:v136];

    if (!v137)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(ORCHSchemaORCHClientEvent *)self powerContextPolicyReported];
  v7 = [v4 powerContextPolicyReported];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v138 = [(ORCHSchemaORCHClientEvent *)self powerContextPolicyReported];
  if (v138)
  {
    v139 = v138;
    v140 = [(ORCHSchemaORCHClientEvent *)self powerContextPolicyReported];
    v141 = [v4 powerContextPolicyReported];
    v142 = [v140 isEqual:v141];

    if (!v142)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(ORCHSchemaORCHClientEvent *)self executeOnRemoteRequestContext];
  v7 = [v4 executeOnRemoteRequestContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v143 = [(ORCHSchemaORCHClientEvent *)self executeOnRemoteRequestContext];
  if (v143)
  {
    v144 = v143;
    v145 = [(ORCHSchemaORCHClientEvent *)self executeOnRemoteRequestContext];
    v146 = [v4 executeOnRemoteRequestContext];
    v147 = [v145 isEqual:v146];

    if (!v147)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(ORCHSchemaORCHClientEvent *)self assistantdLaunchMetadataReported];
  v7 = [v4 assistantdLaunchMetadataReported];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v148 = [(ORCHSchemaORCHClientEvent *)self assistantdLaunchMetadataReported];
  if (v148)
  {
    v149 = v148;
    v150 = [(ORCHSchemaORCHClientEvent *)self assistantdLaunchMetadataReported];
    v151 = [v4 assistantdLaunchMetadataReported];
    v152 = [v150 isEqual:v151];

    if (!v152)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(ORCHSchemaORCHClientEvent *)self intelligenceFlowQuerySent];
  v7 = [v4 intelligenceFlowQuerySent];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v153 = [(ORCHSchemaORCHClientEvent *)self intelligenceFlowQuerySent];
  if (v153)
  {
    v154 = v153;
    v155 = [(ORCHSchemaORCHClientEvent *)self intelligenceFlowQuerySent];
    v156 = [v4 intelligenceFlowQuerySent];
    v157 = [v155 isEqual:v156];

    if (!v157)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(ORCHSchemaORCHClientEvent *)self subRequestContext];
  v7 = [v4 subRequestContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v158 = [(ORCHSchemaORCHClientEvent *)self subRequestContext];
  if (v158)
  {
    v159 = v158;
    v160 = [(ORCHSchemaORCHClientEvent *)self subRequestContext];
    v161 = [v4 subRequestContext];
    v162 = [v160 isEqual:v161];

    if (!v162)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(ORCHSchemaORCHClientEvent *)self routerRewrittenUtterance];
  v7 = [v4 routerRewrittenUtterance];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v163 = [(ORCHSchemaORCHClientEvent *)self routerRewrittenUtterance];
  if (v163)
  {
    v164 = v163;
    v165 = [(ORCHSchemaORCHClientEvent *)self routerRewrittenUtterance];
    v166 = [v4 routerRewrittenUtterance];
    v167 = [v165 isEqual:v166];

    if (!v167)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(ORCHSchemaORCHClientEvent *)self nlRouterBridgeContext];
  v7 = [v4 nlRouterBridgeContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v168 = [(ORCHSchemaORCHClientEvent *)self nlRouterBridgeContext];
  if (v168)
  {
    v169 = v168;
    v170 = [(ORCHSchemaORCHClientEvent *)self nlRouterBridgeContext];
    v171 = [v4 nlRouterBridgeContext];
    v172 = [v170 isEqual:v171];

    if (!v172)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(ORCHSchemaORCHClientEvent *)self shimToolContext];
  v7 = [v4 shimToolContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v173 = [(ORCHSchemaORCHClientEvent *)self shimToolContext];
  if (v173)
  {
    v174 = v173;
    v175 = [(ORCHSchemaORCHClientEvent *)self shimToolContext];
    v176 = [v4 shimToolContext];
    v177 = [v175 isEqual:v176];

    if (!v177)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(ORCHSchemaORCHClientEvent *)self subRequestFallback];
  v7 = [v4 subRequestFallback];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v178 = [(ORCHSchemaORCHClientEvent *)self subRequestFallback];
  if (v178)
  {
    v179 = v178;
    v180 = [(ORCHSchemaORCHClientEvent *)self subRequestFallback];
    v181 = [v4 subRequestFallback];
    v182 = [v180 isEqual:v181];

    if (!v182)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(ORCHSchemaORCHClientEvent *)self nlRouterBridgeSubComponentContext];
  v7 = [v4 nlRouterBridgeSubComponentContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v183 = [(ORCHSchemaORCHClientEvent *)self nlRouterBridgeSubComponentContext];
  if (v183)
  {
    v184 = v183;
    v185 = [(ORCHSchemaORCHClientEvent *)self nlRouterBridgeSubComponentContext];
    v186 = [v4 nlRouterBridgeSubComponentContext];
    v187 = [v185 isEqual:v186];

    if (!v187)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(ORCHSchemaORCHClientEvent *)self unsupportedLanguageDetected];
  v7 = [v4 unsupportedLanguageDetected];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v188 = [(ORCHSchemaORCHClientEvent *)self unsupportedLanguageDetected];
  if (v188)
  {
    v189 = v188;
    v190 = [(ORCHSchemaORCHClientEvent *)self unsupportedLanguageDetected];
    v191 = [v4 unsupportedLanguageDetected];
    v192 = [v190 isEqual:v191];

    if (!v192)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(ORCHSchemaORCHClientEvent *)self trpCandidateCreated];
  v7 = [v4 trpCandidateCreated];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v193 = [(ORCHSchemaORCHClientEvent *)self trpCandidateCreated];
  if (v193)
  {
    v194 = v193;
    v195 = [(ORCHSchemaORCHClientEvent *)self trpCandidateCreated];
    v196 = [v4 trpCandidateCreated];
    v197 = [v195 isEqual:v196];

    if (!v197)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(ORCHSchemaORCHClientEvent *)self audioTopologyReported];
  v7 = [v4 audioTopologyReported];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v198 = [(ORCHSchemaORCHClientEvent *)self audioTopologyReported];
  if (v198)
  {
    v199 = v198;
    v200 = [(ORCHSchemaORCHClientEvent *)self audioTopologyReported];
    v201 = [v4 audioTopologyReported];
    v202 = [v200 isEqual:v201];

    if (!v202)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(ORCHSchemaORCHClientEvent *)self intelligenceFlowRequestContext];
  v7 = [v4 intelligenceFlowRequestContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v203 = [(ORCHSchemaORCHClientEvent *)self intelligenceFlowRequestContext];
  if (v203)
  {
    v204 = v203;
    v205 = [(ORCHSchemaORCHClientEvent *)self intelligenceFlowRequestContext];
    v206 = [v4 intelligenceFlowRequestContext];
    v207 = [v205 isEqual:v206];

    if (!v207)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(ORCHSchemaORCHClientEvent *)self userSessionState];
  v7 = [v4 userSessionState];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_212;
  }

  v208 = [(ORCHSchemaORCHClientEvent *)self userSessionState];
  if (v208)
  {
    v209 = v208;
    v210 = [(ORCHSchemaORCHClientEvent *)self userSessionState];
    v211 = [v4 userSessionState];
    v212 = [v210 isEqual:v211];

    if (!v212)
    {
      goto LABEL_213;
    }
  }

  else
  {
  }

  v6 = [(ORCHSchemaORCHClientEvent *)self serverExecutionValuesReported];
  v7 = [v4 serverExecutionValuesReported];
  if ((v6 != 0) != (v7 == 0))
  {
    v213 = [(ORCHSchemaORCHClientEvent *)self serverExecutionValuesReported];
    if (!v213)
    {

LABEL_216:
      v218 = 1;
      goto LABEL_214;
    }

    v214 = v213;
    v215 = [(ORCHSchemaORCHClientEvent *)self serverExecutionValuesReported];
    v216 = [v4 serverExecutionValuesReported];
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
  v4 = [(ORCHSchemaORCHClientEvent *)self eventMetadata];

  if (v4)
  {
    v5 = [(ORCHSchemaORCHClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(ORCHSchemaORCHClientEvent *)self resourceUtilizationMetadata];

  if (v6)
  {
    v7 = [(ORCHSchemaORCHClientEvent *)self resourceUtilizationMetadata];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(ORCHSchemaORCHClientEvent *)self requestContext];

  if (v8)
  {
    v9 = [(ORCHSchemaORCHClientEvent *)self requestContext];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(ORCHSchemaORCHClientEvent *)self asrBridgeContext];

  if (v10)
  {
    v11 = [(ORCHSchemaORCHClientEvent *)self asrBridgeContext];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(ORCHSchemaORCHClientEvent *)self cdmBridgeContext];

  if (v12)
  {
    v13 = [(ORCHSchemaORCHClientEvent *)self cdmBridgeContext];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(ORCHSchemaORCHClientEvent *)self executionBridgeContext];

  if (v14)
  {
    v15 = [(ORCHSchemaORCHClientEvent *)self executionBridgeContext];
    PBDataWriterWriteSubmessage();
  }

  v16 = [(ORCHSchemaORCHClientEvent *)self serverFallbackContext];

  if (v16)
  {
    v17 = [(ORCHSchemaORCHClientEvent *)self serverFallbackContext];
    PBDataWriterWriteSubmessage();
  }

  v18 = [(ORCHSchemaORCHClientEvent *)self flowOutputSubmitted];

  if (v18)
  {
    v19 = [(ORCHSchemaORCHClientEvent *)self flowOutputSubmitted];
    PBDataWriterWriteSubmessage();
  }

  v20 = [(ORCHSchemaORCHClientEvent *)self resultCandidate];

  if (v20)
  {
    v21 = [(ORCHSchemaORCHClientEvent *)self resultCandidate];
    PBDataWriterWriteSubmessage();
  }

  v22 = [(ORCHSchemaORCHClientEvent *)self resultSelected];

  if (v22)
  {
    v23 = [(ORCHSchemaORCHClientEvent *)self resultSelected];
    PBDataWriterWriteSubmessage();
  }

  v24 = [(ORCHSchemaORCHClientEvent *)self contextSubmissionMessage];

  if (v24)
  {
    v25 = [(ORCHSchemaORCHClientEvent *)self contextSubmissionMessage];
    PBDataWriterWriteSubmessage();
  }

  v26 = [(ORCHSchemaORCHClientEvent *)self availableAssets];

  if (v26)
  {
    v27 = [(ORCHSchemaORCHClientEvent *)self availableAssets];
    PBDataWriterWriteSubmessage();
  }

  v28 = [(ORCHSchemaORCHClientEvent *)self orchDeviceDynamicContext];

  if (v28)
  {
    v29 = [(ORCHSchemaORCHClientEvent *)self orchDeviceDynamicContext];
    PBDataWriterWriteSubmessage();
  }

  v30 = [(ORCHSchemaORCHClientEvent *)self pommesBridgeContext];

  if (v30)
  {
    v31 = [(ORCHSchemaORCHClientEvent *)self pommesBridgeContext];
    PBDataWriterWriteSubmessage();
  }

  v32 = [(ORCHSchemaORCHClientEvent *)self muxBridgeContext];

  if (v32)
  {
    v33 = [(ORCHSchemaORCHClientEvent *)self muxBridgeContext];
    PBDataWriterWriteSubmessage();
  }

  v34 = [(ORCHSchemaORCHClientEvent *)self multiUserResultCandidate];

  if (v34)
  {
    v35 = [(ORCHSchemaORCHClientEvent *)self multiUserResultCandidate];
    PBDataWriterWriteSubmessage();
  }

  v36 = [(ORCHSchemaORCHClientEvent *)self multiUserResultSelected];

  if (v36)
  {
    v37 = [(ORCHSchemaORCHClientEvent *)self multiUserResultSelected];
    PBDataWriterWriteSubmessage();
  }

  v38 = [(ORCHSchemaORCHClientEvent *)self aceCommandContext];

  if (v38)
  {
    v39 = [(ORCHSchemaORCHClientEvent *)self aceCommandContext];
    PBDataWriterWriteSubmessage();
  }

  v40 = [(ORCHSchemaORCHClientEvent *)self trpFinalized];

  if (v40)
  {
    v41 = [(ORCHSchemaORCHClientEvent *)self trpFinalized];
    PBDataWriterWriteSubmessage();
  }

  v42 = [(ORCHSchemaORCHClientEvent *)self requestMitigated];

  if (v42)
  {
    v43 = [(ORCHSchemaORCHClientEvent *)self requestMitigated];
    PBDataWriterWriteSubmessage();
  }

  v44 = [(ORCHSchemaORCHClientEvent *)self nlv3ServerFallbackDeprecated];

  if (v44)
  {
    v45 = [(ORCHSchemaORCHClientEvent *)self nlv3ServerFallbackDeprecated];
    PBDataWriterWriteSubmessage();
  }

  v46 = [(ORCHSchemaORCHClientEvent *)self uiActivationContext];

  if (v46)
  {
    v47 = [(ORCHSchemaORCHClientEvent *)self uiActivationContext];
    PBDataWriterWriteSubmessage();
  }

  v48 = [(ORCHSchemaORCHClientEvent *)self trpCandidateReceived];

  if (v48)
  {
    v49 = [(ORCHSchemaORCHClientEvent *)self trpCandidateReceived];
    PBDataWriterWriteSubmessage();
  }

  v50 = [(ORCHSchemaORCHClientEvent *)self identityBridgeRequestContext];

  if (v50)
  {
    v51 = [(ORCHSchemaORCHClientEvent *)self identityBridgeRequestContext];
    PBDataWriterWriteSubmessage();
  }

  v52 = [(ORCHSchemaORCHClientEvent *)self assetSetsReported];

  if (v52)
  {
    v53 = [(ORCHSchemaORCHClientEvent *)self assetSetsReported];
    PBDataWriterWriteSubmessage();
  }

  v54 = [(ORCHSchemaORCHClientEvent *)self candidateRequestContext];

  if (v54)
  {
    v55 = [(ORCHSchemaORCHClientEvent *)self candidateRequestContext];
    PBDataWriterWriteSubmessage();
  }

  v56 = [(ORCHSchemaORCHClientEvent *)self powerContextPolicyReported];

  if (v56)
  {
    v57 = [(ORCHSchemaORCHClientEvent *)self powerContextPolicyReported];
    PBDataWriterWriteSubmessage();
  }

  v58 = [(ORCHSchemaORCHClientEvent *)self executeOnRemoteRequestContext];

  if (v58)
  {
    v59 = [(ORCHSchemaORCHClientEvent *)self executeOnRemoteRequestContext];
    PBDataWriterWriteSubmessage();
  }

  v60 = [(ORCHSchemaORCHClientEvent *)self assistantdLaunchMetadataReported];

  if (v60)
  {
    v61 = [(ORCHSchemaORCHClientEvent *)self assistantdLaunchMetadataReported];
    PBDataWriterWriteSubmessage();
  }

  v62 = [(ORCHSchemaORCHClientEvent *)self intelligenceFlowQuerySent];

  if (v62)
  {
    v63 = [(ORCHSchemaORCHClientEvent *)self intelligenceFlowQuerySent];
    PBDataWriterWriteSubmessage();
  }

  v64 = [(ORCHSchemaORCHClientEvent *)self subRequestContext];

  if (v64)
  {
    v65 = [(ORCHSchemaORCHClientEvent *)self subRequestContext];
    PBDataWriterWriteSubmessage();
  }

  v66 = [(ORCHSchemaORCHClientEvent *)self routerRewrittenUtterance];

  if (v66)
  {
    v67 = [(ORCHSchemaORCHClientEvent *)self routerRewrittenUtterance];
    PBDataWriterWriteSubmessage();
  }

  v68 = [(ORCHSchemaORCHClientEvent *)self nlRouterBridgeContext];

  if (v68)
  {
    v69 = [(ORCHSchemaORCHClientEvent *)self nlRouterBridgeContext];
    PBDataWriterWriteSubmessage();
  }

  v70 = [(ORCHSchemaORCHClientEvent *)self shimToolContext];

  if (v70)
  {
    v71 = [(ORCHSchemaORCHClientEvent *)self shimToolContext];
    PBDataWriterWriteSubmessage();
  }

  v72 = [(ORCHSchemaORCHClientEvent *)self subRequestFallback];

  if (v72)
  {
    v73 = [(ORCHSchemaORCHClientEvent *)self subRequestFallback];
    PBDataWriterWriteSubmessage();
  }

  v74 = [(ORCHSchemaORCHClientEvent *)self nlRouterBridgeSubComponentContext];

  if (v74)
  {
    v75 = [(ORCHSchemaORCHClientEvent *)self nlRouterBridgeSubComponentContext];
    PBDataWriterWriteSubmessage();
  }

  v76 = [(ORCHSchemaORCHClientEvent *)self unsupportedLanguageDetected];

  if (v76)
  {
    v77 = [(ORCHSchemaORCHClientEvent *)self unsupportedLanguageDetected];
    PBDataWriterWriteSubmessage();
  }

  v78 = [(ORCHSchemaORCHClientEvent *)self trpCandidateCreated];

  if (v78)
  {
    v79 = [(ORCHSchemaORCHClientEvent *)self trpCandidateCreated];
    PBDataWriterWriteSubmessage();
  }

  v80 = [(ORCHSchemaORCHClientEvent *)self audioTopologyReported];

  if (v80)
  {
    v81 = [(ORCHSchemaORCHClientEvent *)self audioTopologyReported];
    PBDataWriterWriteSubmessage();
  }

  v82 = [(ORCHSchemaORCHClientEvent *)self intelligenceFlowRequestContext];

  if (v82)
  {
    v83 = [(ORCHSchemaORCHClientEvent *)self intelligenceFlowRequestContext];
    PBDataWriterWriteSubmessage();
  }

  v84 = [(ORCHSchemaORCHClientEvent *)self userSessionState];

  if (v84)
  {
    v85 = [(ORCHSchemaORCHClientEvent *)self userSessionState];
    PBDataWriterWriteSubmessage();
  }

  v86 = [(ORCHSchemaORCHClientEvent *)self serverExecutionValuesReported];

  v87 = v89;
  if (v86)
  {
    v88 = [(ORCHSchemaORCHClientEvent *)self serverExecutionValuesReported];
    PBDataWriterWriteSubmessage();

    v87 = v89;
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

- (void)setServerExecutionValuesReported:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  serverExecutionValuesReported = self->_serverExecutionValuesReported;
  self->_serverExecutionValuesReported = v4;
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

- (void)setUserSessionState:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  userSessionState = self->_userSessionState;
  self->_userSessionState = v4;
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

- (void)setIntelligenceFlowRequestContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  intelligenceFlowRequestContext = self->_intelligenceFlowRequestContext;
  self->_intelligenceFlowRequestContext = v4;
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

- (void)setAudioTopologyReported:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  audioTopologyReported = self->_audioTopologyReported;
  self->_audioTopologyReported = v4;
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

- (void)setTrpCandidateCreated:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  trpCandidateCreated = self->_trpCandidateCreated;
  self->_trpCandidateCreated = v4;
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

- (void)setUnsupportedLanguageDetected:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  unsupportedLanguageDetected = self->_unsupportedLanguageDetected;
  self->_unsupportedLanguageDetected = v4;
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

- (void)setNlRouterBridgeSubComponentContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  nlRouterBridgeSubComponentContext = self->_nlRouterBridgeSubComponentContext;
  self->_nlRouterBridgeSubComponentContext = v4;
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

- (void)setSubRequestFallback:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  subRequestFallback = self->_subRequestFallback;
  self->_subRequestFallback = v4;
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

- (void)setShimToolContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  shimToolContext = self->_shimToolContext;
  self->_shimToolContext = v4;
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

- (void)setNlRouterBridgeContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  nlRouterBridgeContext = self->_nlRouterBridgeContext;
  self->_nlRouterBridgeContext = v4;
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

- (void)setRouterRewrittenUtterance:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  routerRewrittenUtterance = self->_routerRewrittenUtterance;
  self->_routerRewrittenUtterance = v4;
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

- (void)setSubRequestContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  subRequestContext = self->_subRequestContext;
  self->_subRequestContext = v4;
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

- (void)setIntelligenceFlowQuerySent:(id)a3
{
  v4 = a3;
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

  self->_whichEvent_Type = (v4 != 0) << 7;
  intelligenceFlowQuerySent = self->_intelligenceFlowQuerySent;
  self->_intelligenceFlowQuerySent = v4;
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

- (void)setAssistantdLaunchMetadataReported:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  assistantdLaunchMetadataReported = self->_assistantdLaunchMetadataReported;
  self->_assistantdLaunchMetadataReported = v4;
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

- (void)setExecuteOnRemoteRequestContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  executeOnRemoteRequestContext = self->_executeOnRemoteRequestContext;
  self->_executeOnRemoteRequestContext = v4;
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

- (void)setPowerContextPolicyReported:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  powerContextPolicyReported = self->_powerContextPolicyReported;
  self->_powerContextPolicyReported = v4;
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

- (void)setCandidateRequestContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  candidateRequestContext = self->_candidateRequestContext;
  self->_candidateRequestContext = v4;
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

- (void)setAssetSetsReported:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  assetSetsReported = self->_assetSetsReported;
  self->_assetSetsReported = v4;
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

- (void)setIdentityBridgeRequestContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  identityBridgeRequestContext = self->_identityBridgeRequestContext;
  self->_identityBridgeRequestContext = v4;
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

- (void)setTrpCandidateReceived:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  trpCandidateReceived = self->_trpCandidateReceived;
  self->_trpCandidateReceived = v4;
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

- (void)setUiActivationContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  uiActivationContext = self->_uiActivationContext;
  self->_uiActivationContext = v4;
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

- (void)setNlv3ServerFallbackDeprecated:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  nlv3ServerFallbackDeprecated = self->_nlv3ServerFallbackDeprecated;
  self->_nlv3ServerFallbackDeprecated = v4;
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

- (void)setRequestMitigated:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  requestMitigated = self->_requestMitigated;
  self->_requestMitigated = v4;
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

- (void)setTrpFinalized:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  trpFinalized = self->_trpFinalized;
  self->_trpFinalized = v4;
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

- (void)setAceCommandContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  aceCommandContext = self->_aceCommandContext;
  self->_aceCommandContext = v4;
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

- (void)setMultiUserResultSelected:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  multiUserResultSelected = self->_multiUserResultSelected;
  self->_multiUserResultSelected = v4;
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

- (void)setMultiUserResultCandidate:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  multiUserResultCandidate = self->_multiUserResultCandidate;
  self->_multiUserResultCandidate = v4;
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

- (void)setMuxBridgeContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  muxBridgeContext = self->_muxBridgeContext;
  self->_muxBridgeContext = v4;
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

- (void)setPommesBridgeContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  pommesBridgeContext = self->_pommesBridgeContext;
  self->_pommesBridgeContext = v4;
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

- (void)setOrchDeviceDynamicContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  orchDeviceDynamicContext = self->_orchDeviceDynamicContext;
  self->_orchDeviceDynamicContext = v4;
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

- (void)setAvailableAssets:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  availableAssets = self->_availableAssets;
  self->_availableAssets = v4;
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

- (void)setContextSubmissionMessage:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  contextSubmissionMessage = self->_contextSubmissionMessage;
  self->_contextSubmissionMessage = v4;
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

- (void)setResultSelected:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  resultSelected = self->_resultSelected;
  self->_resultSelected = v4;
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

- (void)setResultCandidate:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  resultCandidate = self->_resultCandidate;
  self->_resultCandidate = v4;
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

- (void)setFlowOutputSubmitted:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  flowOutputSubmitted = self->_flowOutputSubmitted;
  self->_flowOutputSubmitted = v4;
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

- (void)setServerFallbackContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  serverFallbackContext = self->_serverFallbackContext;
  self->_serverFallbackContext = v4;
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

- (void)setExecutionBridgeContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  executionBridgeContext = self->_executionBridgeContext;
  self->_executionBridgeContext = v4;
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

- (void)setCdmBridgeContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  cdmBridgeContext = self->_cdmBridgeContext;
  self->_cdmBridgeContext = v4;
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

- (void)setAsrBridgeContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  asrBridgeContext = self->_asrBridgeContext;
  self->_asrBridgeContext = v4;
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

- (void)setRequestContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v44 = 0;
  }

  self->_whichEvent_Type = v44;
  requestContext = self->_requestContext;
  self->_requestContext = v4;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v134.receiver = self;
  v134.super_class = ORCHSchemaORCHClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v134 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:2])
  {
    [(ORCHSchemaORCHClientEvent *)self deleteRouterRewrittenUtterance];
  }

  if ([v4 isConditionSet:4])
  {
    [(ORCHSchemaORCHClientEvent *)self deleteRouterRewrittenUtterance];
  }

  if ([v4 isConditionSet:5])
  {
    [(ORCHSchemaORCHClientEvent *)self deleteRouterRewrittenUtterance];
  }

  if ([v4 isConditionSet:6])
  {
    [(ORCHSchemaORCHClientEvent *)self deleteRouterRewrittenUtterance];
  }

  if ([v4 isConditionSet:7])
  {
    [(ORCHSchemaORCHClientEvent *)self deleteRouterRewrittenUtterance];
  }

  v6 = [(ORCHSchemaORCHClientEvent *)self eventMetadata];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteEventMetadata];
  }

  v9 = [(ORCHSchemaORCHClientEvent *)self resourceUtilizationMetadata];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteResourceUtilizationMetadata];
  }

  v12 = [(ORCHSchemaORCHClientEvent *)self requestContext];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteRequestContext];
  }

  v15 = [(ORCHSchemaORCHClientEvent *)self asrBridgeContext];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteAsrBridgeContext];
  }

  v18 = [(ORCHSchemaORCHClientEvent *)self cdmBridgeContext];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteCdmBridgeContext];
  }

  v21 = [(ORCHSchemaORCHClientEvent *)self executionBridgeContext];
  v22 = [v21 applySensitiveConditionsPolicy:v4];
  v23 = [v22 suppressMessage];

  if (v23)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteExecutionBridgeContext];
  }

  v24 = [(ORCHSchemaORCHClientEvent *)self serverFallbackContext];
  v25 = [v24 applySensitiveConditionsPolicy:v4];
  v26 = [v25 suppressMessage];

  if (v26)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteServerFallbackContext];
  }

  v27 = [(ORCHSchemaORCHClientEvent *)self flowOutputSubmitted];
  v28 = [v27 applySensitiveConditionsPolicy:v4];
  v29 = [v28 suppressMessage];

  if (v29)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteFlowOutputSubmitted];
  }

  v30 = [(ORCHSchemaORCHClientEvent *)self resultCandidate];
  v31 = [v30 applySensitiveConditionsPolicy:v4];
  v32 = [v31 suppressMessage];

  if (v32)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteResultCandidate];
  }

  v33 = [(ORCHSchemaORCHClientEvent *)self resultSelected];
  v34 = [v33 applySensitiveConditionsPolicy:v4];
  v35 = [v34 suppressMessage];

  if (v35)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteResultSelected];
  }

  v36 = [(ORCHSchemaORCHClientEvent *)self contextSubmissionMessage];
  v37 = [v36 applySensitiveConditionsPolicy:v4];
  v38 = [v37 suppressMessage];

  if (v38)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteContextSubmissionMessage];
  }

  v39 = [(ORCHSchemaORCHClientEvent *)self availableAssets];
  v40 = [v39 applySensitiveConditionsPolicy:v4];
  v41 = [v40 suppressMessage];

  if (v41)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteAvailableAssets];
  }

  v42 = [(ORCHSchemaORCHClientEvent *)self orchDeviceDynamicContext];
  v43 = [v42 applySensitiveConditionsPolicy:v4];
  v44 = [v43 suppressMessage];

  if (v44)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteOrchDeviceDynamicContext];
  }

  v45 = [(ORCHSchemaORCHClientEvent *)self pommesBridgeContext];
  v46 = [v45 applySensitiveConditionsPolicy:v4];
  v47 = [v46 suppressMessage];

  if (v47)
  {
    [(ORCHSchemaORCHClientEvent *)self deletePommesBridgeContext];
  }

  v48 = [(ORCHSchemaORCHClientEvent *)self muxBridgeContext];
  v49 = [v48 applySensitiveConditionsPolicy:v4];
  v50 = [v49 suppressMessage];

  if (v50)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteMuxBridgeContext];
  }

  v51 = [(ORCHSchemaORCHClientEvent *)self multiUserResultCandidate];
  v52 = [v51 applySensitiveConditionsPolicy:v4];
  v53 = [v52 suppressMessage];

  if (v53)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteMultiUserResultCandidate];
  }

  v54 = [(ORCHSchemaORCHClientEvent *)self multiUserResultSelected];
  v55 = [v54 applySensitiveConditionsPolicy:v4];
  v56 = [v55 suppressMessage];

  if (v56)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteMultiUserResultSelected];
  }

  v57 = [(ORCHSchemaORCHClientEvent *)self aceCommandContext];
  v58 = [v57 applySensitiveConditionsPolicy:v4];
  v59 = [v58 suppressMessage];

  if (v59)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteAceCommandContext];
  }

  v60 = [(ORCHSchemaORCHClientEvent *)self trpFinalized];
  v61 = [v60 applySensitiveConditionsPolicy:v4];
  v62 = [v61 suppressMessage];

  if (v62)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteTrpFinalized];
  }

  v63 = [(ORCHSchemaORCHClientEvent *)self requestMitigated];
  v64 = [v63 applySensitiveConditionsPolicy:v4];
  v65 = [v64 suppressMessage];

  if (v65)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteRequestMitigated];
  }

  v66 = [(ORCHSchemaORCHClientEvent *)self nlv3ServerFallbackDeprecated];
  v67 = [v66 applySensitiveConditionsPolicy:v4];
  v68 = [v67 suppressMessage];

  if (v68)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteNlv3ServerFallbackDeprecated];
  }

  v69 = [(ORCHSchemaORCHClientEvent *)self uiActivationContext];
  v70 = [v69 applySensitiveConditionsPolicy:v4];
  v71 = [v70 suppressMessage];

  if (v71)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteUiActivationContext];
  }

  v72 = [(ORCHSchemaORCHClientEvent *)self trpCandidateReceived];
  v73 = [v72 applySensitiveConditionsPolicy:v4];
  v74 = [v73 suppressMessage];

  if (v74)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteTrpCandidateReceived];
  }

  v75 = [(ORCHSchemaORCHClientEvent *)self identityBridgeRequestContext];
  v76 = [v75 applySensitiveConditionsPolicy:v4];
  v77 = [v76 suppressMessage];

  if (v77)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteIdentityBridgeRequestContext];
  }

  v78 = [(ORCHSchemaORCHClientEvent *)self assetSetsReported];
  v79 = [v78 applySensitiveConditionsPolicy:v4];
  v80 = [v79 suppressMessage];

  if (v80)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteAssetSetsReported];
  }

  v81 = [(ORCHSchemaORCHClientEvent *)self candidateRequestContext];
  v82 = [v81 applySensitiveConditionsPolicy:v4];
  v83 = [v82 suppressMessage];

  if (v83)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteCandidateRequestContext];
  }

  v84 = [(ORCHSchemaORCHClientEvent *)self powerContextPolicyReported];
  v85 = [v84 applySensitiveConditionsPolicy:v4];
  v86 = [v85 suppressMessage];

  if (v86)
  {
    [(ORCHSchemaORCHClientEvent *)self deletePowerContextPolicyReported];
  }

  v87 = [(ORCHSchemaORCHClientEvent *)self executeOnRemoteRequestContext];
  v88 = [v87 applySensitiveConditionsPolicy:v4];
  v89 = [v88 suppressMessage];

  if (v89)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteExecuteOnRemoteRequestContext];
  }

  v90 = [(ORCHSchemaORCHClientEvent *)self assistantdLaunchMetadataReported];
  v91 = [v90 applySensitiveConditionsPolicy:v4];
  v92 = [v91 suppressMessage];

  if (v92)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteAssistantdLaunchMetadataReported];
  }

  v93 = [(ORCHSchemaORCHClientEvent *)self intelligenceFlowQuerySent];
  v94 = [v93 applySensitiveConditionsPolicy:v4];
  v95 = [v94 suppressMessage];

  if (v95)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteIntelligenceFlowQuerySent];
  }

  v96 = [(ORCHSchemaORCHClientEvent *)self subRequestContext];
  v97 = [v96 applySensitiveConditionsPolicy:v4];
  v98 = [v97 suppressMessage];

  if (v98)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteSubRequestContext];
  }

  v99 = [(ORCHSchemaORCHClientEvent *)self routerRewrittenUtterance];
  v100 = [v99 applySensitiveConditionsPolicy:v4];
  v101 = [v100 suppressMessage];

  if (v101)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteRouterRewrittenUtterance];
  }

  v102 = [(ORCHSchemaORCHClientEvent *)self nlRouterBridgeContext];
  v103 = [v102 applySensitiveConditionsPolicy:v4];
  v104 = [v103 suppressMessage];

  if (v104)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteNlRouterBridgeContext];
  }

  v105 = [(ORCHSchemaORCHClientEvent *)self shimToolContext];
  v106 = [v105 applySensitiveConditionsPolicy:v4];
  v107 = [v106 suppressMessage];

  if (v107)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteShimToolContext];
  }

  v108 = [(ORCHSchemaORCHClientEvent *)self subRequestFallback];
  v109 = [v108 applySensitiveConditionsPolicy:v4];
  v110 = [v109 suppressMessage];

  if (v110)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteSubRequestFallback];
  }

  v111 = [(ORCHSchemaORCHClientEvent *)self nlRouterBridgeSubComponentContext];
  v112 = [v111 applySensitiveConditionsPolicy:v4];
  v113 = [v112 suppressMessage];

  if (v113)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteNlRouterBridgeSubComponentContext];
  }

  v114 = [(ORCHSchemaORCHClientEvent *)self unsupportedLanguageDetected];
  v115 = [v114 applySensitiveConditionsPolicy:v4];
  v116 = [v115 suppressMessage];

  if (v116)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteUnsupportedLanguageDetected];
  }

  v117 = [(ORCHSchemaORCHClientEvent *)self trpCandidateCreated];
  v118 = [v117 applySensitiveConditionsPolicy:v4];
  v119 = [v118 suppressMessage];

  if (v119)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteTrpCandidateCreated];
  }

  v120 = [(ORCHSchemaORCHClientEvent *)self audioTopologyReported];
  v121 = [v120 applySensitiveConditionsPolicy:v4];
  v122 = [v121 suppressMessage];

  if (v122)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteAudioTopologyReported];
  }

  v123 = [(ORCHSchemaORCHClientEvent *)self intelligenceFlowRequestContext];
  v124 = [v123 applySensitiveConditionsPolicy:v4];
  v125 = [v124 suppressMessage];

  if (v125)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteIntelligenceFlowRequestContext];
  }

  v126 = [(ORCHSchemaORCHClientEvent *)self userSessionState];
  v127 = [v126 applySensitiveConditionsPolicy:v4];
  v128 = [v127 suppressMessage];

  if (v128)
  {
    [(ORCHSchemaORCHClientEvent *)self deleteUserSessionState];
  }

  v129 = [(ORCHSchemaORCHClientEvent *)self serverExecutionValuesReported];
  v130 = [v129 applySensitiveConditionsPolicy:v4];
  v131 = [v130 suppressMessage];

  if (v131)
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
  v2 = [(ORCHSchemaORCHClientEvent *)self eventMetadata];
  v3 = [v2 requestId];

  if (v3 && ([v3 value], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    v6 = [v3 value];
    v7 = [v6 length] != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)getComponentId
{
  v2 = [(ORCHSchemaORCHClientEvent *)self eventMetadata];
  v3 = [v2 requestId];

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
  v3 = [(ORCHSchemaORCHClientEvent *)self whichEvent_Type];
  if (v3 - 101 > 0x27)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78EA658[v3 - 101]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)a3
{
  if (a3 - 101 > 0x27)
  {
    return 0;
  }

  else
  {
    return off_1E78EA798[a3 - 101];
  }
}

@end