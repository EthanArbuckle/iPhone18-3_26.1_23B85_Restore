@interface VUIUpsellOnExitPolicy
- (VUIUpsellOnExitPolicy)initWithDictionary:(id)dictionary;
@end

@implementation VUIUpsellOnExitPolicy

- (VUIUpsellOnExitPolicy)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = VUIUpsellOnExitPolicy;
  v5 = [(VUIUpsellOnExitPolicy *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"displayPolicy"];
    v7 = [dictionaryCopy objectForKey:@"rateLimitPolicies"];
    rateLimitPolicies = v5->_rateLimitPolicies;
    v5->_rateLimitPolicies = v7;

    v9 = [dictionaryCopy objectForKey:@"showExitUpsell"];
    v5->_showUpsell = [v9 BOOLValue];

    if (v6 && v5->_rateLimitPolicies)
    {
      v10 = [v6 objectForKey:@"playbackInSeconds"];
      v11 = [v6 objectForKey:@"playbackPercentage"];
      v12 = v11;
      if (v11 | v10)
      {
        if (v11)
        {
          v5->_thresholdValueType = 0;
          p_playbackThreshold = &v5->_playbackThreshold;
          v14 = v12;
        }

        else
        {
          v5->_thresholdValueType = 1;
          p_playbackThreshold = &v5->_playbackThreshold;
          v14 = v10;
        }

        objc_storeStrong(p_playbackThreshold, v14);
      }

      else
      {
        v5->_showUpsell = 0;
      }
    }

    else
    {
      v5->_showUpsell = 0;
    }
  }

  return v5;
}

@end