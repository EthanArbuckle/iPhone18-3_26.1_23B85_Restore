@interface SISchemaDailyDeviceStatus
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SISchemaDailyDeviceStatus)initWithDictionary:(id)a3;
- (SISchemaDailyDeviceStatus)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int)installedVoicesAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)addEnabledDictationLocales:(id)a3;
- (void)addInstalledVoices:(int)a3;
- (void)addLinkedAccessoryState:(id)a3;
- (void)setHasAssistantRecordPublishTimestampMs:(BOOL)a3;
- (void)setHasAvailableDeviceStorageInMB:(BOOL)a3;
- (void)setHasDeviceCapacityInGB:(BOOL)a3;
- (void)setHasQueuedAtTimestampHourInMs:(BOOL)a3;
- (void)setHasSiriInputLocale:(BOOL)a3;
- (void)setHasSpokenNotificationsControlCenterModuleEnabled:(BOOL)a3;
- (void)setHasSpokenNotificationsWhitelistSettings:(BOOL)a3;
- (void)setHasSpokenNotificationsproxCardSeen:(BOOL)a3;
- (void)setHasStoreCountryCode:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SISchemaDailyDeviceStatus

- (SISchemaDailyDeviceStatus)initWithDictionary:(id)a3
{
  v117 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v113.receiver = self;
  v113.super_class = SISchemaDailyDeviceStatus;
  v5 = [(SISchemaDailyDeviceStatus *)&v113 init];

  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"siriDeviceID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SISchemaDailyDeviceStatus *)v5 setSiriDeviceID:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"siriSpeechID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(SISchemaDailyDeviceStatus *)v5 setSiriSpeechID:v9];
    }

    v85 = v6;
    v10 = [v4 objectForKeyedSubscript:@"sharedUserId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(SISchemaDailyDeviceStatus *)v5 setSharedUserId:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"clientDeviceSamplingTimestampMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaDailyDeviceStatus setClientDeviceSamplingTimestampMs:](v5, "setClientDeviceSamplingTimestampMs:", [v12 longLongValue]);
    }

    v13 = [v4 objectForKeyedSubscript:@"assistantRecordPublishTimestampMs"];
    objc_opt_class();
    v100 = v13;
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaDailyDeviceStatus setAssistantRecordPublishTimestampMs:](v5, "setAssistantRecordPublishTimestampMs:", [v13 longLongValue]);
    }

    v14 = [v4 objectForKeyedSubscript:@"locale"];
    objc_opt_class();
    v99 = v14;
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(SISchemaDailyDeviceStatus *)v5 setLocale:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"deviceType"];
    objc_opt_class();
    v98 = v16;
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(SISchemaDailyDeviceStatus *)v5 setDeviceType:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"deviceOs"];
    objc_opt_class();
    v97 = v18;
    if (objc_opt_isKindOfClass())
    {
      v19 = [v18 copy];
      [(SISchemaDailyDeviceStatus *)v5 setDeviceOs:v19];
    }

    v83 = v12;
    v84 = v8;
    v20 = [v4 objectForKeyedSubscript:@"deviceBuild"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [v20 copy];
      [(SISchemaDailyDeviceStatus *)v5 setDeviceBuild:v21];
    }

    v82 = v20;
    v22 = [v4 objectForKeyedSubscript:@"enabledStatus"];
    objc_opt_class();
    v96 = v22;
    if (objc_opt_isKindOfClass())
    {
      v23 = [[SISchemaEnabledStatus alloc] initWithDictionary:v22];
      [(SISchemaDailyDeviceStatus *)v5 setEnabledStatus:v23];
    }

    v24 = [v4 objectForKeyedSubscript:@"activeStatus"];
    objc_opt_class();
    v95 = v24;
    if (objc_opt_isKindOfClass())
    {
      v25 = [[SISchemaActiveStatus alloc] initWithDictionary:v24];
      [(SISchemaDailyDeviceStatus *)v5 setActiveStatus:v25];
    }

    v26 = [v4 objectForKeyedSubscript:@"personalization"];
    objc_opt_class();
    v94 = v26;
    if (objc_opt_isKindOfClass())
    {
      v27 = [[SISchemaPersonalization alloc] initWithDictionary:v26];
      [(SISchemaDailyDeviceStatus *)v5 setPersonalization:v27];
    }

    v28 = [v4 objectForKeyedSubscript:@"multiUserState"];
    objc_opt_class();
    v93 = v28;
    if (objc_opt_isKindOfClass())
    {
      v29 = [[SISchemaMultiUserState alloc] initWithDictionary:v28];
      [(SISchemaDailyDeviceStatus *)v5 setMultiUserState:v29];
    }

    v30 = [v4 objectForKeyedSubscript:@"spokenNotificationsproxCardSeen"];
    objc_opt_class();
    v92 = v30;
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaDailyDeviceStatus setSpokenNotificationsproxCardSeen:](v5, "setSpokenNotificationsproxCardSeen:", [v30 BOOLValue]);
    }

    v31 = [v4 objectForKeyedSubscript:@"spokenNotificationsControlCenterModuleEnabled"];
    objc_opt_class();
    v91 = v31;
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaDailyDeviceStatus setSpokenNotificationsControlCenterModuleEnabled:](v5, "setSpokenNotificationsControlCenterModuleEnabled:", [v31 BOOLValue]);
    }

    v32 = [v4 objectForKeyedSubscript:@"spokenNotificationsWhitelistSettings"];
    objc_opt_class();
    v90 = v32;
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaDailyDeviceStatus setSpokenNotificationsWhitelistSettings:](v5, "setSpokenNotificationsWhitelistSettings:", [v32 intValue]);
    }

    v33 = [v4 objectForKeyedSubscript:@"aggregatedMetrics"];
    objc_opt_class();
    v89 = v33;
    if (objc_opt_isKindOfClass())
    {
      v34 = [[SISchemaAggregatedMetrics alloc] initWithDictionary:v33];
      [(SISchemaDailyDeviceStatus *)v5 setAggregatedMetrics:v34];
    }

    v35 = [v4 objectForKeyedSubscript:@"linkedAccessoryState"];
    objc_opt_class();
    v88 = v35;
    if (objc_opt_isKindOfClass())
    {
      v36 = v4;
      v111 = 0u;
      v112 = 0u;
      v109 = 0u;
      v110 = 0u;
      v37 = v35;
      v38 = [v37 countByEnumeratingWithState:&v109 objects:v116 count:16];
      if (v38)
      {
        v39 = v38;
        v40 = *v110;
        do
        {
          for (i = 0; i != v39; ++i)
          {
            if (*v110 != v40)
            {
              objc_enumerationMutation(v37);
            }

            v42 = *(*(&v109 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v43 = [[SISchemaLinkedAccessoryState alloc] initWithDictionary:v42];
              [(SISchemaDailyDeviceStatus *)v5 addLinkedAccessoryState:v43];
            }
          }

          v39 = [v37 countByEnumeratingWithState:&v109 objects:v116 count:16];
        }

        while (v39);
      }

      v4 = v36;
    }

    v44 = [v4 objectForKeyedSubscript:@"siriInputLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaDailyDeviceStatus setSiriInputLocale:](v5, "setSiriInputLocale:", [v44 intValue]);
    }

    v45 = [v4 objectForKeyedSubscript:@"multiUserSetup"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v46 = [[SISchemaMultiUserSetup alloc] initWithDictionary:v45];
      [(SISchemaDailyDeviceStatus *)v5 setMultiUserSetup:v46];
    }

    v47 = [v4 objectForKeyedSubscript:@"queuedAtTimestampHourInMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaDailyDeviceStatus setQueuedAtTimestampHourInMs:](v5, "setQueuedAtTimestampHourInMs:", [v47 unsignedLongLongValue]);
    }

    v48 = [v4 objectForKeyedSubscript:@"storeCountryCode"];
    objc_opt_class();
    v87 = v48;
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaDailyDeviceStatus setStoreCountryCode:](v5, "setStoreCountryCode:", [v48 intValue]);
    }

    v49 = [v4 objectForKeyedSubscript:@"enabledDictationLocales"];
    objc_opt_class();
    v86 = v49;
    v80 = v45;
    v81 = v44;
    v79 = v47;
    if (objc_opt_isKindOfClass())
    {
      v50 = v4;
      v107 = 0u;
      v108 = 0u;
      v105 = 0u;
      v106 = 0u;
      v51 = v49;
      v52 = [v51 countByEnumeratingWithState:&v105 objects:v115 count:16];
      if (v52)
      {
        v53 = v52;
        v54 = *v106;
        do
        {
          for (j = 0; j != v53; ++j)
          {
            if (*v106 != v54)
            {
              objc_enumerationMutation(v51);
            }

            v56 = *(*(&v105 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v57 = [[SISchemaLocaleIdentifier alloc] initWithDictionary:v56];
              [(SISchemaDailyDeviceStatus *)v5 addEnabledDictationLocales:v57];
            }
          }

          v53 = [v51 countByEnumeratingWithState:&v105 objects:v115 count:16];
        }

        while (v53);
      }

      v4 = v50;
      v44 = v81;
      v47 = v79;
    }

    v58 = [v4 objectForKeyedSubscript:@"deviceCapacityInGB"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaDailyDeviceStatus setDeviceCapacityInGB:](v5, "setDeviceCapacityInGB:", [v58 unsignedIntValue]);
    }

    v78 = v58;
    v59 = [v4 objectForKeyedSubscript:@"availableDeviceStorageInMB"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v59 doubleValue];
      [(SISchemaDailyDeviceStatus *)v5 setAvailableDeviceStorageInMB:?];
    }

    v77 = v59;
    v60 = [v4 objectForKeyedSubscript:@"modelNumber"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v61 = [v60 copy];
      [(SISchemaDailyDeviceStatus *)v5 setModelNumber:v61];
    }

    v76 = v60;
    v62 = [v4 objectForKeyedSubscript:@"regionInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v63 = [v62 copy];
      [(SISchemaDailyDeviceStatus *)v5 setRegionInfo:v63];
    }

    v64 = [v4 objectForKeyedSubscript:@"storefrontId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v65 = [v64 copy];
      [(SISchemaDailyDeviceStatus *)v5 setStorefrontId:v65];
    }

    v66 = [v4 objectForKeyedSubscript:@"installedVoices"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v75 = v4;
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v67 = v66;
      v68 = [v67 countByEnumeratingWithState:&v101 objects:v114 count:16];
      if (v68)
      {
        v69 = v68;
        v70 = *v102;
        do
        {
          for (k = 0; k != v69; ++k)
          {
            if (*v102 != v70)
            {
              objc_enumerationMutation(v67);
            }

            v72 = *(*(&v101 + 1) + 8 * k);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[SISchemaDailyDeviceStatus addInstalledVoices:](v5, "addInstalledVoices:", [v72 intValue]);
            }
          }

          v69 = [v67 countByEnumeratingWithState:&v101 objects:v114 count:16];
        }

        while (v69);
      }

      v4 = v75;
      v45 = v80;
      v44 = v81;
      v47 = v79;
    }

    v73 = v5;
  }

  return v5;
}

- (SISchemaDailyDeviceStatus)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SISchemaDailyDeviceStatus *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SISchemaDailyDeviceStatus *)self dictionaryRepresentation];
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
  v89 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_activeStatus)
  {
    v4 = [(SISchemaDailyDeviceStatus *)self activeStatus];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"activeStatus"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"activeStatus"];
    }
  }

  if (self->_aggregatedMetrics)
  {
    v7 = [(SISchemaDailyDeviceStatus *)self aggregatedMetrics];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"aggregatedMetrics"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"aggregatedMetrics"];
    }
  }

  has = self->_has;
  v11 = 0x1E696A000uLL;
  if ((has & 2) != 0)
  {
    v30 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[SISchemaDailyDeviceStatus assistantRecordPublishTimestampMs](self, "assistantRecordPublishTimestampMs")}];
    [v3 setObject:v30 forKeyedSubscript:@"assistantRecordPublishTimestampMs"];

    has = self->_has;
    if ((has & 0x200) == 0)
    {
LABEL_13:
      if ((has & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_13;
  }

  v31 = MEMORY[0x1E696AD98];
  [(SISchemaDailyDeviceStatus *)self availableDeviceStorageInMB];
  v32 = [v31 numberWithDouble:?];
  [v3 setObject:v32 forKeyedSubscript:@"availableDeviceStorageInMB"];

  if (*&self->_has)
  {
LABEL_14:
    v12 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[SISchemaDailyDeviceStatus clientDeviceSamplingTimestampMs](self, "clientDeviceSamplingTimestampMs")}];
    [v3 setObject:v12 forKeyedSubscript:@"clientDeviceSamplingTimestampMs"];
  }

LABEL_15:
  if (self->_deviceBuild)
  {
    v13 = [(SISchemaDailyDeviceStatus *)self deviceBuild];
    v14 = [v13 copy];
    [v3 setObject:v14 forKeyedSubscript:@"deviceBuild"];
  }

  if ((*&self->_has & 0x100) != 0)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SISchemaDailyDeviceStatus deviceCapacityInGB](self, "deviceCapacityInGB")}];
    [v3 setObject:v15 forKeyedSubscript:@"deviceCapacityInGB"];
  }

  if (self->_deviceOs)
  {
    v16 = [(SISchemaDailyDeviceStatus *)self deviceOs];
    v17 = [v16 copy];
    [v3 setObject:v17 forKeyedSubscript:@"deviceOs"];
  }

  if (self->_deviceType)
  {
    v18 = [(SISchemaDailyDeviceStatus *)self deviceType];
    v19 = [v18 copy];
    [v3 setObject:v19 forKeyedSubscript:@"deviceType"];
  }

  if ([(NSArray *)self->_enabledDictationLocales count])
  {
    v20 = [MEMORY[0x1E695DF70] array];
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v21 = self->_enabledDictationLocales;
    v22 = [(NSArray *)v21 countByEnumeratingWithState:&v83 objects:v88 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v84;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v84 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = [*(*(&v83 + 1) + 8 * i) dictionaryRepresentation];
          if (v26)
          {
            [v20 addObject:v26];
          }

          else
          {
            v27 = [MEMORY[0x1E695DFB0] null];
            [v20 addObject:v27];
          }
        }

        v23 = [(NSArray *)v21 countByEnumeratingWithState:&v83 objects:v88 count:16];
      }

      while (v23);
    }

    [v3 setObject:v20 forKeyedSubscript:@"enabledDictationLocales"];
    v11 = 0x1E696A000;
  }

  if (self->_enabledStatus)
  {
    v28 = [(SISchemaDailyDeviceStatus *)self enabledStatus];
    v29 = [v28 dictionaryRepresentation];
    if (v29)
    {
      [v3 setObject:v29 forKeyedSubscript:@"enabledStatus"];
    }

    else
    {
      v33 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v33 forKeyedSubscript:@"enabledStatus"];
    }
  }

  if ([(NSArray *)self->_installedVoices count])
  {
    v34 = [(SISchemaDailyDeviceStatus *)self installedVoices];
    v35 = [v34 copy];
    [v3 setObject:v35 forKeyedSubscript:@"installedVoices"];
  }

  if ([(NSArray *)self->_linkedAccessoryStates count])
  {
    v36 = [MEMORY[0x1E695DF70] array];
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v37 = self->_linkedAccessoryStates;
    v38 = [(NSArray *)v37 countByEnumeratingWithState:&v79 objects:v87 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v80;
      do
      {
        for (j = 0; j != v39; ++j)
        {
          if (*v80 != v40)
          {
            objc_enumerationMutation(v37);
          }

          v42 = [*(*(&v79 + 1) + 8 * j) dictionaryRepresentation];
          if (v42)
          {
            [v36 addObject:v42];
          }

          else
          {
            v43 = [MEMORY[0x1E695DFB0] null];
            [v36 addObject:v43];
          }
        }

        v39 = [(NSArray *)v37 countByEnumeratingWithState:&v79 objects:v87 count:16];
      }

      while (v39);
    }

    [v3 setObject:v36 forKeyedSubscript:@"linkedAccessoryState"];
    v11 = 0x1E696A000uLL;
  }

  if (self->_locale)
  {
    v44 = [(SISchemaDailyDeviceStatus *)self locale];
    v45 = [v44 copy];
    [v3 setObject:v45 forKeyedSubscript:@"locale"];
  }

  if (self->_modelNumber)
  {
    v46 = [(SISchemaDailyDeviceStatus *)self modelNumber];
    v47 = [v46 copy];
    [v3 setObject:v47 forKeyedSubscript:@"modelNumber"];
  }

  if (self->_multiUserSetup)
  {
    v48 = [(SISchemaDailyDeviceStatus *)self multiUserSetup];
    v49 = [v48 dictionaryRepresentation];
    if (v49)
    {
      [v3 setObject:v49 forKeyedSubscript:@"multiUserSetup"];
    }

    else
    {
      v50 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v50 forKeyedSubscript:@"multiUserSetup"];
    }
  }

  if (self->_multiUserState)
  {
    v51 = [(SISchemaDailyDeviceStatus *)self multiUserState];
    v52 = [v51 dictionaryRepresentation];
    if (v52)
    {
      [v3 setObject:v52 forKeyedSubscript:@"multiUserState"];
    }

    else
    {
      v53 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v53 forKeyedSubscript:@"multiUserState"];
    }
  }

  if (self->_personalization)
  {
    v54 = [(SISchemaDailyDeviceStatus *)self personalization];
    v55 = [v54 dictionaryRepresentation];
    if (v55)
    {
      [v3 setObject:v55 forKeyedSubscript:@"personalization"];
    }

    else
    {
      v56 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v56 forKeyedSubscript:@"personalization"];
    }
  }

  if ((*&self->_has & 0x40) != 0)
  {
    v57 = [*(v11 + 3480) numberWithUnsignedLongLong:{-[SISchemaDailyDeviceStatus queuedAtTimestampHourInMs](self, "queuedAtTimestampHourInMs")}];
    [v3 setObject:v57 forKeyedSubscript:@"queuedAtTimestampHourInMs"];
  }

  if (self->_regionInfo)
  {
    v58 = [(SISchemaDailyDeviceStatus *)self regionInfo];
    v59 = [v58 copy];
    [v3 setObject:v59 forKeyedSubscript:@"regionInfo"];
  }

  if (self->_sharedUserId)
  {
    v60 = [(SISchemaDailyDeviceStatus *)self sharedUserId];
    v61 = [v60 copy];
    [v3 setObject:v61 forKeyedSubscript:@"sharedUserId"];
  }

  if (self->_siriDeviceID)
  {
    v62 = [(SISchemaDailyDeviceStatus *)self siriDeviceID];
    v63 = [v62 copy];
    [v3 setObject:v63 forKeyedSubscript:@"siriDeviceID"];
  }

  if ((*&self->_has & 0x20) != 0)
  {
    v64 = [(SISchemaDailyDeviceStatus *)self siriInputLocale]- 1;
    if (v64 > 0x3D)
    {
      v65 = @"LOCALE_UNKNOWN_LOCALE";
    }

    else
    {
      v65 = off_1E78E3E80[v64];
    }

    [v3 setObject:v65 forKeyedSubscript:@"siriInputLocale"];
  }

  if (self->_siriSpeechID)
  {
    v66 = [(SISchemaDailyDeviceStatus *)self siriSpeechID];
    v67 = [v66 copy];
    [v3 setObject:v67 forKeyedSubscript:@"siriSpeechID"];
  }

  v68 = self->_has;
  if ((v68 & 8) != 0)
  {
    v69 = [*(v11 + 3480) numberWithBool:{-[SISchemaDailyDeviceStatus spokenNotificationsControlCenterModuleEnabled](self, "spokenNotificationsControlCenterModuleEnabled")}];
    [v3 setObject:v69 forKeyedSubscript:@"spokenNotificationsControlCenterModuleEnabled"];

    v68 = self->_has;
    if ((v68 & 0x10) == 0)
    {
LABEL_93:
      if ((v68 & 4) == 0)
      {
        goto LABEL_94;
      }

LABEL_101:
      v72 = [*(v11 + 3480) numberWithBool:{-[SISchemaDailyDeviceStatus spokenNotificationsproxCardSeen](self, "spokenNotificationsproxCardSeen")}];
      [v3 setObject:v72 forKeyedSubscript:@"spokenNotificationsproxCardSeen"];

      if ((*&self->_has & 0x80) == 0)
      {
        goto LABEL_106;
      }

LABEL_102:
      v73 = [(SISchemaDailyDeviceStatus *)self storeCountryCode]- 1;
      if (v73 > 0xF9)
      {
        v74 = @"COUNTRYCODE_UNKNOWN";
      }

      else
      {
        v74 = off_1E78E4090[v73];
      }

      [v3 setObject:v74 forKeyedSubscript:@"storeCountryCode"];
      goto LABEL_106;
    }
  }

  else if ((v68 & 0x10) == 0)
  {
    goto LABEL_93;
  }

  v70 = [(SISchemaDailyDeviceStatus *)self spokenNotificationsWhitelistSettings]- 1;
  if (v70 > 3)
  {
    v71 = @"NONE";
  }

  else
  {
    v71 = off_1E78E4070[v70];
  }

  [v3 setObject:v71 forKeyedSubscript:@"spokenNotificationsWhitelistSettings"];
  v68 = self->_has;
  if ((v68 & 4) != 0)
  {
    goto LABEL_101;
  }

LABEL_94:
  if ((v68 & 0x80) != 0)
  {
    goto LABEL_102;
  }

LABEL_106:
  if (self->_storefrontId)
  {
    v75 = [(SISchemaDailyDeviceStatus *)self storefrontId];
    v76 = [v75 copy];
    [v3 setObject:v76 forKeyedSubscript:@"storefrontId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];
  v77 = v3;

  return v3;
}

- (unint64_t)hash
{
  v40 = [(NSString *)self->_siriDeviceID hash];
  v39 = [(NSString *)self->_siriSpeechID hash];
  v38 = [(NSString *)self->_sharedUserId hash];
  has = self->_has;
  if (has)
  {
    v37 = 2654435761 * self->_clientDeviceSamplingTimestampMs;
    if ((has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v37 = 0;
    if ((has & 2) != 0)
    {
LABEL_3:
      v36 = 2654435761 * self->_assistantRecordPublishTimestampMs;
      goto LABEL_6;
    }
  }

  v36 = 0;
LABEL_6:
  v35 = [(NSString *)self->_locale hash];
  v34 = [(NSString *)self->_deviceType hash];
  v33 = [(NSString *)self->_deviceOs hash];
  v32 = [(NSString *)self->_deviceBuild hash];
  v31 = [(SISchemaEnabledStatus *)self->_enabledStatus hash];
  v30 = [(SISchemaActiveStatus *)self->_activeStatus hash];
  v29 = [(SISchemaPersonalization *)self->_personalization hash];
  v28 = [(SISchemaMultiUserState *)self->_multiUserState hash];
  v4 = self->_has;
  if ((v4 & 4) == 0)
  {
    v27 = 0;
    if ((v4 & 8) != 0)
    {
      goto LABEL_8;
    }

LABEL_11:
    v26 = 0;
    if ((v4 & 0x10) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v27 = 2654435761 * self->_spokenNotificationsproxCardSeen;
  if ((v4 & 8) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v26 = 2654435761 * self->_spokenNotificationsControlCenterModuleEnabled;
  if ((v4 & 0x10) != 0)
  {
LABEL_9:
    v5 = 2654435761 * self->_spokenNotificationsWhitelistSettings;
    goto LABEL_13;
  }

LABEL_12:
  v5 = 0;
LABEL_13:
  v6 = [(SISchemaAggregatedMetrics *)self->_aggregatedMetrics hash];
  v7 = [(NSArray *)self->_linkedAccessoryStates hash];
  if ((*&self->_has & 0x20) != 0)
  {
    v8 = 2654435761 * self->_siriInputLocale;
  }

  else
  {
    v8 = 0;
  }

  v9 = [(SISchemaMultiUserSetup *)self->_multiUserSetup hash];
  v10 = self->_has;
  if ((v10 & 0x40) != 0)
  {
    v11 = 2654435761u * self->_queuedAtTimestampHourInMs;
    if ((v10 & 0x80) != 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v11 = 0;
    if ((v10 & 0x80) != 0)
    {
LABEL_18:
      v12 = 2654435761 * self->_storeCountryCode;
      goto LABEL_21;
    }
  }

  v12 = 0;
LABEL_21:
  v13 = [(NSArray *)self->_enabledDictationLocales hash];
  if ((*&self->_has & 0x100) != 0)
  {
    v16 = 2654435761 * self->_deviceCapacityInGB;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_23;
    }

LABEL_28:
    v20 = 0;
    goto LABEL_29;
  }

  v16 = 0;
  if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_28;
  }

LABEL_23:
  availableDeviceStorageInMB = self->_availableDeviceStorageInMB;
  if (availableDeviceStorageInMB < 0.0)
  {
    availableDeviceStorageInMB = -availableDeviceStorageInMB;
  }

  *v14.i64 = floor(availableDeviceStorageInMB + 0.5);
  v18 = (availableDeviceStorageInMB - *v14.i64) * 1.84467441e19;
  *v15.i64 = *v14.i64 - trunc(*v14.i64 * 5.42101086e-20) * 1.84467441e19;
  v19.f64[0] = NAN;
  v19.f64[1] = NAN;
  v20 = 2654435761u * *vbslq_s8(vnegq_f64(v19), v15, v14).i64;
  if (v18 >= 0.0)
  {
    if (v18 > 0.0)
    {
      v20 += v18;
    }
  }

  else
  {
    v20 -= fabs(v18);
  }

LABEL_29:
  v21 = v39 ^ v40 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v11 ^ v12;
  v22 = v13 ^ v16 ^ v20 ^ [(NSString *)self->_modelNumber hash];
  v23 = v22 ^ [(NSString *)self->_regionInfo hash];
  v24 = v23 ^ [(NSString *)self->_storefrontId hash];
  return v21 ^ v24 ^ [(NSArray *)self->_installedVoices hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_132;
  }

  v5 = [(SISchemaDailyDeviceStatus *)self siriDeviceID];
  v6 = [v4 siriDeviceID];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_131;
  }

  v7 = [(SISchemaDailyDeviceStatus *)self siriDeviceID];
  if (v7)
  {
    v8 = v7;
    v9 = [(SISchemaDailyDeviceStatus *)self siriDeviceID];
    v10 = [v4 siriDeviceID];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_132;
    }
  }

  else
  {
  }

  v5 = [(SISchemaDailyDeviceStatus *)self siriSpeechID];
  v6 = [v4 siriSpeechID];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_131;
  }

  v12 = [(SISchemaDailyDeviceStatus *)self siriSpeechID];
  if (v12)
  {
    v13 = v12;
    v14 = [(SISchemaDailyDeviceStatus *)self siriSpeechID];
    v15 = [v4 siriSpeechID];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_132;
    }
  }

  else
  {
  }

  v5 = [(SISchemaDailyDeviceStatus *)self sharedUserId];
  v6 = [v4 sharedUserId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_131;
  }

  v17 = [(SISchemaDailyDeviceStatus *)self sharedUserId];
  if (v17)
  {
    v18 = v17;
    v19 = [(SISchemaDailyDeviceStatus *)self sharedUserId];
    v20 = [v4 sharedUserId];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_132;
    }
  }

  else
  {
  }

  has = self->_has;
  v23 = v4[112];
  if ((*&has & 1) != (v23 & 1))
  {
    goto LABEL_132;
  }

  if (*&has)
  {
    clientDeviceSamplingTimestampMs = self->_clientDeviceSamplingTimestampMs;
    if (clientDeviceSamplingTimestampMs != [v4 clientDeviceSamplingTimestampMs])
    {
      goto LABEL_132;
    }

    has = self->_has;
    v23 = v4[112];
  }

  v25 = (*&has >> 1) & 1;
  if (v25 != ((v23 >> 1) & 1))
  {
    goto LABEL_132;
  }

  if (v25)
  {
    assistantRecordPublishTimestampMs = self->_assistantRecordPublishTimestampMs;
    if (assistantRecordPublishTimestampMs != [v4 assistantRecordPublishTimestampMs])
    {
      goto LABEL_132;
    }
  }

  v5 = [(SISchemaDailyDeviceStatus *)self locale];
  v6 = [v4 locale];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_131;
  }

  v27 = [(SISchemaDailyDeviceStatus *)self locale];
  if (v27)
  {
    v28 = v27;
    v29 = [(SISchemaDailyDeviceStatus *)self locale];
    v30 = [v4 locale];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_132;
    }
  }

  else
  {
  }

  v5 = [(SISchemaDailyDeviceStatus *)self deviceType];
  v6 = [v4 deviceType];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_131;
  }

  v32 = [(SISchemaDailyDeviceStatus *)self deviceType];
  if (v32)
  {
    v33 = v32;
    v34 = [(SISchemaDailyDeviceStatus *)self deviceType];
    v35 = [v4 deviceType];
    v36 = [v34 isEqual:v35];

    if (!v36)
    {
      goto LABEL_132;
    }
  }

  else
  {
  }

  v5 = [(SISchemaDailyDeviceStatus *)self deviceOs];
  v6 = [v4 deviceOs];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_131;
  }

  v37 = [(SISchemaDailyDeviceStatus *)self deviceOs];
  if (v37)
  {
    v38 = v37;
    v39 = [(SISchemaDailyDeviceStatus *)self deviceOs];
    v40 = [v4 deviceOs];
    v41 = [v39 isEqual:v40];

    if (!v41)
    {
      goto LABEL_132;
    }
  }

  else
  {
  }

  v5 = [(SISchemaDailyDeviceStatus *)self deviceBuild];
  v6 = [v4 deviceBuild];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_131;
  }

  v42 = [(SISchemaDailyDeviceStatus *)self deviceBuild];
  if (v42)
  {
    v43 = v42;
    v44 = [(SISchemaDailyDeviceStatus *)self deviceBuild];
    v45 = [v4 deviceBuild];
    v46 = [v44 isEqual:v45];

    if (!v46)
    {
      goto LABEL_132;
    }
  }

  else
  {
  }

  v5 = [(SISchemaDailyDeviceStatus *)self enabledStatus];
  v6 = [v4 enabledStatus];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_131;
  }

  v47 = [(SISchemaDailyDeviceStatus *)self enabledStatus];
  if (v47)
  {
    v48 = v47;
    v49 = [(SISchemaDailyDeviceStatus *)self enabledStatus];
    v50 = [v4 enabledStatus];
    v51 = [v49 isEqual:v50];

    if (!v51)
    {
      goto LABEL_132;
    }
  }

  else
  {
  }

  v5 = [(SISchemaDailyDeviceStatus *)self activeStatus];
  v6 = [v4 activeStatus];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_131;
  }

  v52 = [(SISchemaDailyDeviceStatus *)self activeStatus];
  if (v52)
  {
    v53 = v52;
    v54 = [(SISchemaDailyDeviceStatus *)self activeStatus];
    v55 = [v4 activeStatus];
    v56 = [v54 isEqual:v55];

    if (!v56)
    {
      goto LABEL_132;
    }
  }

  else
  {
  }

  v5 = [(SISchemaDailyDeviceStatus *)self personalization];
  v6 = [v4 personalization];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_131;
  }

  v57 = [(SISchemaDailyDeviceStatus *)self personalization];
  if (v57)
  {
    v58 = v57;
    v59 = [(SISchemaDailyDeviceStatus *)self personalization];
    v60 = [v4 personalization];
    v61 = [v59 isEqual:v60];

    if (!v61)
    {
      goto LABEL_132;
    }
  }

  else
  {
  }

  v5 = [(SISchemaDailyDeviceStatus *)self multiUserState];
  v6 = [v4 multiUserState];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_131;
  }

  v62 = [(SISchemaDailyDeviceStatus *)self multiUserState];
  if (v62)
  {
    v63 = v62;
    v64 = [(SISchemaDailyDeviceStatus *)self multiUserState];
    v65 = [v4 multiUserState];
    v66 = [v64 isEqual:v65];

    if (!v66)
    {
      goto LABEL_132;
    }
  }

  else
  {
  }

  v67 = self->_has;
  v68 = (*&v67 >> 2) & 1;
  v69 = v4[112];
  if (v68 != ((v69 >> 2) & 1))
  {
    goto LABEL_132;
  }

  if (v68)
  {
    spokenNotificationsproxCardSeen = self->_spokenNotificationsproxCardSeen;
    if (spokenNotificationsproxCardSeen != [v4 spokenNotificationsproxCardSeen])
    {
      goto LABEL_132;
    }

    v67 = self->_has;
    v69 = v4[112];
  }

  v71 = (*&v67 >> 3) & 1;
  if (v71 != ((v69 >> 3) & 1))
  {
    goto LABEL_132;
  }

  if (v71)
  {
    spokenNotificationsControlCenterModuleEnabled = self->_spokenNotificationsControlCenterModuleEnabled;
    if (spokenNotificationsControlCenterModuleEnabled != [v4 spokenNotificationsControlCenterModuleEnabled])
    {
      goto LABEL_132;
    }

    v67 = self->_has;
    v69 = v4[112];
  }

  v73 = (*&v67 >> 4) & 1;
  if (v73 != ((v69 >> 4) & 1))
  {
    goto LABEL_132;
  }

  if (v73)
  {
    spokenNotificationsWhitelistSettings = self->_spokenNotificationsWhitelistSettings;
    if (spokenNotificationsWhitelistSettings != [v4 spokenNotificationsWhitelistSettings])
    {
      goto LABEL_132;
    }
  }

  v5 = [(SISchemaDailyDeviceStatus *)self aggregatedMetrics];
  v6 = [v4 aggregatedMetrics];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_131;
  }

  v75 = [(SISchemaDailyDeviceStatus *)self aggregatedMetrics];
  if (v75)
  {
    v76 = v75;
    v77 = [(SISchemaDailyDeviceStatus *)self aggregatedMetrics];
    v78 = [v4 aggregatedMetrics];
    v79 = [v77 isEqual:v78];

    if (!v79)
    {
      goto LABEL_132;
    }
  }

  else
  {
  }

  v5 = [(SISchemaDailyDeviceStatus *)self linkedAccessoryStates];
  v6 = [v4 linkedAccessoryStates];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_131;
  }

  v80 = [(SISchemaDailyDeviceStatus *)self linkedAccessoryStates];
  if (v80)
  {
    v81 = v80;
    v82 = [(SISchemaDailyDeviceStatus *)self linkedAccessoryStates];
    v83 = [v4 linkedAccessoryStates];
    v84 = [v82 isEqual:v83];

    if (!v84)
    {
      goto LABEL_132;
    }
  }

  else
  {
  }

  v85 = (*&self->_has >> 5) & 1;
  if (v85 != ((v4[112] >> 5) & 1))
  {
    goto LABEL_132;
  }

  if (v85)
  {
    siriInputLocale = self->_siriInputLocale;
    if (siriInputLocale != [v4 siriInputLocale])
    {
      goto LABEL_132;
    }
  }

  v5 = [(SISchemaDailyDeviceStatus *)self multiUserSetup];
  v6 = [v4 multiUserSetup];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_131;
  }

  v87 = [(SISchemaDailyDeviceStatus *)self multiUserSetup];
  if (v87)
  {
    v88 = v87;
    v89 = [(SISchemaDailyDeviceStatus *)self multiUserSetup];
    v90 = [v4 multiUserSetup];
    v91 = [v89 isEqual:v90];

    if (!v91)
    {
      goto LABEL_132;
    }
  }

  else
  {
  }

  v92 = self->_has;
  v93 = (*&v92 >> 6) & 1;
  v94 = v4[112];
  if (v93 != ((v94 >> 6) & 1))
  {
    goto LABEL_132;
  }

  if (v93)
  {
    queuedAtTimestampHourInMs = self->_queuedAtTimestampHourInMs;
    if (queuedAtTimestampHourInMs != [v4 queuedAtTimestampHourInMs])
    {
      goto LABEL_132;
    }

    v92 = self->_has;
    v94 = v4[112];
  }

  v96 = (*&v92 >> 7) & 1;
  if (v96 != ((v94 >> 7) & 1))
  {
    goto LABEL_132;
  }

  if (v96)
  {
    storeCountryCode = self->_storeCountryCode;
    if (storeCountryCode != [v4 storeCountryCode])
    {
      goto LABEL_132;
    }
  }

  v5 = [(SISchemaDailyDeviceStatus *)self enabledDictationLocales];
  v6 = [v4 enabledDictationLocales];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_131;
  }

  v98 = [(SISchemaDailyDeviceStatus *)self enabledDictationLocales];
  if (v98)
  {
    v99 = v98;
    v100 = [(SISchemaDailyDeviceStatus *)self enabledDictationLocales];
    v101 = [v4 enabledDictationLocales];
    v102 = [v100 isEqual:v101];

    if (!v102)
    {
      goto LABEL_132;
    }
  }

  else
  {
  }

  v103 = self->_has;
  v104 = (*&v103 >> 8) & 1;
  v105 = v4[112];
  if (v104 != ((v105 >> 8) & 1))
  {
    goto LABEL_132;
  }

  if (v104)
  {
    deviceCapacityInGB = self->_deviceCapacityInGB;
    if (deviceCapacityInGB != [v4 deviceCapacityInGB])
    {
      goto LABEL_132;
    }

    v103 = self->_has;
    v105 = v4[112];
  }

  v107 = (*&v103 >> 9) & 1;
  if (v107 != ((v105 >> 9) & 1))
  {
    goto LABEL_132;
  }

  if (v107)
  {
    availableDeviceStorageInMB = self->_availableDeviceStorageInMB;
    [v4 availableDeviceStorageInMB];
    if (availableDeviceStorageInMB != v109)
    {
      goto LABEL_132;
    }
  }

  v5 = [(SISchemaDailyDeviceStatus *)self modelNumber];
  v6 = [v4 modelNumber];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_131;
  }

  v110 = [(SISchemaDailyDeviceStatus *)self modelNumber];
  if (v110)
  {
    v111 = v110;
    v112 = [(SISchemaDailyDeviceStatus *)self modelNumber];
    v113 = [v4 modelNumber];
    v114 = [v112 isEqual:v113];

    if (!v114)
    {
      goto LABEL_132;
    }
  }

  else
  {
  }

  v5 = [(SISchemaDailyDeviceStatus *)self regionInfo];
  v6 = [v4 regionInfo];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_131;
  }

  v115 = [(SISchemaDailyDeviceStatus *)self regionInfo];
  if (v115)
  {
    v116 = v115;
    v117 = [(SISchemaDailyDeviceStatus *)self regionInfo];
    v118 = [v4 regionInfo];
    v119 = [v117 isEqual:v118];

    if (!v119)
    {
      goto LABEL_132;
    }
  }

  else
  {
  }

  v5 = [(SISchemaDailyDeviceStatus *)self storefrontId];
  v6 = [v4 storefrontId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_131;
  }

  v120 = [(SISchemaDailyDeviceStatus *)self storefrontId];
  if (v120)
  {
    v121 = v120;
    v122 = [(SISchemaDailyDeviceStatus *)self storefrontId];
    v123 = [v4 storefrontId];
    v124 = [v122 isEqual:v123];

    if (!v124)
    {
      goto LABEL_132;
    }
  }

  else
  {
  }

  v5 = [(SISchemaDailyDeviceStatus *)self installedVoices];
  v6 = [v4 installedVoices];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_131:

    goto LABEL_132;
  }

  v125 = [(SISchemaDailyDeviceStatus *)self installedVoices];
  if (!v125)
  {

LABEL_135:
    v130 = 1;
    goto LABEL_133;
  }

  v126 = v125;
  v127 = [(SISchemaDailyDeviceStatus *)self installedVoices];
  v128 = [v4 installedVoices];
  v129 = [v127 isEqual:v128];

  if (v129)
  {
    goto LABEL_135;
  }

LABEL_132:
  v130 = 0;
LABEL_133:

  return v130;
}

- (void)writeTo:(id)a3
{
  v61 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SISchemaDailyDeviceStatus *)self siriDeviceID];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(SISchemaDailyDeviceStatus *)self siriSpeechID];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = [(SISchemaDailyDeviceStatus *)self sharedUserId];

  if (v7)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt64Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt64Field();
  }

  v9 = [(SISchemaDailyDeviceStatus *)self locale];

  if (v9)
  {
    PBDataWriterWriteStringField();
  }

  v10 = [(SISchemaDailyDeviceStatus *)self deviceType];

  if (v10)
  {
    PBDataWriterWriteStringField();
  }

  v11 = [(SISchemaDailyDeviceStatus *)self deviceOs];

  if (v11)
  {
    PBDataWriterWriteStringField();
  }

  v12 = [(SISchemaDailyDeviceStatus *)self deviceBuild];

  if (v12)
  {
    PBDataWriterWriteStringField();
  }

  v13 = [(SISchemaDailyDeviceStatus *)self enabledStatus];

  if (v13)
  {
    v14 = [(SISchemaDailyDeviceStatus *)self enabledStatus];
    PBDataWriterWriteSubmessage();
  }

  v15 = [(SISchemaDailyDeviceStatus *)self activeStatus];

  if (v15)
  {
    v16 = [(SISchemaDailyDeviceStatus *)self activeStatus];
    PBDataWriterWriteSubmessage();
  }

  v17 = [(SISchemaDailyDeviceStatus *)self personalization];

  if (v17)
  {
    v18 = [(SISchemaDailyDeviceStatus *)self personalization];
    PBDataWriterWriteSubmessage();
  }

  v19 = [(SISchemaDailyDeviceStatus *)self multiUserState];

  if (v19)
  {
    v20 = [(SISchemaDailyDeviceStatus *)self multiUserState];
    PBDataWriterWriteSubmessage();
  }

  v21 = self->_has;
  if ((v21 & 4) != 0)
  {
    PBDataWriterWriteBOOLField();
    v21 = self->_has;
    if ((v21 & 8) == 0)
    {
LABEL_29:
      if ((v21 & 0x10) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }
  }

  else if ((v21 & 8) == 0)
  {
    goto LABEL_29;
  }

  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_30:
    PBDataWriterWriteInt32Field();
  }

LABEL_31:
  v22 = [(SISchemaDailyDeviceStatus *)self aggregatedMetrics];

  if (v22)
  {
    v23 = [(SISchemaDailyDeviceStatus *)self aggregatedMetrics];
    PBDataWriterWriteSubmessage();
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v24 = self->_linkedAccessoryStates;
  v25 = [(NSArray *)v24 countByEnumeratingWithState:&v54 objects:v60 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v55;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v55 != v27)
        {
          objc_enumerationMutation(v24);
        }

        PBDataWriterWriteSubmessage();
      }

      v26 = [(NSArray *)v24 countByEnumeratingWithState:&v54 objects:v60 count:16];
    }

    while (v26);
  }

  if ((*&self->_has & 0x20) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  v29 = [(SISchemaDailyDeviceStatus *)self multiUserSetup];

  if (v29)
  {
    v30 = [(SISchemaDailyDeviceStatus *)self multiUserSetup];
    PBDataWriterWriteSubmessage();
  }

  v31 = self->_has;
  if ((v31 & 0x40) != 0)
  {
    PBDataWriterWriteUint64Field();
    v31 = self->_has;
  }

  if ((v31 & 0x80) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v32 = self->_enabledDictationLocales;
  v33 = [(NSArray *)v32 countByEnumeratingWithState:&v50 objects:v59 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v51;
    do
    {
      for (j = 0; j != v34; ++j)
      {
        if (*v51 != v35)
        {
          objc_enumerationMutation(v32);
        }

        PBDataWriterWriteSubmessage();
      }

      v34 = [(NSArray *)v32 countByEnumeratingWithState:&v50 objects:v59 count:16];
    }

    while (v34);
  }

  v37 = self->_has;
  if ((v37 & 0x100) != 0)
  {
    PBDataWriterWriteUint32Field();
    v37 = self->_has;
  }

  if ((v37 & 0x200) != 0)
  {
    PBDataWriterWriteDoubleField();
  }

  v38 = [(SISchemaDailyDeviceStatus *)self modelNumber];

  if (v38)
  {
    PBDataWriterWriteStringField();
  }

  v39 = [(SISchemaDailyDeviceStatus *)self regionInfo];

  if (v39)
  {
    PBDataWriterWriteStringField();
  }

  v40 = [(SISchemaDailyDeviceStatus *)self storefrontId];

  if (v40)
  {
    PBDataWriterWriteStringField();
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v41 = self->_installedVoices;
  v42 = [(NSArray *)v41 countByEnumeratingWithState:&v46 objects:v58 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v47;
    do
    {
      for (k = 0; k != v43; ++k)
      {
        if (*v47 != v44)
        {
          objc_enumerationMutation(v41);
        }

        [*(*(&v46 + 1) + 8 * k) intValue];
        PBDataWriterWriteInt32Field();
      }

      v43 = [(NSArray *)v41 countByEnumeratingWithState:&v46 objects:v58 count:16];
    }

    while (v43);
  }
}

- (int)installedVoicesAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_installedVoices objectAtIndexedSubscript:a3];
  v4 = [v3 intValue];

  return v4;
}

- (void)addInstalledVoices:(int)a3
{
  v3 = *&a3;
  installedVoices = self->_installedVoices;
  if (!installedVoices)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_installedVoices;
    self->_installedVoices = v6;

    installedVoices = self->_installedVoices;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)installedVoices addObject:v8];
}

- (void)setHasAvailableDeviceStorageInMB:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasDeviceCapacityInGB:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)addEnabledDictationLocales:(id)a3
{
  v4 = a3;
  enabledDictationLocales = self->_enabledDictationLocales;
  v8 = v4;
  if (!enabledDictationLocales)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_enabledDictationLocales;
    self->_enabledDictationLocales = v6;

    v4 = v8;
    enabledDictationLocales = self->_enabledDictationLocales;
  }

  [(NSArray *)enabledDictationLocales addObject:v4];
}

- (void)setHasStoreCountryCode:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasQueuedAtTimestampHourInMs:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasSiriInputLocale:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)addLinkedAccessoryState:(id)a3
{
  v4 = a3;
  linkedAccessoryStates = self->_linkedAccessoryStates;
  v8 = v4;
  if (!linkedAccessoryStates)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_linkedAccessoryStates;
    self->_linkedAccessoryStates = v6;

    v4 = v8;
    linkedAccessoryStates = self->_linkedAccessoryStates;
  }

  [(NSArray *)linkedAccessoryStates addObject:v4];
}

- (void)setHasSpokenNotificationsWhitelistSettings:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasSpokenNotificationsControlCenterModuleEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasSpokenNotificationsproxCardSeen:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasAssistantRecordPublishTimestampMs:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = SISchemaDailyDeviceStatus;
  v5 = [(SISchemaInstrumentationMessage *)&v29 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:8])
  {
    [(SISchemaDailyDeviceStatus *)self deleteSiriDeviceID];
    [(SISchemaDailyDeviceStatus *)self deleteSiriSpeechID];
    [(SISchemaDailyDeviceStatus *)self deleteSharedUserId];
  }

  v6 = [(SISchemaDailyDeviceStatus *)self enabledStatus];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(SISchemaDailyDeviceStatus *)self deleteEnabledStatus];
  }

  v9 = [(SISchemaDailyDeviceStatus *)self activeStatus];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(SISchemaDailyDeviceStatus *)self deleteActiveStatus];
  }

  v12 = [(SISchemaDailyDeviceStatus *)self personalization];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(SISchemaDailyDeviceStatus *)self deletePersonalization];
  }

  v15 = [(SISchemaDailyDeviceStatus *)self multiUserState];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(SISchemaDailyDeviceStatus *)self deleteMultiUserState];
  }

  v18 = [(SISchemaDailyDeviceStatus *)self aggregatedMetrics];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(SISchemaDailyDeviceStatus *)self deleteAggregatedMetrics];
  }

  v21 = [(SISchemaDailyDeviceStatus *)self linkedAccessoryStates];
  v22 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v21 underConditions:v4];
  [(SISchemaDailyDeviceStatus *)self setLinkedAccessoryStates:v22];

  v23 = [(SISchemaDailyDeviceStatus *)self multiUserSetup];
  v24 = [v23 applySensitiveConditionsPolicy:v4];
  v25 = [v24 suppressMessage];

  if (v25)
  {
    [(SISchemaDailyDeviceStatus *)self deleteMultiUserSetup];
  }

  v26 = [(SISchemaDailyDeviceStatus *)self enabledDictationLocales];
  v27 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v26 underConditions:v4];
  [(SISchemaDailyDeviceStatus *)self setEnabledDictationLocales:v27];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end