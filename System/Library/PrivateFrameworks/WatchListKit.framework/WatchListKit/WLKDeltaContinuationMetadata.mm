@interface WLKDeltaContinuationMetadata
+ (int64_t)_deltaTypeForString:(id)string;
- (WLKDeltaContinuationMetadata)initWithDictionary:(id)dictionary context:(id)context;
@end

@implementation WLKDeltaContinuationMetadata

- (WLKDeltaContinuationMetadata)initWithDictionary:(id)dictionary context:(id)context
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = WLKDeltaContinuationMetadata;
  v7 = [(WLKContinuationMetadataBase *)&v15 initWithDictionary:dictionaryCopy context:context];
  if (v7)
  {
    v8 = [dictionaryCopy wlk_stringForKey:@"changeType"];
    v7->_deltaType = [objc_opt_class() _deltaTypeForString:v8];
    v9 = [dictionaryCopy wlk_stringForKey:@"playableUrl"];
    if (v9)
    {
      v10 = [MEMORY[0x277CBEBC0] URLWithString:v9];
      playbackURL = v7->_playbackURL;
      v7->_playbackURL = v10;
    }

    v12 = [dictionaryCopy wlk_stringForKey:@"adamId"];
    adamID = v7->_adamID;
    v7->_adamID = v12;
  }

  return v7;
}

+ (int64_t)_deltaTypeForString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"Add"])
  {
    v4 = 2;
  }

  else
  {
    v4 = [stringCopy isEqualToString:@"Remove"];
  }

  return v4;
}

@end