@interface WLKPlayActivityMetadata
- (WLKPlayActivityMetadata)initWithDictionary:(id)dictionary;
- (WLKPlayActivityMetadata)initWithKey:(id)key dictionary:(id)dictionary;
@end

@implementation WLKPlayActivityMetadata

- (WLKPlayActivityMetadata)initWithKey:(id)key dictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if ([key rangeOfString:@":" options:6] == 0x7FFFFFFFFFFFFFFFLL)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Invalid key provided"];
    selfCopy = 0;
  }

  else
  {
    v28.receiver = self;
    v28.super_class = WLKPlayActivityMetadata;
    v8 = [(WLKPlayActivityMetadata *)&v28 init];
    if (v8)
    {
      v9 = [dictionaryCopy wlk_stringForKey:@"externalShowId"];
      externalShowID = v8->_externalShowID;
      v8->_externalShowID = v9;

      v11 = [dictionaryCopy wlk_stringForKey:@"canonicalId"];
      canonicalID = v8->_canonicalID;
      v8->_canonicalID = v11;

      v13 = [dictionaryCopy wlk_stringForKey:@"canonicalShowId"];
      canonicalShowID = v8->_canonicalShowID;
      v8->_canonicalShowID = v13;

      v15 = [dictionaryCopy wlk_stringForKey:@"internalLegId"];
      internalLegID = v8->_internalLegID;
      v8->_internalLegID = v15;

      v17 = [dictionaryCopy wlk_numberForKey:@"isShowClosed"];
      isShowClosed = v8->_isShowClosed;
      v8->_isShowClosed = v17;

      v19 = [dictionaryCopy wlk_numberForKey:@"isCurrent"];
      isCurrentEpisode = v8->_isCurrentEpisode;
      v8->_isCurrentEpisode = v19;

      v21 = [dictionaryCopy wlk_stringForKey:@"brandId"];
      overrideChannelID = v8->_overrideChannelID;
      v8->_overrideChannelID = v21;

      v23 = [dictionaryCopy wlk_arrayForKey:@"siriActionsCategories"];
      v24 = [v23 copy];
      siriActionsCategories = v8->_siriActionsCategories;
      v8->_siriActionsCategories = v24;

      v26 = [dictionaryCopy objectForKey:@"contentType"];
      v8->_contentType = [WLKBasicContentMetadata contentTypeForString:v26];
    }

    self = v8;
    selfCopy = self;
  }

  return selfCopy;
}

- (WLKPlayActivityMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = WLKPlayActivityMetadata;
  v5 = [(WLKPlayActivityMetadata *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy wlk_stringForKey:@"canonicalId"];
    canonicalID = v5->_canonicalID;
    v5->_canonicalID = v6;

    v8 = [dictionaryCopy wlk_stringForKey:@"url"];
    url = v5->_url;
    v5->_url = v8;

    v10 = [dictionaryCopy wlk_stringForKey:@"nowPlayingPassThrough"];
    nowPlayingPassThrough = v5->_nowPlayingPassThrough;
    v5->_nowPlayingPassThrough = v10;

    v12 = [dictionaryCopy objectForKey:@"type"];
    v5->_contentType = [WLKBasicContentMetadata contentTypeForString:v12];
  }

  return v5;
}

@end