@interface WLKEvent
- (WLKEvent)initWithCoder:(id)coder;
- (WLKEvent)initWithDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WLKEvent

- (WLKEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v25.receiver = self;
  v25.super_class = WLKEvent;
  v5 = [(WLKEvent *)&v25 init];
  if (v5)
  {
    v6 = [dictionaryCopy copy];
    dictionary = v5->_dictionary;
    v5->_dictionary = v6;

    v8 = [dictionaryCopy wlk_stringForKey:@"canonicalId"];
    v9 = [v8 copy];
    canonicalID = v5->_canonicalID;
    v5->_canonicalID = v9;

    v11 = [dictionaryCopy wlk_stringForKey:@"nowPlayingPassThrough"];
    v12 = [v11 copy];
    nowPlayingPassThrough = v5->_nowPlayingPassThrough;
    v5->_nowPlayingPassThrough = v12;

    v14 = [dictionaryCopy wlk_stringForKey:@"url"];
    v15 = [v14 copy];
    url = v5->_url;
    v5->_url = v15;

    v17 = [dictionaryCopy objectForKey:@"type"];
    v5->_contentType = [WLKBasicContentMetadata contentTypeForString:v17];
    v18 = [dictionaryCopy wlk_dictionaryForKey:@"eventTime"];
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

- (WLKEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy allowsKeyedCoding])
  {
    v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_WLKEventCoderKeyJSONDictionary"];
    self = [(WLKEvent *)self initWithDictionary:v5];

    selfCopy = self;
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The coder must allow keyed coding."];
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The coder must allow keyed coding."];
  }

  [coderCopy encodeObject:self->_dictionary forKey:@"_WLKEventCoderKeyJSONDictionary"];
}

@end