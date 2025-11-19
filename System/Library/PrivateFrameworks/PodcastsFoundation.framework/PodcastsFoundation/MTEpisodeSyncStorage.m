@interface MTEpisodeSyncStorage
- (NSString)podcastsDomainVersion;
- (id)feedUrlFromModernKey:(id)a3;
- (id)importContext;
- (id)versionForKey:(id)a3;
- (void)resetVersionForAllFeedUrls;
- (void)resetVersionForFeedUrl:(id)a3;
- (void)setPodcastsDomainVersion:(id)a3;
- (void)setVersion:(id)a3 forKey:(id)a4;
@end

@implementation MTEpisodeSyncStorage

- (id)importContext
{
  v2 = +[MTDB sharedInstance];
  v3 = [v2 importContext];

  return v3;
}

- (NSString)podcastsDomainVersion
{
  v2 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
  v3 = [v2 podcastsDomainVersion];

  return v3;
}

- (void)setPodcastsDomainVersion:(id)a3
{
  v3 = a3;
  v4 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
  [v4 setPodcastsDomainVersion:v3];
}

- (id)versionForKey:(id)a3
{
  v3 = MEMORY[0x1E695E000];
  v4 = a3;
  v5 = [v3 standardUserDefaults];
  v6 = [v5 stringForKey:v4];

  return v6;
}

- (void)setVersion:(id)a3 forKey:(id)a4
{
  v5 = MEMORY[0x1E695E000];
  v6 = a4;
  v7 = a3;
  v8 = [v5 standardUserDefaults];
  [v8 setObject:v7 forKey:v6];
}

- (void)resetVersionForFeedUrl:(id)a3
{
  v6 = a3;
  if ([v6 length])
  {
    v4 = [MEMORY[0x1E695E000] standardUserDefaults];
    v5 = [(MTEpisodeSyncStorage *)self modernKeyFromFeedUrl:v6];
    [v4 setObject:0 forKey:v5];
  }
}

- (void)resetVersionForAllFeedUrls
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [v2 dictionaryRepresentation];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 hasPrefix:@"playState:"])
        {
          [v2 setObject:0 forKey:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)feedUrlFromModernKey:(id)a3
{
  v3 = a3;
  v4 = [v3 stringByReplacingCharactersInRange:0 withString:{objc_msgSend(@"playState:", "length"), &stru_1F548B930}];

  return v4;
}

@end