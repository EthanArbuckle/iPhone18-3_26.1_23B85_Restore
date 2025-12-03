@interface WLKBrowseItem
+ (id)browseItemsWithDictionaries:(id)dictionaries context:(id)context;
- (WLKBrowseItem)initWithDictionary:(id)dictionary context:(id)context;
- (id)preferredComingSoonInfo;
@end

@implementation WLKBrowseItem

+ (id)browseItemsWithDictionaries:(id)dictionaries context:(id)context
{
  v26 = *MEMORY[0x277D85DE8];
  dictionariesCopy = dictionaries;
  contextCopy = context;
  v7 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = dictionariesCopy;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      v12 = 0;
      do
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * v12);
        v14 = objc_autoreleasePoolPush();
        v15 = [WLKBrowseItem alloc];
        v16 = [(WLKBrowseItem *)v15 initWithDictionary:v13 context:contextCopy, v21];
        if (v16)
        {
          [v7 addObject:v16];
        }

        objc_autoreleasePoolPop(v14);
        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  if ([v7 count])
  {
    v17 = v7;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  v19 = *MEMORY[0x277D85DE8];
  return v17;
}

- (WLKBrowseItem)initWithDictionary:(id)dictionary context:(id)context
{
  dictionaryCopy = dictionary;
  contextCopy = context;
  if (dictionaryCopy)
  {
    v24.receiver = self;
    v24.super_class = WLKBrowseItem;
    v8 = [(WLKBrowseItem *)&v24 init];
    if (v8)
    {
      v9 = [[WLKBasicContentMetadata alloc] initWithDictionary:dictionaryCopy];
      content = v8->_content;
      v8->_content = v9;

      v11 = [dictionaryCopy wlk_arrayForKey:@"playables"];
      if (v11)
      {
        v12 = [WLKPlayable playablesWithDictionaries:v11 context:contextCopy];
        playables = v8->_playables;
        v8->_playables = v12;
      }

      v14 = [dictionaryCopy wlk_dictionaryForKey:@"currentEpisode"];
      if (v14)
      {
        v15 = [[WLKBrowseItem alloc] initWithDictionary:v14 context:contextCopy];
        currentEpisode = v8->_currentEpisode;
        v8->_currentEpisode = v15;
      }

      v8->_watchlisted = [dictionaryCopy wlk_BOOLForKey:@"isWatchlisted" defaultValue:0];
      v8->_watchlistable = [dictionaryCopy wlk_BOOLForKey:@"isWatchlistable" defaultValue:0];
      v17 = [dictionaryCopy wlk_arrayForKey:@"availableChannels"];
      v18 = [WLKComingSoonInfo comingSoonItemsWithDictionaries:v17];
      v19 = v18;
      if (v18)
      {
        firstObject = [v18 firstObject];
        contentComingSoonInfo = v8->_contentComingSoonInfo;
        v8->_contentComingSoonInfo = firstObject;
      }
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)preferredComingSoonInfo
{
  v21 = *MEMORY[0x277D85DE8];
  contentComingSoonInfo = self->_contentComingSoonInfo;
  if (contentComingSoonInfo)
  {
    v3 = contentComingSoonInfo;
  }

  else
  {
    playables = [(WLKBrowseItem *)self playables];
    if (![playables count])
    {
      currentEpisode = [(WLKBrowseItem *)self currentEpisode];
      playables2 = [currentEpisode playables];

      playables = playables2;
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = playables;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          comingSoonInfo = [*(*(&v16 + 1) + 8 * i) comingSoonInfo];
          if (comingSoonInfo)
          {
            v3 = comingSoonInfo;
            goto LABEL_15;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v3 = 0;
LABEL_15:
  }

  v14 = *MEMORY[0x277D85DE8];

  return v3;
}

@end