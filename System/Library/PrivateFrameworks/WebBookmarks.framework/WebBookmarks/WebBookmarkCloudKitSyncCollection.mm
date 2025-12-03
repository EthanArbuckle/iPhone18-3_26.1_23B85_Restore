@interface WebBookmarkCloudKitSyncCollection
- (void)dealloc;
@end

@implementation WebBookmarkCloudKitSyncCollection

- (void)dealloc
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v9 = "[WebBookmarkCloudKitSyncCollection dealloc]";
    v10 = 2114;
    selfCopy = self;
    _os_log_impl(&dword_272C20000, v3, OS_LOG_TYPE_INFO, "-> %s(database: %{public}@)", buf, 0x16u);
  }

  v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v9 = "[WebBookmarkCloudKitSyncCollection dealloc]";
    _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_INFO, "@@ %s: Unlocking bookmark database", buf, 0xCu);
  }

  [objc_opt_class() unlockSyncAsynchronously];
  v5 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v9 = "[WebBookmarkCloudKitSyncCollection dealloc]";
    _os_log_impl(&dword_272C20000, v5, OS_LOG_TYPE_INFO, "<- %s", buf, 0xCu);
  }

  v7.receiver = self;
  v7.super_class = WebBookmarkCloudKitSyncCollection;
  [(WebBookmarkCollection *)&v7 dealloc];
  v6 = *MEMORY[0x277D85DE8];
}

@end