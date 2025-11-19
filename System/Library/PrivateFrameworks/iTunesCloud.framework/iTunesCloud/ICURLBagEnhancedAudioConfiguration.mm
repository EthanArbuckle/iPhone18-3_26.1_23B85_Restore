@interface ICURLBagEnhancedAudioConfiguration
- (ICURLBagEnhancedAudioConfiguration)initWithBagEnhancedAudioDictionary:(id)a3;
- (NSArray)prefetchSKDs;
- (id)_urlForBagEnhancedAudioKey:(id)a3;
@end

@implementation ICURLBagEnhancedAudioConfiguration

- (NSArray)prefetchSKDs
{
  v2 = [(NSDictionary *)self->_bagEnhancedAudioDictionary objectForKey:@"hls-prefetch-skd-urls"];
  if (_NSIsNSArray())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_urlForBagEnhancedAudioKey:(id)a3
{
  v3 = [(NSDictionary *)self->_bagEnhancedAudioDictionary objectForKey:a3];
  if (_NSIsNSString())
  {
    v4 = [MEMORY[0x1E695DFF8] URLWithString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (ICURLBagEnhancedAudioConfiguration)initWithBagEnhancedAudioDictionary:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ICURLBagEnhancedAudioConfiguration;
  v6 = [(ICURLBagEnhancedAudioConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bagEnhancedAudioDictionary, a3);
  }

  return v7;
}

@end