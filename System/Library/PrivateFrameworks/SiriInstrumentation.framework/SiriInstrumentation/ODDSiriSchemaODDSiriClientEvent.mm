@interface ODDSiriSchemaODDSiriClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODDSiriSchemaODDAssetAvailabilityFromBootDigestReported)assetAvailabilityFromBootDigestReported;
- (ODDSiriSchemaODDAssetSetStatusDigestReported)assetSetStatusDigestReported;
- (ODDSiriSchemaODDAssistantCarPlayDigestReported)assistantCarPlayDigestReported;
- (ODDSiriSchemaODDAssistantDeviceDigestsReported)assistantDeviceDigestReported;
- (ODDSiriSchemaODDAssistantDiagnosticAndUsageOptInDigestsReported)assistantDiagnosticAndUsageOptInDigestReported;
- (ODDSiriSchemaODDAssistantExperimentDigestsReported)assistantExperimentDigestReported;
- (ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported)attentionInvocationDigestsReported;
- (ODDSiriSchemaODDBluetoothCarDigestReported)bluetoothCarDigestReported;
- (ODDSiriSchemaODDDeviceCohortsReported)deviceCohortsReported;
- (ODDSiriSchemaODDDeviceSegmentsReported)deviceSegmentsReported;
- (ODDSiriSchemaODDDictationDeviceDigestsReported)dictationDeviceDigestReported;
- (ODDSiriSchemaODDDictationExperimentDigestsReported)dictationExperimentDigestsReported;
- (ODDSiriSchemaODDExecutionMetadataReported)executionMetadataReported;
- (ODDSiriSchemaODDIntelligenceFeatureAvailabilityStatusChangesReported)intelligenceFeatureAvailabilityStatusChangesReported;
- (ODDSiriSchemaODDMobileAssetErrorsReported)mobileAssetErrorsReported;
- (ODDSiriSchemaODDRequestsWithoutAssetsDigestReported)requestsWithoutAssetsDigestReported;
- (ODDSiriSchemaODDSiriAccountInformation)siriAccountInformation;
- (ODDSiriSchemaODDSiriClientEvent)initWithDictionary:(id)dictionary;
- (ODDSiriSchemaODDSiriClientEvent)initWithJSON:(id)n;
- (ODDSiriSchemaODDiOSDevicePropertiesReported)iOSDevicePropertiesReported;
- (ODDSiriSchemaODDmacOSDevicePropertiesReported)macOSDevicePropertiesReported;
- (ODDSiriSchemaODDtvOSDevicePropertiesReported)tvOSDevicePropertiesReported;
- (ODDSiriSchemaODDvisionOSDevicePropertiesReported)visionOSDevicePropertiesReported;
- (ODDSiriSchemaODDwatchOSDevicePropertiesReported)watchOSDevicePropertiesReported;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)clockIsolationLevel;
- (unint64_t)hash;
- (void)deleteAssetAvailabilityFromBootDigestReported;
- (void)deleteAssetSetStatusDigestReported;
- (void)deleteAssistantCarPlayDigestReported;
- (void)deleteAssistantDeviceDigestReported;
- (void)deleteAssistantDiagnosticAndUsageOptInDigestReported;
- (void)deleteAssistantExperimentDigestReported;
- (void)deleteAttentionInvocationDigestsReported;
- (void)deleteBluetoothCarDigestReported;
- (void)deleteDeviceCohortsReported;
- (void)deleteDeviceSegmentsReported;
- (void)deleteDictationDeviceDigestReported;
- (void)deleteDictationExperimentDigestsReported;
- (void)deleteExecutionMetadataReported;
- (void)deleteIOSDevicePropertiesReported;
- (void)deleteIntelligenceFeatureAvailabilityStatusChangesReported;
- (void)deleteMacOSDevicePropertiesReported;
- (void)deleteMobileAssetErrorsReported;
- (void)deleteRequestsWithoutAssetsDigestReported;
- (void)deleteSiriAccountInformation;
- (void)deleteTvOSDevicePropertiesReported;
- (void)deleteVisionOSDevicePropertiesReported;
- (void)deleteWatchOSDevicePropertiesReported;
- (void)setAssetAvailabilityFromBootDigestReported:(id)reported;
- (void)setAssetSetStatusDigestReported:(id)reported;
- (void)setAssistantCarPlayDigestReported:(id)reported;
- (void)setAssistantDeviceDigestReported:(id)reported;
- (void)setAssistantDiagnosticAndUsageOptInDigestReported:(id)reported;
- (void)setAssistantExperimentDigestReported:(id)reported;
- (void)setAttentionInvocationDigestsReported:(id)reported;
- (void)setBluetoothCarDigestReported:(id)reported;
- (void)setDeviceCohortsReported:(id)reported;
- (void)setDeviceSegmentsReported:(id)reported;
- (void)setDictationDeviceDigestReported:(id)reported;
- (void)setDictationExperimentDigestsReported:(id)reported;
- (void)setExecutionMetadataReported:(id)reported;
- (void)setIOSDevicePropertiesReported:(id)reported;
- (void)setIntelligenceFeatureAvailabilityStatusChangesReported:(id)reported;
- (void)setMacOSDevicePropertiesReported:(id)reported;
- (void)setMobileAssetErrorsReported:(id)reported;
- (void)setRequestsWithoutAssetsDigestReported:(id)reported;
- (void)setSiriAccountInformation:(id)information;
- (void)setTvOSDevicePropertiesReported:(id)reported;
- (void)setVisionOSDevicePropertiesReported:(id)reported;
- (void)setWatchOSDevicePropertiesReported:(id)reported;
- (void)writeTo:(id)to;
@end

@implementation ODDSiriSchemaODDSiriClientEvent

- (ODDSiriSchemaODDSiriClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v70.receiver = self;
  v70.super_class = ODDSiriSchemaODDSiriClientEvent;
  v5 = [(ODDSiriSchemaODDSiriClientEvent *)&v70 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ODDSiriSchemaODDClientEventMetadata alloc] initWithDictionary:v6];
      [(ODDSiriSchemaODDSiriClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"deviceSegmentsReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[ODDSiriSchemaODDDeviceSegmentsReported alloc] initWithDictionary:v8];
      [(ODDSiriSchemaODDSiriClientEvent *)v5 setDeviceSegmentsReported:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"deviceCohortsReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[ODDSiriSchemaODDDeviceCohortsReported alloc] initWithDictionary:v10];
      [(ODDSiriSchemaODDSiriClientEvent *)v5 setDeviceCohortsReported:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"assistantDeviceDigestReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[ODDSiriSchemaODDAssistantDeviceDigestsReported alloc] initWithDictionary:v12];
      [(ODDSiriSchemaODDSiriClientEvent *)v5 setAssistantDeviceDigestReported:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"dictationDeviceDigestReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[ODDSiriSchemaODDDictationDeviceDigestsReported alloc] initWithDictionary:v14];
      [(ODDSiriSchemaODDSiriClientEvent *)v5 setDictationDeviceDigestReported:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"siriAccountInformation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[ODDSiriSchemaODDSiriAccountInformation alloc] initWithDictionary:v16];
      [(ODDSiriSchemaODDSiriClientEvent *)v5 setSiriAccountInformation:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"assistantExperimentDigestReported"];
    objc_opt_class();
    v69 = v18;
    if (objc_opt_isKindOfClass())
    {
      v19 = [[ODDSiriSchemaODDAssistantExperimentDigestsReported alloc] initWithDictionary:v18];
      [(ODDSiriSchemaODDSiriClientEvent *)v5 setAssistantExperimentDigestReported:v19];
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"assistantDiagnosticAndUsageOptInDigestReported"];
    objc_opt_class();
    v68 = v20;
    if (objc_opt_isKindOfClass())
    {
      v21 = [[ODDSiriSchemaODDAssistantDiagnosticAndUsageOptInDigestsReported alloc] initWithDictionary:v20];
      [(ODDSiriSchemaODDSiriClientEvent *)v5 setAssistantDiagnosticAndUsageOptInDigestReported:v21];
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"iOSDevicePropertiesReported"];
    objc_opt_class();
    v67 = v22;
    if (objc_opt_isKindOfClass())
    {
      v23 = [[ODDSiriSchemaODDiOSDevicePropertiesReported alloc] initWithDictionary:v22];
      [(ODDSiriSchemaODDSiriClientEvent *)v5 setIOSDevicePropertiesReported:v23];
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"watchOSDevicePropertiesReported"];
    objc_opt_class();
    v66 = v24;
    if (objc_opt_isKindOfClass())
    {
      v25 = [[ODDSiriSchemaODDwatchOSDevicePropertiesReported alloc] initWithDictionary:v24];
      [(ODDSiriSchemaODDSiriClientEvent *)v5 setWatchOSDevicePropertiesReported:v25];
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"tvOSDevicePropertiesReported"];
    objc_opt_class();
    v65 = v26;
    if (objc_opt_isKindOfClass())
    {
      v27 = [[ODDSiriSchemaODDtvOSDevicePropertiesReported alloc] initWithDictionary:v26];
      [(ODDSiriSchemaODDSiriClientEvent *)v5 setTvOSDevicePropertiesReported:v27];
    }

    v28 = [dictionaryCopy objectForKeyedSubscript:@"macOSDevicePropertiesReported"];
    objc_opt_class();
    v64 = v28;
    if (objc_opt_isKindOfClass())
    {
      v29 = [[ODDSiriSchemaODDmacOSDevicePropertiesReported alloc] initWithDictionary:v28];
      [(ODDSiriSchemaODDSiriClientEvent *)v5 setMacOSDevicePropertiesReported:v29];
    }

    v30 = [dictionaryCopy objectForKeyedSubscript:@"visionOSDevicePropertiesReported"];
    objc_opt_class();
    v63 = v30;
    if (objc_opt_isKindOfClass())
    {
      v31 = [[ODDSiriSchemaODDvisionOSDevicePropertiesReported alloc] initWithDictionary:v30];
      [(ODDSiriSchemaODDSiriClientEvent *)v5 setVisionOSDevicePropertiesReported:v31];
    }

    v32 = [dictionaryCopy objectForKeyedSubscript:@"assistantCarPlayDigestReported"];
    objc_opt_class();
    v62 = v32;
    if (objc_opt_isKindOfClass())
    {
      v33 = [[ODDSiriSchemaODDAssistantCarPlayDigestReported alloc] initWithDictionary:v32];
      [(ODDSiriSchemaODDSiriClientEvent *)v5 setAssistantCarPlayDigestReported:v33];
    }

    v34 = [dictionaryCopy objectForKeyedSubscript:@"requestsWithoutAssetsDigestReported"];
    objc_opt_class();
    v61 = v34;
    if (objc_opt_isKindOfClass())
    {
      v35 = [[ODDSiriSchemaODDRequestsWithoutAssetsDigestReported alloc] initWithDictionary:v34];
      [(ODDSiriSchemaODDSiriClientEvent *)v5 setRequestsWithoutAssetsDigestReported:v35];
    }

    v60 = v6;
    v36 = [dictionaryCopy objectForKeyedSubscript:@"assetAvailabilityFromBootDigestReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = [[ODDSiriSchemaODDAssetAvailabilityFromBootDigestReported alloc] initWithDictionary:v36];
      [(ODDSiriSchemaODDSiriClientEvent *)v5 setAssetAvailabilityFromBootDigestReported:v37];
    }

    v59 = v8;
    v38 = [dictionaryCopy objectForKeyedSubscript:{@"assetSetStatusDigestReported", v36}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = [[ODDSiriSchemaODDAssetSetStatusDigestReported alloc] initWithDictionary:v38];
      [(ODDSiriSchemaODDSiriClientEvent *)v5 setAssetSetStatusDigestReported:v39];
    }

    v58 = v10;
    v40 = [dictionaryCopy objectForKeyedSubscript:@"executionMetadataReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v41 = [[ODDSiriSchemaODDExecutionMetadataReported alloc] initWithDictionary:v40];
      [(ODDSiriSchemaODDSiriClientEvent *)v5 setExecutionMetadataReported:v41];
    }

    v57 = v12;
    v42 = [dictionaryCopy objectForKeyedSubscript:@"dictationExperimentDigestsReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v43 = [[ODDSiriSchemaODDDictationExperimentDigestsReported alloc] initWithDictionary:v42];
      [(ODDSiriSchemaODDSiriClientEvent *)v5 setDictationExperimentDigestsReported:v43];
    }

    v56 = v14;
    v44 = [dictionaryCopy objectForKeyedSubscript:@"attentionInvocationDigestsReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v45 = [[ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported alloc] initWithDictionary:v44];
      [(ODDSiriSchemaODDSiriClientEvent *)v5 setAttentionInvocationDigestsReported:v45];
    }

    v55 = v16;
    v46 = [dictionaryCopy objectForKeyedSubscript:@"bluetoothCarDigestReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v47 = [[ODDSiriSchemaODDBluetoothCarDigestReported alloc] initWithDictionary:v46];
      [(ODDSiriSchemaODDSiriClientEvent *)v5 setBluetoothCarDigestReported:v47];
    }

    v48 = [dictionaryCopy objectForKeyedSubscript:@"mobileAssetErrorsReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v49 = [[ODDSiriSchemaODDMobileAssetErrorsReported alloc] initWithDictionary:v48];
      [(ODDSiriSchemaODDSiriClientEvent *)v5 setMobileAssetErrorsReported:v49];
    }

    v50 = [dictionaryCopy objectForKeyedSubscript:@"intelligenceFeatureAvailabilityStatusChangesReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v51 = [[ODDSiriSchemaODDIntelligenceFeatureAvailabilityStatusChangesReported alloc] initWithDictionary:v50];
      [(ODDSiriSchemaODDSiriClientEvent *)v5 setIntelligenceFeatureAvailabilityStatusChangesReported:v51];
    }

    v52 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDSiriClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDSiriClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODDSiriSchemaODDSiriClientEvent *)self dictionaryRepresentation];
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
  if (self->_assetAvailabilityFromBootDigestReported)
  {
    assetAvailabilityFromBootDigestReported = [(ODDSiriSchemaODDSiriClientEvent *)self assetAvailabilityFromBootDigestReported];
    dictionaryRepresentation = [assetAvailabilityFromBootDigestReported dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"assetAvailabilityFromBootDigestReported"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"assetAvailabilityFromBootDigestReported"];
    }
  }

  if (self->_assetSetStatusDigestReported)
  {
    assetSetStatusDigestReported = [(ODDSiriSchemaODDSiriClientEvent *)self assetSetStatusDigestReported];
    dictionaryRepresentation2 = [assetSetStatusDigestReported dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"assetSetStatusDigestReported"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"assetSetStatusDigestReported"];
    }
  }

  if (self->_assistantCarPlayDigestReported)
  {
    assistantCarPlayDigestReported = [(ODDSiriSchemaODDSiriClientEvent *)self assistantCarPlayDigestReported];
    dictionaryRepresentation3 = [assistantCarPlayDigestReported dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"assistantCarPlayDigestReported"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"assistantCarPlayDigestReported"];
    }
  }

  if (self->_assistantDeviceDigestReported)
  {
    assistantDeviceDigestReported = [(ODDSiriSchemaODDSiriClientEvent *)self assistantDeviceDigestReported];
    dictionaryRepresentation4 = [assistantDeviceDigestReported dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"assistantDeviceDigestReported"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"assistantDeviceDigestReported"];
    }
  }

  if (self->_assistantDiagnosticAndUsageOptInDigestReported)
  {
    assistantDiagnosticAndUsageOptInDigestReported = [(ODDSiriSchemaODDSiriClientEvent *)self assistantDiagnosticAndUsageOptInDigestReported];
    dictionaryRepresentation5 = [assistantDiagnosticAndUsageOptInDigestReported dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"assistantDiagnosticAndUsageOptInDigestReported"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"assistantDiagnosticAndUsageOptInDigestReported"];
    }
  }

  if (self->_assistantExperimentDigestReported)
  {
    assistantExperimentDigestReported = [(ODDSiriSchemaODDSiriClientEvent *)self assistantExperimentDigestReported];
    dictionaryRepresentation6 = [assistantExperimentDigestReported dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"assistantExperimentDigestReported"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"assistantExperimentDigestReported"];
    }
  }

  if (self->_attentionInvocationDigestsReported)
  {
    attentionInvocationDigestsReported = [(ODDSiriSchemaODDSiriClientEvent *)self attentionInvocationDigestsReported];
    dictionaryRepresentation7 = [attentionInvocationDigestsReported dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"attentionInvocationDigestsReported"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"attentionInvocationDigestsReported"];
    }
  }

  if (self->_bluetoothCarDigestReported)
  {
    bluetoothCarDigestReported = [(ODDSiriSchemaODDSiriClientEvent *)self bluetoothCarDigestReported];
    dictionaryRepresentation8 = [bluetoothCarDigestReported dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"bluetoothCarDigestReported"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"bluetoothCarDigestReported"];
    }
  }

  if (self->_deviceCohortsReported)
  {
    deviceCohortsReported = [(ODDSiriSchemaODDSiriClientEvent *)self deviceCohortsReported];
    dictionaryRepresentation9 = [deviceCohortsReported dictionaryRepresentation];
    if (dictionaryRepresentation9)
    {
      [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"deviceCohortsReported"];
    }

    else
    {
      null9 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null9 forKeyedSubscript:@"deviceCohortsReported"];
    }
  }

  if (self->_deviceSegmentsReported)
  {
    deviceSegmentsReported = [(ODDSiriSchemaODDSiriClientEvent *)self deviceSegmentsReported];
    dictionaryRepresentation10 = [deviceSegmentsReported dictionaryRepresentation];
    if (dictionaryRepresentation10)
    {
      [dictionary setObject:dictionaryRepresentation10 forKeyedSubscript:@"deviceSegmentsReported"];
    }

    else
    {
      null10 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null10 forKeyedSubscript:@"deviceSegmentsReported"];
    }
  }

  if (self->_dictationDeviceDigestReported)
  {
    dictationDeviceDigestReported = [(ODDSiriSchemaODDSiriClientEvent *)self dictationDeviceDigestReported];
    dictionaryRepresentation11 = [dictationDeviceDigestReported dictionaryRepresentation];
    if (dictionaryRepresentation11)
    {
      [dictionary setObject:dictionaryRepresentation11 forKeyedSubscript:@"dictationDeviceDigestReported"];
    }

    else
    {
      null11 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null11 forKeyedSubscript:@"dictationDeviceDigestReported"];
    }
  }

  if (self->_dictationExperimentDigestsReported)
  {
    dictationExperimentDigestsReported = [(ODDSiriSchemaODDSiriClientEvent *)self dictationExperimentDigestsReported];
    dictionaryRepresentation12 = [dictationExperimentDigestsReported dictionaryRepresentation];
    if (dictionaryRepresentation12)
    {
      [dictionary setObject:dictionaryRepresentation12 forKeyedSubscript:@"dictationExperimentDigestsReported"];
    }

    else
    {
      null12 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null12 forKeyedSubscript:@"dictationExperimentDigestsReported"];
    }
  }

  if (self->_eventMetadata)
  {
    eventMetadata = [(ODDSiriSchemaODDSiriClientEvent *)self eventMetadata];
    dictionaryRepresentation13 = [eventMetadata dictionaryRepresentation];
    if (dictionaryRepresentation13)
    {
      [dictionary setObject:dictionaryRepresentation13 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      null13 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null13 forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_executionMetadataReported)
  {
    executionMetadataReported = [(ODDSiriSchemaODDSiriClientEvent *)self executionMetadataReported];
    dictionaryRepresentation14 = [executionMetadataReported dictionaryRepresentation];
    if (dictionaryRepresentation14)
    {
      [dictionary setObject:dictionaryRepresentation14 forKeyedSubscript:@"executionMetadataReported"];
    }

    else
    {
      null14 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null14 forKeyedSubscript:@"executionMetadataReported"];
    }
  }

  if (self->_iOSDevicePropertiesReported)
  {
    iOSDevicePropertiesReported = [(ODDSiriSchemaODDSiriClientEvent *)self iOSDevicePropertiesReported];
    dictionaryRepresentation15 = [iOSDevicePropertiesReported dictionaryRepresentation];
    if (dictionaryRepresentation15)
    {
      [dictionary setObject:dictionaryRepresentation15 forKeyedSubscript:@"iOSDevicePropertiesReported"];
    }

    else
    {
      null15 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null15 forKeyedSubscript:@"iOSDevicePropertiesReported"];
    }
  }

  if (self->_intelligenceFeatureAvailabilityStatusChangesReported)
  {
    intelligenceFeatureAvailabilityStatusChangesReported = [(ODDSiriSchemaODDSiriClientEvent *)self intelligenceFeatureAvailabilityStatusChangesReported];
    dictionaryRepresentation16 = [intelligenceFeatureAvailabilityStatusChangesReported dictionaryRepresentation];
    if (dictionaryRepresentation16)
    {
      [dictionary setObject:dictionaryRepresentation16 forKeyedSubscript:@"intelligenceFeatureAvailabilityStatusChangesReported"];
    }

    else
    {
      null16 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null16 forKeyedSubscript:@"intelligenceFeatureAvailabilityStatusChangesReported"];
    }
  }

  if (self->_macOSDevicePropertiesReported)
  {
    macOSDevicePropertiesReported = [(ODDSiriSchemaODDSiriClientEvent *)self macOSDevicePropertiesReported];
    dictionaryRepresentation17 = [macOSDevicePropertiesReported dictionaryRepresentation];
    if (dictionaryRepresentation17)
    {
      [dictionary setObject:dictionaryRepresentation17 forKeyedSubscript:@"macOSDevicePropertiesReported"];
    }

    else
    {
      null17 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null17 forKeyedSubscript:@"macOSDevicePropertiesReported"];
    }
  }

  if (self->_mobileAssetErrorsReported)
  {
    mobileAssetErrorsReported = [(ODDSiriSchemaODDSiriClientEvent *)self mobileAssetErrorsReported];
    dictionaryRepresentation18 = [mobileAssetErrorsReported dictionaryRepresentation];
    if (dictionaryRepresentation18)
    {
      [dictionary setObject:dictionaryRepresentation18 forKeyedSubscript:@"mobileAssetErrorsReported"];
    }

    else
    {
      null18 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null18 forKeyedSubscript:@"mobileAssetErrorsReported"];
    }
  }

  if (self->_requestsWithoutAssetsDigestReported)
  {
    requestsWithoutAssetsDigestReported = [(ODDSiriSchemaODDSiriClientEvent *)self requestsWithoutAssetsDigestReported];
    dictionaryRepresentation19 = [requestsWithoutAssetsDigestReported dictionaryRepresentation];
    if (dictionaryRepresentation19)
    {
      [dictionary setObject:dictionaryRepresentation19 forKeyedSubscript:@"requestsWithoutAssetsDigestReported"];
    }

    else
    {
      null19 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null19 forKeyedSubscript:@"requestsWithoutAssetsDigestReported"];
    }
  }

  if (self->_siriAccountInformation)
  {
    siriAccountInformation = [(ODDSiriSchemaODDSiriClientEvent *)self siriAccountInformation];
    dictionaryRepresentation20 = [siriAccountInformation dictionaryRepresentation];
    if (dictionaryRepresentation20)
    {
      [dictionary setObject:dictionaryRepresentation20 forKeyedSubscript:@"siriAccountInformation"];
    }

    else
    {
      null20 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null20 forKeyedSubscript:@"siriAccountInformation"];
    }
  }

  if (self->_tvOSDevicePropertiesReported)
  {
    tvOSDevicePropertiesReported = [(ODDSiriSchemaODDSiriClientEvent *)self tvOSDevicePropertiesReported];
    dictionaryRepresentation21 = [tvOSDevicePropertiesReported dictionaryRepresentation];
    if (dictionaryRepresentation21)
    {
      [dictionary setObject:dictionaryRepresentation21 forKeyedSubscript:@"tvOSDevicePropertiesReported"];
    }

    else
    {
      null21 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null21 forKeyedSubscript:@"tvOSDevicePropertiesReported"];
    }
  }

  if (self->_visionOSDevicePropertiesReported)
  {
    visionOSDevicePropertiesReported = [(ODDSiriSchemaODDSiriClientEvent *)self visionOSDevicePropertiesReported];
    dictionaryRepresentation22 = [visionOSDevicePropertiesReported dictionaryRepresentation];
    if (dictionaryRepresentation22)
    {
      [dictionary setObject:dictionaryRepresentation22 forKeyedSubscript:@"visionOSDevicePropertiesReported"];
    }

    else
    {
      null22 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null22 forKeyedSubscript:@"visionOSDevicePropertiesReported"];
    }
  }

  if (self->_watchOSDevicePropertiesReported)
  {
    watchOSDevicePropertiesReported = [(ODDSiriSchemaODDSiriClientEvent *)self watchOSDevicePropertiesReported];
    dictionaryRepresentation23 = [watchOSDevicePropertiesReported dictionaryRepresentation];
    if (dictionaryRepresentation23)
    {
      [dictionary setObject:dictionaryRepresentation23 forKeyedSubscript:@"watchOSDevicePropertiesReported"];
    }

    else
    {
      null23 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null23 forKeyedSubscript:@"watchOSDevicePropertiesReported"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];
  v73 = dictionary;

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(ODDSiriSchemaODDClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(ODDSiriSchemaODDDeviceSegmentsReported *)self->_deviceSegmentsReported hash]^ v3;
  v5 = [(ODDSiriSchemaODDDeviceCohortsReported *)self->_deviceCohortsReported hash];
  v6 = v4 ^ v5 ^ [(ODDSiriSchemaODDAssistantDeviceDigestsReported *)self->_assistantDeviceDigestReported hash];
  v7 = [(ODDSiriSchemaODDDictationDeviceDigestsReported *)self->_dictationDeviceDigestReported hash];
  v8 = v7 ^ [(ODDSiriSchemaODDSiriAccountInformation *)self->_siriAccountInformation hash];
  v9 = v6 ^ v8 ^ [(ODDSiriSchemaODDAssistantExperimentDigestsReported *)self->_assistantExperimentDigestReported hash];
  v10 = [(ODDSiriSchemaODDAssistantDiagnosticAndUsageOptInDigestsReported *)self->_assistantDiagnosticAndUsageOptInDigestReported hash];
  v11 = v10 ^ [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self->_iOSDevicePropertiesReported hash];
  v12 = v11 ^ [(ODDSiriSchemaODDwatchOSDevicePropertiesReported *)self->_watchOSDevicePropertiesReported hash];
  v13 = v9 ^ v12 ^ [(ODDSiriSchemaODDtvOSDevicePropertiesReported *)self->_tvOSDevicePropertiesReported hash];
  v14 = [(ODDSiriSchemaODDmacOSDevicePropertiesReported *)self->_macOSDevicePropertiesReported hash];
  v15 = v14 ^ [(ODDSiriSchemaODDvisionOSDevicePropertiesReported *)self->_visionOSDevicePropertiesReported hash];
  v16 = v15 ^ [(ODDSiriSchemaODDAssistantCarPlayDigestReported *)self->_assistantCarPlayDigestReported hash];
  v17 = v16 ^ [(ODDSiriSchemaODDRequestsWithoutAssetsDigestReported *)self->_requestsWithoutAssetsDigestReported hash];
  v18 = v13 ^ v17 ^ [(ODDSiriSchemaODDAssetAvailabilityFromBootDigestReported *)self->_assetAvailabilityFromBootDigestReported hash];
  v19 = [(ODDSiriSchemaODDAssetSetStatusDigestReported *)self->_assetSetStatusDigestReported hash];
  v20 = v19 ^ [(ODDSiriSchemaODDExecutionMetadataReported *)self->_executionMetadataReported hash];
  v21 = v20 ^ [(ODDSiriSchemaODDDictationExperimentDigestsReported *)self->_dictationExperimentDigestsReported hash];
  v22 = v21 ^ [(ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported *)self->_attentionInvocationDigestsReported hash];
  v23 = v22 ^ [(ODDSiriSchemaODDBluetoothCarDigestReported *)self->_bluetoothCarDigestReported hash];
  v24 = v18 ^ v23 ^ [(ODDSiriSchemaODDMobileAssetErrorsReported *)self->_mobileAssetErrorsReported hash];
  return v24 ^ [(ODDSiriSchemaODDIntelligenceFeatureAvailabilityStatusChangesReported *)self->_intelligenceFeatureAvailabilityStatusChangesReported hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_118;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [equalCopy whichEvent_Type])
  {
    goto LABEL_118;
  }

  eventMetadata = [(ODDSiriSchemaODDSiriClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_117;
  }

  eventMetadata3 = [(ODDSiriSchemaODDSiriClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(ODDSiriSchemaODDSiriClientEvent *)self eventMetadata];
    eventMetadata5 = [equalCopy eventMetadata];
    v12 = [eventMetadata4 isEqual:eventMetadata5];

    if (!v12)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  eventMetadata = [(ODDSiriSchemaODDSiriClientEvent *)self deviceSegmentsReported];
  eventMetadata2 = [equalCopy deviceSegmentsReported];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_117;
  }

  deviceSegmentsReported = [(ODDSiriSchemaODDSiriClientEvent *)self deviceSegmentsReported];
  if (deviceSegmentsReported)
  {
    v14 = deviceSegmentsReported;
    deviceSegmentsReported2 = [(ODDSiriSchemaODDSiriClientEvent *)self deviceSegmentsReported];
    deviceSegmentsReported3 = [equalCopy deviceSegmentsReported];
    v17 = [deviceSegmentsReported2 isEqual:deviceSegmentsReported3];

    if (!v17)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  eventMetadata = [(ODDSiriSchemaODDSiriClientEvent *)self deviceCohortsReported];
  eventMetadata2 = [equalCopy deviceCohortsReported];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_117;
  }

  deviceCohortsReported = [(ODDSiriSchemaODDSiriClientEvent *)self deviceCohortsReported];
  if (deviceCohortsReported)
  {
    v19 = deviceCohortsReported;
    deviceCohortsReported2 = [(ODDSiriSchemaODDSiriClientEvent *)self deviceCohortsReported];
    deviceCohortsReported3 = [equalCopy deviceCohortsReported];
    v22 = [deviceCohortsReported2 isEqual:deviceCohortsReported3];

    if (!v22)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  eventMetadata = [(ODDSiriSchemaODDSiriClientEvent *)self assistantDeviceDigestReported];
  eventMetadata2 = [equalCopy assistantDeviceDigestReported];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_117;
  }

  assistantDeviceDigestReported = [(ODDSiriSchemaODDSiriClientEvent *)self assistantDeviceDigestReported];
  if (assistantDeviceDigestReported)
  {
    v24 = assistantDeviceDigestReported;
    assistantDeviceDigestReported2 = [(ODDSiriSchemaODDSiriClientEvent *)self assistantDeviceDigestReported];
    assistantDeviceDigestReported3 = [equalCopy assistantDeviceDigestReported];
    v27 = [assistantDeviceDigestReported2 isEqual:assistantDeviceDigestReported3];

    if (!v27)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  eventMetadata = [(ODDSiriSchemaODDSiriClientEvent *)self dictationDeviceDigestReported];
  eventMetadata2 = [equalCopy dictationDeviceDigestReported];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_117;
  }

  dictationDeviceDigestReported = [(ODDSiriSchemaODDSiriClientEvent *)self dictationDeviceDigestReported];
  if (dictationDeviceDigestReported)
  {
    v29 = dictationDeviceDigestReported;
    dictationDeviceDigestReported2 = [(ODDSiriSchemaODDSiriClientEvent *)self dictationDeviceDigestReported];
    dictationDeviceDigestReported3 = [equalCopy dictationDeviceDigestReported];
    v32 = [dictationDeviceDigestReported2 isEqual:dictationDeviceDigestReported3];

    if (!v32)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  eventMetadata = [(ODDSiriSchemaODDSiriClientEvent *)self siriAccountInformation];
  eventMetadata2 = [equalCopy siriAccountInformation];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_117;
  }

  siriAccountInformation = [(ODDSiriSchemaODDSiriClientEvent *)self siriAccountInformation];
  if (siriAccountInformation)
  {
    v34 = siriAccountInformation;
    siriAccountInformation2 = [(ODDSiriSchemaODDSiriClientEvent *)self siriAccountInformation];
    siriAccountInformation3 = [equalCopy siriAccountInformation];
    v37 = [siriAccountInformation2 isEqual:siriAccountInformation3];

    if (!v37)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  eventMetadata = [(ODDSiriSchemaODDSiriClientEvent *)self assistantExperimentDigestReported];
  eventMetadata2 = [equalCopy assistantExperimentDigestReported];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_117;
  }

  assistantExperimentDigestReported = [(ODDSiriSchemaODDSiriClientEvent *)self assistantExperimentDigestReported];
  if (assistantExperimentDigestReported)
  {
    v39 = assistantExperimentDigestReported;
    assistantExperimentDigestReported2 = [(ODDSiriSchemaODDSiriClientEvent *)self assistantExperimentDigestReported];
    assistantExperimentDigestReported3 = [equalCopy assistantExperimentDigestReported];
    v42 = [assistantExperimentDigestReported2 isEqual:assistantExperimentDigestReported3];

    if (!v42)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  eventMetadata = [(ODDSiriSchemaODDSiriClientEvent *)self assistantDiagnosticAndUsageOptInDigestReported];
  eventMetadata2 = [equalCopy assistantDiagnosticAndUsageOptInDigestReported];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_117;
  }

  assistantDiagnosticAndUsageOptInDigestReported = [(ODDSiriSchemaODDSiriClientEvent *)self assistantDiagnosticAndUsageOptInDigestReported];
  if (assistantDiagnosticAndUsageOptInDigestReported)
  {
    v44 = assistantDiagnosticAndUsageOptInDigestReported;
    assistantDiagnosticAndUsageOptInDigestReported2 = [(ODDSiriSchemaODDSiriClientEvent *)self assistantDiagnosticAndUsageOptInDigestReported];
    assistantDiagnosticAndUsageOptInDigestReported3 = [equalCopy assistantDiagnosticAndUsageOptInDigestReported];
    v47 = [assistantDiagnosticAndUsageOptInDigestReported2 isEqual:assistantDiagnosticAndUsageOptInDigestReported3];

    if (!v47)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  eventMetadata = [(ODDSiriSchemaODDSiriClientEvent *)self iOSDevicePropertiesReported];
  eventMetadata2 = [equalCopy iOSDevicePropertiesReported];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_117;
  }

  iOSDevicePropertiesReported = [(ODDSiriSchemaODDSiriClientEvent *)self iOSDevicePropertiesReported];
  if (iOSDevicePropertiesReported)
  {
    v49 = iOSDevicePropertiesReported;
    iOSDevicePropertiesReported2 = [(ODDSiriSchemaODDSiriClientEvent *)self iOSDevicePropertiesReported];
    iOSDevicePropertiesReported3 = [equalCopy iOSDevicePropertiesReported];
    v52 = [iOSDevicePropertiesReported2 isEqual:iOSDevicePropertiesReported3];

    if (!v52)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  eventMetadata = [(ODDSiriSchemaODDSiriClientEvent *)self watchOSDevicePropertiesReported];
  eventMetadata2 = [equalCopy watchOSDevicePropertiesReported];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_117;
  }

  watchOSDevicePropertiesReported = [(ODDSiriSchemaODDSiriClientEvent *)self watchOSDevicePropertiesReported];
  if (watchOSDevicePropertiesReported)
  {
    v54 = watchOSDevicePropertiesReported;
    watchOSDevicePropertiesReported2 = [(ODDSiriSchemaODDSiriClientEvent *)self watchOSDevicePropertiesReported];
    watchOSDevicePropertiesReported3 = [equalCopy watchOSDevicePropertiesReported];
    v57 = [watchOSDevicePropertiesReported2 isEqual:watchOSDevicePropertiesReported3];

    if (!v57)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  eventMetadata = [(ODDSiriSchemaODDSiriClientEvent *)self tvOSDevicePropertiesReported];
  eventMetadata2 = [equalCopy tvOSDevicePropertiesReported];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_117;
  }

  tvOSDevicePropertiesReported = [(ODDSiriSchemaODDSiriClientEvent *)self tvOSDevicePropertiesReported];
  if (tvOSDevicePropertiesReported)
  {
    v59 = tvOSDevicePropertiesReported;
    tvOSDevicePropertiesReported2 = [(ODDSiriSchemaODDSiriClientEvent *)self tvOSDevicePropertiesReported];
    tvOSDevicePropertiesReported3 = [equalCopy tvOSDevicePropertiesReported];
    v62 = [tvOSDevicePropertiesReported2 isEqual:tvOSDevicePropertiesReported3];

    if (!v62)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  eventMetadata = [(ODDSiriSchemaODDSiriClientEvent *)self macOSDevicePropertiesReported];
  eventMetadata2 = [equalCopy macOSDevicePropertiesReported];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_117;
  }

  macOSDevicePropertiesReported = [(ODDSiriSchemaODDSiriClientEvent *)self macOSDevicePropertiesReported];
  if (macOSDevicePropertiesReported)
  {
    v64 = macOSDevicePropertiesReported;
    macOSDevicePropertiesReported2 = [(ODDSiriSchemaODDSiriClientEvent *)self macOSDevicePropertiesReported];
    macOSDevicePropertiesReported3 = [equalCopy macOSDevicePropertiesReported];
    v67 = [macOSDevicePropertiesReported2 isEqual:macOSDevicePropertiesReported3];

    if (!v67)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  eventMetadata = [(ODDSiriSchemaODDSiriClientEvent *)self visionOSDevicePropertiesReported];
  eventMetadata2 = [equalCopy visionOSDevicePropertiesReported];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_117;
  }

  visionOSDevicePropertiesReported = [(ODDSiriSchemaODDSiriClientEvent *)self visionOSDevicePropertiesReported];
  if (visionOSDevicePropertiesReported)
  {
    v69 = visionOSDevicePropertiesReported;
    visionOSDevicePropertiesReported2 = [(ODDSiriSchemaODDSiriClientEvent *)self visionOSDevicePropertiesReported];
    visionOSDevicePropertiesReported3 = [equalCopy visionOSDevicePropertiesReported];
    v72 = [visionOSDevicePropertiesReported2 isEqual:visionOSDevicePropertiesReported3];

    if (!v72)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  eventMetadata = [(ODDSiriSchemaODDSiriClientEvent *)self assistantCarPlayDigestReported];
  eventMetadata2 = [equalCopy assistantCarPlayDigestReported];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_117;
  }

  assistantCarPlayDigestReported = [(ODDSiriSchemaODDSiriClientEvent *)self assistantCarPlayDigestReported];
  if (assistantCarPlayDigestReported)
  {
    v74 = assistantCarPlayDigestReported;
    assistantCarPlayDigestReported2 = [(ODDSiriSchemaODDSiriClientEvent *)self assistantCarPlayDigestReported];
    assistantCarPlayDigestReported3 = [equalCopy assistantCarPlayDigestReported];
    v77 = [assistantCarPlayDigestReported2 isEqual:assistantCarPlayDigestReported3];

    if (!v77)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  eventMetadata = [(ODDSiriSchemaODDSiriClientEvent *)self requestsWithoutAssetsDigestReported];
  eventMetadata2 = [equalCopy requestsWithoutAssetsDigestReported];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_117;
  }

  requestsWithoutAssetsDigestReported = [(ODDSiriSchemaODDSiriClientEvent *)self requestsWithoutAssetsDigestReported];
  if (requestsWithoutAssetsDigestReported)
  {
    v79 = requestsWithoutAssetsDigestReported;
    requestsWithoutAssetsDigestReported2 = [(ODDSiriSchemaODDSiriClientEvent *)self requestsWithoutAssetsDigestReported];
    requestsWithoutAssetsDigestReported3 = [equalCopy requestsWithoutAssetsDigestReported];
    v82 = [requestsWithoutAssetsDigestReported2 isEqual:requestsWithoutAssetsDigestReported3];

    if (!v82)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  eventMetadata = [(ODDSiriSchemaODDSiriClientEvent *)self assetAvailabilityFromBootDigestReported];
  eventMetadata2 = [equalCopy assetAvailabilityFromBootDigestReported];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_117;
  }

  assetAvailabilityFromBootDigestReported = [(ODDSiriSchemaODDSiriClientEvent *)self assetAvailabilityFromBootDigestReported];
  if (assetAvailabilityFromBootDigestReported)
  {
    v84 = assetAvailabilityFromBootDigestReported;
    assetAvailabilityFromBootDigestReported2 = [(ODDSiriSchemaODDSiriClientEvent *)self assetAvailabilityFromBootDigestReported];
    assetAvailabilityFromBootDigestReported3 = [equalCopy assetAvailabilityFromBootDigestReported];
    v87 = [assetAvailabilityFromBootDigestReported2 isEqual:assetAvailabilityFromBootDigestReported3];

    if (!v87)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  eventMetadata = [(ODDSiriSchemaODDSiriClientEvent *)self assetSetStatusDigestReported];
  eventMetadata2 = [equalCopy assetSetStatusDigestReported];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_117;
  }

  assetSetStatusDigestReported = [(ODDSiriSchemaODDSiriClientEvent *)self assetSetStatusDigestReported];
  if (assetSetStatusDigestReported)
  {
    v89 = assetSetStatusDigestReported;
    assetSetStatusDigestReported2 = [(ODDSiriSchemaODDSiriClientEvent *)self assetSetStatusDigestReported];
    assetSetStatusDigestReported3 = [equalCopy assetSetStatusDigestReported];
    v92 = [assetSetStatusDigestReported2 isEqual:assetSetStatusDigestReported3];

    if (!v92)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  eventMetadata = [(ODDSiriSchemaODDSiriClientEvent *)self executionMetadataReported];
  eventMetadata2 = [equalCopy executionMetadataReported];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_117;
  }

  executionMetadataReported = [(ODDSiriSchemaODDSiriClientEvent *)self executionMetadataReported];
  if (executionMetadataReported)
  {
    v94 = executionMetadataReported;
    executionMetadataReported2 = [(ODDSiriSchemaODDSiriClientEvent *)self executionMetadataReported];
    executionMetadataReported3 = [equalCopy executionMetadataReported];
    v97 = [executionMetadataReported2 isEqual:executionMetadataReported3];

    if (!v97)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  eventMetadata = [(ODDSiriSchemaODDSiriClientEvent *)self dictationExperimentDigestsReported];
  eventMetadata2 = [equalCopy dictationExperimentDigestsReported];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_117;
  }

  dictationExperimentDigestsReported = [(ODDSiriSchemaODDSiriClientEvent *)self dictationExperimentDigestsReported];
  if (dictationExperimentDigestsReported)
  {
    v99 = dictationExperimentDigestsReported;
    dictationExperimentDigestsReported2 = [(ODDSiriSchemaODDSiriClientEvent *)self dictationExperimentDigestsReported];
    dictationExperimentDigestsReported3 = [equalCopy dictationExperimentDigestsReported];
    v102 = [dictationExperimentDigestsReported2 isEqual:dictationExperimentDigestsReported3];

    if (!v102)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  eventMetadata = [(ODDSiriSchemaODDSiriClientEvent *)self attentionInvocationDigestsReported];
  eventMetadata2 = [equalCopy attentionInvocationDigestsReported];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_117;
  }

  attentionInvocationDigestsReported = [(ODDSiriSchemaODDSiriClientEvent *)self attentionInvocationDigestsReported];
  if (attentionInvocationDigestsReported)
  {
    v104 = attentionInvocationDigestsReported;
    attentionInvocationDigestsReported2 = [(ODDSiriSchemaODDSiriClientEvent *)self attentionInvocationDigestsReported];
    attentionInvocationDigestsReported3 = [equalCopy attentionInvocationDigestsReported];
    v107 = [attentionInvocationDigestsReported2 isEqual:attentionInvocationDigestsReported3];

    if (!v107)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  eventMetadata = [(ODDSiriSchemaODDSiriClientEvent *)self bluetoothCarDigestReported];
  eventMetadata2 = [equalCopy bluetoothCarDigestReported];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_117;
  }

  bluetoothCarDigestReported = [(ODDSiriSchemaODDSiriClientEvent *)self bluetoothCarDigestReported];
  if (bluetoothCarDigestReported)
  {
    v109 = bluetoothCarDigestReported;
    bluetoothCarDigestReported2 = [(ODDSiriSchemaODDSiriClientEvent *)self bluetoothCarDigestReported];
    bluetoothCarDigestReported3 = [equalCopy bluetoothCarDigestReported];
    v112 = [bluetoothCarDigestReported2 isEqual:bluetoothCarDigestReported3];

    if (!v112)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  eventMetadata = [(ODDSiriSchemaODDSiriClientEvent *)self mobileAssetErrorsReported];
  eventMetadata2 = [equalCopy mobileAssetErrorsReported];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_117;
  }

  mobileAssetErrorsReported = [(ODDSiriSchemaODDSiriClientEvent *)self mobileAssetErrorsReported];
  if (mobileAssetErrorsReported)
  {
    v114 = mobileAssetErrorsReported;
    mobileAssetErrorsReported2 = [(ODDSiriSchemaODDSiriClientEvent *)self mobileAssetErrorsReported];
    mobileAssetErrorsReported3 = [equalCopy mobileAssetErrorsReported];
    v117 = [mobileAssetErrorsReported2 isEqual:mobileAssetErrorsReported3];

    if (!v117)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  eventMetadata = [(ODDSiriSchemaODDSiriClientEvent *)self intelligenceFeatureAvailabilityStatusChangesReported];
  eventMetadata2 = [equalCopy intelligenceFeatureAvailabilityStatusChangesReported];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    intelligenceFeatureAvailabilityStatusChangesReported = [(ODDSiriSchemaODDSiriClientEvent *)self intelligenceFeatureAvailabilityStatusChangesReported];
    if (!intelligenceFeatureAvailabilityStatusChangesReported)
    {

LABEL_121:
      v123 = 1;
      goto LABEL_119;
    }

    v119 = intelligenceFeatureAvailabilityStatusChangesReported;
    intelligenceFeatureAvailabilityStatusChangesReported2 = [(ODDSiriSchemaODDSiriClientEvent *)self intelligenceFeatureAvailabilityStatusChangesReported];
    intelligenceFeatureAvailabilityStatusChangesReported3 = [equalCopy intelligenceFeatureAvailabilityStatusChangesReported];
    v122 = [intelligenceFeatureAvailabilityStatusChangesReported2 isEqual:intelligenceFeatureAvailabilityStatusChangesReported3];

    if (v122)
    {
      goto LABEL_121;
    }
  }

  else
  {
LABEL_117:
  }

LABEL_118:
  v123 = 0;
LABEL_119:

  return v123;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  eventMetadata = [(ODDSiriSchemaODDSiriClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(ODDSiriSchemaODDSiriClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  deviceSegmentsReported = [(ODDSiriSchemaODDSiriClientEvent *)self deviceSegmentsReported];

  if (deviceSegmentsReported)
  {
    deviceSegmentsReported2 = [(ODDSiriSchemaODDSiriClientEvent *)self deviceSegmentsReported];
    PBDataWriterWriteSubmessage();
  }

  deviceCohortsReported = [(ODDSiriSchemaODDSiriClientEvent *)self deviceCohortsReported];

  if (deviceCohortsReported)
  {
    deviceCohortsReported2 = [(ODDSiriSchemaODDSiriClientEvent *)self deviceCohortsReported];
    PBDataWriterWriteSubmessage();
  }

  assistantDeviceDigestReported = [(ODDSiriSchemaODDSiriClientEvent *)self assistantDeviceDigestReported];

  if (assistantDeviceDigestReported)
  {
    assistantDeviceDigestReported2 = [(ODDSiriSchemaODDSiriClientEvent *)self assistantDeviceDigestReported];
    PBDataWriterWriteSubmessage();
  }

  dictationDeviceDigestReported = [(ODDSiriSchemaODDSiriClientEvent *)self dictationDeviceDigestReported];

  if (dictationDeviceDigestReported)
  {
    dictationDeviceDigestReported2 = [(ODDSiriSchemaODDSiriClientEvent *)self dictationDeviceDigestReported];
    PBDataWriterWriteSubmessage();
  }

  siriAccountInformation = [(ODDSiriSchemaODDSiriClientEvent *)self siriAccountInformation];

  if (siriAccountInformation)
  {
    siriAccountInformation2 = [(ODDSiriSchemaODDSiriClientEvent *)self siriAccountInformation];
    PBDataWriterWriteSubmessage();
  }

  assistantExperimentDigestReported = [(ODDSiriSchemaODDSiriClientEvent *)self assistantExperimentDigestReported];

  if (assistantExperimentDigestReported)
  {
    assistantExperimentDigestReported2 = [(ODDSiriSchemaODDSiriClientEvent *)self assistantExperimentDigestReported];
    PBDataWriterWriteSubmessage();
  }

  assistantDiagnosticAndUsageOptInDigestReported = [(ODDSiriSchemaODDSiriClientEvent *)self assistantDiagnosticAndUsageOptInDigestReported];

  if (assistantDiagnosticAndUsageOptInDigestReported)
  {
    assistantDiagnosticAndUsageOptInDigestReported2 = [(ODDSiriSchemaODDSiriClientEvent *)self assistantDiagnosticAndUsageOptInDigestReported];
    PBDataWriterWriteSubmessage();
  }

  iOSDevicePropertiesReported = [(ODDSiriSchemaODDSiriClientEvent *)self iOSDevicePropertiesReported];

  if (iOSDevicePropertiesReported)
  {
    iOSDevicePropertiesReported2 = [(ODDSiriSchemaODDSiriClientEvent *)self iOSDevicePropertiesReported];
    PBDataWriterWriteSubmessage();
  }

  watchOSDevicePropertiesReported = [(ODDSiriSchemaODDSiriClientEvent *)self watchOSDevicePropertiesReported];

  if (watchOSDevicePropertiesReported)
  {
    watchOSDevicePropertiesReported2 = [(ODDSiriSchemaODDSiriClientEvent *)self watchOSDevicePropertiesReported];
    PBDataWriterWriteSubmessage();
  }

  tvOSDevicePropertiesReported = [(ODDSiriSchemaODDSiriClientEvent *)self tvOSDevicePropertiesReported];

  if (tvOSDevicePropertiesReported)
  {
    tvOSDevicePropertiesReported2 = [(ODDSiriSchemaODDSiriClientEvent *)self tvOSDevicePropertiesReported];
    PBDataWriterWriteSubmessage();
  }

  macOSDevicePropertiesReported = [(ODDSiriSchemaODDSiriClientEvent *)self macOSDevicePropertiesReported];

  if (macOSDevicePropertiesReported)
  {
    macOSDevicePropertiesReported2 = [(ODDSiriSchemaODDSiriClientEvent *)self macOSDevicePropertiesReported];
    PBDataWriterWriteSubmessage();
  }

  visionOSDevicePropertiesReported = [(ODDSiriSchemaODDSiriClientEvent *)self visionOSDevicePropertiesReported];

  if (visionOSDevicePropertiesReported)
  {
    visionOSDevicePropertiesReported2 = [(ODDSiriSchemaODDSiriClientEvent *)self visionOSDevicePropertiesReported];
    PBDataWriterWriteSubmessage();
  }

  assistantCarPlayDigestReported = [(ODDSiriSchemaODDSiriClientEvent *)self assistantCarPlayDigestReported];

  if (assistantCarPlayDigestReported)
  {
    assistantCarPlayDigestReported2 = [(ODDSiriSchemaODDSiriClientEvent *)self assistantCarPlayDigestReported];
    PBDataWriterWriteSubmessage();
  }

  requestsWithoutAssetsDigestReported = [(ODDSiriSchemaODDSiriClientEvent *)self requestsWithoutAssetsDigestReported];

  if (requestsWithoutAssetsDigestReported)
  {
    requestsWithoutAssetsDigestReported2 = [(ODDSiriSchemaODDSiriClientEvent *)self requestsWithoutAssetsDigestReported];
    PBDataWriterWriteSubmessage();
  }

  assetAvailabilityFromBootDigestReported = [(ODDSiriSchemaODDSiriClientEvent *)self assetAvailabilityFromBootDigestReported];

  if (assetAvailabilityFromBootDigestReported)
  {
    assetAvailabilityFromBootDigestReported2 = [(ODDSiriSchemaODDSiriClientEvent *)self assetAvailabilityFromBootDigestReported];
    PBDataWriterWriteSubmessage();
  }

  assetSetStatusDigestReported = [(ODDSiriSchemaODDSiriClientEvent *)self assetSetStatusDigestReported];

  if (assetSetStatusDigestReported)
  {
    assetSetStatusDigestReported2 = [(ODDSiriSchemaODDSiriClientEvent *)self assetSetStatusDigestReported];
    PBDataWriterWriteSubmessage();
  }

  executionMetadataReported = [(ODDSiriSchemaODDSiriClientEvent *)self executionMetadataReported];

  if (executionMetadataReported)
  {
    executionMetadataReported2 = [(ODDSiriSchemaODDSiriClientEvent *)self executionMetadataReported];
    PBDataWriterWriteSubmessage();
  }

  dictationExperimentDigestsReported = [(ODDSiriSchemaODDSiriClientEvent *)self dictationExperimentDigestsReported];

  if (dictationExperimentDigestsReported)
  {
    dictationExperimentDigestsReported2 = [(ODDSiriSchemaODDSiriClientEvent *)self dictationExperimentDigestsReported];
    PBDataWriterWriteSubmessage();
  }

  attentionInvocationDigestsReported = [(ODDSiriSchemaODDSiriClientEvent *)self attentionInvocationDigestsReported];

  if (attentionInvocationDigestsReported)
  {
    attentionInvocationDigestsReported2 = [(ODDSiriSchemaODDSiriClientEvent *)self attentionInvocationDigestsReported];
    PBDataWriterWriteSubmessage();
  }

  bluetoothCarDigestReported = [(ODDSiriSchemaODDSiriClientEvent *)self bluetoothCarDigestReported];

  if (bluetoothCarDigestReported)
  {
    bluetoothCarDigestReported2 = [(ODDSiriSchemaODDSiriClientEvent *)self bluetoothCarDigestReported];
    PBDataWriterWriteSubmessage();
  }

  mobileAssetErrorsReported = [(ODDSiriSchemaODDSiriClientEvent *)self mobileAssetErrorsReported];

  if (mobileAssetErrorsReported)
  {
    mobileAssetErrorsReported2 = [(ODDSiriSchemaODDSiriClientEvent *)self mobileAssetErrorsReported];
    PBDataWriterWriteSubmessage();
  }

  intelligenceFeatureAvailabilityStatusChangesReported = [(ODDSiriSchemaODDSiriClientEvent *)self intelligenceFeatureAvailabilityStatusChangesReported];

  v49 = toCopy;
  if (intelligenceFeatureAvailabilityStatusChangesReported)
  {
    intelligenceFeatureAvailabilityStatusChangesReported2 = [(ODDSiriSchemaODDSiriClientEvent *)self intelligenceFeatureAvailabilityStatusChangesReported];
    PBDataWriterWriteSubmessage();

    v49 = toCopy;
  }
}

- (void)deleteIntelligenceFeatureAvailabilityStatusChangesReported
{
  if (self->_whichEvent_Type == 32)
  {
    self->_whichEvent_Type = 0;
    self->_intelligenceFeatureAvailabilityStatusChangesReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ODDSiriSchemaODDIntelligenceFeatureAvailabilityStatusChangesReported)intelligenceFeatureAvailabilityStatusChangesReported
{
  if (self->_whichEvent_Type == 32)
  {
    v3 = self->_intelligenceFeatureAvailabilityStatusChangesReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setIntelligenceFeatureAvailabilityStatusChangesReported:(id)reported
{
  reportedCopy = reported;
  deviceSegmentsReported = self->_deviceSegmentsReported;
  self->_deviceSegmentsReported = 0;

  deviceCohortsReported = self->_deviceCohortsReported;
  self->_deviceCohortsReported = 0;

  assistantDeviceDigestReported = self->_assistantDeviceDigestReported;
  self->_assistantDeviceDigestReported = 0;

  dictationDeviceDigestReported = self->_dictationDeviceDigestReported;
  self->_dictationDeviceDigestReported = 0;

  siriAccountInformation = self->_siriAccountInformation;
  self->_siriAccountInformation = 0;

  assistantExperimentDigestReported = self->_assistantExperimentDigestReported;
  self->_assistantExperimentDigestReported = 0;

  assistantDiagnosticAndUsageOptInDigestReported = self->_assistantDiagnosticAndUsageOptInDigestReported;
  self->_assistantDiagnosticAndUsageOptInDigestReported = 0;

  iOSDevicePropertiesReported = self->_iOSDevicePropertiesReported;
  self->_iOSDevicePropertiesReported = 0;

  watchOSDevicePropertiesReported = self->_watchOSDevicePropertiesReported;
  self->_watchOSDevicePropertiesReported = 0;

  tvOSDevicePropertiesReported = self->_tvOSDevicePropertiesReported;
  self->_tvOSDevicePropertiesReported = 0;

  macOSDevicePropertiesReported = self->_macOSDevicePropertiesReported;
  self->_macOSDevicePropertiesReported = 0;

  visionOSDevicePropertiesReported = self->_visionOSDevicePropertiesReported;
  self->_visionOSDevicePropertiesReported = 0;

  assistantCarPlayDigestReported = self->_assistantCarPlayDigestReported;
  self->_assistantCarPlayDigestReported = 0;

  requestsWithoutAssetsDigestReported = self->_requestsWithoutAssetsDigestReported;
  self->_requestsWithoutAssetsDigestReported = 0;

  assetAvailabilityFromBootDigestReported = self->_assetAvailabilityFromBootDigestReported;
  self->_assetAvailabilityFromBootDigestReported = 0;

  assetSetStatusDigestReported = self->_assetSetStatusDigestReported;
  self->_assetSetStatusDigestReported = 0;

  executionMetadataReported = self->_executionMetadataReported;
  self->_executionMetadataReported = 0;

  dictationExperimentDigestsReported = self->_dictationExperimentDigestsReported;
  self->_dictationExperimentDigestsReported = 0;

  attentionInvocationDigestsReported = self->_attentionInvocationDigestsReported;
  self->_attentionInvocationDigestsReported = 0;

  bluetoothCarDigestReported = self->_bluetoothCarDigestReported;
  self->_bluetoothCarDigestReported = 0;

  mobileAssetErrorsReported = self->_mobileAssetErrorsReported;
  self->_mobileAssetErrorsReported = 0;

  self->_whichEvent_Type = 32 * (reportedCopy != 0);
  intelligenceFeatureAvailabilityStatusChangesReported = self->_intelligenceFeatureAvailabilityStatusChangesReported;
  self->_intelligenceFeatureAvailabilityStatusChangesReported = reportedCopy;
}

- (void)deleteMobileAssetErrorsReported
{
  if (self->_whichEvent_Type == 31)
  {
    self->_whichEvent_Type = 0;
    self->_mobileAssetErrorsReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ODDSiriSchemaODDMobileAssetErrorsReported)mobileAssetErrorsReported
{
  if (self->_whichEvent_Type == 31)
  {
    v3 = self->_mobileAssetErrorsReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setMobileAssetErrorsReported:(id)reported
{
  reportedCopy = reported;
  deviceSegmentsReported = self->_deviceSegmentsReported;
  self->_deviceSegmentsReported = 0;

  deviceCohortsReported = self->_deviceCohortsReported;
  self->_deviceCohortsReported = 0;

  assistantDeviceDigestReported = self->_assistantDeviceDigestReported;
  self->_assistantDeviceDigestReported = 0;

  dictationDeviceDigestReported = self->_dictationDeviceDigestReported;
  self->_dictationDeviceDigestReported = 0;

  siriAccountInformation = self->_siriAccountInformation;
  self->_siriAccountInformation = 0;

  assistantExperimentDigestReported = self->_assistantExperimentDigestReported;
  self->_assistantExperimentDigestReported = 0;

  assistantDiagnosticAndUsageOptInDigestReported = self->_assistantDiagnosticAndUsageOptInDigestReported;
  self->_assistantDiagnosticAndUsageOptInDigestReported = 0;

  iOSDevicePropertiesReported = self->_iOSDevicePropertiesReported;
  self->_iOSDevicePropertiesReported = 0;

  watchOSDevicePropertiesReported = self->_watchOSDevicePropertiesReported;
  self->_watchOSDevicePropertiesReported = 0;

  tvOSDevicePropertiesReported = self->_tvOSDevicePropertiesReported;
  self->_tvOSDevicePropertiesReported = 0;

  macOSDevicePropertiesReported = self->_macOSDevicePropertiesReported;
  self->_macOSDevicePropertiesReported = 0;

  visionOSDevicePropertiesReported = self->_visionOSDevicePropertiesReported;
  self->_visionOSDevicePropertiesReported = 0;

  assistantCarPlayDigestReported = self->_assistantCarPlayDigestReported;
  self->_assistantCarPlayDigestReported = 0;

  requestsWithoutAssetsDigestReported = self->_requestsWithoutAssetsDigestReported;
  self->_requestsWithoutAssetsDigestReported = 0;

  assetAvailabilityFromBootDigestReported = self->_assetAvailabilityFromBootDigestReported;
  self->_assetAvailabilityFromBootDigestReported = 0;

  assetSetStatusDigestReported = self->_assetSetStatusDigestReported;
  self->_assetSetStatusDigestReported = 0;

  executionMetadataReported = self->_executionMetadataReported;
  self->_executionMetadataReported = 0;

  dictationExperimentDigestsReported = self->_dictationExperimentDigestsReported;
  self->_dictationExperimentDigestsReported = 0;

  attentionInvocationDigestsReported = self->_attentionInvocationDigestsReported;
  self->_attentionInvocationDigestsReported = 0;

  bluetoothCarDigestReported = self->_bluetoothCarDigestReported;
  self->_bluetoothCarDigestReported = 0;

  intelligenceFeatureAvailabilityStatusChangesReported = self->_intelligenceFeatureAvailabilityStatusChangesReported;
  self->_intelligenceFeatureAvailabilityStatusChangesReported = 0;

  v26 = 31;
  if (!reportedCopy)
  {
    v26 = 0;
  }

  self->_whichEvent_Type = v26;
  mobileAssetErrorsReported = self->_mobileAssetErrorsReported;
  self->_mobileAssetErrorsReported = reportedCopy;
}

- (void)deleteBluetoothCarDigestReported
{
  if (self->_whichEvent_Type == 30)
  {
    self->_whichEvent_Type = 0;
    self->_bluetoothCarDigestReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ODDSiriSchemaODDBluetoothCarDigestReported)bluetoothCarDigestReported
{
  if (self->_whichEvent_Type == 30)
  {
    v3 = self->_bluetoothCarDigestReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setBluetoothCarDigestReported:(id)reported
{
  reportedCopy = reported;
  deviceSegmentsReported = self->_deviceSegmentsReported;
  self->_deviceSegmentsReported = 0;

  deviceCohortsReported = self->_deviceCohortsReported;
  self->_deviceCohortsReported = 0;

  assistantDeviceDigestReported = self->_assistantDeviceDigestReported;
  self->_assistantDeviceDigestReported = 0;

  dictationDeviceDigestReported = self->_dictationDeviceDigestReported;
  self->_dictationDeviceDigestReported = 0;

  siriAccountInformation = self->_siriAccountInformation;
  self->_siriAccountInformation = 0;

  assistantExperimentDigestReported = self->_assistantExperimentDigestReported;
  self->_assistantExperimentDigestReported = 0;

  assistantDiagnosticAndUsageOptInDigestReported = self->_assistantDiagnosticAndUsageOptInDigestReported;
  self->_assistantDiagnosticAndUsageOptInDigestReported = 0;

  iOSDevicePropertiesReported = self->_iOSDevicePropertiesReported;
  self->_iOSDevicePropertiesReported = 0;

  watchOSDevicePropertiesReported = self->_watchOSDevicePropertiesReported;
  self->_watchOSDevicePropertiesReported = 0;

  tvOSDevicePropertiesReported = self->_tvOSDevicePropertiesReported;
  self->_tvOSDevicePropertiesReported = 0;

  macOSDevicePropertiesReported = self->_macOSDevicePropertiesReported;
  self->_macOSDevicePropertiesReported = 0;

  visionOSDevicePropertiesReported = self->_visionOSDevicePropertiesReported;
  self->_visionOSDevicePropertiesReported = 0;

  assistantCarPlayDigestReported = self->_assistantCarPlayDigestReported;
  self->_assistantCarPlayDigestReported = 0;

  requestsWithoutAssetsDigestReported = self->_requestsWithoutAssetsDigestReported;
  self->_requestsWithoutAssetsDigestReported = 0;

  assetAvailabilityFromBootDigestReported = self->_assetAvailabilityFromBootDigestReported;
  self->_assetAvailabilityFromBootDigestReported = 0;

  assetSetStatusDigestReported = self->_assetSetStatusDigestReported;
  self->_assetSetStatusDigestReported = 0;

  executionMetadataReported = self->_executionMetadataReported;
  self->_executionMetadataReported = 0;

  dictationExperimentDigestsReported = self->_dictationExperimentDigestsReported;
  self->_dictationExperimentDigestsReported = 0;

  attentionInvocationDigestsReported = self->_attentionInvocationDigestsReported;
  self->_attentionInvocationDigestsReported = 0;

  mobileAssetErrorsReported = self->_mobileAssetErrorsReported;
  self->_mobileAssetErrorsReported = 0;

  intelligenceFeatureAvailabilityStatusChangesReported = self->_intelligenceFeatureAvailabilityStatusChangesReported;
  self->_intelligenceFeatureAvailabilityStatusChangesReported = 0;

  v26 = 30;
  if (!reportedCopy)
  {
    v26 = 0;
  }

  self->_whichEvent_Type = v26;
  bluetoothCarDigestReported = self->_bluetoothCarDigestReported;
  self->_bluetoothCarDigestReported = reportedCopy;
}

- (void)deleteAttentionInvocationDigestsReported
{
  if (self->_whichEvent_Type == 29)
  {
    self->_whichEvent_Type = 0;
    self->_attentionInvocationDigestsReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported)attentionInvocationDigestsReported
{
  if (self->_whichEvent_Type == 29)
  {
    v3 = self->_attentionInvocationDigestsReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAttentionInvocationDigestsReported:(id)reported
{
  reportedCopy = reported;
  deviceSegmentsReported = self->_deviceSegmentsReported;
  self->_deviceSegmentsReported = 0;

  deviceCohortsReported = self->_deviceCohortsReported;
  self->_deviceCohortsReported = 0;

  assistantDeviceDigestReported = self->_assistantDeviceDigestReported;
  self->_assistantDeviceDigestReported = 0;

  dictationDeviceDigestReported = self->_dictationDeviceDigestReported;
  self->_dictationDeviceDigestReported = 0;

  siriAccountInformation = self->_siriAccountInformation;
  self->_siriAccountInformation = 0;

  assistantExperimentDigestReported = self->_assistantExperimentDigestReported;
  self->_assistantExperimentDigestReported = 0;

  assistantDiagnosticAndUsageOptInDigestReported = self->_assistantDiagnosticAndUsageOptInDigestReported;
  self->_assistantDiagnosticAndUsageOptInDigestReported = 0;

  iOSDevicePropertiesReported = self->_iOSDevicePropertiesReported;
  self->_iOSDevicePropertiesReported = 0;

  watchOSDevicePropertiesReported = self->_watchOSDevicePropertiesReported;
  self->_watchOSDevicePropertiesReported = 0;

  tvOSDevicePropertiesReported = self->_tvOSDevicePropertiesReported;
  self->_tvOSDevicePropertiesReported = 0;

  macOSDevicePropertiesReported = self->_macOSDevicePropertiesReported;
  self->_macOSDevicePropertiesReported = 0;

  visionOSDevicePropertiesReported = self->_visionOSDevicePropertiesReported;
  self->_visionOSDevicePropertiesReported = 0;

  assistantCarPlayDigestReported = self->_assistantCarPlayDigestReported;
  self->_assistantCarPlayDigestReported = 0;

  requestsWithoutAssetsDigestReported = self->_requestsWithoutAssetsDigestReported;
  self->_requestsWithoutAssetsDigestReported = 0;

  assetAvailabilityFromBootDigestReported = self->_assetAvailabilityFromBootDigestReported;
  self->_assetAvailabilityFromBootDigestReported = 0;

  assetSetStatusDigestReported = self->_assetSetStatusDigestReported;
  self->_assetSetStatusDigestReported = 0;

  executionMetadataReported = self->_executionMetadataReported;
  self->_executionMetadataReported = 0;

  dictationExperimentDigestsReported = self->_dictationExperimentDigestsReported;
  self->_dictationExperimentDigestsReported = 0;

  bluetoothCarDigestReported = self->_bluetoothCarDigestReported;
  self->_bluetoothCarDigestReported = 0;

  mobileAssetErrorsReported = self->_mobileAssetErrorsReported;
  self->_mobileAssetErrorsReported = 0;

  intelligenceFeatureAvailabilityStatusChangesReported = self->_intelligenceFeatureAvailabilityStatusChangesReported;
  self->_intelligenceFeatureAvailabilityStatusChangesReported = 0;

  v26 = 29;
  if (!reportedCopy)
  {
    v26 = 0;
  }

  self->_whichEvent_Type = v26;
  attentionInvocationDigestsReported = self->_attentionInvocationDigestsReported;
  self->_attentionInvocationDigestsReported = reportedCopy;
}

- (void)deleteDictationExperimentDigestsReported
{
  if (self->_whichEvent_Type == 28)
  {
    self->_whichEvent_Type = 0;
    self->_dictationExperimentDigestsReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ODDSiriSchemaODDDictationExperimentDigestsReported)dictationExperimentDigestsReported
{
  if (self->_whichEvent_Type == 28)
  {
    v3 = self->_dictationExperimentDigestsReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setDictationExperimentDigestsReported:(id)reported
{
  reportedCopy = reported;
  deviceSegmentsReported = self->_deviceSegmentsReported;
  self->_deviceSegmentsReported = 0;

  deviceCohortsReported = self->_deviceCohortsReported;
  self->_deviceCohortsReported = 0;

  assistantDeviceDigestReported = self->_assistantDeviceDigestReported;
  self->_assistantDeviceDigestReported = 0;

  dictationDeviceDigestReported = self->_dictationDeviceDigestReported;
  self->_dictationDeviceDigestReported = 0;

  siriAccountInformation = self->_siriAccountInformation;
  self->_siriAccountInformation = 0;

  assistantExperimentDigestReported = self->_assistantExperimentDigestReported;
  self->_assistantExperimentDigestReported = 0;

  assistantDiagnosticAndUsageOptInDigestReported = self->_assistantDiagnosticAndUsageOptInDigestReported;
  self->_assistantDiagnosticAndUsageOptInDigestReported = 0;

  iOSDevicePropertiesReported = self->_iOSDevicePropertiesReported;
  self->_iOSDevicePropertiesReported = 0;

  watchOSDevicePropertiesReported = self->_watchOSDevicePropertiesReported;
  self->_watchOSDevicePropertiesReported = 0;

  tvOSDevicePropertiesReported = self->_tvOSDevicePropertiesReported;
  self->_tvOSDevicePropertiesReported = 0;

  macOSDevicePropertiesReported = self->_macOSDevicePropertiesReported;
  self->_macOSDevicePropertiesReported = 0;

  visionOSDevicePropertiesReported = self->_visionOSDevicePropertiesReported;
  self->_visionOSDevicePropertiesReported = 0;

  assistantCarPlayDigestReported = self->_assistantCarPlayDigestReported;
  self->_assistantCarPlayDigestReported = 0;

  requestsWithoutAssetsDigestReported = self->_requestsWithoutAssetsDigestReported;
  self->_requestsWithoutAssetsDigestReported = 0;

  assetAvailabilityFromBootDigestReported = self->_assetAvailabilityFromBootDigestReported;
  self->_assetAvailabilityFromBootDigestReported = 0;

  assetSetStatusDigestReported = self->_assetSetStatusDigestReported;
  self->_assetSetStatusDigestReported = 0;

  executionMetadataReported = self->_executionMetadataReported;
  self->_executionMetadataReported = 0;

  attentionInvocationDigestsReported = self->_attentionInvocationDigestsReported;
  self->_attentionInvocationDigestsReported = 0;

  bluetoothCarDigestReported = self->_bluetoothCarDigestReported;
  self->_bluetoothCarDigestReported = 0;

  mobileAssetErrorsReported = self->_mobileAssetErrorsReported;
  self->_mobileAssetErrorsReported = 0;

  intelligenceFeatureAvailabilityStatusChangesReported = self->_intelligenceFeatureAvailabilityStatusChangesReported;
  self->_intelligenceFeatureAvailabilityStatusChangesReported = 0;

  v26 = 28;
  if (!reportedCopy)
  {
    v26 = 0;
  }

  self->_whichEvent_Type = v26;
  dictationExperimentDigestsReported = self->_dictationExperimentDigestsReported;
  self->_dictationExperimentDigestsReported = reportedCopy;
}

- (void)deleteExecutionMetadataReported
{
  if (self->_whichEvent_Type == 26)
  {
    self->_whichEvent_Type = 0;
    self->_executionMetadataReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ODDSiriSchemaODDExecutionMetadataReported)executionMetadataReported
{
  if (self->_whichEvent_Type == 26)
  {
    v3 = self->_executionMetadataReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setExecutionMetadataReported:(id)reported
{
  reportedCopy = reported;
  deviceSegmentsReported = self->_deviceSegmentsReported;
  self->_deviceSegmentsReported = 0;

  deviceCohortsReported = self->_deviceCohortsReported;
  self->_deviceCohortsReported = 0;

  assistantDeviceDigestReported = self->_assistantDeviceDigestReported;
  self->_assistantDeviceDigestReported = 0;

  dictationDeviceDigestReported = self->_dictationDeviceDigestReported;
  self->_dictationDeviceDigestReported = 0;

  siriAccountInformation = self->_siriAccountInformation;
  self->_siriAccountInformation = 0;

  assistantExperimentDigestReported = self->_assistantExperimentDigestReported;
  self->_assistantExperimentDigestReported = 0;

  assistantDiagnosticAndUsageOptInDigestReported = self->_assistantDiagnosticAndUsageOptInDigestReported;
  self->_assistantDiagnosticAndUsageOptInDigestReported = 0;

  iOSDevicePropertiesReported = self->_iOSDevicePropertiesReported;
  self->_iOSDevicePropertiesReported = 0;

  watchOSDevicePropertiesReported = self->_watchOSDevicePropertiesReported;
  self->_watchOSDevicePropertiesReported = 0;

  tvOSDevicePropertiesReported = self->_tvOSDevicePropertiesReported;
  self->_tvOSDevicePropertiesReported = 0;

  macOSDevicePropertiesReported = self->_macOSDevicePropertiesReported;
  self->_macOSDevicePropertiesReported = 0;

  visionOSDevicePropertiesReported = self->_visionOSDevicePropertiesReported;
  self->_visionOSDevicePropertiesReported = 0;

  assistantCarPlayDigestReported = self->_assistantCarPlayDigestReported;
  self->_assistantCarPlayDigestReported = 0;

  requestsWithoutAssetsDigestReported = self->_requestsWithoutAssetsDigestReported;
  self->_requestsWithoutAssetsDigestReported = 0;

  assetAvailabilityFromBootDigestReported = self->_assetAvailabilityFromBootDigestReported;
  self->_assetAvailabilityFromBootDigestReported = 0;

  assetSetStatusDigestReported = self->_assetSetStatusDigestReported;
  self->_assetSetStatusDigestReported = 0;

  dictationExperimentDigestsReported = self->_dictationExperimentDigestsReported;
  self->_dictationExperimentDigestsReported = 0;

  attentionInvocationDigestsReported = self->_attentionInvocationDigestsReported;
  self->_attentionInvocationDigestsReported = 0;

  bluetoothCarDigestReported = self->_bluetoothCarDigestReported;
  self->_bluetoothCarDigestReported = 0;

  mobileAssetErrorsReported = self->_mobileAssetErrorsReported;
  self->_mobileAssetErrorsReported = 0;

  intelligenceFeatureAvailabilityStatusChangesReported = self->_intelligenceFeatureAvailabilityStatusChangesReported;
  self->_intelligenceFeatureAvailabilityStatusChangesReported = 0;

  v26 = 26;
  if (!reportedCopy)
  {
    v26 = 0;
  }

  self->_whichEvent_Type = v26;
  executionMetadataReported = self->_executionMetadataReported;
  self->_executionMetadataReported = reportedCopy;
}

- (void)deleteAssetSetStatusDigestReported
{
  if (self->_whichEvent_Type == 25)
  {
    self->_whichEvent_Type = 0;
    self->_assetSetStatusDigestReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ODDSiriSchemaODDAssetSetStatusDigestReported)assetSetStatusDigestReported
{
  if (self->_whichEvent_Type == 25)
  {
    v3 = self->_assetSetStatusDigestReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAssetSetStatusDigestReported:(id)reported
{
  reportedCopy = reported;
  deviceSegmentsReported = self->_deviceSegmentsReported;
  self->_deviceSegmentsReported = 0;

  deviceCohortsReported = self->_deviceCohortsReported;
  self->_deviceCohortsReported = 0;

  assistantDeviceDigestReported = self->_assistantDeviceDigestReported;
  self->_assistantDeviceDigestReported = 0;

  dictationDeviceDigestReported = self->_dictationDeviceDigestReported;
  self->_dictationDeviceDigestReported = 0;

  siriAccountInformation = self->_siriAccountInformation;
  self->_siriAccountInformation = 0;

  assistantExperimentDigestReported = self->_assistantExperimentDigestReported;
  self->_assistantExperimentDigestReported = 0;

  assistantDiagnosticAndUsageOptInDigestReported = self->_assistantDiagnosticAndUsageOptInDigestReported;
  self->_assistantDiagnosticAndUsageOptInDigestReported = 0;

  iOSDevicePropertiesReported = self->_iOSDevicePropertiesReported;
  self->_iOSDevicePropertiesReported = 0;

  watchOSDevicePropertiesReported = self->_watchOSDevicePropertiesReported;
  self->_watchOSDevicePropertiesReported = 0;

  tvOSDevicePropertiesReported = self->_tvOSDevicePropertiesReported;
  self->_tvOSDevicePropertiesReported = 0;

  macOSDevicePropertiesReported = self->_macOSDevicePropertiesReported;
  self->_macOSDevicePropertiesReported = 0;

  visionOSDevicePropertiesReported = self->_visionOSDevicePropertiesReported;
  self->_visionOSDevicePropertiesReported = 0;

  assistantCarPlayDigestReported = self->_assistantCarPlayDigestReported;
  self->_assistantCarPlayDigestReported = 0;

  requestsWithoutAssetsDigestReported = self->_requestsWithoutAssetsDigestReported;
  self->_requestsWithoutAssetsDigestReported = 0;

  assetAvailabilityFromBootDigestReported = self->_assetAvailabilityFromBootDigestReported;
  self->_assetAvailabilityFromBootDigestReported = 0;

  executionMetadataReported = self->_executionMetadataReported;
  self->_executionMetadataReported = 0;

  dictationExperimentDigestsReported = self->_dictationExperimentDigestsReported;
  self->_dictationExperimentDigestsReported = 0;

  attentionInvocationDigestsReported = self->_attentionInvocationDigestsReported;
  self->_attentionInvocationDigestsReported = 0;

  bluetoothCarDigestReported = self->_bluetoothCarDigestReported;
  self->_bluetoothCarDigestReported = 0;

  mobileAssetErrorsReported = self->_mobileAssetErrorsReported;
  self->_mobileAssetErrorsReported = 0;

  intelligenceFeatureAvailabilityStatusChangesReported = self->_intelligenceFeatureAvailabilityStatusChangesReported;
  self->_intelligenceFeatureAvailabilityStatusChangesReported = 0;

  v26 = 25;
  if (!reportedCopy)
  {
    v26 = 0;
  }

  self->_whichEvent_Type = v26;
  assetSetStatusDigestReported = self->_assetSetStatusDigestReported;
  self->_assetSetStatusDigestReported = reportedCopy;
}

- (void)deleteAssetAvailabilityFromBootDigestReported
{
  if (self->_whichEvent_Type == 24)
  {
    self->_whichEvent_Type = 0;
    self->_assetAvailabilityFromBootDigestReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ODDSiriSchemaODDAssetAvailabilityFromBootDigestReported)assetAvailabilityFromBootDigestReported
{
  if (self->_whichEvent_Type == 24)
  {
    v3 = self->_assetAvailabilityFromBootDigestReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAssetAvailabilityFromBootDigestReported:(id)reported
{
  reportedCopy = reported;
  deviceSegmentsReported = self->_deviceSegmentsReported;
  self->_deviceSegmentsReported = 0;

  deviceCohortsReported = self->_deviceCohortsReported;
  self->_deviceCohortsReported = 0;

  assistantDeviceDigestReported = self->_assistantDeviceDigestReported;
  self->_assistantDeviceDigestReported = 0;

  dictationDeviceDigestReported = self->_dictationDeviceDigestReported;
  self->_dictationDeviceDigestReported = 0;

  siriAccountInformation = self->_siriAccountInformation;
  self->_siriAccountInformation = 0;

  assistantExperimentDigestReported = self->_assistantExperimentDigestReported;
  self->_assistantExperimentDigestReported = 0;

  assistantDiagnosticAndUsageOptInDigestReported = self->_assistantDiagnosticAndUsageOptInDigestReported;
  self->_assistantDiagnosticAndUsageOptInDigestReported = 0;

  iOSDevicePropertiesReported = self->_iOSDevicePropertiesReported;
  self->_iOSDevicePropertiesReported = 0;

  watchOSDevicePropertiesReported = self->_watchOSDevicePropertiesReported;
  self->_watchOSDevicePropertiesReported = 0;

  tvOSDevicePropertiesReported = self->_tvOSDevicePropertiesReported;
  self->_tvOSDevicePropertiesReported = 0;

  macOSDevicePropertiesReported = self->_macOSDevicePropertiesReported;
  self->_macOSDevicePropertiesReported = 0;

  visionOSDevicePropertiesReported = self->_visionOSDevicePropertiesReported;
  self->_visionOSDevicePropertiesReported = 0;

  assistantCarPlayDigestReported = self->_assistantCarPlayDigestReported;
  self->_assistantCarPlayDigestReported = 0;

  requestsWithoutAssetsDigestReported = self->_requestsWithoutAssetsDigestReported;
  self->_requestsWithoutAssetsDigestReported = 0;

  assetSetStatusDigestReported = self->_assetSetStatusDigestReported;
  self->_assetSetStatusDigestReported = 0;

  executionMetadataReported = self->_executionMetadataReported;
  self->_executionMetadataReported = 0;

  dictationExperimentDigestsReported = self->_dictationExperimentDigestsReported;
  self->_dictationExperimentDigestsReported = 0;

  attentionInvocationDigestsReported = self->_attentionInvocationDigestsReported;
  self->_attentionInvocationDigestsReported = 0;

  bluetoothCarDigestReported = self->_bluetoothCarDigestReported;
  self->_bluetoothCarDigestReported = 0;

  mobileAssetErrorsReported = self->_mobileAssetErrorsReported;
  self->_mobileAssetErrorsReported = 0;

  intelligenceFeatureAvailabilityStatusChangesReported = self->_intelligenceFeatureAvailabilityStatusChangesReported;
  self->_intelligenceFeatureAvailabilityStatusChangesReported = 0;

  v26 = 24;
  if (!reportedCopy)
  {
    v26 = 0;
  }

  self->_whichEvent_Type = v26;
  assetAvailabilityFromBootDigestReported = self->_assetAvailabilityFromBootDigestReported;
  self->_assetAvailabilityFromBootDigestReported = reportedCopy;
}

- (void)deleteRequestsWithoutAssetsDigestReported
{
  if (self->_whichEvent_Type == 23)
  {
    self->_whichEvent_Type = 0;
    self->_requestsWithoutAssetsDigestReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ODDSiriSchemaODDRequestsWithoutAssetsDigestReported)requestsWithoutAssetsDigestReported
{
  if (self->_whichEvent_Type == 23)
  {
    v3 = self->_requestsWithoutAssetsDigestReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setRequestsWithoutAssetsDigestReported:(id)reported
{
  reportedCopy = reported;
  deviceSegmentsReported = self->_deviceSegmentsReported;
  self->_deviceSegmentsReported = 0;

  deviceCohortsReported = self->_deviceCohortsReported;
  self->_deviceCohortsReported = 0;

  assistantDeviceDigestReported = self->_assistantDeviceDigestReported;
  self->_assistantDeviceDigestReported = 0;

  dictationDeviceDigestReported = self->_dictationDeviceDigestReported;
  self->_dictationDeviceDigestReported = 0;

  siriAccountInformation = self->_siriAccountInformation;
  self->_siriAccountInformation = 0;

  assistantExperimentDigestReported = self->_assistantExperimentDigestReported;
  self->_assistantExperimentDigestReported = 0;

  assistantDiagnosticAndUsageOptInDigestReported = self->_assistantDiagnosticAndUsageOptInDigestReported;
  self->_assistantDiagnosticAndUsageOptInDigestReported = 0;

  iOSDevicePropertiesReported = self->_iOSDevicePropertiesReported;
  self->_iOSDevicePropertiesReported = 0;

  watchOSDevicePropertiesReported = self->_watchOSDevicePropertiesReported;
  self->_watchOSDevicePropertiesReported = 0;

  tvOSDevicePropertiesReported = self->_tvOSDevicePropertiesReported;
  self->_tvOSDevicePropertiesReported = 0;

  macOSDevicePropertiesReported = self->_macOSDevicePropertiesReported;
  self->_macOSDevicePropertiesReported = 0;

  visionOSDevicePropertiesReported = self->_visionOSDevicePropertiesReported;
  self->_visionOSDevicePropertiesReported = 0;

  assistantCarPlayDigestReported = self->_assistantCarPlayDigestReported;
  self->_assistantCarPlayDigestReported = 0;

  assetAvailabilityFromBootDigestReported = self->_assetAvailabilityFromBootDigestReported;
  self->_assetAvailabilityFromBootDigestReported = 0;

  assetSetStatusDigestReported = self->_assetSetStatusDigestReported;
  self->_assetSetStatusDigestReported = 0;

  executionMetadataReported = self->_executionMetadataReported;
  self->_executionMetadataReported = 0;

  dictationExperimentDigestsReported = self->_dictationExperimentDigestsReported;
  self->_dictationExperimentDigestsReported = 0;

  attentionInvocationDigestsReported = self->_attentionInvocationDigestsReported;
  self->_attentionInvocationDigestsReported = 0;

  bluetoothCarDigestReported = self->_bluetoothCarDigestReported;
  self->_bluetoothCarDigestReported = 0;

  mobileAssetErrorsReported = self->_mobileAssetErrorsReported;
  self->_mobileAssetErrorsReported = 0;

  intelligenceFeatureAvailabilityStatusChangesReported = self->_intelligenceFeatureAvailabilityStatusChangesReported;
  self->_intelligenceFeatureAvailabilityStatusChangesReported = 0;

  v26 = 23;
  if (!reportedCopy)
  {
    v26 = 0;
  }

  self->_whichEvent_Type = v26;
  requestsWithoutAssetsDigestReported = self->_requestsWithoutAssetsDigestReported;
  self->_requestsWithoutAssetsDigestReported = reportedCopy;
}

- (void)deleteAssistantCarPlayDigestReported
{
  if (self->_whichEvent_Type == 22)
  {
    self->_whichEvent_Type = 0;
    self->_assistantCarPlayDigestReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ODDSiriSchemaODDAssistantCarPlayDigestReported)assistantCarPlayDigestReported
{
  if (self->_whichEvent_Type == 22)
  {
    v3 = self->_assistantCarPlayDigestReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAssistantCarPlayDigestReported:(id)reported
{
  reportedCopy = reported;
  deviceSegmentsReported = self->_deviceSegmentsReported;
  self->_deviceSegmentsReported = 0;

  deviceCohortsReported = self->_deviceCohortsReported;
  self->_deviceCohortsReported = 0;

  assistantDeviceDigestReported = self->_assistantDeviceDigestReported;
  self->_assistantDeviceDigestReported = 0;

  dictationDeviceDigestReported = self->_dictationDeviceDigestReported;
  self->_dictationDeviceDigestReported = 0;

  siriAccountInformation = self->_siriAccountInformation;
  self->_siriAccountInformation = 0;

  assistantExperimentDigestReported = self->_assistantExperimentDigestReported;
  self->_assistantExperimentDigestReported = 0;

  assistantDiagnosticAndUsageOptInDigestReported = self->_assistantDiagnosticAndUsageOptInDigestReported;
  self->_assistantDiagnosticAndUsageOptInDigestReported = 0;

  iOSDevicePropertiesReported = self->_iOSDevicePropertiesReported;
  self->_iOSDevicePropertiesReported = 0;

  watchOSDevicePropertiesReported = self->_watchOSDevicePropertiesReported;
  self->_watchOSDevicePropertiesReported = 0;

  tvOSDevicePropertiesReported = self->_tvOSDevicePropertiesReported;
  self->_tvOSDevicePropertiesReported = 0;

  macOSDevicePropertiesReported = self->_macOSDevicePropertiesReported;
  self->_macOSDevicePropertiesReported = 0;

  visionOSDevicePropertiesReported = self->_visionOSDevicePropertiesReported;
  self->_visionOSDevicePropertiesReported = 0;

  requestsWithoutAssetsDigestReported = self->_requestsWithoutAssetsDigestReported;
  self->_requestsWithoutAssetsDigestReported = 0;

  assetAvailabilityFromBootDigestReported = self->_assetAvailabilityFromBootDigestReported;
  self->_assetAvailabilityFromBootDigestReported = 0;

  assetSetStatusDigestReported = self->_assetSetStatusDigestReported;
  self->_assetSetStatusDigestReported = 0;

  executionMetadataReported = self->_executionMetadataReported;
  self->_executionMetadataReported = 0;

  dictationExperimentDigestsReported = self->_dictationExperimentDigestsReported;
  self->_dictationExperimentDigestsReported = 0;

  attentionInvocationDigestsReported = self->_attentionInvocationDigestsReported;
  self->_attentionInvocationDigestsReported = 0;

  bluetoothCarDigestReported = self->_bluetoothCarDigestReported;
  self->_bluetoothCarDigestReported = 0;

  mobileAssetErrorsReported = self->_mobileAssetErrorsReported;
  self->_mobileAssetErrorsReported = 0;

  intelligenceFeatureAvailabilityStatusChangesReported = self->_intelligenceFeatureAvailabilityStatusChangesReported;
  self->_intelligenceFeatureAvailabilityStatusChangesReported = 0;

  v26 = 22;
  if (!reportedCopy)
  {
    v26 = 0;
  }

  self->_whichEvent_Type = v26;
  assistantCarPlayDigestReported = self->_assistantCarPlayDigestReported;
  self->_assistantCarPlayDigestReported = reportedCopy;
}

- (void)deleteVisionOSDevicePropertiesReported
{
  if (self->_whichEvent_Type == 21)
  {
    self->_whichEvent_Type = 0;
    self->_visionOSDevicePropertiesReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ODDSiriSchemaODDvisionOSDevicePropertiesReported)visionOSDevicePropertiesReported
{
  if (self->_whichEvent_Type == 21)
  {
    v3 = self->_visionOSDevicePropertiesReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setVisionOSDevicePropertiesReported:(id)reported
{
  reportedCopy = reported;
  deviceSegmentsReported = self->_deviceSegmentsReported;
  self->_deviceSegmentsReported = 0;

  deviceCohortsReported = self->_deviceCohortsReported;
  self->_deviceCohortsReported = 0;

  assistantDeviceDigestReported = self->_assistantDeviceDigestReported;
  self->_assistantDeviceDigestReported = 0;

  dictationDeviceDigestReported = self->_dictationDeviceDigestReported;
  self->_dictationDeviceDigestReported = 0;

  siriAccountInformation = self->_siriAccountInformation;
  self->_siriAccountInformation = 0;

  assistantExperimentDigestReported = self->_assistantExperimentDigestReported;
  self->_assistantExperimentDigestReported = 0;

  assistantDiagnosticAndUsageOptInDigestReported = self->_assistantDiagnosticAndUsageOptInDigestReported;
  self->_assistantDiagnosticAndUsageOptInDigestReported = 0;

  iOSDevicePropertiesReported = self->_iOSDevicePropertiesReported;
  self->_iOSDevicePropertiesReported = 0;

  watchOSDevicePropertiesReported = self->_watchOSDevicePropertiesReported;
  self->_watchOSDevicePropertiesReported = 0;

  tvOSDevicePropertiesReported = self->_tvOSDevicePropertiesReported;
  self->_tvOSDevicePropertiesReported = 0;

  macOSDevicePropertiesReported = self->_macOSDevicePropertiesReported;
  self->_macOSDevicePropertiesReported = 0;

  assistantCarPlayDigestReported = self->_assistantCarPlayDigestReported;
  self->_assistantCarPlayDigestReported = 0;

  requestsWithoutAssetsDigestReported = self->_requestsWithoutAssetsDigestReported;
  self->_requestsWithoutAssetsDigestReported = 0;

  assetAvailabilityFromBootDigestReported = self->_assetAvailabilityFromBootDigestReported;
  self->_assetAvailabilityFromBootDigestReported = 0;

  assetSetStatusDigestReported = self->_assetSetStatusDigestReported;
  self->_assetSetStatusDigestReported = 0;

  executionMetadataReported = self->_executionMetadataReported;
  self->_executionMetadataReported = 0;

  dictationExperimentDigestsReported = self->_dictationExperimentDigestsReported;
  self->_dictationExperimentDigestsReported = 0;

  attentionInvocationDigestsReported = self->_attentionInvocationDigestsReported;
  self->_attentionInvocationDigestsReported = 0;

  bluetoothCarDigestReported = self->_bluetoothCarDigestReported;
  self->_bluetoothCarDigestReported = 0;

  mobileAssetErrorsReported = self->_mobileAssetErrorsReported;
  self->_mobileAssetErrorsReported = 0;

  intelligenceFeatureAvailabilityStatusChangesReported = self->_intelligenceFeatureAvailabilityStatusChangesReported;
  self->_intelligenceFeatureAvailabilityStatusChangesReported = 0;

  v26 = 21;
  if (!reportedCopy)
  {
    v26 = 0;
  }

  self->_whichEvent_Type = v26;
  visionOSDevicePropertiesReported = self->_visionOSDevicePropertiesReported;
  self->_visionOSDevicePropertiesReported = reportedCopy;
}

- (void)deleteMacOSDevicePropertiesReported
{
  if (self->_whichEvent_Type == 20)
  {
    self->_whichEvent_Type = 0;
    self->_macOSDevicePropertiesReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ODDSiriSchemaODDmacOSDevicePropertiesReported)macOSDevicePropertiesReported
{
  if (self->_whichEvent_Type == 20)
  {
    v3 = self->_macOSDevicePropertiesReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setMacOSDevicePropertiesReported:(id)reported
{
  reportedCopy = reported;
  deviceSegmentsReported = self->_deviceSegmentsReported;
  self->_deviceSegmentsReported = 0;

  deviceCohortsReported = self->_deviceCohortsReported;
  self->_deviceCohortsReported = 0;

  assistantDeviceDigestReported = self->_assistantDeviceDigestReported;
  self->_assistantDeviceDigestReported = 0;

  dictationDeviceDigestReported = self->_dictationDeviceDigestReported;
  self->_dictationDeviceDigestReported = 0;

  siriAccountInformation = self->_siriAccountInformation;
  self->_siriAccountInformation = 0;

  assistantExperimentDigestReported = self->_assistantExperimentDigestReported;
  self->_assistantExperimentDigestReported = 0;

  assistantDiagnosticAndUsageOptInDigestReported = self->_assistantDiagnosticAndUsageOptInDigestReported;
  self->_assistantDiagnosticAndUsageOptInDigestReported = 0;

  iOSDevicePropertiesReported = self->_iOSDevicePropertiesReported;
  self->_iOSDevicePropertiesReported = 0;

  watchOSDevicePropertiesReported = self->_watchOSDevicePropertiesReported;
  self->_watchOSDevicePropertiesReported = 0;

  tvOSDevicePropertiesReported = self->_tvOSDevicePropertiesReported;
  self->_tvOSDevicePropertiesReported = 0;

  visionOSDevicePropertiesReported = self->_visionOSDevicePropertiesReported;
  self->_visionOSDevicePropertiesReported = 0;

  assistantCarPlayDigestReported = self->_assistantCarPlayDigestReported;
  self->_assistantCarPlayDigestReported = 0;

  requestsWithoutAssetsDigestReported = self->_requestsWithoutAssetsDigestReported;
  self->_requestsWithoutAssetsDigestReported = 0;

  assetAvailabilityFromBootDigestReported = self->_assetAvailabilityFromBootDigestReported;
  self->_assetAvailabilityFromBootDigestReported = 0;

  assetSetStatusDigestReported = self->_assetSetStatusDigestReported;
  self->_assetSetStatusDigestReported = 0;

  executionMetadataReported = self->_executionMetadataReported;
  self->_executionMetadataReported = 0;

  dictationExperimentDigestsReported = self->_dictationExperimentDigestsReported;
  self->_dictationExperimentDigestsReported = 0;

  attentionInvocationDigestsReported = self->_attentionInvocationDigestsReported;
  self->_attentionInvocationDigestsReported = 0;

  bluetoothCarDigestReported = self->_bluetoothCarDigestReported;
  self->_bluetoothCarDigestReported = 0;

  mobileAssetErrorsReported = self->_mobileAssetErrorsReported;
  self->_mobileAssetErrorsReported = 0;

  intelligenceFeatureAvailabilityStatusChangesReported = self->_intelligenceFeatureAvailabilityStatusChangesReported;
  self->_intelligenceFeatureAvailabilityStatusChangesReported = 0;

  v26 = 20;
  if (!reportedCopy)
  {
    v26 = 0;
  }

  self->_whichEvent_Type = v26;
  macOSDevicePropertiesReported = self->_macOSDevicePropertiesReported;
  self->_macOSDevicePropertiesReported = reportedCopy;
}

- (void)deleteTvOSDevicePropertiesReported
{
  if (self->_whichEvent_Type == 19)
  {
    self->_whichEvent_Type = 0;
    self->_tvOSDevicePropertiesReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ODDSiriSchemaODDtvOSDevicePropertiesReported)tvOSDevicePropertiesReported
{
  if (self->_whichEvent_Type == 19)
  {
    v3 = self->_tvOSDevicePropertiesReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setTvOSDevicePropertiesReported:(id)reported
{
  reportedCopy = reported;
  deviceSegmentsReported = self->_deviceSegmentsReported;
  self->_deviceSegmentsReported = 0;

  deviceCohortsReported = self->_deviceCohortsReported;
  self->_deviceCohortsReported = 0;

  assistantDeviceDigestReported = self->_assistantDeviceDigestReported;
  self->_assistantDeviceDigestReported = 0;

  dictationDeviceDigestReported = self->_dictationDeviceDigestReported;
  self->_dictationDeviceDigestReported = 0;

  siriAccountInformation = self->_siriAccountInformation;
  self->_siriAccountInformation = 0;

  assistantExperimentDigestReported = self->_assistantExperimentDigestReported;
  self->_assistantExperimentDigestReported = 0;

  assistantDiagnosticAndUsageOptInDigestReported = self->_assistantDiagnosticAndUsageOptInDigestReported;
  self->_assistantDiagnosticAndUsageOptInDigestReported = 0;

  iOSDevicePropertiesReported = self->_iOSDevicePropertiesReported;
  self->_iOSDevicePropertiesReported = 0;

  watchOSDevicePropertiesReported = self->_watchOSDevicePropertiesReported;
  self->_watchOSDevicePropertiesReported = 0;

  macOSDevicePropertiesReported = self->_macOSDevicePropertiesReported;
  self->_macOSDevicePropertiesReported = 0;

  visionOSDevicePropertiesReported = self->_visionOSDevicePropertiesReported;
  self->_visionOSDevicePropertiesReported = 0;

  assistantCarPlayDigestReported = self->_assistantCarPlayDigestReported;
  self->_assistantCarPlayDigestReported = 0;

  requestsWithoutAssetsDigestReported = self->_requestsWithoutAssetsDigestReported;
  self->_requestsWithoutAssetsDigestReported = 0;

  assetAvailabilityFromBootDigestReported = self->_assetAvailabilityFromBootDigestReported;
  self->_assetAvailabilityFromBootDigestReported = 0;

  assetSetStatusDigestReported = self->_assetSetStatusDigestReported;
  self->_assetSetStatusDigestReported = 0;

  executionMetadataReported = self->_executionMetadataReported;
  self->_executionMetadataReported = 0;

  dictationExperimentDigestsReported = self->_dictationExperimentDigestsReported;
  self->_dictationExperimentDigestsReported = 0;

  attentionInvocationDigestsReported = self->_attentionInvocationDigestsReported;
  self->_attentionInvocationDigestsReported = 0;

  bluetoothCarDigestReported = self->_bluetoothCarDigestReported;
  self->_bluetoothCarDigestReported = 0;

  mobileAssetErrorsReported = self->_mobileAssetErrorsReported;
  self->_mobileAssetErrorsReported = 0;

  intelligenceFeatureAvailabilityStatusChangesReported = self->_intelligenceFeatureAvailabilityStatusChangesReported;
  self->_intelligenceFeatureAvailabilityStatusChangesReported = 0;

  v26 = 19;
  if (!reportedCopy)
  {
    v26 = 0;
  }

  self->_whichEvent_Type = v26;
  tvOSDevicePropertiesReported = self->_tvOSDevicePropertiesReported;
  self->_tvOSDevicePropertiesReported = reportedCopy;
}

- (void)deleteWatchOSDevicePropertiesReported
{
  if (self->_whichEvent_Type == 18)
  {
    self->_whichEvent_Type = 0;
    self->_watchOSDevicePropertiesReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ODDSiriSchemaODDwatchOSDevicePropertiesReported)watchOSDevicePropertiesReported
{
  if (self->_whichEvent_Type == 18)
  {
    v3 = self->_watchOSDevicePropertiesReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setWatchOSDevicePropertiesReported:(id)reported
{
  reportedCopy = reported;
  deviceSegmentsReported = self->_deviceSegmentsReported;
  self->_deviceSegmentsReported = 0;

  deviceCohortsReported = self->_deviceCohortsReported;
  self->_deviceCohortsReported = 0;

  assistantDeviceDigestReported = self->_assistantDeviceDigestReported;
  self->_assistantDeviceDigestReported = 0;

  dictationDeviceDigestReported = self->_dictationDeviceDigestReported;
  self->_dictationDeviceDigestReported = 0;

  siriAccountInformation = self->_siriAccountInformation;
  self->_siriAccountInformation = 0;

  assistantExperimentDigestReported = self->_assistantExperimentDigestReported;
  self->_assistantExperimentDigestReported = 0;

  assistantDiagnosticAndUsageOptInDigestReported = self->_assistantDiagnosticAndUsageOptInDigestReported;
  self->_assistantDiagnosticAndUsageOptInDigestReported = 0;

  iOSDevicePropertiesReported = self->_iOSDevicePropertiesReported;
  self->_iOSDevicePropertiesReported = 0;

  tvOSDevicePropertiesReported = self->_tvOSDevicePropertiesReported;
  self->_tvOSDevicePropertiesReported = 0;

  macOSDevicePropertiesReported = self->_macOSDevicePropertiesReported;
  self->_macOSDevicePropertiesReported = 0;

  visionOSDevicePropertiesReported = self->_visionOSDevicePropertiesReported;
  self->_visionOSDevicePropertiesReported = 0;

  assistantCarPlayDigestReported = self->_assistantCarPlayDigestReported;
  self->_assistantCarPlayDigestReported = 0;

  requestsWithoutAssetsDigestReported = self->_requestsWithoutAssetsDigestReported;
  self->_requestsWithoutAssetsDigestReported = 0;

  assetAvailabilityFromBootDigestReported = self->_assetAvailabilityFromBootDigestReported;
  self->_assetAvailabilityFromBootDigestReported = 0;

  assetSetStatusDigestReported = self->_assetSetStatusDigestReported;
  self->_assetSetStatusDigestReported = 0;

  executionMetadataReported = self->_executionMetadataReported;
  self->_executionMetadataReported = 0;

  dictationExperimentDigestsReported = self->_dictationExperimentDigestsReported;
  self->_dictationExperimentDigestsReported = 0;

  attentionInvocationDigestsReported = self->_attentionInvocationDigestsReported;
  self->_attentionInvocationDigestsReported = 0;

  bluetoothCarDigestReported = self->_bluetoothCarDigestReported;
  self->_bluetoothCarDigestReported = 0;

  mobileAssetErrorsReported = self->_mobileAssetErrorsReported;
  self->_mobileAssetErrorsReported = 0;

  intelligenceFeatureAvailabilityStatusChangesReported = self->_intelligenceFeatureAvailabilityStatusChangesReported;
  self->_intelligenceFeatureAvailabilityStatusChangesReported = 0;

  v26 = 18;
  if (!reportedCopy)
  {
    v26 = 0;
  }

  self->_whichEvent_Type = v26;
  watchOSDevicePropertiesReported = self->_watchOSDevicePropertiesReported;
  self->_watchOSDevicePropertiesReported = reportedCopy;
}

- (void)deleteIOSDevicePropertiesReported
{
  if (self->_whichEvent_Type == 17)
  {
    self->_whichEvent_Type = 0;
    self->_iOSDevicePropertiesReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ODDSiriSchemaODDiOSDevicePropertiesReported)iOSDevicePropertiesReported
{
  if (self->_whichEvent_Type == 17)
  {
    v3 = self->_iOSDevicePropertiesReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setIOSDevicePropertiesReported:(id)reported
{
  reportedCopy = reported;
  deviceSegmentsReported = self->_deviceSegmentsReported;
  self->_deviceSegmentsReported = 0;

  deviceCohortsReported = self->_deviceCohortsReported;
  self->_deviceCohortsReported = 0;

  assistantDeviceDigestReported = self->_assistantDeviceDigestReported;
  self->_assistantDeviceDigestReported = 0;

  dictationDeviceDigestReported = self->_dictationDeviceDigestReported;
  self->_dictationDeviceDigestReported = 0;

  siriAccountInformation = self->_siriAccountInformation;
  self->_siriAccountInformation = 0;

  assistantExperimentDigestReported = self->_assistantExperimentDigestReported;
  self->_assistantExperimentDigestReported = 0;

  assistantDiagnosticAndUsageOptInDigestReported = self->_assistantDiagnosticAndUsageOptInDigestReported;
  self->_assistantDiagnosticAndUsageOptInDigestReported = 0;

  watchOSDevicePropertiesReported = self->_watchOSDevicePropertiesReported;
  self->_watchOSDevicePropertiesReported = 0;

  tvOSDevicePropertiesReported = self->_tvOSDevicePropertiesReported;
  self->_tvOSDevicePropertiesReported = 0;

  macOSDevicePropertiesReported = self->_macOSDevicePropertiesReported;
  self->_macOSDevicePropertiesReported = 0;

  visionOSDevicePropertiesReported = self->_visionOSDevicePropertiesReported;
  self->_visionOSDevicePropertiesReported = 0;

  assistantCarPlayDigestReported = self->_assistantCarPlayDigestReported;
  self->_assistantCarPlayDigestReported = 0;

  requestsWithoutAssetsDigestReported = self->_requestsWithoutAssetsDigestReported;
  self->_requestsWithoutAssetsDigestReported = 0;

  assetAvailabilityFromBootDigestReported = self->_assetAvailabilityFromBootDigestReported;
  self->_assetAvailabilityFromBootDigestReported = 0;

  assetSetStatusDigestReported = self->_assetSetStatusDigestReported;
  self->_assetSetStatusDigestReported = 0;

  executionMetadataReported = self->_executionMetadataReported;
  self->_executionMetadataReported = 0;

  dictationExperimentDigestsReported = self->_dictationExperimentDigestsReported;
  self->_dictationExperimentDigestsReported = 0;

  attentionInvocationDigestsReported = self->_attentionInvocationDigestsReported;
  self->_attentionInvocationDigestsReported = 0;

  bluetoothCarDigestReported = self->_bluetoothCarDigestReported;
  self->_bluetoothCarDigestReported = 0;

  mobileAssetErrorsReported = self->_mobileAssetErrorsReported;
  self->_mobileAssetErrorsReported = 0;

  intelligenceFeatureAvailabilityStatusChangesReported = self->_intelligenceFeatureAvailabilityStatusChangesReported;
  self->_intelligenceFeatureAvailabilityStatusChangesReported = 0;

  v26 = 17;
  if (!reportedCopy)
  {
    v26 = 0;
  }

  self->_whichEvent_Type = v26;
  iOSDevicePropertiesReported = self->_iOSDevicePropertiesReported;
  self->_iOSDevicePropertiesReported = reportedCopy;
}

- (void)deleteAssistantDiagnosticAndUsageOptInDigestReported
{
  if (self->_whichEvent_Type == 16)
  {
    self->_whichEvent_Type = 0;
    self->_assistantDiagnosticAndUsageOptInDigestReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ODDSiriSchemaODDAssistantDiagnosticAndUsageOptInDigestsReported)assistantDiagnosticAndUsageOptInDigestReported
{
  if (self->_whichEvent_Type == 16)
  {
    v3 = self->_assistantDiagnosticAndUsageOptInDigestReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAssistantDiagnosticAndUsageOptInDigestReported:(id)reported
{
  reportedCopy = reported;
  deviceSegmentsReported = self->_deviceSegmentsReported;
  self->_deviceSegmentsReported = 0;

  deviceCohortsReported = self->_deviceCohortsReported;
  self->_deviceCohortsReported = 0;

  assistantDeviceDigestReported = self->_assistantDeviceDigestReported;
  self->_assistantDeviceDigestReported = 0;

  dictationDeviceDigestReported = self->_dictationDeviceDigestReported;
  self->_dictationDeviceDigestReported = 0;

  siriAccountInformation = self->_siriAccountInformation;
  self->_siriAccountInformation = 0;

  assistantExperimentDigestReported = self->_assistantExperimentDigestReported;
  self->_assistantExperimentDigestReported = 0;

  iOSDevicePropertiesReported = self->_iOSDevicePropertiesReported;
  self->_iOSDevicePropertiesReported = 0;

  watchOSDevicePropertiesReported = self->_watchOSDevicePropertiesReported;
  self->_watchOSDevicePropertiesReported = 0;

  tvOSDevicePropertiesReported = self->_tvOSDevicePropertiesReported;
  self->_tvOSDevicePropertiesReported = 0;

  macOSDevicePropertiesReported = self->_macOSDevicePropertiesReported;
  self->_macOSDevicePropertiesReported = 0;

  visionOSDevicePropertiesReported = self->_visionOSDevicePropertiesReported;
  self->_visionOSDevicePropertiesReported = 0;

  assistantCarPlayDigestReported = self->_assistantCarPlayDigestReported;
  self->_assistantCarPlayDigestReported = 0;

  requestsWithoutAssetsDigestReported = self->_requestsWithoutAssetsDigestReported;
  self->_requestsWithoutAssetsDigestReported = 0;

  assetAvailabilityFromBootDigestReported = self->_assetAvailabilityFromBootDigestReported;
  self->_assetAvailabilityFromBootDigestReported = 0;

  assetSetStatusDigestReported = self->_assetSetStatusDigestReported;
  self->_assetSetStatusDigestReported = 0;

  executionMetadataReported = self->_executionMetadataReported;
  self->_executionMetadataReported = 0;

  dictationExperimentDigestsReported = self->_dictationExperimentDigestsReported;
  self->_dictationExperimentDigestsReported = 0;

  attentionInvocationDigestsReported = self->_attentionInvocationDigestsReported;
  self->_attentionInvocationDigestsReported = 0;

  bluetoothCarDigestReported = self->_bluetoothCarDigestReported;
  self->_bluetoothCarDigestReported = 0;

  mobileAssetErrorsReported = self->_mobileAssetErrorsReported;
  self->_mobileAssetErrorsReported = 0;

  intelligenceFeatureAvailabilityStatusChangesReported = self->_intelligenceFeatureAvailabilityStatusChangesReported;
  self->_intelligenceFeatureAvailabilityStatusChangesReported = 0;

  self->_whichEvent_Type = 16 * (reportedCopy != 0);
  assistantDiagnosticAndUsageOptInDigestReported = self->_assistantDiagnosticAndUsageOptInDigestReported;
  self->_assistantDiagnosticAndUsageOptInDigestReported = reportedCopy;
}

- (void)deleteAssistantExperimentDigestReported
{
  if (self->_whichEvent_Type == 15)
  {
    self->_whichEvent_Type = 0;
    self->_assistantExperimentDigestReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ODDSiriSchemaODDAssistantExperimentDigestsReported)assistantExperimentDigestReported
{
  if (self->_whichEvent_Type == 15)
  {
    v3 = self->_assistantExperimentDigestReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAssistantExperimentDigestReported:(id)reported
{
  reportedCopy = reported;
  deviceSegmentsReported = self->_deviceSegmentsReported;
  self->_deviceSegmentsReported = 0;

  deviceCohortsReported = self->_deviceCohortsReported;
  self->_deviceCohortsReported = 0;

  assistantDeviceDigestReported = self->_assistantDeviceDigestReported;
  self->_assistantDeviceDigestReported = 0;

  dictationDeviceDigestReported = self->_dictationDeviceDigestReported;
  self->_dictationDeviceDigestReported = 0;

  siriAccountInformation = self->_siriAccountInformation;
  self->_siriAccountInformation = 0;

  assistantDiagnosticAndUsageOptInDigestReported = self->_assistantDiagnosticAndUsageOptInDigestReported;
  self->_assistantDiagnosticAndUsageOptInDigestReported = 0;

  iOSDevicePropertiesReported = self->_iOSDevicePropertiesReported;
  self->_iOSDevicePropertiesReported = 0;

  watchOSDevicePropertiesReported = self->_watchOSDevicePropertiesReported;
  self->_watchOSDevicePropertiesReported = 0;

  tvOSDevicePropertiesReported = self->_tvOSDevicePropertiesReported;
  self->_tvOSDevicePropertiesReported = 0;

  macOSDevicePropertiesReported = self->_macOSDevicePropertiesReported;
  self->_macOSDevicePropertiesReported = 0;

  visionOSDevicePropertiesReported = self->_visionOSDevicePropertiesReported;
  self->_visionOSDevicePropertiesReported = 0;

  assistantCarPlayDigestReported = self->_assistantCarPlayDigestReported;
  self->_assistantCarPlayDigestReported = 0;

  requestsWithoutAssetsDigestReported = self->_requestsWithoutAssetsDigestReported;
  self->_requestsWithoutAssetsDigestReported = 0;

  assetAvailabilityFromBootDigestReported = self->_assetAvailabilityFromBootDigestReported;
  self->_assetAvailabilityFromBootDigestReported = 0;

  assetSetStatusDigestReported = self->_assetSetStatusDigestReported;
  self->_assetSetStatusDigestReported = 0;

  executionMetadataReported = self->_executionMetadataReported;
  self->_executionMetadataReported = 0;

  dictationExperimentDigestsReported = self->_dictationExperimentDigestsReported;
  self->_dictationExperimentDigestsReported = 0;

  attentionInvocationDigestsReported = self->_attentionInvocationDigestsReported;
  self->_attentionInvocationDigestsReported = 0;

  bluetoothCarDigestReported = self->_bluetoothCarDigestReported;
  self->_bluetoothCarDigestReported = 0;

  mobileAssetErrorsReported = self->_mobileAssetErrorsReported;
  self->_mobileAssetErrorsReported = 0;

  intelligenceFeatureAvailabilityStatusChangesReported = self->_intelligenceFeatureAvailabilityStatusChangesReported;
  self->_intelligenceFeatureAvailabilityStatusChangesReported = 0;

  v26 = 15;
  if (!reportedCopy)
  {
    v26 = 0;
  }

  self->_whichEvent_Type = v26;
  assistantExperimentDigestReported = self->_assistantExperimentDigestReported;
  self->_assistantExperimentDigestReported = reportedCopy;
}

- (void)deleteSiriAccountInformation
{
  if (self->_whichEvent_Type == 14)
  {
    self->_whichEvent_Type = 0;
    self->_siriAccountInformation = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ODDSiriSchemaODDSiriAccountInformation)siriAccountInformation
{
  if (self->_whichEvent_Type == 14)
  {
    v3 = self->_siriAccountInformation;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSiriAccountInformation:(id)information
{
  informationCopy = information;
  deviceSegmentsReported = self->_deviceSegmentsReported;
  self->_deviceSegmentsReported = 0;

  deviceCohortsReported = self->_deviceCohortsReported;
  self->_deviceCohortsReported = 0;

  assistantDeviceDigestReported = self->_assistantDeviceDigestReported;
  self->_assistantDeviceDigestReported = 0;

  dictationDeviceDigestReported = self->_dictationDeviceDigestReported;
  self->_dictationDeviceDigestReported = 0;

  assistantExperimentDigestReported = self->_assistantExperimentDigestReported;
  self->_assistantExperimentDigestReported = 0;

  assistantDiagnosticAndUsageOptInDigestReported = self->_assistantDiagnosticAndUsageOptInDigestReported;
  self->_assistantDiagnosticAndUsageOptInDigestReported = 0;

  iOSDevicePropertiesReported = self->_iOSDevicePropertiesReported;
  self->_iOSDevicePropertiesReported = 0;

  watchOSDevicePropertiesReported = self->_watchOSDevicePropertiesReported;
  self->_watchOSDevicePropertiesReported = 0;

  tvOSDevicePropertiesReported = self->_tvOSDevicePropertiesReported;
  self->_tvOSDevicePropertiesReported = 0;

  macOSDevicePropertiesReported = self->_macOSDevicePropertiesReported;
  self->_macOSDevicePropertiesReported = 0;

  visionOSDevicePropertiesReported = self->_visionOSDevicePropertiesReported;
  self->_visionOSDevicePropertiesReported = 0;

  assistantCarPlayDigestReported = self->_assistantCarPlayDigestReported;
  self->_assistantCarPlayDigestReported = 0;

  requestsWithoutAssetsDigestReported = self->_requestsWithoutAssetsDigestReported;
  self->_requestsWithoutAssetsDigestReported = 0;

  assetAvailabilityFromBootDigestReported = self->_assetAvailabilityFromBootDigestReported;
  self->_assetAvailabilityFromBootDigestReported = 0;

  assetSetStatusDigestReported = self->_assetSetStatusDigestReported;
  self->_assetSetStatusDigestReported = 0;

  executionMetadataReported = self->_executionMetadataReported;
  self->_executionMetadataReported = 0;

  dictationExperimentDigestsReported = self->_dictationExperimentDigestsReported;
  self->_dictationExperimentDigestsReported = 0;

  attentionInvocationDigestsReported = self->_attentionInvocationDigestsReported;
  self->_attentionInvocationDigestsReported = 0;

  bluetoothCarDigestReported = self->_bluetoothCarDigestReported;
  self->_bluetoothCarDigestReported = 0;

  mobileAssetErrorsReported = self->_mobileAssetErrorsReported;
  self->_mobileAssetErrorsReported = 0;

  intelligenceFeatureAvailabilityStatusChangesReported = self->_intelligenceFeatureAvailabilityStatusChangesReported;
  self->_intelligenceFeatureAvailabilityStatusChangesReported = 0;

  v26 = 14;
  if (!informationCopy)
  {
    v26 = 0;
  }

  self->_whichEvent_Type = v26;
  siriAccountInformation = self->_siriAccountInformation;
  self->_siriAccountInformation = informationCopy;
}

- (void)deleteDictationDeviceDigestReported
{
  if (self->_whichEvent_Type == 13)
  {
    self->_whichEvent_Type = 0;
    self->_dictationDeviceDigestReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ODDSiriSchemaODDDictationDeviceDigestsReported)dictationDeviceDigestReported
{
  if (self->_whichEvent_Type == 13)
  {
    v3 = self->_dictationDeviceDigestReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setDictationDeviceDigestReported:(id)reported
{
  reportedCopy = reported;
  deviceSegmentsReported = self->_deviceSegmentsReported;
  self->_deviceSegmentsReported = 0;

  deviceCohortsReported = self->_deviceCohortsReported;
  self->_deviceCohortsReported = 0;

  assistantDeviceDigestReported = self->_assistantDeviceDigestReported;
  self->_assistantDeviceDigestReported = 0;

  siriAccountInformation = self->_siriAccountInformation;
  self->_siriAccountInformation = 0;

  assistantExperimentDigestReported = self->_assistantExperimentDigestReported;
  self->_assistantExperimentDigestReported = 0;

  assistantDiagnosticAndUsageOptInDigestReported = self->_assistantDiagnosticAndUsageOptInDigestReported;
  self->_assistantDiagnosticAndUsageOptInDigestReported = 0;

  iOSDevicePropertiesReported = self->_iOSDevicePropertiesReported;
  self->_iOSDevicePropertiesReported = 0;

  watchOSDevicePropertiesReported = self->_watchOSDevicePropertiesReported;
  self->_watchOSDevicePropertiesReported = 0;

  tvOSDevicePropertiesReported = self->_tvOSDevicePropertiesReported;
  self->_tvOSDevicePropertiesReported = 0;

  macOSDevicePropertiesReported = self->_macOSDevicePropertiesReported;
  self->_macOSDevicePropertiesReported = 0;

  visionOSDevicePropertiesReported = self->_visionOSDevicePropertiesReported;
  self->_visionOSDevicePropertiesReported = 0;

  assistantCarPlayDigestReported = self->_assistantCarPlayDigestReported;
  self->_assistantCarPlayDigestReported = 0;

  requestsWithoutAssetsDigestReported = self->_requestsWithoutAssetsDigestReported;
  self->_requestsWithoutAssetsDigestReported = 0;

  assetAvailabilityFromBootDigestReported = self->_assetAvailabilityFromBootDigestReported;
  self->_assetAvailabilityFromBootDigestReported = 0;

  assetSetStatusDigestReported = self->_assetSetStatusDigestReported;
  self->_assetSetStatusDigestReported = 0;

  executionMetadataReported = self->_executionMetadataReported;
  self->_executionMetadataReported = 0;

  dictationExperimentDigestsReported = self->_dictationExperimentDigestsReported;
  self->_dictationExperimentDigestsReported = 0;

  attentionInvocationDigestsReported = self->_attentionInvocationDigestsReported;
  self->_attentionInvocationDigestsReported = 0;

  bluetoothCarDigestReported = self->_bluetoothCarDigestReported;
  self->_bluetoothCarDigestReported = 0;

  mobileAssetErrorsReported = self->_mobileAssetErrorsReported;
  self->_mobileAssetErrorsReported = 0;

  intelligenceFeatureAvailabilityStatusChangesReported = self->_intelligenceFeatureAvailabilityStatusChangesReported;
  self->_intelligenceFeatureAvailabilityStatusChangesReported = 0;

  v26 = 13;
  if (!reportedCopy)
  {
    v26 = 0;
  }

  self->_whichEvent_Type = v26;
  dictationDeviceDigestReported = self->_dictationDeviceDigestReported;
  self->_dictationDeviceDigestReported = reportedCopy;
}

- (void)deleteAssistantDeviceDigestReported
{
  if (self->_whichEvent_Type == 12)
  {
    self->_whichEvent_Type = 0;
    self->_assistantDeviceDigestReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ODDSiriSchemaODDAssistantDeviceDigestsReported)assistantDeviceDigestReported
{
  if (self->_whichEvent_Type == 12)
  {
    v3 = self->_assistantDeviceDigestReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAssistantDeviceDigestReported:(id)reported
{
  reportedCopy = reported;
  deviceSegmentsReported = self->_deviceSegmentsReported;
  self->_deviceSegmentsReported = 0;

  deviceCohortsReported = self->_deviceCohortsReported;
  self->_deviceCohortsReported = 0;

  dictationDeviceDigestReported = self->_dictationDeviceDigestReported;
  self->_dictationDeviceDigestReported = 0;

  siriAccountInformation = self->_siriAccountInformation;
  self->_siriAccountInformation = 0;

  assistantExperimentDigestReported = self->_assistantExperimentDigestReported;
  self->_assistantExperimentDigestReported = 0;

  assistantDiagnosticAndUsageOptInDigestReported = self->_assistantDiagnosticAndUsageOptInDigestReported;
  self->_assistantDiagnosticAndUsageOptInDigestReported = 0;

  iOSDevicePropertiesReported = self->_iOSDevicePropertiesReported;
  self->_iOSDevicePropertiesReported = 0;

  watchOSDevicePropertiesReported = self->_watchOSDevicePropertiesReported;
  self->_watchOSDevicePropertiesReported = 0;

  tvOSDevicePropertiesReported = self->_tvOSDevicePropertiesReported;
  self->_tvOSDevicePropertiesReported = 0;

  macOSDevicePropertiesReported = self->_macOSDevicePropertiesReported;
  self->_macOSDevicePropertiesReported = 0;

  visionOSDevicePropertiesReported = self->_visionOSDevicePropertiesReported;
  self->_visionOSDevicePropertiesReported = 0;

  assistantCarPlayDigestReported = self->_assistantCarPlayDigestReported;
  self->_assistantCarPlayDigestReported = 0;

  requestsWithoutAssetsDigestReported = self->_requestsWithoutAssetsDigestReported;
  self->_requestsWithoutAssetsDigestReported = 0;

  assetAvailabilityFromBootDigestReported = self->_assetAvailabilityFromBootDigestReported;
  self->_assetAvailabilityFromBootDigestReported = 0;

  assetSetStatusDigestReported = self->_assetSetStatusDigestReported;
  self->_assetSetStatusDigestReported = 0;

  executionMetadataReported = self->_executionMetadataReported;
  self->_executionMetadataReported = 0;

  dictationExperimentDigestsReported = self->_dictationExperimentDigestsReported;
  self->_dictationExperimentDigestsReported = 0;

  attentionInvocationDigestsReported = self->_attentionInvocationDigestsReported;
  self->_attentionInvocationDigestsReported = 0;

  bluetoothCarDigestReported = self->_bluetoothCarDigestReported;
  self->_bluetoothCarDigestReported = 0;

  mobileAssetErrorsReported = self->_mobileAssetErrorsReported;
  self->_mobileAssetErrorsReported = 0;

  intelligenceFeatureAvailabilityStatusChangesReported = self->_intelligenceFeatureAvailabilityStatusChangesReported;
  self->_intelligenceFeatureAvailabilityStatusChangesReported = 0;

  v26 = 12;
  if (!reportedCopy)
  {
    v26 = 0;
  }

  self->_whichEvent_Type = v26;
  assistantDeviceDigestReported = self->_assistantDeviceDigestReported;
  self->_assistantDeviceDigestReported = reportedCopy;
}

- (void)deleteDeviceCohortsReported
{
  if (self->_whichEvent_Type == 11)
  {
    self->_whichEvent_Type = 0;
    self->_deviceCohortsReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ODDSiriSchemaODDDeviceCohortsReported)deviceCohortsReported
{
  if (self->_whichEvent_Type == 11)
  {
    v3 = self->_deviceCohortsReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setDeviceCohortsReported:(id)reported
{
  reportedCopy = reported;
  deviceSegmentsReported = self->_deviceSegmentsReported;
  self->_deviceSegmentsReported = 0;

  assistantDeviceDigestReported = self->_assistantDeviceDigestReported;
  self->_assistantDeviceDigestReported = 0;

  dictationDeviceDigestReported = self->_dictationDeviceDigestReported;
  self->_dictationDeviceDigestReported = 0;

  siriAccountInformation = self->_siriAccountInformation;
  self->_siriAccountInformation = 0;

  assistantExperimentDigestReported = self->_assistantExperimentDigestReported;
  self->_assistantExperimentDigestReported = 0;

  assistantDiagnosticAndUsageOptInDigestReported = self->_assistantDiagnosticAndUsageOptInDigestReported;
  self->_assistantDiagnosticAndUsageOptInDigestReported = 0;

  iOSDevicePropertiesReported = self->_iOSDevicePropertiesReported;
  self->_iOSDevicePropertiesReported = 0;

  watchOSDevicePropertiesReported = self->_watchOSDevicePropertiesReported;
  self->_watchOSDevicePropertiesReported = 0;

  tvOSDevicePropertiesReported = self->_tvOSDevicePropertiesReported;
  self->_tvOSDevicePropertiesReported = 0;

  macOSDevicePropertiesReported = self->_macOSDevicePropertiesReported;
  self->_macOSDevicePropertiesReported = 0;

  visionOSDevicePropertiesReported = self->_visionOSDevicePropertiesReported;
  self->_visionOSDevicePropertiesReported = 0;

  assistantCarPlayDigestReported = self->_assistantCarPlayDigestReported;
  self->_assistantCarPlayDigestReported = 0;

  requestsWithoutAssetsDigestReported = self->_requestsWithoutAssetsDigestReported;
  self->_requestsWithoutAssetsDigestReported = 0;

  assetAvailabilityFromBootDigestReported = self->_assetAvailabilityFromBootDigestReported;
  self->_assetAvailabilityFromBootDigestReported = 0;

  assetSetStatusDigestReported = self->_assetSetStatusDigestReported;
  self->_assetSetStatusDigestReported = 0;

  executionMetadataReported = self->_executionMetadataReported;
  self->_executionMetadataReported = 0;

  dictationExperimentDigestsReported = self->_dictationExperimentDigestsReported;
  self->_dictationExperimentDigestsReported = 0;

  attentionInvocationDigestsReported = self->_attentionInvocationDigestsReported;
  self->_attentionInvocationDigestsReported = 0;

  bluetoothCarDigestReported = self->_bluetoothCarDigestReported;
  self->_bluetoothCarDigestReported = 0;

  mobileAssetErrorsReported = self->_mobileAssetErrorsReported;
  self->_mobileAssetErrorsReported = 0;

  intelligenceFeatureAvailabilityStatusChangesReported = self->_intelligenceFeatureAvailabilityStatusChangesReported;
  self->_intelligenceFeatureAvailabilityStatusChangesReported = 0;

  v26 = 11;
  if (!reportedCopy)
  {
    v26 = 0;
  }

  self->_whichEvent_Type = v26;
  deviceCohortsReported = self->_deviceCohortsReported;
  self->_deviceCohortsReported = reportedCopy;
}

- (void)deleteDeviceSegmentsReported
{
  if (self->_whichEvent_Type == 10)
  {
    self->_whichEvent_Type = 0;
    self->_deviceSegmentsReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ODDSiriSchemaODDDeviceSegmentsReported)deviceSegmentsReported
{
  if (self->_whichEvent_Type == 10)
  {
    v3 = self->_deviceSegmentsReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setDeviceSegmentsReported:(id)reported
{
  reportedCopy = reported;
  deviceCohortsReported = self->_deviceCohortsReported;
  self->_deviceCohortsReported = 0;

  assistantDeviceDigestReported = self->_assistantDeviceDigestReported;
  self->_assistantDeviceDigestReported = 0;

  dictationDeviceDigestReported = self->_dictationDeviceDigestReported;
  self->_dictationDeviceDigestReported = 0;

  siriAccountInformation = self->_siriAccountInformation;
  self->_siriAccountInformation = 0;

  assistantExperimentDigestReported = self->_assistantExperimentDigestReported;
  self->_assistantExperimentDigestReported = 0;

  assistantDiagnosticAndUsageOptInDigestReported = self->_assistantDiagnosticAndUsageOptInDigestReported;
  self->_assistantDiagnosticAndUsageOptInDigestReported = 0;

  iOSDevicePropertiesReported = self->_iOSDevicePropertiesReported;
  self->_iOSDevicePropertiesReported = 0;

  watchOSDevicePropertiesReported = self->_watchOSDevicePropertiesReported;
  self->_watchOSDevicePropertiesReported = 0;

  tvOSDevicePropertiesReported = self->_tvOSDevicePropertiesReported;
  self->_tvOSDevicePropertiesReported = 0;

  macOSDevicePropertiesReported = self->_macOSDevicePropertiesReported;
  self->_macOSDevicePropertiesReported = 0;

  visionOSDevicePropertiesReported = self->_visionOSDevicePropertiesReported;
  self->_visionOSDevicePropertiesReported = 0;

  assistantCarPlayDigestReported = self->_assistantCarPlayDigestReported;
  self->_assistantCarPlayDigestReported = 0;

  requestsWithoutAssetsDigestReported = self->_requestsWithoutAssetsDigestReported;
  self->_requestsWithoutAssetsDigestReported = 0;

  assetAvailabilityFromBootDigestReported = self->_assetAvailabilityFromBootDigestReported;
  self->_assetAvailabilityFromBootDigestReported = 0;

  assetSetStatusDigestReported = self->_assetSetStatusDigestReported;
  self->_assetSetStatusDigestReported = 0;

  executionMetadataReported = self->_executionMetadataReported;
  self->_executionMetadataReported = 0;

  dictationExperimentDigestsReported = self->_dictationExperimentDigestsReported;
  self->_dictationExperimentDigestsReported = 0;

  attentionInvocationDigestsReported = self->_attentionInvocationDigestsReported;
  self->_attentionInvocationDigestsReported = 0;

  bluetoothCarDigestReported = self->_bluetoothCarDigestReported;
  self->_bluetoothCarDigestReported = 0;

  mobileAssetErrorsReported = self->_mobileAssetErrorsReported;
  self->_mobileAssetErrorsReported = 0;

  intelligenceFeatureAvailabilityStatusChangesReported = self->_intelligenceFeatureAvailabilityStatusChangesReported;
  self->_intelligenceFeatureAvailabilityStatusChangesReported = 0;

  v26 = 10;
  if (!reportedCopy)
  {
    v26 = 0;
  }

  self->_whichEvent_Type = v26;
  deviceSegmentsReported = self->_deviceSegmentsReported;
  self->_deviceSegmentsReported = reportedCopy;
}

- (id)qualifiedMessageName
{
  whichEvent_Type = [(ODDSiriSchemaODDSiriClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 10 > 0x16)
  {
    return @"com.apple.aiml.siri.odd.ODDSiriClientEvent";
  }

  else
  {
    return off_1E78DDA20[whichEvent_Type - 10];
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v76.receiver = self;
  v76.super_class = ODDSiriSchemaODDSiriClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v76 applySensitiveConditionsPolicy:policyCopy];
  eventMetadata = [(ODDSiriSchemaODDSiriClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ODDSiriSchemaODDSiriClientEvent *)self deleteEventMetadata];
  }

  deviceSegmentsReported = [(ODDSiriSchemaODDSiriClientEvent *)self deviceSegmentsReported];
  v10 = [deviceSegmentsReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(ODDSiriSchemaODDSiriClientEvent *)self deleteDeviceSegmentsReported];
  }

  deviceCohortsReported = [(ODDSiriSchemaODDSiriClientEvent *)self deviceCohortsReported];
  v13 = [deviceCohortsReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(ODDSiriSchemaODDSiriClientEvent *)self deleteDeviceCohortsReported];
  }

  assistantDeviceDigestReported = [(ODDSiriSchemaODDSiriClientEvent *)self assistantDeviceDigestReported];
  v16 = [assistantDeviceDigestReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(ODDSiriSchemaODDSiriClientEvent *)self deleteAssistantDeviceDigestReported];
  }

  dictationDeviceDigestReported = [(ODDSiriSchemaODDSiriClientEvent *)self dictationDeviceDigestReported];
  v19 = [dictationDeviceDigestReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(ODDSiriSchemaODDSiriClientEvent *)self deleteDictationDeviceDigestReported];
  }

  siriAccountInformation = [(ODDSiriSchemaODDSiriClientEvent *)self siriAccountInformation];
  v22 = [siriAccountInformation applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(ODDSiriSchemaODDSiriClientEvent *)self deleteSiriAccountInformation];
  }

  assistantExperimentDigestReported = [(ODDSiriSchemaODDSiriClientEvent *)self assistantExperimentDigestReported];
  v25 = [assistantExperimentDigestReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage7 = [v25 suppressMessage];

  if (suppressMessage7)
  {
    [(ODDSiriSchemaODDSiriClientEvent *)self deleteAssistantExperimentDigestReported];
  }

  assistantDiagnosticAndUsageOptInDigestReported = [(ODDSiriSchemaODDSiriClientEvent *)self assistantDiagnosticAndUsageOptInDigestReported];
  v28 = [assistantDiagnosticAndUsageOptInDigestReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage8 = [v28 suppressMessage];

  if (suppressMessage8)
  {
    [(ODDSiriSchemaODDSiriClientEvent *)self deleteAssistantDiagnosticAndUsageOptInDigestReported];
  }

  iOSDevicePropertiesReported = [(ODDSiriSchemaODDSiriClientEvent *)self iOSDevicePropertiesReported];
  v31 = [iOSDevicePropertiesReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage9 = [v31 suppressMessage];

  if (suppressMessage9)
  {
    [(ODDSiriSchemaODDSiriClientEvent *)self deleteIOSDevicePropertiesReported];
  }

  watchOSDevicePropertiesReported = [(ODDSiriSchemaODDSiriClientEvent *)self watchOSDevicePropertiesReported];
  v34 = [watchOSDevicePropertiesReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage10 = [v34 suppressMessage];

  if (suppressMessage10)
  {
    [(ODDSiriSchemaODDSiriClientEvent *)self deleteWatchOSDevicePropertiesReported];
  }

  tvOSDevicePropertiesReported = [(ODDSiriSchemaODDSiriClientEvent *)self tvOSDevicePropertiesReported];
  v37 = [tvOSDevicePropertiesReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage11 = [v37 suppressMessage];

  if (suppressMessage11)
  {
    [(ODDSiriSchemaODDSiriClientEvent *)self deleteTvOSDevicePropertiesReported];
  }

  macOSDevicePropertiesReported = [(ODDSiriSchemaODDSiriClientEvent *)self macOSDevicePropertiesReported];
  v40 = [macOSDevicePropertiesReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage12 = [v40 suppressMessage];

  if (suppressMessage12)
  {
    [(ODDSiriSchemaODDSiriClientEvent *)self deleteMacOSDevicePropertiesReported];
  }

  visionOSDevicePropertiesReported = [(ODDSiriSchemaODDSiriClientEvent *)self visionOSDevicePropertiesReported];
  v43 = [visionOSDevicePropertiesReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage13 = [v43 suppressMessage];

  if (suppressMessage13)
  {
    [(ODDSiriSchemaODDSiriClientEvent *)self deleteVisionOSDevicePropertiesReported];
  }

  assistantCarPlayDigestReported = [(ODDSiriSchemaODDSiriClientEvent *)self assistantCarPlayDigestReported];
  v46 = [assistantCarPlayDigestReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage14 = [v46 suppressMessage];

  if (suppressMessage14)
  {
    [(ODDSiriSchemaODDSiriClientEvent *)self deleteAssistantCarPlayDigestReported];
  }

  requestsWithoutAssetsDigestReported = [(ODDSiriSchemaODDSiriClientEvent *)self requestsWithoutAssetsDigestReported];
  v49 = [requestsWithoutAssetsDigestReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage15 = [v49 suppressMessage];

  if (suppressMessage15)
  {
    [(ODDSiriSchemaODDSiriClientEvent *)self deleteRequestsWithoutAssetsDigestReported];
  }

  assetAvailabilityFromBootDigestReported = [(ODDSiriSchemaODDSiriClientEvent *)self assetAvailabilityFromBootDigestReported];
  v52 = [assetAvailabilityFromBootDigestReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage16 = [v52 suppressMessage];

  if (suppressMessage16)
  {
    [(ODDSiriSchemaODDSiriClientEvent *)self deleteAssetAvailabilityFromBootDigestReported];
  }

  assetSetStatusDigestReported = [(ODDSiriSchemaODDSiriClientEvent *)self assetSetStatusDigestReported];
  v55 = [assetSetStatusDigestReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage17 = [v55 suppressMessage];

  if (suppressMessage17)
  {
    [(ODDSiriSchemaODDSiriClientEvent *)self deleteAssetSetStatusDigestReported];
  }

  executionMetadataReported = [(ODDSiriSchemaODDSiriClientEvent *)self executionMetadataReported];
  v58 = [executionMetadataReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage18 = [v58 suppressMessage];

  if (suppressMessage18)
  {
    [(ODDSiriSchemaODDSiriClientEvent *)self deleteExecutionMetadataReported];
  }

  dictationExperimentDigestsReported = [(ODDSiriSchemaODDSiriClientEvent *)self dictationExperimentDigestsReported];
  v61 = [dictationExperimentDigestsReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage19 = [v61 suppressMessage];

  if (suppressMessage19)
  {
    [(ODDSiriSchemaODDSiriClientEvent *)self deleteDictationExperimentDigestsReported];
  }

  attentionInvocationDigestsReported = [(ODDSiriSchemaODDSiriClientEvent *)self attentionInvocationDigestsReported];
  v64 = [attentionInvocationDigestsReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage20 = [v64 suppressMessage];

  if (suppressMessage20)
  {
    [(ODDSiriSchemaODDSiriClientEvent *)self deleteAttentionInvocationDigestsReported];
  }

  bluetoothCarDigestReported = [(ODDSiriSchemaODDSiriClientEvent *)self bluetoothCarDigestReported];
  v67 = [bluetoothCarDigestReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage21 = [v67 suppressMessage];

  if (suppressMessage21)
  {
    [(ODDSiriSchemaODDSiriClientEvent *)self deleteBluetoothCarDigestReported];
  }

  mobileAssetErrorsReported = [(ODDSiriSchemaODDSiriClientEvent *)self mobileAssetErrorsReported];
  v70 = [mobileAssetErrorsReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage22 = [v70 suppressMessage];

  if (suppressMessage22)
  {
    [(ODDSiriSchemaODDSiriClientEvent *)self deleteMobileAssetErrorsReported];
  }

  intelligenceFeatureAvailabilityStatusChangesReported = [(ODDSiriSchemaODDSiriClientEvent *)self intelligenceFeatureAvailabilityStatusChangesReported];
  v73 = [intelligenceFeatureAvailabilityStatusChangesReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage23 = [v73 suppressMessage];

  if (suppressMessage23)
  {
    [(ODDSiriSchemaODDSiriClientEvent *)self deleteIntelligenceFeatureAvailabilityStatusChangesReported];
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
  v3 = [(ODDSiriSchemaODDSiriClientEvent *)self whichEvent_Type]- 10;
  if (v3 <= 0x16 && ((0x7DFFFFu >> v3) & 1) != 0)
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78EA468[v3]);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)tag
{
  if (tag - 10 > 0x16)
  {
    return 0;
  }

  else
  {
    return off_1E78EA520[tag - 10];
  }
}

- (int)clockIsolationLevel
{
  whichEvent_Type = [(ODDSiriSchemaODDSiriClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 10 > 0x16)
  {
    return 1;
  }

  else
  {
    return dword_1AA738C88[whichEvent_Type - 10];
  }
}

@end