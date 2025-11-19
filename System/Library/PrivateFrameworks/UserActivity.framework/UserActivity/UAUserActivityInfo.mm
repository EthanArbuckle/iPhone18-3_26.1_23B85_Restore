@interface UAUserActivityInfo
+ (id)encodedInfoToOldEncodedInfo:(id)a3;
- (BOOL)setPayload:(id)a3 identifier:(id)a4;
- (NSDictionary)payloads;
- (UAUserActivityInfo)initWithArchivedUserActivityInfo:(id)a3;
- (UAUserActivityInfo)initWithCoder:(id)a3;
- (UAUserActivityInfo)initWithUUID:(id)a3 type:(unint64_t)a4 options:(id)a5;
- (UAUserActivityInfo)initWithUserActivityInfo:(id)a3;
- (id)archiveUserActivityInfo;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)logString;
- (id)optionalUserActivityData;
- (id)payloadForIdentifier:(id)a3;
- (id)payloadIdentifiers;
- (id)provenance;
- (id)secondaryUserActivityString;
- (id)statusString;
- (id)userActivityString;
- (void)_createUserActivityStrings:(id)a3 secondaryString:(id)a4 optionalData:(id)a5;
- (void)encodeWithCoder:(id)a3;
- (void)setPayloads:(id)a3;
@end

@implementation UAUserActivityInfo

- (NSDictionary)payloads
{
  v2 = self;
  objc_sync_enter(v2);
  payloads = v2->_payloads;
  if (payloads)
  {
    v4 = [(NSMutableDictionary *)payloads copy];
  }

  else
  {
    v4 = 0;
  }

  objc_sync_exit(v2);

  return v4;
}

- (id)description
{
  v66 = *MEMORY[0x277D85DE8];
  v4 = [(UAUserActivityInfo *)self error];

  v5 = 0x277CCA000uLL;
  v6 = MEMORY[0x277CCACA8];
  if (v4)
  {
    v7 = [(UAUserActivityInfo *)self error];
    v8 = [v6 stringWithFormat:@"UAUserActivityInfo: error=%@", v7];

    goto LABEL_47;
  }

  v9 = suggestedActionTypeString([(UAUserActivityInfo *)self type]);
  v10 = [(UAUserActivityInfo *)self uuid];
  v11 = [v10 UUIDString];
  v60 = [(UAUserActivityInfo *)self activityType];
  v59 = [(UAUserActivityInfo *)self dynamicActivityType];
  v58 = [(UAUserActivityInfo *)self teamIdentifier];
  v52 = [(UAUserActivityInfo *)self persistentIdentifier];
  if (v52)
  {
    v56 = [(UAUserActivityInfo *)self persistentIdentifier];
  }

  else
  {
    v56 = @"-";
  }

  v51 = [(UAUserActivityInfo *)self payloads];
  v50 = [v51 objectForKey:@"UAUserActivityUserInfoPayload"];
  v57 = trimmedHexStringForData(v50, 0x40uLL);
  v12 = [(UAUserActivityInfo *)self webpageURL];
  v13 = @" webPageURL=<private>";
  v14 = &stru_283A5A2C8;
  v48 = v12;
  if (!v12)
  {
    v13 = &stru_283A5A2C8;
  }

  v44 = v13;
  v15 = [(UAUserActivityInfo *)self referrerURL];
  v16 = @" referrerURL=<private>";
  v47 = v15;
  if (!v15)
  {
    v16 = &stru_283A5A2C8;
  }

  v43 = v16;
  v46 = [(UAUserActivityInfo *)self payloads];
  v45 = [v46 objectForKey:@"UAUserActivityStreamsPayload"];
  v49 = v6;
  if (v45)
  {
    v17 = MEMORY[0x277CCACA8];
    v41 = [(UAUserActivityInfo *)self payloads];
    v40 = [v41 objectForKey:@"UAUserActivityStreamsPayload"];
    v39 = trimmedHexStringForData(v40, 0x10uLL);
    v14 = [v17 stringWithFormat:@" streamData=%@", v39];
  }

  v55 = v14;
  [(UAUserActivityInfo *)self payloadForIdentifier:@"UAUserActivityContentAttributeSetPayloadKey"];
  v42 = v18 = &stru_283A5A2C8;
  if (v42)
  {
    v2 = &stru_283A5A2C8;
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

  v53 = v11;
  v21 = self;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v22 = [(UAUserActivityInfo *)v21 payloadIdentifiers];
  v23 = [v22 countByEnumeratingWithState:&v61 objects:v65 count:16];
  if (v23)
  {
    v2 = v23;
    v36 = v21;
    v24 = 0;
    v25 = *v62;
    do
    {
      for (i = 0; i != v2; i = (i + 1))
      {
        if (*v62 != v25)
        {
          objc_enumerationMutation(v22);
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

      v2 = [v22 countByEnumeratingWithState:&v61 objects:v65 count:16];
    }

    while (v2);

    if (!v24)
    {
      v28 = 0;
      v5 = 0x277CCA000uLL;
      v18 = &stru_283A5A2C8;
      v21 = v36;
      goto LABEL_33;
    }

    [v24 appendFormat:@""]);
    v28 = [v24 copy];
    v22 = v24;
    v5 = 0x277CCA000;
    v18 = &stru_283A5A2C8;
    v21 = v36;
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

  v30 = [(UAUserActivityInfo *)v21 options];
  if (v30)
  {
    v31 = *(v5 + 3240);
    v2 = [(UAUserActivityInfo *)v21 options];
    v5 = userActivityInfoOptionsDictionaryString(v2);
    v18 = [v31 stringWithFormat:@" opts=%@", v5];
  }

  v32 = [(UAUserActivityInfo *)v21 when];
  [v49 stringWithFormat:@"UAUserActivityInfo:{ type = %@; uuid = %@; activityType = %@; dynamicActivityType = %@; teamID=%@; %@ userInfo = %@%@%@%@ - %@ - %@ %@; when = %@ }", v9, v53, v60, v59, v58, v56, v57, v44, v43, v55, v54, v29, v18, v32];
  v8 = v33 = v18;

  if (v30)
  {
  }

  if (v42)
  {
  }

  if (v45)
  {
  }

  if (v52)
  {
  }

LABEL_47:
  v34 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)payloadIdentifiers
{
  v2 = self;
  objc_sync_enter(v2);
  payloads = v2->_payloads;
  if (payloads)
  {
    v4 = [(NSMutableDictionary *)payloads allKeys];
  }

  else
  {
    v4 = 0;
  }

  objc_sync_exit(v2);

  return v4;
}

- (id)logString
{
  v3 = [(UAUserActivityInfo *)self error];

  v4 = MEMORY[0x277CCACA8];
  if (v3)
  {
    v5 = [(UAUserActivityInfo *)self error];
    v6 = [v4 stringWithFormat:@"UAUserActivityInfo: error=%@", v5];
  }

  else
  {
    v5 = suggestedActionTypeString([(UAUserActivityInfo *)self type]);
    v27 = [(UAUserActivityInfo *)self uuid];
    v26 = [v27 UUIDString];
    v30 = [(UAUserActivityInfo *)self activityType];
    v25 = [(UAUserActivityInfo *)self dynamicActivityType];
    if (v25)
    {
      v7 = MEMORY[0x277CCACA8];
      v22 = [(UAUserActivityInfo *)self dynamicActivityType];
      v29 = [v7 stringWithFormat:@":%@", v22];
    }

    else
    {
      v29 = &stru_283A5A2C8;
    }

    v24 = [(UAUserActivityInfo *)self teamIdentifier];
    if (v24)
    {
      v8 = MEMORY[0x277CCACA8];
      v21 = [(UAUserActivityInfo *)self teamIdentifier];
      v28 = [v8 stringWithFormat:@"(%@)", v21];
    }

    else
    {
      v28 = &stru_283A5A2C8;
    }

    v9 = [(UAUserActivityInfo *)self encodedUserInfoError];
    if (v9)
    {
      v23 = [(UAUserActivityInfo *)self encodedUserInfoError];
      [v23 description];
    }

    else
    {
      v23 = [(UAUserActivityInfo *)self payloads];
      v20 = [v23 objectForKey:@"UAUserActivityUserInfoPayload"];
      trimmedHexStringForData(v20, 0x10uLL);
    }
    v10 = ;
    v11 = MEMORY[0x277CCACA8];
    v12 = [(UAUserActivityInfo *)self webpageURL];
    v13 = @"webPageURL=<private>";
    if (!v12)
    {
      v13 = &stru_283A5A2C8;
    }

    v14 = [v11 stringWithFormat:@"%@", v13];
    v15 = MEMORY[0x277CCACA8];
    v16 = [(UAUserActivityInfo *)self referrerURL];
    v17 = @"referrer=<private>";
    if (!v16)
    {
      v17 = &stru_283A5A2C8;
    }

    v18 = [v15 stringWithFormat:@"%@", v17];
    v6 = [v4 stringWithFormat:@"UAInfo:{ %@ %@%@%@ %@ userInfo=%@/%@%@}", v5, v26, v30, v29, v28, v10, v14, v18];;

    if (!v9)
    {

      v10 = v20;
    }

    if (v24)
    {
    }

    if (v25)
    {
    }
  }

  return v6;
}

- (UAUserActivityInfo)initWithUUID:(id)a3 type:(unint64_t)a4 options:(id)a5
{
  v8 = a3;
  v9 = a5;
  v18.receiver = self;
  v18.super_class = UAUserActivityInfo;
  v10 = [(UAUserActivityInfo *)&v18 init];
  if (v10)
  {
    if (v8)
    {
      v11 = [v8 copy];
    }

    else
    {
      v11 = objc_alloc_init(MEMORY[0x277CCAD78]);
    }

    uuid = v10->_uuid;
    v10->_uuid = v11;

    v10->_type = a4;
    v13 = [v9 copy];
    options = v10->_options;
    v10->_options = v13;

    v10->_active = 1;
    v15 = [MEMORY[0x277CBEAA8] date];
    when = v10->_when;
    v10->_when = v15;
  }

  return v10;
}

- (UAUserActivityInfo)initWithUserActivityInfo:(id)a3
{
  v4 = a3;
  v60.receiver = self;
  v60.super_class = UAUserActivityInfo;
  v5 = [(UAUserActivityInfo *)&v60 init];
  if (v5)
  {
    v6 = [v4 when];
    when = v5->_when;
    v5->_when = v6;

    v8 = [v4 uuid];
    if (v8)
    {
      [v4 uuid];
    }

    else
    {
      [MEMORY[0x277CCAD78] UUID];
    }
    v9 = ;
    uuid = v5->_uuid;
    v5->_uuid = v9;

    v5->_type = [v4 type];
    v11 = [v4 options];
    v12 = [v11 copy];
    options = v5->_options;
    v5->_options = v12;

    v14 = [v4 activityType];
    v15 = [v14 copy];
    activityType = v5->_activityType;
    v5->_activityType = v15;

    v17 = [v4 dynamicActivityType];
    v18 = [v17 copy];
    dynamicActivityType = v5->_dynamicActivityType;
    v5->_dynamicActivityType = v18;

    v20 = [v4 teamIdentifier];
    v21 = [v20 copy];
    teamIdentifier = v5->_teamIdentifier;
    v5->_teamIdentifier = v21;

    v23 = [v4 bundleIdentifier];
    v24 = [v23 copy];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v24;

    v26 = [v4 title];
    v27 = [v26 copy];
    title = v5->_title;
    v5->_title = v27;

    v29 = [v4 webpageURL];
    webpageURL = v5->_webpageURL;
    v5->_webpageURL = v29;

    v31 = [v4 referrerURL];
    referrerURL = v5->_referrerURL;
    v5->_referrerURL = v31;

    v33 = [v4 targetContentIdentifier];
    targetContentIdentifier = v5->_targetContentIdentifier;
    v5->_targetContentIdentifier = v33;

    v35 = [v4 payloads];
    if (v35)
    {
      v36 = [v4 payloads];
      v37 = [v36 mutableCopy];
      payloads = v5->_payloads;
      v5->_payloads = v37;
    }

    else
    {
      v36 = v5->_payloads;
      v5->_payloads = 0;
    }

    v39 = [v4 encodedUserInfoError];
    v40 = [v39 copy];
    encodedUserInfoError = v5->_encodedUserInfoError;
    v5->_encodedUserInfoError = v40;

    v5->_eligibleForHandoff = [v4 eligibleForHandoff];
    v5->_eligibleForSearch = [v4 eligibleForSearch];
    v5->_eligibleForPublicIndexing = [v4 eligibleForPublicIndexing];
    v5->_eligibleForReminders = [v4 eligibleForReminders];
    v42 = [v4 contentUserAction];
    v43 = [v42 copy];
    contentUserAction = v5->_contentUserAction;
    v5->_contentUserAction = v43;

    v45 = [v4 keywords];
    v46 = [v45 copy];
    keywords = v5->_keywords;
    v5->_keywords = v46;

    v48 = [v4 expirationDate];
    v49 = [v48 copy];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v49;

    v5->_eligibleForPrediction = [v4 eligibleForPrediction];
    v51 = [v4 persistentIdentifier];
    persistentIdentifier = v5->_persistentIdentifier;
    v5->_persistentIdentifier = v51;

    v53 = [v4 peerDeviceType];
    v54 = [v53 copy];
    peerDeviceType = v5->_peerDeviceType;
    v5->_peerDeviceType = v54;

    v56 = [v4 peerDevice];
    v57 = [v56 copy];
    peerDevice = v5->_peerDevice;
    v5->_peerDevice = v57;

    v5->_active = [v4 active];
    v5->_universalLink = [v4 isUniversalLink];
  }

  return v5;
}

- (UAUserActivityInfo)initWithArchivedUserActivityInfo:(id)a3
{
  v4 = MEMORY[0x277CCAAC8];
  v5 = a3;
  v6 = [[v4 alloc] initForReadingFromData:v5 error:0];

  v7 = [(UAUserActivityInfo *)self initWithCoder:v6];
  [v6 finishDecoding];

  return v7;
}

- (UAUserActivityInfo)initWithCoder:(id)a3
{
  v76 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v74.receiver = self;
  v74.super_class = UAUserActivityInfo;
  v5 = [(UAUserActivityInfo *)&v74 init];
  if (!v5)
  {
    goto LABEL_28;
  }

  v6 = 0x277CCA000uLL;
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"error"];
  [(UAUserActivityInfo *)v5 setError:v7];

  v8 = [(UAUserActivityInfo *)v5 error];

  if (v8)
  {
    goto LABEL_28;
  }

  if (initWithCoder__sOnce != -1)
  {
    [UAUserActivityInfo initWithCoder:];
  }

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
  uuid = v5->_uuid;
  v5->_uuid = v9;

  v5->_type = [v4 decodeIntegerForKey:@"type"];
  v11 = [v4 decodeObjectOfClasses:initWithCoder__sAcceptableObjects forKey:@"options"];
  options = v5->_options;
  v5->_options = v11;

  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  title = v5->_title;
  v5->_title = v13;

  v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"webpageURL"];
  if ([UAUserActivity checkWebpageURL:v15 actionType:[(UAUserActivityInfo *)v5 type] throwIfFailed:0])
  {
    objc_storeStrong(&v5->_webpageURL, v15);
  }

  v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"referrerURL"];
  referrerURL = v5->_referrerURL;
  v5->_referrerURL = v16;

  v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"targetContentIdentifier"];
  targetContentIdentifier = v5->_targetContentIdentifier;
  v5->_targetContentIdentifier = v18;

  v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
  payloads = v5->_payloads;
  v5->_payloads = v20;

  v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"streamsData"];
  [(UAUserActivityInfo *)v5 setPayload:v22 identifier:@"UAUserActivityStreamsPayload"];

  v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"payload"];
  [(UAUserActivityInfo *)v5 setPayload:v23 identifier:@"UAUserActivityUserInfoPayload"];

  v24 = MEMORY[0x277CBEB98];
  v25 = objc_opt_class();
  v26 = objc_opt_class();
  v27 = [v24 setWithObjects:{v25, v26, objc_opt_class(), 0}];
  v28 = [v4 decodeObjectOfClasses:v27 forKey:@"payloads"];

  if (v28)
  {
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v29 = [v28 allKeys];
    v30 = [v29 countByEnumeratingWithState:&v70 objects:v75 count:16];
    if (v30)
    {
      v31 = v30;
      v68 = v15;
      v69 = v4;
      v32 = *v71;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v71 != v32)
          {
            objc_enumerationMutation(v29);
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

        v31 = [v29 countByEnumeratingWithState:&v70 objects:v75 count:16];
      }

      while (v31);

      v15 = v68;
      v4 = v69;
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
  v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"when"];
  when = v5->_when;
  v5->_when = v37;

  v5->_active = [v4 decodeBoolForKey:@"isActive"];
  v39 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"peerDeviceType"];
  peerDeviceType = v5->_peerDeviceType;
  v5->_peerDeviceType = v39;

  getSFPeerDeviceClass();
  v41 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"peerDevice"];
  peerDevice = v5->_peerDevice;
  v5->_peerDevice = v41;

  v43 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  bundleIdentifier = v5->_bundleIdentifier;
  v5->_bundleIdentifier = v43;

  v45 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activityType"];
  activityType = v5->_activityType;
  v5->_activityType = v45;

  v47 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dynamicActivityType"];
  dynamicActivityType = v5->_dynamicActivityType;
  v5->_dynamicActivityType = v47;

  v49 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"teamIdentifier"];
  teamIdentifier = v5->_teamIdentifier;
  v5->_teamIdentifier = v49;

  v51 = *(v6 + 2488);
  v52 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"payloadError"];
  encodedUserInfoError = v5->_encodedUserInfoError;
  v5->_encodedUserInfoError = v52;

  v5->_eligibleForHandoff = [v4 decodeBoolForKey:@"eligibleForHandoff"];
  v5->_eligibleForSearch = [v4 decodeBoolForKey:@"eligibleForSearch"];
  v5->_eligibleForPublicIndexing = [v4 decodeBoolForKey:@"eligibleForPublicIndexing"];
  v5->_eligibleForReminders = [v4 decodeBoolForKey:@"eligibleForReminders"];
  if (initWithCoder__sKeywordsOnce != -1)
  {
    [UAUserActivityInfo initWithCoder:];
  }

  v54 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contentActions"];
  contentUserAction = v5->_contentUserAction;
  v5->_contentUserAction = v54;

  v56 = [v4 decodeObjectOfClasses:initWithCoder__sKeywordsAcceptableObjects forKey:@"keywords"];
  keywords = v5->_keywords;
  v5->_keywords = v56;

  v58 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
  expirationDate = v5->_expirationDate;
  v5->_expirationDate = v58;

  v5->_eligibleForPrediction = [v4 decodeBoolForKey:@"eligibleForPrediction"];
  v60 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"persistentIdentifier"];
  persistentIdentifier = v5->_persistentIdentifier;
  v5->_persistentIdentifier = v60;

  v62 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contentAttributeSetData"];
  if (v62)
  {
    [(NSMutableDictionary *)v5->_payloads setObject:v62 forKey:@"UAUserActivityContentAttributeSetPayloadKey"];
  }

  v63 = [v4 decodeObjectOfClasses:initWithCoder__sKeywordsAcceptableObjects forKey:@"requiredKeys"];
  requiredUserInfoKeys = v5->_requiredUserInfoKeys;
  v5->_requiredUserInfoKeys = v63;

  v65 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"universalLink"];
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

- (void)encodeWithCoder:(id)a3
{
  v46 = a3;
  [v46 encodeInt32:1 forKey:@"version"];
  v4 = [(UAUserActivityInfo *)self error];

  if (v4)
  {
    v5 = [(UAUserActivityInfo *)self error];
    [v46 encodeObject:v5 forKey:@"error"];
  }

  else
  {
    v6 = [(UAUserActivityInfo *)self uuid];
    v7 = v46;
    v8 = objc_opt_class();
    encodeObjectOfType(v7, v6, v8, @"uuid");

    [v7 encodeInteger:-[UAUserActivityInfo type](self forKey:{"type"), @"type"}];
    v9 = [(UAUserActivityInfo *)self options];
    encodeDictionary(v7, v9, @"options");

    v10 = [(UAUserActivityInfo *)self title];
    encodeString(v7, v10, @"title");

    v11 = [(UAUserActivityInfo *)self webpageURL];
    encodeURL(v7, v11, @"webpageURL");

    v12 = [(UAUserActivityInfo *)self referrerURL];
    encodeURL(v7, v12, @"referrerURL");

    v13 = [(UAUserActivityInfo *)self targetContentIdentifier];
    encodeString(v7, v13, @"targetContentIdentifier");

    v14 = [(UAUserActivityInfo *)self activityType];
    encodeString(v7, v14, @"activityType");

    v15 = [(UAUserActivityInfo *)self dynamicActivityType];
    encodeString(v7, v15, @"dynamicActivityType");

    v16 = [(UAUserActivityInfo *)self teamIdentifier];
    encodeString(v7, v16, @"teamIdentifier");

    v17 = [(UAUserActivityInfo *)self bundleIdentifier];
    encodeString(v7, v17, @"bundleIdentifier");

    v18 = [(UAUserActivityInfo *)self peerDevice];
    SFPeerDeviceClass = getSFPeerDeviceClass();
    encodeObjectOfType(v7, v18, SFPeerDeviceClass, @"peerDevice");

    v20 = [(UAUserActivityInfo *)self peerDeviceType];
    encodeString(v7, v20, @"peerDeviceType");

    v21 = [(UAUserActivityInfo *)self when];
    v22 = objc_opt_class();
    encodeObjectOfType(v7, v21, v22, @"when");

    [v7 encodeBool:-[UAUserActivityInfo active](self forKey:{"active"), @"isActive"}];
    v23 = [(UAUserActivityInfo *)self encodingOptions];
    v24 = [v23 objectForKey:@"NSUserActivityMinimalExtraInfo"];
    v25 = [v24 BOOLValue];

    v26 = [(UAUserActivityInfo *)self encodingOptions];
    v27 = [v26 objectForKey:@"NSUserActivityDontEncodePayload"];
    v28 = [v27 BOOLValue];

    if (v25)
    {
      v29 = [(UAUserActivityInfo *)self encodingOptions];
      v30 = [v29 objectForKey:@"NSUserActivityDontEncodeContentAttributes"];
      v31 = [v30 BOOLValue];
    }

    else
    {
      v31 = 1;
    }

    v32 = [(UAUserActivityInfo *)self payloads];
    v5 = [v32 mutableCopy];

    v33 = [v5 objectForKey:@"UAUserActivityStreamsPayload"];

    if (v33)
    {
      v34 = [v5 objectForKey:@"UAUserActivityStreamsPayload"];
      encodeData(v7, v34, @"streamsData");

      [v5 removeObjectForKey:@"UAUserActivityStreamsPayload"];
    }

    if (v31)
    {
      v35 = [(UAUserActivityInfo *)self contentUserAction];
      encodeString(v7, v35, @"contentAction");

      v36 = [(UAUserActivityInfo *)self keywords];
      encodeSet(v7, v36, @"keywords");
    }

    v37 = [v5 objectForKey:@"UAUserActivityContentAttributeSetPayloadKey"];

    if (v37)
    {
      v38 = [v5 objectForKey:@"UAUserActivityContentAttributeSetPayloadKey"];
      encodeData(v7, v38, @"contentAttributeSetData");

      if (v31)
      {
        [v5 removeObjectForKey:@"UAUserActivityContentAttributeSetPayloadKey"];
      }
    }

    if ((v28 & 1) == 0)
    {
      v39 = [(UAUserActivityInfo *)self payloadForIdentifier:@"UAUserActivityUserInfoPayload"];
      if (v39)
      {
        encodeData(v7, v39, @"payload");
        [v5 removeObjectForKey:@"UAUserActivityUserInfoPayload"];
      }

      v40 = [(UAUserActivityInfo *)self encodedUserInfoError];
      v41 = objc_opt_class();
      encodeObjectOfType(v7, v40, v41, @"payloadError");
    }

    if ([v5 count])
    {
      encodeDictionary(v7, v5, @"payloads");
    }

    [v7 encodeBool:-[UAUserActivityInfo eligibleForHandoff](self forKey:{"eligibleForHandoff"), @"eligibleForHandoff"}];
    [v7 encodeBool:-[UAUserActivityInfo eligibleForSearch](self forKey:{"eligibleForSearch"), @"eligibleForSearch"}];
    [v7 encodeBool:-[UAUserActivityInfo eligibleForPublicIndexing](self forKey:{"eligibleForPublicIndexing"), @"eligibleForPublicIndexing"}];
    [v7 encodeBool:-[UAUserActivityInfo eligibleForReminders](self forKey:{"eligibleForReminders"), @"eligibleForReminders"}];
    [v7 encodeBool:-[UAUserActivityInfo eligibleForPrediction](self forKey:{"eligibleForPrediction"), @"eligibleForPrediction"}];
    v42 = [(UAUserActivityInfo *)self persistentIdentifier];
    [v7 encodeObject:v42 forKey:@"persistentIdentifier"];

    v43 = [(UAUserActivityInfo *)self expirationDate];
    v44 = objc_opt_class();
    encodeObjectOfType(v7, v43, v44, @"expirationDate");

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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[UAUserActivityInfo allocWithZone:?]];
  if (v4)
  {
    v5 = [(UAUserActivityInfo *)self uuid];
    uuid = v4->_uuid;
    v4->_uuid = v5;

    [(UAUserActivityInfo *)v4 setType:[(UAUserActivityInfo *)self type]];
    v7 = [(UAUserActivityInfo *)self options];
    [(UAUserActivityInfo *)v4 setOptions:v7];

    v8 = [(UAUserActivityInfo *)self title];
    [(UAUserActivityInfo *)v4 setTitle:v8];

    v9 = [(UAUserActivityInfo *)self activityType];
    [(UAUserActivityInfo *)v4 setActivityType:v9];

    v10 = [(UAUserActivityInfo *)self dynamicActivityType];
    [(UAUserActivityInfo *)v4 setDynamicActivityType:v10];

    v11 = [(UAUserActivityInfo *)self teamIdentifier];
    [(UAUserActivityInfo *)v4 setTeamIdentifier:v11];

    v12 = [(UAUserActivityInfo *)self webpageURL];
    [(UAUserActivityInfo *)v4 setWebpageURL:v12];

    v13 = [(UAUserActivityInfo *)self referrerURL];
    [(UAUserActivityInfo *)v4 setReferrerURL:v13];

    v14 = [(UAUserActivityInfo *)self targetContentIdentifier];
    [(UAUserActivityInfo *)v4 setTargetContentIdentifier:v14];

    v15 = [(UAUserActivityInfo *)self payloads];
    if (v15)
    {
      v16 = [(UAUserActivityInfo *)self payloads];
      v17 = [v16 mutableCopy];
      payloads = v4->_payloads;
      v4->_payloads = v17;
    }

    else
    {
      v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v16 = v4->_payloads;
      v4->_payloads = v19;
    }

    v20 = [(UAUserActivityInfo *)self encodedUserInfoError];
    [(UAUserActivityInfo *)v4 setEncodedUserInfoError:v20];

    v21 = [(UAUserActivityInfo *)self requiredUserInfoKeys];
    [(UAUserActivityInfo *)v4 setRequiredUserInfoKeys:v21];

    [(UAUserActivityInfo *)v4 setUniversalLink:[(UAUserActivityInfo *)self isUniversalLink]];
    [(UAUserActivityInfo *)v4 setEligibleForHandoff:[(UAUserActivityInfo *)self eligibleForHandoff]];
    [(UAUserActivityInfo *)v4 setEligibleForSearch:[(UAUserActivityInfo *)self eligibleForSearch]];
    [(UAUserActivityInfo *)v4 setEligibleForPublicIndexing:[(UAUserActivityInfo *)self eligibleForPublicIndexing]];
    v22 = [(UAUserActivityInfo *)self contentUserAction];
    [(UAUserActivityInfo *)v4 setContentUserAction:v22];

    v23 = [(UAUserActivityInfo *)self keywords];
    [(UAUserActivityInfo *)v4 setKeywords:v23];

    v24 = [(UAUserActivityInfo *)self expirationDate];
    [(UAUserActivityInfo *)v4 setExpirationDate:v24];

    v25 = [(UAUserActivityInfo *)self when];
    [(UAUserActivityInfo *)v4 setWhen:v25];

    [(UAUserActivityInfo *)v4 setActive:[(UAUserActivityInfo *)self active]];
    [(UAUserActivityInfo *)v4 setEligibleForPrediction:[(UAUserActivityInfo *)self eligibleForPrediction]];
    v26 = [(UAUserActivityInfo *)self persistentIdentifier];
    [(UAUserActivityInfo *)v4 setPersistentIdentifier:v26];

    v27 = [(UAUserActivityInfo *)self error];
    [(UAUserActivityInfo *)v4 setError:v27];
  }

  return v4;
}

- (void)setPayloads:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = v7;
  if (v7)
  {
    v5 = [v7 mutableCopy];
  }

  payloads = v4->_payloads;
  v4->_payloads = v5;

  objc_sync_exit(v4);
}

- (id)payloadForIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = self;
    objc_sync_enter(v5);
    payloads = v5->_payloads;
    if (payloads)
    {
      v7 = [(NSMutableDictionary *)payloads objectForKey:v4];
    }

    else
    {
      v7 = 0;
    }

    objc_sync_exit(v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)setPayload:(id)a3 identifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = self;
    objc_sync_enter(v8);
    payloads = v8->_payloads;
    if (v6)
    {
      if (payloads)
      {
        v10 = [(NSMutableDictionary *)payloads objectForKey:v7];
        v11 = [v6 isEqual:v10];

        [(NSMutableDictionary *)v8->_payloads setObject:v6 forKey:v7];
LABEL_11:
        objc_sync_exit(v8);

        goto LABEL_12;
      }

      v12 = [MEMORY[0x277CBEB38] dictionaryWithObject:v6 forKey:v7];
      v13 = v8->_payloads;
      v8->_payloads = v12;
    }

    else
    {
      if (!payloads)
      {
        v11 = 0;
        goto LABEL_11;
      }

      [(NSMutableDictionary *)payloads removeObjectForKey:v7];
    }

    v11 = 1;
    goto LABEL_11;
  }

  v11 = 0;
LABEL_12:

  return v11;
}

- (void)_createUserActivityStrings:(id)a3 secondaryString:(id)a4 optionalData:(id)a5
{
  v109 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [(UAUserActivityInfo *)self payloads];
  v10 = [v9 objectForKey:@"UAUserActivityUserInfoPayload"];

  v12 = v11 = _UACopyUnpackedObjectFromData([v10 bytes], objc_msgSend(v10, "length"), 0);
  v13 = v12;
  if (v7)
  {
    v96 = v12;
    v14 = [MEMORY[0x277CBEB18] array];
    v15 = [(UAUserActivityInfo *)self dynamicActivityType];

    if (v15)
    {
      v16 = MEMORY[0x277CCACA8];
      v17 = [(UAUserActivityInfo *)self dynamicActivityType];
      v18 = [UAUserActivity _encodeToString:v17];
      v19 = [v16 stringWithFormat:@"dt=%@", v18];
      [v14 addObject:v19];
    }

    v20 = [(UAUserActivityInfo *)self title];
    if (v20)
    {
      v21 = v20;
      v22 = [(UAUserActivityInfo *)self title];
      v23 = [v22 length];

      if (v23)
      {
        v24 = MEMORY[0x277CCACA8];
        v25 = [(UAUserActivityInfo *)self title];
        v26 = [UAUserActivity _encodeToString:v25];
        v27 = [v24 stringWithFormat:@"t=%@", v26];
        [v14 addObject:v27];
      }
    }

    if ([(UAUserActivityInfo *)self type]!= 1)
    {
      v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"type=%ld", -[UAUserActivityInfo type](self, "type")];
      [v14 addObject:v28];
    }

    v29 = [(UAUserActivityInfo *)self webpageURL];

    if (v29)
    {
      v30 = MEMORY[0x277CCACA8];
      v31 = [(UAUserActivityInfo *)self webpageURL];
      [v31 absoluteString];
      v33 = v32 = self;
      v34 = [UAUserActivity _encodeToString:v33];
      v35 = [v30 stringWithFormat:@"url=%@", v34];
      [v14 addObject:v35];

      self = v32;
    }

    v36 = [(UAUserActivityInfo *)self referrerURL];

    if (v36)
    {
      v37 = MEMORY[0x277CCACA8];
      v38 = [(UAUserActivityInfo *)self referrerURL];
      [v38 absoluteString];
      v40 = v39 = self;
      v41 = [UAUserActivity _encodeToString:v40];
      v42 = [v37 stringWithFormat:@"referrer=%@", v41];
      [v14 addObject:v42];

      self = v39;
    }

    v43 = [(UAUserActivityInfo *)self targetContentIdentifier];

    if (v43)
    {
      v44 = MEMORY[0x277CCACA8];
      v45 = [(UAUserActivityInfo *)self targetContentIdentifier];
      v46 = [UAUserActivity _encodeToString:v45];
      v47 = [v44 stringWithFormat:@"targetIdentifier=%@", v46];
      [v14 addObject:v47];
    }

    if (v11)
    {
      v48 = [MEMORY[0x277CBEB18] array];
      v49 = [(UAUserActivityInfo *)self requiredUserInfoKeys];
      v90 = v8;
      v92 = v7;
      v89 = self;
      v94 = v14;
      if (v49)
      {
        v50 = [(UAUserActivityInfo *)self requiredUserInfoKeys];
        v51 = [v50 allObjects];
      }

      else
      {
        v51 = [v11 allKeys];
      }

      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      v87 = v51;
      v52 = sortedArrayOfNSStringValues(v51);
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
            [v48 addObject:v59];
          }

          v54 = [v52 countByEnumeratingWithState:&v103 objects:v108 count:16];
        }

        while (v54);
      }

      if ([v48 count])
      {
        v60 = MEMORY[0x277CCACA8];
        v61 = [v48 componentsJoinedByString:{@", "}];
        v62 = [v60 stringWithFormat:@"u={%@}", v61, v87];
        [v94 addObject:v62];
      }

      v8 = v90;
      v7 = v92;
      self = v89;
      v14 = v94;
    }

    if ([(UAUserActivityInfo *)self isUniversalLink])
    {
      [v14 addObject:@"universalLink=1"];
    }

    v63 = [(UAUserActivityInfo *)self activityType];
    v13 = v96;
    [v63 stringByAddingPercentEncodingWithAllowedCharacters:v96];
    v65 = v64 = v14;
    [v7 appendFormat:@"v1.0/%@/", v65];

    if ([v64 count])
    {
      v66 = [v64 componentsJoinedByString:@"&"];
      [v7 appendFormat:@"%@", v66];
    }
  }

  if (v8)
  {
    v95 = [MEMORY[0x277CBEB18] array];
    if ([v11 count])
    {
      v67 = [(UAUserActivityInfo *)self requiredUserInfoKeys];
      if (v67)
      {
        v68 = v67;
        v69 = [(UAUserActivityInfo *)self requiredUserInfoKeys];
        v70 = [v69 count];

        if (v70)
        {
          v97 = v13;
          v98 = v10;
          v91 = v8;
          v93 = v7;
          v71 = [MEMORY[0x277CBEB18] array];
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
                v78 = [(UAUserActivityInfo *)self requiredUserInfoKeys];
                v79 = [v78 containsObject:v77];

                if ((v79 & 1) == 0)
                {
                  v80 = [v11 objectForKey:v77];
                  v81 = [UAUserActivity _encodeKeyAndValueIntoString:v77 value:v80];
                  [v71 addObject:v81];
                }
              }

              v74 = [v72 countByEnumeratingWithState:&v99 objects:v107 count:16];
            }

            while (v74);
          }

          if ([v71 count])
          {
            v82 = MEMORY[0x277CCACA8];
            v83 = [v71 componentsJoinedByString:{@", "}];
            v84 = [v82 stringWithFormat:@"ue={%@}", v83, v88];
            [v95 addObject:v84];
          }

          v8 = v91;
          v7 = v93;
          v13 = v97;
          v10 = v98;
        }
      }
    }

    if ([v95 count])
    {
      v85 = [v95 componentsJoinedByString:@"&"];
      [v8 appendFormat:@"%@", v85];
    }
  }

  v86 = *MEMORY[0x277D85DE8];
}

- (id)userActivityString
{
  v3 = [MEMORY[0x277CCAB68] string];
  [(UAUserActivityInfo *)self _createUserActivityStrings:v3 secondaryString:0 optionalData:0];
  if (v3 && [v3 length])
  {
    v4 = [v3 copy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)secondaryUserActivityString
{
  v3 = [MEMORY[0x277CCAB68] string];
  [(UAUserActivityInfo *)self _createUserActivityStrings:0 secondaryString:v3 optionalData:0];
  if (v3 && [v3 length])
  {
    v4 = [v3 copy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)optionalUserActivityData
{
  v3 = [MEMORY[0x277CBEB28] data];
  [(UAUserActivityInfo *)self _createUserActivityStrings:0 secondaryString:0 optionalData:v3];
  if (v3 && [v3 length])
  {
    v4 = [v3 copy];
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
  v4 = [v3 encodedData];

  return v4;
}

+ (id)encodedInfoToOldEncodedInfo:(id)a3
{
  v3 = a3;
  v4 = [v3 bytes];
  v5 = [v3 length];

  v6 = _UACopyUnpackedObjectFromData(v4, v5, 0);
  if (v6)
  {
    v7 = v6;
    v8 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
    [v8 encodeObject:v7 forKey:*MEMORY[0x277CCA308]];
    [v8 finishEncoding];
    v9 = [v8 encodedData];
    CFRelease(v7);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)statusString
{
  v3 = [(UAUserActivityInfo *)self payloads];
  v4 = [v3 objectForKey:@"UAUserActivityUserInfoPayload"];
  v19 = trimmedHexStringForData(v4, 0x10uLL);

  v18 = MEMORY[0x277CCACA8];
  v5 = suggestedActionTypeString([(UAUserActivityInfo *)self type]);
  v6 = [(UAUserActivityInfo *)self uuid];
  v7 = [v6 UUIDString];
  v8 = [(UAUserActivityInfo *)self activityType];
  v9 = [(UAUserActivityInfo *)self dynamicActivityType];
  if (v9)
  {
    v10 = MEMORY[0x277CCACA8];
    v17 = [(UAUserActivityInfo *)self dynamicActivityType];
    v11 = [v10 stringWithFormat:@":%@", v17];
  }

  else
  {
    v11 = &stru_283A5A2C8;
  }

  v12 = [(UAUserActivityInfo *)self type];
  v13 = [(UAUserActivityInfo *)self webpageURL];
  if (v13)
  {
    v14 = @" webPageURL=<private>";
  }

  else
  {
    v14 = &stru_283A5A2C8;
  }

  v15 = [v18 stringWithFormat:@"UAInfo:%@%@ %@%@ type=%ld %@%@", v5, v7, v8, v11, v12, v19, v14];

  if (v9)
  {
  }

  return v15;
}

- (id)provenance
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(UAUserActivityInfo *)self uuid];
  v5 = [(UAUserActivityInfo *)self activityType];
  v6 = [(UAUserActivityInfo *)self dynamicActivityType];
  v7 = v6;
  v8 = &stru_283A5A2C8;
  if (v6)
  {
    v8 = v6;
  }

  v9 = [v3 stringWithFormat:@"UAx:%@/%@-%@", v4, v5, v8];

  return v9;
}

@end