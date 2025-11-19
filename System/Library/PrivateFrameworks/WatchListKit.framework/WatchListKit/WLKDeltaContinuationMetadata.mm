@interface WLKDeltaContinuationMetadata
+ (int64_t)_deltaTypeForString:(id)a3;
- (WLKDeltaContinuationMetadata)initWithDictionary:(id)a3 context:(id)a4;
@end

@implementation WLKDeltaContinuationMetadata

- (WLKDeltaContinuationMetadata)initWithDictionary:(id)a3 context:(id)a4
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = WLKDeltaContinuationMetadata;
  v7 = [(WLKContinuationMetadataBase *)&v15 initWithDictionary:v6 context:a4];
  if (v7)
  {
    v8 = [v6 wlk_stringForKey:@"changeType"];
    v7->_deltaType = [objc_opt_class() _deltaTypeForString:v8];
    v9 = [v6 wlk_stringForKey:@"playableUrl"];
    if (v9)
    {
      v10 = [MEMORY[0x277CBEBC0] URLWithString:v9];
      playbackURL = v7->_playbackURL;
      v7->_playbackURL = v10;
    }

    v12 = [v6 wlk_stringForKey:@"adamId"];
    adamID = v7->_adamID;
    v7->_adamID = v12;
  }

  return v7;
}

+ (int64_t)_deltaTypeForString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Add"])
  {
    v4 = 2;
  }

  else
  {
    v4 = [v3 isEqualToString:@"Remove"];
  }

  return v4;
}

@end