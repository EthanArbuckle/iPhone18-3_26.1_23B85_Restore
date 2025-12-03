@interface NMTMetricsUtil
+ (id)_downloadableEpisodeUUIDsURL;
+ (id)downloadableEpisodeUUIDs;
+ (void)setDownloadableEpisodeUUIDs:(id)ds;
@end

@implementation NMTMetricsUtil

+ (void)setDownloadableEpisodeUUIDs:(id)ds
{
  dsCopy = ds;
  _downloadableEpisodeUUIDsURL = [self _downloadableEpisodeUUIDsURL];
  [dsCopy writeToURL:_downloadableEpisodeUUIDsURL atomically:1];

  v6 = _MTLogCategoryDefault();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = [dsCopy count];
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Did set %lu metrics downloadable episode UUIDs", &v7, 0xCu);
  }
}

+ (id)downloadableEpisodeUUIDs
{
  v3 = [NSArray alloc];
  _downloadableEpisodeUUIDsURL = [self _downloadableEpisodeUUIDsURL];
  v5 = [v3 initWithContentsOfURL:_downloadableEpisodeUUIDsURL];

  v6 = _MTLogCategoryDefault();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = [v5 count];
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Did fetch %lu metrics downloadable episode UUIDs", &v8, 0xCu);
  }

  return v5;
}

+ (id)_downloadableEpisodeUUIDsURL
{
  v2 = +[MTConstants sharedDocumentsDirectory];
  v3 = [v2 URLByAppendingPathComponent:@"metricsDownloadableEpisodeUUIDs"];

  return v3;
}

@end