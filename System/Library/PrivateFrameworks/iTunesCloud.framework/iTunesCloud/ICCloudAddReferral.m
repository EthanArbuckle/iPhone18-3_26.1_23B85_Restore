@interface ICCloudAddReferral
+ (id)referralWithAlbumAdamID:(int64_t)a3;
+ (id)referralWithPlaylistGlobalID:(id)a3;
- (ICCloudAddReferral)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICCloudAddReferral

- (ICCloudAddReferral)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ICCloudAddReferral;
  v5 = [(ICCloudAddReferral *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"playlistGlobalID"];
    playlistGlobalID = v5->_playlistGlobalID;
    v5->_playlistGlobalID = v6;

    v5->_albumAdamID = [v4 decodeInt64ForKey:@"albumAdamID"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  playlistGlobalID = self->_playlistGlobalID;
  v5 = a3;
  [v5 encodeObject:playlistGlobalID forKey:@"playlistGlobalID"];
  [v5 encodeInt64:self->_albumAdamID forKey:@"albumAdamID"];
}

+ (id)referralWithAlbumAdamID:(int64_t)a3
{
  v4 = objc_alloc_init(ICCloudAddReferral);
  v4->_albumAdamID = a3;

  return v4;
}

+ (id)referralWithPlaylistGlobalID:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(ICCloudAddReferral);
  v5 = [v3 copy];

  playlistGlobalID = v4->_playlistGlobalID;
  v4->_playlistGlobalID = v5;

  return v4;
}

@end