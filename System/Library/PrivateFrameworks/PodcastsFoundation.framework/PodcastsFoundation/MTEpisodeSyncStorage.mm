@interface MTEpisodeSyncStorage
- (NSString)podcastsDomainVersion;
- (id)feedUrlFromModernKey:(id)key;
- (id)importContext;
- (id)versionForKey:(id)key;
- (void)resetVersionForAllFeedUrls;
- (void)resetVersionForFeedUrl:(id)url;
- (void)setPodcastsDomainVersion:(id)version;
- (void)setVersion:(id)version forKey:(id)key;
@end

@implementation MTEpisodeSyncStorage

- (id)importContext
{
  v2 = +[MTDB sharedInstance];
  importContext = [v2 importContext];

  return importContext;
}

- (NSString)podcastsDomainVersion
{
  v2 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
  podcastsDomainVersion = [v2 podcastsDomainVersion];

  return podcastsDomainVersion;
}

- (void)setPodcastsDomainVersion:(id)version
{
  versionCopy = version;
  v4 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
  [v4 setPodcastsDomainVersion:versionCopy];
}

- (id)versionForKey:(id)key
{
  v3 = MEMORY[0x1E695E000];
  keyCopy = key;
  standardUserDefaults = [v3 standardUserDefaults];
  v6 = [standardUserDefaults stringForKey:keyCopy];

  return v6;
}

- (void)setVersion:(id)version forKey:(id)key
{
  v5 = MEMORY[0x1E695E000];
  keyCopy = key;
  versionCopy = version;
  standardUserDefaults = [v5 standardUserDefaults];
  [standardUserDefaults setObject:versionCopy forKey:keyCopy];
}

- (void)resetVersionForFeedUrl:(id)url
{
  urlCopy = url;
  if ([urlCopy length])
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v5 = [(MTEpisodeSyncStorage *)self modernKeyFromFeedUrl:urlCopy];
    [standardUserDefaults setObject:0 forKey:v5];
  }
}

- (void)resetVersionForAllFeedUrls
{
  v15 = *MEMORY[0x1E69E9840];
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  dictionaryRepresentation = [standardUserDefaults dictionaryRepresentation];
  v4 = [dictionaryRepresentation countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(dictionaryRepresentation);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 hasPrefix:@"playState:"])
        {
          [standardUserDefaults setObject:0 forKey:v8];
        }
      }

      v5 = [dictionaryRepresentation countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)feedUrlFromModernKey:(id)key
{
  keyCopy = key;
  v4 = [keyCopy stringByReplacingCharactersInRange:0 withString:{objc_msgSend(@"playState:", "length"), &stru_1F548B930}];

  return v4;
}

@end