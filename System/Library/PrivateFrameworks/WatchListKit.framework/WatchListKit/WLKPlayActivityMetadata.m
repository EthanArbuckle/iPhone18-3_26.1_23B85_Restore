@interface WLKPlayActivityMetadata
- (WLKPlayActivityMetadata)initWithDictionary:(id)a3;
- (WLKPlayActivityMetadata)initWithKey:(id)a3 dictionary:(id)a4;
@end

@implementation WLKPlayActivityMetadata

- (WLKPlayActivityMetadata)initWithKey:(id)a3 dictionary:(id)a4
{
  v6 = a4;
  if ([a3 rangeOfString:@":" options:6] == 0x7FFFFFFFFFFFFFFFLL)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Invalid key provided"];
    v7 = 0;
  }

  else
  {
    v28.receiver = self;
    v28.super_class = WLKPlayActivityMetadata;
    v8 = [(WLKPlayActivityMetadata *)&v28 init];
    if (v8)
    {
      v9 = [v6 wlk_stringForKey:@"externalShowId"];
      externalShowID = v8->_externalShowID;
      v8->_externalShowID = v9;

      v11 = [v6 wlk_stringForKey:@"canonicalId"];
      canonicalID = v8->_canonicalID;
      v8->_canonicalID = v11;

      v13 = [v6 wlk_stringForKey:@"canonicalShowId"];
      canonicalShowID = v8->_canonicalShowID;
      v8->_canonicalShowID = v13;

      v15 = [v6 wlk_stringForKey:@"internalLegId"];
      internalLegID = v8->_internalLegID;
      v8->_internalLegID = v15;

      v17 = [v6 wlk_numberForKey:@"isShowClosed"];
      isShowClosed = v8->_isShowClosed;
      v8->_isShowClosed = v17;

      v19 = [v6 wlk_numberForKey:@"isCurrent"];
      isCurrentEpisode = v8->_isCurrentEpisode;
      v8->_isCurrentEpisode = v19;

      v21 = [v6 wlk_stringForKey:@"brandId"];
      overrideChannelID = v8->_overrideChannelID;
      v8->_overrideChannelID = v21;

      v23 = [v6 wlk_arrayForKey:@"siriActionsCategories"];
      v24 = [v23 copy];
      siriActionsCategories = v8->_siriActionsCategories;
      v8->_siriActionsCategories = v24;

      v26 = [v6 objectForKey:@"contentType"];
      v8->_contentType = [WLKBasicContentMetadata contentTypeForString:v26];
    }

    self = v8;
    v7 = self;
  }

  return v7;
}

- (WLKPlayActivityMetadata)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = WLKPlayActivityMetadata;
  v5 = [(WLKPlayActivityMetadata *)&v14 init];
  if (v5)
  {
    v6 = [v4 wlk_stringForKey:@"canonicalId"];
    canonicalID = v5->_canonicalID;
    v5->_canonicalID = v6;

    v8 = [v4 wlk_stringForKey:@"url"];
    url = v5->_url;
    v5->_url = v8;

    v10 = [v4 wlk_stringForKey:@"nowPlayingPassThrough"];
    nowPlayingPassThrough = v5->_nowPlayingPassThrough;
    v5->_nowPlayingPassThrough = v10;

    v12 = [v4 objectForKey:@"type"];
    v5->_contentType = [WLKBasicContentMetadata contentTypeForString:v12];
  }

  return v5;
}

@end