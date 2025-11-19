@interface UAUserActivityProxy
- (UAUserActivityProxy)initWithActivity:(id)a3 bundleId:(id)a4;
- (UAUserActivityProxy)initWithCoder:(id)a3;
- (UAUserActivityProxy)initWithSuggestion:(id)a3;
- (UAUserActivityProxy)initWithUUID:(id)a3 activityType:(id)a4 dynamicActivityType:(id)a5 bundleID:(id)a6;
- (id)activityIfAvailible;
- (id)activitySubTitle;
- (id)activityTitle;
- (id)contentAttributeSet;
- (id)description;
- (unint64_t)hash;
- (void)accessActivity:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)launchActivityWithOptions:(id)a3 completionHandler:(id)a4;
@end

@implementation UAUserActivityProxy

- (UAUserActivityProxy)initWithUUID:(id)a3 activityType:(id)a4 dynamicActivityType:(id)a5 bundleID:(id)a6
{
  v29 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = UAUserActivityProxy;
  v15 = [(UAUserActivityProxy *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_uuid, a3);
    objc_storeStrong(&v16->_activityType, a4);
    objc_storeStrong(&v16->_dynamicActivityType, a5);
    objc_storeStrong(&v16->_bundleIdentifier, a6);
  }

  v17 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138544131;
    v22 = v11;
    v23 = 2113;
    v24 = v12;
    v25 = 2113;
    v26 = v13;
    v27 = 2114;
    v28 = v14;
    _os_log_impl(&dword_226A4E000, v17, OS_LOG_TYPE_DEBUG, "UAUserActivityProxy:initWithUUID %{public}@ type:%{private}@/%{private}@ bundleIdentifier:%{public}@", buf, 0x2Au);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v16;
}

- (UAUserActivityProxy)initWithActivity:(id)a3 bundleId:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 _uniqueIdentifier];
  v9 = [v6 activityType];
  v10 = [v6 _internalUserActivity];
  v11 = [v10 dynamicIdentifier];
  v12 = [(UAUserActivityProxy *)self initWithUUID:v8 activityType:v9 dynamicActivityType:v11 bundleID:v7];

  if (v12)
  {
    [(UAUserActivityProxy *)v12 setInternalActivity:v6];
    v13 = [v6 activityType];
    activityType = v12->_activityType;
    v12->_activityType = v13;

    objc_storeStrong(&v12->_bundleIdentifier, a4);
    v12->_isRemoteActivity = 0;
    v15 = [(UAUserActivityProxy *)v12 internalActivity];
    v16 = [v15 _internalUserActivity];
    v17 = [v16 callWillSaveDelegateIfDirtyAndPackageUpData:0 options:0 clearDirty:0];

    v18 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v19 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v20 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [v17 _createUserActivityStrings:v18 secondaryString:v19 optionalData:v20];
  }

  return v12;
}

- (UAUserActivityProxy)initWithSuggestion:(id)a3
{
  v4 = a3;
  v5 = [v4 uniqueIdentifier];
  v6 = [v4 activityType];
  v7 = [v4 dynamicIdentifier];
  v8 = [v4 bundleIdentifier];
  v9 = [(UAUserActivityProxy *)self initWithUUID:v5 activityType:v6 dynamicActivityType:v7 bundleID:v8];

  if (v9)
  {
    [(UAUserActivityProxy *)v9 setSuggestedActivity:v4];
    v10 = [v4 activityType];
    activityType = v9->_activityType;
    v9->_activityType = v10;

    v12 = [v4 bundleIdentifier];
    bundleIdentifier = v9->_bundleIdentifier;
    v9->_bundleIdentifier = v12;

    v9->_isRemoteActivity = 1;
  }

  return v9;
}

- (void)accessActivity:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(UAUserActivityProxy *)self isRemoteActivity];
    v7 = @"Activity";
    if (v6)
    {
      v7 = @"Suggesion";
    }

    *buf = 138412290;
    v17 = v7;
    _os_log_impl(&dword_226A4E000, v5, OS_LOG_TYPE_INFO, "[PROXY] Accessing activity proxy: %@", buf, 0xCu);
  }

  v8 = [(UAUserActivityProxy *)self internalActivity];

  if (v8)
  {
    v9 = [(UAUserActivityProxy *)self internalActivity];
    v4[2](v4, v9, 0);
  }

  else
  {
    objc_initWeak(buf, self);
    v10 = [(UAUserActivityProxy *)self suggestedActivity];
    v11 = [v10 uniqueIdentifier];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __38__UAUserActivityProxy_accessActivity___block_invoke;
    v13[3] = &unk_2785C3C40;
    objc_copyWeak(&v15, buf);
    v14 = v4;
    [UAUserActivity fetchUserActivityWithUUID:v11 completionHandler:v13];

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

- (void)launchActivityWithOptions:(id)a3 completionHandler:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
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

    v10 = [(UAUserActivityProxy *)self activityType];
    v11 = [(UAUserActivityProxy *)self bundleIdentifier];
    *buf = 138412803;
    v35 = v9;
    v36 = 2113;
    v37 = v10;
    v38 = 2113;
    v39 = v11;
    _os_log_impl(&dword_226A4E000, v8, OS_LOG_TYPE_INFO, "[PROXY] Launching activity proxy: %@, at: %{private}@, id: %{private}@", buf, 0x20u);
  }

  v12 = objc_alloc(MEMORY[0x277CC1E70]);
  v13 = [(UAUserActivityProxy *)self bundleIdentifier];
  v31 = 0;
  v14 = [v12 initWithBundleIdentifier:v13 allowPlaceholder:0 error:&v31];
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

    v22 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"UAContinuityErrorDomain" code:-134 userInfo:v21];
    v23 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v35 = v15;
      _os_log_impl(&dword_226A4E000, v23, OS_LOG_TYPE_ERROR, "[PROXY] Application lookup failed: %@", buf, 0xCu);
    }

    v7[2](v7, 0, v22);
  }

  else
  {
    v16 = [v6 objectForKey:@"com.apple.coreservices.useractivity.interactiontype"];

    if (v16)
    {
      v17 = [v6 mutableCopy];
      v18 = [v17 objectForKeyedSubscript:@"com.apple.coreservices.useractivity.interactiontype"];
      v19 = [v18 unsignedIntegerValue];

      [v17 removeObjectForKey:@"com.apple.coreservices.useractivity.interactiontype"];
      v20 = [v17 copy];

      v6 = v20;
    }

    else
    {
      v19 = 805306368;
    }

    v21 = objc_alloc_init(MEMORY[0x277CC1F00]);
    [v21 setFrontBoardOptions:v6];
    v24 = [(UAUserActivityProxy *)self internalActivity];

    v22 = [MEMORY[0x277CC1E80] defaultWorkspace];
    if (v24)
    {
      v25 = [(UAUserActivityProxy *)self internalActivity];
      [(UABestAppSuggestionManager *)v22 openUserActivity:v25 usingApplicationRecord:v14 configuration:v21 completionHandler:v7];
    }

    else
    {
      v26 = [(UAUserActivityProxy *)self suggestedActivity];
      v27 = [v26 uniqueIdentifier];
      [(UAUserActivityProxy *)self activityType];
      v28 = v30 = v19;
      [(UABestAppSuggestionManager *)v22 openUserActivityWithUUID:v27 activityType:v28 usingApplicationRecord:v14 configuration:v21 completionHandler:v7];

      v22 = objc_alloc_init(UABestAppSuggestionManager);
      v25 = [(UAUserActivityProxy *)self suggestedActivity];
      [(UABestAppSuggestionManager *)v22 bestAppSuggestionWasLaunched:v25 withInteractionType:v30];
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (unint64_t)hash
{
  v2 = [(UAUserActivityProxy *)self uuid];
  v3 = [v2 hash];

  return v3;
}

- (id)activityIfAvailible
{
  v3 = [(UAUserActivityProxy *)self internalActivity];

  if (v3)
  {
    v4 = [(UAUserActivityProxy *)self internalActivity];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)activityTitle
{
  v3 = [(UAUserActivityProxy *)self internalActivity];

  if (v3)
  {
    v4 = [(UAUserActivityProxy *)self internalActivity];
    v5 = [v4 title];
  }

  else
  {
    v5 = &stru_283A5A2C8;
  }

  return v5;
}

- (id)activitySubTitle
{
  v3 = [(UAUserActivityProxy *)self internalActivity];

  if (v3)
  {
    v4 = [(UAUserActivityProxy *)self internalActivity];
    v5 = [v4 _internalUserActivity];
    v6 = [v5 contentAttributeSet];
    v7 = [v6 contentDescription];
  }

  else
  {
    v7 = &stru_283A5A2C8;
  }

  return v7;
}

- (id)contentAttributeSet
{
  v3 = [(UAUserActivityProxy *)self internalActivity];

  if (v3)
  {
    v4 = [(UAUserActivityProxy *)self internalActivity];
    v5 = [v4 contentAttributeSet];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(UAUserActivityProxy *)self uuid];
  v5 = [(UAUserActivityProxy *)self activityType];
  v6 = [(UAUserActivityProxy *)self dynamicActivityType];
  v7 = [(UAUserActivityProxy *)self bundleIdentifier];
  v8 = [v3 stringWithFormat:@"UAUserActivityProxy(%@ %@/%@ %@)", v4, v5, v6, v7];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v11 = a3;
  v4 = [(UAUserActivityProxy *)self uuid];
  [v11 encodeObject:v4 forKey:@"uuid"];

  v5 = [(UAUserActivityProxy *)self activityType];
  [v11 encodeObject:v5 forKey:@"ProxiedActivityType"];

  v6 = [(UAUserActivityProxy *)self bundleIdentifier];
  [v11 encodeObject:v6 forKey:@"ProxiedBundleID"];

  [v11 encodeBool:-[UAUserActivityProxy isRemoteActivity](self forKey:{"isRemoteActivity"), @"ProxiedActivityIsRemote"}];
  if ([(UAUserActivityProxy *)self isRemoteActivity])
  {
    v7 = [(UAUserActivityProxy *)self suggestedActivity];
    v8 = @"ProxiedSuggestion";
  }

  else
  {
    v9 = [(UAUserActivityProxy *)self internalActivity];
    v10 = [v9 _internalUserActivity];
    v7 = [v10 callWillSaveDelegateIfDirtyAndPackageUpData:0 options:0 clearDirty:0];

    v8 = @"ProxiedActivityInfo";
  }

  [v11 encodeObject:v7 forKey:v8];
}

- (UAUserActivityProxy)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = UAUserActivityProxy;
  v5 = [(UAUserActivityProxy *)&v23 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ProxiedActivityType"];
    activityType = v5->_activityType;
    v5->_activityType = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ProxiedBundleID"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v10;

    v5->_isRemoteActivity = [v4 decodeBoolForKey:@"ProxiedActivityIsRemote"];
    if ([(UAUserActivityProxy *)v5 isRemoteActivity])
    {
      v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ProxiedSuggestion"];
      suggestedActivity = v5->_suggestedActivity;
      v5->_suggestedActivity = v12;
    }

    else
    {
      suggestedActivity = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ProxiedActivityInfo"];
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