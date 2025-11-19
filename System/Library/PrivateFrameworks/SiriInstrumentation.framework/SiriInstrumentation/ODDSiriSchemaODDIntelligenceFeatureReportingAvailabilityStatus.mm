@interface ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus)initWithDictionary:(id)a3;
- (ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasBuddyStatus:(BOOL)a3;
- (void)setHasCurrentMode:(BOOL)a3;
- (void)setHasDownloadState:(BOOL)a3;
- (void)setHasHasModelCatalogSubscriptionHashChangedFromLastStatus:(BOOL)a3;
- (void)setHasInvocationsCountWhileNotAvailable:(BOOL)a3;
- (void)setHasIsAppleIntelligenceAllowedThroughWaitlist:(BOOL)a3;
- (void)setHasIsAppleIntelligenceEligible:(BOOL)a3;
- (void)setHasIsAppleIntelligenceToggled:(BOOL)a3;
- (void)setHasLastMobileAssetDownloadAttemptErrorUnderlyingCode:(BOOL)a3;
- (void)setHasMode:(BOOL)a3;
- (void)setHasPreviousStatus:(BOOL)a3;
- (void)setHasSubscriptionDownloadStatus:(BOOL)a3;
- (void)setHasTimeSinceLastAppleIntelligenceToggleInSeconds:(BOOL)a3;
- (void)setHasTimeSinceLastAvailabilityChangeInSeconds:(BOOL)a3;
- (void)setHasTimeSinceLastBootInSeconds:(BOOL)a3;
- (void)setHasTimeSinceLastEligibleChangeInSeconds:(BOOL)a3;
- (void)setHasTimeSinceLastMobileAssetDownloadAttemptInSeconds:(BOOL)a3;
- (void)setHasTimeSinceLastMobileAssetDownloadErrorInSeconds:(BOOL)a3;
- (void)setHasTimeSinceLastModelCatalogSubscriptionHashChangeInSeconds:(BOOL)a3;
- (void)setHasTimeSinceLastSoftwareUpdateInSeconds:(BOOL)a3;
- (void)setHasTimeSinceLastStatusChangeInSeconds:(BOOL)a3;
- (void)setHasTimeSinceLastWaitlistChangeInSeconds:(BOOL)a3;
- (void)setHasTimeSinceSampledErrorInSeconds:(BOOL)a3;
- (void)setHasTimeSinceSubscriptionDownloadStatusCompleteInSeconds:(BOOL)a3;
- (void)setHasUseCase:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus

- (ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus)initWithDictionary:(id)a3
{
  v4 = a3;
  v72.receiver = self;
  v72.super_class = ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus;
  v5 = [(ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus *)&v72 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"assistantDimensions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ODDSiriSchemaODDAssistantDimensions alloc] initWithDictionary:v6];
      [(ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus *)v5 setAssistantDimensions:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"appleIntelligenceLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaISOLocale alloc] initWithDictionary:v8];
      [(ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus *)v5 setAppleIntelligenceLocale:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"currentStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus setCurrentStatus:](v5, "setCurrentStatus:", [v10 unsignedLongLongValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"previousStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus setPreviousStatus:](v5, "setPreviousStatus:", [v11 unsignedLongLongValue]);
    }

    v12 = [v4 objectForKeyedSubscript:@"timeSinceLastStatusChangeInSeconds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v12 doubleValue];
      [(ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus *)v5 setTimeSinceLastStatusChangeInSeconds:?];
    }

    v13 = [v4 objectForKeyedSubscript:@"timeSinceLastAvailabilityChangeInSeconds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v13 doubleValue];
      [(ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus *)v5 setTimeSinceLastAvailabilityChangeInSeconds:?];
    }

    v61 = v8;
    v14 = [v4 objectForKeyedSubscript:@"hasModelCatalogSubscriptionHashChangedFromLastStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus setHasModelCatalogSubscriptionHashChangedFromLastStatus:](v5, "setHasModelCatalogSubscriptionHashChangedFromLastStatus:", [v14 BOOLValue]);
    }

    v56 = v14;
    v15 = [v4 objectForKeyedSubscript:@"isAppleIntelligenceEligible"];
    objc_opt_class();
    v71 = v15;
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus setIsAppleIntelligenceEligible:](v5, "setIsAppleIntelligenceEligible:", [v15 BOOLValue]);
    }

    v16 = v6;
    v17 = [v4 objectForKeyedSubscript:@"isAppleIntelligenceAllowedThroughWaitlist"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus setIsAppleIntelligenceAllowedThroughWaitlist:](v5, "setIsAppleIntelligenceAllowedThroughWaitlist:", [v17 BOOLValue]);
    }

    v55 = v17;
    v18 = [v4 objectForKeyedSubscript:@"isAppleIntelligenceToggled"];
    objc_opt_class();
    v70 = v18;
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus setIsAppleIntelligenceToggled:](v5, "setIsAppleIntelligenceToggled:", [v18 BOOLValue]);
    }

    v19 = [v4 objectForKeyedSubscript:@"timeSinceLastEligibleChangeInSeconds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v19 doubleValue];
      [(ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus *)v5 setTimeSinceLastEligibleChangeInSeconds:?];
    }

    v54 = v19;
    v20 = [v4 objectForKeyedSubscript:@"timeSinceLastWaitlistChangeInSeconds"];
    objc_opt_class();
    v69 = v20;
    v62 = v16;
    if (objc_opt_isKindOfClass())
    {
      [v20 doubleValue];
      [(ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus *)v5 setTimeSinceLastWaitlistChangeInSeconds:?];
    }

    v21 = [v4 objectForKeyedSubscript:@"timeSinceLastAppleIntelligenceToggleInSeconds"];
    objc_opt_class();
    v68 = v21;
    v57 = v13;
    if (objc_opt_isKindOfClass())
    {
      [v21 doubleValue];
      [(ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus *)v5 setTimeSinceLastAppleIntelligenceToggleInSeconds:?];
    }

    v22 = [v4 objectForKeyedSubscript:@"timeSinceLastBootInSeconds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v22 doubleValue];
      [(ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus *)v5 setTimeSinceLastBootInSeconds:?];
    }

    v23 = [v4 objectForKeyedSubscript:@"timeSinceLastMobileAssetDownloadAttemptInSeconds"];
    objc_opt_class();
    v67 = v23;
    if (objc_opt_isKindOfClass())
    {
      [v23 doubleValue];
      [(ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus *)v5 setTimeSinceLastMobileAssetDownloadAttemptInSeconds:?];
    }

    v24 = [v4 objectForKeyedSubscript:@"timeSinceLastMobileAssetDownloadErrorInSeconds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v24 doubleValue];
      [(ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus *)v5 setTimeSinceLastMobileAssetDownloadErrorInSeconds:?];
    }

    v25 = v10;
    v26 = [v4 objectForKeyedSubscript:@"downloadState"];
    objc_opt_class();
    v66 = v26;
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus setDownloadState:](v5, "setDownloadState:", [v26 intValue]);
    }

    v27 = v11;
    v28 = [v4 objectForKeyedSubscript:@"timeSinceLastModelCatalogSubscriptionHashChangeInSeconds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v28 doubleValue];
      [(ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus *)v5 setTimeSinceLastModelCatalogSubscriptionHashChangeInSeconds:?];
    }

    v29 = [v4 objectForKeyedSubscript:@"useCase"];
    objc_opt_class();
    v65 = v29;
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus setUseCase:](v5, "setUseCase:", [v29 intValue]);
    }

    v30 = [v4 objectForKeyedSubscript:@"timeSinceLastSoftwareUpdateInSeconds"];
    objc_opt_class();
    v64 = v30;
    v31 = v27;
    if (objc_opt_isKindOfClass())
    {
      [v64 doubleValue];
      [(ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus *)v5 setTimeSinceLastSoftwareUpdateInSeconds:?];
    }

    v32 = [v4 objectForKeyedSubscript:@"timeSinceSampledErrorInSeconds"];
    objc_opt_class();
    v63 = v32;
    if (objc_opt_isKindOfClass())
    {
      [v32 doubleValue];
      [(ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus *)v5 setTimeSinceSampledErrorInSeconds:?];
    }

    v58 = v12;
    v33 = [v4 objectForKeyedSubscript:@"buddyStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus setBuddyStatus:](v5, "setBuddyStatus:", [v33 intValue]);
    }

    v51 = v33;
    v60 = v25;
    v34 = [v4 objectForKeyedSubscript:@"buildVersionPriorToSoftwareUpdate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = [v34 copy];
      [(ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus *)v5 setBuildVersionPriorToSoftwareUpdate:v35];
    }

    v36 = [v4 objectForKeyedSubscript:@"invocationsCountWhileNotAvailable"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus setInvocationsCountWhileNotAvailable:](v5, "setInvocationsCountWhileNotAvailable:", [v36 unsignedIntValue]);
    }

    v52 = v28;
    v59 = v31;
    v37 = [v4 objectForKeyedSubscript:@"lastMobileAssetDownloadAttemptErrorUnderlyingCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus setLastMobileAssetDownloadAttemptErrorUnderlyingCode:](v5, "setLastMobileAssetDownloadAttemptErrorUnderlyingCode:", [v37 unsignedIntValue]);
    }

    v48 = v37;
    v38 = [v4 objectForKeyedSubscript:@"lastMobileAssetDownloadAttemptErrorUnderlyingDomain"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = [v38 copy];
      [(ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus *)v5 setLastMobileAssetDownloadAttemptErrorUnderlyingDomain:v39];
    }

    v50 = v34;
    v40 = [v4 objectForKeyedSubscript:@"mode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus setMode:](v5, "setMode:", [v40 intValue]);
    }

    v41 = [v4 objectForKeyedSubscript:@"sampledErrorAsset"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v42 = [v41 copy];
      [(ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus *)v5 setSampledErrorAsset:v42];
    }

    v53 = v24;
    v43 = [v4 objectForKeyedSubscript:@"subscriptionDownloadStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus setSubscriptionDownloadStatus:](v5, "setSubscriptionDownloadStatus:", [v43 intValue]);
    }

    v49 = v22;
    v44 = [v4 objectForKeyedSubscript:@"timeSinceSubscriptionDownloadStatusCompleteInSeconds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v44 doubleValue];
      [(ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus *)v5 setTimeSinceSubscriptionDownloadStatusCompleteInSeconds:?];
    }

    v45 = [v4 objectForKeyedSubscript:@"currentMode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus setCurrentMode:](v5, "setCurrentMode:", [v45 intValue]);
    }

    v46 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus *)self dictionaryRepresentation];
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
  if (self->_appleIntelligenceLocale)
  {
    v4 = [(ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus *)self appleIntelligenceLocale];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"appleIntelligenceLocale"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"appleIntelligenceLocale"];
    }
  }

  if (self->_assistantDimensions)
  {
    v7 = [(ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus *)self assistantDimensions];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"assistantDimensions"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"assistantDimensions"];
    }
  }

  if ((*(&self->_has + 2) & 8) != 0)
  {
    v10 = [(ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus *)self buddyStatus];
    v11 = @"SADBUDDYOPTINSTATE_UNKNOWN";
    if (v10 == 1)
    {
      v11 = @"SADBUDDYOPTINSTATE_OPTEDIN";
    }

    if (v10 == 2)
    {
      v12 = @"SADBUDDYOPTINSTATE_OPTEDOUT";
    }

    else
    {
      v12 = v11;
    }

    [v3 setObject:v12 forKeyedSubscript:@"buddyStatus"];
  }

  if (self->_buildVersionPriorToSoftwareUpdate)
  {
    v13 = [(ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus *)self buildVersionPriorToSoftwareUpdate];
    v14 = [v13 copy];
    [v3 setObject:v14 forKeyedSubscript:@"buildVersionPriorToSoftwareUpdate"];
  }

  has = self->_has;
  if ((*&has & 0x2000000) != 0)
  {
    v16 = [(ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus *)self currentMode]- 1;
    if (v16 > 3)
    {
      v17 = @"SADSIRIMODE_UNKNOWN";
    }

    else
    {
      v17 = off_1E78DD838[v16];
    }

    [v3 setObject:v17 forKeyedSubscript:@"currentMode"];
    has = self->_has;
  }

  if (*&has)
  {
    v27 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus currentStatus](self, "currentStatus")}];
    [v3 setObject:v27 forKeyedSubscript:@"currentStatus"];

    has = self->_has;
    if ((*&has & 0x4000) == 0)
    {
LABEL_27:
      if ((*&has & 0x10) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_67;
    }
  }

  else if ((*&has & 0x4000) == 0)
  {
    goto LABEL_27;
  }

  v28 = [(ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus *)self downloadState]- 1;
  if (v28 > 3)
  {
    v29 = @"ODDMOBILEASSETDOWNLOADSTATE_UNKNOWN";
  }

  else
  {
    v29 = off_1E78DD858[v28];
  }

  [v3 setObject:v29 forKeyedSubscript:@"downloadState"];
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_28:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_68;
  }

LABEL_67:
  v32 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus hasModelCatalogSubscriptionHashChangedFromLastStatus](self, "hasModelCatalogSubscriptionHashChangedFromLastStatus")}];
  [v3 setObject:v32 forKeyedSubscript:@"hasModelCatalogSubscriptionHashChangedFromLastStatus"];

  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_29:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_69;
  }

LABEL_68:
  v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus invocationsCountWhileNotAvailable](self, "invocationsCountWhileNotAvailable")}];
  [v3 setObject:v33 forKeyedSubscript:@"invocationsCountWhileNotAvailable"];

  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_30:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_70;
  }

LABEL_69:
  v34 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus isAppleIntelligenceAllowedThroughWaitlist](self, "isAppleIntelligenceAllowedThroughWaitlist")}];
  [v3 setObject:v34 forKeyedSubscript:@"isAppleIntelligenceAllowedThroughWaitlist"];

  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_31:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_71;
  }

LABEL_70:
  v35 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus isAppleIntelligenceEligible](self, "isAppleIntelligenceEligible")}];
  [v3 setObject:v35 forKeyedSubscript:@"isAppleIntelligenceEligible"];

  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_32:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_71:
  v36 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus isAppleIntelligenceToggled](self, "isAppleIntelligenceToggled")}];
  [v3 setObject:v36 forKeyedSubscript:@"isAppleIntelligenceToggled"];

  if ((*&self->_has & 0x200000) != 0)
  {
LABEL_33:
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus lastMobileAssetDownloadAttemptErrorUnderlyingCode](self, "lastMobileAssetDownloadAttemptErrorUnderlyingCode")}];
    [v3 setObject:v18 forKeyedSubscript:@"lastMobileAssetDownloadAttemptErrorUnderlyingCode"];
  }

LABEL_34:
  if (self->_lastMobileAssetDownloadAttemptErrorUnderlyingDomain)
  {
    v19 = [(ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus *)self lastMobileAssetDownloadAttemptErrorUnderlyingDomain];
    v20 = [v19 copy];
    [v3 setObject:v20 forKeyedSubscript:@"lastMobileAssetDownloadAttemptErrorUnderlyingDomain"];
  }

  v21 = self->_has;
  if ((*&v21 & 0x400000) != 0)
  {
    if ([(ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus *)self mode]== 1)
    {
      v22 = @"ORCHSIRIUNDERSTANDINGONDEVICEMODE_HYBRID_ASR_ON_SERVER_NL_ON_DEVICE";
    }

    else
    {
      v22 = @"ORCHSIRIUNDERSTANDINGONDEVICEMODE_FULL_UOD";
    }

    [v3 setObject:v22 forKeyedSubscript:@"mode"];
    v21 = self->_has;
  }

  if ((*&v21 & 2) != 0)
  {
    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus previousStatus](self, "previousStatus")}];
    [v3 setObject:v23 forKeyedSubscript:@"previousStatus"];
  }

  if (self->_sampledErrorAsset)
  {
    v24 = [(ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus *)self sampledErrorAsset];
    v25 = [v24 copy];
    [v3 setObject:v25 forKeyedSubscript:@"sampledErrorAsset"];
  }

  v26 = self->_has;
  if ((*&v26 & 0x800000) != 0)
  {
    v30 = [(ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus *)self subscriptionDownloadStatus]- 1;
    if (v30 > 7)
    {
      v31 = @"UAFSUBSCRIPTIONDOWNLOADSTATUS_UNKNOWN";
    }

    else
    {
      v31 = off_1E78DD878[v30];
    }

    [v3 setObject:v31 forKeyedSubscript:@"subscriptionDownloadStatus"];
    v26 = self->_has;
    if ((*&v26 & 0x400) == 0)
    {
LABEL_47:
      if ((*&v26 & 8) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_76;
    }
  }

  else if ((*&v26 & 0x400) == 0)
  {
    goto LABEL_47;
  }

  v37 = MEMORY[0x1E696AD98];
  [(ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus *)self timeSinceLastAppleIntelligenceToggleInSeconds];
  v38 = [v37 numberWithDouble:?];
  [v3 setObject:v38 forKeyedSubscript:@"timeSinceLastAppleIntelligenceToggleInSeconds"];

  v26 = self->_has;
  if ((*&v26 & 8) == 0)
  {
LABEL_48:
    if ((*&v26 & 0x800) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_77;
  }

LABEL_76:
  v39 = MEMORY[0x1E696AD98];
  [(ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus *)self timeSinceLastAvailabilityChangeInSeconds];
  v40 = [v39 numberWithDouble:?];
  [v3 setObject:v40 forKeyedSubscript:@"timeSinceLastAvailabilityChangeInSeconds"];

  v26 = self->_has;
  if ((*&v26 & 0x800) == 0)
  {
LABEL_49:
    if ((*&v26 & 0x100) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_78;
  }

LABEL_77:
  v41 = MEMORY[0x1E696AD98];
  [(ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus *)self timeSinceLastBootInSeconds];
  v42 = [v41 numberWithDouble:?];
  [v3 setObject:v42 forKeyedSubscript:@"timeSinceLastBootInSeconds"];

  v26 = self->_has;
  if ((*&v26 & 0x100) == 0)
  {
LABEL_50:
    if ((*&v26 & 0x1000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_79;
  }

LABEL_78:
  v43 = MEMORY[0x1E696AD98];
  [(ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus *)self timeSinceLastEligibleChangeInSeconds];
  v44 = [v43 numberWithDouble:?];
  [v3 setObject:v44 forKeyedSubscript:@"timeSinceLastEligibleChangeInSeconds"];

  v26 = self->_has;
  if ((*&v26 & 0x1000) == 0)
  {
LABEL_51:
    if ((*&v26 & 0x2000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_80;
  }

LABEL_79:
  v45 = MEMORY[0x1E696AD98];
  [(ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus *)self timeSinceLastMobileAssetDownloadAttemptInSeconds];
  v46 = [v45 numberWithDouble:?];
  [v3 setObject:v46 forKeyedSubscript:@"timeSinceLastMobileAssetDownloadAttemptInSeconds"];

  v26 = self->_has;
  if ((*&v26 & 0x2000) == 0)
  {
LABEL_52:
    if ((*&v26 & 0x8000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_81;
  }

LABEL_80:
  v47 = MEMORY[0x1E696AD98];
  [(ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus *)self timeSinceLastMobileAssetDownloadErrorInSeconds];
  v48 = [v47 numberWithDouble:?];
  [v3 setObject:v48 forKeyedSubscript:@"timeSinceLastMobileAssetDownloadErrorInSeconds"];

  v26 = self->_has;
  if ((*&v26 & 0x8000) == 0)
  {
LABEL_53:
    if ((*&v26 & 0x20000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_82;
  }

LABEL_81:
  v49 = MEMORY[0x1E696AD98];
  [(ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus *)self timeSinceLastModelCatalogSubscriptionHashChangeInSeconds];
  v50 = [v49 numberWithDouble:?];
  [v3 setObject:v50 forKeyedSubscript:@"timeSinceLastModelCatalogSubscriptionHashChangeInSeconds"];

  v26 = self->_has;
  if ((*&v26 & 0x20000) == 0)
  {
LABEL_54:
    if ((*&v26 & 4) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_83;
  }

LABEL_82:
  v51 = MEMORY[0x1E696AD98];
  [(ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus *)self timeSinceLastSoftwareUpdateInSeconds];
  v52 = [v51 numberWithDouble:?];
  [v3 setObject:v52 forKeyedSubscript:@"timeSinceLastSoftwareUpdateInSeconds"];

  v26 = self->_has;
  if ((*&v26 & 4) == 0)
  {
LABEL_55:
    if ((*&v26 & 0x200) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_84;
  }

LABEL_83:
  v53 = MEMORY[0x1E696AD98];
  [(ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus *)self timeSinceLastStatusChangeInSeconds];
  v54 = [v53 numberWithDouble:?];
  [v3 setObject:v54 forKeyedSubscript:@"timeSinceLastStatusChangeInSeconds"];

  v26 = self->_has;
  if ((*&v26 & 0x200) == 0)
  {
LABEL_56:
    if ((*&v26 & 0x40000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_85;
  }

LABEL_84:
  v55 = MEMORY[0x1E696AD98];
  [(ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus *)self timeSinceLastWaitlistChangeInSeconds];
  v56 = [v55 numberWithDouble:?];
  [v3 setObject:v56 forKeyedSubscript:@"timeSinceLastWaitlistChangeInSeconds"];

  v26 = self->_has;
  if ((*&v26 & 0x40000) == 0)
  {
LABEL_57:
    if ((*&v26 & 0x1000000) == 0)
    {
      goto LABEL_58;
    }

LABEL_86:
    v59 = MEMORY[0x1E696AD98];
    [(ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus *)self timeSinceSubscriptionDownloadStatusCompleteInSeconds];
    v60 = [v59 numberWithDouble:?];
    [v3 setObject:v60 forKeyedSubscript:@"timeSinceSubscriptionDownloadStatusCompleteInSeconds"];

    if ((*&self->_has & 0x10000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_87;
  }

LABEL_85:
  v57 = MEMORY[0x1E696AD98];
  [(ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus *)self timeSinceSampledErrorInSeconds];
  v58 = [v57 numberWithDouble:?];
  [v3 setObject:v58 forKeyedSubscript:@"timeSinceSampledErrorInSeconds"];

  v26 = self->_has;
  if ((*&v26 & 0x1000000) != 0)
  {
    goto LABEL_86;
  }

LABEL_58:
  if ((*&v26 & 0x10000) == 0)
  {
    goto LABEL_91;
  }

LABEL_87:
  v61 = [(ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus *)self useCase]- 1;
  if (v61 > 2)
  {
    v62 = @"ODDINTELLIGENCEFEATUREREPORTINGUSECASE_UNKNOWN";
  }

  else
  {
    v62 = off_1E78DD8B8[v61];
  }

  [v3 setObject:v62 forKeyedSubscript:@"useCase"];
LABEL_91:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];
  v63 = v3;

  return v3;
}

- (unint64_t)hash
{
  v82 = [(ODDSiriSchemaODDAssistantDimensions *)self->_assistantDimensions hash];
  v81 = [(SISchemaISOLocale *)self->_appleIntelligenceLocale hash];
  has = self->_has;
  if ((*&has & 1) == 0)
  {
    v80 = 0;
    if ((*&has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v79 = 0;
    if ((*&has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

  v80 = 2654435761u * self->_currentStatus;
  if ((*&has & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v79 = 2654435761u * self->_previousStatus;
  if ((*&has & 4) == 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  timeSinceLastStatusChangeInSeconds = self->_timeSinceLastStatusChangeInSeconds;
  if (timeSinceLastStatusChangeInSeconds < 0.0)
  {
    timeSinceLastStatusChangeInSeconds = -timeSinceLastStatusChangeInSeconds;
  }

  *v3.i64 = floor(timeSinceLastStatusChangeInSeconds + 0.5);
  v7 = (timeSinceLastStatusChangeInSeconds - *v3.i64) * 1.84467441e19;
  *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v3 = vbslq_s8(vnegq_f64(v8), v4, v3);
  v9 = 2654435761u * *v3.i64;
  if (v7 >= 0.0)
  {
    if (v7 > 0.0)
    {
      v9 += v7;
    }
  }

  else
  {
    v9 -= fabs(v7);
  }

LABEL_11:
  if ((*&has & 8) != 0)
  {
    timeSinceLastAvailabilityChangeInSeconds = self->_timeSinceLastAvailabilityChangeInSeconds;
    if (timeSinceLastAvailabilityChangeInSeconds < 0.0)
    {
      timeSinceLastAvailabilityChangeInSeconds = -timeSinceLastAvailabilityChangeInSeconds;
    }

    *v3.i64 = floor(timeSinceLastAvailabilityChangeInSeconds + 0.5);
    v12 = (timeSinceLastAvailabilityChangeInSeconds - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v3 = vbslq_s8(vnegq_f64(v13), v4, v3);
    v10 = 2654435761u * *v3.i64;
    if (v12 >= 0.0)
    {
      if (v12 > 0.0)
      {
        v10 += v12;
      }
    }

    else
    {
      v10 -= fabs(v12);
    }
  }

  else
  {
    v10 = 0;
  }

  if ((*&has & 0x10) != 0)
  {
    v77 = 2654435761 * self->_hasModelCatalogSubscriptionHashChangedFromLastStatus;
    if ((*&has & 0x20) != 0)
    {
LABEL_23:
      v76 = 2654435761 * self->_isAppleIntelligenceEligible;
      if ((*&has & 0x40) != 0)
      {
        goto LABEL_24;
      }

      goto LABEL_32;
    }
  }

  else
  {
    v77 = 0;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_23;
    }
  }

  v76 = 0;
  if ((*&has & 0x40) != 0)
  {
LABEL_24:
    v75 = 2654435761 * self->_isAppleIntelligenceAllowedThroughWaitlist;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_25;
    }

LABEL_33:
    v74 = 0;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_26;
    }

LABEL_34:
    v17 = 0;
    goto LABEL_35;
  }

LABEL_32:
  v75 = 0;
  if ((*&has & 0x80) == 0)
  {
    goto LABEL_33;
  }

LABEL_25:
  v74 = 2654435761 * self->_isAppleIntelligenceToggled;
  if ((*&has & 0x100) == 0)
  {
    goto LABEL_34;
  }

LABEL_26:
  timeSinceLastEligibleChangeInSeconds = self->_timeSinceLastEligibleChangeInSeconds;
  if (timeSinceLastEligibleChangeInSeconds < 0.0)
  {
    timeSinceLastEligibleChangeInSeconds = -timeSinceLastEligibleChangeInSeconds;
  }

  *v3.i64 = floor(timeSinceLastEligibleChangeInSeconds + 0.5);
  v15 = (timeSinceLastEligibleChangeInSeconds - *v3.i64) * 1.84467441e19;
  *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
  v16.f64[0] = NAN;
  v16.f64[1] = NAN;
  v3 = vbslq_s8(vnegq_f64(v16), v4, v3);
  v17 = 2654435761u * *v3.i64;
  if (v15 >= 0.0)
  {
    if (v15 > 0.0)
    {
      v17 += v15;
    }
  }

  else
  {
    v17 -= fabs(v15);
  }

LABEL_35:
  if ((*&has & 0x200) != 0)
  {
    timeSinceLastWaitlistChangeInSeconds = self->_timeSinceLastWaitlistChangeInSeconds;
    if (timeSinceLastWaitlistChangeInSeconds < 0.0)
    {
      timeSinceLastWaitlistChangeInSeconds = -timeSinceLastWaitlistChangeInSeconds;
    }

    *v3.i64 = floor(timeSinceLastWaitlistChangeInSeconds + 0.5);
    v20 = (timeSinceLastWaitlistChangeInSeconds - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v21.f64[0] = NAN;
    v21.f64[1] = NAN;
    v3 = vbslq_s8(vnegq_f64(v21), v4, v3);
    v18 = 2654435761u * *v3.i64;
    if (v20 >= 0.0)
    {
      if (v20 > 0.0)
      {
        v18 += v20;
      }
    }

    else
    {
      v18 -= fabs(v20);
    }
  }

  else
  {
    v18 = 0;
  }

  if ((*&has & 0x400) != 0)
  {
    timeSinceLastAppleIntelligenceToggleInSeconds = self->_timeSinceLastAppleIntelligenceToggleInSeconds;
    if (timeSinceLastAppleIntelligenceToggleInSeconds < 0.0)
    {
      timeSinceLastAppleIntelligenceToggleInSeconds = -timeSinceLastAppleIntelligenceToggleInSeconds;
    }

    *v3.i64 = floor(timeSinceLastAppleIntelligenceToggleInSeconds + 0.5);
    v24 = (timeSinceLastAppleIntelligenceToggleInSeconds - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v25.f64[0] = NAN;
    v25.f64[1] = NAN;
    v3 = vbslq_s8(vnegq_f64(v25), v4, v3);
    v22 = 2654435761u * *v3.i64;
    if (v24 >= 0.0)
    {
      if (v24 > 0.0)
      {
        v22 += v24;
      }
    }

    else
    {
      v22 -= fabs(v24);
    }
  }

  else
  {
    v22 = 0;
  }

  if ((*&has & 0x800) != 0)
  {
    timeSinceLastBootInSeconds = self->_timeSinceLastBootInSeconds;
    if (timeSinceLastBootInSeconds < 0.0)
    {
      timeSinceLastBootInSeconds = -timeSinceLastBootInSeconds;
    }

    *v3.i64 = floor(timeSinceLastBootInSeconds + 0.5);
    v28 = (timeSinceLastBootInSeconds - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v29.f64[0] = NAN;
    v29.f64[1] = NAN;
    v3 = vbslq_s8(vnegq_f64(v29), v4, v3);
    v26 = 2654435761u * *v3.i64;
    if (v28 >= 0.0)
    {
      if (v28 > 0.0)
      {
        v26 += v28;
      }
    }

    else
    {
      v26 -= fabs(v28);
    }
  }

  else
  {
    v26 = 0;
  }

  if ((*&has & 0x1000) != 0)
  {
    timeSinceLastMobileAssetDownloadAttemptInSeconds = self->_timeSinceLastMobileAssetDownloadAttemptInSeconds;
    if (timeSinceLastMobileAssetDownloadAttemptInSeconds < 0.0)
    {
      timeSinceLastMobileAssetDownloadAttemptInSeconds = -timeSinceLastMobileAssetDownloadAttemptInSeconds;
    }

    *v3.i64 = floor(timeSinceLastMobileAssetDownloadAttemptInSeconds + 0.5);
    v32 = (timeSinceLastMobileAssetDownloadAttemptInSeconds - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v33.f64[0] = NAN;
    v33.f64[1] = NAN;
    v3 = vbslq_s8(vnegq_f64(v33), v4, v3);
    v30 = 2654435761u * *v3.i64;
    if (v32 >= 0.0)
    {
      if (v32 > 0.0)
      {
        v30 += v32;
      }
    }

    else
    {
      v30 -= fabs(v32);
    }
  }

  else
  {
    v30 = 0;
  }

  if ((*&has & 0x2000) != 0)
  {
    timeSinceLastMobileAssetDownloadErrorInSeconds = self->_timeSinceLastMobileAssetDownloadErrorInSeconds;
    if (timeSinceLastMobileAssetDownloadErrorInSeconds < 0.0)
    {
      timeSinceLastMobileAssetDownloadErrorInSeconds = -timeSinceLastMobileAssetDownloadErrorInSeconds;
    }

    *v3.i64 = floor(timeSinceLastMobileAssetDownloadErrorInSeconds + 0.5);
    v36 = (timeSinceLastMobileAssetDownloadErrorInSeconds - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v37.f64[0] = NAN;
    v37.f64[1] = NAN;
    v3 = vbslq_s8(vnegq_f64(v37), v4, v3);
    v34 = 2654435761u * *v3.i64;
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

  if ((*&has & 0x4000) != 0)
  {
    v70 = 2654435761 * self->_downloadState;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_79;
    }

LABEL_84:
    v41 = 0;
    goto LABEL_85;
  }

  v70 = 0;
  if ((*&has & 0x8000) == 0)
  {
    goto LABEL_84;
  }

LABEL_79:
  timeSinceLastModelCatalogSubscriptionHashChangeInSeconds = self->_timeSinceLastModelCatalogSubscriptionHashChangeInSeconds;
  if (timeSinceLastModelCatalogSubscriptionHashChangeInSeconds < 0.0)
  {
    timeSinceLastModelCatalogSubscriptionHashChangeInSeconds = -timeSinceLastModelCatalogSubscriptionHashChangeInSeconds;
  }

  *v3.i64 = floor(timeSinceLastModelCatalogSubscriptionHashChangeInSeconds + 0.5);
  v39 = (timeSinceLastModelCatalogSubscriptionHashChangeInSeconds - *v3.i64) * 1.84467441e19;
  *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
  v40.f64[0] = NAN;
  v40.f64[1] = NAN;
  v3 = vbslq_s8(vnegq_f64(v40), v4, v3);
  v41 = 2654435761u * *v3.i64;
  if (v39 >= 0.0)
  {
    if (v39 > 0.0)
    {
      v41 += v39;
    }
  }

  else
  {
    v41 -= fabs(v39);
  }

LABEL_85:
  if ((*&has & 0x10000) != 0)
  {
    v68 = 2654435761 * self->_useCase;
    if ((*&has & 0x20000) != 0)
    {
      goto LABEL_87;
    }

LABEL_92:
    v45 = 0;
    goto LABEL_93;
  }

  v68 = 0;
  if ((*&has & 0x20000) == 0)
  {
    goto LABEL_92;
  }

LABEL_87:
  timeSinceLastSoftwareUpdateInSeconds = self->_timeSinceLastSoftwareUpdateInSeconds;
  if (timeSinceLastSoftwareUpdateInSeconds < 0.0)
  {
    timeSinceLastSoftwareUpdateInSeconds = -timeSinceLastSoftwareUpdateInSeconds;
  }

  *v3.i64 = floor(timeSinceLastSoftwareUpdateInSeconds + 0.5);
  v43 = (timeSinceLastSoftwareUpdateInSeconds - *v3.i64) * 1.84467441e19;
  *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
  v44.f64[0] = NAN;
  v44.f64[1] = NAN;
  v3 = vbslq_s8(vnegq_f64(v44), v4, v3);
  v45 = 2654435761u * *v3.i64;
  if (v43 >= 0.0)
  {
    if (v43 > 0.0)
    {
      v45 += v43;
    }
  }

  else
  {
    v45 -= fabs(v43);
  }

LABEL_93:
  if ((*&has & 0x40000) != 0)
  {
    timeSinceSampledErrorInSeconds = self->_timeSinceSampledErrorInSeconds;
    if (timeSinceSampledErrorInSeconds < 0.0)
    {
      timeSinceSampledErrorInSeconds = -timeSinceSampledErrorInSeconds;
    }

    *v3.i64 = floor(timeSinceSampledErrorInSeconds + 0.5);
    v48 = (timeSinceSampledErrorInSeconds - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v49.f64[0] = NAN;
    v49.f64[1] = NAN;
    v46 = 2654435761u * *vbslq_s8(vnegq_f64(v49), v4, v3).i64;
    if (v48 >= 0.0)
    {
      if (v48 > 0.0)
      {
        v46 += v48;
      }
    }

    else
    {
      v46 -= fabs(v48);
    }
  }

  else
  {
    v46 = 0;
  }

  v78 = v10;
  v72 = v18;
  v73 = v17;
  v71 = v9;
  v69 = v41;
  if ((*&has & 0x80000) != 0)
  {
    v67 = 2654435761 * self->_buddyStatus;
  }

  else
  {
    v67 = 0;
  }

  v66 = [(NSString *)self->_buildVersionPriorToSoftwareUpdate hash];
  v50 = self->_has;
  if ((*&v50 & 0x100000) != 0)
  {
    v65 = 2654435761 * self->_invocationsCountWhileNotAvailable;
    if ((*&v50 & 0x200000) != 0)
    {
      goto LABEL_110;
    }
  }

  else
  {
    v65 = 0;
    if ((*&v50 & 0x200000) != 0)
    {
LABEL_110:
      v64 = 2654435761 * self->_lastMobileAssetDownloadAttemptErrorUnderlyingCode;
      goto LABEL_113;
    }
  }

  v64 = 0;
LABEL_113:
  v63 = [(NSString *)self->_lastMobileAssetDownloadAttemptErrorUnderlyingDomain hash];
  if ((*(&self->_has + 2) & 0x40) != 0)
  {
    v51 = 2654435761 * self->_mode;
  }

  else
  {
    v51 = 0;
  }

  v52 = [(NSString *)self->_sampledErrorAsset hash];
  v55 = self->_has;
  if ((*&v55 & 0x800000) != 0)
  {
    v56 = 2654435761 * self->_subscriptionDownloadStatus;
    if ((*&v55 & 0x1000000) != 0)
    {
      goto LABEL_118;
    }

LABEL_123:
    v60 = 0;
    goto LABEL_124;
  }

  v56 = 0;
  if ((*&v55 & 0x1000000) == 0)
  {
    goto LABEL_123;
  }

LABEL_118:
  timeSinceSubscriptionDownloadStatusCompleteInSeconds = self->_timeSinceSubscriptionDownloadStatusCompleteInSeconds;
  if (timeSinceSubscriptionDownloadStatusCompleteInSeconds < 0.0)
  {
    timeSinceSubscriptionDownloadStatusCompleteInSeconds = -timeSinceSubscriptionDownloadStatusCompleteInSeconds;
  }

  *v53.i64 = floor(timeSinceSubscriptionDownloadStatusCompleteInSeconds + 0.5);
  v58 = (timeSinceSubscriptionDownloadStatusCompleteInSeconds - *v53.i64) * 1.84467441e19;
  *v54.i64 = *v53.i64 - trunc(*v53.i64 * 5.42101086e-20) * 1.84467441e19;
  v59.f64[0] = NAN;
  v59.f64[1] = NAN;
  v60 = 2654435761u * *vbslq_s8(vnegq_f64(v59), v54, v53).i64;
  if (v58 >= 0.0)
  {
    if (v58 > 0.0)
    {
      v60 += v58;
    }
  }

  else
  {
    v60 -= fabs(v58);
  }

LABEL_124:
  if ((*&v55 & 0x2000000) != 0)
  {
    v61 = 2654435761 * self->_currentMode;
  }

  else
  {
    v61 = 0;
  }

  return v81 ^ v82 ^ v80 ^ v79 ^ v71 ^ v78 ^ v77 ^ v76 ^ v75 ^ v74 ^ v73 ^ v72 ^ v22 ^ v26 ^ v30 ^ v34 ^ v70 ^ v69 ^ v68 ^ v45 ^ v46 ^ v67 ^ v66 ^ v65 ^ v64 ^ v63 ^ v51 ^ v52 ^ v56 ^ v60 ^ v61;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_116;
  }

  v5 = [(ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus *)self assistantDimensions];
  v6 = [v4 assistantDimensions];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_115;
  }

  v7 = [(ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus *)self assistantDimensions];
  if (v7)
  {
    v8 = v7;
    v9 = [(ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus *)self assistantDimensions];
    v10 = [v4 assistantDimensions];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_116;
    }
  }

  else
  {
  }

  v5 = [(ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus *)self appleIntelligenceLocale];
  v6 = [v4 appleIntelligenceLocale];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_115;
  }

  v12 = [(ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus *)self appleIntelligenceLocale];
  if (v12)
  {
    v13 = v12;
    v14 = [(ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus *)self appleIntelligenceLocale];
    v15 = [v4 appleIntelligenceLocale];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_116;
    }
  }

  else
  {
  }

  has = self->_has;
  v18 = v4[55];
  if ((*&has & 1) != (v18 & 1))
  {
    goto LABEL_116;
  }

  if (*&has)
  {
    currentStatus = self->_currentStatus;
    if (currentStatus != [v4 currentStatus])
    {
      goto LABEL_116;
    }

    has = self->_has;
    v18 = v4[55];
  }

  v20 = (*&has >> 1) & 1;
  if (v20 != ((v18 >> 1) & 1))
  {
    goto LABEL_116;
  }

  if (v20)
  {
    previousStatus = self->_previousStatus;
    if (previousStatus != [v4 previousStatus])
    {
      goto LABEL_116;
    }

    has = self->_has;
    v18 = v4[55];
  }

  v22 = (*&has >> 2) & 1;
  if (v22 != ((v18 >> 2) & 1))
  {
    goto LABEL_116;
  }

  if (v22)
  {
    timeSinceLastStatusChangeInSeconds = self->_timeSinceLastStatusChangeInSeconds;
    [v4 timeSinceLastStatusChangeInSeconds];
    if (timeSinceLastStatusChangeInSeconds != v24)
    {
      goto LABEL_116;
    }

    has = self->_has;
    v18 = v4[55];
  }

  v25 = (*&has >> 3) & 1;
  if (v25 != ((v18 >> 3) & 1))
  {
    goto LABEL_116;
  }

  if (v25)
  {
    timeSinceLastAvailabilityChangeInSeconds = self->_timeSinceLastAvailabilityChangeInSeconds;
    [v4 timeSinceLastAvailabilityChangeInSeconds];
    if (timeSinceLastAvailabilityChangeInSeconds != v27)
    {
      goto LABEL_116;
    }

    has = self->_has;
    v18 = v4[55];
  }

  v28 = (*&has >> 4) & 1;
  if (v28 != ((v18 >> 4) & 1))
  {
    goto LABEL_116;
  }

  if (v28)
  {
    hasModelCatalogSubscriptionHashChangedFromLastStatus = self->_hasModelCatalogSubscriptionHashChangedFromLastStatus;
    if (hasModelCatalogSubscriptionHashChangedFromLastStatus != [v4 hasModelCatalogSubscriptionHashChangedFromLastStatus])
    {
      goto LABEL_116;
    }

    has = self->_has;
    v18 = v4[55];
  }

  v30 = (*&has >> 5) & 1;
  if (v30 != ((v18 >> 5) & 1))
  {
    goto LABEL_116;
  }

  if (v30)
  {
    isAppleIntelligenceEligible = self->_isAppleIntelligenceEligible;
    if (isAppleIntelligenceEligible != [v4 isAppleIntelligenceEligible])
    {
      goto LABEL_116;
    }

    has = self->_has;
    v18 = v4[55];
  }

  v32 = (*&has >> 6) & 1;
  if (v32 != ((v18 >> 6) & 1))
  {
    goto LABEL_116;
  }

  if (v32)
  {
    isAppleIntelligenceAllowedThroughWaitlist = self->_isAppleIntelligenceAllowedThroughWaitlist;
    if (isAppleIntelligenceAllowedThroughWaitlist != [v4 isAppleIntelligenceAllowedThroughWaitlist])
    {
      goto LABEL_116;
    }

    has = self->_has;
    v18 = v4[55];
  }

  v34 = (*&has >> 7) & 1;
  if (v34 != ((v18 >> 7) & 1))
  {
    goto LABEL_116;
  }

  if (v34)
  {
    isAppleIntelligenceToggled = self->_isAppleIntelligenceToggled;
    if (isAppleIntelligenceToggled != [v4 isAppleIntelligenceToggled])
    {
      goto LABEL_116;
    }

    has = self->_has;
    v18 = v4[55];
  }

  v36 = (*&has >> 8) & 1;
  if (v36 != ((v18 >> 8) & 1))
  {
    goto LABEL_116;
  }

  if (v36)
  {
    timeSinceLastEligibleChangeInSeconds = self->_timeSinceLastEligibleChangeInSeconds;
    [v4 timeSinceLastEligibleChangeInSeconds];
    if (timeSinceLastEligibleChangeInSeconds != v38)
    {
      goto LABEL_116;
    }

    has = self->_has;
    v18 = v4[55];
  }

  v39 = (*&has >> 9) & 1;
  if (v39 != ((v18 >> 9) & 1))
  {
    goto LABEL_116;
  }

  if (v39)
  {
    timeSinceLastWaitlistChangeInSeconds = self->_timeSinceLastWaitlistChangeInSeconds;
    [v4 timeSinceLastWaitlistChangeInSeconds];
    if (timeSinceLastWaitlistChangeInSeconds != v41)
    {
      goto LABEL_116;
    }

    has = self->_has;
    v18 = v4[55];
  }

  v42 = (*&has >> 10) & 1;
  if (v42 != ((v18 >> 10) & 1))
  {
    goto LABEL_116;
  }

  if (v42)
  {
    timeSinceLastAppleIntelligenceToggleInSeconds = self->_timeSinceLastAppleIntelligenceToggleInSeconds;
    [v4 timeSinceLastAppleIntelligenceToggleInSeconds];
    if (timeSinceLastAppleIntelligenceToggleInSeconds != v44)
    {
      goto LABEL_116;
    }

    has = self->_has;
    v18 = v4[55];
  }

  v45 = (*&has >> 11) & 1;
  if (v45 != ((v18 >> 11) & 1))
  {
    goto LABEL_116;
  }

  if (v45)
  {
    timeSinceLastBootInSeconds = self->_timeSinceLastBootInSeconds;
    [v4 timeSinceLastBootInSeconds];
    if (timeSinceLastBootInSeconds != v47)
    {
      goto LABEL_116;
    }

    has = self->_has;
    v18 = v4[55];
  }

  v48 = (*&has >> 12) & 1;
  if (v48 != ((v18 >> 12) & 1))
  {
    goto LABEL_116;
  }

  if (v48)
  {
    timeSinceLastMobileAssetDownloadAttemptInSeconds = self->_timeSinceLastMobileAssetDownloadAttemptInSeconds;
    [v4 timeSinceLastMobileAssetDownloadAttemptInSeconds];
    if (timeSinceLastMobileAssetDownloadAttemptInSeconds != v50)
    {
      goto LABEL_116;
    }

    has = self->_has;
    v18 = v4[55];
  }

  v51 = (*&has >> 13) & 1;
  if (v51 != ((v18 >> 13) & 1))
  {
    goto LABEL_116;
  }

  if (v51)
  {
    timeSinceLastMobileAssetDownloadErrorInSeconds = self->_timeSinceLastMobileAssetDownloadErrorInSeconds;
    [v4 timeSinceLastMobileAssetDownloadErrorInSeconds];
    if (timeSinceLastMobileAssetDownloadErrorInSeconds != v53)
    {
      goto LABEL_116;
    }

    has = self->_has;
    v18 = v4[55];
  }

  v54 = (*&has >> 14) & 1;
  if (v54 != ((v18 >> 14) & 1))
  {
    goto LABEL_116;
  }

  if (v54)
  {
    downloadState = self->_downloadState;
    if (downloadState != [v4 downloadState])
    {
      goto LABEL_116;
    }

    has = self->_has;
    v18 = v4[55];
  }

  v56 = (*&has >> 15) & 1;
  if (v56 != ((v18 >> 15) & 1))
  {
    goto LABEL_116;
  }

  if (v56)
  {
    timeSinceLastModelCatalogSubscriptionHashChangeInSeconds = self->_timeSinceLastModelCatalogSubscriptionHashChangeInSeconds;
    [v4 timeSinceLastModelCatalogSubscriptionHashChangeInSeconds];
    if (timeSinceLastModelCatalogSubscriptionHashChangeInSeconds != v58)
    {
      goto LABEL_116;
    }

    has = self->_has;
    v18 = v4[55];
  }

  v59 = HIWORD(*&has) & 1;
  if (v59 != (HIWORD(v18) & 1))
  {
    goto LABEL_116;
  }

  if (v59)
  {
    useCase = self->_useCase;
    if (useCase != [v4 useCase])
    {
      goto LABEL_116;
    }

    has = self->_has;
    v18 = v4[55];
  }

  v61 = (*&has >> 17) & 1;
  if (v61 != ((v18 >> 17) & 1))
  {
    goto LABEL_116;
  }

  if (v61)
  {
    timeSinceLastSoftwareUpdateInSeconds = self->_timeSinceLastSoftwareUpdateInSeconds;
    [v4 timeSinceLastSoftwareUpdateInSeconds];
    if (timeSinceLastSoftwareUpdateInSeconds != v63)
    {
      goto LABEL_116;
    }

    has = self->_has;
    v18 = v4[55];
  }

  v64 = (*&has >> 18) & 1;
  if (v64 != ((v18 >> 18) & 1))
  {
    goto LABEL_116;
  }

  if (v64)
  {
    timeSinceSampledErrorInSeconds = self->_timeSinceSampledErrorInSeconds;
    [v4 timeSinceSampledErrorInSeconds];
    if (timeSinceSampledErrorInSeconds != v66)
    {
      goto LABEL_116;
    }

    has = self->_has;
    v18 = v4[55];
  }

  v67 = (*&has >> 19) & 1;
  if (v67 != ((v18 >> 19) & 1))
  {
    goto LABEL_116;
  }

  if (v67)
  {
    buddyStatus = self->_buddyStatus;
    if (buddyStatus != [v4 buddyStatus])
    {
      goto LABEL_116;
    }
  }

  v5 = [(ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus *)self buildVersionPriorToSoftwareUpdate];
  v6 = [v4 buildVersionPriorToSoftwareUpdate];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_115;
  }

  v69 = [(ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus *)self buildVersionPriorToSoftwareUpdate];
  if (v69)
  {
    v70 = v69;
    v71 = [(ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus *)self buildVersionPriorToSoftwareUpdate];
    v72 = [v4 buildVersionPriorToSoftwareUpdate];
    v73 = [v71 isEqual:v72];

    if (!v73)
    {
      goto LABEL_116;
    }
  }

  else
  {
  }

  v74 = self->_has;
  v75 = (*&v74 >> 20) & 1;
  v76 = v4[55];
  if (v75 != ((v76 >> 20) & 1))
  {
    goto LABEL_116;
  }

  if (v75)
  {
    invocationsCountWhileNotAvailable = self->_invocationsCountWhileNotAvailable;
    if (invocationsCountWhileNotAvailable != [v4 invocationsCountWhileNotAvailable])
    {
      goto LABEL_116;
    }

    v74 = self->_has;
    v76 = v4[55];
  }

  v78 = (*&v74 >> 21) & 1;
  if (v78 != ((v76 >> 21) & 1))
  {
    goto LABEL_116;
  }

  if (v78)
  {
    lastMobileAssetDownloadAttemptErrorUnderlyingCode = self->_lastMobileAssetDownloadAttemptErrorUnderlyingCode;
    if (lastMobileAssetDownloadAttemptErrorUnderlyingCode != [v4 lastMobileAssetDownloadAttemptErrorUnderlyingCode])
    {
      goto LABEL_116;
    }
  }

  v5 = [(ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus *)self lastMobileAssetDownloadAttemptErrorUnderlyingDomain];
  v6 = [v4 lastMobileAssetDownloadAttemptErrorUnderlyingDomain];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_115;
  }

  v80 = [(ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus *)self lastMobileAssetDownloadAttemptErrorUnderlyingDomain];
  if (v80)
  {
    v81 = v80;
    v82 = [(ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus *)self lastMobileAssetDownloadAttemptErrorUnderlyingDomain];
    v83 = [v4 lastMobileAssetDownloadAttemptErrorUnderlyingDomain];
    v84 = [v82 isEqual:v83];

    if (!v84)
    {
      goto LABEL_116;
    }
  }

  else
  {
  }

  v85 = (*&self->_has >> 22) & 1;
  if (v85 != ((v4[55] >> 22) & 1))
  {
    goto LABEL_116;
  }

  if (v85)
  {
    mode = self->_mode;
    if (mode != [v4 mode])
    {
      goto LABEL_116;
    }
  }

  v5 = [(ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus *)self sampledErrorAsset];
  v6 = [v4 sampledErrorAsset];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_115:

    goto LABEL_116;
  }

  v87 = [(ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus *)self sampledErrorAsset];
  if (v87)
  {
    v88 = v87;
    v89 = [(ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus *)self sampledErrorAsset];
    v90 = [v4 sampledErrorAsset];
    v91 = [v89 isEqual:v90];

    if (!v91)
    {
      goto LABEL_116;
    }
  }

  else
  {
  }

  v94 = self->_has;
  v95 = (*&v94 >> 23) & 1;
  v96 = v4[55];
  if (v95 == ((v96 >> 23) & 1))
  {
    if (v95)
    {
      subscriptionDownloadStatus = self->_subscriptionDownloadStatus;
      if (subscriptionDownloadStatus != [v4 subscriptionDownloadStatus])
      {
        goto LABEL_116;
      }

      v94 = self->_has;
      v96 = v4[55];
    }

    v98 = HIBYTE(*&v94) & 1;
    if (v98 == (HIBYTE(v96) & 1))
    {
      if (v98)
      {
        timeSinceSubscriptionDownloadStatusCompleteInSeconds = self->_timeSinceSubscriptionDownloadStatusCompleteInSeconds;
        [v4 timeSinceSubscriptionDownloadStatusCompleteInSeconds];
        if (timeSinceSubscriptionDownloadStatusCompleteInSeconds != v100)
        {
          goto LABEL_116;
        }

        v94 = self->_has;
        v96 = v4[55];
      }

      v101 = (*&v94 >> 25) & 1;
      if (v101 == ((v96 >> 25) & 1))
      {
        if (!v101 || (currentMode = self->_currentMode, currentMode == [v4 currentMode]))
        {
          v92 = 1;
          goto LABEL_117;
        }
      }
    }
  }

LABEL_116:
  v92 = 0;
LABEL_117:

  return v92;
}

- (void)writeTo:(id)a3
{
  v15 = a3;
  v4 = [(ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus *)self assistantDimensions];

  if (v4)
  {
    v5 = [(ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus *)self assistantDimensions];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus *)self appleIntelligenceLocale];

  if (v6)
  {
    v7 = [(ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus *)self appleIntelligenceLocale];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (*&has)
  {
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((*&has & 2) == 0)
    {
LABEL_7:
      if ((*&has & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_47;
    }
  }

  else if ((*&has & 2) == 0)
  {
    goto LABEL_7;
  }

  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_8:
    if ((*&has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_48;
  }

LABEL_47:
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_9:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_49;
  }

LABEL_48:
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_10:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_50;
  }

LABEL_49:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_11:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_51;
  }

LABEL_50:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_12:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_52;
  }

LABEL_51:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_13:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_53;
  }

LABEL_52:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_14:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_54;
  }

LABEL_53:
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_15:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_55;
  }

LABEL_54:
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_16:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_56;
  }

LABEL_55:
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_17:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_57;
  }

LABEL_56:
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_18:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_58;
  }

LABEL_57:
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_19:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_59;
  }

LABEL_58:
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_20:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_60;
  }

LABEL_59:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_21:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_61;
  }

LABEL_60:
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_22:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_62;
  }

LABEL_61:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_23:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_63;
  }

LABEL_62:
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_24:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_63:
  PBDataWriterWriteDoubleField();
  if ((*&self->_has & 0x80000) != 0)
  {
LABEL_25:
    PBDataWriterWriteInt32Field();
  }

LABEL_26:
  v9 = [(ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus *)self buildVersionPriorToSoftwareUpdate];

  if (v9)
  {
    PBDataWriterWriteStringField();
  }

  v10 = self->_has;
  if ((*&v10 & 0x100000) != 0)
  {
    PBDataWriterWriteUint32Field();
    v10 = self->_has;
  }

  if ((*&v10 & 0x200000) != 0)
  {
    PBDataWriterWriteUint32Field();
  }

  v11 = [(ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus *)self lastMobileAssetDownloadAttemptErrorUnderlyingDomain];

  if (v11)
  {
    PBDataWriterWriteStringField();
  }

  if ((*(&self->_has + 2) & 0x40) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  v12 = [(ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus *)self sampledErrorAsset];

  if (v12)
  {
    PBDataWriterWriteStringField();
  }

  v13 = self->_has;
  v14 = v15;
  if ((*&v13 & 0x800000) != 0)
  {
    PBDataWriterWriteInt32Field();
    v14 = v15;
    v13 = self->_has;
    if ((*&v13 & 0x1000000) == 0)
    {
LABEL_40:
      if ((*&v13 & 0x2000000) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_41;
    }
  }

  else if ((*&v13 & 0x1000000) == 0)
  {
    goto LABEL_40;
  }

  PBDataWriterWriteDoubleField();
  v14 = v15;
  if ((*&self->_has & 0x2000000) != 0)
  {
LABEL_41:
    PBDataWriterWriteInt32Field();
    v14 = v15;
  }

LABEL_42:
}

- (void)setHasCurrentMode:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFDFFFFFF | v3);
}

- (void)setHasTimeSinceSubscriptionDownloadStatusCompleteInSeconds:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFEFFFFFF | v3);
}

- (void)setHasSubscriptionDownloadStatus:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x800000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFF7FFFFF | v3);
}

- (void)setHasMode:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x400000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFBFFFFF | v3);
}

- (void)setHasLastMobileAssetDownloadAttemptErrorUnderlyingCode:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFDFFFFF | v3);
}

- (void)setHasInvocationsCountWhileNotAvailable:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFF | v3);
}

- (void)setHasBuddyStatus:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFF | v3);
}

- (void)setHasTimeSinceSampledErrorInSeconds:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (void)setHasTimeSinceLastSoftwareUpdateInSeconds:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (void)setHasUseCase:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasTimeSinceLastModelCatalogSubscriptionHashChangeInSeconds:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasDownloadState:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)setHasTimeSinceLastMobileAssetDownloadErrorInSeconds:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasTimeSinceLastMobileAssetDownloadAttemptInSeconds:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasTimeSinceLastBootInSeconds:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasTimeSinceLastAppleIntelligenceToggleInSeconds:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasTimeSinceLastWaitlistChangeInSeconds:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasTimeSinceLastEligibleChangeInSeconds:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasIsAppleIntelligenceToggled:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasIsAppleIntelligenceAllowedThroughWaitlist:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)setHasIsAppleIntelligenceEligible:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasHasModelCatalogSubscriptionHashChangedFromLastStatus:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasTimeSinceLastAvailabilityChangeInSeconds:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasTimeSinceLastStatusChangeInSeconds:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)setHasPreviousStatus:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus *)self assistantDimensions];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus *)self deleteAssistantDimensions];
  }

  v9 = [(ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus *)self appleIntelligenceLocale];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus *)self deleteAppleIntelligenceLocale];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end