@interface DIMSchemaDIMDeviceFixedContext
- (BOOL)isEqual:(id)equal;
- (DIMSchemaDIMDeviceFixedContext)initWithDictionary:(id)dictionary;
- (DIMSchemaDIMDeviceFixedContext)initWithJSON:(id)n;
- (DIMSchemaDIMWatchDeviceAttributes)watchDeviceAttributes;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addPreferredLanguages:(id)languages;
- (void)deleteWatchDeviceAttributes;
- (void)setHasAvailableDictationKeyboards:(BOOL)keyboards;
- (void)setHasCountryCode:(BOOL)code;
- (void)setHasDataSharingOptInState:(BOOL)state;
- (void)setHasHomeKitConfiguration:(BOOL)configuration;
- (void)setHasIsLongLivedIDUploadDisabled:(BOOL)disabled;
- (void)setHasIsLowPowerModeEnabled:(BOOL)enabled;
- (void)setHasIsStoreDemoMode:(BOOL)mode;
- (void)setHasProgramCode:(BOOL)code;
- (void)setHasSearchDataOptOutState:(BOOL)state;
- (void)setHasSiriInputLocale:(BOOL)locale;
- (void)setHasTimeIntervalSince1970:(BOOL)since1970;
- (void)setWatchDeviceAttributes:(id)attributes;
- (void)writeTo:(id)to;
@end

@implementation DIMSchemaDIMDeviceFixedContext

- (DIMSchemaDIMDeviceFixedContext)initWithDictionary:(id)dictionary
{
  v72 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v70.receiver = self;
  v70.super_class = DIMSchemaDIMDeviceFixedContext;
  v5 = [(DIMSchemaDIMDeviceFixedContext *)&v70 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"systemLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DIMSchemaDIMDeviceFixedContext setSystemLocale:](v5, "setSystemLocale:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"siriInputLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DIMSchemaDIMDeviceFixedContext setSiriInputLocale:](v5, "setSiriInputLocale:", [v7 intValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"siriVoiceSettings"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaVoiceSettings alloc] initWithDictionary:v8];
      [(DIMSchemaDIMDeviceFixedContext *)v5 setSiriVoiceSettings:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"dataSharingOptInState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DIMSchemaDIMDeviceFixedContext setDataSharingOptInState:](v5, "setDataSharingOptInState:", [v10 intValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"timezoneOffset"];
    objc_opt_class();
    v65 = v11;
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 copy];
      [(DIMSchemaDIMDeviceFixedContext *)v5 setTimezoneOffset:v12];
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"countryCode"];
    objc_opt_class();
    v64 = v13;
    if (objc_opt_isKindOfClass())
    {
      -[DIMSchemaDIMDeviceFixedContext setCountryCode:](v5, "setCountryCode:", [v13 intValue]);
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"deviceType"];
    objc_opt_class();
    v63 = v14;
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(DIMSchemaDIMDeviceFixedContext *)v5 setDeviceType:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"systemBuild"];
    objc_opt_class();
    v62 = v16;
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(DIMSchemaDIMDeviceFixedContext *)v5 setSystemBuild:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"isStoreDemoMode"];
    objc_opt_class();
    v61 = v18;
    if (objc_opt_isKindOfClass())
    {
      -[DIMSchemaDIMDeviceFixedContext setIsStoreDemoMode:](v5, "setIsStoreDemoMode:", [v18 BOOLValue]);
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"timeIntervalSince1970"];
    objc_opt_class();
    v60 = v19;
    if (objc_opt_isKindOfClass())
    {
      [v19 doubleValue];
      [(DIMSchemaDIMDeviceFixedContext *)v5 setTimeIntervalSince1970:?];
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"watchDeviceAttributes"];
    objc_opt_class();
    v59 = v20;
    if (objc_opt_isKindOfClass())
    {
      v21 = [[DIMSchemaDIMWatchDeviceAttributes alloc] initWithDictionary:v20];
      [(DIMSchemaDIMDeviceFixedContext *)v5 setWatchDeviceAttributes:v21];
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"isLowPowerModeEnabled"];
    objc_opt_class();
    v58 = v22;
    if (objc_opt_isKindOfClass())
    {
      -[DIMSchemaDIMDeviceFixedContext setIsLowPowerModeEnabled:](v5, "setIsLowPowerModeEnabled:", [v22 BOOLValue]);
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"systemLocaleV2"];
    objc_opt_class();
    v57 = v23;
    if (objc_opt_isKindOfClass())
    {
      v24 = [[SISchemaISOLocale alloc] initWithDictionary:v23];
      [(DIMSchemaDIMDeviceFixedContext *)v5 setSystemLocaleV2:v24];
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"siriInputLocaleV2"];
    objc_opt_class();
    v56 = v25;
    if (objc_opt_isKindOfClass())
    {
      v26 = [[SISchemaISOLocale alloc] initWithDictionary:v25];
      [(DIMSchemaDIMDeviceFixedContext *)v5 setSiriInputLocaleV2:v26];
    }

    v27 = [dictionaryCopy objectForKeyedSubscript:@"programCode"];
    objc_opt_class();
    v55 = v27;
    if (objc_opt_isKindOfClass())
    {
      -[DIMSchemaDIMDeviceFixedContext setProgramCode:](v5, "setProgramCode:", [v27 intValue]);
    }

    v54 = v6;
    v28 = [dictionaryCopy objectForKeyedSubscript:@"dataCollectionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [v28 copy];
      [(DIMSchemaDIMDeviceFixedContext *)v5 setDataCollectionId:v29];
    }

    v50 = v28;
    v53 = v7;
    v30 = [dictionaryCopy objectForKeyedSubscript:@"effectiveSystemLanguage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = [v30 copy];
      [(DIMSchemaDIMDeviceFixedContext *)v5 setEffectiveSystemLanguage:v31];
    }

    v51 = v10;
    v52 = v8;
    v32 = [dictionaryCopy objectForKeyedSubscript:@"preferredLanguages"];
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

    v40 = [dictionaryCopy objectForKeyedSubscript:@"homeKitConfiguration"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DIMSchemaDIMDeviceFixedContext setHomeKitConfiguration:](v5, "setHomeKitConfiguration:", [v40 intValue]);
    }

    v41 = [dictionaryCopy objectForKeyedSubscript:@"entitySyncSettings"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v42 = [[DIMSchemaEntitySyncSettings alloc] initWithDictionary:v41];
      [(DIMSchemaDIMDeviceFixedContext *)v5 setEntitySyncSettings:v42];
    }

    v43 = [dictionaryCopy objectForKeyedSubscript:@"dataSharingSettings"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v44 = [[DIMSchemaDIMDataSharingSettings alloc] initWithDictionary:v43];
      [(DIMSchemaDIMDeviceFixedContext *)v5 setDataSharingSettings:v44];
    }

    v45 = [dictionaryCopy objectForKeyedSubscript:@"availableDictationKeyboards"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DIMSchemaDIMDeviceFixedContext setAvailableDictationKeyboards:](v5, "setAvailableDictationKeyboards:", [v45 unsignedIntValue]);
    }

    v46 = [dictionaryCopy objectForKeyedSubscript:@"searchDataOptOutState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DIMSchemaDIMDeviceFixedContext setSearchDataOptOutState:](v5, "setSearchDataOptOutState:", [v46 intValue]);
    }

    v47 = [dictionaryCopy objectForKeyedSubscript:@"isLongLivedIDUploadDisabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DIMSchemaDIMDeviceFixedContext setIsLongLivedIDUploadDisabled:](v5, "setIsLongLivedIDUploadDisabled:", [v47 BOOLValue]);
    }

    v48 = v5;
  }

  return v5;
}

- (DIMSchemaDIMDeviceFixedContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(DIMSchemaDIMDeviceFixedContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(DIMSchemaDIMDeviceFixedContext *)self dictionaryRepresentation];
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
  v4 = *(&self->_isLongLivedIDUploadDisabled + 1);
  if ((v4 & 0x200) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[DIMSchemaDIMDeviceFixedContext availableDictationKeyboards](self, "availableDictationKeyboards")}];
    [dictionary setObject:v5 forKeyedSubscript:@"availableDictationKeyboards"];

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

    [dictionary setObject:v7 forKeyedSubscript:@"countryCode"];
  }

  if (self->_dataCollectionId)
  {
    dataCollectionId = [(DIMSchemaDIMDeviceFixedContext *)self dataCollectionId];
    v9 = [dataCollectionId copy];
    [dictionary setObject:v9 forKeyedSubscript:@"dataCollectionId"];
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

    [dictionary setObject:v11 forKeyedSubscript:@"dataSharingOptInState"];
  }

  if (self->_dataSharingSettings)
  {
    dataSharingSettings = [(DIMSchemaDIMDeviceFixedContext *)self dataSharingSettings];
    dictionaryRepresentation = [dataSharingSettings dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"dataSharingSettings"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"dataSharingSettings"];
    }
  }

  if (self->_deviceType)
  {
    deviceType = [(DIMSchemaDIMDeviceFixedContext *)self deviceType];
    v16 = [deviceType copy];
    [dictionary setObject:v16 forKeyedSubscript:@"deviceType"];
  }

  if (self->_effectiveSystemLanguage)
  {
    effectiveSystemLanguage = [(DIMSchemaDIMDeviceFixedContext *)self effectiveSystemLanguage];
    v18 = [effectiveSystemLanguage copy];
    [dictionary setObject:v18 forKeyedSubscript:@"effectiveSystemLanguage"];
  }

  if (self->_entitySyncSettings)
  {
    entitySyncSettings = [(DIMSchemaDIMDeviceFixedContext *)self entitySyncSettings];
    dictionaryRepresentation2 = [entitySyncSettings dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"entitySyncSettings"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"entitySyncSettings"];
    }
  }

  v22 = *(&self->_isLongLivedIDUploadDisabled + 1);
  if ((v22 & 0x100) != 0)
  {
    homeKitConfiguration = [(DIMSchemaDIMDeviceFixedContext *)self homeKitConfiguration];
    v28 = @"HOMEKITCONFIGURATION_UNKNOWN";
    if (homeKitConfiguration == 1)
    {
      v28 = @"HOMEKITCONFIGURATION_HH1";
    }

    if (homeKitConfiguration == 2)
    {
      v29 = @"HOMEKITCONFIGURATION_HH2";
    }

    else
    {
      v29 = v28;
    }

    [dictionary setObject:v29 forKeyedSubscript:@"homeKitConfiguration"];
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
  [dictionary setObject:v30 forKeyedSubscript:@"isLongLivedIDUploadDisabled"];

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
  [dictionary setObject:v31 forKeyedSubscript:@"isLowPowerModeEnabled"];

  if ((*(&self->_isLongLivedIDUploadDisabled + 1) & 0x10) != 0)
  {
LABEL_33:
    v23 = [MEMORY[0x1E696AD98] numberWithBool:{-[DIMSchemaDIMDeviceFixedContext isStoreDemoMode](self, "isStoreDemoMode")}];
    [dictionary setObject:v23 forKeyedSubscript:@"isStoreDemoMode"];
  }

LABEL_34:
  if (self->_preferredLanguages)
  {
    preferredLanguages = [(DIMSchemaDIMDeviceFixedContext *)self preferredLanguages];
    v25 = [preferredLanguages copy];
    [dictionary setObject:v25 forKeyedSubscript:@"preferredLanguages"];
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

    [dictionary setObject:v33 forKeyedSubscript:@"programCode"];
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

  searchDataOptOutState = [(DIMSchemaDIMDeviceFixedContext *)self searchDataOptOutState];
  v35 = @"SEARCHDATAOPTOUTSTATE_UNKNOWN";
  if (searchDataOptOutState == 1)
  {
    v35 = @"SEARCHDATAOPTOUTSTATE_OPTED_IN";
  }

  if (searchDataOptOutState == 2)
  {
    v36 = @"SEARCHDATAOPTOUTSTATE_OPTED_OUT";
  }

  else
  {
    v36 = v35;
  }

  [dictionary setObject:v36 forKeyedSubscript:@"searchDataOptOutState"];
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

    [dictionary setObject:v38 forKeyedSubscript:@"siriInputLocale"];
  }

LABEL_63:
  if (self->_siriInputLocaleV2)
  {
    siriInputLocaleV2 = [(DIMSchemaDIMDeviceFixedContext *)self siriInputLocaleV2];
    dictionaryRepresentation3 = [siriInputLocaleV2 dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"siriInputLocaleV2"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"siriInputLocaleV2"];
    }
  }

  if (self->_siriVoiceSettings)
  {
    siriVoiceSettings = [(DIMSchemaDIMDeviceFixedContext *)self siriVoiceSettings];
    dictionaryRepresentation4 = [siriVoiceSettings dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"siriVoiceSettings"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"siriVoiceSettings"];
    }
  }

  if (self->_systemBuild)
  {
    systemBuild = [(DIMSchemaDIMDeviceFixedContext *)self systemBuild];
    v46 = [systemBuild copy];
    [dictionary setObject:v46 forKeyedSubscript:@"systemBuild"];
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

    [dictionary setObject:v48 forKeyedSubscript:@"systemLocale"];
  }

  if (self->_systemLocaleV2)
  {
    systemLocaleV2 = [(DIMSchemaDIMDeviceFixedContext *)self systemLocaleV2];
    dictionaryRepresentation5 = [systemLocaleV2 dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"systemLocaleV2"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"systemLocaleV2"];
    }
  }

  if ((*(&self->_isLongLivedIDUploadDisabled + 1) & 0x20) != 0)
  {
    v52 = MEMORY[0x1E696AD98];
    [(DIMSchemaDIMDeviceFixedContext *)self timeIntervalSince1970];
    v53 = [v52 numberWithDouble:?];
    [dictionary setObject:v53 forKeyedSubscript:@"timeIntervalSince1970"];
  }

  if (self->_timezoneOffset)
  {
    timezoneOffset = [(DIMSchemaDIMDeviceFixedContext *)self timezoneOffset];
    v55 = [timezoneOffset copy];
    [dictionary setObject:v55 forKeyedSubscript:@"timezoneOffset"];
  }

  if (self->_watchDeviceAttributes)
  {
    watchDeviceAttributes = [(DIMSchemaDIMDeviceFixedContext *)self watchDeviceAttributes];
    dictionaryRepresentation6 = [watchDeviceAttributes dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"watchDeviceAttributes"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"watchDeviceAttributes"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];
  v59 = dictionary;

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_92;
  }

  v5 = *&self->_hasEffectiveSystemLanguage;
  if (v5 != [equalCopy whichDeviceattributes])
  {
    goto LABEL_92;
  }

  v6 = *(&self->_isLongLivedIDUploadDisabled + 1);
  v7 = *(equalCopy + 177);
  if ((v6 & 1) != (v7 & 1))
  {
    goto LABEL_92;
  }

  if (v6)
  {
    systemLocale = self->_systemLocale;
    if (systemLocale != [equalCopy systemLocale])
    {
      goto LABEL_92;
    }

    v6 = *(&self->_isLongLivedIDUploadDisabled + 1);
    v7 = *(equalCopy + 177);
  }

  v9 = (v6 >> 1) & 1;
  if (v9 != ((v7 >> 1) & 1))
  {
    goto LABEL_92;
  }

  if (v9)
  {
    siriInputLocale = self->_siriInputLocale;
    if (siriInputLocale != [equalCopy siriInputLocale])
    {
      goto LABEL_92;
    }
  }

  siriVoiceSettings = [(DIMSchemaDIMDeviceFixedContext *)self siriVoiceSettings];
  siriVoiceSettings2 = [equalCopy siriVoiceSettings];
  if ((siriVoiceSettings != 0) == (siriVoiceSettings2 == 0))
  {
    goto LABEL_91;
  }

  siriVoiceSettings3 = [(DIMSchemaDIMDeviceFixedContext *)self siriVoiceSettings];
  if (siriVoiceSettings3)
  {
    v14 = siriVoiceSettings3;
    siriVoiceSettings4 = [(DIMSchemaDIMDeviceFixedContext *)self siriVoiceSettings];
    siriVoiceSettings5 = [equalCopy siriVoiceSettings];
    v17 = [siriVoiceSettings4 isEqual:siriVoiceSettings5];

    if (!v17)
    {
      goto LABEL_92;
    }
  }

  else
  {
  }

  v18 = (*(&self->_isLongLivedIDUploadDisabled + 1) >> 2) & 1;
  if (v18 != ((*(equalCopy + 177) >> 2) & 1))
  {
    goto LABEL_92;
  }

  if (v18)
  {
    dataSharingOptInState = self->_dataSharingOptInState;
    if (dataSharingOptInState != [equalCopy dataSharingOptInState])
    {
      goto LABEL_92;
    }
  }

  siriVoiceSettings = [(DIMSchemaDIMDeviceFixedContext *)self timezoneOffset];
  siriVoiceSettings2 = [equalCopy timezoneOffset];
  if ((siriVoiceSettings != 0) == (siriVoiceSettings2 == 0))
  {
    goto LABEL_91;
  }

  timezoneOffset = [(DIMSchemaDIMDeviceFixedContext *)self timezoneOffset];
  if (timezoneOffset)
  {
    v21 = timezoneOffset;
    timezoneOffset2 = [(DIMSchemaDIMDeviceFixedContext *)self timezoneOffset];
    timezoneOffset3 = [equalCopy timezoneOffset];
    v24 = [timezoneOffset2 isEqual:timezoneOffset3];

    if (!v24)
    {
      goto LABEL_92;
    }
  }

  else
  {
  }

  v25 = (*(&self->_isLongLivedIDUploadDisabled + 1) >> 3) & 1;
  if (v25 != ((*(equalCopy + 177) >> 3) & 1))
  {
    goto LABEL_92;
  }

  if (v25)
  {
    countryCode = self->_countryCode;
    if (countryCode != [equalCopy countryCode])
    {
      goto LABEL_92;
    }
  }

  siriVoiceSettings = [(DIMSchemaDIMDeviceFixedContext *)self deviceType];
  siriVoiceSettings2 = [equalCopy deviceType];
  if ((siriVoiceSettings != 0) == (siriVoiceSettings2 == 0))
  {
    goto LABEL_91;
  }

  deviceType = [(DIMSchemaDIMDeviceFixedContext *)self deviceType];
  if (deviceType)
  {
    v28 = deviceType;
    deviceType2 = [(DIMSchemaDIMDeviceFixedContext *)self deviceType];
    deviceType3 = [equalCopy deviceType];
    v31 = [deviceType2 isEqual:deviceType3];

    if (!v31)
    {
      goto LABEL_92;
    }
  }

  else
  {
  }

  siriVoiceSettings = [(DIMSchemaDIMDeviceFixedContext *)self systemBuild];
  siriVoiceSettings2 = [equalCopy systemBuild];
  if ((siriVoiceSettings != 0) == (siriVoiceSettings2 == 0))
  {
    goto LABEL_91;
  }

  systemBuild = [(DIMSchemaDIMDeviceFixedContext *)self systemBuild];
  if (systemBuild)
  {
    v33 = systemBuild;
    systemBuild2 = [(DIMSchemaDIMDeviceFixedContext *)self systemBuild];
    systemBuild3 = [equalCopy systemBuild];
    v36 = [systemBuild2 isEqual:systemBuild3];

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
  v39 = *(equalCopy + 177);
  if (v38 != ((v39 >> 4) & 1))
  {
    goto LABEL_92;
  }

  if (v38)
  {
    isStoreDemoMode = self->_isStoreDemoMode;
    if (isStoreDemoMode != [equalCopy isStoreDemoMode])
    {
      goto LABEL_92;
    }

    v37 = *(&self->_isLongLivedIDUploadDisabled + 1);
    v39 = *(equalCopy + 177);
  }

  v41 = (v37 >> 5) & 1;
  if (v41 != ((v39 >> 5) & 1))
  {
    goto LABEL_92;
  }

  if (v41)
  {
    timeIntervalSince1970 = self->_timeIntervalSince1970;
    [equalCopy timeIntervalSince1970];
    if (timeIntervalSince1970 != v43)
    {
      goto LABEL_92;
    }
  }

  siriVoiceSettings = [(DIMSchemaDIMDeviceFixedContext *)self watchDeviceAttributes];
  siriVoiceSettings2 = [equalCopy watchDeviceAttributes];
  if ((siriVoiceSettings != 0) == (siriVoiceSettings2 == 0))
  {
    goto LABEL_91;
  }

  watchDeviceAttributes = [(DIMSchemaDIMDeviceFixedContext *)self watchDeviceAttributes];
  if (watchDeviceAttributes)
  {
    v45 = watchDeviceAttributes;
    watchDeviceAttributes2 = [(DIMSchemaDIMDeviceFixedContext *)self watchDeviceAttributes];
    watchDeviceAttributes3 = [equalCopy watchDeviceAttributes];
    v48 = [watchDeviceAttributes2 isEqual:watchDeviceAttributes3];

    if (!v48)
    {
      goto LABEL_92;
    }
  }

  else
  {
  }

  v49 = (*(&self->_isLongLivedIDUploadDisabled + 1) >> 6) & 1;
  if (v49 != ((*(equalCopy + 177) >> 6) & 1))
  {
    goto LABEL_92;
  }

  if (v49)
  {
    isLowPowerModeEnabled = self->_isLowPowerModeEnabled;
    if (isLowPowerModeEnabled != [equalCopy isLowPowerModeEnabled])
    {
      goto LABEL_92;
    }
  }

  siriVoiceSettings = [(DIMSchemaDIMDeviceFixedContext *)self systemLocaleV2];
  siriVoiceSettings2 = [equalCopy systemLocaleV2];
  if ((siriVoiceSettings != 0) == (siriVoiceSettings2 == 0))
  {
    goto LABEL_91;
  }

  systemLocaleV2 = [(DIMSchemaDIMDeviceFixedContext *)self systemLocaleV2];
  if (systemLocaleV2)
  {
    v52 = systemLocaleV2;
    systemLocaleV22 = [(DIMSchemaDIMDeviceFixedContext *)self systemLocaleV2];
    systemLocaleV23 = [equalCopy systemLocaleV2];
    v55 = [systemLocaleV22 isEqual:systemLocaleV23];

    if (!v55)
    {
      goto LABEL_92;
    }
  }

  else
  {
  }

  siriVoiceSettings = [(DIMSchemaDIMDeviceFixedContext *)self siriInputLocaleV2];
  siriVoiceSettings2 = [equalCopy siriInputLocaleV2];
  if ((siriVoiceSettings != 0) == (siriVoiceSettings2 == 0))
  {
    goto LABEL_91;
  }

  siriInputLocaleV2 = [(DIMSchemaDIMDeviceFixedContext *)self siriInputLocaleV2];
  if (siriInputLocaleV2)
  {
    v57 = siriInputLocaleV2;
    siriInputLocaleV22 = [(DIMSchemaDIMDeviceFixedContext *)self siriInputLocaleV2];
    siriInputLocaleV23 = [equalCopy siriInputLocaleV2];
    v60 = [siriInputLocaleV22 isEqual:siriInputLocaleV23];

    if (!v60)
    {
      goto LABEL_92;
    }
  }

  else
  {
  }

  v61 = (*(&self->_isLongLivedIDUploadDisabled + 1) >> 7) & 1;
  if (v61 != ((*(equalCopy + 177) >> 7) & 1))
  {
    goto LABEL_92;
  }

  if (v61)
  {
    programCode = self->_programCode;
    if (programCode != [equalCopy programCode])
    {
      goto LABEL_92;
    }
  }

  siriVoiceSettings = [(DIMSchemaDIMDeviceFixedContext *)self dataCollectionId];
  siriVoiceSettings2 = [equalCopy dataCollectionId];
  if ((siriVoiceSettings != 0) == (siriVoiceSettings2 == 0))
  {
    goto LABEL_91;
  }

  dataCollectionId = [(DIMSchemaDIMDeviceFixedContext *)self dataCollectionId];
  if (dataCollectionId)
  {
    v64 = dataCollectionId;
    dataCollectionId2 = [(DIMSchemaDIMDeviceFixedContext *)self dataCollectionId];
    dataCollectionId3 = [equalCopy dataCollectionId];
    v67 = [dataCollectionId2 isEqual:dataCollectionId3];

    if (!v67)
    {
      goto LABEL_92;
    }
  }

  else
  {
  }

  siriVoiceSettings = [(DIMSchemaDIMDeviceFixedContext *)self effectiveSystemLanguage];
  siriVoiceSettings2 = [equalCopy effectiveSystemLanguage];
  if ((siriVoiceSettings != 0) == (siriVoiceSettings2 == 0))
  {
    goto LABEL_91;
  }

  effectiveSystemLanguage = [(DIMSchemaDIMDeviceFixedContext *)self effectiveSystemLanguage];
  if (effectiveSystemLanguage)
  {
    v69 = effectiveSystemLanguage;
    effectiveSystemLanguage2 = [(DIMSchemaDIMDeviceFixedContext *)self effectiveSystemLanguage];
    effectiveSystemLanguage3 = [equalCopy effectiveSystemLanguage];
    v72 = [effectiveSystemLanguage2 isEqual:effectiveSystemLanguage3];

    if (!v72)
    {
      goto LABEL_92;
    }
  }

  else
  {
  }

  siriVoiceSettings = [(DIMSchemaDIMDeviceFixedContext *)self preferredLanguages];
  siriVoiceSettings2 = [equalCopy preferredLanguages];
  if ((siriVoiceSettings != 0) == (siriVoiceSettings2 == 0))
  {
    goto LABEL_91;
  }

  preferredLanguages = [(DIMSchemaDIMDeviceFixedContext *)self preferredLanguages];
  if (preferredLanguages)
  {
    v74 = preferredLanguages;
    preferredLanguages2 = [(DIMSchemaDIMDeviceFixedContext *)self preferredLanguages];
    preferredLanguages3 = [equalCopy preferredLanguages];
    v77 = [preferredLanguages2 isEqual:preferredLanguages3];

    if (!v77)
    {
      goto LABEL_92;
    }
  }

  else
  {
  }

  v78 = HIBYTE(*(&self->_isLongLivedIDUploadDisabled + 1)) & 1;
  if (v78 != (HIBYTE(*(equalCopy + 177)) & 1))
  {
    goto LABEL_92;
  }

  if (v78)
  {
    homeKitConfiguration = self->_homeKitConfiguration;
    if (homeKitConfiguration != [equalCopy homeKitConfiguration])
    {
      goto LABEL_92;
    }
  }

  siriVoiceSettings = [(DIMSchemaDIMDeviceFixedContext *)self entitySyncSettings];
  siriVoiceSettings2 = [equalCopy entitySyncSettings];
  if ((siriVoiceSettings != 0) == (siriVoiceSettings2 == 0))
  {
    goto LABEL_91;
  }

  entitySyncSettings = [(DIMSchemaDIMDeviceFixedContext *)self entitySyncSettings];
  if (entitySyncSettings)
  {
    v81 = entitySyncSettings;
    entitySyncSettings2 = [(DIMSchemaDIMDeviceFixedContext *)self entitySyncSettings];
    entitySyncSettings3 = [equalCopy entitySyncSettings];
    v84 = [entitySyncSettings2 isEqual:entitySyncSettings3];

    if (!v84)
    {
      goto LABEL_92;
    }
  }

  else
  {
  }

  siriVoiceSettings = [(DIMSchemaDIMDeviceFixedContext *)self dataSharingSettings];
  siriVoiceSettings2 = [equalCopy dataSharingSettings];
  if ((siriVoiceSettings != 0) == (siriVoiceSettings2 == 0))
  {
LABEL_91:

    goto LABEL_92;
  }

  dataSharingSettings = [(DIMSchemaDIMDeviceFixedContext *)self dataSharingSettings];
  if (dataSharingSettings)
  {
    v86 = dataSharingSettings;
    dataSharingSettings2 = [(DIMSchemaDIMDeviceFixedContext *)self dataSharingSettings];
    dataSharingSettings3 = [equalCopy dataSharingSettings];
    v89 = [dataSharingSettings2 isEqual:dataSharingSettings3];

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
  v94 = *(equalCopy + 177);
  if (v93 == ((v94 >> 9) & 1))
  {
    if (v93)
    {
      availableDictationKeyboards = self->_availableDictationKeyboards;
      if (availableDictationKeyboards != [equalCopy availableDictationKeyboards])
      {
        goto LABEL_92;
      }

      v92 = *(&self->_isLongLivedIDUploadDisabled + 1);
      v94 = *(equalCopy + 177);
    }

    v96 = (v92 >> 10) & 1;
    if (v96 == ((v94 >> 10) & 1))
    {
      if (v96)
      {
        searchDataOptOutState = self->_searchDataOptOutState;
        if (searchDataOptOutState != [equalCopy searchDataOptOutState])
        {
          goto LABEL_92;
        }

        v92 = *(&self->_isLongLivedIDUploadDisabled + 1);
        v94 = *(equalCopy + 177);
      }

      v98 = (v92 >> 11) & 1;
      if (v98 == ((v94 >> 11) & 1))
      {
        if (!v98 || (isLongLivedIDUploadDisabled = self->_isLongLivedIDUploadDisabled, isLongLivedIDUploadDisabled == [equalCopy isLongLivedIDUploadDisabled]))
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

- (void)writeTo:(id)to
{
  v35 = *MEMORY[0x1E69E9840];
  toCopy = to;
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

  siriVoiceSettings = [(DIMSchemaDIMDeviceFixedContext *)self siriVoiceSettings];

  if (siriVoiceSettings)
  {
    siriVoiceSettings2 = [(DIMSchemaDIMDeviceFixedContext *)self siriVoiceSettings];
    PBDataWriterWriteSubmessage();
  }

  if ((*(&self->_isLongLivedIDUploadDisabled + 1) & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  timezoneOffset = [(DIMSchemaDIMDeviceFixedContext *)self timezoneOffset];

  if (timezoneOffset)
  {
    PBDataWriterWriteStringField();
  }

  if ((*(&self->_isLongLivedIDUploadDisabled + 1) & 8) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  deviceType = [(DIMSchemaDIMDeviceFixedContext *)self deviceType];

  if (deviceType)
  {
    PBDataWriterWriteStringField();
  }

  systemBuild = [(DIMSchemaDIMDeviceFixedContext *)self systemBuild];

  if (systemBuild)
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

  watchDeviceAttributes = [(DIMSchemaDIMDeviceFixedContext *)self watchDeviceAttributes];

  if (watchDeviceAttributes)
  {
    watchDeviceAttributes2 = [(DIMSchemaDIMDeviceFixedContext *)self watchDeviceAttributes];
    PBDataWriterWriteSubmessage();
  }

  if ((*(&self->_isLongLivedIDUploadDisabled + 1) & 0x40) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  systemLocaleV2 = [(DIMSchemaDIMDeviceFixedContext *)self systemLocaleV2];

  if (systemLocaleV2)
  {
    systemLocaleV22 = [(DIMSchemaDIMDeviceFixedContext *)self systemLocaleV2];
    PBDataWriterWriteSubmessage();
  }

  siriInputLocaleV2 = [(DIMSchemaDIMDeviceFixedContext *)self siriInputLocaleV2];

  if (siriInputLocaleV2)
  {
    siriInputLocaleV22 = [(DIMSchemaDIMDeviceFixedContext *)self siriInputLocaleV2];
    PBDataWriterWriteSubmessage();
  }

  if ((*(&self->_isLongLivedIDUploadDisabled + 1) & 0x80) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  dataCollectionId = [(DIMSchemaDIMDeviceFixedContext *)self dataCollectionId];

  if (dataCollectionId)
  {
    PBDataWriterWriteStringField();
  }

  effectiveSystemLanguage = [(DIMSchemaDIMDeviceFixedContext *)self effectiveSystemLanguage];

  if (effectiveSystemLanguage)
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

  entitySyncSettings = [(DIMSchemaDIMDeviceFixedContext *)self entitySyncSettings];

  if (entitySyncSettings)
  {
    entitySyncSettings2 = [(DIMSchemaDIMDeviceFixedContext *)self entitySyncSettings];
    PBDataWriterWriteSubmessage();
  }

  dataSharingSettings = [(DIMSchemaDIMDeviceFixedContext *)self dataSharingSettings];

  if (dataSharingSettings)
  {
    dataSharingSettings2 = [(DIMSchemaDIMDeviceFixedContext *)self dataSharingSettings];
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

- (void)setHasIsLongLivedIDUploadDisabled:(BOOL)disabled
{
  if (disabled)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isLongLivedIDUploadDisabled + 1) = *(&self->_isLongLivedIDUploadDisabled + 1) & 0xF7FF | v3;
}

- (void)setHasSearchDataOptOutState:(BOOL)state
{
  if (state)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isLongLivedIDUploadDisabled + 1) = *(&self->_isLongLivedIDUploadDisabled + 1) & 0xFBFF | v3;
}

- (void)setHasAvailableDictationKeyboards:(BOOL)keyboards
{
  if (keyboards)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isLongLivedIDUploadDisabled + 1) = *(&self->_isLongLivedIDUploadDisabled + 1) & 0xFDFF | v3;
}

- (void)setHasHomeKitConfiguration:(BOOL)configuration
{
  if (configuration)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isLongLivedIDUploadDisabled + 1) = *(&self->_isLongLivedIDUploadDisabled + 1) & 0xFEFF | v3;
}

- (void)addPreferredLanguages:(id)languages
{
  languagesCopy = languages;
  preferredLanguages = self->_preferredLanguages;
  v8 = languagesCopy;
  if (!preferredLanguages)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_preferredLanguages;
    self->_preferredLanguages = array;

    languagesCopy = v8;
    preferredLanguages = self->_preferredLanguages;
  }

  [(NSArray *)preferredLanguages addObject:languagesCopy];
}

- (void)setHasProgramCode:(BOOL)code
{
  if (code)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isLongLivedIDUploadDisabled + 1) = *(&self->_isLongLivedIDUploadDisabled + 1) & 0xFF7F | v3;
}

- (void)setHasIsLowPowerModeEnabled:(BOOL)enabled
{
  if (enabled)
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

- (void)setWatchDeviceAttributes:(id)attributes
{
  v3 = 100;
  if (!attributes)
  {
    v3 = 0;
  }

  *&self->_hasEffectiveSystemLanguage = v3;
  objc_storeStrong(&self->_watchDeviceAttributes, attributes);
}

- (void)setHasTimeIntervalSince1970:(BOOL)since1970
{
  if (since1970)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isLongLivedIDUploadDisabled + 1) = *(&self->_isLongLivedIDUploadDisabled + 1) & 0xFFDF | v3;
}

- (void)setHasIsStoreDemoMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isLongLivedIDUploadDisabled + 1) = *(&self->_isLongLivedIDUploadDisabled + 1) & 0xFFEF | v3;
}

- (void)setHasCountryCode:(BOOL)code
{
  if (code)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isLongLivedIDUploadDisabled + 1) = *(&self->_isLongLivedIDUploadDisabled + 1) & 0xFFF7 | v3;
}

- (void)setHasDataSharingOptInState:(BOOL)state
{
  if (state)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isLongLivedIDUploadDisabled + 1) = *(&self->_isLongLivedIDUploadDisabled + 1) & 0xFFFB | v3;
}

- (void)setHasSiriInputLocale:(BOOL)locale
{
  if (locale)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isLongLivedIDUploadDisabled + 1) = *(&self->_isLongLivedIDUploadDisabled + 1) & 0xFFFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v25.receiver = self;
  v25.super_class = DIMSchemaDIMDeviceFixedContext;
  v5 = [(SISchemaInstrumentationMessage *)&v25 applySensitiveConditionsPolicy:policyCopy];
  siriVoiceSettings = [(DIMSchemaDIMDeviceFixedContext *)self siriVoiceSettings];
  v7 = [siriVoiceSettings applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(DIMSchemaDIMDeviceFixedContext *)self deleteSiriVoiceSettings];
  }

  watchDeviceAttributes = [(DIMSchemaDIMDeviceFixedContext *)self watchDeviceAttributes];
  v10 = [watchDeviceAttributes applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(DIMSchemaDIMDeviceFixedContext *)self deleteWatchDeviceAttributes];
  }

  systemLocaleV2 = [(DIMSchemaDIMDeviceFixedContext *)self systemLocaleV2];
  v13 = [systemLocaleV2 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(DIMSchemaDIMDeviceFixedContext *)self deleteSystemLocaleV2];
  }

  siriInputLocaleV2 = [(DIMSchemaDIMDeviceFixedContext *)self siriInputLocaleV2];
  v16 = [siriInputLocaleV2 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(DIMSchemaDIMDeviceFixedContext *)self deleteSiriInputLocaleV2];
  }

  entitySyncSettings = [(DIMSchemaDIMDeviceFixedContext *)self entitySyncSettings];
  v19 = [entitySyncSettings applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(DIMSchemaDIMDeviceFixedContext *)self deleteEntitySyncSettings];
  }

  dataSharingSettings = [(DIMSchemaDIMDeviceFixedContext *)self dataSharingSettings];
  v22 = [dataSharingSettings applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
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