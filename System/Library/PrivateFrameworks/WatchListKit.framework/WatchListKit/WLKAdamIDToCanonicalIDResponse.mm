@interface WLKAdamIDToCanonicalIDResponse
- (WLKAdamIDToCanonicalIDResponse)initWithDictionary:(id)dictionary;
@end

@implementation WLKAdamIDToCanonicalIDResponse

- (WLKAdamIDToCanonicalIDResponse)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = WLKAdamIDToCanonicalIDResponse;
  v5 = [(WLKAdamIDToCanonicalIDResponse *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy wlk_stringForKey:@"id"];
    canonicalID = v5->_canonicalID;
    v5->_canonicalID = v6;

    v8 = [dictionaryCopy wlk_stringForKey:@"showId"];
    showID = v5->_showID;
    v5->_showID = v8;

    v10 = [dictionaryCopy wlk_stringForKey:@"url"];
    url = v5->_url;
    v5->_url = v10;

    v12 = [dictionaryCopy wlk_stringForKey:@"type"];
    type = v5->_type;
    v5->_type = v12;
  }

  return v5;
}

@end