@interface DirectUploadArtistEntity
+ (id)newEntityValuesWithMediaSocialArtist:(id)artist;
@end

@implementation DirectUploadArtistEntity

+ (id)newEntityValuesWithMediaSocialArtist:(id)artist
{
  artistCopy = artist;
  v4 = objc_alloc_init(NSMutableDictionary);
  identifier = [artistCopy identifier];
  if ([identifier length])
  {
    [v4 setObject:identifier forKey:@"artist_id"];
  }

  name = [artistCopy name];

  if ([name length])
  {
    [v4 setObject:name forKey:@"name"];
  }

  return v4;
}

@end