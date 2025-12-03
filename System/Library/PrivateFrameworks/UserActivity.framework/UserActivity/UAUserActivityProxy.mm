@interface UAUserActivityProxy
- (UAUserActivityProxy)initWithActivity:(id)activity bundleId:(id)id;
- (UAUserActivityProxy)initWithCoder:(id)coder;
- (UAUserActivityProxy)initWithSuggestion:(id)suggestion;
- (UAUserActivityProxy)initWithUUID:(id)d activityType:(id)type dynamicActivityType:(id)activityType bundleID:(id)iD;
- (id)activityIfAvailible;
- (id)activitySubTitle;
- (id)activityTitle;
- (id)contentAttributeSet;
- (id)description;
- (unint64_t)hash;
- (void)accessActivity:(id)activity;
- (void)encodeWithCoder:(id)coder;
- (void)launchActivityWithOptions:(id)options completionHandler:(id)handler;
@end

@implementation UAUserActivityProxy

- (UAUserActivityProxy)initWithUUID:(id)d activityType:(id)type dynamicActivityType:(id)activityType bundleID:(id)iD
{
  v29 = *MEMORY[0x277D85DE8];
  dCopy = d;
  typeCopy = type;
  activityTypeCopy = activityType;
  iDCopy = iD;
  v20.receiver = self;
  v20.super_class = UAUserActivityProxy;
  v15 = [(UAUserActivityProxy *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_uuid, d);
    objc_storeStrong(&v16->_activityType, type);
    objc_storeStrong(&v16->_dynamicActivityType, activityType);
    objc_storeStrong(&v16->_bundleIdentifier, iD);
  }

  v17 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138544131;
    v22 = dCopy;
    v23 = 2113;
    v24 = typeCopy;
    v25 = 2113;
    v26 = activityTypeCopy;
    v27 = 2114;
    v28 = iDCopy;
    _os_log_impl(&dword_226A4E000, v17, OS_LOG_TYPE_DEBUG, "UAUserActivityProxy:initWithUUID %{public}@ type:%{private}@/%{private}@ bundleIdentifier:%{public}@", buf, 0x2Au);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v16;
}

- (UAUserActivityProxy)initWithActivity:(id)activity bundleId:(id)id
{
  activityCopy = activity;
  idCopy = id;
  _uniqueIdentifier = [activityCopy _uniqueIdentifier];
  activityType = [activityCopy activityType];
  _internalUserActivity = [activityCopy _internalUserActivity];
  dynamicIdentifier = [_internalUserActivity dynamicIdentifier];
  v12 = [(UAUserActivityProxy *)self initWithUUID:_uniqueIdentifier activityType:activityType dynamicActivityType:dynamicIdentifier bundleID:idCopy];

  if (v12)
  {
    [(UAUserActivityProxy *)v12 setInternalActivity:activityCopy];
    activityType2 = [activityCopy activityType];
    activityType = v12->_activityType;
    v12->_activityType = activityType2;

    objc_storeStrong(&v12->_bundleIdentifier, id);
    v12->_isRemoteActivity = 0;
    internalActivity = [(UAUserActivityProxy *)v12 internalActivity];
    _internalUserActivity2 = [internalActivity _internalUserActivity];
    v17 = [_internalUserActivity2 callWillSaveDelegateIfDirtyAndPackageUpData:0 options:0 clearDirty:0];

    v18 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v19 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v20 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [v17 _createUserActivityStrings:v18 secondaryString:v19 optionalData:v20];
  }

  return v12;
}

- (UAUserActivityProxy)initWithSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  uniqueIdentifier = [suggestionCopy uniqueIdentifier];
  activityType = [suggestionCopy activityType];
  dynamicIdentifier = [suggestionCopy dynamicIdentifier];
  bundleIdentifier = [suggestionCopy bundleIdentifier];
  v9 = [(UAUserActivityProxy *)self initWithUUID:uniqueIdentifier activityType:activityType dynamicActivityType:dynamicIdentifier bundleID:bundleIdentifier];

  if (v9)
  {
    [(UAUserActivityProxy *)v9 setSuggestedActivity:suggestionCopy];
    activityType2 = [suggestionCopy activityType];
    activityType = v9->_activityType;
    v9->_activityType = activityType2;

    bundleIdentifier2 = [suggestionCopy bundleIdentifier];
    bundleIdentifier = v9->_bundleIdentifier;
    v9->_bundleIdentifier = bundleIdentifier2;

    v9->_isRemoteActivity = 1;
  }

  return v9;
}

- (void)accessActivity:(id)activity
{
  v18 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  v5 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    isRemoteActivity = [(UAUserActivityProxy *)self isRemoteActivity];
    v7 = @"Activity";
    if (isRemoteActivity)
    {
      v7 = @"Suggesion";
    }

    *buf = 138412290;
    v17 = v7;
    _os_log_impl(&dword_226A4E000, v5, OS_LOG_TYPE_INFO, "[PROXY] Accessing activity proxy: %@", buf, 0xCu);
  }

  internalActivity = [(UAUserActivityProxy *)self internalActivity];

  if (internalActivity)
  {
    internalActivity2 = [(UAUserActivityProxy *)self internalActivity];
    activityCopy[2](activityCopy, internalActivity2, 0);
  }

  else
  {
    objc_initWeak(buf, self);
    suggestedActivity = [(UAUserActivityProxy *)self suggestedActivity];
    uniqueIdentifier = [suggestedActivity uniqueIdentifier];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __38__UAUserActivityProxy_accessActivity___block_invoke;
    v13[3] = &unk_2785C3C40;
    objc_copyWeak(&v15, buf);
    v14 = activityCopy;
    [UAUserActivity fetchUserActivityWithUUID:uniqueIdentifier completionHandler:v13];

    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __38__UAUserActivityProxy_accessActivity___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *v12 = 0;
    _os_log_impl(&dword_226A4E000, v7, OS_LOG_TYPE_INFO, "[PROXY] Finished fetching activity", v12, 2u);
  }

  if (v5)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v9 = [objc_alloc(MEMORY[0x277CCAE58]) initWithInternalUserActivity:v5];
    [WeakRetained setInternalActivity:v9];

    v10 = *(a1 + 32);
    v11 = [WeakRetained internalActivity];
    (*(v10 + 16))(v10, v11, v6);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)launchActivityWithOptions:(id)options completionHandler:(id)handler
{
  v40 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  handlerCopy = handler;
  v8 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    if ([(UAUserActivityProxy *)self isRemoteActivity])
    {
      v9 = @"Suggesion";
    }

    else
    {
      v9 = @"Activity";
    }

    activityType = [(UAUserActivityProxy *)self activityType];
    bundleIdentifier = [(UAUserActivityProxy *)self bundleIdentifier];
    *buf = 138412803;
    v35 = v9;
    v36 = 2113;
    v37 = activityType;
    v38 = 2113;
    v39 = bundleIdentifier;
    _os_log_impl(&dword_226A4E000, v8, OS_LOG_TYPE_INFO, "[PROXY] Launching activity proxy: %@, at: %{private}@, id: %{private}@", buf, 0x20u);
  }

  v12 = objc_alloc(MEMORY[0x277CC1E70]);
  bundleIdentifier2 = [(UAUserActivityProxy *)self bundleIdentifier];
  v31 = 0;
  v14 = [v12 initWithBundleIdentifier:bundleIdentifier2 allowPlaceholder:0 error:&v31];
  v15 = v31;

  if (v15 || !v14)
  {
    if (v15)
    {
      v32 = *MEMORY[0x277CCA7E8];
      v33 = v15;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    }

    else
    {
      v21 = 0;
    }

    defaultWorkspace = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"UAContinuityErrorDomain" code:-134 userInfo:v21];
    v23 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v35 = v15;
      _os_log_impl(&dword_226A4E000, v23, OS_LOG_TYPE_ERROR, "[PROXY] Application lookup failed: %@", buf, 0xCu);
    }

    handlerCopy[2](handlerCopy, 0, defaultWorkspace);
  }

  else
  {
    v16 = [optionsCopy objectForKey:@"com.apple.coreservices.useractivity.interactiontype"];

    if (v16)
    {
      v17 = [optionsCopy mutableCopy];
      v18 = [v17 objectForKeyedSubscript:@"com.apple.coreservices.useractivity.interactiontype"];
      unsignedIntegerValue = [v18 unsignedIntegerValue];

      [v17 removeObjectForKey:@"com.apple.coreservices.useractivity.interactiontype"];
      v20 = [v17 copy];

      optionsCopy = v20;
    }

    else
    {
      unsignedIntegerValue = 805306368;
    }

    v21 = objc_alloc_init(MEMORY[0x277CC1F00]);
    [v21 setFrontBoardOptions:optionsCopy];
    internalActivity = [(UAUserActivityProxy *)self internalActivity];

    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    if (internalActivity)
    {
      internalActivity2 = [(UAUserActivityProxy *)self internalActivity];
      [(UABestAppSuggestionManager *)defaultWorkspace openUserActivity:internalActivity2 usingApplicationRecord:v14 configuration:v21 completionHandler:handlerCopy];
    }

    else
    {
      suggestedActivity = [(UAUserActivityProxy *)self suggestedActivity];
      uniqueIdentifier = [suggestedActivity uniqueIdentifier];
      [(UAUserActivityProxy *)self activityType];
      v28 = v30 = unsignedIntegerValue;
      [(UABestAppSuggestionManager *)defaultWorkspace openUserActivityWithUUID:uniqueIdentifier activityType:v28 usingApplicationRecord:v14 configuration:v21 completionHandler:handlerCopy];

      defaultWorkspace = objc_alloc_init(UABestAppSuggestionManager);
      internalActivity2 = [(UAUserActivityProxy *)self suggestedActivity];
      [(UABestAppSuggestionManager *)defaultWorkspace bestAppSuggestionWasLaunched:internalActivity2 withInteractionType:v30];
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (unint64_t)hash
{
  uuid = [(UAUserActivityProxy *)self uuid];
  v3 = [uuid hash];

  return v3;
}

- (id)activityIfAvailible
{
  internalActivity = [(UAUserActivityProxy *)self internalActivity];

  if (internalActivity)
  {
    internalActivity2 = [(UAUserActivityProxy *)self internalActivity];
  }

  else
  {
    internalActivity2 = 0;
  }

  return internalActivity2;
}

- (id)activityTitle
{
  internalActivity = [(UAUserActivityProxy *)self internalActivity];

  if (internalActivity)
  {
    internalActivity2 = [(UAUserActivityProxy *)self internalActivity];
    title = [internalActivity2 title];
  }

  else
  {
    title = &stru_283A5A2C8;
  }

  return title;
}

- (id)activitySubTitle
{
  internalActivity = [(UAUserActivityProxy *)self internalActivity];

  if (internalActivity)
  {
    internalActivity2 = [(UAUserActivityProxy *)self internalActivity];
    _internalUserActivity = [internalActivity2 _internalUserActivity];
    contentAttributeSet = [_internalUserActivity contentAttributeSet];
    contentDescription = [contentAttributeSet contentDescription];
  }

  else
  {
    contentDescription = &stru_283A5A2C8;
  }

  return contentDescription;
}

- (id)contentAttributeSet
{
  internalActivity = [(UAUserActivityProxy *)self internalActivity];

  if (internalActivity)
  {
    internalActivity2 = [(UAUserActivityProxy *)self internalActivity];
    contentAttributeSet = [internalActivity2 contentAttributeSet];
  }

  else
  {
    contentAttributeSet = 0;
  }

  return contentAttributeSet;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  uuid = [(UAUserActivityProxy *)self uuid];
  activityType = [(UAUserActivityProxy *)self activityType];
  dynamicActivityType = [(UAUserActivityProxy *)self dynamicActivityType];
  bundleIdentifier = [(UAUserActivityProxy *)self bundleIdentifier];
  v8 = [v3 stringWithFormat:@"UAUserActivityProxy(%@ %@/%@ %@)", uuid, activityType, dynamicActivityType, bundleIdentifier];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uuid = [(UAUserActivityProxy *)self uuid];
  [coderCopy encodeObject:uuid forKey:@"uuid"];

  activityType = [(UAUserActivityProxy *)self activityType];
  [coderCopy encodeObject:activityType forKey:@"ProxiedActivityType"];

  bundleIdentifier = [(UAUserActivityProxy *)self bundleIdentifier];
  [coderCopy encodeObject:bundleIdentifier forKey:@"ProxiedBundleID"];

  [coderCopy encodeBool:-[UAUserActivityProxy isRemoteActivity](self forKey:{"isRemoteActivity"), @"ProxiedActivityIsRemote"}];
  if ([(UAUserActivityProxy *)self isRemoteActivity])
  {
    suggestedActivity = [(UAUserActivityProxy *)self suggestedActivity];
    v8 = @"ProxiedSuggestion";
  }

  else
  {
    internalActivity = [(UAUserActivityProxy *)self internalActivity];
    _internalUserActivity = [internalActivity _internalUserActivity];
    suggestedActivity = [_internalUserActivity callWillSaveDelegateIfDirtyAndPackageUpData:0 options:0 clearDirty:0];

    v8 = @"ProxiedActivityInfo";
  }

  [coderCopy encodeObject:suggestedActivity forKey:v8];
}

- (UAUserActivityProxy)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = UAUserActivityProxy;
  v5 = [(UAUserActivityProxy *)&v23 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ProxiedActivityType"];
    activityType = v5->_activityType;
    v5->_activityType = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ProxiedBundleID"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v10;

    v5->_isRemoteActivity = [coderCopy decodeBoolForKey:@"ProxiedActivityIsRemote"];
    if ([(UAUserActivityProxy *)v5 isRemoteActivity])
    {
      v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ProxiedSuggestion"];
      suggestedActivity = v5->_suggestedActivity;
      v5->_suggestedActivity = v12;
    }

    else
    {
      suggestedActivity = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ProxiedActivityInfo"];
      v14 = [UAUserActivity alloc];
      v15 = +[UAUserActivityManager defaultManager];
      v16 = [(UAUserActivity *)v14 initWithManager:v15 userActivityInfo:suggestedActivity];

      v17 = [objc_alloc(MEMORY[0x277CCAE58]) initWithInternalUserActivity:v16];
      internalActivity = v5->_internalActivity;
      v5->_internalActivity = v17;

      v19 = objc_alloc_init(MEMORY[0x277CCAB68]);
      v20 = objc_alloc_init(MEMORY[0x277CCAB68]);
      v21 = objc_alloc_init(MEMORY[0x277CBEB28]);
      [suggestedActivity _createUserActivityStrings:v19 secondaryString:v20 optionalData:v21];
    }
  }

  return v5;
}

@end