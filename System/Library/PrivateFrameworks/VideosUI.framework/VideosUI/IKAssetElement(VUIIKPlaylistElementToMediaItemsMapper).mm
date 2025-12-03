@interface IKAssetElement(VUIIKPlaylistElementToMediaItemsMapper)
- (id)vui_contentRatingRank;
- (id)vui_fpsCertificateURL;
- (id)vui_fpsKeyServerURL;
- (id)vui_hlsPlaylistURL;
- (id)vui_launchPlaybackURL;
- (id)vui_persistentID;
- (id)vui_rentalAdamIDString;
- (id)vui_resumeTime;
- (id)vui_scrubVideoURL;
- (uint64_t)vui_disableLocalAsset;
- (uint64_t)vui_disableResumeMenu;
@end

@implementation IKAssetElement(VUIIKPlaylistElementToMediaItemsMapper)

- (id)vui_rentalAdamIDString
{
  attributes = [self attributes];
  v2 = [attributes objectForKey:@"rentalAdamID"];

  return v2;
}

- (id)vui_launchPlaybackURL
{
  attributes = [self attributes];
  v2 = [attributes objectForKey:@"playURL"];

  if ([v2 length])
  {
    v3 = [MEMORY[0x1E695DFF8] URLWithString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)vui_hlsPlaylistURL
{
  attributes = [self attributes];
  v2 = [attributes objectForKey:@"hlsPlaylistUrl"];

  if ([v2 length])
  {
    v3 = [MEMORY[0x1E695DFF8] URLWithString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)vui_contentRatingRank
{
  attributes = [self attributes];
  v2 = [attributes objectForKey:@"contentRating"];

  if ([v2 length])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v2, "integerValue")}];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)vui_resumeTime
{
  attributes = [self attributes];
  v2 = [attributes objectForKey:@"resumeTime"];

  if ([v2 length])
  {
    v3 = MEMORY[0x1E696AD98];
    [v2 doubleValue];
    v4 = [v3 numberWithDouble:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (uint64_t)vui_disableLocalAsset
{
  attributes = [self attributes];
  v2 = [attributes objectForKey:@"disableLocalAsset"];

  bOOLValue = [v2 BOOLValue];
  return bOOLValue;
}

- (id)vui_persistentID
{
  attributes = [self attributes];
  v2 = [attributes objectForKey:@"persistentID"];

  if ([v2 length])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v2, "longLongValue")}];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)vui_disableResumeMenu
{
  attributes = [self attributes];
  v2 = [attributes objectForKey:@"disableResumeMenu"];

  if ([v2 length])
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)vui_scrubVideoURL
{
  attributes = [self attributes];
  v2 = [attributes objectForKey:@"scrubVideoURL"];

  if ([v2 length])
  {
    v3 = [MEMORY[0x1E695DFF8] URLWithString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)vui_fpsCertificateURL
{
  attributes = [self attributes];
  v2 = [attributes objectForKey:@"fpsCertificateURL"];

  if ([v2 length])
  {
    v3 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)vui_fpsKeyServerURL
{
  attributes = [self attributes];
  v2 = [attributes objectForKey:@"fpsKeyServerURL"];

  if ([v2 length])
  {
    v3 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end