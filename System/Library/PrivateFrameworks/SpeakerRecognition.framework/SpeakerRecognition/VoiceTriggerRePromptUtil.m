@interface VoiceTriggerRePromptUtil
+ (id)sharedInstance;
- (BOOL)isRePromptableWithAssistantId:(id)a3;
- (id)initAndLoadImpactedAssistantIdsForRePrompt;
- (id)initAndLoadImpactedAssistantIdsForRePromptWithAsset:(id)a3;
@end

@implementation VoiceTriggerRePromptUtil

- (BOOL)isRePromptableWithAssistantId:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCAC38];
  v5 = a3;
  v6 = [v4 processInfo];
  [v6 systemUptime];
  v8 = v7;

  bloomFilter = self->_bloomFilter;
  v10 = [v5 dataUsingEncoding:4];

  v11 = [(BloomFilter *)bloomFilter contains:v10];
  v12 = [MEMORY[0x277CCAC38] processInfo];
  [v12 systemUptime];
  v14 = v13;

  v15 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136315394;
    v19 = "[VoiceTriggerRePromptUtil isRePromptableWithAssistantId:]";
    v20 = 2050;
    v21 = (v14 - v8) * 1000.0;
    _os_log_impl(&dword_225E12000, v15, OS_LOG_TYPE_DEFAULT, "%s Bloom filter inference to check if ID exists took %{public}.3fms", &v18, 0x16u);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)initAndLoadImpactedAssistantIdsForRePromptWithAsset:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = VoiceTriggerRePromptUtil;
  v5 = [(VoiceTriggerRePromptUtil *)&v25 init];
  if (!v5)
  {
    goto LABEL_15;
  }

  SSRLogInitIfNeeded();
  v6 = [v4 blobVersion];
  if (([v6 isEqualToString:@"1"] & 1) == 0)
  {
    v19 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v27 = "[VoiceTriggerRePromptUtil initAndLoadImpactedAssistantIdsForRePromptWithAsset:]";
      v28 = 2112;
      v29 = v6;
      _os_log_error_impl(&dword_225E12000, v19, OS_LOG_TYPE_ERROR, "%s Unsupported blob version %@", buf, 0x16u);
    }

    goto LABEL_13;
  }

  v7 = [v4 blobName];
  v8 = [v4 resourcePath];
  v9 = [v8 stringByAppendingPathComponent:v7];

  v10 = [MEMORY[0x277CCAA00] defaultManager];
  v11 = [v10 fileExistsAtPath:v9];

  if ((v11 & 1) == 0)
  {
    v20 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v27 = "[VoiceTriggerRePromptUtil initAndLoadImpactedAssistantIdsForRePromptWithAsset:]";
      v28 = 2114;
      v29 = v9;
      _os_log_error_impl(&dword_225E12000, v20, OS_LOG_TYPE_ERROR, "%s Blob file not found at path : %{public}@", buf, 0x16u);
    }

    goto LABEL_12;
  }

  v12 = MEMORY[0x277CCAAC8];
  v13 = objc_opt_class();
  v14 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v9];
  v24 = 0;
  v15 = [v12 unarchivedObjectOfClass:v13 fromData:v14 error:&v24];
  v16 = v24;
  bloomFilter = v5->_bloomFilter;
  v5->_bloomFilter = v15;

  if (!v16)
  {

LABEL_15:
    v21 = v5;
    goto LABEL_16;
  }

  v18 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v27 = "[VoiceTriggerRePromptUtil initAndLoadImpactedAssistantIdsForRePromptWithAsset:]";
    v28 = 2114;
    v29 = v16;
    _os_log_error_impl(&dword_225E12000, v18, OS_LOG_TYPE_ERROR, "%s Failed to unarchive blob with err: %{public}@", buf, 0x16u);
  }

LABEL_12:
LABEL_13:

  v21 = 0;
LABEL_16:

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

- (id)initAndLoadImpactedAssistantIdsForRePrompt
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(SSRMobileAssetProvider);
  v4 = [(SSRMobileAssetProvider *)v3 installedAssetOfType:8 forLanguageCode:0];
  if (v4)
  {
    self = [(VoiceTriggerRePromptUtil *)self initAndLoadImpactedAssistantIdsForRePromptWithAsset:v4];
    v5 = self;
  }

  else
  {
    v6 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v9 = 136315138;
      v10 = "[VoiceTriggerRePromptUtil initAndLoadImpactedAssistantIdsForRePrompt]";
      _os_log_error_impl(&dword_225E12000, v6, OS_LOG_TYPE_ERROR, "%s No asset found, nothing to do", &v9, 0xCu);
    }

    v5 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_3936 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_3936, &__block_literal_global_3937);
  }

  v3 = sharedInstance_vtRepromptUtil;

  return v3;
}

uint64_t __42__VoiceTriggerRePromptUtil_sharedInstance__block_invoke()
{
  sharedInstance_vtRepromptUtil = [[VoiceTriggerRePromptUtil alloc] initAndLoadImpactedAssistantIdsForRePrompt];

  return MEMORY[0x2821F96F8]();
}

@end