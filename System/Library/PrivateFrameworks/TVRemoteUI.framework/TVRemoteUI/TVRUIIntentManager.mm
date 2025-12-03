@interface TVRUIIntentManager
+ (void)_donateInteractionforIntent:(id)intent launchID:(id)d;
+ (void)donateIntentsForDeviceWithID:(id)d name:(id)name;
@end

@implementation TVRUIIntentManager

+ (void)donateIntentsForDeviceWithID:(id)d name:(id)name
{
  v17 = *MEMORY[0x277D85DE8];
  dCopy = d;
  nameCopy = name;
  v8 = _TVRUIIntentManagerLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "+[TVRUIIntentManager donateIntentsForDeviceWithID:name:]";
    _os_log_impl(&dword_26CFEB000, v8, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if ([dCopy length] && objc_msgSend(nameCopy, "length"))
  {
    v9 = dispatch_get_global_queue(17, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__TVRUIIntentManager_donateIntentsForDeviceWithID_name___block_invoke;
    block[3] = &unk_279D889D0;
    v12 = dCopy;
    v13 = nameCopy;
    selfCopy = self;
    dispatch_async(v9, block);

    v10 = v12;
  }

  else
  {
    v10 = _TVRUIIntentManagerLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(TVRUIIntentManager *)dCopy donateIntentsForDeviceWithID:nameCopy name:v10];
    }
  }
}

void __56__TVRUIIntentManager_donateIntentsForDeviceWithID_name___block_invoke(uint64_t a1)
{
  v5 = [[TVRDevice alloc] initWithIdentifier:*(a1 + 32) displayString:*(a1 + 40) pronunciationHint:*(a1 + 40)];
  v2 = objc_alloc_init(WakeAppleTVIntent);
  [(WakeAppleTVIntent *)v2 setDevice:v5];
  [*(a1 + 48) _donateInteractionforIntent:v2 launchID:@"com.apple.TVRemoteUIService"];
  v3 = objc_alloc_init(LaunchRemoteIntent);
  [(LaunchRemoteIntent *)v3 setDevice:v5];
  [*(a1 + 48) _donateInteractionforIntent:v3 launchID:@"com.apple.TVRemoteUIService"];
  v4 = objc_alloc_init(LaunchTVAppIntent);
  [(LaunchTVAppIntent *)v4 setDevice:v5];
  [*(a1 + 48) _donateInteractionforIntent:v4 launchID:@"com.apple.TVRemoteUIService"];
}

+ (void)_donateInteractionforIntent:(id)intent launchID:(id)d
{
  intentCopy = intent;
  [intentCopy _setLaunchId:@"com.apple.TVRemoteUIService"];
  v5 = [objc_alloc(MEMORY[0x277CD3D58]) initWithIntent:intentCopy response:0];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__TVRUIIntentManager__donateInteractionforIntent_launchID___block_invoke;
  v8[3] = &unk_279D889F8;
  v9 = intentCopy;
  v10 = v5;
  v6 = v5;
  v7 = intentCopy;
  [v6 donateInteractionWithCompletion:v8];
}

void __59__TVRUIIntentManager__donateInteractionforIntent_launchID___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _TVRUIIntentManagerLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __59__TVRUIIntentManager__donateInteractionforIntent_launchID___block_invoke_cold_1(a1, v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = 138543618;
    v9 = v6;
    v10 = 2114;
    v11 = v7;
    _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "Successfully donated intent=%{public}@, interaction=%{public}@, ", &v8, 0x16u);
  }
}

+ (void)donateIntentsForDeviceWithID:(os_log_t)log name:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_26CFEB000, log, OS_LOG_TYPE_ERROR, "Cannot donate intents due to deviceID or name being invalid. deviceID - %@. Name - %@", &v3, 0x16u);
}

void __59__TVRUIIntentManager__donateInteractionforIntent_launchID___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = 138543874;
  v6 = v3;
  v7 = 2114;
  v8 = v4;
  v9 = 2114;
  v10 = a2;
  _os_log_error_impl(&dword_26CFEB000, log, OS_LOG_TYPE_ERROR, "Error donating intent=%{public}@, interaction=%{public}@, error=%{public}@", &v5, 0x20u);
}

@end