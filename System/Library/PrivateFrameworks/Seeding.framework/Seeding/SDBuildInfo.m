@interface SDBuildInfo
+ (BOOL)isFeedbackAssistantAvailable;
+ (void)isFeedbackAssistantAvailable;
@end

@implementation SDBuildInfo

+ (BOOL)isFeedbackAssistantAvailable
{
  v2 = [MEMORY[0x277CBEBC0] URLWithString:@"applefeedback://"];
  v9 = 0;
  v3 = [objc_alloc(MEMORY[0x277CC1E98]) initWithURL:v2 error:&v9];
  v4 = v9;
  if (v4)
  {
    v5 = +[SDSeedingLogging fwHandle];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[(SDBuildInfo *)v4];
    }

    v6 = 0;
  }

  else
  {
    if (!v3)
    {
      v6 = 0;
      goto LABEL_8;
    }

    v5 = [v3 bundleRecord];
    v7 = [v5 bundleIdentifier];
    v6 = [v7 isEqual:@"com.apple.appleseed.FeedbackAssistant"];
  }

LABEL_8:
  return v6;
}

+ (void)isFeedbackAssistantAvailable
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_22E41E000, a2, OS_LOG_TYPE_ERROR, "Error checking FBA url scheme %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end