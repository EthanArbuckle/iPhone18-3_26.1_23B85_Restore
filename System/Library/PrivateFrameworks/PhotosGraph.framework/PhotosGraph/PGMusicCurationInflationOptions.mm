@interface PGMusicCurationInflationOptions
+ (id)stringFromInflationActionSource:(int64_t)a3;
- (PGMusicCurationInflationOptions)initWithInflationActionSource:(int64_t)a3;
- (PGMusicCurationInflationOptions)initWithRequestOptionsDictionary:(id)a3 inflationActionSource:(int64_t)a4;
@end

@implementation PGMusicCurationInflationOptions

- (PGMusicCurationInflationOptions)initWithRequestOptionsDictionary:(id)a3 inflationActionSource:(int64_t)a4
{
  v6 = a3;
  v7 = [(PGMusicCurationInflationOptions *)self initWithInflationActionSource:a4];
  if (v7)
  {
    v8 = *MEMORY[0x277D3B010];
    v9 = [v6 objectForKeyedSubscript:*MEMORY[0x277D3B010]];
    if (v9)
    {
      v10 = [v6 objectForKeyedSubscript:v8];
      v7->_shouldForceMetadataRefetch = [v10 BOOLValue];
    }

    else
    {
      v7->_shouldForceMetadataRefetch = 0;
    }
  }

  return v7;
}

- (PGMusicCurationInflationOptions)initWithInflationActionSource:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = PGMusicCurationInflationOptions;
  result = [(PGMusicCurationInflationOptions *)&v5 init];
  if (result)
  {
    result->_shouldForceMetadataRefetch = 0;
    result->_inflationActionSource = a3;
  }

  return result;
}

+ (id)stringFromInflationActionSource:(int64_t)a3
{
  if (a3 > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_278888918[a3];
  }
}

@end