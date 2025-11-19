@interface WLKEvent
- (WLKEvent)initWithCoder:(id)a3;
- (WLKEvent)initWithDictionary:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WLKEvent

- (WLKEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = WLKEvent;
  v5 = [(WLKEvent *)&v25 init];
  if (v5)
  {
    v6 = [v4 copy];
    dictionary = v5->_dictionary;
    v5->_dictionary = v6;

    v8 = [v4 wlk_stringForKey:@"canonicalId"];
    v9 = [v8 copy];
    canonicalID = v5->_canonicalID;
    v5->_canonicalID = v9;

    v11 = [v4 wlk_stringForKey:@"nowPlayingPassThrough"];
    v12 = [v11 copy];
    nowPlayingPassThrough = v5->_nowPlayingPassThrough;
    v5->_nowPlayingPassThrough = v12;

    v14 = [v4 wlk_stringForKey:@"url"];
    v15 = [v14 copy];
    url = v5->_url;
    v5->_url = v15;

    v17 = [v4 objectForKey:@"type"];
    v5->_contentType = [WLKBasicContentMetadata contentTypeForString:v17];
    v18 = [v4 wlk_dictionaryForKey:@"eventTime"];
    v19 = [v18 wlk_dictionaryForKey:@"tuneInTime"];
    v20 = [v19 wlk_dateFromMillisecondsSince1970ForKey:@"startTime"];
    startDate = v5->_startDate;
    v5->_startDate = v20;

    v22 = [v19 wlk_dateFromMillisecondsSince1970ForKey:@"endTime"];
    endDate = v5->_endDate;
    v5->_endDate = v22;
  }

  return v5;
}

- (WLKEvent)initWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 allowsKeyedCoding])
  {
    v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_WLKEventCoderKeyJSONDictionary"];
    self = [(WLKEvent *)self initWithDictionary:v5];

    v6 = self;
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The coder must allow keyed coding."];
    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The coder must allow keyed coding."];
  }

  [v4 encodeObject:self->_dictionary forKey:@"_WLKEventCoderKeyJSONDictionary"];
}

@end