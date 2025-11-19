@interface ODDSiriSchemaODDSiriClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
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
- (ODDSiriSchemaODDSiriClientEvent)initWithDictionary:(id)a3;
- (ODDSiriSchemaODDSiriClientEvent)initWithJSON:(id)a3;
- (ODDSiriSchemaODDiOSDevicePropertiesReported)iOSDevicePropertiesReported;
- (ODDSiriSchemaODDmacOSDevicePropertiesReported)macOSDevicePropertiesReported;
- (ODDSiriSchemaODDtvOSDevicePropertiesReported)tvOSDevicePropertiesReported;
- (ODDSiriSchemaODDvisionOSDevicePropertiesReported)visionOSDevicePropertiesReported;
- (ODDSiriSchemaODDwatchOSDevicePropertiesReported)watchOSDevicePropertiesReported;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)a3;
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
- (void)setAssetAvailabilityFromBootDigestReported:(id)a3;
- (void)setAssetSetStatusDigestReported:(id)a3;
- (void)setAssistantCarPlayDigestReported:(id)a3;
- (void)setAssistantDeviceDigestReported:(id)a3;
- (void)setAssistantDiagnosticAndUsageOptInDigestReported:(id)a3;
- (void)setAssistantExperimentDigestReported:(id)a3;
- (void)setAttentionInvocationDigestsReported:(id)a3;
- (void)setBluetoothCarDigestReported:(id)a3;
- (void)setDeviceCohortsReported:(id)a3;
- (void)setDeviceSegmentsReported:(id)a3;
- (void)setDictationDeviceDigestReported:(id)a3;
- (void)setDictationExperimentDigestsReported:(id)a3;
- (void)setExecutionMetadataReported:(id)a3;
- (void)setIOSDevicePropertiesReported:(id)a3;
- (void)setIntelligenceFeatureAvailabilityStatusChangesReported:(id)a3;
- (void)setMacOSDevicePropertiesReported:(id)a3;
- (void)setMobileAssetErrorsReported:(id)a3;
- (void)setRequestsWithoutAssetsDigestReported:(id)a3;
- (void)setSiriAccountInformation:(id)a3;
- (void)setTvOSDevicePropertiesReported:(id)a3;
- (void)setVisionOSDevicePropertiesReported:(id)a3;
- (void)setWatchOSDevicePropertiesReported:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ODDSiriSchemaODDSiriClientEvent

- (ODDSiriSchemaODDSiriClientEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v70.receiver = self;
  v70.super_class = ODDSiriSchemaODDSiriClientEvent;
  v5 = [(ODDSiriSchemaODDSiriClientEvent *)&v70 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ODDSiriSchemaODDClientEventMetadata alloc] initWithDictionary:v6];
      [(ODDSiriSchemaODDSiriClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"deviceSegmentsReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[ODDSiriSchemaODDDeviceSegmentsReported alloc] initWithDictionary:v8];
      [(ODDSiriSchemaODDSiriClientEvent *)v5 setDeviceSegmentsReported:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"deviceCohortsReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[ODDSiriSchemaODDDeviceCohortsReported alloc] initWithDictionary:v10];
      [(ODDSiriSchemaODDSiriClientEvent *)v5 setDeviceCohortsReported:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"assistantDeviceDigestReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[ODDSiriSchemaODDAssistantDeviceDigestsReported alloc] initWithDictionary:v12];
      [(ODDSiriSchemaODDSiriClientEvent *)v5 setAssistantDeviceDigestReported:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"dictationDeviceDigestReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[ODDSiriSchemaODDDictationDeviceDigestsReported alloc] initWithDictionary:v14];
      [(ODDSiriSchemaODDSiriClientEvent *)v5 setDictationDeviceDigestReported:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"siriAccountInformation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[ODDSiriSchemaODDSiriAccountInformation alloc] initWithDictionary:v16];
      [(ODDSiriSchemaODDSiriClientEvent *)v5 setSiriAccountInformation:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"assistantExperimentDigestReported"];
    objc_opt_class();
    v69 = v18;
    if (objc_opt_isKindOfClass())
    {
      v19 = [[ODDSiriSchemaODDAssistantExperimentDigestsReported alloc] initWithDictionary:v18];
      [(ODDSiriSchemaODDSiriClientEvent *)v5 setAssistantExperimentDigestReported:v19];
    }

    v20 = [v4 objectForKeyedSubscript:@"assistantDiagnosticAndUsageOptInDigestReported"];
    objc_opt_class();
    v68 = v20;
    if (objc_opt_isKindOfClass())
    {
      v21 = [[ODDSiriSchemaODDAssistantDiagnosticAndUsageOptInDigestsReported alloc] initWithDictionary:v20];
      [(ODDSiriSchemaODDSiriClientEvent *)v5 setAssistantDiagnosticAndUsageOptInDigestReported:v21];
    }

    v22 = [v4 objectForKeyedSubscript:@"iOSDevicePropertiesReported"];
    objc_opt_class();
    v67 = v22;
    if (objc_opt_isKindOfClass())
    {
      v23 = [[ODDSiriSchemaODDiOSDevicePropertiesReported alloc] initWithDictionary:v22];
      [(ODDSiriSchemaODDSiriClientEvent *)v5 setIOSDevicePropertiesReported:v23];
    }

    v24 = [v4 objectForKeyedSubscript:@"watchOSDevicePropertiesReported"];
    objc_opt_class();
    v66 = v24;
    if (objc_opt_isKindOfClass())
    {
      v25 = [[ODDSiriSchemaODDwatchOSDevicePropertiesReported alloc] initWithDictionary:v24];
      [(ODDSiriSchemaODDSiriClientEvent *)v5 setWatchOSDevicePropertiesReported:v25];
    }

    v26 = [v4 objectForKeyedSubscript:@"tvOSDevicePropertiesReported"];
    objc_opt_class();
    v65 = v26;
    if (objc_opt_isKindOfClass())
    {
      v27 = [[ODDSiriSchemaODDtvOSDevicePropertiesReported alloc] initWithDictionary:v26];
      [(ODDSiriSchemaODDSiriClientEvent *)v5 setTvOSDevicePropertiesReported:v27];
    }

    v28 = [v4 objectForKeyedSubscript:@"macOSDevicePropertiesReported"];
    objc_opt_class();
    v64 = v28;
    if (objc_opt_isKindOfClass())
    {
      v29 = [[ODDSiriSchemaODDmacOSDevicePropertiesReported alloc] initWithDictionary:v28];
      [(ODDSiriSchemaODDSiriClientEvent *)v5 setMacOSDevicePropertiesReported:v29];
    }

    v30 = [v4 objectForKeyedSubscript:@"visionOSDevicePropertiesReported"];
    objc_opt_class();
    v63 = v30;
    if (objc_opt_isKindOfClass())
    {
      v31 = [[ODDSiriSchemaODDvisionOSDevicePropertiesReported alloc] initWithDictionary:v30];
      [(ODDSiriSchemaODDSiriClientEvent *)v5 setVisionOSDevicePropertiesReported:v31];
    }

    v32 = [v4 objectForKeyedSubscript:@"assistantCarPlayDigestReported"];
    objc_opt_class();
    v62 = v32;
    if (objc_opt_isKindOfClass())
    {
      v33 = [[ODDSiriSchemaODDAssistantCarPlayDigestReported alloc] initWithDictionary:v32];
      [(ODDSiriSchemaODDSiriClientEvent *)v5 setAssistantCarPlayDigestReported:v33];
    }

    v34 = [v4 objectForKeyedSubscript:@"requestsWithoutAssetsDigestReported"];
    objc_opt_class();
    v61 = v34;
    if (objc_opt_isKindOfClass())
    {
      v35 = [[ODDSiriSchemaODDRequestsWithoutAssetsDigestReported alloc] initWithDictionary:v34];
      [(ODDSiriSchemaODDSiriClientEvent *)v5 setRequestsWithoutAssetsDigestReported:v35];
    }

    v60 = v6;
    v36 = [v4 objectForKeyedSubscript:@"assetAvailabilityFromBootDigestReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = [[ODDSiriSchemaODDAssetAvailabilityFromBootDigestReported alloc] initWithDictionary:v36];
      [(ODDSiriSchemaODDSiriClientEvent *)v5 setAssetAvailabilityFromBootDigestReported:v37];
    }

    v59 = v8;
    v38 = [v4 objectForKeyedSubscript:{@"assetSetStatusDigestReported", v36}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = [[ODDSiriSchemaODDAssetSetStatusDigestReported alloc] initWithDictionary:v38];
      [(ODDSiriSchemaODDSiriClientEvent *)v5 setAssetSetStatusDigestReported:v39];
    }

    v58 = v10;
    v40 = [v4 objectForKeyedSubscript:@"executionMetadataReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v41 = [[ODDSiriSchemaODDExecutionMetadataReported alloc] initWithDictionary:v40];
      [(ODDSiriSchemaODDSiriClientEvent *)v5 setExecutionMetadataReported:v41];
    }

    v57 = v12;
    v42 = [v4 objectForKeyedSubscript:@"dictationExperimentDigestsReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v43 = [[ODDSiriSchemaODDDictationExperimentDigestsReported alloc] initWithDictionary:v42];
      [(ODDSiriSchemaODDSiriClientEvent *)v5 setDictationExperimentDigestsReported:v43];
    }

    v56 = v14;
    v44 = [v4 objectForKeyedSubscript:@"attentionInvocationDigestsReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v45 = [[ODDSiriSchemaODDAttentionInvocationDeviceDigestsReported alloc] initWithDictionary:v44];
      [(ODDSiriSchemaODDSiriClientEvent *)v5 setAttentionInvocationDigestsReported:v45];
    }

    v55 = v16;
    v46 = [v4 objectForKeyedSubscript:@"bluetoothCarDigestReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v47 = [[ODDSiriSchemaODDBluetoothCarDigestReported alloc] initWithDictionary:v46];
      [(ODDSiriSchemaODDSiriClientEvent *)v5 setBluetoothCarDigestReported:v47];
    }

    v48 = [v4 objectForKeyedSubscript:@"mobileAssetErrorsReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v49 = [[ODDSiriSchemaODDMobileAssetErrorsReported alloc] initWithDictionary:v48];
      [(ODDSiriSchemaODDSiriClientEvent *)v5 setMobileAssetErrorsReported:v49];
    }

    v50 = [v4 objectForKeyedSubscript:@"intelligenceFeatureAvailabilityStatusChangesReported"];
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

- (ODDSiriSchemaODDSiriClientEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDSiriClientEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ODDSiriSchemaODDSiriClientEvent *)self dictionaryRepresentation];
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
  if (self->_assetAvailabilityFromBootDigestReported)
  {
    v4 = [(ODDSiriSchemaODDSiriClientEvent *)self assetAvailabilityFromBootDigestReported];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"assetAvailabilityFromBootDigestReported"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"assetAvailabilityFromBootDigestReported"];
    }
  }

  if (self->_assetSetStatusDigestReported)
  {
    v7 = [(ODDSiriSchemaODDSiriClientEvent *)self assetSetStatusDigestReported];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"assetSetStatusDigestReported"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"assetSetStatusDigestReported"];
    }
  }

  if (self->_assistantCarPlayDigestReported)
  {
    v10 = [(ODDSiriSchemaODDSiriClientEvent *)self assistantCarPlayDigestReported];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"assistantCarPlayDigestReported"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"assistantCarPlayDigestReported"];
    }
  }

  if (self->_assistantDeviceDigestReported)
  {
    v13 = [(ODDSiriSchemaODDSiriClientEvent *)self assistantDeviceDigestReported];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"assistantDeviceDigestReported"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"assistantDeviceDigestReported"];
    }
  }

  if (self->_assistantDiagnosticAndUsageOptInDigestReported)
  {
    v16 = [(ODDSiriSchemaODDSiriClientEvent *)self assistantDiagnosticAndUsageOptInDigestReported];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"assistantDiagnosticAndUsageOptInDigestReported"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"assistantDiagnosticAndUsageOptInDigestReported"];
    }
  }

  if (self->_assistantExperimentDigestReported)
  {
    v19 = [(ODDSiriSchemaODDSiriClientEvent *)self assistantExperimentDigestReported];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"assistantExperimentDigestReported"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"assistantExperimentDigestReported"];
    }
  }

  if (self->_attentionInvocationDigestsReported)
  {
    v22 = [(ODDSiriSchemaODDSiriClientEvent *)self attentionInvocationDigestsReported];
    v23 = [v22 dictionaryRepresentation];
    if (v23)
    {
      [v3 setObject:v23 forKeyedSubscript:@"attentionInvocationDigestsReported"];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v24 forKeyedSubscript:@"attentionInvocationDigestsReported"];
    }
  }

  if (self->_bluetoothCarDigestReported)
  {
    v25 = [(ODDSiriSchemaODDSiriClientEvent *)self bluetoothCarDigestReported];
    v26 = [v25 dictionaryRepresentation];
    if (v26)
    {
      [v3 setObject:v26 forKeyedSubscript:@"bluetoothCarDigestReported"];
    }

    else
    {
      v27 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v27 forKeyedSubscript:@"bluetoothCarDigestReported"];
    }
  }

  if (self->_deviceCohortsReported)
  {
    v28 = [(ODDSiriSchemaODDSiriClientEvent *)self deviceCohortsReported];
    v29 = [v28 dictionaryRepresentation];
    if (v29)
    {
      [v3 setObject:v29 forKeyedSubscript:@"deviceCohortsReported"];
    }

    else
    {
      v30 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v30 forKeyedSubscript:@"deviceCohortsReported"];
    }
  }

  if (self->_deviceSegmentsReported)
  {
    v31 = [(ODDSiriSchemaODDSiriClientEvent *)self deviceSegmentsReported];
    v32 = [v31 dictionaryRepresentation];
    if (v32)
    {
      [v3 setObject:v32 forKeyedSubscript:@"deviceSegmentsReported"];
    }

    else
    {
      v33 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v33 forKeyedSubscript:@"deviceSegmentsReported"];
    }
  }

  if (self->_dictationDeviceDigestReported)
  {
    v34 = [(ODDSiriSchemaODDSiriClientEvent *)self dictationDeviceDigestReported];
    v35 = [v34 dictionaryRepresentation];
    if (v35)
    {
      [v3 setObject:v35 forKeyedSubscript:@"dictationDeviceDigestReported"];
    }

    else
    {
      v36 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v36 forKeyedSubscript:@"dictationDeviceDigestReported"];
    }
  }

  if (self->_dictationExperimentDigestsReported)
  {
    v37 = [(ODDSiriSchemaODDSiriClientEvent *)self dictationExperimentDigestsReported];
    v38 = [v37 dictionaryRepresentation];
    if (v38)
    {
      [v3 setObject:v38 forKeyedSubscript:@"dictationExperimentDigestsReported"];
    }

    else
    {
      v39 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v39 forKeyedSubscript:@"dictationExperimentDigestsReported"];
    }
  }

  if (self->_eventMetadata)
  {
    v40 = [(ODDSiriSchemaODDSiriClientEvent *)self eventMetadata];
    v41 = [v40 dictionaryRepresentation];
    if (v41)
    {
      [v3 setObject:v41 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      v42 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v42 forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_executionMetadataReported)
  {
    v43 = [(ODDSiriSchemaODDSiriClientEvent *)self executionMetadataReported];
    v44 = [v43 dictionaryRepresentation];
    if (v44)
    {
      [v3 setObject:v44 forKeyedSubscript:@"executionMetadataReported"];
    }

    else
    {
      v45 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v45 forKeyedSubscript:@"executionMetadataReported"];
    }
  }

  if (self->_iOSDevicePropertiesReported)
  {
    v46 = [(ODDSiriSchemaODDSiriClientEvent *)self iOSDevicePropertiesReported];
    v47 = [v46 dictionaryRepresentation];
    if (v47)
    {
      [v3 setObject:v47 forKeyedSubscript:@"iOSDevicePropertiesReported"];
    }

    else
    {
      v48 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v48 forKeyedSubscript:@"iOSDevicePropertiesReported"];
    }
  }

  if (self->_intelligenceFeatureAvailabilityStatusChangesReported)
  {
    v49 = [(ODDSiriSchemaODDSiriClientEvent *)self intelligenceFeatureAvailabilityStatusChangesReported];
    v50 = [v49 dictionaryRepresentation];
    if (v50)
    {
      [v3 setObject:v50 forKeyedSubscript:@"intelligenceFeatureAvailabilityStatusChangesReported"];
    }

    else
    {
      v51 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v51 forKeyedSubscript:@"intelligenceFeatureAvailabilityStatusChangesReported"];
    }
  }

  if (self->_macOSDevicePropertiesReported)
  {
    v52 = [(ODDSiriSchemaODDSiriClientEvent *)self macOSDevicePropertiesReported];
    v53 = [v52 dictionaryRepresentation];
    if (v53)
    {
      [v3 setObject:v53 forKeyedSubscript:@"macOSDevicePropertiesReported"];
    }

    else
    {
      v54 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v54 forKeyedSubscript:@"macOSDevicePropertiesReported"];
    }
  }

  if (self->_mobileAssetErrorsReported)
  {
    v55 = [(ODDSiriSchemaODDSiriClientEvent *)self mobileAssetErrorsReported];
    v56 = [v55 dictionaryRepresentation];
    if (v56)
    {
      [v3 setObject:v56 forKeyedSubscript:@"mobileAssetErrorsReported"];
    }

    else
    {
      v57 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v57 forKeyedSubscript:@"mobileAssetErrorsReported"];
    }
  }

  if (self->_requestsWithoutAssetsDigestReported)
  {
    v58 = [(ODDSiriSchemaODDSiriClientEvent *)self requestsWithoutAssetsDigestReported];
    v59 = [v58 dictionaryRepresentation];
    if (v59)
    {
      [v3 setObject:v59 forKeyedSubscript:@"requestsWithoutAssetsDigestReported"];
    }

    else
    {
      v60 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v60 forKeyedSubscript:@"requestsWithoutAssetsDigestReported"];
    }
  }

  if (self->_siriAccountInformation)
  {
    v61 = [(ODDSiriSchemaODDSiriClientEvent *)self siriAccountInformation];
    v62 = [v61 dictionaryRepresentation];
    if (v62)
    {
      [v3 setObject:v62 forKeyedSubscript:@"siriAccountInformation"];
    }

    else
    {
      v63 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v63 forKeyedSubscript:@"siriAccountInformation"];
    }
  }

  if (self->_tvOSDevicePropertiesReported)
  {
    v64 = [(ODDSiriSchemaODDSiriClientEvent *)self tvOSDevicePropertiesReported];
    v65 = [v64 dictionaryRepresentation];
    if (v65)
    {
      [v3 setObject:v65 forKeyedSubscript:@"tvOSDevicePropertiesReported"];
    }

    else
    {
      v66 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v66 forKeyedSubscript:@"tvOSDevicePropertiesReported"];
    }
  }

  if (self->_visionOSDevicePropertiesReported)
  {
    v67 = [(ODDSiriSchemaODDSiriClientEvent *)self visionOSDevicePropertiesReported];
    v68 = [v67 dictionaryRepresentation];
    if (v68)
    {
      [v3 setObject:v68 forKeyedSubscript:@"visionOSDevicePropertiesReported"];
    }

    else
    {
      v69 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v69 forKeyedSubscript:@"visionOSDevicePropertiesReported"];
    }
  }

  if (self->_watchOSDevicePropertiesReported)
  {
    v70 = [(ODDSiriSchemaODDSiriClientEvent *)self watchOSDevicePropertiesReported];
    v71 = [v70 dictionaryRepresentation];
    if (v71)
    {
      [v3 setObject:v71 forKeyedSubscript:@"watchOSDevicePropertiesReported"];
    }

    else
    {
      v72 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v72 forKeyedSubscript:@"watchOSDevicePropertiesReported"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];
  v73 = v3;

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_118;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [v4 whichEvent_Type])
  {
    goto LABEL_118;
  }

  v6 = [(ODDSiriSchemaODDSiriClientEvent *)self eventMetadata];
  v7 = [v4 eventMetadata];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_117;
  }

  v8 = [(ODDSiriSchemaODDSiriClientEvent *)self eventMetadata];
  if (v8)
  {
    v9 = v8;
    v10 = [(ODDSiriSchemaODDSiriClientEvent *)self eventMetadata];
    v11 = [v4 eventMetadata];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  v6 = [(ODDSiriSchemaODDSiriClientEvent *)self deviceSegmentsReported];
  v7 = [v4 deviceSegmentsReported];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_117;
  }

  v13 = [(ODDSiriSchemaODDSiriClientEvent *)self deviceSegmentsReported];
  if (v13)
  {
    v14 = v13;
    v15 = [(ODDSiriSchemaODDSiriClientEvent *)self deviceSegmentsReported];
    v16 = [v4 deviceSegmentsReported];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  v6 = [(ODDSiriSchemaODDSiriClientEvent *)self deviceCohortsReported];
  v7 = [v4 deviceCohortsReported];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_117;
  }

  v18 = [(ODDSiriSchemaODDSiriClientEvent *)self deviceCohortsReported];
  if (v18)
  {
    v19 = v18;
    v20 = [(ODDSiriSchemaODDSiriClientEvent *)self deviceCohortsReported];
    v21 = [v4 deviceCohortsReported];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  v6 = [(ODDSiriSchemaODDSiriClientEvent *)self assistantDeviceDigestReported];
  v7 = [v4 assistantDeviceDigestReported];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_117;
  }

  v23 = [(ODDSiriSchemaODDSiriClientEvent *)self assistantDeviceDigestReported];
  if (v23)
  {
    v24 = v23;
    v25 = [(ODDSiriSchemaODDSiriClientEvent *)self assistantDeviceDigestReported];
    v26 = [v4 assistantDeviceDigestReported];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  v6 = [(ODDSiriSchemaODDSiriClientEvent *)self dictationDeviceDigestReported];
  v7 = [v4 dictationDeviceDigestReported];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_117;
  }

  v28 = [(ODDSiriSchemaODDSiriClientEvent *)self dictationDeviceDigestReported];
  if (v28)
  {
    v29 = v28;
    v30 = [(ODDSiriSchemaODDSiriClientEvent *)self dictationDeviceDigestReported];
    v31 = [v4 dictationDeviceDigestReported];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  v6 = [(ODDSiriSchemaODDSiriClientEvent *)self siriAccountInformation];
  v7 = [v4 siriAccountInformation];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_117;
  }

  v33 = [(ODDSiriSchemaODDSiriClientEvent *)self siriAccountInformation];
  if (v33)
  {
    v34 = v33;
    v35 = [(ODDSiriSchemaODDSiriClientEvent *)self siriAccountInformation];
    v36 = [v4 siriAccountInformation];
    v37 = [v35 isEqual:v36];

    if (!v37)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  v6 = [(ODDSiriSchemaODDSiriClientEvent *)self assistantExperimentDigestReported];
  v7 = [v4 assistantExperimentDigestReported];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_117;
  }

  v38 = [(ODDSiriSchemaODDSiriClientEvent *)self assistantExperimentDigestReported];
  if (v38)
  {
    v39 = v38;
    v40 = [(ODDSiriSchemaODDSiriClientEvent *)self assistantExperimentDigestReported];
    v41 = [v4 assistantExperimentDigestReported];
    v42 = [v40 isEqual:v41];

    if (!v42)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  v6 = [(ODDSiriSchemaODDSiriClientEvent *)self assistantDiagnosticAndUsageOptInDigestReported];
  v7 = [v4 assistantDiagnosticAndUsageOptInDigestReported];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_117;
  }

  v43 = [(ODDSiriSchemaODDSiriClientEvent *)self assistantDiagnosticAndUsageOptInDigestReported];
  if (v43)
  {
    v44 = v43;
    v45 = [(ODDSiriSchemaODDSiriClientEvent *)self assistantDiagnosticAndUsageOptInDigestReported];
    v46 = [v4 assistantDiagnosticAndUsageOptInDigestReported];
    v47 = [v45 isEqual:v46];

    if (!v47)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  v6 = [(ODDSiriSchemaODDSiriClientEvent *)self iOSDevicePropertiesReported];
  v7 = [v4 iOSDevicePropertiesReported];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_117;
  }

  v48 = [(ODDSiriSchemaODDSiriClientEvent *)self iOSDevicePropertiesReported];
  if (v48)
  {
    v49 = v48;
    v50 = [(ODDSiriSchemaODDSiriClientEvent *)self iOSDevicePropertiesReported];
    v51 = [v4 iOSDevicePropertiesReported];
    v52 = [v50 isEqual:v51];

    if (!v52)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  v6 = [(ODDSiriSchemaODDSiriClientEvent *)self watchOSDevicePropertiesReported];
  v7 = [v4 watchOSDevicePropertiesReported];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_117;
  }

  v53 = [(ODDSiriSchemaODDSiriClientEvent *)self watchOSDevicePropertiesReported];
  if (v53)
  {
    v54 = v53;
    v55 = [(ODDSiriSchemaODDSiriClientEvent *)self watchOSDevicePropertiesReported];
    v56 = [v4 watchOSDevicePropertiesReported];
    v57 = [v55 isEqual:v56];

    if (!v57)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  v6 = [(ODDSiriSchemaODDSiriClientEvent *)self tvOSDevicePropertiesReported];
  v7 = [v4 tvOSDevicePropertiesReported];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_117;
  }

  v58 = [(ODDSiriSchemaODDSiriClientEvent *)self tvOSDevicePropertiesReported];
  if (v58)
  {
    v59 = v58;
    v60 = [(ODDSiriSchemaODDSiriClientEvent *)self tvOSDevicePropertiesReported];
    v61 = [v4 tvOSDevicePropertiesReported];
    v62 = [v60 isEqual:v61];

    if (!v62)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  v6 = [(ODDSiriSchemaODDSiriClientEvent *)self macOSDevicePropertiesReported];
  v7 = [v4 macOSDevicePropertiesReported];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_117;
  }

  v63 = [(ODDSiriSchemaODDSiriClientEvent *)self macOSDevicePropertiesReported];
  if (v63)
  {
    v64 = v63;
    v65 = [(ODDSiriSchemaODDSiriClientEvent *)self macOSDevicePropertiesReported];
    v66 = [v4 macOSDevicePropertiesReported];
    v67 = [v65 isEqual:v66];

    if (!v67)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  v6 = [(ODDSiriSchemaODDSiriClientEvent *)self visionOSDevicePropertiesReported];
  v7 = [v4 visionOSDevicePropertiesReported];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_117;
  }

  v68 = [(ODDSiriSchemaODDSiriClientEvent *)self visionOSDevicePropertiesReported];
  if (v68)
  {
    v69 = v68;
    v70 = [(ODDSiriSchemaODDSiriClientEvent *)self visionOSDevicePropertiesReported];
    v71 = [v4 visionOSDevicePropertiesReported];
    v72 = [v70 isEqual:v71];

    if (!v72)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  v6 = [(ODDSiriSchemaODDSiriClientEvent *)self assistantCarPlayDigestReported];
  v7 = [v4 assistantCarPlayDigestReported];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_117;
  }

  v73 = [(ODDSiriSchemaODDSiriClientEvent *)self assistantCarPlayDigestReported];
  if (v73)
  {
    v74 = v73;
    v75 = [(ODDSiriSchemaODDSiriClientEvent *)self assistantCarPlayDigestReported];
    v76 = [v4 assistantCarPlayDigestReported];
    v77 = [v75 isEqual:v76];

    if (!v77)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  v6 = [(ODDSiriSchemaODDSiriClientEvent *)self requestsWithoutAssetsDigestReported];
  v7 = [v4 requestsWithoutAssetsDigestReported];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_117;
  }

  v78 = [(ODDSiriSchemaODDSiriClientEvent *)self requestsWithoutAssetsDigestReported];
  if (v78)
  {
    v79 = v78;
    v80 = [(ODDSiriSchemaODDSiriClientEvent *)self requestsWithoutAssetsDigestReported];
    v81 = [v4 requestsWithoutAssetsDigestReported];
    v82 = [v80 isEqual:v81];

    if (!v82)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  v6 = [(ODDSiriSchemaODDSiriClientEvent *)self assetAvailabilityFromBootDigestReported];
  v7 = [v4 assetAvailabilityFromBootDigestReported];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_117;
  }

  v83 = [(ODDSiriSchemaODDSiriClientEvent *)self assetAvailabilityFromBootDigestReported];
  if (v83)
  {
    v84 = v83;
    v85 = [(ODDSiriSchemaODDSiriClientEvent *)self assetAvailabilityFromBootDigestReported];
    v86 = [v4 assetAvailabilityFromBootDigestReported];
    v87 = [v85 isEqual:v86];

    if (!v87)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  v6 = [(ODDSiriSchemaODDSiriClientEvent *)self assetSetStatusDigestReported];
  v7 = [v4 assetSetStatusDigestReported];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_117;
  }

  v88 = [(ODDSiriSchemaODDSiriClientEvent *)self assetSetStatusDigestReported];
  if (v88)
  {
    v89 = v88;
    v90 = [(ODDSiriSchemaODDSiriClientEvent *)self assetSetStatusDigestReported];
    v91 = [v4 assetSetStatusDigestReported];
    v92 = [v90 isEqual:v91];

    if (!v92)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  v6 = [(ODDSiriSchemaODDSiriClientEvent *)self executionMetadataReported];
  v7 = [v4 executionMetadataReported];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_117;
  }

  v93 = [(ODDSiriSchemaODDSiriClientEvent *)self executionMetadataReported];
  if (v93)
  {
    v94 = v93;
    v95 = [(ODDSiriSchemaODDSiriClientEvent *)self executionMetadataReported];
    v96 = [v4 executionMetadataReported];
    v97 = [v95 isEqual:v96];

    if (!v97)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  v6 = [(ODDSiriSchemaODDSiriClientEvent *)self dictationExperimentDigestsReported];
  v7 = [v4 dictationExperimentDigestsReported];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_117;
  }

  v98 = [(ODDSiriSchemaODDSiriClientEvent *)self dictationExperimentDigestsReported];
  if (v98)
  {
    v99 = v98;
    v100 = [(ODDSiriSchemaODDSiriClientEvent *)self dictationExperimentDigestsReported];
    v101 = [v4 dictationExperimentDigestsReported];
    v102 = [v100 isEqual:v101];

    if (!v102)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  v6 = [(ODDSiriSchemaODDSiriClientEvent *)self attentionInvocationDigestsReported];
  v7 = [v4 attentionInvocationDigestsReported];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_117;
  }

  v103 = [(ODDSiriSchemaODDSiriClientEvent *)self attentionInvocationDigestsReported];
  if (v103)
  {
    v104 = v103;
    v105 = [(ODDSiriSchemaODDSiriClientEvent *)self attentionInvocationDigestsReported];
    v106 = [v4 attentionInvocationDigestsReported];
    v107 = [v105 isEqual:v106];

    if (!v107)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  v6 = [(ODDSiriSchemaODDSiriClientEvent *)self bluetoothCarDigestReported];
  v7 = [v4 bluetoothCarDigestReported];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_117;
  }

  v108 = [(ODDSiriSchemaODDSiriClientEvent *)self bluetoothCarDigestReported];
  if (v108)
  {
    v109 = v108;
    v110 = [(ODDSiriSchemaODDSiriClientEvent *)self bluetoothCarDigestReported];
    v111 = [v4 bluetoothCarDigestReported];
    v112 = [v110 isEqual:v111];

    if (!v112)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  v6 = [(ODDSiriSchemaODDSiriClientEvent *)self mobileAssetErrorsReported];
  v7 = [v4 mobileAssetErrorsReported];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_117;
  }

  v113 = [(ODDSiriSchemaODDSiriClientEvent *)self mobileAssetErrorsReported];
  if (v113)
  {
    v114 = v113;
    v115 = [(ODDSiriSchemaODDSiriClientEvent *)self mobileAssetErrorsReported];
    v116 = [v4 mobileAssetErrorsReported];
    v117 = [v115 isEqual:v116];

    if (!v117)
    {
      goto LABEL_118;
    }
  }

  else
  {
  }

  v6 = [(ODDSiriSchemaODDSiriClientEvent *)self intelligenceFeatureAvailabilityStatusChangesReported];
  v7 = [v4 intelligenceFeatureAvailabilityStatusChangesReported];
  if ((v6 != 0) != (v7 == 0))
  {
    v118 = [(ODDSiriSchemaODDSiriClientEvent *)self intelligenceFeatureAvailabilityStatusChangesReported];
    if (!v118)
    {

LABEL_121:
      v123 = 1;
      goto LABEL_119;
    }

    v119 = v118;
    v120 = [(ODDSiriSchemaODDSiriClientEvent *)self intelligenceFeatureAvailabilityStatusChangesReported];
    v121 = [v4 intelligenceFeatureAvailabilityStatusChangesReported];
    v122 = [v120 isEqual:v121];

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

- (void)writeTo:(id)a3
{
  v51 = a3;
  v4 = [(ODDSiriSchemaODDSiriClientEvent *)self eventMetadata];

  if (v4)
  {
    v5 = [(ODDSiriSchemaODDSiriClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(ODDSiriSchemaODDSiriClientEvent *)self deviceSegmentsReported];

  if (v6)
  {
    v7 = [(ODDSiriSchemaODDSiriClientEvent *)self deviceSegmentsReported];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(ODDSiriSchemaODDSiriClientEvent *)self deviceCohortsReported];

  if (v8)
  {
    v9 = [(ODDSiriSchemaODDSiriClientEvent *)self deviceCohortsReported];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(ODDSiriSchemaODDSiriClientEvent *)self assistantDeviceDigestReported];

  if (v10)
  {
    v11 = [(ODDSiriSchemaODDSiriClientEvent *)self assistantDeviceDigestReported];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(ODDSiriSchemaODDSiriClientEvent *)self dictationDeviceDigestReported];

  if (v12)
  {
    v13 = [(ODDSiriSchemaODDSiriClientEvent *)self dictationDeviceDigestReported];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(ODDSiriSchemaODDSiriClientEvent *)self siriAccountInformation];

  if (v14)
  {
    v15 = [(ODDSiriSchemaODDSiriClientEvent *)self siriAccountInformation];
    PBDataWriterWriteSubmessage();
  }

  v16 = [(ODDSiriSchemaODDSiriClientEvent *)self assistantExperimentDigestReported];

  if (v16)
  {
    v17 = [(ODDSiriSchemaODDSiriClientEvent *)self assistantExperimentDigestReported];
    PBDataWriterWriteSubmessage();
  }

  v18 = [(ODDSiriSchemaODDSiriClientEvent *)self assistantDiagnosticAndUsageOptInDigestReported];

  if (v18)
  {
    v19 = [(ODDSiriSchemaODDSiriClientEvent *)self assistantDiagnosticAndUsageOptInDigestReported];
    PBDataWriterWriteSubmessage();
  }

  v20 = [(ODDSiriSchemaODDSiriClientEvent *)self iOSDevicePropertiesReported];

  if (v20)
  {
    v21 = [(ODDSiriSchemaODDSiriClientEvent *)self iOSDevicePropertiesReported];
    PBDataWriterWriteSubmessage();
  }

  v22 = [(ODDSiriSchemaODDSiriClientEvent *)self watchOSDevicePropertiesReported];

  if (v22)
  {
    v23 = [(ODDSiriSchemaODDSiriClientEvent *)self watchOSDevicePropertiesReported];
    PBDataWriterWriteSubmessage();
  }

  v24 = [(ODDSiriSchemaODDSiriClientEvent *)self tvOSDevicePropertiesReported];

  if (v24)
  {
    v25 = [(ODDSiriSchemaODDSiriClientEvent *)self tvOSDevicePropertiesReported];
    PBDataWriterWriteSubmessage();
  }

  v26 = [(ODDSiriSchemaODDSiriClientEvent *)self macOSDevicePropertiesReported];

  if (v26)
  {
    v27 = [(ODDSiriSchemaODDSiriClientEvent *)self macOSDevicePropertiesReported];
    PBDataWriterWriteSubmessage();
  }

  v28 = [(ODDSiriSchemaODDSiriClientEvent *)self visionOSDevicePropertiesReported];

  if (v28)
  {
    v29 = [(ODDSiriSchemaODDSiriClientEvent *)self visionOSDevicePropertiesReported];
    PBDataWriterWriteSubmessage();
  }

  v30 = [(ODDSiriSchemaODDSiriClientEvent *)self assistantCarPlayDigestReported];

  if (v30)
  {
    v31 = [(ODDSiriSchemaODDSiriClientEvent *)self assistantCarPlayDigestReported];
    PBDataWriterWriteSubmessage();
  }

  v32 = [(ODDSiriSchemaODDSiriClientEvent *)self requestsWithoutAssetsDigestReported];

  if (v32)
  {
    v33 = [(ODDSiriSchemaODDSiriClientEvent *)self requestsWithoutAssetsDigestReported];
    PBDataWriterWriteSubmessage();
  }

  v34 = [(ODDSiriSchemaODDSiriClientEvent *)self assetAvailabilityFromBootDigestReported];

  if (v34)
  {
    v35 = [(ODDSiriSchemaODDSiriClientEvent *)self assetAvailabilityFromBootDigestReported];
    PBDataWriterWriteSubmessage();
  }

  v36 = [(ODDSiriSchemaODDSiriClientEvent *)self assetSetStatusDigestReported];

  if (v36)
  {
    v37 = [(ODDSiriSchemaODDSiriClientEvent *)self assetSetStatusDigestReported];
    PBDataWriterWriteSubmessage();
  }

  v38 = [(ODDSiriSchemaODDSiriClientEvent *)self executionMetadataReported];

  if (v38)
  {
    v39 = [(ODDSiriSchemaODDSiriClientEvent *)self executionMetadataReported];
    PBDataWriterWriteSubmessage();
  }

  v40 = [(ODDSiriSchemaODDSiriClientEvent *)self dictationExperimentDigestsReported];

  if (v40)
  {
    v41 = [(ODDSiriSchemaODDSiriClientEvent *)self dictationExperimentDigestsReported];
    PBDataWriterWriteSubmessage();
  }

  v42 = [(ODDSiriSchemaODDSiriClientEvent *)self attentionInvocationDigestsReported];

  if (v42)
  {
    v43 = [(ODDSiriSchemaODDSiriClientEvent *)self attentionInvocationDigestsReported];
    PBDataWriterWriteSubmessage();
  }

  v44 = [(ODDSiriSchemaODDSiriClientEvent *)self bluetoothCarDigestReported];

  if (v44)
  {
    v45 = [(ODDSiriSchemaODDSiriClientEvent *)self bluetoothCarDigestReported];
    PBDataWriterWriteSubmessage();
  }

  v46 = [(ODDSiriSchemaODDSiriClientEvent *)self mobileAssetErrorsReported];

  if (v46)
  {
    v47 = [(ODDSiriSchemaODDSiriClientEvent *)self mobileAssetErrorsReported];
    PBDataWriterWriteSubmessage();
  }

  v48 = [(ODDSiriSchemaODDSiriClientEvent *)self intelligenceFeatureAvailabilityStatusChangesReported];

  v49 = v51;
  if (v48)
  {
    v50 = [(ODDSiriSchemaODDSiriClientEvent *)self intelligenceFeatureAvailabilityStatusChangesReported];
    PBDataWriterWriteSubmessage();

    v49 = v51;
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

- (void)setIntelligenceFeatureAvailabilityStatusChangesReported:(id)a3
{
  v4 = a3;
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

  self->_whichEvent_Type = 32 * (v4 != 0);
  intelligenceFeatureAvailabilityStatusChangesReported = self->_intelligenceFeatureAvailabilityStatusChangesReported;
  self->_intelligenceFeatureAvailabilityStatusChangesReported = v4;
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

- (void)setMobileAssetErrorsReported:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v26 = 0;
  }

  self->_whichEvent_Type = v26;
  mobileAssetErrorsReported = self->_mobileAssetErrorsReported;
  self->_mobileAssetErrorsReported = v4;
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

- (void)setBluetoothCarDigestReported:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v26 = 0;
  }

  self->_whichEvent_Type = v26;
  bluetoothCarDigestReported = self->_bluetoothCarDigestReported;
  self->_bluetoothCarDigestReported = v4;
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

- (void)setAttentionInvocationDigestsReported:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v26 = 0;
  }

  self->_whichEvent_Type = v26;
  attentionInvocationDigestsReported = self->_attentionInvocationDigestsReported;
  self->_attentionInvocationDigestsReported = v4;
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

- (void)setDictationExperimentDigestsReported:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v26 = 0;
  }

  self->_whichEvent_Type = v26;
  dictationExperimentDigestsReported = self->_dictationExperimentDigestsReported;
  self->_dictationExperimentDigestsReported = v4;
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

- (void)setExecutionMetadataReported:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v26 = 0;
  }

  self->_whichEvent_Type = v26;
  executionMetadataReported = self->_executionMetadataReported;
  self->_executionMetadataReported = v4;
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

- (void)setAssetSetStatusDigestReported:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v26 = 0;
  }

  self->_whichEvent_Type = v26;
  assetSetStatusDigestReported = self->_assetSetStatusDigestReported;
  self->_assetSetStatusDigestReported = v4;
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

- (void)setAssetAvailabilityFromBootDigestReported:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v26 = 0;
  }

  self->_whichEvent_Type = v26;
  assetAvailabilityFromBootDigestReported = self->_assetAvailabilityFromBootDigestReported;
  self->_assetAvailabilityFromBootDigestReported = v4;
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

- (void)setRequestsWithoutAssetsDigestReported:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v26 = 0;
  }

  self->_whichEvent_Type = v26;
  requestsWithoutAssetsDigestReported = self->_requestsWithoutAssetsDigestReported;
  self->_requestsWithoutAssetsDigestReported = v4;
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

- (void)setAssistantCarPlayDigestReported:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v26 = 0;
  }

  self->_whichEvent_Type = v26;
  assistantCarPlayDigestReported = self->_assistantCarPlayDigestReported;
  self->_assistantCarPlayDigestReported = v4;
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

- (void)setVisionOSDevicePropertiesReported:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v26 = 0;
  }

  self->_whichEvent_Type = v26;
  visionOSDevicePropertiesReported = self->_visionOSDevicePropertiesReported;
  self->_visionOSDevicePropertiesReported = v4;
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

- (void)setMacOSDevicePropertiesReported:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v26 = 0;
  }

  self->_whichEvent_Type = v26;
  macOSDevicePropertiesReported = self->_macOSDevicePropertiesReported;
  self->_macOSDevicePropertiesReported = v4;
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

- (void)setTvOSDevicePropertiesReported:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v26 = 0;
  }

  self->_whichEvent_Type = v26;
  tvOSDevicePropertiesReported = self->_tvOSDevicePropertiesReported;
  self->_tvOSDevicePropertiesReported = v4;
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

- (void)setWatchOSDevicePropertiesReported:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v26 = 0;
  }

  self->_whichEvent_Type = v26;
  watchOSDevicePropertiesReported = self->_watchOSDevicePropertiesReported;
  self->_watchOSDevicePropertiesReported = v4;
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

- (void)setIOSDevicePropertiesReported:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v26 = 0;
  }

  self->_whichEvent_Type = v26;
  iOSDevicePropertiesReported = self->_iOSDevicePropertiesReported;
  self->_iOSDevicePropertiesReported = v4;
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

- (void)setAssistantDiagnosticAndUsageOptInDigestReported:(id)a3
{
  v4 = a3;
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

  self->_whichEvent_Type = 16 * (v4 != 0);
  assistantDiagnosticAndUsageOptInDigestReported = self->_assistantDiagnosticAndUsageOptInDigestReported;
  self->_assistantDiagnosticAndUsageOptInDigestReported = v4;
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

- (void)setAssistantExperimentDigestReported:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v26 = 0;
  }

  self->_whichEvent_Type = v26;
  assistantExperimentDigestReported = self->_assistantExperimentDigestReported;
  self->_assistantExperimentDigestReported = v4;
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

- (void)setSiriAccountInformation:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v26 = 0;
  }

  self->_whichEvent_Type = v26;
  siriAccountInformation = self->_siriAccountInformation;
  self->_siriAccountInformation = v4;
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

- (void)setDictationDeviceDigestReported:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v26 = 0;
  }

  self->_whichEvent_Type = v26;
  dictationDeviceDigestReported = self->_dictationDeviceDigestReported;
  self->_dictationDeviceDigestReported = v4;
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

- (void)setAssistantDeviceDigestReported:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v26 = 0;
  }

  self->_whichEvent_Type = v26;
  assistantDeviceDigestReported = self->_assistantDeviceDigestReported;
  self->_assistantDeviceDigestReported = v4;
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

- (void)setDeviceCohortsReported:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v26 = 0;
  }

  self->_whichEvent_Type = v26;
  deviceCohortsReported = self->_deviceCohortsReported;
  self->_deviceCohortsReported = v4;
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

- (void)setDeviceSegmentsReported:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v26 = 0;
  }

  self->_whichEvent_Type = v26;
  deviceSegmentsReported = self->_deviceSegmentsReported;
  self->_deviceSegmentsReported = v4;
}

- (id)qualifiedMessageName
{
  v2 = [(ODDSiriSchemaODDSiriClientEvent *)self whichEvent_Type];
  if (v2 - 10 > 0x16)
  {
    return @"com.apple.aiml.siri.odd.ODDSiriClientEvent";
  }

  else
  {
    return off_1E78DDA20[v2 - 10];
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v76.receiver = self;
  v76.super_class = ODDSiriSchemaODDSiriClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v76 applySensitiveConditionsPolicy:v4];
  v6 = [(ODDSiriSchemaODDSiriClientEvent *)self eventMetadata];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(ODDSiriSchemaODDSiriClientEvent *)self deleteEventMetadata];
  }

  v9 = [(ODDSiriSchemaODDSiriClientEvent *)self deviceSegmentsReported];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(ODDSiriSchemaODDSiriClientEvent *)self deleteDeviceSegmentsReported];
  }

  v12 = [(ODDSiriSchemaODDSiriClientEvent *)self deviceCohortsReported];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(ODDSiriSchemaODDSiriClientEvent *)self deleteDeviceCohortsReported];
  }

  v15 = [(ODDSiriSchemaODDSiriClientEvent *)self assistantDeviceDigestReported];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(ODDSiriSchemaODDSiriClientEvent *)self deleteAssistantDeviceDigestReported];
  }

  v18 = [(ODDSiriSchemaODDSiriClientEvent *)self dictationDeviceDigestReported];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(ODDSiriSchemaODDSiriClientEvent *)self deleteDictationDeviceDigestReported];
  }

  v21 = [(ODDSiriSchemaODDSiriClientEvent *)self siriAccountInformation];
  v22 = [v21 applySensitiveConditionsPolicy:v4];
  v23 = [v22 suppressMessage];

  if (v23)
  {
    [(ODDSiriSchemaODDSiriClientEvent *)self deleteSiriAccountInformation];
  }

  v24 = [(ODDSiriSchemaODDSiriClientEvent *)self assistantExperimentDigestReported];
  v25 = [v24 applySensitiveConditionsPolicy:v4];
  v26 = [v25 suppressMessage];

  if (v26)
  {
    [(ODDSiriSchemaODDSiriClientEvent *)self deleteAssistantExperimentDigestReported];
  }

  v27 = [(ODDSiriSchemaODDSiriClientEvent *)self assistantDiagnosticAndUsageOptInDigestReported];
  v28 = [v27 applySensitiveConditionsPolicy:v4];
  v29 = [v28 suppressMessage];

  if (v29)
  {
    [(ODDSiriSchemaODDSiriClientEvent *)self deleteAssistantDiagnosticAndUsageOptInDigestReported];
  }

  v30 = [(ODDSiriSchemaODDSiriClientEvent *)self iOSDevicePropertiesReported];
  v31 = [v30 applySensitiveConditionsPolicy:v4];
  v32 = [v31 suppressMessage];

  if (v32)
  {
    [(ODDSiriSchemaODDSiriClientEvent *)self deleteIOSDevicePropertiesReported];
  }

  v33 = [(ODDSiriSchemaODDSiriClientEvent *)self watchOSDevicePropertiesReported];
  v34 = [v33 applySensitiveConditionsPolicy:v4];
  v35 = [v34 suppressMessage];

  if (v35)
  {
    [(ODDSiriSchemaODDSiriClientEvent *)self deleteWatchOSDevicePropertiesReported];
  }

  v36 = [(ODDSiriSchemaODDSiriClientEvent *)self tvOSDevicePropertiesReported];
  v37 = [v36 applySensitiveConditionsPolicy:v4];
  v38 = [v37 suppressMessage];

  if (v38)
  {
    [(ODDSiriSchemaODDSiriClientEvent *)self deleteTvOSDevicePropertiesReported];
  }

  v39 = [(ODDSiriSchemaODDSiriClientEvent *)self macOSDevicePropertiesReported];
  v40 = [v39 applySensitiveConditionsPolicy:v4];
  v41 = [v40 suppressMessage];

  if (v41)
  {
    [(ODDSiriSchemaODDSiriClientEvent *)self deleteMacOSDevicePropertiesReported];
  }

  v42 = [(ODDSiriSchemaODDSiriClientEvent *)self visionOSDevicePropertiesReported];
  v43 = [v42 applySensitiveConditionsPolicy:v4];
  v44 = [v43 suppressMessage];

  if (v44)
  {
    [(ODDSiriSchemaODDSiriClientEvent *)self deleteVisionOSDevicePropertiesReported];
  }

  v45 = [(ODDSiriSchemaODDSiriClientEvent *)self assistantCarPlayDigestReported];
  v46 = [v45 applySensitiveConditionsPolicy:v4];
  v47 = [v46 suppressMessage];

  if (v47)
  {
    [(ODDSiriSchemaODDSiriClientEvent *)self deleteAssistantCarPlayDigestReported];
  }

  v48 = [(ODDSiriSchemaODDSiriClientEvent *)self requestsWithoutAssetsDigestReported];
  v49 = [v48 applySensitiveConditionsPolicy:v4];
  v50 = [v49 suppressMessage];

  if (v50)
  {
    [(ODDSiriSchemaODDSiriClientEvent *)self deleteRequestsWithoutAssetsDigestReported];
  }

  v51 = [(ODDSiriSchemaODDSiriClientEvent *)self assetAvailabilityFromBootDigestReported];
  v52 = [v51 applySensitiveConditionsPolicy:v4];
  v53 = [v52 suppressMessage];

  if (v53)
  {
    [(ODDSiriSchemaODDSiriClientEvent *)self deleteAssetAvailabilityFromBootDigestReported];
  }

  v54 = [(ODDSiriSchemaODDSiriClientEvent *)self assetSetStatusDigestReported];
  v55 = [v54 applySensitiveConditionsPolicy:v4];
  v56 = [v55 suppressMessage];

  if (v56)
  {
    [(ODDSiriSchemaODDSiriClientEvent *)self deleteAssetSetStatusDigestReported];
  }

  v57 = [(ODDSiriSchemaODDSiriClientEvent *)self executionMetadataReported];
  v58 = [v57 applySensitiveConditionsPolicy:v4];
  v59 = [v58 suppressMessage];

  if (v59)
  {
    [(ODDSiriSchemaODDSiriClientEvent *)self deleteExecutionMetadataReported];
  }

  v60 = [(ODDSiriSchemaODDSiriClientEvent *)self dictationExperimentDigestsReported];
  v61 = [v60 applySensitiveConditionsPolicy:v4];
  v62 = [v61 suppressMessage];

  if (v62)
  {
    [(ODDSiriSchemaODDSiriClientEvent *)self deleteDictationExperimentDigestsReported];
  }

  v63 = [(ODDSiriSchemaODDSiriClientEvent *)self attentionInvocationDigestsReported];
  v64 = [v63 applySensitiveConditionsPolicy:v4];
  v65 = [v64 suppressMessage];

  if (v65)
  {
    [(ODDSiriSchemaODDSiriClientEvent *)self deleteAttentionInvocationDigestsReported];
  }

  v66 = [(ODDSiriSchemaODDSiriClientEvent *)self bluetoothCarDigestReported];
  v67 = [v66 applySensitiveConditionsPolicy:v4];
  v68 = [v67 suppressMessage];

  if (v68)
  {
    [(ODDSiriSchemaODDSiriClientEvent *)self deleteBluetoothCarDigestReported];
  }

  v69 = [(ODDSiriSchemaODDSiriClientEvent *)self mobileAssetErrorsReported];
  v70 = [v69 applySensitiveConditionsPolicy:v4];
  v71 = [v70 suppressMessage];

  if (v71)
  {
    [(ODDSiriSchemaODDSiriClientEvent *)self deleteMobileAssetErrorsReported];
  }

  v72 = [(ODDSiriSchemaODDSiriClientEvent *)self intelligenceFeatureAvailabilityStatusChangesReported];
  v73 = [v72 applySensitiveConditionsPolicy:v4];
  v74 = [v73 suppressMessage];

  if (v74)
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

+ (id)getInnerTypeStringByTag:(unint64_t)a3
{
  if (a3 - 10 > 0x16)
  {
    return 0;
  }

  else
  {
    return off_1E78EA520[a3 - 10];
  }
}

- (int)clockIsolationLevel
{
  v2 = [(ODDSiriSchemaODDSiriClientEvent *)self whichEvent_Type];
  if (v2 - 10 > 0x16)
  {
    return 1;
  }

  else
  {
    return dword_1AA738C88[v2 - 10];
  }
}

@end