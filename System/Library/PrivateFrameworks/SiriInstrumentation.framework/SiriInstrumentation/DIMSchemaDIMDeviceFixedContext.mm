@interface DIMSchemaDIMDeviceFixedContext
- (BOOL)isEqual:(id)a3;
- (DIMSchemaDIMDeviceFixedContext)initWithDictionary:(id)a3;
- (DIMSchemaDIMDeviceFixedContext)initWithJSON:(id)a3;
- (DIMSchemaDIMWatchDeviceAttributes)watchDeviceAttributes;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addPreferredLanguages:(id)a3;
- (void)deleteWatchDeviceAttributes;
- (void)setHasAvailableDictationKeyboards:(BOOL)a3;
- (void)setHasCountryCode:(BOOL)a3;
- (void)setHasDataSharingOptInState:(BOOL)a3;
- (void)setHasHomeKitConfiguration:(BOOL)a3;
- (void)setHasIsLongLivedIDUploadDisabled:(BOOL)a3;
- (void)setHasIsLowPowerModeEnabled:(BOOL)a3;
- (void)setHasIsStoreDemoMode:(BOOL)a3;
- (void)setHasProgramCode:(BOOL)a3;
- (void)setHasSearchDataOptOutState:(BOOL)a3;
- (void)setHasSiriInputLocale:(BOOL)a3;
- (void)setHasTimeIntervalSince1970:(BOOL)a3;
- (void)setWatchDeviceAttributes:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation DIMSchemaDIMDeviceFixedContext

- (DIMSchemaDIMDeviceFixedContext)initWithDictionary:(id)a3
{
  v72 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v70.receiver = self;
  v70.super_class = DIMSchemaDIMDeviceFixedContext;
  v5 = [(DIMSchemaDIMDeviceFixedContext *)&v70 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"systemLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DIMSchemaDIMDeviceFixedContext setSystemLocale:](v5, "setSystemLocale:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"siriInputLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DIMSchemaDIMDeviceFixedContext setSiriInputLocale:](v5, "setSiriInputLocale:", [v7 intValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"siriVoiceSettings"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaVoiceSettings alloc] initWithDictionary:v8];
      [(DIMSchemaDIMDeviceFixedContext *)v5 setSiriVoiceSettings:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"dataSharingOptInState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DIMSchemaDIMDeviceFixedContext setDataSharingOptInState:](v5, "setDataSharingOptInState:", [v10 intValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"timezoneOffset"];
    objc_opt_class();
    v65 = v11;
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 copy];
      [(DIMSchemaDIMDeviceFixedContext *)v5 setTimezoneOffset:v12];
    }

    v13 = [v4 objectForKeyedSubscript:@"countryCode"];
    objc_opt_class();
    v64 = v13;
    if (objc_opt_isKindOfClass())
    {
      -[DIMSchemaDIMDeviceFixedContext setCountryCode:](v5, "setCountryCode:", [v13 intValue]);
    }

    v14 = [v4 objectForKeyedSubscript:@"deviceType"];
    objc_opt_class();
    v63 = v14;
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(DIMSchemaDIMDeviceFixedContext *)v5 setDeviceType:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"systemBuild"];
    objc_opt_class();
    v62 = v16;
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(DIMSchemaDIMDeviceFixedContext *)v5 setSystemBuild:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"isStoreDemoMode"];
    objc_opt_class();
    v61 = v18;
    if (objc_opt_isKindOfClass())
    {
      -[DIMSchemaDIMDeviceFixedContext setIsStoreDemoMode:](v5, "setIsStoreDemoMode:", [v18 BOOLValue]);
    }

    v19 = [v4 objectForKeyedSubscript:@"timeIntervalSince1970"];
    objc_opt_class();
    v60 = v19;
    if (objc_opt_isKindOfClass())
    {
      [v19 doubleValue];
      [(DIMSchemaDIMDeviceFixedContext *)v5 setTimeIntervalSince1970:?];
    }

    v20 = [v4 objectForKeyedSubscript:@"watchDeviceAttributes"];
    objc_opt_class();
    v59 = v20;
    if (objc_opt_isKindOfClass())
    {
      v21 = [[DIMSchemaDIMWatchDeviceAttributes alloc] initWithDictionary:v20];
      [(DIMSchemaDIMDeviceFixedContext *)v5 setWatchDeviceAttributes:v21];
    }

    v22 = [v4 objectForKeyedSubscript:@"isLowPowerModeEnabled"];
    objc_opt_class();
    v58 = v22;
    if (objc_opt_isKindOfClass())
    {
      -[DIMSchemaDIMDeviceFixedContext setIsLowPowerModeEnabled:](v5, "setIsLowPowerModeEnabled:", [v22 BOOLValue]);
    }

    v23 = [v4 objectForKeyedSubscript:@"systemLocaleV2"];
    objc_opt_class();
    v57 = v23;
    if (objc_opt_isKindOfClass())
    {
      v24 = [[SISchemaISOLocale alloc] initWithDictionary:v23];
      [(DIMSchemaDIMDeviceFixedContext *)v5 setSystemLocaleV2:v24];
    }

    v25 = [v4 objectForKeyedSubscript:@"siriInputLocaleV2"];
    objc_opt_class();
    v56 = v25;
    if (objc_opt_isKindOfClass())
    {
      v26 = [[SISchemaISOLocale alloc] initWithDictionary:v25];
      [(DIMSchemaDIMDeviceFixedContext *)v5 setSiriInputLocaleV2:v26];
    }

    v27 = [v4 objectForKeyedSubscript:@"programCode"];
    objc_opt_class();
    v55 = v27;
    if (objc_opt_isKindOfClass())
    {
      -[DIMSchemaDIMDeviceFixedContext setProgramCode:](v5, "setProgramCode:", [v27 intValue]);
    }

    v54 = v6;
    v28 = [v4 objectForKeyedSubscript:@"dataCollectionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [v28 copy];
      [(DIMSchemaDIMDeviceFixedContext *)v5 setDataCollectionId:v29];
    }

    v50 = v28;
    v53 = v7;
    v30 = [v4 objectForKeyedSubscript:@"effectiveSystemLanguage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = [v30 copy];
      [(DIMSchemaDIMDeviceFixedContext *)v5 setEffectiveSystemLanguage:v31];
    }

    v51 = v10;
    v52 = v8;
    v32 = [v4 objectForKeyedSubscript:@"preferredLanguages"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v33 = v32;
      v34 = [v33 countByEnumeratingWithState:&v66 objects:v71 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = *v67;
        do
        {
          for (i = 0; i != v35; ++i)
          {
            if (*v67 != v36)
            {
              objc_enumerationMutation(v33);
            }

            v38 = *(*(&v66 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v39 = [v38 copy];
              [(DIMSchemaDIMDeviceFixedContext *)v5 addPreferredLanguages:v39];
            }
          }

          v35 = [v33 countByEnumeratingWithState:&v66 objects:v71 count:16];
        }

        while (v35);
      }
    }

    v40 = [v4 objectForKeyedSubscript:@"homeKitConfiguration"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DIMSchemaDIMDeviceFixedContext setHomeKitConfiguration:](v5, "setHomeKitConfiguration:", [v40 intValue]);
    }

    v41 = [v4 objectForKeyedSubscript:@"entitySyncSettings"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v42 = [[DIMSchemaEntitySyncSettings alloc] initWithDictionary:v41];
      [(DIMSchemaDIMDeviceFixedContext *)v5 setEntitySyncSettings:v42];
    }

    v43 = [v4 objectForKeyedSubscript:@"dataSharingSettings"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v44 = [[DIMSchemaDIMDataSharingSettings alloc] initWithDictionary:v43];
      [(DIMSchemaDIMDeviceFixedContext *)v5 setDataSharingSettings:v44];
    }

    v45 = [v4 objectForKeyedSubscript:@"availableDictationKeyboards"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DIMSchemaDIMDeviceFixedContext setAvailableDictationKeyboards:](v5, "setAvailableDictationKeyboards:", [v45 unsignedIntValue]);
    }

    v46 = [v4 objectForKeyedSubscript:@"searchDataOptOutState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DIMSchemaDIMDeviceFixedContext setSearchDataOptOutState:](v5, "setSearchDataOptOutState:", [v46 intValue]);
    }

    v47 = [v4 objectForKeyedSubscript:@"isLongLivedIDUploadDisabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DIMSchemaDIMDeviceFixedContext setIsLongLivedIDUploadDisabled:](v5, "setIsLongLivedIDUploadDisabled:", [v47 BOOLValue]);
    }

    v48 = v5;
  }

  return v5;
}

- (DIMSchemaDIMDeviceFixedContext)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(DIMSchemaDIMDeviceFixedContext *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(DIMSchemaDIMDeviceFixedContext *)self dictionaryRepresentation];
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
  v4 = *(&self->_isLongLivedIDUploadDisabled + 1);
  if ((v4 & 0x200) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[DIMSchemaDIMDeviceFixedContext availableDictationKeyboards](self, "availableDictationKeyboards")}];
    [v3 setObject:v5 forKeyedSubscript:@"availableDictationKeyboards"];

    v4 = *(&self->_isLongLivedIDUploadDisabled + 1);
  }

  if ((v4 & 8) != 0)
  {
    v6 = [(DIMSchemaDIMDeviceFixedContext *)self countryCode]- 1;
    if (v6 > 0xF9)
    {
      v7 = @"COUNTRYCODE_UNKNOWN";
    }

    else
    {
      v7 = off_1E78D37E0[v6];
    }

    [v3 setObject:v7 forKeyedSubscript:@"countryCode"];
  }

  if (self->_dataCollectionId)
  {
    v8 = [(DIMSchemaDIMDeviceFixedContext *)self dataCollectionId];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"dataCollectionId"];
  }

  if ((*(&self->_isLongLivedIDUploadDisabled + 1) & 4) != 0)
  {
    v10 = [(DIMSchemaDIMDeviceFixedContext *)self dataSharingOptInState]- 1;
    if (v10 > 2)
    {
      v11 = @"UNKNOWN";
    }

    else
    {
      v11 = off_1E78D3FB0[v10];
    }

    [v3 setObject:v11 forKeyedSubscript:@"dataSharingOptInState"];
  }

  if (self->_dataSharingSettings)
  {
    v12 = [(DIMSchemaDIMDeviceFixedContext *)self dataSharingSettings];
    v13 = [v12 dictionaryRepresentation];
    if (v13)
    {
      [v3 setObject:v13 forKeyedSubscript:@"dataSharingSettings"];
    }

    else
    {
      v14 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v14 forKeyedSubscript:@"dataSharingSettings"];
    }
  }

  if (self->_deviceType)
  {
    v15 = [(DIMSchemaDIMDeviceFixedContext *)self deviceType];
    v16 = [v15 copy];
    [v3 setObject:v16 forKeyedSubscript:@"deviceType"];
  }

  if (self->_effectiveSystemLanguage)
  {
    v17 = [(DIMSchemaDIMDeviceFixedContext *)self effectiveSystemLanguage];
    v18 = [v17 copy];
    [v3 setObject:v18 forKeyedSubscript:@"effectiveSystemLanguage"];
  }

  if (self->_entitySyncSettings)
  {
    v19 = [(DIMSchemaDIMDeviceFixedContext *)self entitySyncSettings];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"entitySyncSettings"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"entitySyncSettings"];
    }
  }

  v22 = *(&self->_isLongLivedIDUploadDisabled + 1);
  if ((v22 & 0x100) != 0)
  {
    v27 = [(DIMSchemaDIMDeviceFixedContext *)self homeKitConfiguration];
    v28 = @"HOMEKITCONFIGURATION_UNKNOWN";
    if (v27 == 1)
    {
      v28 = @"HOMEKITCONFIGURATION_HH1";
    }

    if (v27 == 2)
    {
      v29 = @"HOMEKITCONFIGURATION_HH2";
    }

    else
    {
      v29 = v28;
    }

    [v3 setObject:v29 forKeyedSubscript:@"homeKitConfiguration"];
    v22 = *(&self->_isLongLivedIDUploadDisabled + 1);
    if ((v22 & 0x800) == 0)
    {
LABEL_31:
      if ((v22 & 0x40) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_47;
    }
  }

  else if ((*(&self->_isLongLivedIDUploadDisabled + 1) & 0x800) == 0)
  {
    goto LABEL_31;
  }

  v30 = [MEMORY[0x1E696AD98] numberWithBool:{-[DIMSchemaDIMDeviceFixedContext isLongLivedIDUploadDisabled](self, "isLongLivedIDUploadDisabled")}];
  [v3 setObject:v30 forKeyedSubscript:@"isLongLivedIDUploadDisabled"];

  v22 = *(&self->_isLongLivedIDUploadDisabled + 1);
  if ((v22 & 0x40) == 0)
  {
LABEL_32:
    if ((v22 & 0x10) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_47:
  v31 = [MEMORY[0x1E696AD98] numberWithBool:{-[DIMSchemaDIMDeviceFixedContext isLowPowerModeEnabled](self, "isLowPowerModeEnabled")}];
  [v3 setObject:v31 forKeyedSubscript:@"isLowPowerModeEnabled"];

  if ((*(&self->_isLongLivedIDUploadDisabled + 1) & 0x10) != 0)
  {
LABEL_33:
    v23 = [MEMORY[0x1E696AD98] numberWithBool:{-[DIMSchemaDIMDeviceFixedContext isStoreDemoMode](self, "isStoreDemoMode")}];
    [v3 setObject:v23 forKeyedSubscript:@"isStoreDemoMode"];
  }

LABEL_34:
  if (self->_preferredLanguages)
  {
    v24 = [(DIMSchemaDIMDeviceFixedContext *)self preferredLanguages];
    v25 = [v24 copy];
    [v3 setObject:v25 forKeyedSubscript:@"preferredLanguages"];
  }

  v26 = *(&self->_isLongLivedIDUploadDisabled + 1);
  if ((v26 & 0x80) != 0)
  {
    v32 = [(DIMSchemaDIMDeviceFixedContext *)self programCode]- 1;
    if (v32 > 4)
    {
      v33 = @"PROGRAMCODE_UNKNOWN";
    }

    else
    {
      v33 = off_1E78D3FC8[v32];
    }

    [v3 setObject:v33 forKeyedSubscript:@"programCode"];
    v26 = *(&self->_isLongLivedIDUploadDisabled + 1);
    if ((v26 & 0x400) == 0)
    {
LABEL_38:
      if ((v26 & 2) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_59;
    }
  }

  else if ((*(&self->_isLongLivedIDUploadDisabled + 1) & 0x400) == 0)
  {
    goto LABEL_38;
  }

  v34 = [(DIMSchemaDIMDeviceFixedContext *)self searchDataOptOutState];
  v35 = @"SEARCHDATAOPTOUTSTATE_UNKNOWN";
  if (v34 == 1)
  {
    v35 = @"SEARCHDATAOPTOUTSTATE_OPTED_IN";
  }

  if (v34 == 2)
  {
    v36 = @"SEARCHDATAOPTOUTSTATE_OPTED_OUT";
  }

  else
  {
    v36 = v35;
  }

  [v3 setObject:v36 forKeyedSubscript:@"searchDataOptOutState"];
  if ((*(&self->_isLongLivedIDUploadDisabled + 1) & 2) != 0)
  {
LABEL_59:
    v37 = [(DIMSchemaDIMDeviceFixedContext *)self siriInputLocale]- 1;
    if (v37 > 0x3D)
    {
      v38 = @"LOCALE_UNKNOWN_LOCALE";
    }

    else
    {
      v38 = off_1E78D3FF0[v37];
    }

    [v3 setObject:v38 forKeyedSubscript:@"siriInputLocale"];
  }

LABEL_63:
  if (self->_siriInputLocaleV2)
  {
    v39 = [(DIMSchemaDIMDeviceFixedContext *)self siriInputLocaleV2];
    v40 = [v39 dictionaryRepresentation];
    if (v40)
    {
      [v3 setObject:v40 forKeyedSubscript:@"siriInputLocaleV2"];
    }

    else
    {
      v41 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v41 forKeyedSubscript:@"siriInputLocaleV2"];
    }
  }

  if (self->_siriVoiceSettings)
  {
    v42 = [(DIMSchemaDIMDeviceFixedContext *)self siriVoiceSettings];
    v43 = [v42 dictionaryRepresentation];
    if (v43)
    {
      [v3 setObject:v43 forKeyedSubscript:@"siriVoiceSettings"];
    }

    else
    {
      v44 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v44 forKeyedSubscript:@"siriVoiceSettings"];
    }
  }

  if (self->_systemBuild)
  {
    v45 = [(DIMSchemaDIMDeviceFixedContext *)self systemBuild];
    v46 = [v45 copy];
    [v3 setObject:v46 forKeyedSubscript:@"systemBuild"];
  }

  if (*(&self->_isLongLivedIDUploadDisabled + 1))
  {
    v47 = [(DIMSchemaDIMDeviceFixedContext *)self systemLocale]- 1;
    if (v47 > 0x3D)
    {
      v48 = @"LOCALE_UNKNOWN_LOCALE";
    }

    else
    {
      v48 = off_1E78D3FF0[v47];
    }

    [v3 setObject:v48 forKeyedSubscript:@"systemLocale"];
  }

  if (self->_systemLocaleV2)
  {
    v49 = [(DIMSchemaDIMDeviceFixedContext *)self systemLocaleV2];
    v50 = [v49 dictionaryRepresentation];
    if (v50)
    {
      [v3 setObject:v50 forKeyedSubscript:@"systemLocaleV2"];
    }

    else
    {
      v51 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v51 forKeyedSubscript:@"systemLocaleV2"];
    }
  }

  if ((*(&self->_isLongLivedIDUploadDisabled + 1) & 0x20) != 0)
  {
    v52 = MEMORY[0x1E696AD98];
    [(DIMSchemaDIMDeviceFixedContext *)self timeIntervalSince1970];
    v53 = [v52 numberWithDouble:?];
    [v3 setObject:v53 forKeyedSubscript:@"timeIntervalSince1970"];
  }

  if (self->_timezoneOffset)
  {
    v54 = [(DIMSchemaDIMDeviceFixedContext *)self timezoneOffset];
    v55 = [v54 copy];
    [v3 setObject:v55 forKeyedSubscript:@"timezoneOffset"];
  }

  if (self->_watchDeviceAttributes)
  {
    v56 = [(DIMSchemaDIMDeviceFixedContext *)self watchDeviceAttributes];
    v57 = [v56 dictionaryRepresentation];
    if (v57)
    {
      [v3 setObject:v57 forKeyedSubscript:@"watchDeviceAttributes"];
    }

    else
    {
      v58 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v58 forKeyedSubscript:@"watchDeviceAttributes"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];
  v59 = v3;

  return v3;
}

- (unint64_t)hash
{
  v3 = *(&self->_isLongLivedIDUploadDisabled + 1);
  if (v3)
  {
    v35 = 2654435761 * self->_systemLocale;
    if ((v3 & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v35 = 0;
    if ((v3 & 2) != 0)
    {
LABEL_3:
      v34 = 2654435761 * self->_siriInputLocale;
      goto LABEL_6;
    }
  }

  v34 = 0;
LABEL_6:
  v33 = [(SISchemaVoiceSettings *)self->_siriVoiceSettings hash];
  if ((*(&self->_isLongLivedIDUploadDisabled + 1) & 4) != 0)
  {
    v32 = 2654435761 * self->_dataSharingOptInState;
  }

  else
  {
    v32 = 0;
  }

  v31 = [(NSString *)self->_timezoneOffset hash];
  if ((*(&self->_isLongLivedIDUploadDisabled + 1) & 8) != 0)
  {
    v30 = 2654435761 * self->_countryCode;
  }

  else
  {
    v30 = 0;
  }

  v29 = [(NSString *)self->_deviceType hash];
  v28 = [(NSString *)self->_systemBuild hash];
  v6 = *(&self->_isLongLivedIDUploadDisabled + 1);
  if ((v6 & 0x10) != 0)
  {
    v27 = 2654435761 * self->_isStoreDemoMode;
    if ((v6 & 0x20) != 0)
    {
      goto LABEL_14;
    }

LABEL_19:
    v10 = 0;
    goto LABEL_20;
  }

  v27 = 0;
  if ((v6 & 0x20) == 0)
  {
    goto LABEL_19;
  }

LABEL_14:
  timeIntervalSince1970 = self->_timeIntervalSince1970;
  if (timeIntervalSince1970 < 0.0)
  {
    timeIntervalSince1970 = -timeIntervalSince1970;
  }

  *v4.i64 = floor(timeIntervalSince1970 + 0.5);
  v8 = (timeIntervalSince1970 - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  v10 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v5, v4).i64;
  if (v8 >= 0.0)
  {
    if (v8 > 0.0)
    {
      v10 += v8;
    }
  }

  else
  {
    v10 -= fabs(v8);
  }

LABEL_20:
  v26 = v10;
  v25 = [(DIMSchemaDIMWatchDeviceAttributes *)self->_watchDeviceAttributes hash];
  if ((*(&self->_isLongLivedIDUploadDisabled + 1) & 0x40) != 0)
  {
    v24 = 2654435761 * self->_isLowPowerModeEnabled;
  }

  else
  {
    v24 = 0;
  }

  v23 = [(SISchemaISOLocale *)self->_systemLocaleV2 hash];
  v11 = [(SISchemaISOLocale *)self->_siriInputLocaleV2 hash];
  if ((*(&self->_isLongLivedIDUploadDisabled + 1) & 0x80) != 0)
  {
    v12 = 2654435761 * self->_programCode;
  }

  else
  {
    v12 = 0;
  }

  v13 = [(NSString *)self->_dataCollectionId hash];
  v14 = [(NSString *)self->_effectiveSystemLanguage hash];
  v15 = [(NSArray *)self->_preferredLanguages hash];
  if ((*(&self->_isLongLivedIDUploadDisabled + 1) & 0x100) != 0)
  {
    v16 = 2654435761 * self->_homeKitConfiguration;
  }

  else
  {
    v16 = 0;
  }

  v17 = [(DIMSchemaEntitySyncSettings *)self->_entitySyncSettings hash];
  v18 = [(DIMSchemaDIMDataSharingSettings *)self->_dataSharingSettings hash];
  if ((*(&self->_isLongLivedIDUploadDisabled + 1) & 0x200) == 0)
  {
    v19 = 0;
    if ((*(&self->_isLongLivedIDUploadDisabled + 1) & 0x400) != 0)
    {
      goto LABEL_31;
    }

LABEL_34:
    v20 = 0;
    if ((*(&self->_isLongLivedIDUploadDisabled + 1) & 0x800) != 0)
    {
      goto LABEL_32;
    }

LABEL_35:
    v21 = 0;
    return v34 ^ v35 ^ v32 ^ v33 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21;
  }

  v19 = 2654435761 * self->_availableDictationKeyboards;
  if ((*(&self->_isLongLivedIDUploadDisabled + 1) & 0x400) == 0)
  {
    goto LABEL_34;
  }

LABEL_31:
  v20 = 2654435761 * self->_searchDataOptOutState;
  if ((*(&self->_isLongLivedIDUploadDisabled + 1) & 0x800) == 0)
  {
    goto LABEL_35;
  }

LABEL_32:
  v21 = 2654435761 * self->_isLongLivedIDUploadDisabled;
  return v34 ^ v35 ^ v32 ^ v33 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_92;
  }

  v5 = *&self->_hasEffectiveSystemLanguage;
  if (v5 != [v4 whichDeviceattributes])
  {
    goto LABEL_92;
  }

  v6 = *(&self->_isLongLivedIDUploadDisabled + 1);
  v7 = *(v4 + 177);
  if ((v6 & 1) != (v7 & 1))
  {
    goto LABEL_92;
  }

  if (v6)
  {
    systemLocale = self->_systemLocale;
    if (systemLocale != [v4 systemLocale])
    {
      goto LABEL_92;
    }

    v6 = *(&self->_isLongLivedIDUploadDisabled + 1);
    v7 = *(v4 + 177);
  }

  v9 = (v6 >> 1) & 1;
  if (v9 != ((v7 >> 1) & 1))
  {
    goto LABEL_92;
  }

  if (v9)
  {
    siriInputLocale = self->_siriInputLocale;
    if (siriInputLocale != [v4 siriInputLocale])
    {
      goto LABEL_92;
    }
  }

  v11 = [(DIMSchemaDIMDeviceFixedContext *)self siriVoiceSettings];
  v12 = [v4 siriVoiceSettings];
  if ((v11 != 0) == (v12 == 0))
  {
    goto LABEL_91;
  }

  v13 = [(DIMSchemaDIMDeviceFixedContext *)self siriVoiceSettings];
  if (v13)
  {
    v14 = v13;
    v15 = [(DIMSchemaDIMDeviceFixedContext *)self siriVoiceSettings];
    v16 = [v4 siriVoiceSettings];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_92;
    }
  }

  else
  {
  }

  v18 = (*(&self->_isLongLivedIDUploadDisabled + 1) >> 2) & 1;
  if (v18 != ((*(v4 + 177) >> 2) & 1))
  {
    goto LABEL_92;
  }

  if (v18)
  {
    dataSharingOptInState = self->_dataSharingOptInState;
    if (dataSharingOptInState != [v4 dataSharingOptInState])
    {
      goto LABEL_92;
    }
  }

  v11 = [(DIMSchemaDIMDeviceFixedContext *)self timezoneOffset];
  v12 = [v4 timezoneOffset];
  if ((v11 != 0) == (v12 == 0))
  {
    goto LABEL_91;
  }

  v20 = [(DIMSchemaDIMDeviceFixedContext *)self timezoneOffset];
  if (v20)
  {
    v21 = v20;
    v22 = [(DIMSchemaDIMDeviceFixedContext *)self timezoneOffset];
    v23 = [v4 timezoneOffset];
    v24 = [v22 isEqual:v23];

    if (!v24)
    {
      goto LABEL_92;
    }
  }

  else
  {
  }

  v25 = (*(&self->_isLongLivedIDUploadDisabled + 1) >> 3) & 1;
  if (v25 != ((*(v4 + 177) >> 3) & 1))
  {
    goto LABEL_92;
  }

  if (v25)
  {
    countryCode = self->_countryCode;
    if (countryCode != [v4 countryCode])
    {
      goto LABEL_92;
    }
  }

  v11 = [(DIMSchemaDIMDeviceFixedContext *)self deviceType];
  v12 = [v4 deviceType];
  if ((v11 != 0) == (v12 == 0))
  {
    goto LABEL_91;
  }

  v27 = [(DIMSchemaDIMDeviceFixedContext *)self deviceType];
  if (v27)
  {
    v28 = v27;
    v29 = [(DIMSchemaDIMDeviceFixedContext *)self deviceType];
    v30 = [v4 deviceType];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_92;
    }
  }

  else
  {
  }

  v11 = [(DIMSchemaDIMDeviceFixedContext *)self systemBuild];
  v12 = [v4 systemBuild];
  if ((v11 != 0) == (v12 == 0))
  {
    goto LABEL_91;
  }

  v32 = [(DIMSchemaDIMDeviceFixedContext *)self systemBuild];
  if (v32)
  {
    v33 = v32;
    v34 = [(DIMSchemaDIMDeviceFixedContext *)self systemBuild];
    v35 = [v4 systemBuild];
    v36 = [v34 isEqual:v35];

    if (!v36)
    {
      goto LABEL_92;
    }
  }

  else
  {
  }

  v37 = *(&self->_isLongLivedIDUploadDisabled + 1);
  v38 = (v37 >> 4) & 1;
  v39 = *(v4 + 177);
  if (v38 != ((v39 >> 4) & 1))
  {
    goto LABEL_92;
  }

  if (v38)
  {
    isStoreDemoMode = self->_isStoreDemoMode;
    if (isStoreDemoMode != [v4 isStoreDemoMode])
    {
      goto LABEL_92;
    }

    v37 = *(&self->_isLongLivedIDUploadDisabled + 1);
    v39 = *(v4 + 177);
  }

  v41 = (v37 >> 5) & 1;
  if (v41 != ((v39 >> 5) & 1))
  {
    goto LABEL_92;
  }

  if (v41)
  {
    timeIntervalSince1970 = self->_timeIntervalSince1970;
    [v4 timeIntervalSince1970];
    if (timeIntervalSince1970 != v43)
    {
      goto LABEL_92;
    }
  }

  v11 = [(DIMSchemaDIMDeviceFixedContext *)self watchDeviceAttributes];
  v12 = [v4 watchDeviceAttributes];
  if ((v11 != 0) == (v12 == 0))
  {
    goto LABEL_91;
  }

  v44 = [(DIMSchemaDIMDeviceFixedContext *)self watchDeviceAttributes];
  if (v44)
  {
    v45 = v44;
    v46 = [(DIMSchemaDIMDeviceFixedContext *)self watchDeviceAttributes];
    v47 = [v4 watchDeviceAttributes];
    v48 = [v46 isEqual:v47];

    if (!v48)
    {
      goto LABEL_92;
    }
  }

  else
  {
  }

  v49 = (*(&self->_isLongLivedIDUploadDisabled + 1) >> 6) & 1;
  if (v49 != ((*(v4 + 177) >> 6) & 1))
  {
    goto LABEL_92;
  }

  if (v49)
  {
    isLowPowerModeEnabled = self->_isLowPowerModeEnabled;
    if (isLowPowerModeEnabled != [v4 isLowPowerModeEnabled])
    {
      goto LABEL_92;
    }
  }

  v11 = [(DIMSchemaDIMDeviceFixedContext *)self systemLocaleV2];
  v12 = [v4 systemLocaleV2];
  if ((v11 != 0) == (v12 == 0))
  {
    goto LABEL_91;
  }

  v51 = [(DIMSchemaDIMDeviceFixedContext *)self systemLocaleV2];
  if (v51)
  {
    v52 = v51;
    v53 = [(DIMSchemaDIMDeviceFixedContext *)self systemLocaleV2];
    v54 = [v4 systemLocaleV2];
    v55 = [v53 isEqual:v54];

    if (!v55)
    {
      goto LABEL_92;
    }
  }

  else
  {
  }

  v11 = [(DIMSchemaDIMDeviceFixedContext *)self siriInputLocaleV2];
  v12 = [v4 siriInputLocaleV2];
  if ((v11 != 0) == (v12 == 0))
  {
    goto LABEL_91;
  }

  v56 = [(DIMSchemaDIMDeviceFixedContext *)self siriInputLocaleV2];
  if (v56)
  {
    v57 = v56;
    v58 = [(DIMSchemaDIMDeviceFixedContext *)self siriInputLocaleV2];
    v59 = [v4 siriInputLocaleV2];
    v60 = [v58 isEqual:v59];

    if (!v60)
    {
      goto LABEL_92;
    }
  }

  else
  {
  }

  v61 = (*(&self->_isLongLivedIDUploadDisabled + 1) >> 7) & 1;
  if (v61 != ((*(v4 + 177) >> 7) & 1))
  {
    goto LABEL_92;
  }

  if (v61)
  {
    programCode = self->_programCode;
    if (programCode != [v4 programCode])
    {
      goto LABEL_92;
    }
  }

  v11 = [(DIMSchemaDIMDeviceFixedContext *)self dataCollectionId];
  v12 = [v4 dataCollectionId];
  if ((v11 != 0) == (v12 == 0))
  {
    goto LABEL_91;
  }

  v63 = [(DIMSchemaDIMDeviceFixedContext *)self dataCollectionId];
  if (v63)
  {
    v64 = v63;
    v65 = [(DIMSchemaDIMDeviceFixedContext *)self dataCollectionId];
    v66 = [v4 dataCollectionId];
    v67 = [v65 isEqual:v66];

    if (!v67)
    {
      goto LABEL_92;
    }
  }

  else
  {
  }

  v11 = [(DIMSchemaDIMDeviceFixedContext *)self effectiveSystemLanguage];
  v12 = [v4 effectiveSystemLanguage];
  if ((v11 != 0) == (v12 == 0))
  {
    goto LABEL_91;
  }

  v68 = [(DIMSchemaDIMDeviceFixedContext *)self effectiveSystemLanguage];
  if (v68)
  {
    v69 = v68;
    v70 = [(DIMSchemaDIMDeviceFixedContext *)self effectiveSystemLanguage];
    v71 = [v4 effectiveSystemLanguage];
    v72 = [v70 isEqual:v71];

    if (!v72)
    {
      goto LABEL_92;
    }
  }

  else
  {
  }

  v11 = [(DIMSchemaDIMDeviceFixedContext *)self preferredLanguages];
  v12 = [v4 preferredLanguages];
  if ((v11 != 0) == (v12 == 0))
  {
    goto LABEL_91;
  }

  v73 = [(DIMSchemaDIMDeviceFixedContext *)self preferredLanguages];
  if (v73)
  {
    v74 = v73;
    v75 = [(DIMSchemaDIMDeviceFixedContext *)self preferredLanguages];
    v76 = [v4 preferredLanguages];
    v77 = [v75 isEqual:v76];

    if (!v77)
    {
      goto LABEL_92;
    }
  }

  else
  {
  }

  v78 = HIBYTE(*(&self->_isLongLivedIDUploadDisabled + 1)) & 1;
  if (v78 != (HIBYTE(*(v4 + 177)) & 1))
  {
    goto LABEL_92;
  }

  if (v78)
  {
    homeKitConfiguration = self->_homeKitConfiguration;
    if (homeKitConfiguration != [v4 homeKitConfiguration])
    {
      goto LABEL_92;
    }
  }

  v11 = [(DIMSchemaDIMDeviceFixedContext *)self entitySyncSettings];
  v12 = [v4 entitySyncSettings];
  if ((v11 != 0) == (v12 == 0))
  {
    goto LABEL_91;
  }

  v80 = [(DIMSchemaDIMDeviceFixedContext *)self entitySyncSettings];
  if (v80)
  {
    v81 = v80;
    v82 = [(DIMSchemaDIMDeviceFixedContext *)self entitySyncSettings];
    v83 = [v4 entitySyncSettings];
    v84 = [v82 isEqual:v83];

    if (!v84)
    {
      goto LABEL_92;
    }
  }

  else
  {
  }

  v11 = [(DIMSchemaDIMDeviceFixedContext *)self dataSharingSettings];
  v12 = [v4 dataSharingSettings];
  if ((v11 != 0) == (v12 == 0))
  {
LABEL_91:

    goto LABEL_92;
  }

  v85 = [(DIMSchemaDIMDeviceFixedContext *)self dataSharingSettings];
  if (v85)
  {
    v86 = v85;
    v87 = [(DIMSchemaDIMDeviceFixedContext *)self dataSharingSettings];
    v88 = [v4 dataSharingSettings];
    v89 = [v87 isEqual:v88];

    if (!v89)
    {
      goto LABEL_92;
    }
  }

  else
  {
  }

  v92 = *(&self->_isLongLivedIDUploadDisabled + 1);
  v93 = (v92 >> 9) & 1;
  v94 = *(v4 + 177);
  if (v93 == ((v94 >> 9) & 1))
  {
    if (v93)
    {
      availableDictationKeyboards = self->_availableDictationKeyboards;
      if (availableDictationKeyboards != [v4 availableDictationKeyboards])
      {
        goto LABEL_92;
      }

      v92 = *(&self->_isLongLivedIDUploadDisabled + 1);
      v94 = *(v4 + 177);
    }

    v96 = (v92 >> 10) & 1;
    if (v96 == ((v94 >> 10) & 1))
    {
      if (v96)
      {
        searchDataOptOutState = self->_searchDataOptOutState;
        if (searchDataOptOutState != [v4 searchDataOptOutState])
        {
          goto LABEL_92;
        }

        v92 = *(&self->_isLongLivedIDUploadDisabled + 1);
        v94 = *(v4 + 177);
      }

      v98 = (v92 >> 11) & 1;
      if (v98 == ((v94 >> 11) & 1))
      {
        if (!v98 || (isLongLivedIDUploadDisabled = self->_isLongLivedIDUploadDisabled, isLongLivedIDUploadDisabled == [v4 isLongLivedIDUploadDisabled]))
        {
          v90 = 1;
          goto LABEL_93;
        }
      }
    }
  }

LABEL_92:
  v90 = 0;
LABEL_93:

  return v90;
}

- (void)writeTo:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *(&self->_isLongLivedIDUploadDisabled + 1);
  if (v5)
  {
    PBDataWriterWriteInt32Field();
    v5 = *(&self->_isLongLivedIDUploadDisabled + 1);
  }

  if ((v5 & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  v6 = [(DIMSchemaDIMDeviceFixedContext *)self siriVoiceSettings];

  if (v6)
  {
    v7 = [(DIMSchemaDIMDeviceFixedContext *)self siriVoiceSettings];
    PBDataWriterWriteSubmessage();
  }

  if ((*(&self->_isLongLivedIDUploadDisabled + 1) & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  v8 = [(DIMSchemaDIMDeviceFixedContext *)self timezoneOffset];

  if (v8)
  {
    PBDataWriterWriteStringField();
  }

  if ((*(&self->_isLongLivedIDUploadDisabled + 1) & 8) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  v9 = [(DIMSchemaDIMDeviceFixedContext *)self deviceType];

  if (v9)
  {
    PBDataWriterWriteStringField();
  }

  v10 = [(DIMSchemaDIMDeviceFixedContext *)self systemBuild];

  if (v10)
  {
    PBDataWriterWriteStringField();
  }

  v11 = *(&self->_isLongLivedIDUploadDisabled + 1);
  if ((v11 & 0x10) != 0)
  {
    PBDataWriterWriteBOOLField();
    v11 = *(&self->_isLongLivedIDUploadDisabled + 1);
  }

  if ((v11 & 0x20) != 0)
  {
    PBDataWriterWriteDoubleField();
  }

  v12 = [(DIMSchemaDIMDeviceFixedContext *)self watchDeviceAttributes];

  if (v12)
  {
    v13 = [(DIMSchemaDIMDeviceFixedContext *)self watchDeviceAttributes];
    PBDataWriterWriteSubmessage();
  }

  if ((*(&self->_isLongLivedIDUploadDisabled + 1) & 0x40) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  v14 = [(DIMSchemaDIMDeviceFixedContext *)self systemLocaleV2];

  if (v14)
  {
    v15 = [(DIMSchemaDIMDeviceFixedContext *)self systemLocaleV2];
    PBDataWriterWriteSubmessage();
  }

  v16 = [(DIMSchemaDIMDeviceFixedContext *)self siriInputLocaleV2];

  if (v16)
  {
    v17 = [(DIMSchemaDIMDeviceFixedContext *)self siriInputLocaleV2];
    PBDataWriterWriteSubmessage();
  }

  if ((*(&self->_isLongLivedIDUploadDisabled + 1) & 0x80) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  v18 = [(DIMSchemaDIMDeviceFixedContext *)self dataCollectionId];

  if (v18)
  {
    PBDataWriterWriteStringField();
  }

  v19 = [(DIMSchemaDIMDeviceFixedContext *)self effectiveSystemLanguage];

  if (v19)
  {
    PBDataWriterWriteStringField();
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v20 = self->_preferredLanguages;
  v21 = [(NSArray *)v20 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v31;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v31 != v23)
        {
          objc_enumerationMutation(v20);
        }

        PBDataWriterWriteStringField();
      }

      v22 = [(NSArray *)v20 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v22);
  }

  if ((*(&self->_isLongLivedIDUploadDisabled + 1) & 0x100) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  v25 = [(DIMSchemaDIMDeviceFixedContext *)self entitySyncSettings];

  if (v25)
  {
    v26 = [(DIMSchemaDIMDeviceFixedContext *)self entitySyncSettings];
    PBDataWriterWriteSubmessage();
  }

  v27 = [(DIMSchemaDIMDeviceFixedContext *)self dataSharingSettings];

  if (v27)
  {
    v28 = [(DIMSchemaDIMDeviceFixedContext *)self dataSharingSettings];
    PBDataWriterWriteSubmessage();
  }

  v29 = *(&self->_isLongLivedIDUploadDisabled + 1);
  if ((v29 & 0x200) == 0)
  {
    if ((*(&self->_isLongLivedIDUploadDisabled + 1) & 0x400) == 0)
    {
      goto LABEL_50;
    }

LABEL_54:
    PBDataWriterWriteInt32Field();
    if ((*(&self->_isLongLivedIDUploadDisabled + 1) & 0x800) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

  PBDataWriterWriteUint32Field();
  v29 = *(&self->_isLongLivedIDUploadDisabled + 1);
  if ((v29 & 0x400) != 0)
  {
    goto LABEL_54;
  }

LABEL_50:
  if ((v29 & 0x800) != 0)
  {
LABEL_51:
    PBDataWriterWriteBOOLField();
  }

LABEL_52:
}

- (void)setHasIsLongLivedIDUploadDisabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isLongLivedIDUploadDisabled + 1) = *(&self->_isLongLivedIDUploadDisabled + 1) & 0xF7FF | v3;
}

- (void)setHasSearchDataOptOutState:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isLongLivedIDUploadDisabled + 1) = *(&self->_isLongLivedIDUploadDisabled + 1) & 0xFBFF | v3;
}

- (void)setHasAvailableDictationKeyboards:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isLongLivedIDUploadDisabled + 1) = *(&self->_isLongLivedIDUploadDisabled + 1) & 0xFDFF | v3;
}

- (void)setHasHomeKitConfiguration:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isLongLivedIDUploadDisabled + 1) = *(&self->_isLongLivedIDUploadDisabled + 1) & 0xFEFF | v3;
}

- (void)addPreferredLanguages:(id)a3
{
  v4 = a3;
  preferredLanguages = self->_preferredLanguages;
  v8 = v4;
  if (!preferredLanguages)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_preferredLanguages;
    self->_preferredLanguages = v6;

    v4 = v8;
    preferredLanguages = self->_preferredLanguages;
  }

  [(NSArray *)preferredLanguages addObject:v4];
}

- (void)setHasProgramCode:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isLongLivedIDUploadDisabled + 1) = *(&self->_isLongLivedIDUploadDisabled + 1) & 0xFF7F | v3;
}

- (void)setHasIsLowPowerModeEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isLongLivedIDUploadDisabled + 1) = *(&self->_isLongLivedIDUploadDisabled + 1) & 0xFFBF | v3;
}

- (void)deleteWatchDeviceAttributes
{
  if (*&self->_hasEffectiveSystemLanguage == 100)
  {
    *&self->_hasEffectiveSystemLanguage = 0;
    self->_watchDeviceAttributes = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (DIMSchemaDIMWatchDeviceAttributes)watchDeviceAttributes
{
  if (*&self->_hasEffectiveSystemLanguage == 100)
  {
    v3 = self->_watchDeviceAttributes;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setWatchDeviceAttributes:(id)a3
{
  v3 = 100;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_hasEffectiveSystemLanguage = v3;
  objc_storeStrong(&self->_watchDeviceAttributes, a3);
}

- (void)setHasTimeIntervalSince1970:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isLongLivedIDUploadDisabled + 1) = *(&self->_isLongLivedIDUploadDisabled + 1) & 0xFFDF | v3;
}

- (void)setHasIsStoreDemoMode:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isLongLivedIDUploadDisabled + 1) = *(&self->_isLongLivedIDUploadDisabled + 1) & 0xFFEF | v3;
}

- (void)setHasCountryCode:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isLongLivedIDUploadDisabled + 1) = *(&self->_isLongLivedIDUploadDisabled + 1) & 0xFFF7 | v3;
}

- (void)setHasDataSharingOptInState:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isLongLivedIDUploadDisabled + 1) = *(&self->_isLongLivedIDUploadDisabled + 1) & 0xFFFB | v3;
}

- (void)setHasSiriInputLocale:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isLongLivedIDUploadDisabled + 1) = *(&self->_isLongLivedIDUploadDisabled + 1) & 0xFFFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = DIMSchemaDIMDeviceFixedContext;
  v5 = [(SISchemaInstrumentationMessage *)&v25 applySensitiveConditionsPolicy:v4];
  v6 = [(DIMSchemaDIMDeviceFixedContext *)self siriVoiceSettings];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(DIMSchemaDIMDeviceFixedContext *)self deleteSiriVoiceSettings];
  }

  v9 = [(DIMSchemaDIMDeviceFixedContext *)self watchDeviceAttributes];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(DIMSchemaDIMDeviceFixedContext *)self deleteWatchDeviceAttributes];
  }

  v12 = [(DIMSchemaDIMDeviceFixedContext *)self systemLocaleV2];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(DIMSchemaDIMDeviceFixedContext *)self deleteSystemLocaleV2];
  }

  v15 = [(DIMSchemaDIMDeviceFixedContext *)self siriInputLocaleV2];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(DIMSchemaDIMDeviceFixedContext *)self deleteSiriInputLocaleV2];
  }

  v18 = [(DIMSchemaDIMDeviceFixedContext *)self entitySyncSettings];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(DIMSchemaDIMDeviceFixedContext *)self deleteEntitySyncSettings];
  }

  v21 = [(DIMSchemaDIMDeviceFixedContext *)self dataSharingSettings];
  v22 = [v21 applySensitiveConditionsPolicy:v4];
  v23 = [v22 suppressMessage];

  if (v23)
  {
    [(DIMSchemaDIMDeviceFixedContext *)self deleteDataSharingSettings];
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