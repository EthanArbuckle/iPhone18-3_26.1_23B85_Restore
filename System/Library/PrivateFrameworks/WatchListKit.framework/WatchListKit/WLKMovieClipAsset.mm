@interface WLKMovieClipAsset
+ (id)movieClipAssetsWithArray:(id)array;
- (NSString)durationString;
- (WLKMovieClipAsset)init;
- (WLKMovieClipAsset)initWithDictionary:(id)dictionary;
- (id)_init;
@end

@implementation WLKMovieClipAsset

+ (id)movieClipAssetsWithArray:(id)array
{
  v22 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  if (arrayCopy)
  {
    array = [MEMORY[0x277CBEB18] array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = arrayCopy;
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          if (v10)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v11 = v10;
              v12 = [WLKMovieClipAsset alloc];
              v13 = [(WLKMovieClipAsset *)v12 initWithDictionary:v11, v17];

              [array addObject:v13];
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }

    v14 = [array copy];
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (WLKMovieClipAsset)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    _init = [(WLKMovieClipAsset *)self _init];
    if (_init)
    {
      v6 = [dictionaryCopy wlk_numberForKey:@"durationInMilliseconds"];
      _init[1] = [v6 unsignedIntegerValue] / 0x3E8uLL;

      v7 = [dictionaryCopy wlk_stringForKey:@"flavor"];
      v8 = [v7 copy];
      v9 = _init[2];
      _init[2] = v8;

      v10 = [dictionaryCopy wlk_stringForKey:@"url"];
      v11 = [v10 copy];
      v12 = _init[3];
      _init[3] = v11;
    }

    self = _init;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = WLKMovieClipAsset;
  return [(WLKMovieClipAsset *)&v3 init];
}

- (WLKMovieClipAsset)init
{
  [MEMORY[0x277CBEAD8] raise:@"WLKMovieClipAsset" format:@"-init is not supported. Use -initWithDictionary:"];

  return 0;
}

- (NSString)durationString
{
  0x3C = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", self->_duration / 0x3C];
  if (self->_duration % 0x3C >= 0xA)
  {
    v4 = @"%lu";
  }

  else
  {
    v4 = @"0%lu";
  }

  0x3C2 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v4 validFormatSpecifiers:@"%lu" error:0, self->_duration % 0x3C];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", 0x3C, 0x3C2];

  return v6;
}

@end