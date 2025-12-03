@interface SMDeepLinkURLFactory
+ (id)_generateCommonQueryItemsWithPayloadType:(int64_t)type groupID:(id)d data:(id)data sessionStartEntryType:(unint64_t)entryType;
+ (id)createURLForGroupID:(id)d recipientHandles:(id)handles payloadType:(int64_t)type;
+ (id)createURLForRecipientHandle:(id)handle payloadType:(int64_t)type;
+ (id)createURLForSuggestionsWithRecipientHandle:(id)handle appPayloadDataString:(id)string givenName:(id)name payloadType:(int64_t)type sessionStartEntryType:(unint64_t)entryType;
+ (id)createURLToConversationForGroupID:(id)d;
+ (id)createURLToConversationForRecipientHandle:(id)handle;
+ (id)createURLToDetailViewForGroupID:(id)d recipientHandles:(id)handles;
+ (id)createURLToDetailViewForRecipientHandle:(id)handle;
+ (int64_t)resolvePayloadTypeFromURL:(id)l;
@end

@implementation SMDeepLinkURLFactory

+ (id)createURLForRecipientHandle:(id)handle payloadType:(int64_t)type
{
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCACE0];
  handleCopy = handle;
  v8 = objc_alloc_init(v6);
  [v8 setScheme:@"sms-private"];
  [v8 setPath:@"open"];
  v9 = [self _generateCommonQueryItemsWithPayloadType:type groupID:0 data:0 sessionStartEntryType:0];
  v10 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"recipient" value:handleCopy];

  v16[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v12 = [v9 arrayByAddingObjectsFromArray:v11];

  [v8 setQueryItems:v12];
  v13 = [v8 URL];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)createURLForSuggestionsWithRecipientHandle:(id)handle appPayloadDataString:(id)string givenName:(id)name payloadType:(int64_t)type sessionStartEntryType:(unint64_t)entryType
{
  v28[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v13 = MEMORY[0x277CCACE0];
  stringCopy = string;
  handleCopy = handle;
  v16 = objc_alloc_init(v13);
  [v16 setScheme:@"sms-private"];
  [v16 setPath:@"open"];
  v17 = [self _generateCommonQueryItemsWithPayloadType:type groupID:0 data:stringCopy sessionStartEntryType:entryType];

  v18 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"recipient" value:handleCopy];
  v28[0] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
  v20 = [v17 arrayByAddingObjectsFromArray:v19];

  if (nameCopy)
  {
    v21 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"givenName" value:nameCopy];
    v27 = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
    v23 = [v20 arrayByAddingObjectsFromArray:v22];

    v20 = v23;
  }

  [v16 setQueryItems:v20];
  v24 = [v16 URL];

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

+ (id)createURLToDetailViewForRecipientHandle:(id)handle
{
  if (handle)
  {
    v3 = [self createURLForRecipientHandle:handle payloadType:1];
  }

  else
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_26455D000, v4, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handle", v6, 2u);
    }

    v3 = 0;
  }

  return v3;
}

+ (id)createURLForGroupID:(id)d recipientHandles:(id)handles payloadType:(int64_t)type
{
  v7 = MEMORY[0x277CCACE0];
  dCopy = d;
  v9 = objc_alloc_init(v7);
  [v9 setScheme:@"sms-private"];
  [v9 setPath:@"open"];
  v10 = [self _generateCommonQueryItemsWithPayloadType:type groupID:dCopy data:0 sessionStartEntryType:0];
  v11 = [MEMORY[0x277CBEB18] arrayWithArray:v10];
  v12 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"groupid" value:dCopy];

  [v11 addObject:v12];
  [v9 setQueryItems:v11];
  v13 = [v9 URL];

  return v13;
}

+ (id)createURLToDetailViewForGroupID:(id)d recipientHandles:(id)handles
{
  if (d)
  {
    v4 = [self createURLForGroupID:d recipientHandles:handles payloadType:1];
  }

  else
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_26455D000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: groupID", v7, 2u);
    }

    v4 = 0;
  }

  return v4;
}

+ (id)_generateCommonQueryItemsWithPayloadType:(int64_t)type groupID:(id)d data:(id)data sessionStartEntryType:(unint64_t)entryType
{
  v39[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  dataCopy = data;
  v11 = MEMORY[0x277CBEB38];
  v38 = @"payloadType";
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  v39[0] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
  v14 = [v11 dictionaryWithDictionary:v13];

  if (dCopy)
  {
    [v14 setObject:dCopy forKey:@"groupID"];
  }

  if (dataCopy)
  {
    [v14 setObject:dataCopy forKey:@"data"];
  }

  if (entryType)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:entryType];
    [v14 setObject:v15 forKey:@"sessionStartEntryType"];
  }

  v32 = 0;
  v16 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v14 options:8 error:&v32];
  v17 = v32;
  if (v17)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v35 = "+[SMDeepLinkURLFactory _generateCommonQueryItemsWithPayloadType:groupID:data:sessionStartEntryType:]";
      v36 = 2112;
      v37 = v17;
      _os_log_impl(&dword_26455D000, v18, OS_LOG_TYPE_DEFAULT, "%s, createURLForDetailView, failed to create json payload with error: %@", buf, 0x16u);
    }

    v19 = 0;
  }

  else
  {
    v31 = v16;
    v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v16 encoding:4];
    typeCopy = type;
    v20 = objc_alloc(MEMORY[0x277CBEB18]);
    v21 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"service" value:@"iMessage"];
    v22 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"appBundleID" value:@"com.apple.SafetyMonitorApp.SafetyMonitorMessages"];
    v23 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"launchApp" value:@"yes"];
    v24 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"appPayload" value:v18];
    v25 = [v20 initWithObjects:{v21, v22, v23, v24, 0}];

    if ((typeCopy - 2) < 3)
    {
      v26 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"allowRetargeting" value:@"true"];
      v33 = v26;
      v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
      [v25 addObjectsFromArray:v27];
    }

    v19 = [v25 copy];

    v16 = v31;
  }

  v28 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (id)createURLToConversationForRecipientHandle:(id)handle
{
  if (handle)
  {
    handle = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"messages://open?recipient=", handle];
    v4 = [MEMORY[0x277CBEBC0] URLWithString:handle];
  }

  else
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26455D000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handle", buf, 2u);
    }

    v4 = 0;
  }

  return v4;
}

+ (id)createURLToConversationForGroupID:(id)d
{
  if (d)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"messages://open?groupid=", d];
    v4 = [MEMORY[0x277CBEBC0] URLWithString:v3];
  }

  else
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26455D000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: groupID", buf, 2u);
    }

    v4 = 0;
  }

  return v4;
}

+ (int64_t)resolvePayloadTypeFromURL:(id)l
{
  v62 = *MEMORY[0x277D85DE8];
  lCopy = l;
  if (!lCopy)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26455D000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: url", buf, 2u);
    }

    v37 = 0;
    goto LABEL_45;
  }

  v5 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:lCopy resolvingAgainstBaseURL:0];
  v6 = v5;
  if (!v5)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v33 = objc_opt_class();
      v34 = NSStringFromClass(v33);
      v35 = NSStringFromSelector(a2);
      *buf = 138412546;
      v56 = v34;
      v57 = 2112;
      v58 = v35;
      _os_log_error_impl(&dword_26455D000, v8, OS_LOG_TYPE_ERROR, "%@,%@,missing url components", buf, 0x16u);
    }

    goto LABEL_41;
  }

  queryItems = [v5 queryItems];
  if (!queryItems)
  {
    v36 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v40 = objc_opt_class();
      v41 = NSStringFromClass(v40);
      v42 = NSStringFromSelector(a2);
      *buf = 138412546;
      v56 = v41;
      v57 = 2112;
      v58 = v42;
      _os_log_error_impl(&dword_26455D000, v36, OS_LOG_TYPE_ERROR, "%@,%@,missing queryItems", buf, 0x16u);
    }

    v8 = 0;
LABEL_41:
    v37 = 0;
    goto LABEL_44;
  }

  v46 = v6;
  v47 = lCopy;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v8 = queryItems;
  v9 = [v8 countByEnumeratingWithState:&v51 objects:v61 count:16];
  if (!v9)
  {
    v49 = 0;
    goto LABEL_43;
  }

  v10 = v9;
  aSelector = a2;
  v49 = 0;
  v11 = *v52;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v52 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v51 + 1) + 8 * i);
      value = [v13 value];
      if (!value)
      {
        v24 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v29 = objc_opt_class();
          v30 = NSStringFromClass(v29);
          v31 = NSStringFromSelector(aSelector);
          *buf = 138412546;
          v56 = v30;
          v57 = 2112;
          v58 = v31;
          _os_log_error_impl(&dword_26455D000, v24, OS_LOG_TYPE_ERROR, "%@,%@,queryItem missing value", buf, 0x16u);
        }

LABEL_29:
        continue;
      }

      name = [v13 name];
      v16 = [name isEqualToString:@"appPayload"];

      if (!v16)
      {
        goto LABEL_29;
      }

      v17 = [value dataUsingEncoding:4];
      v50 = 0;
      v18 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v17 options:0 error:&v50];
      v19 = v50;
      if (v19 || !v18)
      {
        v20 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v25 = objc_opt_class();
          v44 = NSStringFromClass(v25);
          v26 = NSStringFromSelector(aSelector);
          *buf = 138412802;
          v56 = v44;
          v57 = 2112;
          v58 = v26;
          v27 = v26;
          v59 = 2112;
          v60 = value;
          _os_log_error_impl(&dword_26455D000, v20, OS_LOG_TYPE_ERROR, "%@,%@, failure to decode json object %@", buf, 0x20u);
        }

        goto LABEL_25;
      }

      v20 = [v18 objectForKey:@"payloadType"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v28 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v32 = objc_opt_class();
          v45 = NSStringFromClass(v32);
          v43 = NSStringFromSelector(aSelector);
          *buf = 138412802;
          v56 = v45;
          v57 = 2112;
          v58 = v43;
          v59 = 2112;
          v60 = v20;
          _os_log_error_impl(&dword_26455D000, v28, OS_LOG_TYPE_ERROR, "%@,%@, failure to decode type %@", buf, 0x20u);
        }

LABEL_25:
        v22 = 7;
        goto LABEL_26;
      }

      unsignedIntegerValue = [v20 unsignedIntegerValue];
      v22 = unsignedIntegerValue > 4;
      v23 = v49;
      if (unsignedIntegerValue <= 4)
      {
        v23 = unsignedIntegerValue;
      }

      v49 = v23;
LABEL_26:

      if (!v22)
      {
        goto LABEL_29;
      }

      if (v22 != 7)
      {

        v37 = 0;
        v6 = v46;
        lCopy = v47;
        goto LABEL_44;
      }
    }

    v10 = [v8 countByEnumeratingWithState:&v51 objects:v61 count:16];
  }

  while (v10);
LABEL_43:

  v6 = v46;
  lCopy = v47;
  v37 = v49;
LABEL_44:

LABEL_45:
  v38 = *MEMORY[0x277D85DE8];
  return v37;
}

@end