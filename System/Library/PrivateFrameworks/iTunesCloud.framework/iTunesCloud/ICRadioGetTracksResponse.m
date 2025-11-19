@interface ICRadioGetTracksResponse
- (ICRadioGetTracksResponse)initWithResponseDictionary:(id)a3 expirationDate:(id)a4;
- (ICRadioStationMetadata)stationMetadata;
- (NSArray)tracks;
- (int64_t)tracklistActionType;
@end

@implementation ICRadioGetTracksResponse

- (NSArray)tracks
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [(ICRadioResponse *)self contentDictionary];
  v4 = [v3 objectForKey:@"station-track-dict"];

  if (!_NSIsNSDictionary())
  {
    goto LABEL_19;
  }

  v5 = [v4 allValues];
  v6 = [v5 firstObject];

  if (!_NSIsNSArray() || ![v6 count])
  {

LABEL_19:
    v10 = 0;
    goto LABEL_20;
  }

  v16 = v4;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        if (_NSIsNSDictionary())
        {
          v14 = [[ICRadioStationTrack alloc] initWithResponseDictionary:v13 responseVersion:[(ICRadioResponse *)self version] expirationDate:self->_assetExpirationDate];
          if (v14)
          {
            if (!v10)
            {
              v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
            }

            [v10 addObject:v14];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  v4 = v16;
LABEL_20:

  return v10;
}

- (int64_t)tracklistActionType
{
  v2 = [(ICRadioResponse *)self contentDictionary];
  v3 = [v2 objectForKey:@"tracklist-action-type"];

  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (ICRadioStationMetadata)stationMetadata
{
  v2 = [(ICRadioResponse *)self contentDictionary];
  v3 = [v2 objectForKey:@"station-dict"];

  if (_NSIsNSDictionary())
  {
    v4 = [[ICRadioStationMetadata alloc] initWithResponseDictionary:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (ICRadioGetTracksResponse)initWithResponseDictionary:(id)a3 expirationDate:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = ICRadioGetTracksResponse;
  v7 = [(ICRadioResponse *)&v10 initWithResponseDictionary:a3 expirationDate:v6];
  if (v7)
  {
    v8 = v6;
    if (!v6)
    {
      v8 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:10800.0];
    }

    objc_storeStrong(&v7->_assetExpirationDate, v8);
    if (!v6)
    {
    }
  }

  return v7;
}

@end