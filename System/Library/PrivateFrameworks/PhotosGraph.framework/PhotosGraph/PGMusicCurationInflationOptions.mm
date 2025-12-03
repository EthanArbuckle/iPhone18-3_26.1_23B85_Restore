@interface PGMusicCurationInflationOptions
+ (id)stringFromInflationActionSource:(int64_t)source;
- (PGMusicCurationInflationOptions)initWithInflationActionSource:(int64_t)source;
- (PGMusicCurationInflationOptions)initWithRequestOptionsDictionary:(id)dictionary inflationActionSource:(int64_t)source;
@end

@implementation PGMusicCurationInflationOptions

- (PGMusicCurationInflationOptions)initWithRequestOptionsDictionary:(id)dictionary inflationActionSource:(int64_t)source
{
  dictionaryCopy = dictionary;
  v7 = [(PGMusicCurationInflationOptions *)self initWithInflationActionSource:source];
  if (v7)
  {
    v8 = *MEMORY[0x277D3B010];
    v9 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277D3B010]];
    if (v9)
    {
      v10 = [dictionaryCopy objectForKeyedSubscript:v8];
      v7->_shouldForceMetadataRefetch = [v10 BOOLValue];
    }

    else
    {
      v7->_shouldForceMetadataRefetch = 0;
    }
  }

  return v7;
}

- (PGMusicCurationInflationOptions)initWithInflationActionSource:(int64_t)source
{
  v5.receiver = self;
  v5.super_class = PGMusicCurationInflationOptions;
  result = [(PGMusicCurationInflationOptions *)&v5 init];
  if (result)
  {
    result->_shouldForceMetadataRefetch = 0;
    result->_inflationActionSource = source;
  }

  return result;
}

+ (id)stringFromInflationActionSource:(int64_t)source
{
  if (source > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_278888918[source];
  }
}

@end