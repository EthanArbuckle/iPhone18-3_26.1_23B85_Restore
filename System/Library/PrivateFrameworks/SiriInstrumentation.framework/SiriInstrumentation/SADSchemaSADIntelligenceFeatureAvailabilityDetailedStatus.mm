@interface SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus)initWithDictionary:(id)dictionary;
- (SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasBuddyStatus:(BOOL)status;
- (void)setHasCountPSUSAssets:(BOOL)assets;
- (void)setHasCountRequiredAssets:(BOOL)assets;
- (void)setHasCurrentMode:(BOOL)mode;
- (void)setHasCurrentSubscriptionHash:(BOOL)hash;
- (void)setHasDownloadState:(BOOL)state;
- (void)setHasErrorCount:(BOOL)count;
- (void)setHasInvocationsCountWhileNotAvailable:(BOOL)available;
- (void)setHasLastMobileAssetDownloadAttemptErrorCode:(BOOL)code;
- (void)setHasLastMobileAssetDownloadAttemptErrorUnderlyingCode:(BOOL)code;
- (void)setHasMode:(BOOL)mode;
- (void)setHasSampledErrorCode:(BOOL)code;
- (void)setHasSampledErrorHash:(BOOL)hash;
- (void)setHasSampledErrorUnderlyingCode:(BOOL)code;
- (void)setHasStatus:(BOOL)status;
- (void)setHasSubscriptionDownloadStatus:(BOOL)status;
- (void)setHasTimeSinceLastAppleIntelligenceToggleInSeconds:(BOOL)seconds;
- (void)setHasTimeSinceLastBootInSeconds:(BOOL)seconds;
- (void)setHasTimeSinceLastMobileAssetDownloadAttemptInSeconds:(BOOL)seconds;
- (void)setHasTimeSinceLastMobileAssetDownloadErrorInSeconds:(BOOL)seconds;
- (void)setHasTimeSinceLastSoftwareUpdateInSeconds:(BOOL)seconds;
- (void)setHasTimeSinceLastSubscriptionHashChangeInSeconds:(BOOL)seconds;
- (void)setHasTimeSinceSampledErrorInSeconds:(BOOL)seconds;
- (void)setHasTimeSinceSubscriptionDownloadStatusCompleteInSeconds:(BOOL)seconds;
- (void)writeTo:(id)to;
@end

@implementation SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus

- (SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v81.receiver = self;
  v81.super_class = SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus;
  v5 = [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)&v81 init];

  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"locale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus setLocale:](v5, "setLocale:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"status"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus setStatus:](v5, "setStatus:", [v7 unsignedLongLongValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"currentSubscriptionHash"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus setCurrentSubscriptionHash:](v5, "setCurrentSubscriptionHash:", [v8 unsignedIntValue]);
    }

    v60 = v7;
    v61 = v6;
    v9 = [dictionaryCopy objectForKeyedSubscript:@"downloadState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus setDownloadState:](v5, "setDownloadState:", [v9 intValue]);
    }

    v58 = v9;
    v10 = [dictionaryCopy objectForKeyedSubscript:@"lastMobileAssetDownloadAttemptErrorAsset"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)v5 setLastMobileAssetDownloadAttemptErrorAsset:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"timeSinceLastMobileAssetDownloadAttemptInSeconds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v12 doubleValue];
      [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)v5 setTimeSinceLastMobileAssetDownloadAttemptInSeconds:?];
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"timeSinceLastMobileAssetDownloadErrorInSeconds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v13 doubleValue];
      [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)v5 setTimeSinceLastMobileAssetDownloadErrorInSeconds:?];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"lastMobileAssetDownloadAttemptErrorCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus setLastMobileAssetDownloadAttemptErrorCode:](v5, "setLastMobileAssetDownloadAttemptErrorCode:", [v14 unsignedIntValue]);
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"lastMobileAssetDownloadAttemptErrorDomain"];
    objc_opt_class();
    v80 = v15;
    if (objc_opt_isKindOfClass())
    {
      v16 = [v15 copy];
      [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)v5 setLastMobileAssetDownloadAttemptErrorDomain:v16];
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"errorCount"];
    objc_opt_class();
    v79 = v17;
    if (objc_opt_isKindOfClass())
    {
      -[SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus setErrorCount:](v5, "setErrorCount:", [v17 unsignedIntValue]);
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"failingSubsystemOperations"];
    objc_opt_class();
    v78 = v18;
    if (objc_opt_isKindOfClass())
    {
      v19 = [v18 copy];
      [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)v5 setFailingSubsystemOperations:v19];
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"sampledSubsystemOperation"];
    objc_opt_class();
    v77 = v20;
    if (objc_opt_isKindOfClass())
    {
      v21 = [v20 copy];
      [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)v5 setSampledSubsystemOperation:v21];
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"sampledErrorCode"];
    objc_opt_class();
    v76 = v22;
    if (objc_opt_isKindOfClass())
    {
      -[SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus setSampledErrorCode:](v5, "setSampledErrorCode:", [v22 unsignedIntValue]);
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"sampledErrorDomain"];
    objc_opt_class();
    v75 = v23;
    if (objc_opt_isKindOfClass())
    {
      v24 = [v23 copy];
      [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)v5 setSampledErrorDomain:v24];
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"sampledErrorHash"];
    objc_opt_class();
    v74 = v25;
    if (objc_opt_isKindOfClass())
    {
      -[SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus setSampledErrorHash:](v5, "setSampledErrorHash:", [v25 unsignedIntValue]);
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"sampledErrorUnderlyingCode"];
    objc_opt_class();
    v73 = v26;
    if (objc_opt_isKindOfClass())
    {
      -[SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus setSampledErrorUnderlyingCode:](v5, "setSampledErrorUnderlyingCode:", [v26 unsignedIntValue]);
    }

    v27 = [dictionaryCopy objectForKeyedSubscript:@"sampledErrorUnderlyingDomain"];
    objc_opt_class();
    v72 = v27;
    if (objc_opt_isKindOfClass())
    {
      v28 = [v27 copy];
      [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)v5 setSampledErrorUnderlyingDomain:v28];
    }

    v29 = [dictionaryCopy objectForKeyedSubscript:@"timeSinceLastAppleIntelligenceToggleInSeconds"];
    objc_opt_class();
    v71 = v29;
    if (objc_opt_isKindOfClass())
    {
      [v29 doubleValue];
      [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)v5 setTimeSinceLastAppleIntelligenceToggleInSeconds:?];
    }

    v30 = [dictionaryCopy objectForKeyedSubscript:@"timeSinceLastSubscriptionHashChangeInSeconds"];
    objc_opt_class();
    v70 = v30;
    if (objc_opt_isKindOfClass())
    {
      [v30 doubleValue];
      [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)v5 setTimeSinceLastSubscriptionHashChangeInSeconds:?];
    }

    v31 = [dictionaryCopy objectForKeyedSubscript:@"timeSinceLastBootInSeconds"];
    objc_opt_class();
    v69 = v31;
    if (objc_opt_isKindOfClass())
    {
      [v31 doubleValue];
      [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)v5 setTimeSinceLastBootInSeconds:?];
    }

    v32 = [dictionaryCopy objectForKeyedSubscript:@"countPSUSAssets"];
    objc_opt_class();
    v68 = v32;
    if (objc_opt_isKindOfClass())
    {
      -[SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus setCountPSUSAssets:](v5, "setCountPSUSAssets:", [v32 unsignedLongLongValue]);
    }

    v33 = [dictionaryCopy objectForKeyedSubscript:@"countRequiredAssets"];
    objc_opt_class();
    v67 = v33;
    if (objc_opt_isKindOfClass())
    {
      -[SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus setCountRequiredAssets:](v5, "setCountRequiredAssets:", [v33 unsignedIntValue]);
    }

    v34 = [dictionaryCopy objectForKeyedSubscript:@"useCaseID"];
    objc_opt_class();
    v66 = v34;
    if (objc_opt_isKindOfClass())
    {
      v35 = [v34 copy];
      [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)v5 setUseCaseID:v35];
    }

    v36 = [dictionaryCopy objectForKeyedSubscript:@"timeSinceLastSoftwareUpdateInSeconds"];
    objc_opt_class();
    v65 = v36;
    if (objc_opt_isKindOfClass())
    {
      [v36 doubleValue];
      [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)v5 setTimeSinceLastSoftwareUpdateInSeconds:?];
    }

    v37 = [dictionaryCopy objectForKeyedSubscript:@"timeSinceSampledErrorInSeconds"];
    objc_opt_class();
    v64 = v37;
    if (objc_opt_isKindOfClass())
    {
      [v37 doubleValue];
      [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)v5 setTimeSinceSampledErrorInSeconds:?];
    }

    v38 = [dictionaryCopy objectForKeyedSubscript:@"buddyStatus"];
    objc_opt_class();
    v63 = v38;
    if (objc_opt_isKindOfClass())
    {
      -[SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus setBuddyStatus:](v5, "setBuddyStatus:", [v38 intValue]);
    }

    v39 = [dictionaryCopy objectForKeyedSubscript:@"buildVersionPriorToSoftwareUpdate"];
    objc_opt_class();
    v62 = v39;
    if (objc_opt_isKindOfClass())
    {
      v40 = [v39 copy];
      [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)v5 setBuildVersionPriorToSoftwareUpdate:v40];
    }

    v57 = v10;
    v41 = [dictionaryCopy objectForKeyedSubscript:@"invocationsCountWhileNotAvailable"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus setInvocationsCountWhileNotAvailable:](v5, "setInvocationsCountWhileNotAvailable:", [v41 unsignedIntValue]);
    }

    v56 = v12;
    v42 = [dictionaryCopy objectForKeyedSubscript:@"lastMobileAssetDownloadAttemptErrorUnderlyingCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus setLastMobileAssetDownloadAttemptErrorUnderlyingCode:](v5, "setLastMobileAssetDownloadAttemptErrorUnderlyingCode:", [v42 unsignedIntValue]);
    }

    v53 = v41;
    v55 = v13;
    v43 = [dictionaryCopy objectForKeyedSubscript:@"lastMobileAssetDownloadAttemptErrorUnderlyingDomain"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v44 = [v43 copy];
      [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)v5 setLastMobileAssetDownloadAttemptErrorUnderlyingDomain:v44];
    }

    v54 = v14;
    v45 = [dictionaryCopy objectForKeyedSubscript:@"mode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus setMode:](v5, "setMode:", [v45 intValue]);
    }

    v46 = [dictionaryCopy objectForKeyedSubscript:@"sampledErrorAsset"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v47 = [v46 copy];
      [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)v5 setSampledErrorAsset:v47];
    }

    v48 = [dictionaryCopy objectForKeyedSubscript:@"subscriptionDownloadStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus setSubscriptionDownloadStatus:](v5, "setSubscriptionDownloadStatus:", [v48 intValue]);
    }

    v59 = v8;
    v49 = [dictionaryCopy objectForKeyedSubscript:@"timeSinceSubscriptionDownloadStatusCompleteInSeconds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v49 doubleValue];
      [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)v5 setTimeSinceSubscriptionDownloadStatusCompleteInSeconds:?];
    }

    v50 = [dictionaryCopy objectForKeyedSubscript:@"currentMode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus setCurrentMode:](v5, "setCurrentMode:", [v50 intValue]);
    }

    v51 = v5;
  }

  return v5;
}

- (SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)self dictionaryRepresentation];
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
  if ((*(&self->_has + 2) & 4) != 0)
  {
    buddyStatus = [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)self buddyStatus];
    v5 = @"SADBUDDYOPTINSTATE_UNKNOWN";
    if (buddyStatus == 1)
    {
      v5 = @"SADBUDDYOPTINSTATE_OPTEDIN";
    }

    if (buddyStatus == 2)
    {
      v6 = @"SADBUDDYOPTINSTATE_OPTEDOUT";
    }

    else
    {
      v6 = v5;
    }

    [dictionary setObject:v6 forKeyedSubscript:@"buddyStatus"];
  }

  if (self->_buildVersionPriorToSoftwareUpdate)
  {
    buildVersionPriorToSoftwareUpdate = [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)self buildVersionPriorToSoftwareUpdate];
    v8 = [buildVersionPriorToSoftwareUpdate copy];
    [dictionary setObject:v8 forKeyedSubscript:@"buildVersionPriorToSoftwareUpdate"];
  }

  has = self->_has;
  if ((*&has & 0x4000) != 0)
  {
    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus countPSUSAssets](self, "countPSUSAssets")}];
    [dictionary setObject:v25 forKeyedSubscript:@"countPSUSAssets"];

    has = self->_has;
    if ((*&has & 0x8000) == 0)
    {
LABEL_12:
      if ((*&has & 0x1000000) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_36;
    }
  }

  else if ((*&has & 0x8000) == 0)
  {
    goto LABEL_12;
  }

  v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus countRequiredAssets](self, "countRequiredAssets")}];
  [dictionary setObject:v26 forKeyedSubscript:@"countRequiredAssets"];

  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_13:
    if ((*&has & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_78;
  }

LABEL_36:
  v27 = [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)self currentMode]- 1;
  if (v27 > 3)
  {
    v28 = @"SADSIRIMODE_UNKNOWN";
  }

  else
  {
    v28 = off_1E78E2618[v27];
  }

  [dictionary setObject:v28 forKeyedSubscript:@"currentMode"];
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_14:
    if ((*&has & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_79;
  }

LABEL_78:
  v52 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus currentSubscriptionHash](self, "currentSubscriptionHash")}];
  [dictionary setObject:v52 forKeyedSubscript:@"currentSubscriptionHash"];

  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_15:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_79:
  v53 = [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)self downloadState]- 1;
  if (v53 > 3)
  {
    v54 = @"SADMOBILEASSETDOWNLOADSTATE_UNKNOWN";
  }

  else
  {
    v54 = off_1E78E2638[v53];
  }

  [dictionary setObject:v54 forKeyedSubscript:@"downloadState"];
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_16:
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus errorCount](self, "errorCount")}];
    [dictionary setObject:v10 forKeyedSubscript:@"errorCount"];
  }

LABEL_17:
  if (self->_failingSubsystemOperations)
  {
    failingSubsystemOperations = [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)self failingSubsystemOperations];
    v12 = [failingSubsystemOperations copy];
    [dictionary setObject:v12 forKeyedSubscript:@"failingSubsystemOperations"];
  }

  if ((*(&self->_has + 2) & 8) != 0)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus invocationsCountWhileNotAvailable](self, "invocationsCountWhileNotAvailable")}];
    [dictionary setObject:v13 forKeyedSubscript:@"invocationsCountWhileNotAvailable"];
  }

  if (self->_lastMobileAssetDownloadAttemptErrorAsset)
  {
    lastMobileAssetDownloadAttemptErrorAsset = [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)self lastMobileAssetDownloadAttemptErrorAsset];
    v15 = [lastMobileAssetDownloadAttemptErrorAsset copy];
    [dictionary setObject:v15 forKeyedSubscript:@"lastMobileAssetDownloadAttemptErrorAsset"];
  }

  if ((*&self->_has & 0x40) != 0)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus lastMobileAssetDownloadAttemptErrorCode](self, "lastMobileAssetDownloadAttemptErrorCode")}];
    [dictionary setObject:v16 forKeyedSubscript:@"lastMobileAssetDownloadAttemptErrorCode"];
  }

  if (self->_lastMobileAssetDownloadAttemptErrorDomain)
  {
    lastMobileAssetDownloadAttemptErrorDomain = [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)self lastMobileAssetDownloadAttemptErrorDomain];
    v18 = [lastMobileAssetDownloadAttemptErrorDomain copy];
    [dictionary setObject:v18 forKeyedSubscript:@"lastMobileAssetDownloadAttemptErrorDomain"];
  }

  if ((*(&self->_has + 2) & 0x10) != 0)
  {
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus lastMobileAssetDownloadAttemptErrorUnderlyingCode](self, "lastMobileAssetDownloadAttemptErrorUnderlyingCode")}];
    [dictionary setObject:v19 forKeyedSubscript:@"lastMobileAssetDownloadAttemptErrorUnderlyingCode"];
  }

  if (self->_lastMobileAssetDownloadAttemptErrorUnderlyingDomain)
  {
    lastMobileAssetDownloadAttemptErrorUnderlyingDomain = [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)self lastMobileAssetDownloadAttemptErrorUnderlyingDomain];
    v21 = [lastMobileAssetDownloadAttemptErrorUnderlyingDomain copy];
    [dictionary setObject:v21 forKeyedSubscript:@"lastMobileAssetDownloadAttemptErrorUnderlyingDomain"];
  }

  v22 = self->_has;
  if (*&v22)
  {
    v23 = [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)self locale]- 1;
    if (v23 > 0x3D)
    {
      v24 = @"LOCALE_UNKNOWN_LOCALE";
    }

    else
    {
      v24 = off_1E78E2658[v23];
    }

    [dictionary setObject:v24 forKeyedSubscript:@"locale"];
    v22 = self->_has;
  }

  if ((*&v22 & 0x200000) != 0)
  {
    if ([(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)self mode]== 1)
    {
      v29 = @"ORCHSIRIUNDERSTANDINGONDEVICEMODE_HYBRID_ASR_ON_SERVER_NL_ON_DEVICE";
    }

    else
    {
      v29 = @"ORCHSIRIUNDERSTANDINGONDEVICEMODE_FULL_UOD";
    }

    [dictionary setObject:v29 forKeyedSubscript:@"mode"];
  }

  if (self->_sampledErrorAsset)
  {
    sampledErrorAsset = [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)self sampledErrorAsset];
    v31 = [sampledErrorAsset copy];
    [dictionary setObject:v31 forKeyedSubscript:@"sampledErrorAsset"];
  }

  if (*(&self->_has + 1))
  {
    v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus sampledErrorCode](self, "sampledErrorCode")}];
    [dictionary setObject:v32 forKeyedSubscript:@"sampledErrorCode"];
  }

  if (self->_sampledErrorDomain)
  {
    sampledErrorDomain = [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)self sampledErrorDomain];
    v34 = [sampledErrorDomain copy];
    [dictionary setObject:v34 forKeyedSubscript:@"sampledErrorDomain"];
  }

  v35 = self->_has;
  if ((*&v35 & 0x200) != 0)
  {
    v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus sampledErrorHash](self, "sampledErrorHash")}];
    [dictionary setObject:v36 forKeyedSubscript:@"sampledErrorHash"];

    v35 = self->_has;
  }

  if ((*&v35 & 0x400) != 0)
  {
    v37 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus sampledErrorUnderlyingCode](self, "sampledErrorUnderlyingCode")}];
    [dictionary setObject:v37 forKeyedSubscript:@"sampledErrorUnderlyingCode"];
  }

  if (self->_sampledErrorUnderlyingDomain)
  {
    sampledErrorUnderlyingDomain = [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)self sampledErrorUnderlyingDomain];
    v39 = [sampledErrorUnderlyingDomain copy];
    [dictionary setObject:v39 forKeyedSubscript:@"sampledErrorUnderlyingDomain"];
  }

  if (self->_sampledSubsystemOperation)
  {
    sampledSubsystemOperation = [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)self sampledSubsystemOperation];
    v41 = [sampledSubsystemOperation copy];
    [dictionary setObject:v41 forKeyedSubscript:@"sampledSubsystemOperation"];
  }

  v42 = self->_has;
  if ((*&v42 & 2) != 0)
  {
    v49 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus status](self, "status")}];
    [dictionary setObject:v49 forKeyedSubscript:@"status"];

    v42 = self->_has;
    if ((*&v42 & 0x400000) == 0)
    {
LABEL_61:
      if ((*&v42 & 0x800) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_83;
    }
  }

  else if ((*&v42 & 0x400000) == 0)
  {
    goto LABEL_61;
  }

  v50 = [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)self subscriptionDownloadStatus]- 1;
  if (v50 > 7)
  {
    v51 = @"UAFSUBSCRIPTIONDOWNLOADSTATUS_UNKNOWN";
  }

  else
  {
    v51 = off_1E78E2848[v50];
  }

  [dictionary setObject:v51 forKeyedSubscript:@"subscriptionDownloadStatus"];
  v42 = self->_has;
  if ((*&v42 & 0x800) == 0)
  {
LABEL_62:
    if ((*&v42 & 0x2000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_84;
  }

LABEL_83:
  v55 = MEMORY[0x1E696AD98];
  [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)self timeSinceLastAppleIntelligenceToggleInSeconds];
  v56 = [v55 numberWithDouble:?];
  [dictionary setObject:v56 forKeyedSubscript:@"timeSinceLastAppleIntelligenceToggleInSeconds"];

  v42 = self->_has;
  if ((*&v42 & 0x2000) == 0)
  {
LABEL_63:
    if ((*&v42 & 0x10) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_85;
  }

LABEL_84:
  v57 = MEMORY[0x1E696AD98];
  [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)self timeSinceLastBootInSeconds];
  v58 = [v57 numberWithDouble:?];
  [dictionary setObject:v58 forKeyedSubscript:@"timeSinceLastBootInSeconds"];

  v42 = self->_has;
  if ((*&v42 & 0x10) == 0)
  {
LABEL_64:
    if ((*&v42 & 0x20) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_86;
  }

LABEL_85:
  v59 = MEMORY[0x1E696AD98];
  [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)self timeSinceLastMobileAssetDownloadAttemptInSeconds];
  v60 = [v59 numberWithDouble:?];
  [dictionary setObject:v60 forKeyedSubscript:@"timeSinceLastMobileAssetDownloadAttemptInSeconds"];

  v42 = self->_has;
  if ((*&v42 & 0x20) == 0)
  {
LABEL_65:
    if ((*&v42 & 0x10000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_87;
  }

LABEL_86:
  v61 = MEMORY[0x1E696AD98];
  [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)self timeSinceLastMobileAssetDownloadErrorInSeconds];
  v62 = [v61 numberWithDouble:?];
  [dictionary setObject:v62 forKeyedSubscript:@"timeSinceLastMobileAssetDownloadErrorInSeconds"];

  v42 = self->_has;
  if ((*&v42 & 0x10000) == 0)
  {
LABEL_66:
    if ((*&v42 & 0x1000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_88;
  }

LABEL_87:
  v63 = MEMORY[0x1E696AD98];
  [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)self timeSinceLastSoftwareUpdateInSeconds];
  v64 = [v63 numberWithDouble:?];
  [dictionary setObject:v64 forKeyedSubscript:@"timeSinceLastSoftwareUpdateInSeconds"];

  v42 = self->_has;
  if ((*&v42 & 0x1000) == 0)
  {
LABEL_67:
    if ((*&v42 & 0x20000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_89;
  }

LABEL_88:
  v65 = MEMORY[0x1E696AD98];
  [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)self timeSinceLastSubscriptionHashChangeInSeconds];
  v66 = [v65 numberWithDouble:?];
  [dictionary setObject:v66 forKeyedSubscript:@"timeSinceLastSubscriptionHashChangeInSeconds"];

  v42 = self->_has;
  if ((*&v42 & 0x20000) == 0)
  {
LABEL_68:
    if ((*&v42 & 0x800000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_69;
  }

LABEL_89:
  v67 = MEMORY[0x1E696AD98];
  [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)self timeSinceSampledErrorInSeconds];
  v68 = [v67 numberWithDouble:?];
  [dictionary setObject:v68 forKeyedSubscript:@"timeSinceSampledErrorInSeconds"];

  if ((*&self->_has & 0x800000) != 0)
  {
LABEL_69:
    v43 = MEMORY[0x1E696AD98];
    [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)self timeSinceSubscriptionDownloadStatusCompleteInSeconds];
    v44 = [v43 numberWithDouble:?];
    [dictionary setObject:v44 forKeyedSubscript:@"timeSinceSubscriptionDownloadStatusCompleteInSeconds"];
  }

LABEL_70:
  if (self->_useCaseID)
  {
    useCaseID = [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)self useCaseID];
    v46 = [useCaseID copy];
    [dictionary setObject:v46 forKeyedSubscript:@"useCaseID"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];
  v47 = dictionary;

  return dictionary;
}

- (unint64_t)hash
{
  has = self->_has;
  if (*&has)
  {
    v83 = 2654435761 * self->_locale;
    if ((*&has & 2) != 0)
    {
LABEL_3:
      v82 = 2654435761u * self->_status;
      if ((*&has & 4) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v81 = 0;
      if ((*&has & 8) != 0)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v83 = 0;
    if ((*&has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v82 = 0;
  if ((*&has & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v81 = 2654435761 * self->_currentSubscriptionHash;
  if ((*&has & 8) != 0)
  {
LABEL_5:
    v80 = 2654435761 * self->_downloadState;
    goto LABEL_10;
  }

LABEL_9:
  v80 = 0;
LABEL_10:
  v79 = [(NSString *)self->_lastMobileAssetDownloadAttemptErrorAsset hash];
  v6 = self->_has;
  if ((*&v6 & 0x10) != 0)
  {
    timeSinceLastMobileAssetDownloadAttemptInSeconds = self->_timeSinceLastMobileAssetDownloadAttemptInSeconds;
    if (timeSinceLastMobileAssetDownloadAttemptInSeconds < 0.0)
    {
      timeSinceLastMobileAssetDownloadAttemptInSeconds = -timeSinceLastMobileAssetDownloadAttemptInSeconds;
    }

    *v4.i64 = floor(timeSinceLastMobileAssetDownloadAttemptInSeconds + 0.5);
    v9 = (timeSinceLastMobileAssetDownloadAttemptInSeconds - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v10), v5, v4);
    v7 = 2654435761u * *v4.i64;
    if (v9 >= 0.0)
    {
      if (v9 > 0.0)
      {
        v7 += v9;
      }
    }

    else
    {
      v7 -= fabs(v9);
    }
  }

  else
  {
    v7 = 0;
  }

  if ((*&v6 & 0x20) != 0)
  {
    timeSinceLastMobileAssetDownloadErrorInSeconds = self->_timeSinceLastMobileAssetDownloadErrorInSeconds;
    if (timeSinceLastMobileAssetDownloadErrorInSeconds < 0.0)
    {
      timeSinceLastMobileAssetDownloadErrorInSeconds = -timeSinceLastMobileAssetDownloadErrorInSeconds;
    }

    *v4.i64 = floor(timeSinceLastMobileAssetDownloadErrorInSeconds + 0.5);
    v13 = (timeSinceLastMobileAssetDownloadErrorInSeconds - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    v11 = 2654435761u * *vbslq_s8(vnegq_f64(v14), v5, v4).i64;
    if (v13 >= 0.0)
    {
      if (v13 > 0.0)
      {
        v11 += v13;
      }
    }

    else
    {
      v11 -= fabs(v13);
    }
  }

  else
  {
    v11 = 0;
  }

  v78 = v7;
  v77 = v11;
  if ((*&v6 & 0x40) != 0)
  {
    v76 = 2654435761 * self->_lastMobileAssetDownloadAttemptErrorCode;
  }

  else
  {
    v76 = 0;
  }

  v75 = [(NSString *)self->_lastMobileAssetDownloadAttemptErrorDomain hash];
  if ((*&self->_has & 0x80) != 0)
  {
    v74 = 2654435761 * self->_errorCount;
  }

  else
  {
    v74 = 0;
  }

  v73 = [(NSString *)self->_failingSubsystemOperations hash];
  v72 = [(NSString *)self->_sampledSubsystemOperation hash];
  if (*(&self->_has + 1))
  {
    v71 = 2654435761 * self->_sampledErrorCode;
  }

  else
  {
    v71 = 0;
  }

  v70 = [(NSString *)self->_sampledErrorDomain hash];
  v15 = self->_has;
  if ((*&v15 & 0x200) != 0)
  {
    v69 = 2654435761 * self->_sampledErrorHash;
    if ((*&v15 & 0x400) != 0)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v69 = 0;
    if ((*&v15 & 0x400) != 0)
    {
LABEL_37:
      v68 = 2654435761 * self->_sampledErrorUnderlyingCode;
      goto LABEL_40;
    }
  }

  v68 = 0;
LABEL_40:
  v67 = [(NSString *)self->_sampledErrorUnderlyingDomain hash];
  v18 = self->_has;
  if ((*&v18 & 0x800) != 0)
  {
    timeSinceLastAppleIntelligenceToggleInSeconds = self->_timeSinceLastAppleIntelligenceToggleInSeconds;
    if (timeSinceLastAppleIntelligenceToggleInSeconds < 0.0)
    {
      timeSinceLastAppleIntelligenceToggleInSeconds = -timeSinceLastAppleIntelligenceToggleInSeconds;
    }

    *v16.i64 = floor(timeSinceLastAppleIntelligenceToggleInSeconds + 0.5);
    v21 = (timeSinceLastAppleIntelligenceToggleInSeconds - *v16.i64) * 1.84467441e19;
    *v17.i64 = *v16.i64 - trunc(*v16.i64 * 5.42101086e-20) * 1.84467441e19;
    v22.f64[0] = NAN;
    v22.f64[1] = NAN;
    v16 = vbslq_s8(vnegq_f64(v22), v17, v16);
    v19 = 2654435761u * *v16.i64;
    if (v21 >= 0.0)
    {
      if (v21 > 0.0)
      {
        v19 += v21;
      }
    }

    else
    {
      v19 -= fabs(v21);
    }
  }

  else
  {
    v19 = 0;
  }

  if ((*&v18 & 0x1000) != 0)
  {
    timeSinceLastSubscriptionHashChangeInSeconds = self->_timeSinceLastSubscriptionHashChangeInSeconds;
    if (timeSinceLastSubscriptionHashChangeInSeconds < 0.0)
    {
      timeSinceLastSubscriptionHashChangeInSeconds = -timeSinceLastSubscriptionHashChangeInSeconds;
    }

    *v16.i64 = floor(timeSinceLastSubscriptionHashChangeInSeconds + 0.5);
    v25 = (timeSinceLastSubscriptionHashChangeInSeconds - *v16.i64) * 1.84467441e19;
    *v17.i64 = *v16.i64 - trunc(*v16.i64 * 5.42101086e-20) * 1.84467441e19;
    v26.f64[0] = NAN;
    v26.f64[1] = NAN;
    v16 = vbslq_s8(vnegq_f64(v26), v17, v16);
    v23 = 2654435761u * *v16.i64;
    if (v25 >= 0.0)
    {
      if (v25 > 0.0)
      {
        v23 += v25;
      }
    }

    else
    {
      v23 -= fabs(v25);
    }
  }

  else
  {
    v23 = 0;
  }

  if ((*&v18 & 0x2000) != 0)
  {
    timeSinceLastBootInSeconds = self->_timeSinceLastBootInSeconds;
    if (timeSinceLastBootInSeconds < 0.0)
    {
      timeSinceLastBootInSeconds = -timeSinceLastBootInSeconds;
    }

    *v16.i64 = floor(timeSinceLastBootInSeconds + 0.5);
    v29 = (timeSinceLastBootInSeconds - *v16.i64) * 1.84467441e19;
    *v17.i64 = *v16.i64 - trunc(*v16.i64 * 5.42101086e-20) * 1.84467441e19;
    v30.f64[0] = NAN;
    v30.f64[1] = NAN;
    v27 = 2654435761u * *vbslq_s8(vnegq_f64(v30), v17, v16).i64;
    if (v29 >= 0.0)
    {
      if (v29 > 0.0)
      {
        v27 += v29;
      }
    }

    else
    {
      v27 -= fabs(v29);
    }
  }

  else
  {
    v27 = 0;
  }

  if ((*&v18 & 0x4000) != 0)
  {
    v63 = 2654435761u * self->_countPSUSAssets;
  }

  else
  {
    v63 = 0;
  }

  v65 = v23;
  v66 = v19;
  v64 = v27;
  if ((*&v18 & 0x8000) != 0)
  {
    v62 = 2654435761 * self->_countRequiredAssets;
  }

  else
  {
    v62 = 0;
  }

  v61 = [(NSString *)self->_useCaseID hash];
  v33 = self->_has;
  if ((*&v33 & 0x10000) != 0)
  {
    timeSinceLastSoftwareUpdateInSeconds = self->_timeSinceLastSoftwareUpdateInSeconds;
    if (timeSinceLastSoftwareUpdateInSeconds < 0.0)
    {
      timeSinceLastSoftwareUpdateInSeconds = -timeSinceLastSoftwareUpdateInSeconds;
    }

    *v31.i64 = floor(timeSinceLastSoftwareUpdateInSeconds + 0.5);
    v36 = (timeSinceLastSoftwareUpdateInSeconds - *v31.i64) * 1.84467441e19;
    *v32.i64 = *v31.i64 - trunc(*v31.i64 * 5.42101086e-20) * 1.84467441e19;
    v37.f64[0] = NAN;
    v37.f64[1] = NAN;
    v31 = vbslq_s8(vnegq_f64(v37), v32, v31);
    v34 = 2654435761u * *v31.i64;
    if (v36 >= 0.0)
    {
      if (v36 > 0.0)
      {
        v34 += v36;
      }
    }

    else
    {
      v34 -= fabs(v36);
    }
  }

  else
  {
    v34 = 0;
  }

  if ((*&v33 & 0x20000) != 0)
  {
    timeSinceSampledErrorInSeconds = self->_timeSinceSampledErrorInSeconds;
    if (timeSinceSampledErrorInSeconds < 0.0)
    {
      timeSinceSampledErrorInSeconds = -timeSinceSampledErrorInSeconds;
    }

    *v31.i64 = floor(timeSinceSampledErrorInSeconds + 0.5);
    v40 = (timeSinceSampledErrorInSeconds - *v31.i64) * 1.84467441e19;
    *v32.i64 = *v31.i64 - trunc(*v31.i64 * 5.42101086e-20) * 1.84467441e19;
    v41.f64[0] = NAN;
    v41.f64[1] = NAN;
    v38 = 2654435761u * *vbslq_s8(vnegq_f64(v41), v32, v31).i64;
    if (v40 >= 0.0)
    {
      if (v40 > 0.0)
      {
        v38 += v40;
      }
    }

    else
    {
      v38 -= fabs(v40);
    }
  }

  else
  {
    v38 = 0;
  }

  v60 = v34;
  if ((*&v33 & 0x40000) != 0)
  {
    v42 = 2654435761 * self->_buddyStatus;
  }

  else
  {
    v42 = 0;
  }

  v43 = [(NSString *)self->_buildVersionPriorToSoftwareUpdate hash];
  v44 = self->_has;
  if ((*&v44 & 0x80000) != 0)
  {
    v45 = 2654435761 * self->_invocationsCountWhileNotAvailable;
    if ((*&v44 & 0x100000) != 0)
    {
      goto LABEL_91;
    }
  }

  else
  {
    v45 = 0;
    if ((*&v44 & 0x100000) != 0)
    {
LABEL_91:
      v46 = 2654435761 * self->_lastMobileAssetDownloadAttemptErrorUnderlyingCode;
      goto LABEL_94;
    }
  }

  v46 = 0;
LABEL_94:
  v47 = [(NSString *)self->_lastMobileAssetDownloadAttemptErrorUnderlyingDomain hash];
  if ((*(&self->_has + 2) & 0x20) != 0)
  {
    v48 = 2654435761 * self->_mode;
  }

  else
  {
    v48 = 0;
  }

  v49 = [(NSString *)self->_sampledErrorAsset hash];
  v52 = self->_has;
  if ((*&v52 & 0x400000) != 0)
  {
    v53 = 2654435761 * self->_subscriptionDownloadStatus;
    if ((*&v52 & 0x800000) != 0)
    {
      goto LABEL_99;
    }

LABEL_104:
    v57 = 0;
    goto LABEL_105;
  }

  v53 = 0;
  if ((*&v52 & 0x800000) == 0)
  {
    goto LABEL_104;
  }

LABEL_99:
  timeSinceSubscriptionDownloadStatusCompleteInSeconds = self->_timeSinceSubscriptionDownloadStatusCompleteInSeconds;
  if (timeSinceSubscriptionDownloadStatusCompleteInSeconds < 0.0)
  {
    timeSinceSubscriptionDownloadStatusCompleteInSeconds = -timeSinceSubscriptionDownloadStatusCompleteInSeconds;
  }

  *v50.i64 = floor(timeSinceSubscriptionDownloadStatusCompleteInSeconds + 0.5);
  v55 = (timeSinceSubscriptionDownloadStatusCompleteInSeconds - *v50.i64) * 1.84467441e19;
  *v51.i64 = *v50.i64 - trunc(*v50.i64 * 5.42101086e-20) * 1.84467441e19;
  v56.f64[0] = NAN;
  v56.f64[1] = NAN;
  v57 = 2654435761u * *vbslq_s8(vnegq_f64(v56), v51, v50).i64;
  if (v55 >= 0.0)
  {
    if (v55 > 0.0)
    {
      v57 += v55;
    }
  }

  else
  {
    v57 -= fabs(v55);
  }

LABEL_105:
  if ((*&v52 & 0x1000000) != 0)
  {
    v58 = 2654435761 * self->_currentMode;
  }

  else
  {
    v58 = 0;
  }

  return v82 ^ v83 ^ v81 ^ v80 ^ v78 ^ v77 ^ v76 ^ v79 ^ v75 ^ v74 ^ v73 ^ v72 ^ v71 ^ v70 ^ v69 ^ v68 ^ v67 ^ v66 ^ v65 ^ v64 ^ v63 ^ v62 ^ v61 ^ v60 ^ v38 ^ v42 ^ v43 ^ v45 ^ v46 ^ v47 ^ v48 ^ v49 ^ v53 ^ v57 ^ v58;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_131;
  }

  has = self->_has;
  v6 = equalCopy[65];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_131;
  }

  if (*&has)
  {
    locale = self->_locale;
    if (locale != [equalCopy locale])
    {
      goto LABEL_131;
    }

    has = self->_has;
    v6 = equalCopy[65];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_131;
  }

  if (v8)
  {
    status = self->_status;
    if (status != [equalCopy status])
    {
      goto LABEL_131;
    }

    has = self->_has;
    v6 = equalCopy[65];
  }

  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_131;
  }

  if (v10)
  {
    currentSubscriptionHash = self->_currentSubscriptionHash;
    if (currentSubscriptionHash != [equalCopy currentSubscriptionHash])
    {
      goto LABEL_131;
    }

    has = self->_has;
    v6 = equalCopy[65];
  }

  v12 = (*&has >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_131;
  }

  if (v12)
  {
    downloadState = self->_downloadState;
    if (downloadState != [equalCopy downloadState])
    {
      goto LABEL_131;
    }
  }

  lastMobileAssetDownloadAttemptErrorAsset = [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)self lastMobileAssetDownloadAttemptErrorAsset];
  lastMobileAssetDownloadAttemptErrorAsset2 = [equalCopy lastMobileAssetDownloadAttemptErrorAsset];
  if ((lastMobileAssetDownloadAttemptErrorAsset != 0) == (lastMobileAssetDownloadAttemptErrorAsset2 == 0))
  {
    goto LABEL_130;
  }

  lastMobileAssetDownloadAttemptErrorAsset3 = [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)self lastMobileAssetDownloadAttemptErrorAsset];
  if (lastMobileAssetDownloadAttemptErrorAsset3)
  {
    v17 = lastMobileAssetDownloadAttemptErrorAsset3;
    lastMobileAssetDownloadAttemptErrorAsset4 = [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)self lastMobileAssetDownloadAttemptErrorAsset];
    lastMobileAssetDownloadAttemptErrorAsset5 = [equalCopy lastMobileAssetDownloadAttemptErrorAsset];
    v20 = [lastMobileAssetDownloadAttemptErrorAsset4 isEqual:lastMobileAssetDownloadAttemptErrorAsset5];

    if (!v20)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  v21 = self->_has;
  v22 = (*&v21 >> 4) & 1;
  v23 = equalCopy[65];
  if (v22 != ((v23 >> 4) & 1))
  {
    goto LABEL_131;
  }

  if (v22)
  {
    timeSinceLastMobileAssetDownloadAttemptInSeconds = self->_timeSinceLastMobileAssetDownloadAttemptInSeconds;
    [equalCopy timeSinceLastMobileAssetDownloadAttemptInSeconds];
    if (timeSinceLastMobileAssetDownloadAttemptInSeconds != v25)
    {
      goto LABEL_131;
    }

    v21 = self->_has;
    v23 = equalCopy[65];
  }

  v26 = (*&v21 >> 5) & 1;
  if (v26 != ((v23 >> 5) & 1))
  {
    goto LABEL_131;
  }

  if (v26)
  {
    timeSinceLastMobileAssetDownloadErrorInSeconds = self->_timeSinceLastMobileAssetDownloadErrorInSeconds;
    [equalCopy timeSinceLastMobileAssetDownloadErrorInSeconds];
    if (timeSinceLastMobileAssetDownloadErrorInSeconds != v28)
    {
      goto LABEL_131;
    }

    v21 = self->_has;
    v23 = equalCopy[65];
  }

  v29 = (*&v21 >> 6) & 1;
  if (v29 != ((v23 >> 6) & 1))
  {
    goto LABEL_131;
  }

  if (v29)
  {
    lastMobileAssetDownloadAttemptErrorCode = self->_lastMobileAssetDownloadAttemptErrorCode;
    if (lastMobileAssetDownloadAttemptErrorCode != [equalCopy lastMobileAssetDownloadAttemptErrorCode])
    {
      goto LABEL_131;
    }
  }

  lastMobileAssetDownloadAttemptErrorAsset = [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)self lastMobileAssetDownloadAttemptErrorDomain];
  lastMobileAssetDownloadAttemptErrorAsset2 = [equalCopy lastMobileAssetDownloadAttemptErrorDomain];
  if ((lastMobileAssetDownloadAttemptErrorAsset != 0) == (lastMobileAssetDownloadAttemptErrorAsset2 == 0))
  {
    goto LABEL_130;
  }

  lastMobileAssetDownloadAttemptErrorDomain = [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)self lastMobileAssetDownloadAttemptErrorDomain];
  if (lastMobileAssetDownloadAttemptErrorDomain)
  {
    v32 = lastMobileAssetDownloadAttemptErrorDomain;
    lastMobileAssetDownloadAttemptErrorDomain2 = [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)self lastMobileAssetDownloadAttemptErrorDomain];
    lastMobileAssetDownloadAttemptErrorDomain3 = [equalCopy lastMobileAssetDownloadAttemptErrorDomain];
    v35 = [lastMobileAssetDownloadAttemptErrorDomain2 isEqual:lastMobileAssetDownloadAttemptErrorDomain3];

    if (!v35)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  v36 = (*&self->_has >> 7) & 1;
  if (v36 != ((equalCopy[65] >> 7) & 1))
  {
    goto LABEL_131;
  }

  if (v36)
  {
    errorCount = self->_errorCount;
    if (errorCount != [equalCopy errorCount])
    {
      goto LABEL_131;
    }
  }

  lastMobileAssetDownloadAttemptErrorAsset = [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)self failingSubsystemOperations];
  lastMobileAssetDownloadAttemptErrorAsset2 = [equalCopy failingSubsystemOperations];
  if ((lastMobileAssetDownloadAttemptErrorAsset != 0) == (lastMobileAssetDownloadAttemptErrorAsset2 == 0))
  {
    goto LABEL_130;
  }

  failingSubsystemOperations = [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)self failingSubsystemOperations];
  if (failingSubsystemOperations)
  {
    v39 = failingSubsystemOperations;
    failingSubsystemOperations2 = [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)self failingSubsystemOperations];
    failingSubsystemOperations3 = [equalCopy failingSubsystemOperations];
    v42 = [failingSubsystemOperations2 isEqual:failingSubsystemOperations3];

    if (!v42)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  lastMobileAssetDownloadAttemptErrorAsset = [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)self sampledSubsystemOperation];
  lastMobileAssetDownloadAttemptErrorAsset2 = [equalCopy sampledSubsystemOperation];
  if ((lastMobileAssetDownloadAttemptErrorAsset != 0) == (lastMobileAssetDownloadAttemptErrorAsset2 == 0))
  {
    goto LABEL_130;
  }

  sampledSubsystemOperation = [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)self sampledSubsystemOperation];
  if (sampledSubsystemOperation)
  {
    v44 = sampledSubsystemOperation;
    sampledSubsystemOperation2 = [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)self sampledSubsystemOperation];
    sampledSubsystemOperation3 = [equalCopy sampledSubsystemOperation];
    v47 = [sampledSubsystemOperation2 isEqual:sampledSubsystemOperation3];

    if (!v47)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  v48 = (*&self->_has >> 8) & 1;
  if (v48 != ((equalCopy[65] >> 8) & 1))
  {
    goto LABEL_131;
  }

  if (v48)
  {
    sampledErrorCode = self->_sampledErrorCode;
    if (sampledErrorCode != [equalCopy sampledErrorCode])
    {
      goto LABEL_131;
    }
  }

  lastMobileAssetDownloadAttemptErrorAsset = [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)self sampledErrorDomain];
  lastMobileAssetDownloadAttemptErrorAsset2 = [equalCopy sampledErrorDomain];
  if ((lastMobileAssetDownloadAttemptErrorAsset != 0) == (lastMobileAssetDownloadAttemptErrorAsset2 == 0))
  {
    goto LABEL_130;
  }

  sampledErrorDomain = [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)self sampledErrorDomain];
  if (sampledErrorDomain)
  {
    v51 = sampledErrorDomain;
    sampledErrorDomain2 = [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)self sampledErrorDomain];
    sampledErrorDomain3 = [equalCopy sampledErrorDomain];
    v54 = [sampledErrorDomain2 isEqual:sampledErrorDomain3];

    if (!v54)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  v55 = self->_has;
  v56 = (*&v55 >> 9) & 1;
  v57 = equalCopy[65];
  if (v56 != ((v57 >> 9) & 1))
  {
    goto LABEL_131;
  }

  if (v56)
  {
    sampledErrorHash = self->_sampledErrorHash;
    if (sampledErrorHash != [equalCopy sampledErrorHash])
    {
      goto LABEL_131;
    }

    v55 = self->_has;
    v57 = equalCopy[65];
  }

  v59 = (*&v55 >> 10) & 1;
  if (v59 != ((v57 >> 10) & 1))
  {
    goto LABEL_131;
  }

  if (v59)
  {
    sampledErrorUnderlyingCode = self->_sampledErrorUnderlyingCode;
    if (sampledErrorUnderlyingCode != [equalCopy sampledErrorUnderlyingCode])
    {
      goto LABEL_131;
    }
  }

  lastMobileAssetDownloadAttemptErrorAsset = [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)self sampledErrorUnderlyingDomain];
  lastMobileAssetDownloadAttemptErrorAsset2 = [equalCopy sampledErrorUnderlyingDomain];
  if ((lastMobileAssetDownloadAttemptErrorAsset != 0) == (lastMobileAssetDownloadAttemptErrorAsset2 == 0))
  {
    goto LABEL_130;
  }

  sampledErrorUnderlyingDomain = [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)self sampledErrorUnderlyingDomain];
  if (sampledErrorUnderlyingDomain)
  {
    v62 = sampledErrorUnderlyingDomain;
    sampledErrorUnderlyingDomain2 = [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)self sampledErrorUnderlyingDomain];
    sampledErrorUnderlyingDomain3 = [equalCopy sampledErrorUnderlyingDomain];
    v65 = [sampledErrorUnderlyingDomain2 isEqual:sampledErrorUnderlyingDomain3];

    if (!v65)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  v66 = self->_has;
  v67 = (*&v66 >> 11) & 1;
  v68 = equalCopy[65];
  if (v67 != ((v68 >> 11) & 1))
  {
    goto LABEL_131;
  }

  if (v67)
  {
    timeSinceLastAppleIntelligenceToggleInSeconds = self->_timeSinceLastAppleIntelligenceToggleInSeconds;
    [equalCopy timeSinceLastAppleIntelligenceToggleInSeconds];
    if (timeSinceLastAppleIntelligenceToggleInSeconds != v70)
    {
      goto LABEL_131;
    }

    v66 = self->_has;
    v68 = equalCopy[65];
  }

  v71 = (*&v66 >> 12) & 1;
  if (v71 != ((v68 >> 12) & 1))
  {
    goto LABEL_131;
  }

  if (v71)
  {
    timeSinceLastSubscriptionHashChangeInSeconds = self->_timeSinceLastSubscriptionHashChangeInSeconds;
    [equalCopy timeSinceLastSubscriptionHashChangeInSeconds];
    if (timeSinceLastSubscriptionHashChangeInSeconds != v73)
    {
      goto LABEL_131;
    }

    v66 = self->_has;
    v68 = equalCopy[65];
  }

  v74 = (*&v66 >> 13) & 1;
  if (v74 != ((v68 >> 13) & 1))
  {
    goto LABEL_131;
  }

  if (v74)
  {
    timeSinceLastBootInSeconds = self->_timeSinceLastBootInSeconds;
    [equalCopy timeSinceLastBootInSeconds];
    if (timeSinceLastBootInSeconds != v76)
    {
      goto LABEL_131;
    }

    v66 = self->_has;
    v68 = equalCopy[65];
  }

  v77 = (*&v66 >> 14) & 1;
  if (v77 != ((v68 >> 14) & 1))
  {
    goto LABEL_131;
  }

  if (v77)
  {
    countPSUSAssets = self->_countPSUSAssets;
    if (countPSUSAssets != [equalCopy countPSUSAssets])
    {
      goto LABEL_131;
    }

    v66 = self->_has;
    v68 = equalCopy[65];
  }

  v79 = (*&v66 >> 15) & 1;
  if (v79 != ((v68 >> 15) & 1))
  {
    goto LABEL_131;
  }

  if (v79)
  {
    countRequiredAssets = self->_countRequiredAssets;
    if (countRequiredAssets != [equalCopy countRequiredAssets])
    {
      goto LABEL_131;
    }
  }

  lastMobileAssetDownloadAttemptErrorAsset = [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)self useCaseID];
  lastMobileAssetDownloadAttemptErrorAsset2 = [equalCopy useCaseID];
  if ((lastMobileAssetDownloadAttemptErrorAsset != 0) == (lastMobileAssetDownloadAttemptErrorAsset2 == 0))
  {
    goto LABEL_130;
  }

  useCaseID = [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)self useCaseID];
  if (useCaseID)
  {
    v82 = useCaseID;
    useCaseID2 = [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)self useCaseID];
    useCaseID3 = [equalCopy useCaseID];
    v85 = [useCaseID2 isEqual:useCaseID3];

    if (!v85)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  v86 = self->_has;
  v87 = HIWORD(*&v86) & 1;
  v88 = equalCopy[65];
  if (v87 != (HIWORD(v88) & 1))
  {
    goto LABEL_131;
  }

  if (v87)
  {
    timeSinceLastSoftwareUpdateInSeconds = self->_timeSinceLastSoftwareUpdateInSeconds;
    [equalCopy timeSinceLastSoftwareUpdateInSeconds];
    if (timeSinceLastSoftwareUpdateInSeconds != v90)
    {
      goto LABEL_131;
    }

    v86 = self->_has;
    v88 = equalCopy[65];
  }

  v91 = (*&v86 >> 17) & 1;
  if (v91 != ((v88 >> 17) & 1))
  {
    goto LABEL_131;
  }

  if (v91)
  {
    timeSinceSampledErrorInSeconds = self->_timeSinceSampledErrorInSeconds;
    [equalCopy timeSinceSampledErrorInSeconds];
    if (timeSinceSampledErrorInSeconds != v93)
    {
      goto LABEL_131;
    }

    v86 = self->_has;
    v88 = equalCopy[65];
  }

  v94 = (*&v86 >> 18) & 1;
  if (v94 != ((v88 >> 18) & 1))
  {
    goto LABEL_131;
  }

  if (v94)
  {
    buddyStatus = self->_buddyStatus;
    if (buddyStatus != [equalCopy buddyStatus])
    {
      goto LABEL_131;
    }
  }

  lastMobileAssetDownloadAttemptErrorAsset = [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)self buildVersionPriorToSoftwareUpdate];
  lastMobileAssetDownloadAttemptErrorAsset2 = [equalCopy buildVersionPriorToSoftwareUpdate];
  if ((lastMobileAssetDownloadAttemptErrorAsset != 0) == (lastMobileAssetDownloadAttemptErrorAsset2 == 0))
  {
    goto LABEL_130;
  }

  buildVersionPriorToSoftwareUpdate = [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)self buildVersionPriorToSoftwareUpdate];
  if (buildVersionPriorToSoftwareUpdate)
  {
    v97 = buildVersionPriorToSoftwareUpdate;
    buildVersionPriorToSoftwareUpdate2 = [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)self buildVersionPriorToSoftwareUpdate];
    buildVersionPriorToSoftwareUpdate3 = [equalCopy buildVersionPriorToSoftwareUpdate];
    v100 = [buildVersionPriorToSoftwareUpdate2 isEqual:buildVersionPriorToSoftwareUpdate3];

    if (!v100)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  v101 = self->_has;
  v102 = (*&v101 >> 19) & 1;
  v103 = equalCopy[65];
  if (v102 != ((v103 >> 19) & 1))
  {
    goto LABEL_131;
  }

  if (v102)
  {
    invocationsCountWhileNotAvailable = self->_invocationsCountWhileNotAvailable;
    if (invocationsCountWhileNotAvailable != [equalCopy invocationsCountWhileNotAvailable])
    {
      goto LABEL_131;
    }

    v101 = self->_has;
    v103 = equalCopy[65];
  }

  v105 = (*&v101 >> 20) & 1;
  if (v105 != ((v103 >> 20) & 1))
  {
    goto LABEL_131;
  }

  if (v105)
  {
    lastMobileAssetDownloadAttemptErrorUnderlyingCode = self->_lastMobileAssetDownloadAttemptErrorUnderlyingCode;
    if (lastMobileAssetDownloadAttemptErrorUnderlyingCode != [equalCopy lastMobileAssetDownloadAttemptErrorUnderlyingCode])
    {
      goto LABEL_131;
    }
  }

  lastMobileAssetDownloadAttemptErrorAsset = [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)self lastMobileAssetDownloadAttemptErrorUnderlyingDomain];
  lastMobileAssetDownloadAttemptErrorAsset2 = [equalCopy lastMobileAssetDownloadAttemptErrorUnderlyingDomain];
  if ((lastMobileAssetDownloadAttemptErrorAsset != 0) == (lastMobileAssetDownloadAttemptErrorAsset2 == 0))
  {
    goto LABEL_130;
  }

  lastMobileAssetDownloadAttemptErrorUnderlyingDomain = [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)self lastMobileAssetDownloadAttemptErrorUnderlyingDomain];
  if (lastMobileAssetDownloadAttemptErrorUnderlyingDomain)
  {
    v108 = lastMobileAssetDownloadAttemptErrorUnderlyingDomain;
    lastMobileAssetDownloadAttemptErrorUnderlyingDomain2 = [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)self lastMobileAssetDownloadAttemptErrorUnderlyingDomain];
    lastMobileAssetDownloadAttemptErrorUnderlyingDomain3 = [equalCopy lastMobileAssetDownloadAttemptErrorUnderlyingDomain];
    v111 = [lastMobileAssetDownloadAttemptErrorUnderlyingDomain2 isEqual:lastMobileAssetDownloadAttemptErrorUnderlyingDomain3];

    if (!v111)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  v112 = (*&self->_has >> 21) & 1;
  if (v112 != ((equalCopy[65] >> 21) & 1))
  {
    goto LABEL_131;
  }

  if (v112)
  {
    mode = self->_mode;
    if (mode != [equalCopy mode])
    {
      goto LABEL_131;
    }
  }

  lastMobileAssetDownloadAttemptErrorAsset = [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)self sampledErrorAsset];
  lastMobileAssetDownloadAttemptErrorAsset2 = [equalCopy sampledErrorAsset];
  if ((lastMobileAssetDownloadAttemptErrorAsset != 0) == (lastMobileAssetDownloadAttemptErrorAsset2 == 0))
  {
LABEL_130:

    goto LABEL_131;
  }

  sampledErrorAsset = [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)self sampledErrorAsset];
  if (sampledErrorAsset)
  {
    v115 = sampledErrorAsset;
    sampledErrorAsset2 = [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)self sampledErrorAsset];
    sampledErrorAsset3 = [equalCopy sampledErrorAsset];
    v118 = [sampledErrorAsset2 isEqual:sampledErrorAsset3];

    if (!v118)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  v121 = self->_has;
  v122 = (*&v121 >> 22) & 1;
  v123 = equalCopy[65];
  if (v122 == ((v123 >> 22) & 1))
  {
    if (v122)
    {
      subscriptionDownloadStatus = self->_subscriptionDownloadStatus;
      if (subscriptionDownloadStatus != [equalCopy subscriptionDownloadStatus])
      {
        goto LABEL_131;
      }

      v121 = self->_has;
      v123 = equalCopy[65];
    }

    v125 = (*&v121 >> 23) & 1;
    if (v125 == ((v123 >> 23) & 1))
    {
      if (v125)
      {
        timeSinceSubscriptionDownloadStatusCompleteInSeconds = self->_timeSinceSubscriptionDownloadStatusCompleteInSeconds;
        [equalCopy timeSinceSubscriptionDownloadStatusCompleteInSeconds];
        if (timeSinceSubscriptionDownloadStatusCompleteInSeconds != v127)
        {
          goto LABEL_131;
        }

        v121 = self->_has;
        v123 = equalCopy[65];
      }

      v128 = HIBYTE(*&v121) & 1;
      if (v128 == (HIBYTE(v123) & 1))
      {
        if (!v128 || (currentMode = self->_currentMode, currentMode == [equalCopy currentMode]))
        {
          v119 = 1;
          goto LABEL_132;
        }
      }
    }
  }

LABEL_131:
  v119 = 0;
LABEL_132:

  return v119;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (*&has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((*&has & 2) == 0)
    {
LABEL_3:
      if ((*&has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_63;
    }
  }

  else if ((*&has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_4:
    if ((*&has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_63:
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    PBDataWriterWriteInt32Field();
  }

LABEL_6:
  lastMobileAssetDownloadAttemptErrorAsset = [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)self lastMobileAssetDownloadAttemptErrorAsset];

  if (lastMobileAssetDownloadAttemptErrorAsset)
  {
    PBDataWriterWriteStringField();
  }

  v6 = self->_has;
  if ((*&v6 & 0x10) != 0)
  {
    PBDataWriterWriteDoubleField();
    v6 = self->_has;
    if ((*&v6 & 0x20) == 0)
    {
LABEL_10:
      if ((*&v6 & 0x40) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if ((*&v6 & 0x20) == 0)
  {
    goto LABEL_10;
  }

  PBDataWriterWriteDoubleField();
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_11:
    PBDataWriterWriteUint32Field();
  }

LABEL_12:
  lastMobileAssetDownloadAttemptErrorDomain = [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)self lastMobileAssetDownloadAttemptErrorDomain];

  if (lastMobileAssetDownloadAttemptErrorDomain)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 0x80) != 0)
  {
    PBDataWriterWriteUint32Field();
  }

  failingSubsystemOperations = [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)self failingSubsystemOperations];

  if (failingSubsystemOperations)
  {
    PBDataWriterWriteStringField();
  }

  sampledSubsystemOperation = [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)self sampledSubsystemOperation];

  if (sampledSubsystemOperation)
  {
    PBDataWriterWriteStringField();
  }

  if (*(&self->_has + 1))
  {
    PBDataWriterWriteUint32Field();
  }

  sampledErrorDomain = [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)self sampledErrorDomain];

  if (sampledErrorDomain)
  {
    PBDataWriterWriteStringField();
  }

  v11 = self->_has;
  if ((*&v11 & 0x200) != 0)
  {
    PBDataWriterWriteUint32Field();
    v11 = self->_has;
  }

  if ((*&v11 & 0x400) != 0)
  {
    PBDataWriterWriteUint32Field();
  }

  sampledErrorUnderlyingDomain = [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)self sampledErrorUnderlyingDomain];

  if (sampledErrorUnderlyingDomain)
  {
    PBDataWriterWriteStringField();
  }

  v13 = self->_has;
  if ((*&v13 & 0x800) != 0)
  {
    PBDataWriterWriteDoubleField();
    v13 = self->_has;
    if ((*&v13 & 0x1000) == 0)
    {
LABEL_32:
      if ((*&v13 & 0x2000) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_70;
    }
  }

  else if ((*&v13 & 0x1000) == 0)
  {
    goto LABEL_32;
  }

  PBDataWriterWriteDoubleField();
  v13 = self->_has;
  if ((*&v13 & 0x2000) == 0)
  {
LABEL_33:
    if ((*&v13 & 0x4000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_71;
  }

LABEL_70:
  PBDataWriterWriteDoubleField();
  v13 = self->_has;
  if ((*&v13 & 0x4000) == 0)
  {
LABEL_34:
    if ((*&v13 & 0x8000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_71:
  PBDataWriterWriteUint64Field();
  if ((*&self->_has & 0x8000) != 0)
  {
LABEL_35:
    PBDataWriterWriteUint32Field();
  }

LABEL_36:
  useCaseID = [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)self useCaseID];

  if (useCaseID)
  {
    PBDataWriterWriteStringField();
  }

  v15 = self->_has;
  if ((*&v15 & 0x10000) != 0)
  {
    PBDataWriterWriteDoubleField();
    v15 = self->_has;
    if ((*&v15 & 0x20000) == 0)
    {
LABEL_40:
      if ((*&v15 & 0x40000) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_41;
    }
  }

  else if ((*&v15 & 0x20000) == 0)
  {
    goto LABEL_40;
  }

  PBDataWriterWriteDoubleField();
  if ((*&self->_has & 0x40000) != 0)
  {
LABEL_41:
    PBDataWriterWriteInt32Field();
  }

LABEL_42:
  buildVersionPriorToSoftwareUpdate = [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)self buildVersionPriorToSoftwareUpdate];

  if (buildVersionPriorToSoftwareUpdate)
  {
    PBDataWriterWriteStringField();
  }

  v17 = self->_has;
  if ((*&v17 & 0x80000) != 0)
  {
    PBDataWriterWriteUint32Field();
    v17 = self->_has;
  }

  if ((*&v17 & 0x100000) != 0)
  {
    PBDataWriterWriteUint32Field();
  }

  lastMobileAssetDownloadAttemptErrorUnderlyingDomain = [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)self lastMobileAssetDownloadAttemptErrorUnderlyingDomain];

  if (lastMobileAssetDownloadAttemptErrorUnderlyingDomain)
  {
    PBDataWriterWriteStringField();
  }

  if ((*(&self->_has + 2) & 0x20) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  sampledErrorAsset = [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)self sampledErrorAsset];

  if (sampledErrorAsset)
  {
    PBDataWriterWriteStringField();
  }

  v20 = self->_has;
  if ((*&v20 & 0x400000) != 0)
  {
    PBDataWriterWriteInt32Field();
    v20 = self->_has;
    if ((*&v20 & 0x800000) == 0)
    {
LABEL_56:
      if ((*&v20 & 0x1000000) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_57;
    }
  }

  else if ((*&v20 & 0x800000) == 0)
  {
    goto LABEL_56;
  }

  PBDataWriterWriteDoubleField();
  if ((*&self->_has & 0x1000000) != 0)
  {
LABEL_57:
    PBDataWriterWriteInt32Field();
  }

LABEL_58:
}

- (void)setHasCurrentMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFEFFFFFF | v3);
}

- (void)setHasTimeSinceSubscriptionDownloadStatusCompleteInSeconds:(BOOL)seconds
{
  if (seconds)
  {
    v3 = 0x800000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFF7FFFFF | v3);
}

- (void)setHasSubscriptionDownloadStatus:(BOOL)status
{
  if (status)
  {
    v3 = 0x400000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFBFFFFF | v3);
}

- (void)setHasMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFDFFFFF | v3);
}

- (void)setHasLastMobileAssetDownloadAttemptErrorUnderlyingCode:(BOOL)code
{
  if (code)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFF | v3);
}

- (void)setHasInvocationsCountWhileNotAvailable:(BOOL)available
{
  if (available)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFF | v3);
}

- (void)setHasBuddyStatus:(BOOL)status
{
  if (status)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (void)setHasTimeSinceSampledErrorInSeconds:(BOOL)seconds
{
  if (seconds)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (void)setHasTimeSinceLastSoftwareUpdateInSeconds:(BOOL)seconds
{
  if (seconds)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasCountRequiredAssets:(BOOL)assets
{
  if (assets)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasCountPSUSAssets:(BOOL)assets
{
  if (assets)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)setHasTimeSinceLastBootInSeconds:(BOOL)seconds
{
  if (seconds)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasTimeSinceLastSubscriptionHashChangeInSeconds:(BOOL)seconds
{
  if (seconds)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasTimeSinceLastAppleIntelligenceToggleInSeconds:(BOOL)seconds
{
  if (seconds)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasSampledErrorUnderlyingCode:(BOOL)code
{
  if (code)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasSampledErrorHash:(BOOL)hash
{
  if (hash)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasSampledErrorCode:(BOOL)code
{
  if (code)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasErrorCount:(BOOL)count
{
  if (count)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasLastMobileAssetDownloadAttemptErrorCode:(BOOL)code
{
  if (code)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)setHasTimeSinceLastMobileAssetDownloadErrorInSeconds:(BOOL)seconds
{
  if (seconds)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasTimeSinceLastMobileAssetDownloadAttemptInSeconds:(BOOL)seconds
{
  if (seconds)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasDownloadState:(BOOL)state
{
  if (state)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasCurrentSubscriptionHash:(BOOL)hash
{
  if (hash)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)setHasStatus:(BOOL)status
{
  if (status)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end