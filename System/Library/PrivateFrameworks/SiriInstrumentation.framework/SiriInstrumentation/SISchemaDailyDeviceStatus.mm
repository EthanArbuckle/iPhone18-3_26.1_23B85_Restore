@interface SISchemaDailyDeviceStatus
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaDailyDeviceStatus)initWithDictionary:(id)dictionary;
- (SISchemaDailyDeviceStatus)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int)installedVoicesAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)addEnabledDictationLocales:(id)locales;
- (void)addInstalledVoices:(int)voices;
- (void)addLinkedAccessoryState:(id)state;
- (void)setHasAssistantRecordPublishTimestampMs:(BOOL)ms;
- (void)setHasAvailableDeviceStorageInMB:(BOOL)b;
- (void)setHasDeviceCapacityInGB:(BOOL)b;
- (void)setHasQueuedAtTimestampHourInMs:(BOOL)ms;
- (void)setHasSiriInputLocale:(BOOL)locale;
- (void)setHasSpokenNotificationsControlCenterModuleEnabled:(BOOL)enabled;
- (void)setHasSpokenNotificationsWhitelistSettings:(BOOL)settings;
- (void)setHasSpokenNotificationsproxCardSeen:(BOOL)seen;
- (void)setHasStoreCountryCode:(BOOL)code;
- (void)writeTo:(id)to;
@end

@implementation SISchemaDailyDeviceStatus

- (SISchemaDailyDeviceStatus)initWithDictionary:(id)dictionary
{
  v117 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v113.receiver = self;
  v113.super_class = SISchemaDailyDeviceStatus;
  v5 = [(SISchemaDailyDeviceStatus *)&v113 init];

  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"siriDeviceID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SISchemaDailyDeviceStatus *)v5 setSiriDeviceID:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"siriSpeechID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(SISchemaDailyDeviceStatus *)v5 setSiriSpeechID:v9];
    }

    v85 = v6;
    v10 = [dictionaryCopy objectForKeyedSubscript:@"sharedUserId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(SISchemaDailyDeviceStatus *)v5 setSharedUserId:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"clientDeviceSamplingTimestampMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaDailyDeviceStatus setClientDeviceSamplingTimestampMs:](v5, "setClientDeviceSamplingTimestampMs:", [v12 longLongValue]);
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"assistantRecordPublishTimestampMs"];
    objc_opt_class();
    v100 = v13;
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaDailyDeviceStatus setAssistantRecordPublishTimestampMs:](v5, "setAssistantRecordPublishTimestampMs:", [v13 longLongValue]);
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"locale"];
    objc_opt_class();
    v99 = v14;
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(SISchemaDailyDeviceStatus *)v5 setLocale:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"deviceType"];
    objc_opt_class();
    v98 = v16;
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(SISchemaDailyDeviceStatus *)v5 setDeviceType:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"deviceOs"];
    objc_opt_class();
    v97 = v18;
    if (objc_opt_isKindOfClass())
    {
      v19 = [v18 copy];
      [(SISchemaDailyDeviceStatus *)v5 setDeviceOs:v19];
    }

    v83 = v12;
    v84 = v8;
    v20 = [dictionaryCopy objectForKeyedSubscript:@"deviceBuild"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [v20 copy];
      [(SISchemaDailyDeviceStatus *)v5 setDeviceBuild:v21];
    }

    v82 = v20;
    v22 = [dictionaryCopy objectForKeyedSubscript:@"enabledStatus"];
    objc_opt_class();
    v96 = v22;
    if (objc_opt_isKindOfClass())
    {
      v23 = [[SISchemaEnabledStatus alloc] initWithDictionary:v22];
      [(SISchemaDailyDeviceStatus *)v5 setEnabledStatus:v23];
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"activeStatus"];
    objc_opt_class();
    v95 = v24;
    if (objc_opt_isKindOfClass())
    {
      v25 = [[SISchemaActiveStatus alloc] initWithDictionary:v24];
      [(SISchemaDailyDeviceStatus *)v5 setActiveStatus:v25];
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"personalization"];
    objc_opt_class();
    v94 = v26;
    if (objc_opt_isKindOfClass())
    {
      v27 = [[SISchemaPersonalization alloc] initWithDictionary:v26];
      [(SISchemaDailyDeviceStatus *)v5 setPersonalization:v27];
    }

    v28 = [dictionaryCopy objectForKeyedSubscript:@"multiUserState"];
    objc_opt_class();
    v93 = v28;
    if (objc_opt_isKindOfClass())
    {
      v29 = [[SISchemaMultiUserState alloc] initWithDictionary:v28];
      [(SISchemaDailyDeviceStatus *)v5 setMultiUserState:v29];
    }

    v30 = [dictionaryCopy objectForKeyedSubscript:@"spokenNotificationsproxCardSeen"];
    objc_opt_class();
    v92 = v30;
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaDailyDeviceStatus setSpokenNotificationsproxCardSeen:](v5, "setSpokenNotificationsproxCardSeen:", [v30 BOOLValue]);
    }

    v31 = [dictionaryCopy objectForKeyedSubscript:@"spokenNotificationsControlCenterModuleEnabled"];
    objc_opt_class();
    v91 = v31;
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaDailyDeviceStatus setSpokenNotificationsControlCenterModuleEnabled:](v5, "setSpokenNotificationsControlCenterModuleEnabled:", [v31 BOOLValue]);
    }

    v32 = [dictionaryCopy objectForKeyedSubscript:@"spokenNotificationsWhitelistSettings"];
    objc_opt_class();
    v90 = v32;
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaDailyDeviceStatus setSpokenNotificationsWhitelistSettings:](v5, "setSpokenNotificationsWhitelistSettings:", [v32 intValue]);
    }

    v33 = [dictionaryCopy objectForKeyedSubscript:@"aggregatedMetrics"];
    objc_opt_class();
    v89 = v33;
    if (objc_opt_isKindOfClass())
    {
      v34 = [[SISchemaAggregatedMetrics alloc] initWithDictionary:v33];
      [(SISchemaDailyDeviceStatus *)v5 setAggregatedMetrics:v34];
    }

    v35 = [dictionaryCopy objectForKeyedSubscript:@"linkedAccessoryState"];
    objc_opt_class();
    v88 = v35;
    if (objc_opt_isKindOfClass())
    {
      v36 = dictionaryCopy;
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

      dictionaryCopy = v36;
    }

    v44 = [dictionaryCopy objectForKeyedSubscript:@"siriInputLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaDailyDeviceStatus setSiriInputLocale:](v5, "setSiriInputLocale:", [v44 intValue]);
    }

    v45 = [dictionaryCopy objectForKeyedSubscript:@"multiUserSetup"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v46 = [[SISchemaMultiUserSetup alloc] initWithDictionary:v45];
      [(SISchemaDailyDeviceStatus *)v5 setMultiUserSetup:v46];
    }

    v47 = [dictionaryCopy objectForKeyedSubscript:@"queuedAtTimestampHourInMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaDailyDeviceStatus setQueuedAtTimestampHourInMs:](v5, "setQueuedAtTimestampHourInMs:", [v47 unsignedLongLongValue]);
    }

    v48 = [dictionaryCopy objectForKeyedSubscript:@"storeCountryCode"];
    objc_opt_class();
    v87 = v48;
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaDailyDeviceStatus setStoreCountryCode:](v5, "setStoreCountryCode:", [v48 intValue]);
    }

    v49 = [dictionaryCopy objectForKeyedSubscript:@"enabledDictationLocales"];
    objc_opt_class();
    v86 = v49;
    v80 = v45;
    v81 = v44;
    v79 = v47;
    if (objc_opt_isKindOfClass())
    {
      v50 = dictionaryCopy;
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

      dictionaryCopy = v50;
      v44 = v81;
      v47 = v79;
    }

    v58 = [dictionaryCopy objectForKeyedSubscript:@"deviceCapacityInGB"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaDailyDeviceStatus setDeviceCapacityInGB:](v5, "setDeviceCapacityInGB:", [v58 unsignedIntValue]);
    }

    v78 = v58;
    v59 = [dictionaryCopy objectForKeyedSubscript:@"availableDeviceStorageInMB"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v59 doubleValue];
      [(SISchemaDailyDeviceStatus *)v5 setAvailableDeviceStorageInMB:?];
    }

    v77 = v59;
    v60 = [dictionaryCopy objectForKeyedSubscript:@"modelNumber"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v61 = [v60 copy];
      [(SISchemaDailyDeviceStatus *)v5 setModelNumber:v61];
    }

    v76 = v60;
    v62 = [dictionaryCopy objectForKeyedSubscript:@"regionInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v63 = [v62 copy];
      [(SISchemaDailyDeviceStatus *)v5 setRegionInfo:v63];
    }

    v64 = [dictionaryCopy objectForKeyedSubscript:@"storefrontId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v65 = [v64 copy];
      [(SISchemaDailyDeviceStatus *)v5 setStorefrontId:v65];
    }

    v66 = [dictionaryCopy objectForKeyedSubscript:@"installedVoices"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v75 = dictionaryCopy;
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

      dictionaryCopy = v75;
      v45 = v80;
      v44 = v81;
      v47 = v79;
    }

    v73 = v5;
  }

  return v5;
}

- (SISchemaDailyDeviceStatus)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaDailyDeviceStatus *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaDailyDeviceStatus *)self dictionaryRepresentation];
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
  v89 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_activeStatus)
  {
    activeStatus = [(SISchemaDailyDeviceStatus *)self activeStatus];
    dictionaryRepresentation = [activeStatus dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"activeStatus"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"activeStatus"];
    }
  }

  if (self->_aggregatedMetrics)
  {
    aggregatedMetrics = [(SISchemaDailyDeviceStatus *)self aggregatedMetrics];
    dictionaryRepresentation2 = [aggregatedMetrics dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"aggregatedMetrics"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"aggregatedMetrics"];
    }
  }

  has = self->_has;
  v11 = 0x1E696A000uLL;
  if ((has & 2) != 0)
  {
    v30 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[SISchemaDailyDeviceStatus assistantRecordPublishTimestampMs](self, "assistantRecordPublishTimestampMs")}];
    [dictionary setObject:v30 forKeyedSubscript:@"assistantRecordPublishTimestampMs"];

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
  [dictionary setObject:v32 forKeyedSubscript:@"availableDeviceStorageInMB"];

  if (*&self->_has)
  {
LABEL_14:
    v12 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[SISchemaDailyDeviceStatus clientDeviceSamplingTimestampMs](self, "clientDeviceSamplingTimestampMs")}];
    [dictionary setObject:v12 forKeyedSubscript:@"clientDeviceSamplingTimestampMs"];
  }

LABEL_15:
  if (self->_deviceBuild)
  {
    deviceBuild = [(SISchemaDailyDeviceStatus *)self deviceBuild];
    v14 = [deviceBuild copy];
    [dictionary setObject:v14 forKeyedSubscript:@"deviceBuild"];
  }

  if ((*&self->_has & 0x100) != 0)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SISchemaDailyDeviceStatus deviceCapacityInGB](self, "deviceCapacityInGB")}];
    [dictionary setObject:v15 forKeyedSubscript:@"deviceCapacityInGB"];
  }

  if (self->_deviceOs)
  {
    deviceOs = [(SISchemaDailyDeviceStatus *)self deviceOs];
    v17 = [deviceOs copy];
    [dictionary setObject:v17 forKeyedSubscript:@"deviceOs"];
  }

  if (self->_deviceType)
  {
    deviceType = [(SISchemaDailyDeviceStatus *)self deviceType];
    v19 = [deviceType copy];
    [dictionary setObject:v19 forKeyedSubscript:@"deviceType"];
  }

  if ([(NSArray *)self->_enabledDictationLocales count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation3 = [*(*(&v83 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation3)
          {
            [array addObject:dictionaryRepresentation3];
          }

          else
          {
            null3 = [MEMORY[0x1E695DFB0] null];
            [array addObject:null3];
          }
        }

        v23 = [(NSArray *)v21 countByEnumeratingWithState:&v83 objects:v88 count:16];
      }

      while (v23);
    }

    [dictionary setObject:array forKeyedSubscript:@"enabledDictationLocales"];
    v11 = 0x1E696A000;
  }

  if (self->_enabledStatus)
  {
    enabledStatus = [(SISchemaDailyDeviceStatus *)self enabledStatus];
    dictionaryRepresentation4 = [enabledStatus dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"enabledStatus"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"enabledStatus"];
    }
  }

  if ([(NSArray *)self->_installedVoices count])
  {
    installedVoices = [(SISchemaDailyDeviceStatus *)self installedVoices];
    v35 = [installedVoices copy];
    [dictionary setObject:v35 forKeyedSubscript:@"installedVoices"];
  }

  if ([(NSArray *)self->_linkedAccessoryStates count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation5 = [*(*(&v79 + 1) + 8 * j) dictionaryRepresentation];
          if (dictionaryRepresentation5)
          {
            [array2 addObject:dictionaryRepresentation5];
          }

          else
          {
            null5 = [MEMORY[0x1E695DFB0] null];
            [array2 addObject:null5];
          }
        }

        v39 = [(NSArray *)v37 countByEnumeratingWithState:&v79 objects:v87 count:16];
      }

      while (v39);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"linkedAccessoryState"];
    v11 = 0x1E696A000uLL;
  }

  if (self->_locale)
  {
    locale = [(SISchemaDailyDeviceStatus *)self locale];
    v45 = [locale copy];
    [dictionary setObject:v45 forKeyedSubscript:@"locale"];
  }

  if (self->_modelNumber)
  {
    modelNumber = [(SISchemaDailyDeviceStatus *)self modelNumber];
    v47 = [modelNumber copy];
    [dictionary setObject:v47 forKeyedSubscript:@"modelNumber"];
  }

  if (self->_multiUserSetup)
  {
    multiUserSetup = [(SISchemaDailyDeviceStatus *)self multiUserSetup];
    dictionaryRepresentation6 = [multiUserSetup dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"multiUserSetup"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"multiUserSetup"];
    }
  }

  if (self->_multiUserState)
  {
    multiUserState = [(SISchemaDailyDeviceStatus *)self multiUserState];
    dictionaryRepresentation7 = [multiUserState dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"multiUserState"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"multiUserState"];
    }
  }

  if (self->_personalization)
  {
    personalization = [(SISchemaDailyDeviceStatus *)self personalization];
    dictionaryRepresentation8 = [personalization dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"personalization"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"personalization"];
    }
  }

  if ((*&self->_has & 0x40) != 0)
  {
    v57 = [*(v11 + 3480) numberWithUnsignedLongLong:{-[SISchemaDailyDeviceStatus queuedAtTimestampHourInMs](self, "queuedAtTimestampHourInMs")}];
    [dictionary setObject:v57 forKeyedSubscript:@"queuedAtTimestampHourInMs"];
  }

  if (self->_regionInfo)
  {
    regionInfo = [(SISchemaDailyDeviceStatus *)self regionInfo];
    v59 = [regionInfo copy];
    [dictionary setObject:v59 forKeyedSubscript:@"regionInfo"];
  }

  if (self->_sharedUserId)
  {
    sharedUserId = [(SISchemaDailyDeviceStatus *)self sharedUserId];
    v61 = [sharedUserId copy];
    [dictionary setObject:v61 forKeyedSubscript:@"sharedUserId"];
  }

  if (self->_siriDeviceID)
  {
    siriDeviceID = [(SISchemaDailyDeviceStatus *)self siriDeviceID];
    v63 = [siriDeviceID copy];
    [dictionary setObject:v63 forKeyedSubscript:@"siriDeviceID"];
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

    [dictionary setObject:v65 forKeyedSubscript:@"siriInputLocale"];
  }

  if (self->_siriSpeechID)
  {
    siriSpeechID = [(SISchemaDailyDeviceStatus *)self siriSpeechID];
    v67 = [siriSpeechID copy];
    [dictionary setObject:v67 forKeyedSubscript:@"siriSpeechID"];
  }

  v68 = self->_has;
  if ((v68 & 8) != 0)
  {
    v69 = [*(v11 + 3480) numberWithBool:{-[SISchemaDailyDeviceStatus spokenNotificationsControlCenterModuleEnabled](self, "spokenNotificationsControlCenterModuleEnabled")}];
    [dictionary setObject:v69 forKeyedSubscript:@"spokenNotificationsControlCenterModuleEnabled"];

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
      [dictionary setObject:v72 forKeyedSubscript:@"spokenNotificationsproxCardSeen"];

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

      [dictionary setObject:v74 forKeyedSubscript:@"storeCountryCode"];
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

  [dictionary setObject:v71 forKeyedSubscript:@"spokenNotificationsWhitelistSettings"];
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
    storefrontId = [(SISchemaDailyDeviceStatus *)self storefrontId];
    v76 = [storefrontId copy];
    [dictionary setObject:v76 forKeyedSubscript:@"storefrontId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];
  v77 = dictionary;

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_132;
  }

  siriDeviceID = [(SISchemaDailyDeviceStatus *)self siriDeviceID];
  siriDeviceID2 = [equalCopy siriDeviceID];
  if ((siriDeviceID != 0) == (siriDeviceID2 == 0))
  {
    goto LABEL_131;
  }

  siriDeviceID3 = [(SISchemaDailyDeviceStatus *)self siriDeviceID];
  if (siriDeviceID3)
  {
    v8 = siriDeviceID3;
    siriDeviceID4 = [(SISchemaDailyDeviceStatus *)self siriDeviceID];
    siriDeviceID5 = [equalCopy siriDeviceID];
    v11 = [siriDeviceID4 isEqual:siriDeviceID5];

    if (!v11)
    {
      goto LABEL_132;
    }
  }

  else
  {
  }

  siriDeviceID = [(SISchemaDailyDeviceStatus *)self siriSpeechID];
  siriDeviceID2 = [equalCopy siriSpeechID];
  if ((siriDeviceID != 0) == (siriDeviceID2 == 0))
  {
    goto LABEL_131;
  }

  siriSpeechID = [(SISchemaDailyDeviceStatus *)self siriSpeechID];
  if (siriSpeechID)
  {
    v13 = siriSpeechID;
    siriSpeechID2 = [(SISchemaDailyDeviceStatus *)self siriSpeechID];
    siriSpeechID3 = [equalCopy siriSpeechID];
    v16 = [siriSpeechID2 isEqual:siriSpeechID3];

    if (!v16)
    {
      goto LABEL_132;
    }
  }

  else
  {
  }

  siriDeviceID = [(SISchemaDailyDeviceStatus *)self sharedUserId];
  siriDeviceID2 = [equalCopy sharedUserId];
  if ((siriDeviceID != 0) == (siriDeviceID2 == 0))
  {
    goto LABEL_131;
  }

  sharedUserId = [(SISchemaDailyDeviceStatus *)self sharedUserId];
  if (sharedUserId)
  {
    v18 = sharedUserId;
    sharedUserId2 = [(SISchemaDailyDeviceStatus *)self sharedUserId];
    sharedUserId3 = [equalCopy sharedUserId];
    v21 = [sharedUserId2 isEqual:sharedUserId3];

    if (!v21)
    {
      goto LABEL_132;
    }
  }

  else
  {
  }

  has = self->_has;
  v23 = equalCopy[112];
  if ((*&has & 1) != (v23 & 1))
  {
    goto LABEL_132;
  }

  if (*&has)
  {
    clientDeviceSamplingTimestampMs = self->_clientDeviceSamplingTimestampMs;
    if (clientDeviceSamplingTimestampMs != [equalCopy clientDeviceSamplingTimestampMs])
    {
      goto LABEL_132;
    }

    has = self->_has;
    v23 = equalCopy[112];
  }

  v25 = (*&has >> 1) & 1;
  if (v25 != ((v23 >> 1) & 1))
  {
    goto LABEL_132;
  }

  if (v25)
  {
    assistantRecordPublishTimestampMs = self->_assistantRecordPublishTimestampMs;
    if (assistantRecordPublishTimestampMs != [equalCopy assistantRecordPublishTimestampMs])
    {
      goto LABEL_132;
    }
  }

  siriDeviceID = [(SISchemaDailyDeviceStatus *)self locale];
  siriDeviceID2 = [equalCopy locale];
  if ((siriDeviceID != 0) == (siriDeviceID2 == 0))
  {
    goto LABEL_131;
  }

  locale = [(SISchemaDailyDeviceStatus *)self locale];
  if (locale)
  {
    v28 = locale;
    locale2 = [(SISchemaDailyDeviceStatus *)self locale];
    locale3 = [equalCopy locale];
    v31 = [locale2 isEqual:locale3];

    if (!v31)
    {
      goto LABEL_132;
    }
  }

  else
  {
  }

  siriDeviceID = [(SISchemaDailyDeviceStatus *)self deviceType];
  siriDeviceID2 = [equalCopy deviceType];
  if ((siriDeviceID != 0) == (siriDeviceID2 == 0))
  {
    goto LABEL_131;
  }

  deviceType = [(SISchemaDailyDeviceStatus *)self deviceType];
  if (deviceType)
  {
    v33 = deviceType;
    deviceType2 = [(SISchemaDailyDeviceStatus *)self deviceType];
    deviceType3 = [equalCopy deviceType];
    v36 = [deviceType2 isEqual:deviceType3];

    if (!v36)
    {
      goto LABEL_132;
    }
  }

  else
  {
  }

  siriDeviceID = [(SISchemaDailyDeviceStatus *)self deviceOs];
  siriDeviceID2 = [equalCopy deviceOs];
  if ((siriDeviceID != 0) == (siriDeviceID2 == 0))
  {
    goto LABEL_131;
  }

  deviceOs = [(SISchemaDailyDeviceStatus *)self deviceOs];
  if (deviceOs)
  {
    v38 = deviceOs;
    deviceOs2 = [(SISchemaDailyDeviceStatus *)self deviceOs];
    deviceOs3 = [equalCopy deviceOs];
    v41 = [deviceOs2 isEqual:deviceOs3];

    if (!v41)
    {
      goto LABEL_132;
    }
  }

  else
  {
  }

  siriDeviceID = [(SISchemaDailyDeviceStatus *)self deviceBuild];
  siriDeviceID2 = [equalCopy deviceBuild];
  if ((siriDeviceID != 0) == (siriDeviceID2 == 0))
  {
    goto LABEL_131;
  }

  deviceBuild = [(SISchemaDailyDeviceStatus *)self deviceBuild];
  if (deviceBuild)
  {
    v43 = deviceBuild;
    deviceBuild2 = [(SISchemaDailyDeviceStatus *)self deviceBuild];
    deviceBuild3 = [equalCopy deviceBuild];
    v46 = [deviceBuild2 isEqual:deviceBuild3];

    if (!v46)
    {
      goto LABEL_132;
    }
  }

  else
  {
  }

  siriDeviceID = [(SISchemaDailyDeviceStatus *)self enabledStatus];
  siriDeviceID2 = [equalCopy enabledStatus];
  if ((siriDeviceID != 0) == (siriDeviceID2 == 0))
  {
    goto LABEL_131;
  }

  enabledStatus = [(SISchemaDailyDeviceStatus *)self enabledStatus];
  if (enabledStatus)
  {
    v48 = enabledStatus;
    enabledStatus2 = [(SISchemaDailyDeviceStatus *)self enabledStatus];
    enabledStatus3 = [equalCopy enabledStatus];
    v51 = [enabledStatus2 isEqual:enabledStatus3];

    if (!v51)
    {
      goto LABEL_132;
    }
  }

  else
  {
  }

  siriDeviceID = [(SISchemaDailyDeviceStatus *)self activeStatus];
  siriDeviceID2 = [equalCopy activeStatus];
  if ((siriDeviceID != 0) == (siriDeviceID2 == 0))
  {
    goto LABEL_131;
  }

  activeStatus = [(SISchemaDailyDeviceStatus *)self activeStatus];
  if (activeStatus)
  {
    v53 = activeStatus;
    activeStatus2 = [(SISchemaDailyDeviceStatus *)self activeStatus];
    activeStatus3 = [equalCopy activeStatus];
    v56 = [activeStatus2 isEqual:activeStatus3];

    if (!v56)
    {
      goto LABEL_132;
    }
  }

  else
  {
  }

  siriDeviceID = [(SISchemaDailyDeviceStatus *)self personalization];
  siriDeviceID2 = [equalCopy personalization];
  if ((siriDeviceID != 0) == (siriDeviceID2 == 0))
  {
    goto LABEL_131;
  }

  personalization = [(SISchemaDailyDeviceStatus *)self personalization];
  if (personalization)
  {
    v58 = personalization;
    personalization2 = [(SISchemaDailyDeviceStatus *)self personalization];
    personalization3 = [equalCopy personalization];
    v61 = [personalization2 isEqual:personalization3];

    if (!v61)
    {
      goto LABEL_132;
    }
  }

  else
  {
  }

  siriDeviceID = [(SISchemaDailyDeviceStatus *)self multiUserState];
  siriDeviceID2 = [equalCopy multiUserState];
  if ((siriDeviceID != 0) == (siriDeviceID2 == 0))
  {
    goto LABEL_131;
  }

  multiUserState = [(SISchemaDailyDeviceStatus *)self multiUserState];
  if (multiUserState)
  {
    v63 = multiUserState;
    multiUserState2 = [(SISchemaDailyDeviceStatus *)self multiUserState];
    multiUserState3 = [equalCopy multiUserState];
    v66 = [multiUserState2 isEqual:multiUserState3];

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
  v69 = equalCopy[112];
  if (v68 != ((v69 >> 2) & 1))
  {
    goto LABEL_132;
  }

  if (v68)
  {
    spokenNotificationsproxCardSeen = self->_spokenNotificationsproxCardSeen;
    if (spokenNotificationsproxCardSeen != [equalCopy spokenNotificationsproxCardSeen])
    {
      goto LABEL_132;
    }

    v67 = self->_has;
    v69 = equalCopy[112];
  }

  v71 = (*&v67 >> 3) & 1;
  if (v71 != ((v69 >> 3) & 1))
  {
    goto LABEL_132;
  }

  if (v71)
  {
    spokenNotificationsControlCenterModuleEnabled = self->_spokenNotificationsControlCenterModuleEnabled;
    if (spokenNotificationsControlCenterModuleEnabled != [equalCopy spokenNotificationsControlCenterModuleEnabled])
    {
      goto LABEL_132;
    }

    v67 = self->_has;
    v69 = equalCopy[112];
  }

  v73 = (*&v67 >> 4) & 1;
  if (v73 != ((v69 >> 4) & 1))
  {
    goto LABEL_132;
  }

  if (v73)
  {
    spokenNotificationsWhitelistSettings = self->_spokenNotificationsWhitelistSettings;
    if (spokenNotificationsWhitelistSettings != [equalCopy spokenNotificationsWhitelistSettings])
    {
      goto LABEL_132;
    }
  }

  siriDeviceID = [(SISchemaDailyDeviceStatus *)self aggregatedMetrics];
  siriDeviceID2 = [equalCopy aggregatedMetrics];
  if ((siriDeviceID != 0) == (siriDeviceID2 == 0))
  {
    goto LABEL_131;
  }

  aggregatedMetrics = [(SISchemaDailyDeviceStatus *)self aggregatedMetrics];
  if (aggregatedMetrics)
  {
    v76 = aggregatedMetrics;
    aggregatedMetrics2 = [(SISchemaDailyDeviceStatus *)self aggregatedMetrics];
    aggregatedMetrics3 = [equalCopy aggregatedMetrics];
    v79 = [aggregatedMetrics2 isEqual:aggregatedMetrics3];

    if (!v79)
    {
      goto LABEL_132;
    }
  }

  else
  {
  }

  siriDeviceID = [(SISchemaDailyDeviceStatus *)self linkedAccessoryStates];
  siriDeviceID2 = [equalCopy linkedAccessoryStates];
  if ((siriDeviceID != 0) == (siriDeviceID2 == 0))
  {
    goto LABEL_131;
  }

  linkedAccessoryStates = [(SISchemaDailyDeviceStatus *)self linkedAccessoryStates];
  if (linkedAccessoryStates)
  {
    v81 = linkedAccessoryStates;
    linkedAccessoryStates2 = [(SISchemaDailyDeviceStatus *)self linkedAccessoryStates];
    linkedAccessoryStates3 = [equalCopy linkedAccessoryStates];
    v84 = [linkedAccessoryStates2 isEqual:linkedAccessoryStates3];

    if (!v84)
    {
      goto LABEL_132;
    }
  }

  else
  {
  }

  v85 = (*&self->_has >> 5) & 1;
  if (v85 != ((equalCopy[112] >> 5) & 1))
  {
    goto LABEL_132;
  }

  if (v85)
  {
    siriInputLocale = self->_siriInputLocale;
    if (siriInputLocale != [equalCopy siriInputLocale])
    {
      goto LABEL_132;
    }
  }

  siriDeviceID = [(SISchemaDailyDeviceStatus *)self multiUserSetup];
  siriDeviceID2 = [equalCopy multiUserSetup];
  if ((siriDeviceID != 0) == (siriDeviceID2 == 0))
  {
    goto LABEL_131;
  }

  multiUserSetup = [(SISchemaDailyDeviceStatus *)self multiUserSetup];
  if (multiUserSetup)
  {
    v88 = multiUserSetup;
    multiUserSetup2 = [(SISchemaDailyDeviceStatus *)self multiUserSetup];
    multiUserSetup3 = [equalCopy multiUserSetup];
    v91 = [multiUserSetup2 isEqual:multiUserSetup3];

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
  v94 = equalCopy[112];
  if (v93 != ((v94 >> 6) & 1))
  {
    goto LABEL_132;
  }

  if (v93)
  {
    queuedAtTimestampHourInMs = self->_queuedAtTimestampHourInMs;
    if (queuedAtTimestampHourInMs != [equalCopy queuedAtTimestampHourInMs])
    {
      goto LABEL_132;
    }

    v92 = self->_has;
    v94 = equalCopy[112];
  }

  v96 = (*&v92 >> 7) & 1;
  if (v96 != ((v94 >> 7) & 1))
  {
    goto LABEL_132;
  }

  if (v96)
  {
    storeCountryCode = self->_storeCountryCode;
    if (storeCountryCode != [equalCopy storeCountryCode])
    {
      goto LABEL_132;
    }
  }

  siriDeviceID = [(SISchemaDailyDeviceStatus *)self enabledDictationLocales];
  siriDeviceID2 = [equalCopy enabledDictationLocales];
  if ((siriDeviceID != 0) == (siriDeviceID2 == 0))
  {
    goto LABEL_131;
  }

  enabledDictationLocales = [(SISchemaDailyDeviceStatus *)self enabledDictationLocales];
  if (enabledDictationLocales)
  {
    v99 = enabledDictationLocales;
    enabledDictationLocales2 = [(SISchemaDailyDeviceStatus *)self enabledDictationLocales];
    enabledDictationLocales3 = [equalCopy enabledDictationLocales];
    v102 = [enabledDictationLocales2 isEqual:enabledDictationLocales3];

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
  v105 = equalCopy[112];
  if (v104 != ((v105 >> 8) & 1))
  {
    goto LABEL_132;
  }

  if (v104)
  {
    deviceCapacityInGB = self->_deviceCapacityInGB;
    if (deviceCapacityInGB != [equalCopy deviceCapacityInGB])
    {
      goto LABEL_132;
    }

    v103 = self->_has;
    v105 = equalCopy[112];
  }

  v107 = (*&v103 >> 9) & 1;
  if (v107 != ((v105 >> 9) & 1))
  {
    goto LABEL_132;
  }

  if (v107)
  {
    availableDeviceStorageInMB = self->_availableDeviceStorageInMB;
    [equalCopy availableDeviceStorageInMB];
    if (availableDeviceStorageInMB != v109)
    {
      goto LABEL_132;
    }
  }

  siriDeviceID = [(SISchemaDailyDeviceStatus *)self modelNumber];
  siriDeviceID2 = [equalCopy modelNumber];
  if ((siriDeviceID != 0) == (siriDeviceID2 == 0))
  {
    goto LABEL_131;
  }

  modelNumber = [(SISchemaDailyDeviceStatus *)self modelNumber];
  if (modelNumber)
  {
    v111 = modelNumber;
    modelNumber2 = [(SISchemaDailyDeviceStatus *)self modelNumber];
    modelNumber3 = [equalCopy modelNumber];
    v114 = [modelNumber2 isEqual:modelNumber3];

    if (!v114)
    {
      goto LABEL_132;
    }
  }

  else
  {
  }

  siriDeviceID = [(SISchemaDailyDeviceStatus *)self regionInfo];
  siriDeviceID2 = [equalCopy regionInfo];
  if ((siriDeviceID != 0) == (siriDeviceID2 == 0))
  {
    goto LABEL_131;
  }

  regionInfo = [(SISchemaDailyDeviceStatus *)self regionInfo];
  if (regionInfo)
  {
    v116 = regionInfo;
    regionInfo2 = [(SISchemaDailyDeviceStatus *)self regionInfo];
    regionInfo3 = [equalCopy regionInfo];
    v119 = [regionInfo2 isEqual:regionInfo3];

    if (!v119)
    {
      goto LABEL_132;
    }
  }

  else
  {
  }

  siriDeviceID = [(SISchemaDailyDeviceStatus *)self storefrontId];
  siriDeviceID2 = [equalCopy storefrontId];
  if ((siriDeviceID != 0) == (siriDeviceID2 == 0))
  {
    goto LABEL_131;
  }

  storefrontId = [(SISchemaDailyDeviceStatus *)self storefrontId];
  if (storefrontId)
  {
    v121 = storefrontId;
    storefrontId2 = [(SISchemaDailyDeviceStatus *)self storefrontId];
    storefrontId3 = [equalCopy storefrontId];
    v124 = [storefrontId2 isEqual:storefrontId3];

    if (!v124)
    {
      goto LABEL_132;
    }
  }

  else
  {
  }

  siriDeviceID = [(SISchemaDailyDeviceStatus *)self installedVoices];
  siriDeviceID2 = [equalCopy installedVoices];
  if ((siriDeviceID != 0) == (siriDeviceID2 == 0))
  {
LABEL_131:

    goto LABEL_132;
  }

  installedVoices = [(SISchemaDailyDeviceStatus *)self installedVoices];
  if (!installedVoices)
  {

LABEL_135:
    v130 = 1;
    goto LABEL_133;
  }

  v126 = installedVoices;
  installedVoices2 = [(SISchemaDailyDeviceStatus *)self installedVoices];
  installedVoices3 = [equalCopy installedVoices];
  v129 = [installedVoices2 isEqual:installedVoices3];

  if (v129)
  {
    goto LABEL_135;
  }

LABEL_132:
  v130 = 0;
LABEL_133:

  return v130;
}

- (void)writeTo:(id)to
{
  v61 = *MEMORY[0x1E69E9840];
  toCopy = to;
  siriDeviceID = [(SISchemaDailyDeviceStatus *)self siriDeviceID];

  if (siriDeviceID)
  {
    PBDataWriterWriteStringField();
  }

  siriSpeechID = [(SISchemaDailyDeviceStatus *)self siriSpeechID];

  if (siriSpeechID)
  {
    PBDataWriterWriteStringField();
  }

  sharedUserId = [(SISchemaDailyDeviceStatus *)self sharedUserId];

  if (sharedUserId)
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

  locale = [(SISchemaDailyDeviceStatus *)self locale];

  if (locale)
  {
    PBDataWriterWriteStringField();
  }

  deviceType = [(SISchemaDailyDeviceStatus *)self deviceType];

  if (deviceType)
  {
    PBDataWriterWriteStringField();
  }

  deviceOs = [(SISchemaDailyDeviceStatus *)self deviceOs];

  if (deviceOs)
  {
    PBDataWriterWriteStringField();
  }

  deviceBuild = [(SISchemaDailyDeviceStatus *)self deviceBuild];

  if (deviceBuild)
  {
    PBDataWriterWriteStringField();
  }

  enabledStatus = [(SISchemaDailyDeviceStatus *)self enabledStatus];

  if (enabledStatus)
  {
    enabledStatus2 = [(SISchemaDailyDeviceStatus *)self enabledStatus];
    PBDataWriterWriteSubmessage();
  }

  activeStatus = [(SISchemaDailyDeviceStatus *)self activeStatus];

  if (activeStatus)
  {
    activeStatus2 = [(SISchemaDailyDeviceStatus *)self activeStatus];
    PBDataWriterWriteSubmessage();
  }

  personalization = [(SISchemaDailyDeviceStatus *)self personalization];

  if (personalization)
  {
    personalization2 = [(SISchemaDailyDeviceStatus *)self personalization];
    PBDataWriterWriteSubmessage();
  }

  multiUserState = [(SISchemaDailyDeviceStatus *)self multiUserState];

  if (multiUserState)
  {
    multiUserState2 = [(SISchemaDailyDeviceStatus *)self multiUserState];
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
  aggregatedMetrics = [(SISchemaDailyDeviceStatus *)self aggregatedMetrics];

  if (aggregatedMetrics)
  {
    aggregatedMetrics2 = [(SISchemaDailyDeviceStatus *)self aggregatedMetrics];
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

  multiUserSetup = [(SISchemaDailyDeviceStatus *)self multiUserSetup];

  if (multiUserSetup)
  {
    multiUserSetup2 = [(SISchemaDailyDeviceStatus *)self multiUserSetup];
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

  modelNumber = [(SISchemaDailyDeviceStatus *)self modelNumber];

  if (modelNumber)
  {
    PBDataWriterWriteStringField();
  }

  regionInfo = [(SISchemaDailyDeviceStatus *)self regionInfo];

  if (regionInfo)
  {
    PBDataWriterWriteStringField();
  }

  storefrontId = [(SISchemaDailyDeviceStatus *)self storefrontId];

  if (storefrontId)
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

- (int)installedVoicesAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_installedVoices objectAtIndexedSubscript:index];
  intValue = [v3 intValue];

  return intValue;
}

- (void)addInstalledVoices:(int)voices
{
  v3 = *&voices;
  installedVoices = self->_installedVoices;
  if (!installedVoices)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_installedVoices;
    self->_installedVoices = array;

    installedVoices = self->_installedVoices;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)installedVoices addObject:v8];
}

- (void)setHasAvailableDeviceStorageInMB:(BOOL)b
{
  if (b)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasDeviceCapacityInGB:(BOOL)b
{
  if (b)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)addEnabledDictationLocales:(id)locales
{
  localesCopy = locales;
  enabledDictationLocales = self->_enabledDictationLocales;
  v8 = localesCopy;
  if (!enabledDictationLocales)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_enabledDictationLocales;
    self->_enabledDictationLocales = array;

    localesCopy = v8;
    enabledDictationLocales = self->_enabledDictationLocales;
  }

  [(NSArray *)enabledDictationLocales addObject:localesCopy];
}

- (void)setHasStoreCountryCode:(BOOL)code
{
  if (code)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasQueuedAtTimestampHourInMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasSiriInputLocale:(BOOL)locale
{
  if (locale)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)addLinkedAccessoryState:(id)state
{
  stateCopy = state;
  linkedAccessoryStates = self->_linkedAccessoryStates;
  v8 = stateCopy;
  if (!linkedAccessoryStates)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_linkedAccessoryStates;
    self->_linkedAccessoryStates = array;

    stateCopy = v8;
    linkedAccessoryStates = self->_linkedAccessoryStates;
  }

  [(NSArray *)linkedAccessoryStates addObject:stateCopy];
}

- (void)setHasSpokenNotificationsWhitelistSettings:(BOOL)settings
{
  if (settings)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasSpokenNotificationsControlCenterModuleEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasSpokenNotificationsproxCardSeen:(BOOL)seen
{
  if (seen)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasAssistantRecordPublishTimestampMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v29.receiver = self;
  v29.super_class = SISchemaDailyDeviceStatus;
  v5 = [(SISchemaInstrumentationMessage *)&v29 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:8])
  {
    [(SISchemaDailyDeviceStatus *)self deleteSiriDeviceID];
    [(SISchemaDailyDeviceStatus *)self deleteSiriSpeechID];
    [(SISchemaDailyDeviceStatus *)self deleteSharedUserId];
  }

  enabledStatus = [(SISchemaDailyDeviceStatus *)self enabledStatus];
  v7 = [enabledStatus applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(SISchemaDailyDeviceStatus *)self deleteEnabledStatus];
  }

  activeStatus = [(SISchemaDailyDeviceStatus *)self activeStatus];
  v10 = [activeStatus applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(SISchemaDailyDeviceStatus *)self deleteActiveStatus];
  }

  personalization = [(SISchemaDailyDeviceStatus *)self personalization];
  v13 = [personalization applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(SISchemaDailyDeviceStatus *)self deletePersonalization];
  }

  multiUserState = [(SISchemaDailyDeviceStatus *)self multiUserState];
  v16 = [multiUserState applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(SISchemaDailyDeviceStatus *)self deleteMultiUserState];
  }

  aggregatedMetrics = [(SISchemaDailyDeviceStatus *)self aggregatedMetrics];
  v19 = [aggregatedMetrics applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(SISchemaDailyDeviceStatus *)self deleteAggregatedMetrics];
  }

  linkedAccessoryStates = [(SISchemaDailyDeviceStatus *)self linkedAccessoryStates];
  v22 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:linkedAccessoryStates underConditions:policyCopy];
  [(SISchemaDailyDeviceStatus *)self setLinkedAccessoryStates:v22];

  multiUserSetup = [(SISchemaDailyDeviceStatus *)self multiUserSetup];
  v24 = [multiUserSetup applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v24 suppressMessage];

  if (suppressMessage6)
  {
    [(SISchemaDailyDeviceStatus *)self deleteMultiUserSetup];
  }

  enabledDictationLocales = [(SISchemaDailyDeviceStatus *)self enabledDictationLocales];
  v27 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:enabledDictationLocales underConditions:policyCopy];
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