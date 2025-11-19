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
  v1 = [a1 attributes];
  v2 = [v1 objectForKey:@"rentalAdamID"];

  return v2;
}

- (id)vui_launchPlaybackURL
{
  v1 = [a1 attributes];
  v2 = [v1 objectForKey:@"playURL"];

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
  v1 = [a1 attributes];
  v2 = [v1 objectForKey:@"hlsPlaylistUrl"];

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
  v1 = [a1 attributes];
  v2 = [v1 objectForKey:@"contentRating"];

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
  v1 = [a1 attributes];
  v2 = [v1 objectForKey:@"resumeTime"];

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
  v1 = [a1 attributes];
  v2 = [v1 objectForKey:@"disableLocalAsset"];

  v3 = [v2 BOOLValue];
  return v3;
}

- (id)vui_persistentID
{
  v1 = [a1 attributes];
  v2 = [v1 objectForKey:@"persistentID"];

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
  v1 = [a1 attributes];
  v2 = [v1 objectForKey:@"disableResumeMenu"];

  if ([v2 length])
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)vui_scrubVideoURL
{
  v1 = [a1 attributes];
  v2 = [v1 objectForKey:@"scrubVideoURL"];

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
  v1 = [a1 attributes];
  v2 = [v1 objectForKey:@"fpsCertificateURL"];

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
  v1 = [a1 attributes];
  v2 = [v1 objectForKey:@"fpsKeyServerURL"];

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