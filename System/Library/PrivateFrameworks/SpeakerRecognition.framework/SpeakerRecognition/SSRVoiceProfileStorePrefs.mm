@interface SSRVoiceProfileStorePrefs
+ (id)sharedStorePrefs;
- (id)getAllContentsOfVoiceProfileStorePrefs;
- (id)loadEnrollmentSamplingMetaDataDict;
- (id)loadKnownUserVoiceProfiles;
- (id)loadRequestIdsToAudioIdsMapping;
- (int64_t)getVoiceProfileStoreVersion;
- (void)applyContentsToVoiceProfileStorePrefs:(id)prefs;
- (void)saveEnrollmentSamplingMetaDataDict:(id)dict;
- (void)saveKnownUserVoiceProfiles:(id)profiles;
- (void)saveRequestIdsToAudioIdsMapping:(id)mapping;
- (void)setVoiceProfileStoreVersion:(unint64_t)version;
@end

@implementation SSRVoiceProfileStorePrefs

- (void)applyContentsToVoiceProfileStorePrefs:(id)prefs
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCAAC8];
  prefsCopy = prefs;
  v20 = 0;
  v6 = [v4 unarchivedObjectOfClass:objc_opt_class() fromData:prefsCopy error:&v20];

  v7 = v20;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6 == 0;
  }

  if (v8)
  {
    v9 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v10 = v9;
      localizedDescription = [v7 localizedDescription];
      *buf = 136315394;
      v22 = "[SSRVoiceProfileStorePrefs applyContentsToVoiceProfileStorePrefs:]";
      v23 = 2112;
      v24 = localizedDescription;
      _os_log_error_impl(&dword_225E12000, v10, OS_LOG_TYPE_ERROR, "%s Unable to decode blob, not restoring with error %@", buf, 0x16u);
    }
  }

  else
  {
    vpArray = [v6 vpArray];
    if (vpArray && (v13 = vpArray, [v6 vpArray], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "count"), v14, v13, v15))
    {
      version = [v6 version];
      -[SSRVoiceProfileStorePrefs setVoiceProfileStoreVersion:](self, "setVoiceProfileStoreVersion:", [version integerValue]);

      vpArray2 = [v6 vpArray];
      [(SSRVoiceProfileStorePrefs *)self saveKnownUserVoiceProfiles:vpArray2];
    }

    else
    {
      v18 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v22 = "[SSRVoiceProfileStorePrefs applyContentsToVoiceProfileStorePrefs:]";
        _os_log_error_impl(&dword_225E12000, v18, OS_LOG_TYPE_ERROR, "%s Empty known users, not restoring", buf, 0xCu);
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)getAllContentsOfVoiceProfileStorePrefs
{
  v22 = *MEMORY[0x277D85DE8];
  CFPreferencesAppSynchronize(@"com.apple.speakerrecognition");
  loadKnownUserVoiceProfiles = [(SSRVoiceProfileStorePrefs *)self loadKnownUserVoiceProfiles];
  if (loadKnownUserVoiceProfiles)
  {
    getVoiceProfileStoreVersion = [(SSRVoiceProfileStorePrefs *)self getVoiceProfileStoreVersion];
    v5 = [SSRVoiceProfileStoreData alloc];
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:getVoiceProfileStoreVersion];
    v7 = [(SSRVoiceProfileStoreData *)v5 initWithVoiceProfileArray:loadKnownUserVoiceProfiles withVersion:v6];

    v17 = 0;
    v8 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v7 requiringSecureCoding:1 error:&v17];
    v9 = v17;
    if (v9 || !v8)
    {
      v12 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        v15 = v12;
        localizedDescription = [v9 localizedDescription];
        *buf = 136315394;
        v19 = "[SSRVoiceProfileStorePrefs getAllContentsOfVoiceProfileStorePrefs]";
        v20 = 2112;
        v21 = localizedDescription;
        _os_log_error_impl(&dword_225E12000, v15, OS_LOG_TYPE_ERROR, "%s Failed to serialize dict with err %@", buf, 0x16u);
      }

      v10 = 0;
    }

    else
    {
      v10 = v8;
    }
  }

  else
  {
    v11 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v19 = "[SSRVoiceProfileStorePrefs getAllContentsOfVoiceProfileStorePrefs]";
      _os_log_error_impl(&dword_225E12000, v11, OS_LOG_TYPE_ERROR, "%s Empty known users", buf, 0xCu);
    }

    v10 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

- (int64_t)getVoiceProfileStoreVersion
{
  CFPreferencesAppSynchronize(@"com.apple.speakerrecognition");
  v2 = CFPreferencesCopyAppValue(@"Voice Profile Store Version", @"com.apple.speakerrecognition");
  v3 = v2;
  if (v2)
  {
    unsignedIntegerValue = [v2 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = -1;
  }

  return unsignedIntegerValue;
}

- (id)loadEnrollmentSamplingMetaDataDict
{
  CFPreferencesAppSynchronize(@"com.apple.speakerrecognition");
  v2 = CFPreferencesCopyAppValue(@"Enrollment Sampling Meta Data", @"com.apple.speakerrecognition");

  return v2;
}

- (id)loadRequestIdsToAudioIdsMapping
{
  CFPreferencesAppSynchronize(@"com.apple.speakerrecognition");
  v2 = CFPreferencesCopyAppValue(@"requestId to audioId mapping", @"com.apple.speakerrecognition");

  return v2;
}

- (id)loadKnownUserVoiceProfiles
{
  CFPreferencesAppSynchronize(@"com.apple.speakerrecognition");
  v2 = CFPreferencesCopyAppValue(@"Known User Voice Profiles", @"com.apple.speakerrecognition");

  return v2;
}

- (void)saveRequestIdsToAudioIdsMapping:(id)mapping
{
  value = mapping;
  CFPreferencesAppSynchronize(@"com.apple.speakerrecognition");
  CFPreferencesSetAppValue(@"requestId to audioId mapping", value, @"com.apple.speakerrecognition");
}

- (void)setVoiceProfileStoreVersion:(unint64_t)version
{
  CFPreferencesAppSynchronize(@"com.apple.speakerrecognition");
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:version];
  CFPreferencesSetAppValue(@"Voice Profile Store Version", v4, @"com.apple.speakerrecognition");
}

- (void)saveEnrollmentSamplingMetaDataDict:(id)dict
{
  value = dict;
  CFPreferencesAppSynchronize(@"com.apple.speakerrecognition");
  CFPreferencesSetAppValue(@"Enrollment Sampling Meta Data", value, @"com.apple.speakerrecognition");
}

- (void)saveKnownUserVoiceProfiles:(id)profiles
{
  value = profiles;
  CFPreferencesAppSynchronize(@"com.apple.speakerrecognition");
  CFPreferencesSetAppValue(@"Known User Voice Profiles", value, @"com.apple.speakerrecognition");
}

+ (id)sharedStorePrefs
{
  if (sharedStorePrefs_onceToken != -1)
  {
    dispatch_once(&sharedStorePrefs_onceToken, &__block_literal_global_8961);
  }

  v3 = sharedStorePrefs_sharedStorePrefs;

  return v3;
}

uint64_t __45__SSRVoiceProfileStorePrefs_sharedStorePrefs__block_invoke()
{
  v0 = objc_alloc_init(SSRVoiceProfileStorePrefs);
  v1 = sharedStorePrefs_sharedStorePrefs;
  sharedStorePrefs_sharedStorePrefs = v0;

  return SSRLogInitIfNeeded();
}

@end