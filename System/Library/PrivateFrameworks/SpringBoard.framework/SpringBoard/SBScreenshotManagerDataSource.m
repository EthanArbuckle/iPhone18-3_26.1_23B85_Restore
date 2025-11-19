@interface SBScreenshotManagerDataSource
- (id)screenshotManagerScreensToScreenshot:(id)a3;
@end

@implementation SBScreenshotManagerDataSource

- (id)screenshotManagerScreensToScreenshot:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
  v4 = [v3 policyAggregator];
  v10 = 0;
  v5 = [v4 allowsCapability:19 explanation:&v10];
  v6 = v10;

  if (v5)
  {
    v7 = [MEMORY[0x277D759A0] mainScreen];
    v11[0] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  }

  else
  {
    v7 = SBLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(SBScreenshotManagerDataSource *)v6 screenshotManagerScreensToScreenshot:v7];
    }

    v8 = MEMORY[0x277CBEBF8];
  }

  return v8;
}

- (void)screenshotManagerScreensToScreenshot:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "Unable to snapshot screens for reason: %{public}@", &v2, 0xCu);
}

@end