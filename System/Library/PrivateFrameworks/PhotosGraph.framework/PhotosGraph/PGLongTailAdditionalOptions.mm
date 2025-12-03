@interface PGLongTailAdditionalOptions
- (PGLongTailAdditionalOptions)init;
- (PGLongTailAdditionalOptions)initWithDictionary:(id)dictionary;
@end

@implementation PGLongTailAdditionalOptions

- (PGLongTailAdditionalOptions)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [(PGLongTailAdditionalOptions *)self init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"qualityPercentile"];
    v7 = v6;
    if (v6 && ([v6 integerValue] & 0x8000000000000000) == 0)
    {
      v5->_qualityPercentile = [v7 unsignedIntegerValue];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"verifiedPersonScore"];
    v9 = v8;
    if (v8 && ([v8 integerValue] & 0x8000000000000000) == 0)
    {
      v5->_verifiedPersonScoreValue = [v9 unsignedIntegerValue];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"topTierAestheticScore"];
    v11 = v10;
    if (v10 && ([v10 integerValue] & 0x8000000000000000) == 0)
    {
      v5->_topTierAestheticScoreValue = [v11 unsignedIntegerValue];
    }
  }

  return v5;
}

- (PGLongTailAdditionalOptions)init
{
  v3.receiver = self;
  v3.super_class = PGLongTailAdditionalOptions;
  result = [(PGLongTailAdditionalOptions *)&v3 init];
  if (result)
  {
    *&result->_qualityPercentile = xmmword_22F78C080;
    result->_topTierAestheticScoreValue = 3;
  }

  return result;
}

@end