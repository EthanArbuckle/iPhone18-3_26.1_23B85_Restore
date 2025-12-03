@interface UAUserActivityInfo
+ (id)encodedInfoToOldEncodedInfo:(id)info;
- (BOOL)setPayload:(id)payload identifier:(id)identifier;
- (NSDictionary)payloads;
- (UAUserActivityInfo)initWithArchivedUserActivityInfo:(id)info;
- (UAUserActivityInfo)initWithCoder:(id)coder;
- (UAUserActivityInfo)initWithUUID:(id)d type:(unint64_t)type options:(id)options;
- (UAUserActivityInfo)initWithUserActivityInfo:(id)info;
- (id)archiveUserActivityInfo;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)logString;
- (id)optionalUserActivityData;
- (id)payloadForIdentifier:(id)identifier;
- (id)payloadIdentifiers;
- (id)provenance;
- (id)secondaryUserActivityString;
- (id)statusString;
- (id)userActivityString;
- (void)_createUserActivityStrings:(id)strings secondaryString:(id)string optionalData:(id)data;
- (void)encodeWithCoder:(id)coder;
- (void)setPayloads:(id)payloads;
@end

@implementation UAUserActivityInfo

- (NSDictionary)payloads
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  payloads = selfCopy->_payloads;
  if (payloads)
  {
    v4 = [(NSMutableDictionary *)payloads copy];
  }

  else
  {
    v4 = 0;
  }

  objc_sync_exit(selfCopy);

  return v4;
}

- (id)description
{
  v66 = *MEMORY[0x277D85DE8];
  error = [(UAUserActivityInfo *)self error];

  v5 = 0x277CCA000uLL;
  v6 = MEMORY[0x277CCACA8];
  if (error)
  {
    error2 = [(UAUserActivityInfo *)self error];
    v8 = [v6 stringWithFormat:@"UAUserActivityInfo: error=%@", error2];

    goto LABEL_47;
  }

  v9 = suggestedActionTypeString([(UAUserActivityInfo *)self type]);
  uuid = [(UAUserActivityInfo *)self uuid];
  uUIDString = [uuid UUIDString];
  activityType = [(UAUserActivityInfo *)self activityType];
  dynamicActivityType = [(UAUserActivityInfo *)self dynamicActivityType];
  teamIdentifier = [(UAUserActivityInfo *)self teamIdentifier];
  persistentIdentifier = [(UAUserActivityInfo *)self persistentIdentifier];
  if (persistentIdentifier)
  {
    persistentIdentifier2 = [(UAUserActivityInfo *)self persistentIdentifier];
  }

  else
  {
    persistentIdentifier2 = @"-";
  }

  payloads = [(UAUserActivityInfo *)self payloads];
  v50 = [payloads objectForKey:@"UAUserActivityUserInfoPayload"];
  v57 = trimmedHexStringForData(v50, 0x40uLL);
  webpageURL = [(UAUserActivityInfo *)self webpageURL];
  v13 = @" webPageURL=<private>";
  v14 = &stru_283A5A2C8;
  v48 = webpageURL;
  if (!webpageURL)
  {
    v13 = &stru_283A5A2C8;
  }

  v44 = v13;
  referrerURL = [(UAUserActivityInfo *)self referrerURL];
  v16 = @" referrerURL=<private>";
  v47 = referrerURL;
  if (!referrerURL)
  {
    v16 = &stru_283A5A2C8;
  }

  v43 = v16;
  payloads2 = [(UAUserActivityInfo *)self payloads];
  v45 = [payloads2 objectForKey:@"UAUserActivityStreamsPayload"];
  v49 = v6;
  if (v45)
  {
    v17 = MEMORY[0x277CCACA8];
    payloads3 = [(UAUserActivityInfo *)self payloads];
    v40 = [payloads3 objectForKey:@"UAUserActivityStreamsPayload"];
    v39 = trimmedHexStringForData(v40, 0x10uLL);
    v14 = [v17 stringWithFormat:@" streamData=%@", v39];
  }

  v55 = v14;
  [(UAUserActivityInfo *)self payloadForIdentifier:@"UAUserActivityContentAttributeSetPayloadKey"];
  v42 = v18 = &stru_283A5A2C8;
  if (v42)
  {
    options2 = &stru_283A5A2C8;
    v19 = MEMORY[0x277CCACA8];
    v38 = [(UAUserActivityInfo *)self payloadForIdentifier:@"UAUserActivityContentAttributeSetPayloadKey"];
    v37 = trimmedHexStringForData(v38, 0x10uLL);
    v20 = v19;
    v18 = &stru_283A5A2C8;
    v54 = [v20 stringWithFormat:@" contentAttr=%@", v37];
  }

  else
  {
    v54 = &stru_283A5A2C8;
  }

  v53 = uUIDString;
  selfCopy = self;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  payloadIdentifiers = [(UAUserActivityInfo *)selfCopy payloadIdentifiers];
  v23 = [payloadIdentifiers countByEnumeratingWithState:&v61 objects:v65 count:16];
  if (v23)
  {
    options2 = v23;
    v36 = selfCopy;
    v24 = 0;
    v25 = *v62;
    do
    {
      for (i = 0; i != options2; i = (i + 1))
      {
        if (*v62 != v25)
        {
          objc_enumerationMutation(payloadIdentifiers);
        }

        v27 = *(*(&v61 + 1) + 8 * i);
        if (([v27 isEqual:@"UAUserActivityStreamsPayload"] & 1) == 0 && (objc_msgSend(v27, "isEqual:", @"UAUserActivityUserInfoPayload") & 1) == 0 && (objc_msgSend(v27, "isEqual:", @"UAUserActivityContentAttributeSetPayloadKey") & 1) == 0)
        {
          if (v24)
          {
            [v24 appendFormat:@" %@", v27];
          }

          else
          {
            v24 = objc_alloc_init(MEMORY[0x277CCAB68]);
            objc_msgSend(v24, "appendFormat:", @"(%@"), v27;
          }
        }
      }

      options2 = [payloadIdentifiers countByEnumeratingWithState:&v61 objects:v65 count:16];
    }

    while (options2);

    if (!v24)
    {
      v28 = 0;
      v5 = 0x277CCA000uLL;
      v18 = &stru_283A5A2C8;
      selfCopy = v36;
      goto LABEL_33;
    }

    [v24 appendFormat:@""]);
    v28 = [v24 copy];
    payloadIdentifiers = v24;
    v5 = 0x277CCA000;
    v18 = &stru_283A5A2C8;
    selfCopy = v36;
  }

  else
  {
    v28 = 0;
  }

LABEL_33:
  if (v28)
  {
    v29 = v28;
  }

  else
  {
    v29 = &stru_283A5A2C8;
  }

  options = [(UAUserActivityInfo *)selfCopy options];
  if (options)
  {
    v31 = *(v5 + 3240);
    options2 = [(UAUserActivityInfo *)selfCopy options];
    v5 = userActivityInfoOptionsDictionaryString(options2);
    v18 = [v31 stringWithFormat:@" opts=%@", v5];
  }

  when = [(UAUserActivityInfo *)selfCopy when];
  [v49 stringWithFormat:@"UAUserActivityInfo:{ type = %@; uuid = %@; activityType = %@; dynamicActivityType = %@; teamID=%@; %@ userInfo = %@%@%@%@ - %@ - %@ %@; when = %@ }", v9, v53, activityType, dynamicActivityType, teamIdentifier, persistentIdentifier2, v57, v44, v43, v55, v54, v29, v18, when];
  v8 = v33 = v18;

  if (options)
  {
  }

  if (v42)
  {
  }

  if (v45)
  {
  }

  if (persistentIdentifier)
  {
  }

LABEL_47:
  v34 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)payloadIdentifiers
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  payloads = selfCopy->_payloads;
  if (payloads)
  {
    allKeys = [(NSMutableDictionary *)payloads allKeys];
  }

  else
  {
    allKeys = 0;
  }

  objc_sync_exit(selfCopy);

  return allKeys;
}

- (id)logString
{
  error = [(UAUserActivityInfo *)self error];

  v4 = MEMORY[0x277CCACA8];
  if (error)
  {
    error2 = [(UAUserActivityInfo *)self error];
    v6 = [v4 stringWithFormat:@"UAUserActivityInfo: error=%@", error2];
  }

  else
  {
    error2 = suggestedActionTypeString([(UAUserActivityInfo *)self type]);
    uuid = [(UAUserActivityInfo *)self uuid];
    uUIDString = [uuid UUIDString];
    activityType = [(UAUserActivityInfo *)self activityType];
    dynamicActivityType = [(UAUserActivityInfo *)self dynamicActivityType];
    if (dynamicActivityType)
    {
      v7 = MEMORY[0x277CCACA8];
      dynamicActivityType2 = [(UAUserActivityInfo *)self dynamicActivityType];
      v29 = [v7 stringWithFormat:@":%@", dynamicActivityType2];
    }

    else
    {
      v29 = &stru_283A5A2C8;
    }

    teamIdentifier = [(UAUserActivityInfo *)self teamIdentifier];
    if (teamIdentifier)
    {
      v8 = MEMORY[0x277CCACA8];
      teamIdentifier2 = [(UAUserActivityInfo *)self teamIdentifier];
      v28 = [v8 stringWithFormat:@"(%@)", teamIdentifier2];
    }

    else
    {
      v28 = &stru_283A5A2C8;
    }

    encodedUserInfoError = [(UAUserActivityInfo *)self encodedUserInfoError];
    if (encodedUserInfoError)
    {
      encodedUserInfoError2 = [(UAUserActivityInfo *)self encodedUserInfoError];
      [encodedUserInfoError2 description];
    }

    else
    {
      encodedUserInfoError2 = [(UAUserActivityInfo *)self payloads];
      v20 = [encodedUserInfoError2 objectForKey:@"UAUserActivityUserInfoPayload"];
      trimmedHexStringForData(v20, 0x10uLL);
    }
    v10 = ;
    v11 = MEMORY[0x277CCACA8];
    webpageURL = [(UAUserActivityInfo *)self webpageURL];
    v13 = @"webPageURL=<private>";
    if (!webpageURL)
    {
      v13 = &stru_283A5A2C8;
    }

    v14 = [v11 stringWithFormat:@"%@", v13];
    v15 = MEMORY[0x277CCACA8];
    referrerURL = [(UAUserActivityInfo *)self referrerURL];
    v17 = @"referrer=<private>";
    if (!referrerURL)
    {
      v17 = &stru_283A5A2C8;
    }

    v18 = [v15 stringWithFormat:@"%@", v17];
    v6 = [v4 stringWithFormat:@"UAInfo:{ %@ %@%@%@ %@ userInfo=%@/%@%@}", error2, uUIDString, activityType, v29, v28, v10, v14, v18];;

    if (!encodedUserInfoError)
    {

      v10 = v20;
    }

    if (teamIdentifier)
    {
    }

    if (dynamicActivityType)
    {
    }
  }

  return v6;
}

- (UAUserActivityInfo)initWithUUID:(id)d type:(unint64_t)type options:(id)options
{
  dCopy = d;
  optionsCopy = options;
  v18.receiver = self;
  v18.super_class = UAUserActivityInfo;
  v10 = [(UAUserActivityInfo *)&v18 init];
  if (v10)
  {
    if (dCopy)
    {
      v11 = [dCopy copy];
    }

    else
    {
      v11 = objc_alloc_init(MEMORY[0x277CCAD78]);
    }

    uuid = v10->_uuid;
    v10->_uuid = v11;

    v10->_type = type;
    v13 = [optionsCopy copy];
    options = v10->_options;
    v10->_options = v13;

    v10->_active = 1;
    date = [MEMORY[0x277CBEAA8] date];
    when = v10->_when;
    v10->_when = date;
  }

  return v10;
}

- (UAUserActivityInfo)initWithUserActivityInfo:(id)info
{
  infoCopy = info;
  v60.receiver = self;
  v60.super_class = UAUserActivityInfo;
  v5 = [(UAUserActivityInfo *)&v60 init];
  if (v5)
  {
    when = [infoCopy when];
    when = v5->_when;
    v5->_when = when;

    uuid = [infoCopy uuid];
    if (uuid)
    {
      [infoCopy uuid];
    }

    else
    {
      [MEMORY[0x277CCAD78] UUID];
    }
    v9 = ;
    uuid = v5->_uuid;
    v5->_uuid = v9;

    v5->_type = [infoCopy type];
    options = [infoCopy options];
    v12 = [options copy];
    options = v5->_options;
    v5->_options = v12;

    activityType = [infoCopy activityType];
    v15 = [activityType copy];
    activityType = v5->_activityType;
    v5->_activityType = v15;

    dynamicActivityType = [infoCopy dynamicActivityType];
    v18 = [dynamicActivityType copy];
    dynamicActivityType = v5->_dynamicActivityType;
    v5->_dynamicActivityType = v18;

    teamIdentifier = [infoCopy teamIdentifier];
    v21 = [teamIdentifier copy];
    teamIdentifier = v5->_teamIdentifier;
    v5->_teamIdentifier = v21;

    bundleIdentifier = [infoCopy bundleIdentifier];
    v24 = [bundleIdentifier copy];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v24;

    title = [infoCopy title];
    v27 = [title copy];
    title = v5->_title;
    v5->_title = v27;

    webpageURL = [infoCopy webpageURL];
    webpageURL = v5->_webpageURL;
    v5->_webpageURL = webpageURL;

    referrerURL = [infoCopy referrerURL];
    referrerURL = v5->_referrerURL;
    v5->_referrerURL = referrerURL;

    targetContentIdentifier = [infoCopy targetContentIdentifier];
    targetContentIdentifier = v5->_targetContentIdentifier;
    v5->_targetContentIdentifier = targetContentIdentifier;

    payloads = [infoCopy payloads];
    if (payloads)
    {
      payloads2 = [infoCopy payloads];
      v37 = [payloads2 mutableCopy];
      payloads = v5->_payloads;
      v5->_payloads = v37;
    }

    else
    {
      payloads2 = v5->_payloads;
      v5->_payloads = 0;
    }

    encodedUserInfoError = [infoCopy encodedUserInfoError];
    v40 = [encodedUserInfoError copy];
    encodedUserInfoError = v5->_encodedUserInfoError;
    v5->_encodedUserInfoError = v40;

    v5->_eligibleForHandoff = [infoCopy eligibleForHandoff];
    v5->_eligibleForSearch = [infoCopy eligibleForSearch];
    v5->_eligibleForPublicIndexing = [infoCopy eligibleForPublicIndexing];
    v5->_eligibleForReminders = [infoCopy eligibleForReminders];
    contentUserAction = [infoCopy contentUserAction];
    v43 = [contentUserAction copy];
    contentUserAction = v5->_contentUserAction;
    v5->_contentUserAction = v43;

    keywords = [infoCopy keywords];
    v46 = [keywords copy];
    keywords = v5->_keywords;
    v5->_keywords = v46;

    expirationDate = [infoCopy expirationDate];
    v49 = [expirationDate copy];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v49;

    v5->_eligibleForPrediction = [infoCopy eligibleForPrediction];
    persistentIdentifier = [infoCopy persistentIdentifier];
    persistentIdentifier = v5->_persistentIdentifier;
    v5->_persistentIdentifier = persistentIdentifier;

    peerDeviceType = [infoCopy peerDeviceType];
    v54 = [peerDeviceType copy];
    peerDeviceType = v5->_peerDeviceType;
    v5->_peerDeviceType = v54;

    peerDevice = [infoCopy peerDevice];
    v57 = [peerDevice copy];
    peerDevice = v5->_peerDevice;
    v5->_peerDevice = v57;

    v5->_active = [infoCopy active];
    v5->_universalLink = [infoCopy isUniversalLink];
  }

  return v5;
}

- (UAUserActivityInfo)initWithArchivedUserActivityInfo:(id)info
{
  v4 = MEMORY[0x277CCAAC8];
  infoCopy = info;
  v6 = [[v4 alloc] initForReadingFromData:infoCopy error:0];

  v7 = [(UAUserActivityInfo *)self initWithCoder:v6];
  [v6 finishDecoding];

  return v7;
}

- (UAUserActivityInfo)initWithCoder:(id)coder
{
  v76 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v74.receiver = self;
  v74.super_class = UAUserActivityInfo;
  v5 = [(UAUserActivityInfo *)&v74 init];
  if (!v5)
  {
    goto LABEL_28;
  }

  v6 = 0x277CCA000uLL;
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"error"];
  [(UAUserActivityInfo *)v5 setError:v7];

  error = [(UAUserActivityInfo *)v5 error];

  if (error)
  {
    goto LABEL_28;
  }

  if (initWithCoder__sOnce != -1)
  {
    [UAUserActivityInfo initWithCoder:];
  }

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
  uuid = v5->_uuid;
  v5->_uuid = v9;

  v5->_type = [coderCopy decodeIntegerForKey:@"type"];
  v11 = [coderCopy decodeObjectOfClasses:initWithCoder__sAcceptableObjects forKey:@"options"];
  options = v5->_options;
  v5->_options = v11;

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  title = v5->_title;
  v5->_title = v13;

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"webpageURL"];
  if ([UAUserActivity checkWebpageURL:v15 actionType:[(UAUserActivityInfo *)v5 type] throwIfFailed:0])
  {
    objc_storeStrong(&v5->_webpageURL, v15);
  }

  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"referrerURL"];
  referrerURL = v5->_referrerURL;
  v5->_referrerURL = v16;

  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"targetContentIdentifier"];
  targetContentIdentifier = v5->_targetContentIdentifier;
  v5->_targetContentIdentifier = v18;

  v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
  payloads = v5->_payloads;
  v5->_payloads = v20;

  v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"streamsData"];
  [(UAUserActivityInfo *)v5 setPayload:v22 identifier:@"UAUserActivityStreamsPayload"];

  v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"payload"];
  [(UAUserActivityInfo *)v5 setPayload:v23 identifier:@"UAUserActivityUserInfoPayload"];

  v24 = MEMORY[0x277CBEB98];
  v25 = objc_opt_class();
  v26 = objc_opt_class();
  v27 = [v24 setWithObjects:{v25, v26, objc_opt_class(), 0}];
  v28 = [coderCopy decodeObjectOfClasses:v27 forKey:@"payloads"];

  if (v28)
  {
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    allKeys = [v28 allKeys];
    v30 = [allKeys countByEnumeratingWithState:&v70 objects:v75 count:16];
    if (v30)
    {
      v31 = v30;
      v68 = v15;
      v69 = coderCopy;
      v32 = *v71;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v71 != v32)
          {
            objc_enumerationMutation(allKeys);
          }

          v34 = *(*(&v70 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (v28)
            {
              v35 = [v28 objectForKeyedSubscript:v34];
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();

              if (isKindOfClass)
              {
                continue;
              }
            }
          }

          v28 = 0;
        }

        v31 = [allKeys countByEnumeratingWithState:&v70 objects:v75 count:16];
      }

      while (v31);

      v15 = v68;
      coderCopy = v69;
      v6 = 0x277CCA000;
      if (!v28)
      {
        goto LABEL_23;
      }
    }

    else
    {
    }

    [(NSMutableDictionary *)v5->_payloads addEntriesFromDictionary:v28];
  }

LABEL_23:
  v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"when"];
  when = v5->_when;
  v5->_when = v37;

  v5->_active = [coderCopy decodeBoolForKey:@"isActive"];
  v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"peerDeviceType"];
  peerDeviceType = v5->_peerDeviceType;
  v5->_peerDeviceType = v39;

  getSFPeerDeviceClass();
  v41 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"peerDevice"];
  peerDevice = v5->_peerDevice;
  v5->_peerDevice = v41;

  v43 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  bundleIdentifier = v5->_bundleIdentifier;
  v5->_bundleIdentifier = v43;

  v45 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activityType"];
  activityType = v5->_activityType;
  v5->_activityType = v45;

  v47 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dynamicActivityType"];
  dynamicActivityType = v5->_dynamicActivityType;
  v5->_dynamicActivityType = v47;

  v49 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"teamIdentifier"];
  teamIdentifier = v5->_teamIdentifier;
  v5->_teamIdentifier = v49;

  v51 = *(v6 + 2488);
  v52 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"payloadError"];
  encodedUserInfoError = v5->_encodedUserInfoError;
  v5->_encodedUserInfoError = v52;

  v5->_eligibleForHandoff = [coderCopy decodeBoolForKey:@"eligibleForHandoff"];
  v5->_eligibleForSearch = [coderCopy decodeBoolForKey:@"eligibleForSearch"];
  v5->_eligibleForPublicIndexing = [coderCopy decodeBoolForKey:@"eligibleForPublicIndexing"];
  v5->_eligibleForReminders = [coderCopy decodeBoolForKey:@"eligibleForReminders"];
  if (initWithCoder__sKeywordsOnce != -1)
  {
    [UAUserActivityInfo initWithCoder:];
  }

  v54 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contentActions"];
  contentUserAction = v5->_contentUserAction;
  v5->_contentUserAction = v54;

  v56 = [coderCopy decodeObjectOfClasses:initWithCoder__sKeywordsAcceptableObjects forKey:@"keywords"];
  keywords = v5->_keywords;
  v5->_keywords = v56;

  v58 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
  expirationDate = v5->_expirationDate;
  v5->_expirationDate = v58;

  v5->_eligibleForPrediction = [coderCopy decodeBoolForKey:@"eligibleForPrediction"];
  v60 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"persistentIdentifier"];
  persistentIdentifier = v5->_persistentIdentifier;
  v5->_persistentIdentifier = v60;

  v62 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contentAttributeSetData"];
  if (v62)
  {
    [(NSMutableDictionary *)v5->_payloads setObject:v62 forKey:@"UAUserActivityContentAttributeSetPayloadKey"];
  }

  v63 = [coderCopy decodeObjectOfClasses:initWithCoder__sKeywordsAcceptableObjects forKey:@"requiredKeys"];
  requiredUserInfoKeys = v5->_requiredUserInfoKeys;
  v5->_requiredUserInfoKeys = v63;

  v65 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"universalLink"];
  v5->_universalLink = [v65 BOOLValue];

LABEL_28:
  v66 = *MEMORY[0x277D85DE8];
  return v5;
}

void __36__UAUserActivityInfo_initWithCoder___block_invoke()
{
  v5[10] = *MEMORY[0x277D85DE8];
  v0 = objc_alloc(MEMORY[0x277CBEB98]);
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v5[2] = objc_opt_class();
  v5[3] = objc_opt_class();
  v5[4] = objc_opt_class();
  v5[5] = objc_opt_class();
  v5[6] = objc_opt_class();
  v5[7] = objc_opt_class();
  v5[8] = objc_opt_class();
  v5[9] = objc_opt_class();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:10];
  v2 = [v0 initWithArray:v1];
  v3 = initWithCoder__sAcceptableObjects;
  initWithCoder__sAcceptableObjects = v2;

  v4 = *MEMORY[0x277D85DE8];
}

void __36__UAUserActivityInfo_initWithCoder___block_invoke_2()
{
  v5[2] = *MEMORY[0x277D85DE8];
  v0 = objc_alloc(MEMORY[0x277CBEB98]);
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v2 = [v0 initWithArray:v1];
  v3 = initWithCoder__sKeywordsAcceptableObjects;
  initWithCoder__sKeywordsAcceptableObjects = v2;

  v4 = *MEMORY[0x277D85DE8];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt32:1 forKey:@"version"];
  error = [(UAUserActivityInfo *)self error];

  if (error)
  {
    error2 = [(UAUserActivityInfo *)self error];
    [coderCopy encodeObject:error2 forKey:@"error"];
  }

  else
  {
    uuid = [(UAUserActivityInfo *)self uuid];
    v7 = coderCopy;
    v8 = objc_opt_class();
    encodeObjectOfType(v7, uuid, v8, @"uuid");

    [v7 encodeInteger:-[UAUserActivityInfo type](self forKey:{"type"), @"type"}];
    options = [(UAUserActivityInfo *)self options];
    encodeDictionary(v7, options, @"options");

    title = [(UAUserActivityInfo *)self title];
    encodeString(v7, title, @"title");

    webpageURL = [(UAUserActivityInfo *)self webpageURL];
    encodeURL(v7, webpageURL, @"webpageURL");

    referrerURL = [(UAUserActivityInfo *)self referrerURL];
    encodeURL(v7, referrerURL, @"referrerURL");

    targetContentIdentifier = [(UAUserActivityInfo *)self targetContentIdentifier];
    encodeString(v7, targetContentIdentifier, @"targetContentIdentifier");

    activityType = [(UAUserActivityInfo *)self activityType];
    encodeString(v7, activityType, @"activityType");

    dynamicActivityType = [(UAUserActivityInfo *)self dynamicActivityType];
    encodeString(v7, dynamicActivityType, @"dynamicActivityType");

    teamIdentifier = [(UAUserActivityInfo *)self teamIdentifier];
    encodeString(v7, teamIdentifier, @"teamIdentifier");

    bundleIdentifier = [(UAUserActivityInfo *)self bundleIdentifier];
    encodeString(v7, bundleIdentifier, @"bundleIdentifier");

    peerDevice = [(UAUserActivityInfo *)self peerDevice];
    SFPeerDeviceClass = getSFPeerDeviceClass();
    encodeObjectOfType(v7, peerDevice, SFPeerDeviceClass, @"peerDevice");

    peerDeviceType = [(UAUserActivityInfo *)self peerDeviceType];
    encodeString(v7, peerDeviceType, @"peerDeviceType");

    when = [(UAUserActivityInfo *)self when];
    v22 = objc_opt_class();
    encodeObjectOfType(v7, when, v22, @"when");

    [v7 encodeBool:-[UAUserActivityInfo active](self forKey:{"active"), @"isActive"}];
    encodingOptions = [(UAUserActivityInfo *)self encodingOptions];
    v24 = [encodingOptions objectForKey:@"NSUserActivityMinimalExtraInfo"];
    bOOLValue = [v24 BOOLValue];

    encodingOptions2 = [(UAUserActivityInfo *)self encodingOptions];
    v27 = [encodingOptions2 objectForKey:@"NSUserActivityDontEncodePayload"];
    bOOLValue2 = [v27 BOOLValue];

    if (bOOLValue)
    {
      encodingOptions3 = [(UAUserActivityInfo *)self encodingOptions];
      v30 = [encodingOptions3 objectForKey:@"NSUserActivityDontEncodeContentAttributes"];
      bOOLValue3 = [v30 BOOLValue];
    }

    else
    {
      bOOLValue3 = 1;
    }

    payloads = [(UAUserActivityInfo *)self payloads];
    error2 = [payloads mutableCopy];

    v33 = [error2 objectForKey:@"UAUserActivityStreamsPayload"];

    if (v33)
    {
      v34 = [error2 objectForKey:@"UAUserActivityStreamsPayload"];
      encodeData(v7, v34, @"streamsData");

      [error2 removeObjectForKey:@"UAUserActivityStreamsPayload"];
    }

    if (bOOLValue3)
    {
      contentUserAction = [(UAUserActivityInfo *)self contentUserAction];
      encodeString(v7, contentUserAction, @"contentAction");

      keywords = [(UAUserActivityInfo *)self keywords];
      encodeSet(v7, keywords, @"keywords");
    }

    v37 = [error2 objectForKey:@"UAUserActivityContentAttributeSetPayloadKey"];

    if (v37)
    {
      v38 = [error2 objectForKey:@"UAUserActivityContentAttributeSetPayloadKey"];
      encodeData(v7, v38, @"contentAttributeSetData");

      if (bOOLValue3)
      {
        [error2 removeObjectForKey:@"UAUserActivityContentAttributeSetPayloadKey"];
      }
    }

    if ((bOOLValue2 & 1) == 0)
    {
      v39 = [(UAUserActivityInfo *)self payloadForIdentifier:@"UAUserActivityUserInfoPayload"];
      if (v39)
      {
        encodeData(v7, v39, @"payload");
        [error2 removeObjectForKey:@"UAUserActivityUserInfoPayload"];
      }

      encodedUserInfoError = [(UAUserActivityInfo *)self encodedUserInfoError];
      v41 = objc_opt_class();
      encodeObjectOfType(v7, encodedUserInfoError, v41, @"payloadError");
    }

    if ([error2 count])
    {
      encodeDictionary(v7, error2, @"payloads");
    }

    [v7 encodeBool:-[UAUserActivityInfo eligibleForHandoff](self forKey:{"eligibleForHandoff"), @"eligibleForHandoff"}];
    [v7 encodeBool:-[UAUserActivityInfo eligibleForSearch](self forKey:{"eligibleForSearch"), @"eligibleForSearch"}];
    [v7 encodeBool:-[UAUserActivityInfo eligibleForPublicIndexing](self forKey:{"eligibleForPublicIndexing"), @"eligibleForPublicIndexing"}];
    [v7 encodeBool:-[UAUserActivityInfo eligibleForReminders](self forKey:{"eligibleForReminders"), @"eligibleForReminders"}];
    [v7 encodeBool:-[UAUserActivityInfo eligibleForPrediction](self forKey:{"eligibleForPrediction"), @"eligibleForPrediction"}];
    persistentIdentifier = [(UAUserActivityInfo *)self persistentIdentifier];
    [v7 encodeObject:persistentIdentifier forKey:@"persistentIdentifier"];

    expirationDate = [(UAUserActivityInfo *)self expirationDate];
    v44 = objc_opt_class();
    encodeObjectOfType(v7, expirationDate, v44, @"expirationDate");

    requiredUserInfoKeys = self->_requiredUserInfoKeys;
    if (requiredUserInfoKeys)
    {
      encodeSet(v7, requiredUserInfoKeys, @"requiredKeys");
    }

    if ([(UAUserActivityInfo *)self isUniversalLink])
    {
      encodeObject(v7, MEMORY[0x277CBEC38], @"universalLink");
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[UAUserActivityInfo allocWithZone:?]];
  if (v4)
  {
    uuid = [(UAUserActivityInfo *)self uuid];
    uuid = v4->_uuid;
    v4->_uuid = uuid;

    [(UAUserActivityInfo *)v4 setType:[(UAUserActivityInfo *)self type]];
    options = [(UAUserActivityInfo *)self options];
    [(UAUserActivityInfo *)v4 setOptions:options];

    title = [(UAUserActivityInfo *)self title];
    [(UAUserActivityInfo *)v4 setTitle:title];

    activityType = [(UAUserActivityInfo *)self activityType];
    [(UAUserActivityInfo *)v4 setActivityType:activityType];

    dynamicActivityType = [(UAUserActivityInfo *)self dynamicActivityType];
    [(UAUserActivityInfo *)v4 setDynamicActivityType:dynamicActivityType];

    teamIdentifier = [(UAUserActivityInfo *)self teamIdentifier];
    [(UAUserActivityInfo *)v4 setTeamIdentifier:teamIdentifier];

    webpageURL = [(UAUserActivityInfo *)self webpageURL];
    [(UAUserActivityInfo *)v4 setWebpageURL:webpageURL];

    referrerURL = [(UAUserActivityInfo *)self referrerURL];
    [(UAUserActivityInfo *)v4 setReferrerURL:referrerURL];

    targetContentIdentifier = [(UAUserActivityInfo *)self targetContentIdentifier];
    [(UAUserActivityInfo *)v4 setTargetContentIdentifier:targetContentIdentifier];

    payloads = [(UAUserActivityInfo *)self payloads];
    if (payloads)
    {
      payloads2 = [(UAUserActivityInfo *)self payloads];
      v17 = [payloads2 mutableCopy];
      payloads = v4->_payloads;
      v4->_payloads = v17;
    }

    else
    {
      v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
      payloads2 = v4->_payloads;
      v4->_payloads = v19;
    }

    encodedUserInfoError = [(UAUserActivityInfo *)self encodedUserInfoError];
    [(UAUserActivityInfo *)v4 setEncodedUserInfoError:encodedUserInfoError];

    requiredUserInfoKeys = [(UAUserActivityInfo *)self requiredUserInfoKeys];
    [(UAUserActivityInfo *)v4 setRequiredUserInfoKeys:requiredUserInfoKeys];

    [(UAUserActivityInfo *)v4 setUniversalLink:[(UAUserActivityInfo *)self isUniversalLink]];
    [(UAUserActivityInfo *)v4 setEligibleForHandoff:[(UAUserActivityInfo *)self eligibleForHandoff]];
    [(UAUserActivityInfo *)v4 setEligibleForSearch:[(UAUserActivityInfo *)self eligibleForSearch]];
    [(UAUserActivityInfo *)v4 setEligibleForPublicIndexing:[(UAUserActivityInfo *)self eligibleForPublicIndexing]];
    contentUserAction = [(UAUserActivityInfo *)self contentUserAction];
    [(UAUserActivityInfo *)v4 setContentUserAction:contentUserAction];

    keywords = [(UAUserActivityInfo *)self keywords];
    [(UAUserActivityInfo *)v4 setKeywords:keywords];

    expirationDate = [(UAUserActivityInfo *)self expirationDate];
    [(UAUserActivityInfo *)v4 setExpirationDate:expirationDate];

    when = [(UAUserActivityInfo *)self when];
    [(UAUserActivityInfo *)v4 setWhen:when];

    [(UAUserActivityInfo *)v4 setActive:[(UAUserActivityInfo *)self active]];
    [(UAUserActivityInfo *)v4 setEligibleForPrediction:[(UAUserActivityInfo *)self eligibleForPrediction]];
    persistentIdentifier = [(UAUserActivityInfo *)self persistentIdentifier];
    [(UAUserActivityInfo *)v4 setPersistentIdentifier:persistentIdentifier];

    error = [(UAUserActivityInfo *)self error];
    [(UAUserActivityInfo *)v4 setError:error];
  }

  return v4;
}

- (void)setPayloads:(id)payloads
{
  payloadsCopy = payloads;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = payloadsCopy;
  if (payloadsCopy)
  {
    v5 = [payloadsCopy mutableCopy];
  }

  payloads = selfCopy->_payloads;
  selfCopy->_payloads = v5;

  objc_sync_exit(selfCopy);
}

- (id)payloadForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    payloads = selfCopy->_payloads;
    if (payloads)
    {
      v7 = [(NSMutableDictionary *)payloads objectForKey:identifierCopy];
    }

    else
    {
      v7 = 0;
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)setPayload:(id)payload identifier:(id)identifier
{
  payloadCopy = payload;
  identifierCopy = identifier;
  if (identifierCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    payloads = selfCopy->_payloads;
    if (payloadCopy)
    {
      if (payloads)
      {
        v10 = [(NSMutableDictionary *)payloads objectForKey:identifierCopy];
        v11 = [payloadCopy isEqual:v10];

        [(NSMutableDictionary *)selfCopy->_payloads setObject:payloadCopy forKey:identifierCopy];
LABEL_11:
        objc_sync_exit(selfCopy);

        goto LABEL_12;
      }

      v12 = [MEMORY[0x277CBEB38] dictionaryWithObject:payloadCopy forKey:identifierCopy];
      v13 = selfCopy->_payloads;
      selfCopy->_payloads = v12;
    }

    else
    {
      if (!payloads)
      {
        v11 = 0;
        goto LABEL_11;
      }

      [(NSMutableDictionary *)payloads removeObjectForKey:identifierCopy];
    }

    v11 = 1;
    goto LABEL_11;
  }

  v11 = 0;
LABEL_12:

  return v11;
}

- (void)_createUserActivityStrings:(id)strings secondaryString:(id)string optionalData:(id)data
{
  v109 = *MEMORY[0x277D85DE8];
  stringsCopy = strings;
  stringCopy = string;
  payloads = [(UAUserActivityInfo *)self payloads];
  v10 = [payloads objectForKey:@"UAUserActivityUserInfoPayload"];

  v12 = v11 = _UACopyUnpackedObjectFromData([v10 bytes], objc_msgSend(v10, "length"), 0);
  v13 = v12;
  if (stringsCopy)
  {
    v96 = v12;
    array = [MEMORY[0x277CBEB18] array];
    dynamicActivityType = [(UAUserActivityInfo *)self dynamicActivityType];

    if (dynamicActivityType)
    {
      v16 = MEMORY[0x277CCACA8];
      dynamicActivityType2 = [(UAUserActivityInfo *)self dynamicActivityType];
      v18 = [UAUserActivity _encodeToString:dynamicActivityType2];
      v19 = [v16 stringWithFormat:@"dt=%@", v18];
      [array addObject:v19];
    }

    title = [(UAUserActivityInfo *)self title];
    if (title)
    {
      v21 = title;
      title2 = [(UAUserActivityInfo *)self title];
      v23 = [title2 length];

      if (v23)
      {
        v24 = MEMORY[0x277CCACA8];
        title3 = [(UAUserActivityInfo *)self title];
        v26 = [UAUserActivity _encodeToString:title3];
        v27 = [v24 stringWithFormat:@"t=%@", v26];
        [array addObject:v27];
      }
    }

    if ([(UAUserActivityInfo *)self type]!= 1)
    {
      v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"type=%ld", -[UAUserActivityInfo type](self, "type")];
      [array addObject:v28];
    }

    webpageURL = [(UAUserActivityInfo *)self webpageURL];

    if (webpageURL)
    {
      v30 = MEMORY[0x277CCACA8];
      webpageURL2 = [(UAUserActivityInfo *)self webpageURL];
      [webpageURL2 absoluteString];
      v33 = v32 = self;
      v34 = [UAUserActivity _encodeToString:v33];
      v35 = [v30 stringWithFormat:@"url=%@", v34];
      [array addObject:v35];

      self = v32;
    }

    referrerURL = [(UAUserActivityInfo *)self referrerURL];

    if (referrerURL)
    {
      v37 = MEMORY[0x277CCACA8];
      referrerURL2 = [(UAUserActivityInfo *)self referrerURL];
      [referrerURL2 absoluteString];
      v40 = v39 = self;
      v41 = [UAUserActivity _encodeToString:v40];
      v42 = [v37 stringWithFormat:@"referrer=%@", v41];
      [array addObject:v42];

      self = v39;
    }

    targetContentIdentifier = [(UAUserActivityInfo *)self targetContentIdentifier];

    if (targetContentIdentifier)
    {
      v44 = MEMORY[0x277CCACA8];
      targetContentIdentifier2 = [(UAUserActivityInfo *)self targetContentIdentifier];
      v46 = [UAUserActivity _encodeToString:targetContentIdentifier2];
      v47 = [v44 stringWithFormat:@"targetIdentifier=%@", v46];
      [array addObject:v47];
    }

    if (v11)
    {
      array2 = [MEMORY[0x277CBEB18] array];
      requiredUserInfoKeys = [(UAUserActivityInfo *)self requiredUserInfoKeys];
      v90 = stringCopy;
      v92 = stringsCopy;
      selfCopy = self;
      v94 = array;
      if (requiredUserInfoKeys)
      {
        requiredUserInfoKeys2 = [(UAUserActivityInfo *)self requiredUserInfoKeys];
        allObjects = [requiredUserInfoKeys2 allObjects];
      }

      else
      {
        allObjects = [v11 allKeys];
      }

      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      v87 = allObjects;
      v52 = sortedArrayOfNSStringValues(allObjects);
      v53 = [v52 countByEnumeratingWithState:&v103 objects:v108 count:16];
      if (v53)
      {
        v54 = v53;
        v55 = *v104;
        do
        {
          for (i = 0; i != v54; ++i)
          {
            if (*v104 != v55)
            {
              objc_enumerationMutation(v52);
            }

            v57 = *(*(&v103 + 1) + 8 * i);
            v58 = [v11 objectForKey:v57];
            v59 = [UAUserActivity _encodeKeyAndValueIntoString:v57 value:v58];
            [array2 addObject:v59];
          }

          v54 = [v52 countByEnumeratingWithState:&v103 objects:v108 count:16];
        }

        while (v54);
      }

      if ([array2 count])
      {
        v60 = MEMORY[0x277CCACA8];
        v61 = [array2 componentsJoinedByString:{@", "}];
        v62 = [v60 stringWithFormat:@"u={%@}", v61, v87];
        [v94 addObject:v62];
      }

      stringCopy = v90;
      stringsCopy = v92;
      self = selfCopy;
      array = v94;
    }

    if ([(UAUserActivityInfo *)self isUniversalLink])
    {
      [array addObject:@"universalLink=1"];
    }

    activityType = [(UAUserActivityInfo *)self activityType];
    v13 = v96;
    [activityType stringByAddingPercentEncodingWithAllowedCharacters:v96];
    v65 = v64 = array;
    [stringsCopy appendFormat:@"v1.0/%@/", v65];

    if ([v64 count])
    {
      v66 = [v64 componentsJoinedByString:@"&"];
      [stringsCopy appendFormat:@"%@", v66];
    }
  }

  if (stringCopy)
  {
    array3 = [MEMORY[0x277CBEB18] array];
    if ([v11 count])
    {
      requiredUserInfoKeys3 = [(UAUserActivityInfo *)self requiredUserInfoKeys];
      if (requiredUserInfoKeys3)
      {
        v68 = requiredUserInfoKeys3;
        requiredUserInfoKeys4 = [(UAUserActivityInfo *)self requiredUserInfoKeys];
        v70 = [requiredUserInfoKeys4 count];

        if (v70)
        {
          v97 = v13;
          v98 = v10;
          v91 = stringCopy;
          v93 = stringsCopy;
          array4 = [MEMORY[0x277CBEB18] array];
          [v11 allKeys];
          v99 = 0u;
          v100 = 0u;
          v101 = 0u;
          v88 = v102 = 0u;
          v72 = sortedArrayOfNSStringValues(v88);
          v73 = [v72 countByEnumeratingWithState:&v99 objects:v107 count:16];
          if (v73)
          {
            v74 = v73;
            v75 = *v100;
            do
            {
              for (j = 0; j != v74; ++j)
              {
                if (*v100 != v75)
                {
                  objc_enumerationMutation(v72);
                }

                v77 = *(*(&v99 + 1) + 8 * j);
                requiredUserInfoKeys5 = [(UAUserActivityInfo *)self requiredUserInfoKeys];
                v79 = [requiredUserInfoKeys5 containsObject:v77];

                if ((v79 & 1) == 0)
                {
                  v80 = [v11 objectForKey:v77];
                  v81 = [UAUserActivity _encodeKeyAndValueIntoString:v77 value:v80];
                  [array4 addObject:v81];
                }
              }

              v74 = [v72 countByEnumeratingWithState:&v99 objects:v107 count:16];
            }

            while (v74);
          }

          if ([array4 count])
          {
            v82 = MEMORY[0x277CCACA8];
            v83 = [array4 componentsJoinedByString:{@", "}];
            v84 = [v82 stringWithFormat:@"ue={%@}", v83, v88];
            [array3 addObject:v84];
          }

          stringCopy = v91;
          stringsCopy = v93;
          v13 = v97;
          v10 = v98;
        }
      }
    }

    if ([array3 count])
    {
      v85 = [array3 componentsJoinedByString:@"&"];
      [stringCopy appendFormat:@"%@", v85];
    }
  }

  v86 = *MEMORY[0x277D85DE8];
}

- (id)userActivityString
{
  string = [MEMORY[0x277CCAB68] string];
  [(UAUserActivityInfo *)self _createUserActivityStrings:string secondaryString:0 optionalData:0];
  if (string && [string length])
  {
    v4 = [string copy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)secondaryUserActivityString
{
  string = [MEMORY[0x277CCAB68] string];
  [(UAUserActivityInfo *)self _createUserActivityStrings:0 secondaryString:string optionalData:0];
  if (string && [string length])
  {
    v4 = [string copy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)optionalUserActivityData
{
  data = [MEMORY[0x277CBEB28] data];
  [(UAUserActivityInfo *)self _createUserActivityStrings:0 secondaryString:0 optionalData:data];
  if (data && [data length])
  {
    v4 = [data copy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)archiveUserActivityInfo
{
  v3 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
  [v3 encodeObject:self forKey:*MEMORY[0x277CCA308]];
  [v3 finishEncoding];
  encodedData = [v3 encodedData];

  return encodedData;
}

+ (id)encodedInfoToOldEncodedInfo:(id)info
{
  infoCopy = info;
  bytes = [infoCopy bytes];
  v5 = [infoCopy length];

  v6 = _UACopyUnpackedObjectFromData(bytes, v5, 0);
  if (v6)
  {
    v7 = v6;
    v8 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
    [v8 encodeObject:v7 forKey:*MEMORY[0x277CCA308]];
    [v8 finishEncoding];
    encodedData = [v8 encodedData];
    CFRelease(v7);
  }

  else
  {
    encodedData = 0;
  }

  return encodedData;
}

- (id)statusString
{
  payloads = [(UAUserActivityInfo *)self payloads];
  v4 = [payloads objectForKey:@"UAUserActivityUserInfoPayload"];
  v19 = trimmedHexStringForData(v4, 0x10uLL);

  v18 = MEMORY[0x277CCACA8];
  v5 = suggestedActionTypeString([(UAUserActivityInfo *)self type]);
  uuid = [(UAUserActivityInfo *)self uuid];
  uUIDString = [uuid UUIDString];
  activityType = [(UAUserActivityInfo *)self activityType];
  dynamicActivityType = [(UAUserActivityInfo *)self dynamicActivityType];
  if (dynamicActivityType)
  {
    v10 = MEMORY[0x277CCACA8];
    dynamicActivityType2 = [(UAUserActivityInfo *)self dynamicActivityType];
    v11 = [v10 stringWithFormat:@":%@", dynamicActivityType2];
  }

  else
  {
    v11 = &stru_283A5A2C8;
  }

  type = [(UAUserActivityInfo *)self type];
  webpageURL = [(UAUserActivityInfo *)self webpageURL];
  if (webpageURL)
  {
    v14 = @" webPageURL=<private>";
  }

  else
  {
    v14 = &stru_283A5A2C8;
  }

  v15 = [v18 stringWithFormat:@"UAInfo:%@%@ %@%@ type=%ld %@%@", v5, uUIDString, activityType, v11, type, v19, v14];

  if (dynamicActivityType)
  {
  }

  return v15;
}

- (id)provenance
{
  v3 = MEMORY[0x277CCACA8];
  uuid = [(UAUserActivityInfo *)self uuid];
  activityType = [(UAUserActivityInfo *)self activityType];
  dynamicActivityType = [(UAUserActivityInfo *)self dynamicActivityType];
  v7 = dynamicActivityType;
  v8 = &stru_283A5A2C8;
  if (dynamicActivityType)
  {
    v8 = dynamicActivityType;
  }

  v9 = [v3 stringWithFormat:@"UAx:%@/%@-%@", uuid, activityType, v8];

  return v9;
}

@end